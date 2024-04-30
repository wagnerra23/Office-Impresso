unit Base_Producao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  agenda, dxGDIPlusClasses, Vcl.ExtCtrls, cxContainer, cxEdit, cxImage;

type
  TFrmProducao = class(TFrmBase)
    tiPlanejamento: TdxTileControlItem;
    tiProjeto: TdxTileControlItem;
    tiKanban: TdxTileControlItem;
    tiAgenda: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducao: TFrmProducao;

implementation

{$R *.dfm}

Uses
  Tag.APP, Tag.Form;

procedure TFrmProducao.FormCreate(Sender: TObject);
begin
  inherited;
  tiBasePadrao.Visible   := AWR_APP[TagAPP_Ordem_Producao].Ativo;
  tiKanban.Visible       := AWR_APP[TagAPP_Ordem_Producao].Ativo;
  tiPlanejamento.Visible := AWR_APP[TagAPP_Planejamento].Ativo;
  tiAgenda.Visible       := AWR_APP[TagAPP_Agendamentos].Ativo;
  tiProjeto.Visible      := AWR_APP[TagAPP_Projeto].Ativo;
end;

initialization
  RegisterBase_MidChild(Tag_Producao, TFrmProducao);

end.
