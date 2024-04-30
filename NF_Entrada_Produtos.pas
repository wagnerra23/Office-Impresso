unit NF_Entrada_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Cad, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList,
  IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxDBNavigator, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxStatusBar, cxCurrencyEdit, cxMaskEdit, cxButtonEdit, cxLabel, cxDropDownEdit,
  cxCheckBox, frFrameCustos, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxDateRanges, UCHistDataset,
  cxDBLabel, IBX.IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, wrConversao,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData,
  cxDBTL, System.Actions, Vcl.ActnList, cxImageList, uButtonFlat, Generics.Collections, cxCalendar,
  Classes.WR, FrFrameComposicao, uWRCalculaConfiguracoes, DataModule, cxImageComboBox, frFrameHistorico,
  dxSkinsDefaultPainters, uWRFormataCamposDataSet, FrFrameTabelaPreco, wrFuncoes_Office,
  System.Generics.Collections, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrmNF_Entrada_Produtos = class(TFrmCad)
    dxLayoutGroup1: TdxLayoutGroup;
    GrupoGuias: TdxLayoutGroup;
    GrupoVeiculo: TdxLayoutGroup;
    GrupoDadosFiscais: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    EdtQuantCompra: TcxDBCurrencyEdit;
    LiEdtQuantCompra: TdxLayoutItem;
    EdtCustoTotal: TcxDBCurrencyEdit;
    LiEdtCusto: TdxLayoutItem;
    EdtCodProduto: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    GrupoDetalhes: TdxLayoutGroup;
    EdtCorÎCor: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    EdtCorÎCorÎDescricao: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    EdtGrupoÎProduto_Grupo: TcxDBButtonEdit;
    dxLayoutItem11: TdxLayoutItem;
    LblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    EdtProdutoTipoÎProduto_Tipo: TcxDBButtonEdit;
    dxLayoutItem34: TdxLayoutItem;
    LblProdutoTipoÎProduto_TipoÎDESCRICAO: TcxLabel;
    dxLayoutItem36: TdxLayoutItem;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    dxLayoutItem44: TdxLayoutItem;
    EdtICMSST: TcxDBCurrencyEdit;
    dxLayoutItem47: TdxLayoutItem;
    EdtDesconto: TcxDBCurrencyEdit;
    dxLayoutItem48: TdxLayoutItem;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    dxLayoutItem50: TdxLayoutItem;
    cxDBButtonEdit5: TcxDBButtonEdit;
    dxLayoutItem52: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem53: TdxLayoutItem;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    dxLayoutItem54: TdxLayoutItem;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    dxLayoutItem55: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    fdq: TdxLayoutGroup;
    PnlFrameCustosAdicionais: TPanel;
    dxLayoutItem58: TdxLayoutItem;
    Produto_Estoque_Local: TIBQuery;
    DSProduto_Estoque_Local: TDataSource;
    Produto_Estoque_LocalCODIGO: TIntegerField;
    Produto_Estoque_LocalDESCRICAO: TIBStringField;
    dxLayoutItem13: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    LiImpostos: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    EdtIPI: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtFrete: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    EdtOutrasDespAcessorias: TcxDBCurrencyEdit;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    CbUnidadeCompra: TcxDBComboBox;
    LiCbUnidadeCompra: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    EdtValor: TcxDBCurrencyEdit;
    GrupoProdutosAfetados: TdxLayoutGroup;
    DSNF_Entrada_Produtos_Afetados: TDataSource;
    cxDBTreeList1: TcxDBTreeList;
    dxLayoutItem9: TdxLayoutItem;
    cxDBTreeList1CODIGO: TcxDBTreeListColumn;
    cxDBTreeList1PARENT: TcxDBTreeListColumn;
    cxDBTreeList1DESCRICAO: TcxDBTreeListColumn;
    cxDBTreeList1CUSTO: TcxDBTreeListColumn;
    cxDBTreeList1VALOR: TcxDBTreeListColumn;
    cxLabel1: TcxLabel;
    dxLayoutItem22: TdxLayoutItem;
    MenuComposicao: TPopupMenu;
    Ratearovalordoproduto1: TMenuItem;
    ActionList1: TActionList;
    ActRatearComposicao: TAction;
    ImgListActions: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    EstiloColunaRateioValor: TcxStyle;
    ActRatearComposicaoFaltantes: TAction;
    Ratearovalornosmateriaispendentes1: TMenuItem;
    MenuRateio: TPopupMenu;
    Ratearovalordoproduto2: TMenuItem;
    Ratearovalornosmateriaispendentes2: TMenuItem;
    EstiloValor: TcxStyle;
    EstiloValorTotal: TcxStyle;
    EstiloQuant: TcxStyle;
    EstiloCusto: TcxStyle;
    EstiloCustoTotal: TcxStyle;
    EstiloValorPorPeca: TcxStyle;
    cxDBTreeList1ATUALIZAR_VALOR: TcxDBTreeListColumn;
    BtnAtualizarProdutosAfetados: TcxButton;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem25: TdxLayoutItem;
    EdtComposicaoLocalEstoque: TcxDBLookupComboBox;
    LbUCAprovarConversao: TLabel;
    WRCalc: TWRCalculaConfiguracoes;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    PmPrincipal: TwrProdutoMemoria;
    DSPmPrincipal: TDataSource;
    GrupoTabelaPreco: TdxLayoutItem;
    pnlTabelaPreco: TPanel;
    cxDBTreeList1CUSTO_ANTERIOR: TcxDBTreeListColumn;
    cxDBTreeList1VALOR_ANTERIOR: TcxDBTreeListColumn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DSStateChange(Sender: TObject);
    procedure BtnMostrarLogAtividadesClick(Sender: TObject);
    procedure GrupoGuiasTabChanged(Sender: TObject);
    procedure EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtQuantCompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtCustoTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtICMSSTPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtIPIPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtFretePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtDescontoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtOutrasDespAcessoriasPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure BtnAtualizarProdutosAfetadosClick(Sender: TObject);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
  private
    FFrameCustos: TFrameCustos;
    FFrameHistorico: TFrameHistorico;
    FFrameTabelaPreco: TFrmFrameTabelaPreco;

  protected
  public
    class procedure AbrirFromNFEntrada(Var AForm: TFrmNF_Entrada_Produtos; AWRCalc: TWRCalculaConfiguracoes;
      ANFEntradaProdutosAfetados: TDataSet; AEventoOnClick: TcxEditButtonClickEvent);
  end;

implementation

{$R *.dfm}

uses
  ConSelecao_Lote, UnitFuncoes, wrFuncoes, StrUtils, Principal, Math, Senha, Base_Produto, wrConstantes, Base, Tag.APP;

class procedure TFrmNF_Entrada_Produtos.AbrirFromNFEntrada(Var AForm: TFrmNF_Entrada_Produtos;
  AWRCalc: TWRCalculaConfiguracoes; ANFEntradaProdutosAfetados: TDataSet; AEventoOnClick: TcxEditButtonClickEvent);
begin
  if not Assigned(AForm) then
  begin
    FrmPrincipal.dxTabbedMDIManager1.BeginUpdate;
    AForm := TFrmNF_Entrada_Produtos.Create(AWRCalc.Owner);
    AForm.FormStyle:=fsNormal;
    AForm.Hide;
    AForm.PopupParent := TForm(AWRCalc.Owner);
    FrmPrincipal.dxTabbedMDIManager1.EndUpdate(false);
    //Frame de Custos
    TFrameCustos.CarregaFrame(AForm.FFrameCustos, AForm.PnlFrameCustosAdicionais, AWRCalc);
    AForm.WRCalc                    := AWRCalc;
    AForm.DS.DataSet                := AWRCalc.DBProduto;
    AForm.UCHist_Cadastro.DataSet   := AWRCalc.DBProduto;
    AForm.DSNF_Entrada_Produtos_Afetados.DataSet := ANFEntradaProdutosAfetados;
    AForm.Produto_Estoque_Local.Open;

    PreencheComboBoxUnidade(AForm.CbUnidadeCompra);
    AForm.EdtCodProduto.Properties.OnButtonClick:=AEventoOnClick;
  end;
  AForm.EdtOutrasDespAcessorias.Enabled:= AWRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString <> 'S';
  AForm.EdtDesconto.Enabled:= AWRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString <> 'S';
  AForm.EdtFrete.Enabled:= AWRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString <> 'S';
  if (ANFEntradaProdutosAfetados <> nil) and ANFEntradaProdutosAfetados.IsEmpty then
    AForm.GrupoProdutosAfetados.Caption := 'Produtos dependentes (' + IntToStr(ANFEntradaProdutosAfetados.RecordCount) + ')';

    //    VerificarprodutosAfetados1;

  AForm.DS.AutoEdit := AWRCalc.DSProduto.AutoEdit;
  AForm.ShowModal;
end;

procedure TFrmNF_Entrada_Produtos.BtnAtualizarProdutosAfetadosClick(Sender: TObject);
begin
  inherited;
  GrupoProdutosAfetados.Caption := 'Produtos dependentes (' + IntToStr(DSNF_Entrada_Produtos_Afetados.DataSet.RecordCount) + ')';
end;

procedure TFrmNF_Entrada_Produtos.btnConfirmarClick(Sender: TObject);
begin
  //inherited; <-- Não usar inherited!!!
  // Para apertar o botão a tela tem que estar em edicao
  WRCalc.DBProduto.Post;
end;

procedure TFrmNF_Entrada_Produtos.BtnMostrarLogAtividadesClick(Sender: TObject);
begin
//  inherited;
end;

procedure TFrmNF_Entrada_Produtos.DSStateChange(Sender: TObject);
begin
  inherited;
  btnAlterar.Enabled    := DS.AutoEdit and not (DS.State in dsEditModes);
  btnExcluir.Enabled    := DS.AutoEdit and not (DS.State in dsEditModes);

//  GrupoCustosAdicionais.Visible := GetPodeVerCustos;
  cxDBTreeList1VALOR.Visible    := GetPodeVerCustos;
end;

procedure TFrmNF_Entrada_Produtos.EdtCustoTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarTotal_Compra(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtDescontoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.VendaCompraAlterarVDESC(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtFretePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.VendaCompraAlterarNF_VFRETE(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtICMSSTPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.VendaCompraAlterarNF_VICMSST(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtIPIPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.VendaCompraAlterarNF_IPI_VIPI(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtOutrasDespAcessoriasPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.VendaCompraAlterarVOUTRO(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtQuantCompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ValidaCampoMedidas('QUANT_COMPRA', DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarValor_Compra(DisplayValue);
end;

procedure TFrmNF_Entrada_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited; <-- Não usar inherited!!
end;

procedure TFrmNF_Entrada_Produtos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //inherited; <-- Não usar inherited!!
end;

procedure TFrmNF_Entrada_Produtos.GrupoGuiasTabChanged(Sender: TObject);
begin
  inherited;
  if GrupoTabelaPreco.ActuallyVisible then
  begin
    TFrmFrameTabelaPreco.CarregaFrame(FFrameTabelaPreco, PnlTabelaPreco, WRCalc.DSProduto, WRCalc.DSProdutoPreco);
    VerificaSePrecisaAbrir(WRCalc.DSProdutoPreco.DataSet);
  end;
  if LiPnlFrameLogAtividades.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameRegistro_Atividade, UCHist_Cadastro, nil );
end;

procedure TFrmNF_Entrada_Produtos.WREventosCadastroLayoutChange(
  Sender: TObject);
begin
  inherited;
  dxLayoutItem25.Visible := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;
  GrupoTabelaPreco.Visible := AWR_APP[TagAPP_Venda_Tabela_Preço].Ativo;
end;

end.
