unit Base_Financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmFinanceiro_Base = class(TFrmBase)
    tiBoleto: TdxTileControlItem;
    tiCreditoDeCliente: TdxTileControlItem;
    tiCheque: TdxTileControlItem;
    tiCartao_Credito: TdxTileControlItem;
    tiComissoes: TdxTileControlItem;
    tiContrato: TdxTileControlItem;
    tiConciliacaoBancaria: TdxTileControlItem;
    tiCentro_Custo: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiro_Base: TFrmFinanceiro_Base;

implementation

{$R *.dfm}

Uses
  Tag.APP, Tag.Form;

procedure TFrmFinanceiro_Base.FormCreate(Sender: TObject);
begin
  inherited;
  tiBasePadrao.Visible         :=AWR_APP[TagAPP_Financeiro].Ativo;
  tiCheque.Visible             :=AWR_APP[TagAPP_Financeiro_Cheque].Ativo;
  tiCentro_Custo.Visible       :=AWR_APP[TagAPP_Financeiro_Centro_Custo].Ativo;
  tiBoleto.Visible             :=AWR_APP[TagAPP_Financeiro_Boleto].Ativo;
  tiCartao_Credito.Visible     :=AWR_APP[TagAPP_Financeiro_Cartao].Ativo;
  tiContrato.Visible           :=AWR_APP[TagAPP_Financeiro_Contrato].Ativo;
  tiCreditoDeCliente.Visible   :=AWR_APP[TagAPP_Produto_UsoEConsumo].Ativo;
  tiComissoes.Visible          :=AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  tiConciliacaoBancaria.Visible:=AWR_APP[TagAPP_Financeiro_Conciliacao_Bancaria].Ativo;
end;

initialization
  RegisterBase_MidChild(Tag_Financeiro, TFrmFinanceiro_Base);

end.
