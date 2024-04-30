unit Base_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, dxTileControl, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, Base, Frame_Cad, Frame_Con, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmProduto = class(TFrmBase)
    tiVariacao: TdxTileControlItem;
    tiComposicao: TdxTileControlItem;
    tiPatrimonio: TdxTileControlItem;
    tiPersonalizado: TdxTileControlItem;
    tiServico: TdxTileControlItem;
    tiUsoEConsumo: TdxTileControlItem;
    tiMateriaPrima: TdxTileControlItem;
    tcBaseItem1: TdxTileControlItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

uses
  wrConstantes, UnitFuncoes, wrFuncoes, Principal, Tag.APP, Tag.Form;

{ TfrmBase }

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
//  tiBasePadrao.Visible  :=AAPP[TagAPP_Produto_Basico].Ativo;      // Sempre Visível
  tiServico.Visible      :=AWR_APP[TagAPP_Produto_Servico].Ativo;      // Sempre visível - Deveria ter sim mais vai ficar
  tiMateriaPrima.Visible :=AWR_APP[TagAPP_Produto_MateriaPrima].Ativo; // Sempre visível - Deveria ter sim mais vai ficar
  tiPatrimonio.Visible   :=AWR_APP[TagAPP_Produto_Patrimonio].Ativo;
  tiVariacao.Visible     :=AWR_APP[TagAPP_Produto_Variacao].Ativo;
  tiComposicao.Visible   :=AWR_APP[TagAPP_Produto_Composicao].Ativo;
  tiPersonalizado.Visible:=AWR_APP[TagAPP_Produto_Personalizado].Ativo;
  tiUsoEConsumo.Visible  :=AWR_APP[TagAPP_Produto_UsoEConsumo].Ativo;

  inherited;
 { if not FrmPrincipal.Action_Produtos.Enabled then
  begin
    tiBasePadrao.Enabled := False;
    tiBasePadrao.Visible := False;
  end;

  if not FrmPrincipal.Action_Servico.Enabled then
  begin
    tiServico.Enabled := False;
    tiServico.Visible := False;
  end;

  if not FrmPrincipal.Action_Patrimonio.Enabled then
  begin
    tiPatrimonio.Enabled := False;
    tiPatrimonio.Visible := False;
  end;

  if not FrmPrincipal.Action_MateriaPrima.Enabled then
  begin
    tiMateriaPrima.Enabled := False;
    tiMateriaPrima.Visible := False;
  end;

  if not FrmPrincipal.Action_Composicao.Enabled then
  begin
    tiComposicao.Enabled := False;
    tiComposicao.Visible := False;
  end;

  if not FrmPrincipal.Action_Personalizado.Enabled then
  begin
    tiPersonalizado.Enabled := False;
    tiPersonalizado.Visible := False;
  end;

  if not FrmPrincipal.Action_UsoEConsumo.Enabled then
  begin
    tiUsoEConsumo.Enabled := False;
    tiUsoEConsumo.Visible := False;
  end;

  if not FrmPrincipal.Action_Variacao.Enabled then
  begin
    tiVariacao.Enabled := False;
    tiVariacao.Visible := False;
  end;    }

end;

procedure TFrmProduto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
{  if TabComposicao.ActuallyVisible and (key in [13,9,38,40]) then
    Exit;   }
(*  if (Key = VK_RETURN) and (edtObservacao.Focused) then
    Exit;
  if (Key = VK_RETURN) and (EdtGradeCodFabrica.Focused or EdtGradeTamanho.Focused) then
  begin
    if EdtGradeCodFabrica.Focused then
      EdtGradeTamanho.SetFocusWR
    else if EdtGradeTamanho.Focused then
      BtnAdicionarGradeProduto.SetFocusWR;
    Key := 0
  end
  else  *)
  inherited;
end;

initialization
  RegisterClass(TFrmProduto);
  RegisterBase_MidChild(Tag_Produto_ProdutoSimples, TFrmProduto);

end.

