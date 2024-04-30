unit Base_Pocket_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, frFrameHistorico, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxContainer, cxEdit, cxImage ;

type
  TFrmBase_Pocket = class(TFrmBase)
    tcBaseItem1: TdxTileControlItem;
    tiFechar: TdxTileControlItem;
    procedure tiFecharActivateDetail(Sender: TdxTileControlItem);
    procedure tcBaseItem1ActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    FFrameHistorico: TFrameHistorico;
  end;

var
  FrmBase_Pocket: TFrmBase_Pocket;

implementation

{$R *.dfm}

uses Frame_Cad, UCHist_Type;


procedure TFrmBase_Pocket.tcBaseItem1ActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  if (Sender.DetailOptions.DetailControl= nil)and
     (tiBasePadrao.DetailOptions.DetailControl <> nil) then
  begin
    TFrameHistorico.CarregaFrame(FFrameHistorico,
                                 Sender.DetailOptions.DetailControl,
                                 TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro,
                                 nil );
    Sender.DetailOptions.DetailControl := FFrameHistorico;
  end else
  begin

//    FFrameHistorico.historico.close;
//
//         TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro



    if not (TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK1 = '') then
      FFrameHistorico.FChave_PK1        := TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.DataSet.FieldByname(TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK1).Value;
    if not (TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK2 = '') then
      FFrameHistorico.FChave_PK2        := TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.DataSet.FieldByname(TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK2).Value;
    if not (TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK3 = '') then
      FFrameHistorico.FChave_PK3        := TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.DataSet.FieldByname(TFrmCad_Frame(tiBasePadrao.DetailOptions.DetailControl).UCHist_Cadastro.CampoPK3).Value;

    FFrameHistorico.VincularChavesPK;

    FFrameHistorico.historico.open;
//    FFrameHistorico.Refresh;
  end;
end;

procedure TFrmBase_Pocket.tiFecharActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Close;
end;

initialization
  RegisterClass(TFrmBase_Pocket);

end.
