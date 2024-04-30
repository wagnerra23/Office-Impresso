unit EmailDevExpressFuncoes;

interface

uses
  Types, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, dxBar, StdCtrls, DB, DBClient,
  dxBarExtItems, cxControls, cxGeometry, cxGraphics, dxRibbon, dxRibbonGallery,
  dxOffice11, dxGDIPlusClasses, cxRichEdit;

type
  TdxContactsView = (cvList, cvAlphabetical, cvByState, cvCard);
  TdxMakeModeType = (dxmmtNew, dxmmtReply, dxmmtReplyAll, dxmmtForward, dxmmtEdit, dxmmtView);

const
  bkRoot    = 0;
  bkInbox   = 1;
  bkSent    = 2;
  bkDeleted = 3;
  bkDrafts  = 4;

  gvMale   = 0;
  gvFemale = 1;

  pvLow    = 0;
  pvMedium = 1;
  pvHigh   = 2;

  ntNone = 0;
  ntDr   = 1;
  ntMiss = 2;
  ntMr   = 3;
  ntMrs  = 4;
  ntMs   = 5;
  ntProf = 6;

  tcgHouseChores = 0;
  tcgShopping    = 1;
  tcgOffice      = 2;

  tfsToday     = 0;
  tfsTomorrow  = 1;
  tfsThisWeek  = 2;
  tfsNextWeek  = 3;
  tfsNoDate    = 4;
  tfsCustom    = 5;
  tfsCompleted = 6;

  tstNotStarted = 0;
  tstInProgress = 1;
  tstCompleted  = 2;
  tstWaiting    = 3;
  tstDeferred   = 4;

  dxAddressDelimiter = ';';

  sRichEditFoundResultCaption = 'Information';
  sRichEditReplaceAllResult = 'Replaced %d occurrences.';
  sRichEditTextNotFound = 'The search text is not found.';

var
  dxMailClientDefaultExportPath: string;

type
  TdxAssignGlyphProcedure = procedure of object;

  TdxSearchFunction = function(AParam: string): string of object;

function DPIRatio: Single;
procedure DrawHelpedColorLine(AGlyph: TdxSmartGlyph; AColor: TColor;
  AImageBasicGlyph: TcxImageList; AIndexBasicGlyph: Integer);
procedure DrawHelpedFontColor(AGlyph: TdxSmartGlyph; AColor: TColor);
procedure DrawHelpedHighlightColor(AGlyph: TdxSmartGlyph; AColor: TColor);
function GetLabelCaption(const ACaption: string): string;
function GetProgramPath: string;
procedure ReplaceInRich(ARich: TcxRichEdit; const ATokenStr, S: string;
  AContinuationFind: Boolean = False);
procedure PopulateCustomerInfoRich(ARich: TcxRichEdit; ACustomerDts: TDataSet);
procedure FindOne(Sender: TObject; Editor: TcxCustomRichEdit);
function GetFullAddress(AAddressLine, ACity, AState, AZipCode: string): string;
function InitializeRich(ARich: TcxRichEdit; AFileName: string;
  AContinuationLoad: Boolean = False): Boolean;
procedure InitSymbolGallery(ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
procedure ReplaceOne(Sender: TObject; Editor: TcxCustomRichEdit);
procedure SetFieldValue(AField: TField; const AValue: Variant);
procedure ShowMessageErrorLoading(const AFileName: string);
procedure ShowMessageFileNotFound(const AFileName: string);

implementation

function DPIRatio: Single;
begin
  Result := Screen.PixelsPerInch / 96;
end;

procedure DrawHelpedColorLine(AGlyph: TdxSmartGlyph; AColor: TColor;
  AImageBasicGlyph: TcxImageList; AIndexBasicGlyph: Integer);
const
  ALineWidth = 14;
  ALineHeight = 3;
var
  ALineGlyph, ABasicGlyph: TcxAlphaBitmap;
begin
  ALineGlyph := TcxAlphaBitmap.Create;
  ABasicGlyph := TcxAlphaBitmap.Create;
  try
    TcxImageList.GetImageInfo(AImageBasicGlyph, AIndexBasicGlyph, ABasicGlyph, nil);

    ALineGlyph.Height := ALineHeight;
    ALineGlyph.Width := ALineWidth;
    ALineGlyph.Canvas.Brush.Color := AColor;
    ALineGlyph.Canvas.FillRect(Rect(0, 0, ALineWidth, ALineHeight));
    ALineGlyph.RecoverAlphaChannel(clNone);

    cxBitBlt(ABasicGlyph.Canvas.Handle, ALineGlyph.Canvas.Handle, cxRectBounds(1, 13, ALineWidth, ALineHeight), Point(0, 0), SRCCOPY);

    AGlyph.Assign(ABasicGlyph);
  finally
    ABasicGlyph.Free;
    ALineGlyph.Free;
  end;
end;

procedure DrawHelpedFontColor(AGlyph: TdxSmartGlyph; AColor: TColor);
begin
//  DrawHelpedColorLine(AGlyph, AColor, DM.cxGridsImageList_16, 20);
end;

procedure DrawHelpedHighlightColor(AGlyph: TdxSmartGlyph; AColor: TColor);
begin
//  DrawHelpedColorLine(AGlyph, AColor, DM.cxGridsImageList_16, 21);
end;

function GetFullAddress(AAddressLine, ACity, AState, AZipCode: string): string;
begin
  Result := Format('%s, %s, %s, %s', [AAddressLine, ACity, AState, AZipCode]);
end;

function GetLabelCaption(const ACaption: string): string;
begin
  Result := StringReplace(ACaption, '&', '&&', [rfReplaceAll, rfIgnoreCase]);
end;

function GetProgramPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function InitializeRich(ARich: TcxRichEdit; AFileName: string;
  AContinuationLoad: Boolean = False): Boolean;
begin
  Result := False;
  if not AContinuationLoad then
    ARich.Lines.Clear;
  ARich.Properties.StreamModes := [resmSelection];
  if FileExists(AFileName) then
    try
      ARich.Lines.LoadFromFile(AFileName);
      Result := True;
    except
      ShowMessageErrorLoading(AFileName);
    end
  else
    ShowMessageFileNotFound(AFileName);
  ARich.Properties.StreamModes := [];
end;

procedure ReplaceInRich(ARich: TcxRichEdit; const ATokenStr, S: string;
  AContinuationFind: Boolean = False);
var
  ASelLength: Integer;
  AStartPosition: Integer;
begin
  ASelLength := Length(ATokenStr);
  AStartPosition := 0;
  if AContinuationFind then
    AStartPosition := ARich.CursorPos;
  ARich.SelStart := ARich.FindTexT(ATokenStr, AStartPosition,
    Length(ARich.Text) - AStartPosition, []);
  ARich.SelLength := ASelLength;
  ARich.SelText := S;
end;

procedure PopulateCustomerInfoRich(ARich: TcxRichEdit; ACustomerDts: TDataSet);
var
  AName, ABirthDate, AEMail, APhone, AAddress: string;
begin
  InitializeRich(ARich, GetProgramPath + 'Data\CustomerFmt.rtf');
  with ACustomerDts do
  begin
    AName := FieldByName('Name').AsString;
    ABirthDate := FieldByName('BirthDate').AsString;
    AEMail := FieldByName('EMail').AsString;
    APhone := FieldByName('Phone').AsString;
    AAddress := GetFullAddress(
      FieldByName('AddressLine').AsString, FieldByName('City').AsString,
      FieldByName('State').AsString, FieldByName('ZipCode').AsString);
  end;
  ReplaceInRich(ARich, '__Name__', AName);
  ReplaceInRich(ARich, '__BirthDate__', ABirthDate);
  ReplaceInRich(ARich, '__EMail__', AEMail);
  ReplaceInRich(ARich, '__Phone__', APhone);
  ReplaceInRich(ARich, '__Address__', AAddress);
end;

procedure FindOne(Sender: TObject; Editor: TcxCustomRichEdit);
var
  StartPos, FindLength, FoundAt: Integer;
  Flags: TSearchTypes;
  P: TPoint;
  CaretR, R, IntersectR: TRect;
begin
  with Editor, TFindDialog(Sender) do
  begin
    StartPos := SelStart;
    if SelLength <> 0 then
      StartPos := StartPos + SelLength;
    FindLength := Length(Text) - StartPos;
    Flags := [];

    if frMatchCase in Options then
      Include(Flags, stMatchCase);
    if frWholeWord in Options then
      Include(Flags, stWholeWord);

    FoundAt := Editor.FindText(FindText, StartPos, FindLength, Flags);
    if FoundAt > -1 then
    begin
      if frReplaceAll in Options then
      begin
        SelStart := FoundAt;
        SelLength := Length(FindText);
      end
      else
      begin
        SetFocus;
        SelStart := FoundAt;
        SelLength := Length(FindText);

        Windows.GetCaretPos(P);
        P := ClientToScreen(P);
        CaretR := Rect(P.X, P.Y, P.X + 2, P.Y + 20);
        GetWindowRect(Handle, R);
        if IntersectRect(IntersectR, CaretR, R) then
          if P.Y < Screen.Height div 2 then
            Top := P.Y + 40
          else
            Top := P.Y - (R.Bottom - R.Top + 20);
      end
    end
    else
      if not (frReplaceAll in Options) then
        Application.MessageBox(sRichEditTextNotFound, sRichEditFoundResultCaption, MB_ICONINFORMATION);
  end;
end;

procedure ReplaceOne(Sender: TObject; Editor: TcxCustomRichEdit);
var
  ReplacedCount, OldSelStart, PrevSelStart: Integer;
  S: string;
begin
  with Editor, TReplaceDialog(Sender) do
  begin
    ReplacedCount := 0;
    OldSelStart := SelStart;
    if frReplaceAll in Options then
      ShowHourglassCursor;

    repeat
      if (SelLength > 0) and ((SelText = FindText) or (not (frMatchCase in Options) and
         (AnsiUpperCase(SelText) = AnsiUpperCase(FindText)))) then
      begin
        SelText := ReplaceText;
        Inc(ReplacedCount);
      end;
      PrevSelStart := SelStart;
      FindOne(Sender, Editor);
    until not (frReplaceAll in Options) or (SelStart = PrevSelStart);

    if frReplaceAll in Options then
    begin
      HideHourglassCursor;
      if ReplacedCount = 0 then
        S := sRichEditTextNotFound
      else
      begin
        SelStart := OldSelStart;
        S := Format(sRichEditReplaceAllResult, [ReplacedCount]);
      end;
      Application.MessageBox(PChar(S), sRichEditFoundResultCaption, MB_ICONINFORMATION);
    end;
  end;
end;

procedure SetFieldValue(AField: TField; const AValue: Variant);
begin
  with AField.DataSet do
  begin
    Edit;
    AField.Value := AValue;
    Post;
  end;
end;

procedure InitSymbolGallery(ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);

  procedure AddItem(AGroup: TdxRibbonGalleryGroup; ACode: Integer);

    function CreateBitmap(const AFont: string; AChar: WideChar): TcxAlphaBitmap;
    var
      AGlyphSize: Integer;
      R: TRect;
    begin
      AGlyphSize := Round(32 * DPIRatio);
      R := Rect(0, 0, AGlyphSize, AGlyphSize);
      Result := TcxAlphaBitmap.CreateSize(R);
      Result.Canvas.Brush.Color := $FAFAFA;
      Result.Canvas.FillRect(R);
      Result.Canvas.Font.Name := AFont;
      Result.Canvas.Font.Color := $5C534C;
      Result.Canvas.Font.Size := Round(16 * DPIRatio);
      DrawTextW(Result.Canvas.Handle, @AChar, 1, R, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
      Result.TransformBitmap(btmSetOpaque);
    end;

  var
    AItem: TdxRibbonGalleryGroupItem;
    AFont: string;
    ABitmap: TcxAlphaBitmap;
  begin
    AItem := AGroup.Items.Add;
    AFont := 'Times New Roman';
    AItem.Caption := AFont + ' #' + IntToStr(ACode);
    AItem.Description := AFont;
    AItem.Tag := ACode;
    ABitmap := CreateBitmap(AFont, WideChar(ACode));
    AItem.Glyph.Assign(ABitmap);
    ABitmap.Free;
  end;

  procedure PopulateGroup(AGroupIndex: Integer; AMap: array of Integer);
  var
    I: Integer;
  begin
    for I := Low(AMap) to High(AMap) do
      AddItem(AGalleryItem.GalleryGroups[AGroupIndex], AMap[I]);
  end;

const
  AMathMap: array [0..7] of Integer = ($B1, $2260, $2264, $2265, $F7, $D7, $221E, $2211);
  AGreekMap: array [0..9] of integer = ($03B1, $03B2, $03B3, $03B4, $03B5, $03B6, $03B7, $03B8, $03B9, $03BA);
  ASymbolMap: array [0..2] of Integer = ($A9, $AE, $2122);
  ACurrencyMap: array [0..4] of Integer = ($20AC, $24, $A3, $A5, $20A3);
begin
  ABarManager.BeginUpdate;
  try
    PopulateGroup(0, AMathMap);
    PopulateGroup(1, AGreekMap);
    PopulateGroup(2, ASymbolMap);
    PopulateGroup(3, ACurrencyMap);
  finally
    ABarManager.EndUpdate;
  end;
end;

procedure ShowMessageErrorLoading(const AFileName: string);
begin
  MessageBox(Application.Handle, PChar(Format('Error at loading from "%s"', [AFileName])),
    'ERROR', MB_ICONERROR + MB_OK);
end;

procedure ShowMessageFileNotFound(const AFileName: string);
begin
  MessageBox(Application.Handle, PChar(Format('File "%s" not found', [AFileName])),
    'ERROR', MB_ICONERROR + MB_OK);
end;

initialization
  dxMailClientDefaultExportPath := '';
end.
