unit Base_APP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Generics.Collections, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmAPP = class(TFrmBase)
    tcBaseItem2: TdxTileControlItem;
    tcBaseItem3: TdxTileControlItem;
    tcBaseItem4: TdxTileControlItem;
    tcBaseItem1: TdxTileControlItem;
    tcBaseItem5: TdxTileControlItem;
    tcBaseItem6: TdxTileControlItem;
    tcBaseItem7: TdxTileControlItem;
    tcBaseItem8: TdxTileControlItem;
    tcBaseItem9: TdxTileControlItem;
    tcBaseItem10: TdxTileControlItem;
    tcBaseItem11: TdxTileControlItem;
    tcBaseItem12: TdxTileControlItem;
    tcBaseItem13: TdxTileControlItem;
    tcBaseItem14: TdxTileControlItem;
    tcBaseItem15: TdxTileControlItem;
    tcBaseItem16: TdxTileControlItem;
    tcBaseItem17: TdxTileControlItem;
    tcBaseItem18: TdxTileControlItem;
    tcBaseItem19: TdxTileControlItem;
    tcBaseItem20: TdxTileControlItem;
    tcBaseItem21: TdxTileControlItem;
    tcBaseItem22: TdxTileControlItem;
    tcBaseItem23: TdxTileControlItem;
    tcBaseItem24: TdxTileControlItem;
    tcBaseItem25: TdxTileControlItem;
    tcBaseItem26: TdxTileControlItem;
    tcBaseItem27: TdxTileControlItem;
    tcBaseItem28: TdxTileControlItem;
    tcBaseItem30: TdxTileControlItem;
    tcBaseItem31: TdxTileControlItem;
    tcBaseItem32: TdxTileControlItem;
    tcBaseItem33: TdxTileControlItem;
    tcBaseItem34: TdxTileControlItem;
    tcBaseItem35: TdxTileControlItem;
    tcBaseItem36: TdxTileControlItem;
    tcBaseItem37: TdxTileControlItem;
    tcBaseItem38: TdxTileControlItem;
    tcBaseItem39: TdxTileControlItem;
    tcBaseItem40: TdxTileControlItem;
    tcBaseItem41: TdxTileControlItem;
    tcBaseItem42: TdxTileControlItem;
    tcBaseItem43: TdxTileControlItem;
    tcBaseItem44: TdxTileControlItem;
    tcBaseItem45: TdxTileControlItem;
    tcBaseItem46: TdxTileControlItem;
    tcBaseItem47: TdxTileControlItem;
    tcBaseItem48: TdxTileControlItem;
    tcBaseItem49: TdxTileControlItem;
    tcBaseItem50: TdxTileControlItem;
    tcBaseItem51: TdxTileControlItem;
    tcBaseItem52: TdxTileControlItem;
    tcBaseItem53: TdxTileControlItem;
    tcBaseItem54: TdxTileControlItem;
    tcBaseItem55: TdxTileControlItem;
    tcBaseItem56: TdxTileControlItem;
    tcBaseItem57: TdxTileControlItem;
    tcBaseItem58: TdxTileControlItem;
    tcBaseItem59: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
    procedure tiBasePadraoActivateDetail(Sender: TdxTileControlItem);
    procedure tiBasePadraoDeactivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure AtualizaModulos;
  end;

var
  FrmAPP: TFrmAPP;

implementation

{$R *.dfm}

Uses wrMenu, Principal, Classes.APP, Tag.APP, Tag.Modulo, Tag.Form;

procedure TFrmAPP.AtualizaModulos;
Var
  I: Integer;
begin
  for I := 0 to tcBase.Items.Count - 1 do
  begin
    with tcBase.Items[i] do
    begin
      DetailOptions.ShowTab := False;
      if AWR_APP[Tag].Ativo then
      begin
        Style.GradientBeginColor := $200EAF54;
        Style.GradientEndColor := $2010C268;
        Style.BorderColor := $2034CB7F;
      end else
      begin
        Style.GradientBeginColor := clGray;
        Style.GradientEndColor := clSilver;
        Style.BorderColor := clGray;
      end;
    end;
  end;
end;

procedure TFrmAPP.FormCreate(Sender: TObject);
Var
  I: Integer;
  J: Integer;
begin
  tcBase.OptionsBehavior.ScrollMode := smScrollbars;
  tcBase.Groups.Clear;
  tcBase.Items.Clear;
  for I := 1 to Length(AWR_Modulo) do
  begin
    // Gera um grupo
    with tcBase.Groups.Add do
    begin
      Tag := I;
      Index := AWR_Modulo[i].Codigo;
      Caption.Text := AWR_Modulo[i].Nome;
      Caption.Font.Name := 'Segoe UI';
      Caption.Font.Size := 16;
    end;
  end;
  for J := 1 to Length(AWR_APP) do
  begin
    with tcBase.Items.Add do
    begin
      Tag := J;
      Glyph.Align := oaTopCenter;
      Glyph.IndentVert := 14;
      Glyph.Images := FrmPrincipal.imgTile32;
      Glyph.ImageIndex := AWR_APP[j].ImageIndex;
      GroupIndex := AWR_APP[j].Tag_Modulo-1;
      Text1.Align := oaBottomCenter;
      Text1.Value := AWR_APP[j].Nome;
      OnActivateDetail  := tiBasePadraoActivateDetail;
      OnDeactivateDetail:= tiBasePadraoDeactivateDetail;
    end;

  end;

  inherited;
  AtualizaModulos;
end;

procedure TFrmAPP. tiBasePadraoDeactivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  AtualizaModulos;
end;

procedure TFrmAPP.tiBasePadraoActivateDetail(Sender: TdxTileControlItem);
begin
//  inherited;   // Não deve ser usado
  if Sender.DetailOptions.DetailControl = nil then
  begin
    Sender.DetailOptions.DetailControl := APainelFrameClasses[Tag_APP].Create(Self);
    Sender.DetailOptions.DetailControl.Tag := Sender.Tag;
    TFrame(Sender.DetailOptions.DetailControl).Name:='Frame_APP_'+INtToStr(Sender.Tag);
  end;
end;

initialization
  RegisterBase_Normal(Tag_APP, TFrmAPP);

end.
