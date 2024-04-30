unit ExcelRealatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory, 
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses, dxSpreadSheetContainers, 
  dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetPrinting, 
  dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheet, cxClasses, Menus, ComCtrls, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetStyles, dxSpreadSheetFormattedTextUtils, dxSkinsCore,
  dxBarBuiltInMenu;

type
  TFrmExcelRealatorio = class(TForm)
    SheetRelatorio: TdxSpreadSheet;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    miSaveAs: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    Options1: TMenuItem;
    miShowFormulas: TMenuItem;
    sveDialog: TSaveDialog;
    procedure miCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure miSaveAsClick(Sender: TObject);
    procedure miShowFormulasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExcelRealatorio: TFrmExcelRealatorio;

implementation

{$R *.dfm}

procedure TFrmExcelRealatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmExcelRealatorio := nil;
end;

procedure TFrmExcelRealatorio.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmExcelRealatorio.miShowFormulasClick(Sender: TObject);
var
  I: Integer;
begin
  SheetRelatorio.BeginUpdate;
  try
    for I := 0 to SheetRelatorio.SheetCount - 1 do
      if SheetRelatorio.Sheets[I] is TdxSpreadSheetTableView then
        TdxSpreadSheetTableView(SheetRelatorio.Sheets[I]).Options.ShowFormulas := bDefault;
    SheetRelatorio.OptionsView.ShowFormulas := not SheetRelatorio.OptionsView.ShowFormulas;
  finally
    SheetRelatorio.EndUpdate;
  end;
end;

procedure TFrmExcelRealatorio.miSaveAsClick(Sender: TObject);
var
  AFileName: string;
begin
  sveDialog.Filter := dxSpreadSheetFormatsRepository.GetSaveDialogFilter;
  if sveDialog.Execute then
  begin
    AFileName := sveDialog.FileName;
    if ExtractFileExt(AFileName) = '' then
    begin
      if (sveDialog.FilterIndex > 0) and (sveDialog.FilterIndex < dxSpreadSheetFormatsRepository.Count) then
        AFileName := AFileName + dxSpreadSheetFormatsRepository.Items[sveDialog.FilterIndex].GetExt
      else
       AFileName := AFileName + '.xlsx';
    end;
    SheetRelatorio.SaveToFile(AFileName);
  end;
end;

end.
