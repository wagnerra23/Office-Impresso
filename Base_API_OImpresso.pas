unit Base_API_OImpresso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxCustomTileControl, dxTileControl, Frame_Cad,Frame_Con, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxGDIPlusClasses, cxImage;


type
  TFrmAPI_OImpresso = class(TFrmBase)
    tiOImpresso_ConfiguracaoAPI: TdxTileControlItem;
    tcBaseGroup1: TdxTileControlGroup;
    procedure tiBasePadraoActivateDetail(Sender: TdxTileControlItem);
    procedure tiOImpresso_ConfiguracaoAPIActivateDetail(Sender: TdxTileControlItem);
  private
//     FrmOImpresso: TFrmOImpresso_Frame;
    { Private declarations
    }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses
  Tag.Form;

procedure TFrmAPI_OImpresso.tiBasePadraoActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
//  tcBase.Title.Text:='API - OImpresso.com';
{  if Not Assigned(FrmOImpresso) then
  begin
    FrmOImpresso  := TFrmOImpresso_Frame(Sender.DetailOptions.DetailControl);
    FrmOImpresso.Grupo_Tabs.TabbedOptions.HideTabs:=True;
    FrmOImpresso.GrupoRootConfig.TabbedOptions.HideTabs:=True;
  end;

  if Sender = tiBasePadrao then
    Sender.DetailOptions.DetailControl := FrmOImpresso.pnlPrincipal;

  if Sender = tiOImpresso_ConfiguracaoAPI then
    Sender.DetailOptions.DetailControl := FrmOImpresso.pnlConfiguracao;

  if Sender = tiOImpresso_Log then
    Sender.DetailOptions.DetailControl := FrmOImpresso.PnlFrameHistorico;    }
end;

procedure TFrmAPI_OImpresso.tiOImpresso_ConfiguracaoAPIActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  tcBase.Tag      := Sender.Tag;
  IndexSelecionado:= Sender.Index;
  if Sender.DetailOptions.DetailControl = nil then
      Sender.DetailOptions.DetailControl := ACadFrameClasses[Sender.Tag].Create(Self)
end;

initialization
  RegisterClass(TFrmAPI_OImpresso);
  RegisterBase_MidChild(Tag_API_Oimpresso, TFrmAPI_OImpresso);

end.
