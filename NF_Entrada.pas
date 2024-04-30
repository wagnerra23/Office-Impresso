unit NF_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, ExtCtrls, DB, ComCtrls,
  StdCtrls, Mask, DBCtrls, Buttons, DBGrids, Menus, pcnConversao, cxContainer, cxEdit, cxButtonEdit, UCBase, QuickRpt,
  QRCtrls, cxGridLevel, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxCalendar,
  cxButtons, cxLabel, Gradient, UCHistDataset, Rotinas, UCHist_WRGeral, SqlExpr, cxControls, cxLookAndFeelPainters,
  cxCustomData, ImgList, cxGridCustomTableView, Grids, cxCheckGroup, dxLayoutContainer, dxLayoutControl, frxDBSet,
  NetGradient, cxGraphics, cxLookAndFeels, dxSkinsCore, cxStyles, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxCheckBox, dxLayoutcxEditAdapters, dxLayoutControlAdapters, frxClass, cxGridTableView,
  cxClasses, cxGridCustomView, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxGroupBox, cxDBNavigator,
  cxCheckListBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  DataModuleBanco, dxCore, cxDateUtils, cxDateProfileButton, dxLayoutLookAndFeels, Principal,
  Generics.Collections, System.ImageList, cxProgressBar, System.Math, uControleWR, DataModule, cxCustomListBox,
  System.Actions, Vcl.ActnList, wrConstantes, ACBrBase, ACBrDFe, ACBrNFe, pcnNFe, cxRadioGroup, cxDBLabel, dxScreenTip,
  dxCustomHint, cxHint, dxBarBuiltInMenu, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridRows, cxImageList,
  cxImageComboBox, cxDBTL, uWRCalculaConfiguracoes, uWRComponent, uWRFormataCamposDataSet, Classes.WR, wrConversao,
  dxDateRanges, System.UITypes, CadMestre, WREventos, NF_Entrada_Produtos, dxStatusBar, cxMemo, dxSkinsDefaultPainters,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxEditRepositoryItems, dxGDIPlusClasses, dxUIAdorners, cxPropertiesStore, fs_iinterpreter, FrFrameTabelaPreco,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxSpreadSheet,
  dxSpreadSheetFormulaBar, wrFuncoes_Office, System.Generics.Collections, FrFrameDespesaFinanceira,
  Frame_CadProduto_Mestre, ACBrCTe, pcteCTe, Base, Base_Produto_Compra_Modal, WRButtonsEditAdd,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Routes.Requisicao.Compra;

type
  TFrmNF_Entrada = class(TFrmCadM)
    ImageList1: TImageList;
    Label13: TLabel;
    DSProdutos: TDataSource;
    DSNF_Entrada_Parcelas: TDataSource;
    pnl_Parcela: TPanel;
    pnl_ParcelaSo: TPanel;
    Gradient10: TGradient;
    Label71: TLabel;
    Label72: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    lblParcelaÎPlanoContasÎDESCRICAO: TLabel;
    Label82: TLabel;
    lblParcelaÎContasÎDESCRICAO: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    pnl_ConfirmaParcela: TPanel;
    Label5: TLabel;
    DSConsulta_Produto: TDataSource;
    GridConsulta_Produto: TDBGrid;
    btnTipoPagto: TcxButton;
    edtVencto: TcxDBDateEdit;
    edtDataPagto: TcxDBDateEdit;
    edtParcelaÎContas: TcxDBButtonEdit;
    edtParcelaÎPlanoContas: TcxDBButtonEdit;
    btnParcelaCancelar: TcxButton;
    btnParcelaConfirmar: TcxButton;
    btn_wrFechar: TcxButton;
    PopupMenu1: TPopupMenu;
    EnviarparaCdigodeBarras1: TMenuItem;
    UCHistNF_Entrada_Parcelas: TUCHist_DataSet;
    UCHistNF_Entrada_Produtos: TUCHist_DataSet;
    UCHistWRGeral1: TUCHistWRGeral;
    Incluirprodutoscomestoqueabaixodomnimo1: TMenuItem;
    PnlAguarde: TPanel;
    AutopreencherCddeBarras1: TMenuItem;
    Label30: TLabel;
    frxNF_Entrada: TfrxDBDataset;
    frxNF_Entrada_Produtos: TfrxDBDataset;
    frxNF_Entrada_Parcelas: TfrxDBDataset;
    PopGridPratico: TPopupMenu;
    Label98: TLabel;
    MenuPlanodeContas: TPopupMenu;
    ReplicarPlanodeContas1: TMenuItem;
    CadastraLote1: TMenuItem;
    N4: TMenuItem;
    Abrircadastrodoproduto1: TMenuItem;
    N5: TMenuItem;
    ActionList1: TActionList;
    RepositorioEstilos: TcxStyleRepository;
    EstiloVerDetalhes: TcxStyle;
    ActDesvincularProduto: TAction;
    ActBuscarCadastroProduto: TAction;
    ImgListValor: TcxImageList;
    ImgListDetalhes: TcxImageList;
    DSProdutos_MD: TDataSource;
    DSPmPrincipal: TDataSource;
    PmPrincipal: TwrProdutoMemoria;
    FcPrincipal: TWRFormataCamposDataSets;
    PopupImpressao: TPopupMenu;
    ImprimircFornecedor1: TMenuItem;
    ImprimirsemValores1: TMenuItem;
    ImprimirValorVarejo1: TMenuItem;
    Imprimir1: TMenuItem;
    ImprimirComValordeVenda1: TMenuItem;
    PopupImportaNFe: TPopupMenu;
    ImportarXML1: TMenuItem;
    ConsultaSEFAZ1: TMenuItem;
    NF_Entrada_Produtos: TFDQuery;
    NF_Entrada_ProdutosTotal_Venda: TFloatField;
    NF_Entrada_Parcelas: TFDQuery;
    NF_Entrada_ParcelasRateio: TStringField;
    NF_Entrada_ParcelasTotal: TFloatField;
    NF_Entrada_Produtos_Afetados: TFDQuery;
    Consulta_Produto: TFDQuery;
    libtnMenu: TdxLayoutItem;
    btnMenu: TcxButton;
    libtnImportarNFe: TdxLayoutItem;
    btnImportarNFe: TcxButton;
    licbxTipo: TdxLayoutItem;
    cbxTipo: TcxDBComboBox;
    liedtDT_Nota: TdxLayoutItem;
    edtDT_Nota: TcxDBDateEdit;
    liedtFornecedorÎPessoas: TdxLayoutItem;
    edtFornecedorÎPessoas: TcxDBButtonEdit;
    lilblFornecedorÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    lblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel;
    liedtData: TdxLayoutItem;
    edtData: TcxDBDateEdit;
    rdgTransferenciaTipo: TcxDBRadioGroup;
    lirdgTransferenciaTipo: TdxLayoutItem;
    GrupoCentral: TdxLayoutGroup;
    GrupoTransferencia: TdxLayoutGroup;
    GrupoTransferenciaEntreEmpresas: TdxLayoutGroup;
    GrupoTransferenciaEntreEstoques: TdxLayoutGroup;
    liedtEmpresaOrigemÎEmpresa: TdxLayoutItem;
    edtEmpresaOrigemÎEmpresa: TcxDBButtonEdit;
    lilblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TdxLayoutItem;
    lblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL: TLabel;
    liedtEmpresaDestinoÎEmpresa: TdxLayoutItem;
    edtEmpresaDestinoÎEmpresa: TcxDBButtonEdit;
    lilblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL: TdxLayoutItem;
    lblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL: TLabel;
    GrupoCentralTabs: TdxLayoutGroup;
    TabProdutos: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    PnlCabecalhoProduto: TPanel;
    LiGrupoProduto: TdxLayoutControl;
    edtGrupoÎProduto_Grupo: TcxDBButtonEdit;
    lblGrupoÎProduto_GrupoÎDESCRICAO: TcxDBLabel;
    edtEstoque_Anterior: TcxDBCurrencyEdit;
    edtProduto_Estoque_Local: TcxDBLookupComboBox;
    edtCodNF_NCM: TcxDBTextEdit;
    edtAplicacao: TcxDBTextEdit;
    edtMarcaÎProduto_Marca: TcxDBButtonEdit;
    lblMarcaÎProduto_MarcaÎDESCRICAO: TcxDBLabel;
    btnAdicionarProduto: TcxButton;
    btnRemoverProduto: TcxButton;
    btnDetalhes: TcxButton;
    edtCodFabrica: TcxDBTextEdit;
    edtDescricaoProduto: TcxDBTextEdit;
    edtNF_Volume: TcxDBTextEdit;
    edtQuant_Compra: TcxDBCurrencyEdit;
    edtValor_Compra: TcxDBCurrencyEdit;
    edtTotal_Compra: TcxDBCurrencyEdit;
    edtMargem: TcxDBCurrencyEdit;
    edtValor: TcxDBCurrencyEdit;
    edtCodProduto: TcxButtonEdit;
    edtVeiculo_Chassi: TcxDBTextEdit;
    edtVeiculo_Motor: TcxDBTextEdit;
    edtVeiculo_Renavam: TcxDBTextEdit;
    edtVeiculo_Ano_Modelo: TcxDBMaskEdit;
    edtVeiculo_Cilindrada: TcxDBCurrencyEdit;
    edtVeiculo_HP: TcxDBCurrencyEdit;
    edtVeiculo_Passageiros: TcxDBCurrencyEdit;
    edtCodProduto_Tipo: TcxDBLookupComboBox;
    edtVeiculo_Combustivel: TcxDBComboBox;
    edtVeiculo_KM: TcxDBComboBox;
    edtVeiculo_Placa: TcxDBTextEdit;
    edtCorÎCor: TcxDBButtonEdit;
    lblCorÎCorÎDESCRICAO: TcxDBLabel;
    LiGrupoProdutoGroup_Root: TdxLayoutGroup;
    LiGrupoProdutoTOP: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    liedtGrupoÎProduto_Grupo: TdxLayoutItem;
    lilblGrupoÎProduto_GrupoÎDESCRICAO: TdxLayoutItem;
    LiEdtEstoque: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    liedtProduto_Estoque_Local: TdxLayoutItem;
    liedtCodNF_NCM: TdxLayoutItem;
    liedtAplicacao: TdxLayoutItem;
    liedtMarcaÎProduto_Marca: TdxLayoutItem;
    lilblMarcaÎProduto_MarcaÎDESCRICAO: TdxLayoutItem;
    GrupoProdutoEntrada: TdxLayoutGroup;
    libtnAdicionarProduto: TdxLayoutItem;
    libtnRemoverProduto: TdxLayoutItem;
    libtnDetalhes: TdxLayoutItem;
    LIGrupoBotoesTOP: TdxLayoutGroup;
    LiGrupoBotoes: TdxLayoutGroup;
    liedtCodFabrica: TdxLayoutItem;
    liedtDescricaoProduto: TdxLayoutItem;
    liedtNF_Volume: TdxLayoutItem;
    liedtQuant_Compra: TdxLayoutItem;
    liedtValor_Compra: TdxLayoutItem;
    LiedtTotal_Compra: TdxLayoutItem;
    liedtMargem: TdxLayoutItem;
    liedtValor: TdxLayoutItem;
    liedtCodProdutoÎProduto: TdxLayoutItem;
    GrupoDetalhes: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    liedtVeiculo_Chassi: TdxLayoutItem;
    liedtVeiculo_Motor: TdxLayoutItem;
    liedtVeiculo_Renavam: TdxLayoutItem;
    liedtVeiculo_Ano_Modelo: TdxLayoutItem;
    liedtVeiculo_Cilindrada: TdxLayoutItem;
    liedtVeiculo_HP: TdxLayoutItem;
    liedtVeiculo_Passageiros: TdxLayoutItem;
    liedtCodProduto_Tipo: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    liedtVeiculo_Combustivel: TdxLayoutItem;
    liedtVeiculo_KM: TdxLayoutItem;
    liedtVeiculo_Placa: TdxLayoutItem;
    liedtCorÎCor: TdxLayoutItem;
    lilblCorÎCorÎDESCRICAO: TdxLayoutItem;
    GrupoFinanceiro: TdxLayoutGroup;
    dxLayoutItem38: TdxLayoutItem;
    GridFinanceiro: TDBGrid;
    GrupoAdicionaParcela: TdxLayoutGroup;
    liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit;
    edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TcxDBCurrencyEdit;
    liedtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit;
    liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem;
    liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBCurrencyEdit;
    liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL: TdxLayoutItem;
    edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL: TcxDBCheckBox;
    libtnGerarParcelas: TdxLayoutItem;
    btnGerarParcelas: TcxButton;
    GrupoDadosAdicionais: TdxLayoutGroup;
    licbxModelo_Docto_Fiscal: TdxLayoutItem;
    cbxModelo_Docto_Fiscal: TcxDBLookupComboBox;
    liedtSerie: TdxLayoutItem;
    edtSerie: TcxDBTextEdit;
    liedtSubserie: TdxLayoutItem;
    edtSubserie: TcxDBTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    edtTransportadora: TcxDBTextEdit;
    dxLayoutGroup10: TdxLayoutGroup;
    licbxNF_FretePorConta: TdxLayoutItem;
    cbxNF_FretePorConta: TcxDBLookupComboBox;
    dxLayoutItem50: TdxLayoutItem;
    edtObservacao: TcxDBMemo;
    GrupoTotaisNota: TdxLayoutGroup;
    liedtNF_VFrete2: TdxLayoutItem;
    edtNF_VFrete2: TcxDBCurrencyEdit;
    GrupoImpostos: TdxLayoutGroup;
    liedtNF_VBC: TdxLayoutItem;
    edtNF_VBC: TcxDBCurrencyEdit;
    liedtNF_VICMS: TdxLayoutItem;
    edtNF_VICMS: TcxDBCurrencyEdit;
    liedtNF_VSEG: TdxLayoutItem;
    edtNF_VSEG: TcxDBCurrencyEdit;
    liedtNF_VBCST: TdxLayoutItem;
    edtNF_VBCST: TcxDBCurrencyEdit;
    liedtNF_VICMSST2: TdxLayoutItem;
    edtNF_VICMSST2: TcxDBCurrencyEdit;
    liedtNF_IPI_VIPI2: TdxLayoutItem;
    edtNF_IPI_VIPI2: TcxDBCurrencyEdit;
    liedtNF_PIS_VPIS: TdxLayoutItem;
    edtNF_PIS_VPIS: TcxDBCurrencyEdit;
    liedtNF_COFINS_VCOFINS: TdxLayoutItem;
    edtNF_COFINS_VCOFINS: TcxDBCurrencyEdit;
    liedtVDesc2: TdxLayoutItem;
    edtVDesc2: TcxDBCurrencyEdit;
    liedtVOutro2: TdxLayoutItem;
    edtVOutro2: TcxDBCurrencyEdit;
    liedtValor_Produtos: TdxLayoutItem;
    edtValor_Produtos: TcxDBCurrencyEdit;
    liedtTotal2: TdxLayoutItem;
    edtTotal2: TcxDBCurrencyEdit;
    GrupoVolume: TdxLayoutGroup;
    liedtPeso_Bruto: TdxLayoutItem;
    edtPeso_Bruto: TcxDBCurrencyEdit;
    liedtPeso_Liquido: TdxLayoutItem;
    edtPeso_Liquido: TcxDBCurrencyEdit;
    liedtCodUsuarioÎUsuario: TdxLayoutItem;
    edtCodUsuario: TcxDBTextEdit;
    lilblCodUsuarioÎUsuarioÎLOGIN: TdxLayoutItem;
    lblCodUsuario: TLabel;
    liedtQuanidade: TdxLayoutItem;
    edtQuanidade: TcxDBCurrencyEdit;
    liedtVolume: TdxLayoutItem;
    edtVolume: TcxDBTextEdit;
    liedtValor_NF_Varejo: TdxLayoutItem;
    edtValor_NF_Varejo: TcxDBCurrencyEdit;
    LookAndFeelValorDestacado: TdxLayoutCxLookAndFeel;
    EstiloEditDestacado: TcxStyle;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    WRCalc: TWRCalculaConfiguracoes;
    cbxEstoque_Local_Origem: TcxDBLookupComboBox;
    licbxEstoque_Local_Origem: TdxLayoutItem;
    cbxEstoque_Local_Destino: TcxDBLookupComboBox;
    licbxEstoque_Local_Destino: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    libtnFinalizarCompra: TdxLayoutItem;
    btnFinalizarCompra: TcxButton;
    liedtDtFaturamento: TdxLayoutItem;
    edtDtFaturamento: TcxDBTextEdit;
    edtParcelaValor: TcxDBCurrencyEdit;
    edtJuros: TcxDBCurrencyEdit;
    edtDesconto: TcxDBCurrencyEdit;
    edtParcelaTotal: TcxDBCurrencyEdit;
    cbxParcelaTipo: TcxDBComboBox;
    edtDocumento: TcxDBTextEdit;
    cbxTipoPagto: TcxDBComboBox;
    edtHistorico: TcxDBTextEdit;
    edtCheque_Numero: TcxDBTextEdit;
    edtStatus: TcxDBTextEdit;
    libtnCancelarFinalizacao: TdxLayoutItem;
    btnCancelarFinalizacao: TcxButton;
    libtnCancelarConferencia: TdxLayoutItem;
    btnCancelarConferencia: TcxButton;
    chkEnviaFinanceiro: TcxDBCheckBox;
    lichkEnviaFinanceiro: TdxLayoutItem;
    TabFormaPagamento: TdxLayoutGroup;
    LiFaturamento: TdxLayoutGroup;
    LiGrupoDadosAdicionais: TdxLayoutGroup;
    GrupoResponsaveis: TdxLayoutGroup;
    lichkAtualiza_Estoque: TdxLayoutItem;
    chkAtualiza_Estoque: TcxDBCheckBox;
    lichkGera_Financeiro: TdxLayoutItem;
    chkGera_Financeiro: TcxDBCheckBox;
    libtnMateriaisConferidos: TdxLayoutItem;
    btnMateriaisConferidos: TcxButton;
    liedtUsuarioEstoqueÎUsuario: TdxLayoutItem;
    edtUsuarioEstoqueÎUsuario: TcxDBButtonEdit;
    lilblUsuarioEstoqueÎUsuarioÎLOGIN: TdxLayoutItem;
    lblUsuarioEstoqueÎUsuarioÎLOGIN: TLabel;
    RecaregarProduto1: TMenuItem;
    Apagarparcelas1: TMenuItem;
    LiGridTree: TdxLayoutItem;
    GridTree: TcxDBTreeList;
    GridTreeCODIGO: TcxDBTreeListColumn;
    GridTreeCODPRODUTOÎProduto: TcxDBTreeListColumn;
    GridTreeDESCRICAO: TcxDBTreeListColumn;
    GridTreeQUANT: TcxDBTreeListColumn;
    GridTreeVALOR_COMPRA: TcxDBTreeListColumn;
    GridTreeMARGEM: TcxDBTreeListColumn;
    GridTreeVALOR: TcxDBTreeListColumn;
    GridTreeTOTAL_COMPRA: TcxDBTreeListColumn;
    GridTreeDT_ALTERACAO: TcxDBTreeListColumn;
    GridTreeESTOQUE_LOCAL_MOVIMENTO: TcxDBTreeListColumn;
    GridTreeTotalPeso: TcxDBTreeListColumn;
    GridTreePESO: TcxDBTreeListColumn;
    GridTreeESTOQUE: TcxDBTreeListColumn;
    GridTreeCODPRODUTO_TIPO: TcxDBTreeListColumn;
    GridTreeCUSTO_ATUAL: TcxDBTreeListColumn;
    GridTreeVALOR_ATUAL: TcxDBTreeListColumn;
    GridTreePARENT: TcxDBTreeListColumn;
    GridTreeCODNF_NCM: TcxDBTreeListColumn;
    GridTreeCODNF_CST: TcxDBTreeListColumn;
    GridTreeCFOP_VENDA: TcxDBTreeListColumn;
    GridTreeCFOP_COMPRA: TcxDBTreeListColumn;
    liedtCodContaÎContasÎDescricao: TdxLayoutItem;
    edtCodContaÎContasÎDescricao: TLabel;
    liedtCodContaÎContas: TdxLayoutItem;
    edtCodContaÎContas: TcxButtonEdit;
    CalcularImpostos1: TMenuItem;
    GridTreePRODUTO_TIPO: TcxDBTreeListColumn;
    GridTreeCODFABRICA: TcxDBTreeListColumn;
    lichkPode_Ratear_Frete_Desc_Outro: TdxLayoutItem;
    chkPode_Ratear_Frete_Desc_Outro: TcxDBCheckBox;
    GrupoRetearValores: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    GrupoTotalVenda: TdxLayoutGroup;
    GridTreeNF_DESCRICAO: TcxDBTreeListColumn;
    GrupoPesoVolumes: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    Produto_Markup: TFDQuery;
    PnlPreencheCodFabrica: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem37: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem51: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem56: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    GridTreeCODPRODUTO_GRUPO: TcxDBTreeListColumn;
    GridTreeDT_ALTERACAO_CADASTRO: TcxDBTreeListColumn;
    Acessoaconfiguraodecertificadodigital1: TMenuItem;
    ValidarCadastro1: TMenuItem;
    liedtUsuarioAlteradoÎUsuario: TdxLayoutItem;
    edtUsuarioAlterado: TcxDBTextEdit;
    lilblUsuarioAlteradoÎUsuarioÎLOGIN: TdxLayoutItem;
    lblUsuarioAlterado: TLabel;
    PnlTabelaPreco: TPanel;
    LibtnTabela_Preco: TdxLayoutItem;
    btnTabela_Preco: TcxButton;
    NF_Entrada_Tabela_Preco: TFDQuery;
    DSNF_Entrada_Tabela_Preco: TDataSource;
    SprMemoria: TdxSpreadSheet;
    dxLayoutItem2: TdxLayoutItem;
    btnMostrarSpr: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar;
    dxLayoutItem3: TdxLayoutItem;
    sprMotorCalculo: TdxSpreadSheet;
    TabMotorCalculo: TdxLayoutGroup;
    LichkEnvia_Estoque: TdxLayoutItem;
    chkEnvia_Estoque: TcxDBCheckBox;
    GridTreeORDEM: TcxDBTreeListColumn;
    Motordeclculodoitem1: TMenuItem;
    GridTreeQTDADEPECA_SUBUNIDADE: TcxDBTreeListColumn;
    GridTreeNF_UNIDADE: TcxDBTreeListColumn;
    LiedtQuant_Rendimento: TdxLayoutItem;
    edtQuant_Rendimento: TcxDBButtonEdit;
    LiedtMarkup: TdxLayoutItem;
    edtMarkup: TcxDBButtonEdit;
    LiedtExtras: TdxLayoutItem;
    edtExtras: TcxDBButtonEdit;
    GridTreeRENDIMENTO: TcxDBTreeListColumn;
    GridTreeTotal_Venda: TcxDBTreeListColumn;
    GridTreeNF_IPI_VIPI: TcxDBTreeListColumn;
    GridTreeNF_VICMSST: TcxDBTreeListColumn;
    GridTreeCALC_VCOMPRA_EXTRA: TcxDBTreeListColumn;
    btnMarkup: TcxButton;
    LibtnMarkup: TdxLayoutItem;
    btnCustoMedio: TcxButton;
    LibtnCustoMedio: TdxLayoutItem;
    btnRendimento: TcxButton;
    LibtnRendimento: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LibtnPeso: TdxLayoutItem;
    btnPeso: TcxButton;
    GridTreeCALC_PMARKUP: TcxDBTreeListColumn;
    GrupoUltimoUsuario: TdxLayoutGroup;
    GridTreeNF_VBC: TcxDBTreeListColumn;
    GridTreeNF_VBCST: TcxDBTreeListColumn;
    GridTreeNF_PIS_VPIS: TcxDBTreeListColumn;
    GridTreeNF_COFINS_VCOFINS: TcxDBTreeListColumn;
    GridTreeNF_VSEG: TcxDBTreeListColumn;
    GridTreeNF_VICMS: TcxDBTreeListColumn;
    GridTreeNF_VFRETE: TcxDBTreeListColumn;
    GridTreeVDESC: TcxDBTreeListColumn;
    GridTreeVOUTRO: TcxDBTreeListColumn;
    ConsultaXMLTerceiros1: TMenuItem;
    VerificarprodutosAfetados1: TMenuItem;
    Configuracao_Componente_Produto: TFDQuery;
    dxLayoutItem5: TdxLayoutItem;
    PnlDespesaFinanceira: TPanel;
    TabDespesaAdicional: TdxLayoutGroup;
    Despesa_Financeira: TFDQuery;
    DSDespesa_Financeira: TDataSource;
    GrupoTotalDespesasFinanceira: TdxLayoutGroup;
    liedtTotal_Despesas_Financeira: TdxLayoutItem;
    edtTotal_Despesas_Financeira: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    chkGera_Estoque: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    LiedtSubTotal: TdxLayoutItem;
    edtSubTotal: TcxDBCurrencyEdit;
    TabVinculadas: TdxLayoutGroup;
    edtCodigoÎNF_Entrada: TcxButtonEdit;
    LiedtCodigoÎNF_Entrada: TdxLayoutItem;
    btnAdicionarVinculo: TcxButton;
    LibtnAdicionarVinculo: TdxLayoutItem;
    btnRemoverVinculo: TcxButton;
    LibtnRemoverVinculo: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    GridVinculosView: TcxGridDBTableView;
    GridVinculosLevel1: TcxGridLevel;
    GridVinculos: TcxGrid;
    dxLayoutItem13: TdxLayoutItem;
    NF_Entrada_Vinculos: TFDQuery;
    DSNF_Entrada_Vinculos: TDataSource;
    edtCodigoÎNF_EntradaÎNUN_NF: TcxTextEdit;
    LiedtCodigoÎNF_EntradaÎNUN_NF: TdxLayoutItem;
    edtCodigoÎNF_EntradaÎTOTAL: TcxCurrencyEdit;
    LiedtCodigoÎNF_EntradaÎTOTAL: TdxLayoutItem;
    cbTipoVinculo: TcxComboBox;
    LicbTipoVinculo: TdxLayoutItem;
    edtRazaoSocial: TcxTextEdit;
    LiedtRazaoSocial: TdxLayoutItem;
    GridVinculosViewChaveNF: TcxGridDBColumn;
    GridVinculosViewTotal: TcxGridDBColumn;
    GridVinculosViewNun_NF: TcxGridDBColumn;
    GridVinculosViewTipo_Vinculo: TcxGridDBColumn;
    GridVinculosViewRazaoSocial: TcxGridDBColumn;
    GridVinculosViewData: TcxGridDBColumn;
    GridVinculosViewTipo: TcxGridDBColumn;
    edtCodigoÎNF_EntradaÎTIPO: TcxTextEdit;
    LiedtCodigoÎNF_EntradaÎTIPO: TdxLayoutItem;
    GridVinculosViewCodigo: TcxGridDBColumn;
    edtCustos_Vinculados: TcxDBCurrencyEdit;
    LiedtValor_Acrescimo_Vinculado: TdxLayoutItem;
    GridTreeCALC_VCOMPRA_CUSTOS_VINCULADOS: TcxDBTreeListColumn;
    GridTreeORIGEM_MERCADORIA: TcxDBTreeListColumn;
    LiedtChave: TdxLayoutItem;
    edtChave: TcxDBTextEdit;
    FDQuery1: TFDQuery;
    GridTreeUN_SUBUNIDADE_DESCRICAO: TcxDBTreeListColumn;
    GridVinculosViewPORCENTAGEM_RATEIO: TcxGridDBColumn;
    NF_Entrada_ProdutosQTDADEPECA_RENDIMENTO: TFloatField;
    NF_Entrada_ProdutosNF_UNIDADE: TStringField;
    GridTreeUNIDADE: TcxDBTreeListColumn;
    edtUN_PADRAO_COMPRA: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    NF_Entrada_ProdutosQTDADEPECA_SUBUNIDADE: TFloatField;
    GridTreeUN_SUBUNIDADE: TcxDBTreeListColumn;
    libtnRequisicao: TdxLayoutItem;
    btnRequisicao: TcxButton;
    EnviarparaRequisicao1: TMenuItem;
    lichkEnvia_Preco: TdxLayoutItem;
    chkEnvia_Preco: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    GridTreePODE_SER_VENDIDO: TcxDBTreeListColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure edtCodFabricaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnGerarParcelasClick(Sender: TObject);
    procedure GridFinanceiroDblClick(Sender: TObject);
    procedure btnParcelaConfirmarClick(Sender: TObject);
    procedure btnParcelaCancelarClick(Sender: TObject);
    procedure NF_Entrada_ParcelasBeforePost(DataSet: TDataSet);
    procedure NF_Entrada_ParcelasCalcFields(DataSet: TDataSet);
    procedure edtQuant_CompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridConsulta_ProdutoDblClick(Sender: TObject);
    procedure GridConsulta_ProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnDetalhesClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodFabricaExit(Sender: TObject);
    procedure EnviarparaCdigodeBarras1Click(Sender: TObject);
    procedure NF_Entrada_ProdutosBeforePost(DataSet: TDataSet);
    procedure Incluirprodutoscomestoqueabaixodomnimo1Click(Sender: TObject);
    procedure AutopreencherCddeBarras1Click(Sender: TObject);
    procedure NF_Entrada_ProdutosBeforeEdit(DataSet: TDataSet);
    procedure ReplicarPlanodeContas1Click(Sender: TObject);
    procedure CadastraLote1Click(Sender: TObject);
    procedure Abrircadastrodoproduto1Click(Sender: TObject);
    procedure NF_Entrada_ProdutosBeforeDelete(DataSet: TDataSet);
    procedure NF_Entrada_ProdutosAfterInsert(DataSet: TDataSet);
    procedure PopGridPraticoPopup(Sender: TObject);
    procedure NF_Entrada_ProdutosCalcFields(DataSet: TDataSet);
    procedure NF_Entrada_Produtos_AfetadosAfterInsert(DataSet: TDataSet);
    procedure FcPrincipalCarregaDataSets(Sender: TObject);
    procedure cbxTipoPropertiesChange(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure ImprimircFornecedor1Click(Sender: TObject);
    procedure ImprimirsemValores1Click(Sender: TObject);
    procedure ImprimirValorVarejo1Click(Sender: TObject);
    procedure ImprimirComValordeVenda1Click(Sender: TObject);
    procedure ImportarXML1Click(Sender: TObject);
    procedure ConsultaSEFAZ1Click(Sender: TObject);
    procedure RgTipoTransferenciaPropertiesChange(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure EdtCodProdutoÎProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure btnFinalizarCompraClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure EdtDtFaturamentoPropertiesChange(Sender: TObject);
    procedure dbtxtCodigoPropertiesChange(Sender: TObject);
    procedure MenuPlanodeContasPopup(Sender: TObject);
    procedure CkAtualizarEstoquePropertiesChange(Sender: TObject);
    procedure btnCancelarConferenciaClick(Sender: TObject);
    procedure cbxTipoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure RecaregarProduto1Click(Sender: TObject);
    procedure Apagarparcelas1Click(Sender: TObject);
    procedure NF_Entrada_ParcelasBeforeDelete(DataSet: TDataSet);
    procedure GridTreeDblClick(Sender: TObject);
    procedure CalcularImpostos1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure WRCalcValidateVENDA(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarPadroesGrid1Click(Sender: TObject);
    procedure GridTreeCODPRODUTO_GRUPOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure GridTreeDT_ALTERACAO_CADASTROPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure GridTreeCODPRODUTOÎProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Acessoaconfiguraodecertificadodigital1Click(Sender: TObject);
    procedure ValidarCadastro1Click(Sender: TObject);
    procedure GridFinanceiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTreeCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure btnTabela_PrecoClick(Sender: TObject);
    procedure btnMostrarSprClick(Sender: TObject);
    procedure GridTreeCustomDrawIndentCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListIndentCellViewInfo; var ADone: Boolean);
    procedure GrupoCentralTabsTabChanged(Sender: TObject);
    procedure Motordeclculodoitem1Click(Sender: TObject);
    procedure sprMotorCalculoEditValueChanged(Sender: TdxSpreadSheetCustomView);
    procedure edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtQuant_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridTreeVALOR_COMPRAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridTreeTOTAL_COMPRAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridTreeVALORPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure GridTreeQTDADEPECA_SUBUNIDADEPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtCodProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtMarkupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure GridTreeCALC_VCOMPRA_EXTRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnCustoMedioClick(Sender: TObject);
    procedure btnRendimentoClick(Sender: TObject);
    procedure btnMarkupClick(Sender: TObject);
    procedure btnPesoClick(Sender: TObject);
    procedure GridTreeCALC_PMARKUPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure GridTreeCALC_PMARGEM_CONTRIBUICAOPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtCodUsuarioÎUsuarioPropertiesChange(Sender: TObject);
    procedure edtUsuarioAlteradoPropertiesChange(Sender: TObject);
    procedure NF_Entrada_ProdutosAfterOpen(DataSet: TDataSet);
    procedure NF_Entrada_ProdutosBeforeClose(DataSet: TDataSet);
    procedure ConsultaXMLTerceiros1Click(Sender: TObject);
    procedure VerificarprodutosAfetados1Click(Sender: TObject);
    procedure chkPode_Ratear_Frete_Desc_OutroPropertiesChange(Sender: TObject);
    procedure edtExtrasPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure BuscaNotaBanco(ACodigo :Integer);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure edtCodigoÎNF_EntradaPropertiesEditValueChanged(Sender: TObject);
    procedure btnAdicionarVinculoClick(Sender: TObject);
    procedure btnRemoverVinculoClick(Sender: TObject);
    procedure CalculaCustosVinculados;
    procedure GridVinculosViewDblClick(Sender: TObject);
    procedure GridTreeSUBUNIDADEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure GridTreeSUBUNIDADEPropertiesChange(Sender: TObject);
    procedure GridVinculosViewPORCENTAGEM_RATEIOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtValor_NF_VarejoPropertiesEditValueChanged(Sender: TObject);
    procedure NF_Entrada_ProdutosQTDADEPECA_RENDIMENTOChange(Sender: TField);
    procedure GridTreeUN_SUBUNIDADE_DESCRICAOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure NF_Entrada_ProdutosQTDADEPECA_SUBUNIDADEChange(Sender: TField);
    procedure edtUN_PADRAO_COMPRAPropertiesEditValueChanged(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure btnRequisicaoClick(Sender: TObject);
    procedure edtUsuarioEstoqueÎUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EnviarparaRequisicao1Click(Sender: TObject);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
    procedure btnMateriaisConferidosClick(Sender: TObject);
    procedure btnCancelarFinalizacaoClick(Sender: TObject);
    procedure chkEnvia_EstoquePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
 private
    FFrmProduto_Frame : TFrame_Produto_Mestre;
    FFrmNF_Entrada_Produtos: TFrmNF_Entrada_Produtos;
    FFrameTabelaPreco: TFrmFrameTabelaPreco;
    FFrameDespesaFinanceira: TFrmFrameDespesaFinanceira;
    FConsultaProduto: TFrmBase;
    procedure CalcSpr;
//    procedure TesteBadges;

    procedure CalculaSubUnidade(AUnidadeRendimento :String);
    procedure RecalculaTabelasDePreco;
    procedure CalculaRendimento(AUn_SubUnidade_Descricao, CodProduto: String; ADataSet :TDataSet);
    function ConferenciaMateriais: boolean;

// ---- MOVIDAS PARA SERVICES.COMPRA ---- //
//    procedure DoAtualizaEstoque;
//    procedure DoAtualizaFinanceiro;
//    procedure DM_ProdutoCriaOuAtualizaCadastro(ATransa: TFDTransaction; AWRCalc : TWRCalculaConfiguracoes; Tabela_Preco: TDataSet);


  public
    function DM_NFEntradaImportarNota(AACBrNFe: TACBrNFe; ACodXMLEntradaParaVincular: Integer = 0): string;
    function DM_NFEntradaImportarCTe(AACBrCTe: TACBrCTe; ACodXMLEntradaParaVincular: Integer = 0): string;
  end;
  procedure ProdutosProdutoAfetadosIniciar(ANF_Entrada_Produtos_Afetados : TFDQuery; ATransa: TFDTransaction; ACodProduto: String; AAtualizaPreco: Boolean; AFrmProduto_Frame: TFrame_Produto_Mestre);  // Pode ser executada dentro da tela do Entrada_produto
  function NF_EntradaVerificaNotaFiscalCadastrada(ATransa: TComponent; ANumNF: Integer; const ACodigo, ACodFornecedor: string): string;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base_Produto_Modal, System.StrUtils, ConNF_Entrada, Email,
  CadContas, ConContas, ComObj, ConCondicaoPagto, CadCondicaoPagto, ImpNF_Entrada, NFe, Registry, pcnNFeRTXT, Rtti,
  CadProduto_Barras, ConEmpresa, DateUtils, XMLDoc, XMLDom, XMLIntf, cxDataUtils,
  DataModuleImpressao, ACBrUtil, Aguarde, uEmail, Senha, Classes.PlanoContas, Utils.Financeiro, wrFuncoes, wrPreencheLookup,
  Financeiro_Contas_Escolha, CadProduto_Movimento, ConSelecao_Lote, ConProduto_Lote, CadProduto_Lote, pcnConversaoNFe,
  ConProduto_Grupo, wrFormataCampo, Services.Financeiro, Utils.PlanoContas,
  InspetorDeObjetos, Excel, wrForms, FrmRendimento, FrmExtras, FrmMarkup,
  frFrameHistorico, Base_Produto, Frame_CadPessoas_Mestre, Base_NotaFiscalEntrada,
  Frame_CadRequisicao_Pocket, frmConferencia_Compra, Controller.Compra, Tag.APP, Tag.Form, Tag.Report;

procedure TFrmNF_Entrada.Imprimir1Click(Sender: TObject);
begin
  //TODO: Apenas 1 Linha , remover
  inherited;
  Imprimir1.Enabled := False;
  try
//    if not DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0016'), Sender, True) then
    if not DMImpressao.ImprimirTag(Self, Tag_Report_Nota_Entrada, Sender, True) then
    begin
      Application.CreateForm(TImpriNF_Entrada, ImpriNF_Entrada);
      try
        ImpriNF_Entrada.QR_Titulo.Caption            := cbxTipo.Text;
        ImpriNF_Entrada.QRLabel_Usuario.Caption      := LBLCodUsuario.Caption;
        ImpriNF_Entrada.QRLabel_Soma_Produto.Caption := edtQuanidade.Text;    // Isso não é mais a soma dos produto, agora ta sendo usado como quantidade de volumes da nota
        ImpriNF_Entrada.Show;                                                 // Pra mim é um erro, deveria ter dois total de materiais.
      finally
        FreeAndNil(ImpriNF_Entrada);
      end;
    end;
  finally
    Imprimir1.Enabled := True;
  end;
end;

procedure TFrmNF_Entrada.ImprimircFornecedor1Click(Sender: TObject);  //TODO: Apenas 1 Linha , remover
var
  QuerX: TFDQuery;
begin
  inherited;
  ImprimircFornecedor1.Enabled := False;
  Application.CreateForm(TImpriNF_Entrada, ImpriNF_Entrada);
  try
    ImpriNF_Entrada.QR_Titulo.Caption := cbxTipo.Text;
    ImpriNF_Entrada.QRLabel18.Caption := LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption;
    if EdtFornecedorÎPessoas.Text <> '' then
    begin
      QuerX := SQLEnderecoResponsavel(Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
      try
        ImpriNF_Entrada.QRLabel29.Caption := QuerX.FieldByName('INSCIDENT').AsString;
        ImpriNF_Entrada.QRLabel20.Caption := QuerX.FieldByName('CNPJCPF').AsString;
        ImpriNF_Entrada.QRLabel27.Caption := QuerX.FieldByName('ENDERECO').AsString + ' - ' + QuerX.FieldByName('BAIRRO').AsString+' - '+QuerX.FieldByName('CIDADE').AsString+'/'+QuerX.FieldByName('UF').AsString;
        ImpriNF_Entrada.QRLabel31.Caption := QuerX.FieldByName('FONE1').AsString;

        ImpriNF_Entrada.QRLabel_Contato.Caption := QuerX.FieldByName('CONTATO').AsString;
        ImpriNF_Entrada.QRLabel_Usuario.Caption := LBLCodUsuario.Caption;
        ImpriNF_Entrada.QRLabel11.Caption := QuerX.FieldByName('FAX').AsString;
        ImpriNF_Entrada.QRLabel13.Caption := IfThen(not Cadastro.FieldByName('TRANSPORTADORA').AsString.IsEmpty,
                                                    Cadastro.FieldByName('TRANSPORTADORA').AsString,
                                                    QuerX.FieldByName('TRANSPORTADORA').AsString);
      finally
        QuerX.Free;
      end;
    end;
    ImpriNF_Entrada.QRBand5.Enabled := True;
    ImpriNF_Entrada.QRLabel_Soma_Produto.Caption := edtQuanidade.Text;  // TODO: Aqui ta pegando a quantidade de caixas na nota.
    ImpriNF_Entrada.Show;                                               // TODO: Tem que dasativar o DataSet, para a tela não ficar se mexendo junto com o relatório
  finally                                                               // TODO: Número da nota, Data de emissão não aparece
    FreeAndNil(ImpriNF_Entrada);
  end;
  ImprimircFornecedor1.Enabled := True;
end;

procedure TFrmNF_Entrada.ImprimirComValordeVenda1Click(Sender: TObject);   //TODO: Apenas 1 Linha , remover
begin
  inherited;


  Application.CreateForm(TImpriNF_Entrada, ImpriNF_Entrada);
  try
    ImpriNF_Entrada.QR_Titulo.Caption := cbxTipo.Text;
    ImpriNF_Entrada.QRLabel_Usuario.Caption := LBLCodUsuario.Caption;
    ImpriNF_Entrada.QRLabel_Soma_Produto.Caption := edtQuanidade.Text;
    ImpriNF_Entrada.QRDBText13.Enabled := False;
//    ImpriNF_Entrada.QRDBText14.Enabled := False;
    ImpriNF_Entrada.QRDBText_Valor.Enabled := True;
    ImpriNF_Entrada.QRDBText_Total_Venda.Enabled := True;
    ImpriNF_Entrada.QRDBText15.Enabled := False;
    ImpriNF_Entrada.QRLabel15.Enabled := False;
    ImpriNF_Entrada.Show;
  finally
    FreeAndNil(ImpriNF_Entrada);
  end;
end;

procedure TFrmNF_Entrada.ImprimirsemValores1Click(Sender: TObject);    //TODO: Apenas 1 Linha , remover
begin
  inherited;
  ImprimirsemValores1.Enabled := False;

  if NF_Entrada_Produtos.FindField('Total_Venda')<> nil then //Aqui é pra ser assim mesmo? Não tem que ser no FormataCampos??
    TNumericField(NF_Entrada_Produtos.FindField('Total_Venda')).DisplayFormat := DECIMAL_2M;


  Application.CreateForm(TImpriNF_Entrada, ImpriNF_Entrada);
  try
    ImpriNF_Entrada.QR_Titulo.Caption       := cbxTipo.Text;
    ImpriNF_Entrada.QRLabel_Usuario.Caption := LBLCodUsuario.Caption;

    ImpriNF_Entrada.QRLabel25.Enabled  := False;
    ImpriNF_Entrada.QRLabel24.Enabled  := False;
    ImpriNF_Entrada.QRLabel15.Enabled  := False;
    ImpriNF_Entrada.QRDBText15.Enabled := False;

    ImpriNF_Entrada.QRDBText13.Enabled := False;
//    ImpriNF_Entrada.QRDBText14.Enabled := False;

    ImpriNF_Entrada.QRLabel_Soma_Produto.Caption := edtQuanidade.Text;
    ImpriNF_Entrada.QuickRep1.PreviewModal;
  finally
    FreeAndNil(ImpriNF_Entrada);
  end;
  ImprimirsemValores1.Enabled := True;
end;

procedure TFrmNF_Entrada.ImprimirValorVarejo1Click(Sender: TObject);  //TODO: Apenas 1 Linha , remover
var
  AImpCusto : Boolean;
begin
  inherited;

  TNumericField(NF_Entrada_Produtos.FindField('TOTAL_COMPRA')).DisplayFormat := DECIMAL_2;

  ImprimirValorVarejo1.Enabled := False;
  AImpCusto := (ShowMessageWR('Deseja adicionar os valores de custo na impressão?', MB_ICONQUESTION) = mrYes);
  Application.CreateForm(TImpriNF_Entrada, ImpriNF_Entrada);
  try
    ImpriNF_Entrada.QRLabel28.Caption := cbxTipo.Text;
    ImpriNF_Entrada.QRLabel53.Caption := LBLCodUsuario.Caption;
    ImpriNF_Entrada.QRLabel54.Caption := edtQuanidade.Text;

    ImpriNF_Entrada.QRLabel74.Enabled  := AImpCusto;
    ImpriNF_Entrada.QRDBText18.Enabled := AImpCusto;
    ImpriNF_Entrada.QRLabel75.Enabled  := AImpCusto;
    ImpriNF_Entrada.QRDBText19.Enabled := AImpCusto;
    ImpriNF_Entrada.QRLabel76.Enabled  := AImpCusto;
    ImpriNF_Entrada.QRDBText29.Enabled := AImpCusto;

    ImpriNF_Entrada.QuickRep2.Preview;
  finally
    FreeAndNil(ImpriNF_Entrada);
    ImprimirValorVarejo1.Enabled := True;           // TODO: Sem Formatação, desalinhado
  end;
end;

procedure TFrmNF_Entrada.btnDetalhesClick(Sender: TObject);
begin
  inherited;  // OK
  GrupoDetalhes.Visible      := Not GrupoDetalhes.Visible;
  PnlCabecalhoProduto.Height := LiGrupoProduto.OccupiedClientHeight;
end;

procedure TFrmNF_Entrada.btnExcluirClick(Sender: TObject);
begin
//  inherited;
   //////////////////////////IMPORTANTE////////////////////////////////////
// TODO: Aqui deve validar se ja foi dado entrada no estoque, ou faturado no financeiro???
  if not(Cadastro.FieldByName('DT_FATURAMENTO').IsNull) then
  begin
    ShowMessage('Não pode excluir nota finalizada');
    Exit;
  end;

  Cadastro.Edit;
  Cadastro.FieldByName('ATIVO').AsString  := 'N';
  Cadastro.Post;
  TransaFD.Commit;
  Cadastro.Open;
end;

procedure TFrmNF_Entrada.CadastroAfterClose(DataSet: TDataSet);
begin
  inherited;   // OK
  NF_Entrada_Produtos_Afetados.Close;
  NF_Entrada_Parcelas.Close;
  NF_Entrada_Produtos.Close;
  NF_Entrada_Tabela_Preco.Close;
  NF_Entrada_Vinculos.Close;
  Configuracao_Componente_Produto.Close;
  Despesa_Financeira.Close;
end;

procedure TFrmNF_Entrada.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  try
  if Cadastro.FieldByName('CODIGO').AsString<> '' then
    Cadastro.FieldByName('NUN_NF').Value := Cadastro.FieldByName('CODIGO').AsString.Split(['-'])[0];
  except end;
  EdtCodContaÎContas.Text := TConfig.ReadString('NF_PARCELAS_CONTA_PADRAO');
end;

procedure TFrmNF_Entrada.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFrmNF_Entrada.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFrmNF_Entrada.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited; //OK
  NF_Entrada_Produtos_Afetados.Open;

  GridTree.BeginUpdate;
  NF_Entrada_Produtos.Open;
  GridTree.EndUpdate;

  NF_Entrada_Parcelas.Open;
  NF_Entrada_Tabela_Preco.Open;
  NF_Entrada_Vinculos.Open;
  Configuracao_Componente_Produto.Open;
end;

procedure TFrmNF_Entrada.CalcularImpostos1Click(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  VerificaSePodeAlteraDataSet; //<<<<<<<< primeira linha
  if ShowMessageWR('Este procedimento irá sobrescrever todos os valores informados manualmente. Deseja continuar?', MB_ICONQUESTION) <> mrYes then
    Exit;
  {------------NÃO USAR DISABLECONTROLS!!! Isso faz com que os datasets filhos não atualizem no Calc!!!
  AGRORA PODE POIS NÃO TEM MAIS TBELAS FILHAS}
  NF_Entrada_Produtos.First;
  while not NF_Entrada_Produtos.Eof do
  begin
    if NF_Entrada_Produtos.FieldByName('PODE_RECALCULAR_IMPOSTOS').AsString <> 'S' then
    begin
      NF_Entrada_Produtos.Edit;
      WRCalc.CalcularImpostosProdutoSelecionado;
      NF_Entrada_Produtos.Post;
    end;
    NF_Entrada_Produtos.Next;
  end;

  // TODO: AQUI DEVE TER O BUILD PARA PEGAR OS VALORES NOVOS E APLICAR NO SPREEDSHET
  // NÃO PRECESA RECOPIAR, APENAS ATUALIZAR OS CÁCULOS. TESTAR QUANDO ATIVAR
//  WRCalc.CalcBuild;

  WRCalc.SuperCalc;
end;

procedure TFrmNF_Entrada.FcPrincipalCarregaDataSets(Sender: TObject);
begin
  inherited;
  FcPrincipal.AdicionarDataSet(Cadastro, 'NF_Entrada');
  FcPrincipal.AdicionarDataSet(PmPrincipal.Produto, 'NF_Entrada_Produtos');
  FcPrincipal.AdicionarDataSet(NF_Entrada_Produtos, 'NF_Entrada_Produtos');
  FcPrincipal.AdicionarDataSet(NF_Entrada_Parcelas, 'NF_Entrada_Parcelas');
  FcPrincipal.AdicionarDataSet(NF_Entrada_Produtos_Afetados, 'NF_Entrada_Produtos_Afetados');

  NF_Entrada_ProdutosTotal_Venda.DisplayFormat :=DecimalFinanceiro;

  edtQuant_Compra.Properties.DisplayFormat     := DecimalQuantidade;
  edtValor_Compra.Properties.DisplayFormat     := DecimalFinanceiro;
  edtTotal_Compra.Properties.DisplayFormat     := DecimalFinanceiro;

  // TODO: Verificar os campos novos, EXTRAS, RENDIMENTO, MArkup podem não estar Formatados.
end;

procedure TFrmNF_Entrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Produto_Markup.Close;   // TODO: oNDE USA ISSO SE TEM OUTRA QUERY EM EXECUÇÃO NO CÓDIGO
end;

procedure TFrmNF_Entrada.FormCreate(Sender: TObject);
begin
  GrupoDetalhes.Visible := TConfig.ReadBoolean('NF_ENTRADA_MOSTRAR_DETALHES', Usuario.Codigo);
  PreencheLookupNotaFiscalModelo(cbxModelo_Docto_Fiscal.Properties);
//  PreencheComboBoxUnidade(edtNF_UNIDADE);    campo apagado
  PreencheTiposPagto(cbxTipoPagto.Properties.Items);
  PreencheLookupProduto_Estoque_Local(edtProduto_Estoque_Local.Properties);
  PreencheLookupProduto_Estoque_Local(TcxLookupComboBoxProperties(GridTreeESTOQUE_LOCAL_MOVIMENTO.Properties));    //TODO: Isso Aqui tem que funcionar para poder dizer em qual estoque vai ser dado entrada o produto
  PreencheLookupProduto_Estoque_Local(cbxEstoque_Local_Origem.Properties);
  PreencheLookupProduto_Estoque_Local(cbxEstoque_Local_Destino.Properties);
  PreencheLookupProduto_Tipo(edtCodProduto_Tipo.Properties);
  PreencheLookupModalidadeFrete(cbxNF_FretePorConta.Properties);
//  PreencheLookupUnidade_SubUnidadeCompra(cxDBLookupComboBox1.Properties);
//  PreencheComboBoxUnidade(edtUNIDADE);
//  PreencheLookupUnidade_SubUnidadeCompra(TcxLookupComboBoxProperties(GridTreeSUBUNIDADE.Properties));


  PreencheLookupProduto_Tipo(TcxLookupComboBoxProperties(GridTreeCODPRODUTO_TIPO.Properties));

  ConfigGrid.Atualizar(Self.ClassName);

  // TODO: Reativar essa linha e trocar o nome para o grid venha correto, depois a pessoa muda. IMPORTANTE
  ConfigGrid.CarregaConfigTreeListIni(GridTree, 'TreeListProdutoNOVO2');// TODO: Verificar se isso está fazendo algo estranho, pois ta fora do padrão do sistema. É sempre um mistério como ele guarda no banco ????
  inherited;
  Ocultar(GridConsulta_Produto);

  FControleWR.FindComponente(EdtFornecedorÎPessoas).AddSaida(EdtCondicaoPagtoÎCondicaoPagto, 'CODCONDICAOPAGTO');

  Assert(TabProdutos.ActuallyVisible, 'Atenção! Coloque o GrupoProdutos como o principal');

  PmPrincipal.AbrirVazio;  // essa bosta deveria estar deixando cadastrar novos produtos, lembrando que o shpreeadShet só copia numeros e fórmulas
end;

procedure TFrmNF_Entrada.FormDestroy(Sender: TObject);
begin
  inherited;
  TConfig.SaveBoolean('NF_ENTRADA_MOSTRAR_DETALHES', GrupoDetalhes.Visible, Usuario.Codigo);

  // TODO: Aqui salva quando ativar a linha lá de cima
  ConfigGrid.GravaConfigTreeListIni(GridTree, 'TreeListProdutoNOVO2');
end;

procedure TFrmNF_Entrada.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //Em certos casos a nota não pode ser editada  (faturada, ou com estoque)
  if not (Key in [VK_F2, VK_F3]) then
    inherited;
end;

procedure TFrmNF_Entrada.FormShow(Sender: TObject);
  procedure LAjustaColuna(const AColumn: TcxGridDBColumn; const AVisible: Boolean);
  begin
    AColumn.VisibleForCustomization := AVisible;
    AColumn.Visible := AColumn.Visible and AVisible;
  end;
begin
  inherited;
  GrupoCadImpressao.Visible  := True; //<-- Tem sempre que ser visível pois tem um Menu com impressão fixas desta tela em QuickReport
  liedtValor_NF_Varejo.Visible   := GetPodeVerCustos;
  PnlCabecalhoProduto.Height := LiGrupoProduto.OccupiedClientHeight;
  Produto_Markup.Close;
  Produto_Markup.Open;
  LiedtMarkup.Visible              := AWR_APP[TagAPP_Markup].Ativo;    //TConfig.ReadBoolean('MARKUP');
  LibtnMarkup.Visible              := AWR_APP[TagAPP_Markup].Ativo;    //TConfig.ReadBoolean('MARKUP');
  GridTreeCALC_PMARKUP.Visible     := AWR_APP[TagAPP_Markup].Ativo;    //TConfig.ReadBoolean('MARKUP');     // TODO: Ver se Precisa de colocar o Permitir Customizar no grid
  btnImportarNFe.Visible           := AWR_APP[TagAPP_Importacao_Xml].Ativo;
  AutopreencherCddeBarras1.Visible := AWR_APP[TagAPP_Codigo_Barras].Ativo;
  EnviarparaCdigodeBarras1.Visible := AWR_APP[TagAPP_Codigo_Barras].Ativo;

  LiedtQuant_Rendimento.Visible    := TConfig.ReadBoolean('NF_ENTRADA_RENDIMENTO');
  GridTreeRENDIMENTO.Visible       := TConfig.ReadBoolean('NF_ENTRADA_RENDIMENTO');
  LibtnRendimento.Visible          := TConfig.ReadBoolean('NF_ENTRADA_RENDIMENTO');
  LibtnCustoMedio.Visible          := TConfig.ReadBoolean('NF_ENTRADA_RENDIMENTO');

// TODO: Permissões ainda não estou olhando, pois quero o mínimo possível, faturar, Conferir Estoque, Custos, Pode ver a Formação de preço
//  LAjustaColuna(cxGrid1DBTableView1VALOR, GetPodeVerCustos);
//  LAjustaColuna(cxGrid1DBTableView1Total_Venda, GetPodeVerCustos);
end;

procedure TFrmNF_Entrada.btnRemoverProdutoClick(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if NF_Entrada_Produtos.IsEmpty then    // OK, só vai mudar se a compra aceitar filhos, produtos compostos
    Exit;
  VerificaSePodeAlteraDataSet(Cadastro);
  NF_Entrada_Produtos.Delete;  // Como aqui não tem filhos, pode delar a tabela direto, não tem mais tabelas filhas então tudo certo
  WRCalc.SuperCalc;
end;

procedure TFrmNF_Entrada.btnRemoverVinculoClick(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  inherited;
  if Cadastro.FieldByName('TIPO').AsString = 'CONHECIMENTO DE TRANSPORTE' then
  begin
    ShowMessage('Acesse a nota original para remover o vínculo.');
    Exit;
  end;

  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'DELETE FROM NF_ENTRADA_VINCULOS WHERE CODIGO = :CODVINCULO';
    QuerX.ParamByName('CODVINCULO').Value := NF_Entrada_Vinculos.FieldByName('CodVinculo').Value;
    QuerX.ExecSQL;

    CloseOpenGridView(NF_Entrada_Vinculos, GridVinculosView);

    if Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
      CalculaCustosVinculados;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNF_Entrada.btnRendimentoClick(Sender: TObject);   //OK
begin
  inherited;
  MostraColunaSpreadSheet(sprMotorCalculo, 'O1','W1' );
end;

procedure TFrmNF_Entrada.btnRequisicaoClick(Sender: TObject);
begin
  inherited;
  BtnAlterar.Click;
//  if not MatchStr(Cadastro.FieldByName('TIPO').AsString, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA']) then
//    TFrame_Requisicao_Pocket.SolicitaRequisicao(NF_Entrada_Produtos, 'E')
//  else
//    TFrame_Requisicao_Pocket.SolicitaRequisicao(NF_Entrada_Produtos, 'S');

  try
//    if not MatchStr(Cadastro.FieldByName('TIPO').AsString, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA']) then
//      Routes.Requisicao.Compra.SolicitaRequisicaoPelaCompra(Cadastro.Transaction, NF_Entrada_Produtos, 'E')
//    else
//      Routes.Requisicao.Compra.SolicitaRequisicaoPelaCompra(Cadastro.Transaction, NF_Entrada_Produtos, 'S');
    if Routes.Requisicao.Compra.SolicitaRequisicaoPelaCompra(TransaFD, Cadastro, NF_Entrada_Produtos, Cadastro.FieldByName('TIPO').AsString)
    then
      BtnConfirmar.Click;
  except
    on E:EWRException do
    begin
      ShowMessage(E.Message);
      BtnCancelar.Click;
    end;
  end;
end;

procedure TFrmNF_Entrada.NF_Entrada_ParcelasCalcFields(DataSet: TDataSet);
begin
  inherited;       // OK, nem vou alterar o total direto no campo kkk deixa assim
  NF_Entrada_ParcelasTotal.AsCurrency := NF_Entrada_Parcelas.FieldByName('Valor').AsCurrency
                                       + NF_Entrada_Parcelas.FieldByName('Juros').AsCurrency
                                       - NF_Entrada_Parcelas.FieldByName('Desconto').AsCurrency;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosAfterInsert(DataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
  inherited;    // OK, da para melhorar..
  NF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsString  := Cadastro.FieldByName('CODIGO').AsString; // no firedac ele ja faz isso,
  QuerX := SQLNF_Entrada_ProdutosMaxCodigo(Cadastro);    // Essa função ja poderia retornar o código +1, para não precisar criar a query
  try
    NF_Entrada_Produtos.FieldByName('CODIGO').AsInteger      := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosAfterOpen(DataSet: TDataSet);
begin
  inherited;  //OK
  WRCalc.CalcBuild;  // Isso é ótimo, pesa um pouco na abertura mais garante todos os cáculos, sem isso da uma dor de cabeça. Abriu Calcula SEMPRE;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosBeforeClose(DataSet: TDataSet);
begin
  inherited; //OK
  WRCalc.SprFechaMemTables;    // Cara IMPORTENTE, fechou fecha os clones, da muita merda se deixar eles abertos apontando para os endereços de memoria nulos.
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosBeforeDelete(DataSet: TDataSet);
begin
  inherited;  // TODO: Felipe Olhar, não sei se pode dar problema
  DSExcluirRecursivoInformandoCampos(NF_Entrada_Produtos_Afetados, 'CODIGO', 'PARENT');  // Verificar TESTAR, com composição
  DSExcluirRecursivoInformandoCampos(NF_Entrada_Tabela_Preco, 'CODPRODUTO_TABELA', 'PARENT');  // Acho que isso não precisa, mais vou deixar para o FELIPE revisar isso aqui
end;                                                                                           // Como não tem filho, pode apenas excluir

procedure TFrmNF_Entrada.NF_Entrada_ProdutosBeforePost(DataSet: TDataSet); // OK, Passou
var
  AProduto_Tipo: TDataSet;
begin
  AtualizaDtAlteracao(NF_Entrada_Produtos);    // Isso não pode, não lembro porque então ainda fica, mais tabela filha não quero isso

  //Se alterar o CODPRODUTO_TIPO, temos que atualizar a descrição dele
  if not VarSameValueWR(NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').OldValue,
                        NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').Value) then
  begin
    //Aqui usamos o dataset do próprio lookup, pois este já está na memória
    AProduto_Tipo := (GridTreeCODPRODUTO_TIPO.Properties as TcxLookupComboBoxProperties).ListSource.DataSet;

    //A pessoa pode ter informado um tipo inválido ou simplesmente remover o tipo. Se não encontrar, apaga a descrição
    if AProduto_Tipo.Locate('CODIGO', NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').Value, []) then
      NF_Entrada_Produtos.FieldByName('PRODUTO_TIPO').Value := AProduto_Tipo.FieldByName('DESCRICAO').Value
    else
      NF_Entrada_Produtos.FieldByName('PRODUTO_TIPO').Clear;
  end;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosCalcFields(DataSet: TDataSet);
begin
  inherited; //OK,  Aqui deveria ser o Total, mais ele inda não foi criado no cadastro
  // Usar no relatório do QuickReport  Total_Venda
  NF_Entrada_Produtos.FieldByName('Total_Venda').AsFloat := NF_Entrada_Produtos.FieldByName('VALOR').AsFloat * NF_Entrada_Produtos.FieldByName('QUANT').AsFloat;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosQTDADEPECA_RENDIMENTOChange(
  Sender: TField);
begin
  inherited;
//  NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat := NF_Entrada_Produtos.FieldByName('QTDADEPECA_RENDIMENTO').AsFloat;
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosQTDADEPECA_SUBUNIDADEChange(
  Sender: TField);
begin
  inherited;
  NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat := NF_Entrada_Produtos.FieldByName('QTDADEPECA_SUBUNIDADE').AsFloat;
end;

procedure TFrmNF_Entrada.NF_Entrada_Produtos_AfetadosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //com o sistema de controle,
end;

procedure TFrmNF_Entrada.RgTipoTransferenciaPropertiesChange(Sender: TObject);
begin
  inherited;    //OK, Testar Transferência, o plinio usa
  GrupoTransferenciaEntreEmpresas.Visible := (rdgTransferenciaTipo.ItemIndex = 1);
  GrupoTransferenciaEntreEstoques.Visible := (rdgTransferenciaTipo.ItemIndex = 0);
end;

procedure TFrmNF_Entrada.sprMotorCalculoEditValueChanged(Sender: TdxSpreadSheetCustomView);
begin
  inherited;
  AlteraDataSet(WRCalc.DBProduto);
  WRCalc.SprCopiarFormula;         // OK, essa função sem da certo, simples e funciona
end;

procedure TFrmNF_Entrada.NF_Entrada_ProdutosBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);    // OK, Trata as permissões
end;

procedure TFrmNF_Entrada.Abrircadastrodoproduto1Click(Sender: TObject);
begin
  inherited;
//  CadastroModalChave(TFrmProduto, NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString);  // OK, liberada
  TFrmProduto.Create(self).ShowCadastroItem(Tag_Produto_ProdutoSimples, NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString);
end;

procedure TFrmNF_Entrada.ConsultaSEFAZ1Click(Sender: TObject);
begin
  inherited;
//  ConsultaMidChildFiltro(TConsuNota_Fiscal_Entrada,'');   // OK, Pode melhorar integrando na própria consulta, mais ja ficou mais fácil apenas colocando o acesso direto pela consulta
  TFrmNotaFiscalEntrada.Create(Self).ShowConsultaItem(Tag_Manifestacao_NotaFiscalEntrada);
end;

procedure TFrmNF_Entrada.ConsultaXMLTerceiros1Click(Sender: TObject);
Var
  ACodigo, ANFChave: string;
begin
  inherited;
  if ShowMessageWR('Deseja fazer o download do arquivo XML?', MB_ICONQUESTION) = mrYes then
  begin
    if not InputQuery('Chave para download', 'Chave', ANFChave) then
      Exit;
    TFrmNFe.BaixarXMLdaNFe(ANFChave, True, False, ACodigo);  // TESTAR vou pedir para rafaela , pegar o feedback dela para saber se esta usável, Esta no modo sem silencio, Mostra onde baixou o XML

  end;
end;

procedure TFrmNF_Entrada.btnAdicionarVinculoClick(Sender: TObject);
var
  QuerX : TFDQuery;
  ACodPessoa : String;
begin
  inherited;

  if (edtCodigoÎNF_Entrada.Text = '') or (cbTipoVinculo.EditValue = '') then
  begin
    ShowMessageWR('Necessário preencher todos os campos.');
    edtCodigoÎNF_Entrada.SetFocusWR;
    Exit;
  end;
  if Cadastro.FieldByName('TIPO').AsString = 'CONHECIMENTO DE TRANSPORTE' then
  begin
    ShowMessage('Acesse a nota original para realizar o vínculo.');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;

  QuerX := GeraFDQuery(TransaFD);
  try

    QuerX.SQL.Text := 'SELECT * FROM NF_ENTRADA_VINCULOS';
    QuerX.Open;

//    QuerX.DisableControls;

    QuerX.Insert;
    QuerX.FieldByName('CODIGO').Value := GetProximoCodigoGen('CR_NF_ENTRADA_VINCULOS');

    QuerX.FieldByName('CODNF_ENTRADA_PRINCIPAL').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.FieldByName('CODNF_ENTRADA_VINCULADA').AsString := edtCodigoÎNF_Entrada.EditValue;
    QuerX.FieldByName('TIPO_VINCULO').AsString := 'TRANSPORTE';
    QuerX.FieldByName('PORCENTAGEM_RATEIO').AsFloat := 100;
    QuerX.Post;

    CloseOpenGridView(NF_Entrada_Vinculos, GridVinculosView);
    if Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
      CalculaCustosVinculados;
  finally
//    Centro_Trabalho_Recurso.EnableControls;
    QuerX.Free;
  end;
  edtCodigoÎNF_Entrada.Clear;
  edtCodigoÎNF_Entrada.SetFocusWR;
end;

procedure TFrmNF_Entrada.CalculaCustosVinculados;
var
  QuerX : TFDQuery;
  APercRateio: Double;
  I: Integer;
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  APercRateio := 0;

  NF_Entrada_Vinculos.First;
  while not NF_Entrada_Vinculos.eof do
  begin
    APercRateio := APercRateio + NF_Entrada_Vinculos.FieldByName('PORCENTAGEM_RATEIO').AsFloat;
    NF_Entrada_Vinculos.Next;
  end;

  if  NF_Entrada_Vinculos.RecordCount > 0 then
    APercRateio := APercRateio / NF_Entrada_Vinculos.RecordCount
  else
    APercRateio := 0;

  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'SELECT SUM(NFE.TOTAL) as TOTAL FROM NF_ENTRADA_VINCULOS NFV ' +
                      'LEFT JOIN NF_ENTRADA NFE on NFE.CODIGO = NFV.codnf_entrada_vinculada ' +
                      'WHERE NFV.codnf_entrada_principal = :CodNF_Entrada' ;
    QuerX.ParamByName('CodNF_Entrada').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;

    WrCalc.RatearFreteTransporteCTeNaCompra(QuerX.FieldByName('TOTAL').AsFloat * APercRateio/100);
//    btnConfirmar.Click;  não pode ter commit aqui
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNF_Entrada.BuscaNotaBanco(ACodigo :Integer);
var
  QuerX :TFDQuery;
  AACBrNFe: TACBrNFe;
begin
  QuerX := GeraFDQuery;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    QuerX.SQL.Text := 'select ARQUIVO_XML ' +
                      'from NOTA_FISCAL_ENTRADA ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].Value := Codigo;
    QuerX.Open;
    AACBrNFe.NotasFiscais.LoadFromString(QuerX.Fields[0].AsString);
    DM_NFEntradaImportarNota(AACBrNFe, ACodigo);     //GridConsultaDBTableView1CODNOTA_COMPLETA
  finally
    AACBrNFe.Free;
    QuerX.Free;
  end;
end;

procedure TFrmNF_Entrada.btnTabela_PrecoClick(Sender: TObject);    // OK, que satisfação em ler o código
begin
  inherited;       //  Verificar se fica em edição
  TFrmFrameTabelaPreco.CarregaFrame(FFrameTabelaPreco, PnlTabelaPreco, PmPrincipal.DSProduto, PmPrincipal.DSTabelaPreco);
  VerificaSePrecisaAbrir(PmPrincipal.TabelaPreco);
  ShowPanelForm(PnlTabelaPreco, bsSingle, PnlTabelaPreco);
end;

procedure TFrmNF_Entrada.btnParcelaCancelarClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(pnl_Parcela);
  if Nf_Entrada_Parcelas.State = dsEdit then
    NF_Entrada_Parcelas.Cancel;
end;

procedure TFrmNF_Entrada.btnParcelaConfirmarClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(pnl_parcela);
  if Nf_Entrada_Parcelas.State = dsEdit then
    NF_Entrada_Parcelas.Post;
  CloseOpenBookmark(NF_Entrada_Parcelas);
end;

procedure TFrmNF_Entrada.btnPesoClick(Sender: TObject);
begin
  inherited; // OK, Desolcultar Peso
  MostraColunaSpreadSheet(sprMotorCalculo, 'BB1','BH1' );
end;

procedure TFrmNF_Entrada.dbtxtCodigoPropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoFinanceiro.Enabled:= Not(Cadastro.FieldByName('Codigo').AsString = '' );
end;

procedure TFrmNF_Entrada.PopGridPraticoPopup(Sender: TObject);
begin
  inherited;
  Abrircadastrodoproduto1.Enabled  := not NF_Entrada_Produtos.IsEmpty and (NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString <> '');
  ActDesvincularProduto.Enabled    := not NF_Entrada_Produtos.IsEmpty and (NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString <> '');
  ActBuscarCadastroProduto.Enabled := not NF_Entrada_Produtos.IsEmpty;
end;

procedure TFrmNF_Entrada.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  EnviarparaCdigodeBarras1.Enabled:= (ds.DataSet.State = DsBrowse);
  AutopreencherCddeBarras1.Enabled:= (ds.DataSet.State = DsBrowse);

end;

procedure TFrmNF_Entrada.MenuPlanodeContasPopup(Sender: TObject);
begin
  inherited;
  ReplicarPlanodeContas1.Enabled:= DSNF_Entrada_Parcelas.AutoEdit;
  Apagarparcelas1.Enabled       := DSNF_Entrada_Parcelas.AutoEdit;
end;

procedure TFrmNF_Entrada.Motordeclculodoitem1Click(Sender: TObject);
begin
  TFrmExcel.Abrir(WRCalc, 'CalcCompra');
end;

procedure TFrmNF_Entrada.btnMarkupClick(Sender: TObject);
begin
  inherited;  //OK, Desolcultar Makup
  MostraColunaSpreadSheet(sprMotorCalculo, 'AF1','AU1' );
end;

procedure TFrmNF_Entrada.btnMateriaisConferidosClick(Sender: TObject);
begin
  inherited;
  ConferenciaMateriais;
end;


function TFrmNF_Entrada.ConferenciaMateriais:boolean;
var
  ACodUsuarioAutorizou: Integer;
begin
//  if TFormConferencia_Compra.Abrir(self,Cadastro.FieldByName('CODIGO').AsString, ACodUsuarioAutorizou) then
//  begin
    VerificaSePodeAlteraDataSet(Cadastro);
    Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString := 'S';  // Isso é Igual a uma assinatura digital, Isso vende sistema
    if EdtUsuarioEstoqueÎUsuario.Text = '' then                // Importante
      Cadastro.FieldByName('CODUSUARIO_ESTOQUE').AsInteger := Usuario.Codigo;
//    result := true;
//  end;
//  result := false;
end;

procedure TFrmNF_Entrada.btnMostrarSprClick(Sender: TObject);
begin
  inherited;
  SprMemoria.Visible := not SprMemoria.Visible;
  if SprMemoria.Visible then
    MostrarGridAbaixoDe(SprMemoria, edtCodProduto);
end;

procedure TFrmNF_Entrada.btnCancelarClick(Sender: TObject);
begin
//  if NF_Entrada_Produtos.State in [dsEdit, dsInsert] then
//    NF_Entrada_Produtos.Cancel;
//  if NF_Entrada_Parcelas.State in [dsEdit, dsInsert] then
//   NF_Entrada_Parcelas.Cancel;
  inherited;
end;

procedure TFrmNF_Entrada.btnCancelarConferenciaClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
  Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString := 'N';
  if EdtUsuarioEstoqueÎUsuario.Text <> '' then
    Cadastro.FieldByName('CODUSUARIO_ESTOQUE').Clear;
end;

procedure TFrmNF_Entrada.EdtDtFaturamentoPropertiesChange(Sender: TObject);
begin
  inherited;
  DS.AutoEdit                              := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  DSProdutos.AutoEdit                      := DS.AutoEdit;
  DSNF_Entrada_Parcelas.AutoEdit           := DS.AutoEdit;
  FControleWR.FindComponente(EdtFornecedorÎPessoas).PodeEditar := DS.AutoEdit;    // Isso tem que ser nativo do componente

  liBtnFinalizarCompra.Visible      := DS.AutoEdit;
  liBtnCancelarFinalizacao.Visible  := not libtnFinalizarCompra.Visible;
end;

procedure TFrmNF_Entrada.DSStateChange(Sender: TObject);
begin
  inherited;
  btnImprimir.Enabled             := ds.DataSet.State = DsBrowse;
//  btnMenu.Enabled                 := ds.DataSet.State = DsBrowse;

  btnImportarNFe.Enabled          := ds.DataSet.State = DsBrowse;
  btnFinalizarCompra.Enabled      := ds.DataSet.State = DsBrowse;
end;

procedure TFrmNF_Entrada.btnFinalizarCompraClick(Sender: TObject);
var
  AFrmAguarde: TFrmAguarde;
begin
  inherited;  //Falta Avaliar sobre os tipos: Conhecimento de Transporte / Nota de Serviço de Transporte
              // Os Tipos: Solicitação de Compra / Cotação de Compra foram travados desde o UPDATE CHANGE;
              // Os ShowMessages de Cada função foram deixados temporariamente para debug(saber se ja chegou no estagio X)
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'PARCELAS');
  if ShowMessageWR('Deseja finalizar a operação desta ' + Cadastro.FieldByName('TIPO').AsString + '?', MB_ICONQUESTION) <> mrYes then
    Exit;

  AFrmAguarde := TFrmAguarde.Create(self);
  try
    AFrmAguarde.Mensagem := 'Aguarde. Finalizando Compra.';
    AFrmAguarde.Show;
    Application.ProcessMessages;
    try
      Controller_FinalizarCompra(Cadastro.FieldByName('CODIGO').AsString, WRCalc);
      CloseOpen_AbrirRegistro(Cadastro.FieldByName('Codigo').Value);
    except
      on E:Exception do
      begin
        if Pos(E.Message, 'Não há itens para serem enviados') > 0 then
        begin
          TabProdutos.MakeVisible;
          edtCodProduto.SetFocusWR;
        end;
        if Pos(E.Message, 'Você ainda não gerou as parcelas') > 0 then
        begin
          GrupoFinanceiro.MakeVisible;
          EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
        end;
        if Pos(E.Message, 'Valor da nota fiscal é "Superior"') > 0 then
        begin
          GrupoFinanceiro.MakeVisible;
          EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
        end;
        if Pos(E.Message, 'Valor da nota fiscal é "Inferior"') > 0 then
        begin
          GrupoFinanceiro.MakeVisible;
          EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
        end;
//        ShowMessage(E.Message);
        raise;    // Exception.Create(E.Message)
      end;
    end;
  finally
    AFrmAguarde.Free;
  end;
  {$REGION 'Código antigo'}
//  Routes.Compra.FinalizarCompra;

//  if (Cadastro.FieldByName('ENVIA_FINANCEIRO').AsString = 'S') and (NF_Entrada_Parcelas.RecordCount = 0) then
//  begin
//    GrupoFinanceiro.MakeVisible;
//    EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
//    GeraExcecao('Você ainda não gerou as parcelas. Selecione a Condição de Pagamento correta e clique em "Gerar Parcelas".');
//  end;
//  if (Cadastro.FieldByName('ENVIA_ESTOQUE').AsString = 'S') and (NF_Entrada_Produtos.RecordCount = 0) then
//  begin
//    TabProdutos.MakeVisible;
//    edtCodProduto.SetFocusWR;
//    GeraExcecao('Não há itens para serem enviados ao estoque".');
//  end;
//
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'PARCELAS');
//  // Valida o somatório tambem da nota
//  {Leandro: Coloquei a chamada para a validação dos grupos Geral, Produtos e Parcelas. Agora para funcionar
//   corretamente, devem ser adicionadas as validações nestes grupos e também verificar se outros grupos também devem
//   ser validados. A validação foi chamada de forma Restritiva, ou seja, gera um Abort caso algum problema for detectado}
//
//
//  if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
//  begin
//    if ShowMessageWR('Deseja finalizar a operação desta ' + Cadastro.FieldByName('TIPO').AsString + '?', MB_ICONQUESTION) <> mrYes then
//      Exit;
//  end else
//    if ShowMessageWR('Deseja CANCELAR finalizar a operação desta ' + Cadastro.FieldByName('TIPO').AsString + '?', MB_ICONQUESTION) <> mrYes then
//      Exit;
//
////  if Cadastro.FieldByName('CODUSUARIO_ESTOQUE').IsNull then
////  begin
////    if not ConferenciaMateriais then
////    begin
////      showmessage('A conferencia de compra não foi autorizada, não é possivel atualizar');
////      Exit;
////    end;
////  end;
//
//  // DEPOIS DESSA LINHA, OU FINALIZA TUDO CERTO OU O SISTEMA FECHA COM ERRO INFORMANDO QUE O PROGRAMADOR ESQUECEU DE REVISAR A TELA,
//  // COLOCANDO AS MENSSAGENS DE ERRO JA PARA O ÚSUÁRIO SABER O QUE TEM QUE SER FEITO ANTES DE APERTAR ESSE BOTÃO
//  // NÃO DEIXEI O ERRO ACONTECER, FAÇA A TELA INFORMAR ANTECIPADAMENTE O ERRO, SE A PESSOA NÃO CUMPRIU OS PASSOS OBRIGATÓRIOS PARA APERTAR ESSE BOTÃO
//  // O BOTÃO NÃO DEVERIA ESTAR NEM DISPONÍVEL, SIMPLES ASSIM, RESOLVA OS PROBLEMAS ANTES AQUI É CRÍTICO
//  try
//    Cadastro.Edit;
//    DoAtualizaFinanceiro;
//
//      if (Cadastro.FieldByName('DT_FATURAMENTO').IsNull) and (Cadastro.FieldByName('ENVIA_ESTOQUE').AsString = 'S')  then
//        DM_ProdutoCriaOuAtualizaCadastro(TransaFD, WRCalc, NF_Entrada_Tabela_Preco);
//      DoAtualizaEstoque;
//
//    if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
//      Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime := DataHoraSys
//    else
//      Cadastro.FieldByName('DT_FATURAMENTO').Clear;
//    Cadastro.FieldByName('CODUSUARIO').AsInteger := CodigoUsuario;      //<<<<<<<< isso marca o último responsável
//
//    Routes.Requisicao.Compra.SolicitaRequisicaoPelaCompra(TransaFD, Cadastro, NF_Entrada_Produtos, Cadastro.FieldByName('TIPO').AsString);
//
//    // TODO: aqui em que ter o calc vai dar ruim
//    Cadastro.Post;
//    TransaFD.Commit;
//  except
//    RollbackTransacao(TransaFD);
//    raise;
//  end;
{$ENDREGION}
end;

procedure TFrmNF_Entrada.btnCancelarFinalizacaoClick(Sender: TObject);
var
  AFrmAguarde: TFrmAguarde;
begin
  inherited;
  if ShowMessageWR('Deseja CANCELAR finalizar a operação desta ' + Cadastro.FieldByName('TIPO').AsString + '?', MB_ICONQUESTION) <> mrYes then
    Exit;

  AFrmAguarde := TFrmAguarde.Create(self);
  try
    AFrmAguarde.Mensagem := 'Aguarde. Cancelando Finalização da Compra.';
    AFrmAguarde.Show;
    Application.ProcessMessages;
    try
      Controller_CancelarFinalizacaoCompra(Cadastro.FieldByName('CODIGO').AsString);
      CloseOpen_AbrirRegistro(Cadastro.FieldByName('Codigo').Value);
    except
      on E:Exception do
      begin
        ShowMessage(E.Message);
      end;
    end;
  finally
    AFrmAguarde.Free;
  end;
end;

procedure TFrmNF_Entrada.Incluirprodutoscomestoqueabaixodomnimo1Click(Sender: TObject);  // TODO: Testar, parece estar funcionando
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := SQLProdutosEstoqueBaixo(Empresa.FieldByName('CODIGO').AsInteger, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
  try
    if QuerX.IsEmpty then
    begin
      ShowMessageWR('Nenhum produto com estoque baixo foi encontrado.');
      Exit;
    end;

    if ShowMessageWR('Deseja adicionar os produtos, Para esse Fornecedor?', MB_ICONQUESTION) <> mrYes then
      Exit;

    if Cadastro.State in dsEditModes then
      btnAlterar.Click;
//    btnNovoClick(nil);
    QuerX.FetchAll;
    AguardeBegin;
    try
      AguardeHabilitaCancelar;
      AguardeProgressoMaximo(QuerX.RecordCount);
      AguardeMensagem('Aguarde enquanto os produtos são adicionados...');
      while not QuerX.Eof do
      begin
        EdtCodProduto.Text := QuerX.FieldByName('CODIGO').AsString;
        PmPrincipal.Produto.Edit;
        WRCalcMemoria.ValidaCampoMedidas('QUANT_COMPRA', QuerX.FieldByName('ESTOQUE_MAX').AsFloat - QuerX.FieldByName('ESTOQUE').AsFloat);
        btnAdicionarProdutoClick(nil);

        if AguardeCancelado then
          Exit;

        AguardeAvancarProgresso;
        QuerX.Next;
      end;
    finally
      AguardeEnd;
    end;
    ShowMessageWR('Produtos com estoque baixo adicionados com sucesso.');
  finally
    QuerX.Free;
  end;
end;
         (*
procedure TFrmNF_Entrada.TesteBadges;
var
  I, J: Integer;
  ARule: TdxSpreadSheetCustomConditionalFormattingRule;
  AExpressao: TdxSpreadSheetConditionalFormattingRuleExpression;
  ACellStyles: TdxSpreadSheetCellStyles;
begin
  GridTree.ConditionalFormatting.ShowRulesManagerDialog;
//  ConfigGrid.GravaConditionalFormatting(GridTree.ConditionalFormatting);
//  TFrmInspetorDeObjetos.Inspecionar(GridTree);
//  GridTree.ConditionalFormatting.aparen
  bdgValidacao.Text:= IntToStr(GridTree.ConditionalFormatting.RuleCount);
  for i := 0 to GridTree.AbsoluteVisibleCount - 1 do
  begin
    GridTree.AbsoluteVisibleItems[i];
  end;
  ACellStyles := GridTree.ConditionalFormatting.CellStyles;
  for i := 0 to ACellStyles.Count - 1 do
  begin
   // Tem que fazer uma ponte para usar
   // TdxSpreadSheetCustomBrush
//   ACellStyles.Brushes.BackgroundColor;
//   EdtProduto.Styles.:=
  end;

  for i := 0 to GridTree.ConditionalFormatting.RuleCount - 1 do
  begin
    ARule := GridTree.ConditionalFormatting.Rules[i];
    GridTree.ConditionalFormatting.ReferencesToString(ARule.Areas);
//    ARule.
//    AExpressao.
//    ARule.  TdxSpreadSheetConditionalFormattingRuleExpression
//    ARule.
  end;
end;      *)

procedure TFrmNF_Entrada.ValidarCadastro1Click(Sender: TObject);
begin
  inherited;
//  TesteBadges;   /// TODO: Testar isso com o Botão direito no grid, Validar regras.
end;

procedure TFrmNF_Entrada.VerificarprodutosAfetados1Click(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if Not Assigned(FFrmProduto_Frame) then
    FFrmProduto_Frame:= TFrame_Produto_Mestre.Create(Self);//(wrFormsRetornaCadastro(TConsuProduto, TFrmProduto));

 // Aqui deve pesquisar os produtos afetados? acho que simmmmm
  ProdutosProdutoAfetadosIniciar(NF_Entrada_Produtos_Afetados, TransaFD ,NF_Entrada_Produtos.FieldByName('CodProduto').AsString, false, FFrmProduto_Frame);
end;

procedure TFrmNF_Entrada.edtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Codigo_Limpo: TCodBarras;
  AButtonEdit: TcxCustomButtonEdit;
begin
  inherited;
  if Sender <> nil then                            // criar um botão na tela com mais detaque, e colocar o desvincular no user control
    AButtonEdit := TcxButtonEdit(Sender)           // DEVE CRIAR BOTÃO GRANDE, Vínculo com Produto
  else
    AButtonEdit := EdtCodProduto;

  if VK_F3 = Key then
  begin
//  edtCodProduto.Text  := CadastroModalChave(TFrmProduto, VarArrayOF([edtCodProduto.Text]));
    with TFrmProduto_Modal.Create(Self) do
      edtCodProduto.Text:= ShowCadastroModalItem(Tag_Produto_ProdutoSimples,edtCodProduto.Text); //ACodProduto:=ConsultaModalFiltro(TConsuProduto,'');
  end;


  if Key = VK_RETURN then
  begin
     if (AButtonEdit.Text = '') then
      AButtonEdit.SetFocusWR;
    Codigo_Limpo := Barras_Trata(AButtonEdit.Text);       // isso aqui da para fazer as telas mini da versão 2017 ficaria show de bola
    Consulta_Produto.Close;
    Consulta_Produto.SQL.Text := 'select P.*, E.CODEMPRESA, E.ESTOQUE as ESTOQUE_P, E.CODPRODUTO ' +
                                 'from PRODUTO P ' +
                                 'left join PRODUTO_ESTOQUE E on (P.CODIGO = E.CODPRODUTO) and (E.CODEMPRESA = :Emp) ' +
                                 'where ((P.CODIGO = :CodProduto) or (P.CODFABRICA = :CodFabrica) or (P.DESCRICAO like :Desc)) ' +
                                 '      and (P.ATIVO = ''S'')and (P.PODE_SER_COMPRADO = ''S'') ' +
//isso não pode porque tem que transferir o produto    '      and (P.TEM_COMPOSICAO is distinct from ''S'') ' +
                                 'order by P.DESCRICAO';
    Consulta_Produto.ParamByName('Emp').AsString        := Empresa.FieldByName('CODIGO').AsString;
    Consulta_Produto.ParamByName('CodProduto').AsString := Codigo_Limpo.Codigo;
    Consulta_Produto.ParamByName('CodFabrica').AsString := Codigo_Limpo.Codigo;
    Consulta_Produto.ParamByName('Desc').AsString       := '%' + Codigo_Limpo.Codigo + '%';
    Consulta_Produto.Open;
    Consulta_Produto.FetchAll;
    if Consulta_Produto.RecordCount > 1 then
      MostrarGridAbaixoDe(GridConsulta_Produto, EdtCodFabrica)
    else if Consulta_Produto.RecordCount = 1 then
    begin
      AButtonEdit.Text := Consulta_Produto.FieldByName('CODIGO').AsString;
      if Length(Codigo_Limpo.Codigo) = 13 then
        btnAdicionarProduto.Click
      else
        edtQuant_Compra.SetFocusWR;
    end;
  end;
end;

procedure TFrmNF_Entrada.edtCodProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
// AQUI SÓ PODE CHAMAR OS PRODUTOS, QUE PODEM SER COMPRADOS, Transferencia de mercadoria vai dar muito ruim
//   ConsultaMidChildFrameModal(TConsuProduto_Modal );    // '(P.PODE_SER_COMPRADO = ''S'')' TODO: DEVE COLOCAR NA CONSULTA QUE TEM UM FILTRO PADRÃO, ASSIM O SUPORTE NÃO FICA PERDIDO PORQUE O PRODUTO NÃO APARECE

  if Not Assigned(FConsultaProduto) then
    FConsultaProduto := TFrmProduto_Compra_Modal.Create(Self{TForm(Owner)});

  FConsultaProduto.ShowConsultaItem(Tag_Produto_Compra);
  AguardaFormFechar(FConsultaProduto);


   if (Codigo <> '')and(Codigo <> '0') then
     edtCodProduto.Text  := Codigo;
end;

procedure TFrmNF_Entrada.EdtCodProdutoÎProdutoPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  WRCalcMemoria.SprFechaMemTables;
  // Colocar o campo se esta ativo, ja resolve , mostar o campo caso estaja ativo = N e envermelhar
  PmPrincipal.ProcuraProduto(EdtCodProduto.Text, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);

 // Se tem código doproduto , mais não achou nada é porque quer cadastrar o novo código, entaaõ habilitar essa regra
//    Regra_ValorInicial(PmPrincipal.Produto, Configuracao_Componente_Produto, 'PRODUTO');

  LibtnTabela_Preco.Enabled:= not PmPrincipal.Produto.IsEmpty;
  if not PmPrincipal.Produto.IsEmpty then
  begin
    if PmPrincipal.Produto.FieldByName('PODE_SER_COMPRADO').AsString = 'N' then    // TODO: Essa tele faz transferencia, daí como faz, se não pode colocar isso
    begin
      ShowMessageWR('Este produto não pode ser comprado.');
      EdtCodProduto.SetFocus;
      PmPrincipal.Fechar;
      Exit;
    end;


    WRCalcMemoria.CalcBuild;   //SPRITESHEET
    // Precisa disso para fazer a média ponderada do custo médio
    //// TODO: Importante, esse código aqui ta estranho , o que essa merda faz???

//    Regra_ValorInicial(WRCalcMemoria.DBProduto, Configuracao_Componente_Produto, 'PRODUTO' );  // , 'PADRAO'
    edtQuant_Compra.Properties.ReadOnly := (edtCodProduto_Tipo.Text = 'MOTO');

    PmPrincipal.Produto.Edit;
    PmPrincipal.Produto.Edit;
    PmPrincipal.Produto.FieldByName('CALC_VALOR_ORIGINAL').Value  := PmPrincipal.Produto.FieldByName('VALOR').Value;

    if PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').IsNull then
      PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString := PmPrincipal.Produto.FieldByName('UNIDADE').AsString;

    if PmPrincipal.Produto.FieldByName('UN_SUBUNIDADE').IsNull then
      PmPrincipal.Produto.FieldByName('UN_SUBUNIDADE').AsString := PmPrincipal.Produto.FieldByName('UNIDADE').AsString;

    CalculaRendimento(PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString, PmPrincipal.Produto.FieldByName('CODIGO').AsString, TDataSet(PmPrincipal.Produto));
//    if PmPrincipal.Produto.FieldByName('NF_UNIDADE').AsString = '' then
//      PmPrincipal.Produto.FieldByName('NF_UNIDADE').AsString >:=PmPrincipal.Produto.FieldByName('UNIDADE').AsString;

    // Aqui tem que fazer o IPI de compra, rateio pela quantidade rendimento
    // Trazer a Unidade de Compra
    PmPrincipal.Produto.FieldByName('VALOR_COMPRA').Value  := PmPrincipal.Produto.FieldByName('CUSTO').AsFloat;

    PmPrincipal.Produto.FieldByName('NF_VICMSST').Clear;
    PmPrincipal.Produto.FieldByName('NF_IPI_VIPI').Clear;
    PmPrincipal.Produto.FieldByName('NF_VFRETE').Clear;
    PmPrincipal.Produto.FieldByName('VOUTRO').Clear;
    PmPrincipal.Produto.FieldByName('VDESC').Clear;

//    WRCalcMemoria.DBProduto.FieldByName('TEM_LOTE').AsString := 'N'; isso ja vem do cadastro
    WRCalcMemoria.CarregaCustoEstoqueAnterior(PmPrincipal.Produto.FieldByName('CUSTO').AsFloat, PmPrincipal.Produto.FieldByName('ESTOQUE_ANTERIOR').AsFloat);
    WRCalcMemoria.AtualizaMarkup(Produto_Markup);
    // Aqui tem que ter as mesmas funções da importação, Markup, e Manter Margem

    WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA_SUBUNIDADE', 1); //QUANT_COMPRA


  end;
end;

procedure TFrmNF_Entrada.edtCodUsuarioÎUsuarioPropertiesChange(Sender: TObject);
begin
  inherited;
  lblCodUsuario.Caption:= Procura('LOGIN','USUARIO',edtCodUsuario.Text);
end;

procedure TFrmNF_Entrada.btnGerarParcelasClick(Sender: TObject);
var
  I, D , ACodCondPagto: Integer;
  Aux : String;
  Vetor_Dias: Array[1..255] of REAL;
  QuerX : TFDQuery;
  AUtilizaDataNota : Boolean;
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
  AUtilizaDataNota := TConfig.ReadBoolean('NF_VENCIMENTO_PARCELAS_COM_BASE_DATA_NOTA');
  if AUtilizaDataNota and (Cadastro.FieldByName('DT_NOTA').AsDateTime = 0) then
  begin
    edtDT_Nota.SetFocusWR;
    raise EWRException.Create('Informe a data da nota');
  end;
  If Cadastro.FieldByName('QTDPARCELAS').AsInteger < 1 then
  begin
    ShowMessageWR('Favor colocar Números de parcelas maior que "ZERO"');
    Exit;
  end;
  if EdtCodContaÎContas.Text = '' then
  begin
    ShowMessageWR('Favor Colocar o Codigo da Conta');
    EdtCodContaÎContas.SetFocus;
    Exit;
  end;
  while Not Nf_Entrada_Parcelas.IsEmpty do
    Nf_Entrada_Parcelas.Delete;

  Nf_Entrada_Parcelas.Refresh;
  /////////////////////// codigo de pagamento por descricao ou digitado direto //////////////
  if((EdtCondicaoPagtoÎCondicaoPagto.Text = '') or (Procura('TIPO', 'CONDICAOPAGTO', EdtCondicaoPagtoÎCondicaoPagto.Text) = '1')) and ((EdtCondicaoPagtoÎCondicaoPagtoÎINTERVALO.Text='')AND(not EdtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL.Checked)) then
  begin
    D:=1;
    Aux:='0';
    For I:= 1 to Length(EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text) do
      If (EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text[I]='/')OR(Length(EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text)=I) then
      begin
        If Length(EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text)=I then If VerificaInteiro(EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text[I])then Aux:=Aux+EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text[I];
        Vetor_Dias[D]:=StrToInt(Aux);
        D:=D+1;
        Aux:='0';
      end
      else If VerificaInteiro(EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text[I])then Aux:=Aux+EdtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text[I];
  end else
  ////////////////////////////////////////////////////////////////////////////////
  if (EdtCondicaoPagtoÎCondicaoPagtoÎINTERVALO.Text<>'') then
  begin
    for I := 1 to Cadastro.FieldByName('QTDPARCELAS').AsInteger do
      Vetor_Dias[I] := Cadastro.FieldByName('DIA_INTERVALO').AsInteger * I;
  end;
  if EdtCondicaoPagtoÎCondicaoPagtoÎINTERVALO_MENSAL.Checked then
  begin
    For I:= 1 to Cadastro.FieldByName('QTDPARCELAS').AsInteger do
      Vetor_Dias[I]:= IncMonth(Date,I)-Date;
  end;
  /////////////////////// COLOCA NO FINANCEIRO ///////////////////////
  For I:= 1 to Cadastro.FieldByName('QTDParcelas').AsInteger do
  begin
    Nf_Entrada_Parcelas.Insert;
    Nf_Entrada_Parcelas.FieldByName('CodNf_Entrada').AsString    := Cadastro.FieldByName('Codigo').asString;
    Nf_Entrada_Parcelas.FieldByName('Codigo').AsFloat            := I;
    Nf_Entrada_Parcelas.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    Nf_Entrada_Parcelas.FieldByName('RAZAOSOCIAL').AsString      := LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption;
    Nf_Entrada_Parcelas.FieldByName('Valor').asFloat             := Cadastro.FieldByName('TOTAL').asFloat/ Cadastro.FieldByName('QTDPARCELAS').AsInteger;
    Nf_Entrada_Parcelas.FieldByName('CODCONTA').asInteger        := StrToInt(EdtCodContaÎContas.Text);
    if cbxTipo.Text = 'NOTA SIMPLES' then
      Historico := 'NS '
    else if cbxTipo.Text = 'NOTA FISCAL' then
      Historico := 'NF '
    else
      Historico := 'SL ';
    Nf_Entrada_Parcelas.FieldByName('Documento').AsString        := Historico + Cadastro.FieldByName('NUN_NF').asString + '  ' + IntToStr(I) + '/' + Cadastro.FieldByName('QTDPARCELAS').AsString;
    if (Procura('ENTRADA','CONDICAOPAGTO',EdtCondicaoPagtoÎCondicaoPagto.Text)='S')AND(I=1) then
    begin
      Nf_Entrada_Parcelas.FieldByName('TIPO').AsString           := 'PAGA';
      Nf_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime    := DataHoraSys;
    end else
    begin
      Nf_Entrada_Parcelas.FieldByName('TIPO').AsString           := 'A PAGAR';
      Nf_Entrada_Parcelas.FieldByName('DATAPAGTO').Clear;
    end;
    ////////// parte de carteira automática ///////////////////
    if (EdtCondicaoPagtoÎCondicaoPagto.Text <> '') then
    begin
      ACodCondPagto := StrToIntDef(EdtCondicaoPagtoÎCondicaoPagto.Text,1);
      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select * from CONDICAOPAGTO C ' +
                          'where C.CODIGO = :codigo';
        QuerX.Params[0].Value := ACodCondPagto;
        QuerX.Open;
        Nf_Entrada_Parcelas.FieldByName('TipoPagto').AsString := QuerX.FieldByName('TIPOPAGTO').AsString;
      finally
        QuerX.Free;
      end;
      NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString := Procura('CODPLANOCONTAS_PAGTO', 'CONDICAOPAGTO', EdtCondicaoPagtoÎCondicaoPagto.Text);
    end else
      Nf_Entrada_Parcelas.FieldByName('TipoPagto').AsString := 'DINHEIRO';
    Nf_Entrada_Parcelas.FieldByName('Vencto').AsDateTime    := IfThen(AUtilizaDataNota, Cadastro.FieldByName('DT_NOTA').AsDateTime, DataSis) + Vetor_Dias[I];
    Nf_Entrada_Parcelas.Post;
    ///////////////////////////////////////////////////////////
  end;
  Nf_Entrada_Parcelas.Refresh;
end;

procedure TFrmNF_Entrada.NF_Entrada_ParcelasBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
end;

procedure TFrmNF_Entrada.NF_Entrada_ParcelasBeforePost(DataSet: TDataSet);
var
  Valor_Parcela: Real;
  QuerX: TFDQuery;
begin
  inherited;
  AtualizaDtAlteracao(Nf_Entrada_Parcelas);
  if Nf_Entrada_Parcelas.State = dsEdit then
  begin
    if (RdT(Cadastro.FieldByName('TOTAL').AsCurrency, -2) * 100) < (RdT(NF_Entrada_Parcelas.FieldByName('VALOR').AsCurrency, - 2) * 100) then
    begin
      DataSet.Cancel;
      GeraExcecao('Valor da Parcela ' + NF_Entrada_Parcelas.FieldByName('PARCELA').AsString + ', esta maior que o Valor da Nota.');
    end;

    VerificaPlanoContasFinanceiro(TransaFD, NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString);

    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'SELECT SUM(VALOR) AS VALOR ' +
                       'FROM NF_ENTRADA_PARCELAS ' +
                       'WHERE (CODNF_ENTRADA = ' + QuotedStr(Cadastro.FieldByName('CODIGO').AsString) + ') ' +
                       'AND (CODIGO < ' + Nf_Entrada_Parcelas.FieldByName('CODIGO').AsString + ')';
      QuerX.Open;
      if Cadastro.FieldByName('QTDPARCELAS').AsInteger = 1 then
        Nf_Entrada_Parcelas.FieldByName('VALOR').AsCurrency := Cadastro.FieldByName('TOTAL').AsCurrency
      else
      if Cadastro.FieldByName('QTDPARCELAS').AsInteger = Nf_Entrada_Parcelas.FieldByName('CODIGO').AsInteger then
        Nf_Entrada_Parcelas.FieldByName('VALOR').AsCurrency := Cadastro.FieldByName('TOTAL').AsCurrency - QuerX.FieldByName('VALOR').AsCurrency
      else begin
		// Mexi nessa linha aqui. Troquei de QTDParcelas para RecordCount. Estava dando erro mas agora funcionou. Não troquei o resto pq o resto não incomodou ainda.
        Valor_Parcela := (Cadastro.FieldByName('TOTAL').AsCurrency -
                          (QuerX.FieldByName('VALOR').AsCurrency + Nf_Entrada_Parcelas.FieldByName('VALOR').AsCurrency))/
                          (NF_Entrada_Parcelas.RecordCount - Nf_Entrada_Parcelas.FieldByName('Codigo').AsInteger);
        if not (Valor_Parcela >= 0) then
        begin
          ShowMessageWR('O valor digitado é maior que o permitido.');
          DataSet.Cancel;
          Abort;
        end;
        QuerX.Close;
        QuerX.SQL.Text := 'UPDATE NF_ENTRADA_PARCELAS SET VALOR = :Valor ' +
                         'WHERE (CODNF_ENTRADA = ' + QuotedStr(Cadastro.FieldByName('CODIGO').AsString) + ') ' +
                         'AND (CODIGO > ' + Nf_Entrada_Parcelas.FieldByName('CODIGO').AsString + ')';
        QuerX.ParamByName('Valor').AsCurrency := Valor_Parcela;
        QuerX.ExecSQL;
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TFrmNF_Entrada.AutopreencherCddeBarras1Click(Sender: TObject);
var
  APoint: TBookmark;
  ACampo: string;
begin
  inherited;
  if NF_Entrada_Produtos.IsEmpty or (ShowMessageWR('Este procedimento irá preencher automaticamente o código de fábrica ' +
     'de todos os produtos que estiverem em branco.' + sLineBreak + 'Deseja continuar?', MB_ICONQUESTION) <> mrYes) then
    Exit;

  case ShowPanelForm(PnlPreencheCodFabrica, bsSingle) of
    mrYes: ACampo := 'CODFABRICA';
    mrNo:  ACampo := 'CODIGOEAN';
  else
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  APoint := NF_Entrada_Produtos.GetBookmark;
  NF_Entrada_Produtos.DisableControls;
  try
    NF_Entrada_Produtos.First;
    while not NF_Entrada_Produtos.Eof do
    begin
      if NF_Entrada_Produtos.FieldByName(ACampo).AsString = '' then
      begin
        NF_Entrada_Produtos.Edit;
        NF_Entrada_Produtos.FieldByName(ACampo).AsString := NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;
//        NF_Entrada_Produtos.FieldByName('CODIGOEAN_CADASTRO').AsString;   // TERIA QUE CRIAR O CÓDIGO DODE BARRa
        NF_Entrada_Produtos.Post;                                           // TODO: Futuro Implementar o CODIGOEAN_CADASTRO, o código emviado ainda esta apenas a do produto
      end;
      NF_Entrada_Produtos.Next;
    end;
  finally
    NF_Entrada_Produtos.GotoBookmark(APoint);
    NF_Entrada_Produtos.EnableControls;
  end;
end;

procedure TFrmNF_Entrada.btnAdicionarProdutoClick(Sender: TObject);
//var
//  ALote: string;
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
  if (EdtCodProduto.Text = '') then
  begin
    PmPrincipal.Produto.Edit;
    WREventosCadastro.Regra_ValorInicial(PmPrincipal.Produto, 'PRODUTO');
  end;
  WREventosCadastro.ValidaCamposObrigatorio(Self, 'BTNADICIONARPRODUTO'); // Executa a função e ilumina

  if (Trim(EdtDescricaoProduto.Text) = '') then
  begin
    ShowMessage('Favor preencher o campo "Descrição do Produto"');
    EdtDescricaoProduto.SetFocus;
    Exit;
  end;
  if (EdtCodProduto.Text <> '') and (EdtDescricaoProduto.Text = '') then
  begin
    ShowMessageWR('Produto não cadastrado');
    EdtCodProduto.SetFocusWR;
    Exit;
  end;
  if (EdtGrupoÎProduto_Grupo.Text <> '') and (LblGrupoÎProduto_GrupoÎDESCRICAO.Caption = '') then
  begin
    ShowMessageWR('Grupo não cadastrado');
    EdtGrupoÎProduto_Grupo.SetFocusWR;
    Exit;
  end;
  if (EdtMarcaÎProduto_Marca.Text <> '') and (LblMarcaÎProduto_MarcaÎDESCRICAO.Caption = '') then
  begin
    ShowMessageWR('Marca não cadastrada');
    EdtMarcaÎProduto_Marca.SetFocusWR;
    Exit;
  end;
  if edtQuant_Compra.Value = 0 then
  begin
    ShowMessageWR('Favor preencher o campo "QUANT"');
    edtQuant_Compra.SetFocusWR;
    Exit;
  end;

  {$REGION 'Moto'}
  if edtCodProduto_Tipo.Text = 'MOTO' then
  begin
    if edtVeiculo_KM.Text = 'ZERO KM' then
    begin
      if edtVeiculo_Chassi.Text = '' then
      begin
        ShowMessageWR('Favor preencher o campo "CHASSI"');
        edtVeiculo_Chassi.SetFocusWR;
        Exit;
      end;
      if edtVeiculo_Motor.Text = '' then
      begin
        ShowMessageWR('Favor preencher o campo "Número do Motor"');
        edtVeiculo_Motor.SetFocusWR;
        Exit;
      end;
    end
    else if edtVeiculo_Placa.Text = '' then
    begin
      ShowMessageWR('Favor preencher o campo "PLACA"');
      edtVeiculo_Placa.SetFocusWR;
      Exit;
    end;

    if edtVeiculo_Renavam.Text = '' then
    begin
      ShowMessageWR('Favor preencher o campo "Renavan"');
      edtVeiculo_Renavam.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_Ano_Modelo.Text = '  /  ' then
    begin
      ShowMessageWR('Favor preencher o campo "ANO/MODELO"');
      edtVeiculo_Ano_Modelo.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_Cilindrada.Value = 0 then
    begin
      ShowMessageWR('Favor preencher o campo "Cilindradas"');
      edtVeiculo_Cilindrada.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_HP.Value = 0 then
    begin
      ShowMessageWR('Favor preencher o campo "HP"');
      edtVeiculo_HP.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_Passageiros.Value = 0 then
    begin
      ShowMessageWR('Favor preencher o campo "Numero de Passageiros"');
      edtVeiculo_Passageiros.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_Combustivel.Text = '' then
    begin
      ShowMessageWR('Favor preencher o campo "Combustível"');
      edtVeiculo_Combustivel.SetFocusWR;
      Exit;
    end;
    if edtVeiculo_KM.Text = '' then
    begin
      ShowMessageWR('Favor preencher o campo "Zero / Usado"');
      edtVeiculo_KM.SetFocusWR;
      Exit;
    end;
    if edtCorÎCor.Text = '' then
    begin
      ShowMessageWR('Favor preencher o campo "Código da Cor"');
      edtCorÎCor.SetFocusWR;
      Exit;
    end;
    if (edtCorÎCor.Text <> '') and (LblCorÎCorÎDESCRICAO.Caption = '') then
    begin
      ShowMessageWR('Cor não cadastrada');
      edtCorÎCor.SetFocusWR;
      Exit;
    end;
  end;
  {$ENDREGION}
 { if ChkLote.Checked then
  begin
    ALote := TFrmSelecao_Lote.AbreSelecaoLote(EdtCodProdutoÎProduto.Text, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
    if ALote = '' then
    begin
      ShowMessage('Esse Produto não pode ser inserido sem o número de Lote.');
      Exit;
    end;
    AlteraDataSet(PmPrincipal.Produto);
    PmPrincipal.Produto.FieldByName('CODPRODUTO_LOTE').AsString := ALote;
  end;     }
//  UCControls1.ValidaComponent(Sender, PmPrincipal.Produto, 'AdicionaProduto');

  GridTree.DataController.BeginUpdate;
  try
    NF_Entrada_Produtos.Insert;
    DSCopiarCamposIguais(PmPrincipal.Produto, NF_Entrada_Produtos, ['CODIGO']);
    NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE').AsString :=  edtUN_PADRAO_COMPRA.Text;//PmPrincipal.Produto.FieldByName('UN_SUBUNIDADE').AsString;
    NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString :=  PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString;
    if NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE').IsNull then
      NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE').AsString := NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString ;

    if NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').IsNull then
    begin
      if TConfig.ReadInteger('NF_ENTRADA_PRODUTO_TIPO') > 0 then
      begin
        NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').AsInteger := TConfig.ReadInteger('NF_ENTRADA_PRODUTO_TIPO');
      end;
    end;

    if NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').IsNull then
    begin
      if TConfig.ReadString('NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL') <> '' then
      begin
        NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString := TConfig.ReadString('NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL');
      end;
    end;




    DataSetCopiaRecursivoCamposIguais(PmPrincipal.Composicao, NF_Entrada_Produtos, Null, ['CODIGO', 'CODNF_ENTRADA',
      'CODNF_ENTRADA_PRODUTOS', 'ORDEM'], PmPrincipal.TreeListComposicao.GetTreeList);

    PmPrincipal.TabelaPreco.First;
    while not PmPrincipal.TabelaPreco.Eof do
    begin
      NF_Entrada_Tabela_Preco.Insert;
      DSCopiarCamposIguais(PmPrincipal.TabelaPreco, NF_Entrada_Tabela_Preco, []);
      NF_Entrada_Tabela_Preco.FieldByName('CODNF_ENTRADA').AsString  :=  Cadastro.FieldByName('CODIGO').AsString;
      NF_Entrada_Tabela_Preco.Post;
      PmPrincipal.TabelaPreco.Next;
    end;
//    DSCopiarDataSetIgnorando(PmPrincipal.CustoExtra, NF_Entrada_Produtos_Custo_Ad, ['CODIGO', 'CODPRODUTO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_PRODUTO']);

    // SE ESSE CÓDIGO NÃO TIVER PRESTAR ATENÇÃO QUANDO FOR CADASTRAR
    // DSCopiarDataSetIgnorando(PmPrincipal.CentroTrabalho, NF_Entrada_Centro_Trabalho, ['CODIGO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_PRODUTO']);
    DSPost(NF_Entrada_Produtos);
    PmPrincipal.Limpar;
    edtCodProduto.SetFocusWR;
  finally
    GridTree.DataController.EndUpdate; // Não pode ficar colocando Isso
  end;
  WRCalc.SprFechaMemTables;
  NF_Entrada_Produtos.Refresh;
  WRCalc.CalcBuild;
  WRCalc.SuperCalc;
end;

procedure TFrmNF_Entrada.edtExtrasPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormExtras.Abrir(edtExtras, WRCalcMemoria, WRCalcMemoria.DBProduto);    //TODO: Verificar se Precisa pular o código, depois que sai do campo igual ao grid
end;

procedure TFrmNF_Entrada.edtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarMargem(DisplayValue);
end;

procedure TFrmNF_Entrada.edtMarkupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormMarkup.Abrir(edtMarkup, WRCalcMemoria);
end;

procedure TFrmNF_Entrada.edtQuant_CompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (cbxTipo.Text = 'SOLICITAÇÃO DE COMPRA') and (edtValor_Compra.Value <> 0) then  // NÃO LEMBRO DESSA REGRA
    btnAdicionarProduto.SetFocusWR;
end;

procedure TFrmNF_Entrada.edtQuant_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA_SUBUNIDADE', DisplayValue);   // Agora ta fazendo tudo
end;

procedure TFrmNF_Entrada.edtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarTotal(DisplayValue);
end;

procedure TFrmNF_Entrada.edtUN_PADRAO_COMPRAPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if PmPrincipal.Produto.State in dsEditModes then
  begin
    if PmPrincipal.Produto.FieldByName('UN_SUBUNIDADE').IsNull then
      PmPrincipal.Produto.FieldByName('UN_SUBUNIDADE').AsString := PmPrincipal.Produto.FieldByName('UNIDADE').AsString
  end;
end;

procedure TFrmNF_Entrada.edtUsuarioAlteradoPropertiesChange(Sender: TObject);
begin
  inherited;
  lblUsuarioAlterado.Caption:= Procura('LOGIN','USUARIO',edtUsuarioAlterado.Text);
end;

procedure TFrmNF_Entrada.edtUsuarioEstoqueÎUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F3 then Abort;
  inherited;
end;

procedure TFrmNF_Entrada.edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarValor(DisplayValue);    //TODO: Ta errado, tem que chamar a função valida medidas
end;

procedure TFrmNF_Entrada.edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarValor_Compra(DisplayValue);   //TODO: Ta errado, tem que chamar a função valida medidas
end;

procedure TFrmNF_Entrada.edtValor_NF_VarejoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  RecalculaTabelasDePreco;
end;

procedure TFrmNF_Entrada.WRCalcValidateVENDA(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//  if Not WRCalc.SprVerificaOrdenacao then
//    Exit;
  WRCalc.ValidaCampoVENDA(Sender);
end;

procedure TFrmNF_Entrada.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      AddGeneratorMultEmpresa(edtCodigo);

      AddValorInicial(FNomeTabela , 'GERA_FINANCEIRO',   chkGera_Financeiro,    'N');
      AddValorInicial(FNomeTabela , 'ATUALIZA_ESTOQUE',  chkGera_Estoque,       'N');  // ATUALIZA_ESTOQUE     esse campo não existe
      AddValorInicial(FNomeTabela , 'TIPO',              cbxTipo,               'NOTA FISCAL');
      AddValorInicial(FNomeTabela , 'ENVIA_FINANCEIRO',  chkEnviaFinanceiro,    'S');
      AddValorInicial(FNomeTabela , 'ENVIA_ESTOQUE',     chkEnvia_Estoque,      'S');
      AddValorInicial(FNomeTabela , 'ENVIA_PRECO',       chkEnvia_Preco,        'S');
      AddValorInicial(FNomeTabela , 'DATA',              edtData,               '@DATA');
      AddValorInicial(FNomeTabela , 'DT_NOTA',           edtDT_Nota,            '@DATA');

       AddValorInicial(FNomeTabela , 'PODE_RATEAR_FRETE_DESC_OUTRO', chkPode_Ratear_Frete_Desc_Outro,        'N');  // PODE_RATEAR_FRETE_DESC_OUTRO

      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
//        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'Informar a Descrição');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;


//      AddTabelaFilha(NF_Entrada_Produtos);
//      with Form('TFrmNF_Entrada_Produtos') do
//      begin
//        Componente('NF_ENTRADA_PRODUTOS', 'NF_UNIDADE', 'edtNF_UNIDADE', 'UN', 'S', 'N','VALOR_INICIAL', '', '');
//    //   ValidarExpressao('Excluir', 'DT_FATURAMENTO = Null', 'edtDtFaturamento', 'Você deve cancelar o Faturamento.');
//    //   ValidarExpressao('NF_Entrada_Produtos', 'QUANT <> 0', 'GridTreeQUANT', 'Coloque a quantidade do produto/serviço');
//      end;
    end;
  end;
end;

procedure TFrmNF_Entrada.WREventosCadastroLayoutChange(Sender: TObject);
begin
  inherited;
  GridTreeESTOQUE_LOCAL_MOVIMENTO.Visible  := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;
end;

procedure TFrmNF_Entrada.CadastraLote1Click(Sender: TObject);
begin
  inherited;   // FUNÇÃO DESATIVADA - Essa função esta desativada Menu esta com FALSE
  AlteraDataSet(NF_Entrada_Produtos);   // O pai faz a função   VerificaSePodeAlteraDataSet(Cadastro);
  NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsString := TFrmProduto_Lote.AbreCadastroLote(NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
end;

procedure TFrmNF_Entrada.btnConfirmarClick(Sender: TObject);
var
  AResultCodigo: string;
begin
  AResultCodigo := NF_EntradaVerificaNotaFiscalCadastrada(TransaFD,
               Cadastro.FieldByName('NUN_NF').AsInteger,
               Cadastro.FieldByName('CODIGO').AsString,
               Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
  if AResultCodigo <> '' then
  begin
    CloseOpen_AbrirRegistro(AResultCodigo);
    Abort;
  end;
  if edtDescricao.Text = '' then
  begin
    ShowMessageWR('Favor digitar o Número da Nota Fiscal.');
    edtDescricao.SetFocusWR;
    Exit;
  end;
  if (EdtFornecedorÎPessoas.Text = '') and
     not MatchStr(cbxTipo.Text, ['TRANSFERÊNCIA', 'SOLICITAÇÃO ORÇAMENTO' {$IFDEF DEBUG}, 'SOLICITAÇÃO DE COMPRA' {$ENDIF}]) then
  begin
    ShowMessageWR('Favor digitar o Fornecedor.');
    EdtFornecedorÎPessoas.SetFocusWR;
    Exit;
  end;
  if NF_Entrada_Produtos.IsEmpty then
  begin
    ShowMessageWR('Favor colocar algum produto.');
    TabProdutos.MakeVisible;
    EdtCodFabrica.SetFocusWR;
    Exit;
  end;
  if not UsuarioSenha(True, True) then
    Exit;
  Cadastro.FieldByName('CODUSUARIO_MODIFICOU').AsInteger := CodigoUsuario; //<<<<<<<< isso marca o último responsável

  if Controller_VerificaSeAtualizaPrecoPorCFOP(NF_Entrada_Produtos) = 'S' then
  begin
    if Cadastro.FieldByName('ENVIA_PRECO').AsString = 'S' then
    begin
      if ShowMessageWR('Foi detectado que sua nota fiscal é de devolução, deseja DESATIVAR a atualização do preço dos produtos?', MB_ICONQUESTION) = mrYes then
      begin
        Cadastro.FieldByName('ENVIA_PRECO').AsString := 'N';
      end;
    end;
  end;
  WRCalc.SuperCalc;
  inherited;
end;

procedure TFrmNF_Entrada.btnCustoMedioClick(Sender: TObject);
begin
  inherited;
  MostraColunaSpreadSheet(sprMotorCalculo, 'X1','AB1' );
end;

procedure TFrmNF_Entrada.edtCodFabricaExit(Sender: TObject);
var
  ACodFabrica: string;
begin
  inherited;
  ACodFabrica := NF_EntradaCodProdutoFromCodFabrica(TransaFD, EdtCodFabrica.Text, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
  if ACodFabrica <> '' then
    edtCodProduto.Text := ACodFabrica;
end;

procedure TFrmNF_Entrada.edtCodFabricaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
//  if Key = VK_RETURN then
//  begin
//    Codigo:= ProcuraField('CODIGO','PRODUTO',['CODFABRICA'], [EdtCodFabrica.Text]);    //TODO: Verificar se funciona como esperado??? To na dúvida
//    if Codigo <> '' then
//    begin
//      edtCodProdutoÎProduto.Text := Codigo;
//      edtQuant_Compra.SetFocusWR;
//    end else
//    begin
//      edtCodProdutoÎProduto.Text := EdtCodFabrica.Text;
//      edtCodFabrica.Text         := EdtCodProdutoÎProduto.Text;
//      edtDescricaoProduto.SetFocusWR;
//    end;
//  end;
end;

procedure TFrmNF_Entrada.edtCodigoÎNF_EntradaPropertiesEditValueChanged(
  Sender: TObject);
var
  QuerX, QuerY : TFDQuery;
  APessoa : TPessoaRetorno;
begin
  inherited;
  if VarToStr(edtCodigoÎNF_Entrada.EditValue) = '' then
  begin
    edtRazaoSocial.Text := '';
    cbTipoVinculo.Text := '';
    Exit
  end;

  QuerX := GeraFDQuery;
  QuerY := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT * FROM NF_ENTRADA WHERE CODIGO = :COD';
    QuerX.ParamByName('COD').AsString := edtCodigoÎNF_Entrada.EditValue;
    QuerX.Open;

    QuerY.SQL.Text := 'SELECT CODIGO, RAZAOSOCIAL FROM PESSOAS WHERE CODIGO = :CODPESSOA';
    QuerY.ParamByName('CODPESSOA').AsString := QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    QuerY.Open;

    edtRazaoSocial.Text := QuerY.FieldByName('RAZAOSOCIAL').AsString;
  finally
    QuerX.Free;
    QuerY.Free;
  end;
end;

procedure TFrmNF_Entrada.EnviarparaCdigodeBarras1Click(Sender: TObject);
begin
  inherited;
  CodigoBarrasGerar(NF_Entrada_Produtos);
end;

procedure TFrmNF_Entrada.EnviarparaRequisicao1Click(Sender: TObject);
Var
  AEntradaSaida :String;
begin
  inherited;
  BtnAlterar.Click;
  AEntradaSaida := ifthen(not MatchStr(Cadastro.FieldByName('TIPO').AsString, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA']),'E','S');
//  TFrame_Requisicao_Pocket.SolicitaRequisicao(NF_Entrada_Produtos, AEntradaSaida);
  try
    Routes.Requisicao.Compra.SolicitaRequisicaoPelaCompra(TransaFD, Cadastro, NF_Entrada_Produtos, Cadastro.FieldByName('TIPO').AsString);

    BtnConfirmar.Click;
  except
    on E:EWRException do
    begin
      ShowMessage(E.Message);
      BtnCancelar.Click;
    end;
  end;
end;

//procedure TFrmNF_entrada.DoAtualizaFinanceiro;
//var
//  QuerX: TFDQuery;
//  APoint: TBookmark;
//  AObrigPlanoContas, AObrigConta, AObrigPagamento: Boolean;
//  AMsg: string;
//begin
//  inherited;
//  if Cadastro.FieldByName('ENVIA_FINANCEIRO').AsString = 'N' then
//  begin
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'N';
//    Exit;
//  end;
//  if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then   //  if Cadastro.FieldByName('GERA_FINANCEIRO').AsString = 'N' then
//  begin
//    AObrigPlanoContas := TConfig.ReadBoolean('NF_PARCELAS_PLANO_CONTAS_OBRIGATORIO');
//    AObrigConta       := TConfig.ReadBoolean('NF_PARCELAS_CONTA_OBRIGATORIO');
//    AObrigPagamento   := TConfig.ReadBoolean('NF_PARCELAS_TIPO_PAGAMENTO_OBRIGATORIO');
//    QuerX := GeraFDQuery(TransaFD);
//    try
//      QuerX.SQL.Text := 'Select sum(Valor)as valor FROM NF_ENTRADA_PARCELAS WHERE CODNF_ENTRADA= :Codigo';
//      QuerX.ParamByName('Codigo').AsString := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.Open;                      //VALOR_NF
//      if RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency,2) > RoundTo(QuerX.FieldByName('VALOR').AsCurrency,2) then
//      begin
//        //Causa um Rollback na rotina que chamou
//        GrupoFinanceiro.MakeVisible;
//        EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
//        GeraExcecao('Valor da nota fiscal é "Superior" a soma das parcelas');
//      end;
//      if RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency,2) < RoundTo(QuerX.FieldByName('VALOR').AsCurrency,2) then
//      begin
//        //Causa um Rollback na rotina que chamou
//        GrupoFinanceiro.MakeVisible;
//        EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
//        GeraExcecao('Valor da nota fiscal é "Inferior" a soma das parcelas');
//      end;
//      QuerX.Close;
//      /////////DELETA TODO O FINANCERO REFERENTE A ESSE LANÇAMENTO (SE EXISTIR É CLARO)////////////
//      //Quer.SQL.Text := 'DELETE FROM FINANCEIRO WHERE CODNF_ENTRADA= :Codigo';
//      //Quer.ParamByName('Codigo').AsString:=Cadastro.FieldByName('CODIGO').AsString;
//      //Quer.ExecSQL;
//    finally
//      //FreeAndNil(Quer);
//      QuerX.Free;
//    end;
//
//    if AObrigPlanoContas or AObrigConta or AObrigPagamento then
//    begin
//      NF_Entrada_Parcelas.First;
//      while not NF_Entrada_Parcelas.Eof do
//      begin
//        //Causa um Rollback na rotina que chamou
//        if AObrigConta and (Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas uma conta (Caixa / Banco).' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//        if AObrigPlanoContas and (NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas um Plano de Contas.' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//        if AObrigPagamento and (NF_Entrada_Parcelas.FieldByName('TIPOPAGTO').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas o tipo de pagamento.' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//
//        NF_Entrada_Parcelas.Next;
//      end;
//    end;
//
//    // GERAR A PARTE FINANCEIRA //
//    NF_Entrada_Parcelas.First;
//    while NOT NF_Entrada_Parcelas.Eof do
//    begin
//      if  (Procura('TIPO','CONTAS', Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString)= 'CAIXA') //Ajsutado aqui pois se voce coloca-se uma parcela a ser paga para o ano que vem, ele acusava de caixa fechado
//      and ((Nf_Entrada_Parcelas.FieldByName('TIPO').AsString = 'RECEBIDA') or (Nf_Entrada_Parcelas.FieldByName('TIPO').AsString = 'PAGA')) then
//      begin
//        QuerX := GeraFDQuery(TransaFD);
//        try
//          QuerX.SQL.Text := 'select * ' + // first 1 1
//                            'from CAIXA ' +
//                            'where (DATA_FECHAMENTO is null) ' +
//                            '      and (CODCONTA = :CodConta) ' +
//                            '      and ((DATA_ABERTURA < :DtVencto) or (DATA_ABERTURA < :DtPagto))';
//          QuerX.ParamByName('CodConta').AsInteger  := Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger;
//          QuerX.ParamByName('DtVencto').AsDateTime := NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime;
//          QuerX.ParamByName('DtPagto').AsDateTime  := Ifthen(NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime > 0, NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime, DataHoraSys);
//          QuerX.Open;
//
//          if QuerX.IsEmpty then
//          begin
//  //          btn_Faturamento.Enabled := UCControls1.GetComponentRight(btn_Faturamento).Enabled;
//            AMsg := 'O caixa desse período (' + FormatDateTime('DD/MM/YYYY HH:MM', NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime);
//            if (NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsString <> '') and (NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime <> NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime) then
//              AMsg := AMsg + ' - ' + FormatDateTime('DD/MM/YYYY HH:MM', NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime);
//            AMsg := AMsg + ') está fechado ou não existe. ';
//            if Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString <> '' then
//              AMsg := AMsg + 'O caixa "' + Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString + '" não está aberto. ';
//            AMsg := AMsg + 'Abra seu caixa primeiro.';
//            ShowMessageWR(AMsg);
//            if not UsuarioSenha(False, True) then
//              Abort; //Causa um Rollback na rotina que chamou
//
//            if FrmPrincipal.Action_Caixa.Enabled then
//            begin
//              TFrmFinanceiro_Contas_Escolha.AbrirCaixa;
////              with TFrmFinanceiro_Contas_Escolha.Create(nil) do
////              try
////                ShowModal;
////              finally
////                Destroy;
////              end;
//            end;
//
//            //Causa um Rollback na rotina que chamou
//            Abort;
//          end;
//        finally
//          QuerX.Free;
//        end;
//      end;
//      ServicesFinanceiro_Lancamento_Financeiro(TransaFD,
//                            ProximoCodigoTrans(TransaFD, 'Financeiro'),
//                            Nf_Entrada_Parcelas.FieldByName('TIPO').AsString,
//                            'FOR',
//                            Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger,
//                            Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//                            LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption,
//                            NF_Entrada_Parcelas.FieldByName('DOCUMENTO').AsString,
//                            Cadastro.FieldByName('NUN_NF').AsString,
//                            '0',
//                            NF_Entrada_Parcelas.FieldByName('TipoPagto').AsString,
//                            Cadastro.FieldByName('CODCONDICAOPAGTO').AsString,
//                            Cadastro.FieldByName('CONDICAOPAGTO').AsString,
//                            Nf_Entrada_Parcelas.FieldByName('CODPlanoContas').AsString,
//                            Nf_Entrada_Parcelas.FieldByName('HISTORICO').AsString,
//                            'ATIVO',
//                            '0',
//                            Cadastro.FieldByName('CODIGO').AsString,
//                            NF_Entrada_Parcelas.FieldByName('CODIGO').AsString,
//                            '',
//                            CodigoUsuario,
//                            '0',
//                            EmpresaAtiva,
//                            NF_Entrada_Parcelas.FieldByName('Valor').AsCurrency,
//                            NF_Entrada_Parcelas.FieldByName('DESCONTO').AsFloat,
//                            NF_Entrada_Parcelas.FieldByName('JUROS').AsFloat,
//                            0, {TODO: Verificar se o valor de previsão será este mesmo}
//                            NF_Entrada_Parcelas.FieldByName('CHEQUE_NUMERO').AsString,
//                            DataHoraSys,
//                            NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime,
//                            NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime,
//                            Cadastro.FieldByName('DT_NOTA').AsDateTime,
//                            'NF_ENTRADA',
//                            Nf_Entrada_Parcelas.FieldByName('CODIGO').AsInteger);
//      NF_Entrada_Parcelas.Next;
//    end;
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'S'
//  end else
//  begin
//    QuerX := GeraFDQuery(TransaFD);
//    try
//      //Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
//      QuerX.SQL.Text := 'select TIPO, CODCONTA, DATAPAGTO ' +
//                        'from FINANCEIRO ' +
//                        'where (CODNF_ENTRADA = :CODNF_ENTRADA)';
//      QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.Open;
//      wrFuncoesValidarSituacaoContaBanco(QuerX); //Gera exceção em falha, Causa um Rollback na rotina que chamou
//      QuerX.Close;
//
//      QuerX.SQL.Text := 'update FINANCEIRO F set F.STATUS = :STATUS,            ' +
//                        '                        F.CODUSUARIO = :CODUSUARIO,    ' +
//                        '                        F.DT_ALTERACAO = :DT_ALTERACAO ' +
//                        'where (CODNF_ENTRADA = :CODNF_ENTRADA)';
//      QuerX.ParamByName('CODNF_ENTRADA').AsString  := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.ParamByName('STATUS').AsString         := 'INATIVO EXCLUIDO';
//      QuerX.ParamByName('CODUSUARIO').AsInteger    := CodigoUsuario;
//      QuerX.ParamByName('DT_ALTERACAO').AsDateTime := now;
//      QuerX.ExecSQL;
//    finally
//      QuerX.Free;
//    end;
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'N';
//  end;
//end;

procedure TFrmNF_Entrada.cbxTipoPropertiesChange(Sender: TObject);
begin
  inherited;
  cbxTipo.Hint := cbxTipo.Text;
  RgTipoTransferenciaPropertiesChange(nil);
  GrupoTransferencia.Visible := (cbxTipo.Text = 'TRANSFERÊNCIA');
end;

procedure TFrmNF_Entrada.cbxTipoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if ds.State in dsEditModes then
  begin
    if (Cadastro.FieldByName('TIPO').AsString = 'SAÍDA DE MERCADORIA') or     // NÃO PEGAR PELO TIPO, CRIAR UM CAMPO E COLOCAR ESSA INFORMAÇÃO NA TELA
    (Cadastro.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA') then             // TIPO SE ENVIA OU NÃO PARA O FINANCEIRO
    begin
      ShowMessage('Notas de Saida de Mercadoria ou Transferência, não gera financeiro');
      Cadastro.FieldByName('ENVIA_FINANCEIRO').AsString := 'S' //<-- Aqui já está a solução proposta!
    end
    else
      Cadastro.FieldByName('ENVIA_FINANCEIRO').AsString := 'N';
  end;
end;

procedure TFrmNF_Entrada.chkEnvia_EstoquePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Cadastro.FieldByName('ENVIA_PRECO').Value := DisplayValue;
end;

procedure TFrmNF_Entrada.chkPode_Ratear_Frete_Desc_OutroPropertiesChange(Sender: TObject);
begin
  inherited;  // Nome do Componente esta errado...
  edtVDesc2.Enabled         := chkPode_Ratear_Frete_Desc_Outro.Checked;
  edtVOutro2.Enabled        := chkPode_Ratear_Frete_Desc_Outro.Checked;
  edtNF_VFrete2.Enabled     := chkPode_Ratear_Frete_Desc_Outro.Checked;
end;

procedure TFrmNF_Entrada.CkAtualizarEstoquePropertiesChange(Sender: TObject);
begin
  inherited;
  liedtUsuarioEstoqueÎUsuario.Enabled := Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString = 'S';
  libtnMateriaisConferidos.Visible    := (Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString = 'N');
  libtnCancelarConferencia.Visible    := not libtnMateriaisConferidos.Visible;
end;

procedure TFrmNF_Entrada.GridFinanceiroDblClick(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if not Nf_Entrada_Parcelas.IsEmpty then
    ShowPanelForm(pnl_Parcela, bsSingle, cbxTipoPagto);
end;

procedure TFrmNF_Entrada.GridFinanceiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //Única forma de desativar a exclusão de registros pelo Ctrl+Del. O Grid não ofereção opção de desativar isso
  if (ssCtrl in Shift) and (Key = VK_DELETE) then
    Key := 0;
end;

procedure TFrmNF_Entrada.GridTreeCODPRODUTOÎProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
Var
  ACodProduto : String;
begin
  inherited;
//  VerificaSePodeAlteraDataSet(NF_Entrada_Produtos);
//  ACodProduto:=ConsultaModalFiltro(TConsuProduto,'');

  VerificaSePodeAlteraDataSet(NF_Entrada_Produtos);

  if Not Assigned(FConsultaProduto) then
    FConsultaProduto := TFrmProduto_Compra_Modal.Create(Self{TForm(Owner)});

  FConsultaProduto.ShowConsultaItem(Tag_Produto_Compra);

  AguardaFormFechar(FConsultaProduto);
  ACodProduto:=Codigo;

  if ShowMessageWR('Deseja Vincular com esse Produto?', MB_ICONQUESTION) = mrYes then
  begin
    NF_Entrada_Produtos.FieldByName('CODPRODUTO').Value:= ACodProduto;
    RecaregarProduto1.Click;
  end;
end;

procedure TFrmNF_Entrada.GridTreeUN_SUBUNIDADE_DESCRICAOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormRendimento.Abrir(TWinControl(Sender), WRCalc, NF_Entrada_Produtos);
  GridTree.SetFocusWR;
end;

procedure TFrmNF_Entrada.GridTreeSUBUNIDADEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  TFormRendimento.Abrir(TWinControl(Sender), WRCalc, NF_Entrada_Produtos);

  if AButtonIndex = 0 then
  begin
    // ComboBox
  end;

  if AButtonIndex = 1 then
  begin
    // Button +
  end;
//  GridTree.SetFocusWR;
end;

procedure TFrmNF_Entrada.GridTreeSUBUNIDADEPropertiesChange(Sender: TObject);
begin
  inherited;
//  CalculaSubUnidade(NF_Entrada_Produtos.FieldByName('UNIDADE_RENDIMETNO').AsString);
end;

procedure TFrmNF_Entrada.CalculaSubUnidade(AUnidadeRendimento :String);
var
  QuerX: TFDQuery;
begin
  if DS.DataSet.State in dsEditModes then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select * from UNIDADE_SUBUNIDADE where UN_SUBUNIDADE_DESCRICAO = :Un_SubUnidade_Descricao';
      QuerX.ParamByName('Un_SubUnidade_Descricao').Value :=  AUnidadeRendimento;
      QuerX.Open;
      if QuerX.RecordCount > 0 then
      begin
//        edtUNIDADE.Text := QuerX.FieldByName('UN_SUBUNIDADE').AsString;
        NF_Entrada_Produtos.FieldByName('QTDADEPECA').AsFloat := QuerX.FieldByName('QTDADEPECA').AsFloat;
        NF_Entrada_Produtos.FieldByName('COMP').AsFloat       := QuerX.FieldByName('COMP').AsFloat;
        NF_Entrada_Produtos.FieldByName('LARG').AsFloat       := QuerX.FieldByName('LARG').AsFloat;
        NF_Entrada_Produtos.FieldByName('ESPESSURA').AsFloat  := QuerX.FieldByName('ESPESSURA').AsFloat;

  //      edtRendimento.Value := QuerX.FieldByName('QUANT').AsFloat;
      end else
      begin
        NF_Entrada_Produtos.FieldByName('QTDADEPECA').AsFloat := 1;
        NF_Entrada_Produtos.FieldByName('COMP').AsFloat       := 1;
        NF_Entrada_Produtos.FieldByName('LARG').AsFloat       := 1;
        NF_Entrada_Produtos.FieldByName('ESPESSURA').AsFloat  := 1;
      end;
      WRCalc.calcbuild;
      WRCalc.SprCopiarFormula;
    finally
      QuerX.free;
    end;
  end;

end;

procedure TFrmNF_Entrada.GridTreeCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
var
  AUnidade: TUnidade;
begin
  inherited;
  if AViewInfo.Column = GridTreeVALOR_COMPRA then
  begin
    if not AViewInfo.Selected then
      ACanvas.Brush.Color := clCream;
  end;
  if (AViewInfo.Column = GridTreeVALOR)then
  begin
    if not AViewInfo.Selected then            //TODO: Verficar campos corretamente
      ACanvas.Brush.Color := clMoneyGreen;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.Column = GridTreeTOTAL_COMPRA) then
  begin
    if not AViewInfo.Selected then
    begin
      ACanvas.Font.Style := [fsBold];
      ACanvas.Brush.Color := clMoneyGreen;
    end;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.Column = GridTreeUN_SUBUNIDADE_DESCRICAO then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'UNIDADE') <> '' then
    begin
      if (TreeListGetValorNodeString(AViewInfo.Node, 'UN_SUBUNIDADE') <> TreeListGetValorNodeString(AViewInfo.Node, 'UNIDADE')) then
      begin
        if (TreeListGetValorNodeString(AViewInfo.Node, 'UN_SUBUNIDADE_DESCRICAO') = TreeListGetValorNodeString(AViewInfo.Node, 'UN_SUBUNIDADE')) or
         (TreeListGetValorNodeString(AViewInfo.Node, 'UN_SUBUNIDADE_DESCRICAO') = '') then
          ACanvas.Brush.Color := clRed
        else
          ACanvas.Brush.Color := clYellow;
      end else
        ACanvas.Brush.Color := cllime;
    end else
      ACanvas.Brush.Color := cllime;

    AUnidade := ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(AViewInfo.Node, 'UN_SUBUNIDADE'));
    if AUnidade.Unidade = '' then
      ACanvas.Brush.Color := clRed;
  end;

  if AViewInfo.Column = GridTreeCODPRODUTOÎProduto then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'CODPRODUTO') = '' then
      ACanvas.Brush.Color := clYellow
    else
      ACanvas.Brush.Color := cllime;
  end;




  inherited;



  if AViewInfo.Selected then
  begin
    ACanvas.Font.Color := $00484848;
    ACanvas.Font.Style := [fsBold];
  end;
end;



procedure TFrmNF_Entrada.GridTreeCustomDrawIndentCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListIndentCellViewInfo; var ADone: Boolean);
const
  LCORES: TArray<TColor> = [clWebGhostWhite, clWebLavender, clWebBeige, clWebCornSilk, clWebIvory, clWebLavenderBlush];
var
  ACor: TColor;
  ARect: TRect;
begin
  inherited;
  AViewInfo.Draw(ACanvas);
  ACor := LCORES[AViewInfo.LevelNode.Level mod 6];
  if [ilVertUp, ilVertDown] * AViewInfo.Lines <> [] then
  begin
    ARect := AViewInfo.VertTreeLine;
    //Teste de estilo para a linha, se segurar Ctrl a linha fica mais grossa
//    if (GetKeyState(VK_CONTROL) < 0) then
//      ARect.Inflate(1, 0);
    ACanvas.FillRect(ARect, ACor);
  end;
  if ilHorz in AViewInfo.Lines then
  begin
    ARect := AViewInfo.HorzTreeLine;
//    if (GetKeyState(VK_CONTROL) < 0) then
//      ARect.Inflate(0, 1);
    ACanvas.FillRect(ARect, ACor);
  end;
  with AViewInfo do
  begin
    if Button then
      Painter.DrawScaledSmallExpandButton(ACanvas, GlyphRect, IsExpanded, ACor, ScaleFactor, ViewParams.Color);
  end;
  ADone := True;

end;

procedure TFrmNF_Entrada.GridTreeCALC_PMARGEM_CONTRIBUICAOPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarMargem(DisplayValue);
end;

procedure TFrmNF_Entrada.GridTreeCALC_PMARKUPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormMarkup.Abrir(TWinControl(Sender), WRCalc);
  GridTree.SetFocusWR;
end;

procedure TFrmNF_Entrada.GridTreeCALC_VCOMPRA_EXTRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;   // Evento vinculado em GridTreeNF_IPI_VIPI, GridTreeNF_VICMSST, e GridTreeCALC_VCOMPRA_EXTRA
  TFormExtras.Abrir(TWinControl(Sender), WRCalc, NF_Entrada_Produtos);
  GridTree.SetFocusWR;
//  if NF_Entrada_Produtos.State = dsEdit then
//    NF_Entrada_Produtos.Post;
end;

procedure TFrmNF_Entrada.GridTreeCODPRODUTO_GRUPOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaSePodeAlteraDataSet(NF_Entrada_Produtos);
  NF_Entrada_Produtos.FieldByName('CODPRODUTO_GRUPO').Value := ConsultaModalFiltro(TConsuProduto_Grupo,'');
end;

procedure TFrmNF_Entrada.GridTreeDblClick(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if Cadastro.IsEmpty or NF_Entrada_Produtos.IsEmpty then
    Exit;
  TFrmNF_Entrada_Produtos.AbrirFromNFEntrada(FFrmNF_Entrada_Produtos, WRCalc, NF_Entrada_Produtos_Afetados, GridTreeCODPRODUTOÎProdutoPropertiesButtonClick);
end;

procedure TFrmNF_Entrada.GridTreeDT_ALTERACAO_CADASTROPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
//  NFEntrada_Produto_AvisoTemEsseAviso(TreeListGetValorNodeString())
//  if not NF_Entrada_Produtos.FieldByName('DT_ALTERACAO_CADASTRO').IsNull and
//     (NF_Entrada_Produtos.FieldByName('DT_ALTERACAO_CADASTRO_ATUAL').AsDateTime > NF_Entrada_Produtos.FieldByName('DT_ALTERACAO_CADASTRO').AsDateTime) then
end;

procedure TFrmNF_Entrada.GridTreeQTDADEPECA_SUBUNIDADEPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if NF_Entrada_Produtos.State in dsEditModes then
    WRCalc.ValidaCampoMedidas('QTDADEPECA_SUBUNIDADE', DisplayValue);
end;

procedure TFrmNF_Entrada.GridTreeTOTAL_COMPRAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if NF_Entrada_Produtos.State in dsEditModes then
    WRCalc.ProdutoAlterarTotal_Compra(DisplayValue);
end;

procedure TFrmNF_Entrada.GridTreeVALORPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if NF_Entrada_Produtos.State in dsEditModes then
    WRCalc.ProdutoAlterarValor(DisplayValue);
end;

procedure TFrmNF_Entrada.GridTreeVALOR_COMPRAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if NF_Entrada_Produtos.State in dsEditModes then
    WRCalc.ProdutoAlterarValor_Compra(DisplayValue);
end;

procedure TFrmNF_Entrada.GridVinculosViewDblClick(Sender: TObject);
begin
  inherited;
  CadastroMidChildChave(TFormClass(GetClass('TFrmNF_Entrada')), NF_Entrada_Vinculos.FieldByName('CODIGO').Value);
end;

procedure TFrmNF_Entrada.GridVinculosViewPORCENTAGEM_RATEIOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if NF_Entrada_Vinculos.state <> dsEdit then
    NF_Entrada_Vinculos.Edit;
  NF_Entrada_Vinculos.FieldByName('PORCENTAGEM_RATEIO').AsFloat := DisplayValue;

  CalculaCustosVinculados;
end;

procedure TFrmNF_Entrada.GrupoCentralTabsTabChanged(Sender: TObject);
begin
  inherited;

  if TabMotorCalculo.ActuallyVisible then
  begin
    sprMotorCalculo.SetFocusWR;
    WRCalc.CalcBuild;
  end;

  if TabDespesaAdicional.ActuallyVisible then
  begin
    TFrmFrameDespesaFinanceira.CarregaFrame(FFrameDespesaFinanceira, PnlDespesaFinanceira, DSDespesa_Financeira, DS);
    VerificaSePrecisaAbrir(Despesa_Financeira);
  end;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmNF_Entrada.CalcSpr;
begin
  WRCalc.CalcBuild;
  WRCalc.SprCopiarFormula;
end;

procedure TFrmNF_Entrada.GridConsulta_ProdutoDblClick(Sender: TObject);
begin
  inherited;
  Ocultar(GridConsulta_Produto);
  if TabProdutos.ActuallyVisible then
  begin
    edtCodProduto.Text := Consulta_Produto.FieldByName('CODIGO').AsString;
    edtQuant_Compra.SetFocusWR;
  end;
end;

procedure TFrmNF_Entrada.GridConsulta_ProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key in [VK_RETURN, VK_UP, VK_DOWN] then
    GridConsulta_Produto.SetFocusWR;
  if Key = VK_RETURN then
    GridConsulta_ProdutoDblClick(Self);
  if Key = VK_ESCAPE then
    Ocultar(GridConsulta_Produto);
end;

procedure TFrmNF_Entrada.RecalculaTabelasDePreco;
var
  AAcrescimo, ADesconto: Double;
begin
  if not (Cadastro.State in [dsEdit, dsInsert]) then
    Exit;

  NF_Entrada_Tabela_Preco.First;
  while not NF_Entrada_Tabela_Preco.Eof do
  begin
    if NF_Entrada_Produtos.Locate('CODIGO', NF_Entrada_Tabela_Preco.FieldByName('CODNF_ENTRADA_PRODUTOS').AsInteger, []) then
    begin
      NF_Entrada_Tabela_Preco.Edit;
      if NF_Entrada_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'S' then
      begin
        // Se cair aqui recalcula
        AAcrescimo := (NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat/100) * NF_Entrada_Produtos.FieldByName('VALOR').AsFloat;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat);
        ADesconto := (NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat/100) * NF_Entrada_Produtos.FieldByName('VALOR').AsFloat;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat);
        NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat := NF_Entrada_Produtos.FieldByName('VALOR').AsFloat + AAcrescimo - ADesconto;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat));
      end
      else
      begin
        if NF_Entrada_Produtos.FieldByName('VALOR').AsFloat > NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat then
        begin
          // Aqui gera Desconto
          NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := 100-(NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat/NF_Entrada_Produtos.FieldByName('VALOR').AsFloat)*100;
          NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := 0;
        end
        else
        begin
          // Aqui gera Acréscimo
          NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := ((NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat/NF_Entrada_Produtos.FieldByName('VALOR').AsFloat) - 1)*100;
          NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := 0;
        end;
      end;
      NF_Entrada_Tabela_Preco.Post;
    end;
    NF_Entrada_Tabela_Preco.Next;
  end;
end;

procedure TFrmNF_Entrada.RecaregarProduto1Click(Sender: TObject);
Var ACodProduto:String;
  procedure LRecarregarDS(const ADSOrigem, ADSDestino: TDataSet; const ACamposIgnorados: array of string);
  begin
    while not ADSDestino.IsEmpty do
      ADSDestino.Delete;

    DSCopiarDataSetIguais(ADSOrigem, ADSDestino, ACamposIgnorados);
  end;
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  //Evento vinculado ao MenuItem "Recarregar Produto" e no botão de avisos "Recarregar Produto"
  VerificaSePodeAlteraDataSet(Cadastro);
  AlteraDataSet(NF_Entrada_Produtos);
  try
    if NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString <> '' then
      ACodProduto:= NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString
    else
      with TFrmProduto_Modal.Create(Self) do
        ACodProduto:= ShowConsultaModalItem(Tag_Produto_ProdutoSimples); //ACodProduto:=ConsultaModalFiltro(TConsuProduto,'');

    // Aqui tem que fazer pelo jeito novo, copia de dataSet, Manter a descrição que veio da nota em outro Campo
    PmPrincipal.ProcuraProduto(ACodProduto, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);

    if PmPrincipal.IsEmpty then
      Exit;

    //Adiciona a Composição
    if not PmPrincipal.Composicao.IsEmpty and (ShowMessageWR('Este produto já possui composição. Se você ' +
       'continuar, a composição deste produto será restaurada ao padrão do cadastro. Deseja continuar?', MB_ICONQUESTION) <> mrYes) then
     Exit;

    NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString:=ACodProduto;
    PmPrincipal.Produto.Edit;
    WRCalcMemoria.CarregaCustoEstoqueAnterior(PmPrincipal.Produto.FieldByName('CUSTO').AsFloat, PmPrincipal.Produto.FieldByName('ESTOQUE_ANTERIOR').AsFloat);
    DSCopiarCamposIguais(PmPrincipal.Produto, NF_Entrada_Produtos, ['CODIGO', 'CODNF_CST', 'CFOP_COMPRA', 'QUANT_COMPRA', 'RENDIMENTO', 'UN_SUBUNIDADE_DESCRICAO', 'QTDADEPECA_SUBUNIDADE', 'NF_VFRETE', 'NF_VICMS', 'NF_PICMS', 'NF_IPI_VIPI', 'NF_IPI_PIPI', 'NF_VICMSST', 'VOUTRO', 'VDESC', 'VALOR_COMPRA', 'TOTAL_COMPRA',
                                                                    'CODFABRICA',{ 'DESCRICAO',} 'UN_SUBUNIDADE', 'NF_DESCRICAO', 'NF_UNIDADE', 'NF_CODNF_NCM', 'NF_CODIGOEAN', 'CODNF_NCM', 'CODIGOEAN', 'NF_CODFABRICA', 'ORIGEM_MERCADORIA', 'CALC_VFRETE_CTE', 'CALC_VDIFAL']);

    if PmPrincipal.Produto.FieldByName('CODFABRICA').AsString <> '' then
      NF_Entrada_Produtos.FieldByName('CODFABRICA').AsString  := PmPrincipal.Produto.FieldByName('CODFABRICA').AsString;
    NF_Entrada_Produtos.FieldByName('CALC_VALOR_ORIGINAL').AsFloat  := PmPrincipal.Produto.FieldByName('VALOR').AsFloat;
//    if PmPrincipal.Produto.FieldByName('DESCRICAO').AsString <> '' then   // nO VINCULO VAI SEMPRE MATAR O ANTERIOR
//      NF_Entrada_Produtos.FieldByName('DESCRICAO').AsString   := PmPrincipal.Produto.FieldByName('DESCRICAO').AsString;
//    if PmPrincipal.Produto.FieldByName('UNIDADE').AsString <> '' then    // ISSO É ERIGOSO
//      NF_Entrada_Produtos.FieldByName('UNIDADE').AsString     := PmPrincipal.Produto.FieldByName('UNIDADE').AsString;
    if PmPrincipal.Produto.FieldByName('CODNF_NCM').AsString <> '' then
      NF_Entrada_Produtos.FieldByName('CODNF_NCM').AsString   := PmPrincipal.Produto.FieldByName('CODNF_NCM').AsString;

      NF_Entrada_Produtos.FieldByName('CODIGOEAN').AsString   := PmPrincipal.Produto.FieldByName('CODIGOEAN').AsString;

    if PmPrincipal.Produto.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'S' then
      NF_Entrada_Produtos.FieldByName('CALC_PMARGEM_CONTRIBUICAO').Value:= PmPrincipal.Produto.FieldByName('MARGEM').Value;

    NF_Entrada_Produtos.FieldByName('DT_ALTERACAO_CADASTRO').Value := PmPrincipal.Produto.FieldByName('DT_ALTERACAO').Value;

    {$REGION 'Ta faltando alguns campos, Avaliar no campos abaixo as opções'}
    {Registra a data de alteração do cadastro para verificar posteriormente se o cadastro foi alterado após
     a inclusão do produto na nota. Caso tenha sido alterado, o produto deve ser recarregado (atualizado)}

    //    Ta faltando alguns campos, Avaliar no campos abaixo as opções
        {
    //  ANFEntradaProdutos.FieldByName('CODIGO').AsInteger     := ADet.Prod.nItem;
    //  ANFEntradaProdutos.FieldByName('CODFABRICA').AsString  := ADet.Prod.cProd;
    //  ANFEntradaProdutos.FieldByName('DESCRICAO').AsString   := AnsiUpperCase(ADet.Prod.xProd);
    //  ANFEntradaProdutos.FieldByName('UNIDADE').AsString     := LeftStr(ADet.Prod.uCom, 3);
    //  ANFEntradaProdutos.FieldByName('CODNF_NCM').AsString   := ADet.Prod.NCM;
    //  ANFEntradaProdutos.FieldByName('CODIGOEAN').AsString   := ADet.Prod.cEAN

      if ADet.Prod.cEAN <> '' then
        ANFEntradaProdutos.FieldByName('NF_CODIGOEAN').AsString:= ADet.Prod.cEAN
      else
        ANFEntradaProdutos.FieldByName('NF_CODIGOEAN').AsString:= ADet.Prod.cEANTrib;
      ANFEntradaProdutos.FieldByName('NF_DESCRICAO').AsString := AnsiUpperCase(ADet.Prod.xProd);
      ANFEntradaProdutos.FieldByName('NF_CODNF_NCM').AsString  := ADet.Prod.NCM;
      ANFEntradaProdutos.FieldByName('NF_EXTIPI').AsString     := ADet.Prod.EXTIPI;
      ANFEntradaProdutos.FieldByName('NF_CODFABRICA').AsString := ADet.Prod.cProd;

      //CFOP Original e CFOP convertido de Saída do fornecedor para um CFOP de Entrada no sistema
      ANFEntradaProdutos.FieldByName('CFOP_COMPRA').AsString   := ADet.Prod.CFOP;
    //  ANFEntradaProdutos.FieldByName('CFOP').AsString        := NFeAlteraCFOPPara(ADet.Prod.CFOP, tnEntrada);  AVALIAR

      ANFEntradaProdutos.FieldByName('NF_UNIDADE').AsString    := LeftStr(ADet.Prod.uCom, 3);
      ANFEntradaProdutos.FieldByName('QUANT').AsFloat          := ADet.Prod.qCom;
      ANFEntradaProdutos.FieldByName('QTDADEPECA').AsFloat     := ADet.Prod.qCom;
      ANFEntradaProdutos.FieldByName('VALOR_COMPRA').AsFloat   := ADet.Prod.vUnCom;
      ANFEntradaProdutos.FieldByName('TOTAL').AsFloat          := ADet.Prod.vProd;
      ANFEntradaProdutos.FieldByName('VOUTRO').AsFloat         := ADet.Prod.vOutro;
      ANFEntradaProdutos.FieldByName('VDESC').AsFloat          := ADet.Prod.vDesc;
      ANFEntradaProdutos.FieldByName('NF_VSEG').AsFloat        := ADet.Prod.vSeg;
      ANFEntradaProdutos.FieldByName('NF_VFRETE').AsFloat      := ADet.Prod.vFrete;   }


    //    Recarrega a composição
    //    LRecarregarDS(PmPrincipal.Composicao,     NF_Entrada_Produtos, ['CODIGO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_COMPOSICAO']);

    //    LRecarregarDS(PmPrincipal.CustoExtra,     NF_Entrada_Produtos_Custo_Ad, ['CODIGO']);
    //    LRecarregarDS(PmTemp.CentroTrabalho, NF_Entrada_Centro_Trabalho, ['CODIGO']);
    {$ENDREGION}

    if PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString <> '' then
      NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString := PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString;

    CalculaRendimento(NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString, NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString, TDataSet(NF_Entrada_Produtos));

    WRCalc.AtualizaMarkup(Produto_Markup);
    //Vínculo do produto  Não precisa mais disso aqui
//    WRCalc.ValidaCampoMedidas('NF_VICMSST', NF_Entrada_Produtos.FieldByName('NF_VICMSST').AsFloat);
//    WRCalc.ValidaCampoMedidas('NF_IPI_VIPI', NF_Entrada_Produtos.FieldByName('NF_IPI_VIPI').AsFloat);
//    WRCalc.ValidaCampoMedidas('NF_VFRETE', NF_Entrada_Produtos.FieldByName('NF_VFRETE').AsFloat);
//    WRCalc.ValidaCampoMedidas('VOUTRO', NF_Entrada_Produtos.FieldByName('VOUTRO').AsFloat);
//    WRCalc.ValidaCampoMedidas('VDESC', NF_Entrada_Produtos.FieldByName('VDESC').AsFloat);


    // sÓ PARA CHAMA E COPIAR OS VALORES CORRETOS, O QUANT VAI SER RECALCULADO SEMPRE
    WRCalc.ValidaCampoMedidas('QUANT', 1);  /// TODO: Aqui revisar, pois vai dar errado

//    NF_Entrada_Produtos.Post;
  finally
    PmPrincipal.ProcuraProduto('', '', Empresa.FieldByName('CODIGO').AsInteger);
  end;
end;

procedure TFrmNF_Entrada.CalculaRendimento(AUn_SubUnidade_Descricao, CodProduto:String; ADataSet :TDataSet);
var
  QuerX :TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'Select * from PRODUTO_SUBUNIDADE where UN_SUBUNIDADE_DESCRICAO = :Un_SubUnidade_Descricao and CODPRODUTO = :CodProduto';
    QuerX.ParamByName('Un_SubUnidade_Descricao').AsString := AUn_SubUnidade_Descricao;
    QuerX.ParamByName('CodProduto').AsString := CodProduto;
    QuerX.Open;
    if QuerX.RecordCount = 0 then
    begin
    //oi
      QuerX.SQL.Text := 'Select * from UNIDADE_SUBUNIDADE where UN_SUBUNIDADE_DESCRICAO = :Un_SubUnidade_Descricao';
      QuerX.ParamByName('Un_SubUnidade_Descricao').AsString :=  AUn_SubUnidade_Descricao;
      QuerX.Open;
      if QuerX.RecordCount = 0 then
      begin
        ADataSet.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString  :=  AUn_SubUnidade_Descricao;
      end;
    end;
    if QuerX.RecordCount > 0 then
    begin
      ADataSet.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString  := QuerX.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
      ADataSet.FieldByName('QTDADEPECA').AsFloat                := QuerX.FieldByName('QTDADEPECA').AsFloat;
      ADataSet.FieldByName('COMP').AsFloat                      := QuerX.FieldByName('COMP').AsFloat;
      ADataSet.FieldByName('LARG').AsFloat                      := QuerX.FieldByName('LARG').AsFloat;
      ADataSet.FieldByName('ESPESSURA').AsFloat                 := QuerX.FieldByName('ESPESSURA').AsFloat;
      ADataSet.FieldByName('RENDIMENTO').AsFloat                := QuerX.FieldByName('RENDIMENTO').AsFloat;
    end;

    if ADataSet.FieldByName('RENDIMENTO').AsFloat = 0 then
      ADataSet.FieldByName('RENDIMENTO').AsFloat  := 1;

  //    WRCalc.DBProduto.FieldByName('QUANT_SUBUNIDADE').AsFloat   := Un_SubUnidade.FieldByName('QUANT').AsFloat;
    //      edtRendimento.Value := QuerX.FieldByName('QUANT').AsFloat;
//    WRCalc.calcbuild;
//
//    WRCalc.SprCopiarFormula;
  finally
    QuerX.Free;
  end;

end;

procedure TFrmNF_Entrada.ReplicarPlanodeContas1Click(Sender: TObject);
var
  ACodPlanodeContas: string;
  ATipoPagto: string;
  ACodConta: string;
  APoint: TBookmark;
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  //DONE: Não pode dar erro aqui, revise todas as entradas a essa função, senão não a chame de forma alguma
  // Nunca pode cair se pode, pois ja retirei o único acesso da tela, no poupMenu
  //Não localizei mais nenhuma chamada alem do botão direito, fiz os testes e coloquei o Refresh no final para melhor UI, e fiz os ajustes na validação do plano de contas;
  VerificaSePodeAlteraDataSet(Cadastro);
  if (NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString <> '')and(NF_Entrada_Parcelas.FieldByName('PLANOCONTAS').AsString <> '') then
  begin
    if ShowMessageWR('Deseja replicar o Dados da parcela "' + NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString + ' - ' + NF_Entrada_Parcelas.FieldByName('PLANOCONTAS').AsString +
                     '" para todas as Parcelas?', MB_ICONQUESTION) <> mrYes then
      Exit;
  end;
  ACodPlanodeContas := NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString;
  ATipoPagto := NF_Entrada_Parcelas.FieldByName('TIPOPAGTO').AsString;   // tipo
  ACodConta := NF_Entrada_Parcelas.FieldByName('CODCONTA').AsString;
  NF_Entrada_Parcelas.DisableControls;
  try
    APoint := NF_Entrada_Parcelas.GetBookmark;
    NF_Entrada_Parcelas.First;
    while not NF_Entrada_Parcelas.Eof do
    begin
      NF_Entrada_Parcelas.Edit;
      NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString := ACodPlanodeContas;
      NF_Entrada_Parcelas.FieldByName('TIPOPAGTO').AsString      := ATipoPagto;
      NF_Entrada_Parcelas.FieldByName('CODCONTA').AsString       := ACodConta;
      NF_Entrada_Parcelas.Post;
      NF_Entrada_Parcelas.Next;
    end;
  finally
    if not NF_Entrada_Parcelas.IsEmpty and (APoint <> nil) then
      NF_Entrada_Parcelas.GotoBookmark(APoint);
    NF_Entrada_Parcelas.EnableControls;
    NF_Entrada_Parcelas.refresh;
  end;
end;

procedure TFrmNF_Entrada.RestaurarPadroesGrid1Click(Sender: TObject);
begin
  inherited;
  GridTree.RestoreColumnsDefaults;
end;

procedure TFrmNF_Entrada.Acessoaconfiguraodecertificadodigital1Click(Sender: TObject);
begin
  inherited;
  with TFrmNFe.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmNF_Entrada.Apagarparcelas1Click(Sender: TObject);
begin
  PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if not NF_Entrada_Parcelas.IsEmpty then
    NF_Entrada_Parcelas.Delete;
end;

procedure TFrmNF_Entrada.ImportarXML1Click(Sender: TObject);
var
  Linha, Val: string;
  I, j, n: integer;
  ACodigo: string;
  ANFeRTXT: TNFeRTXT;
  Cod, Referencia, Descricao, Ref_Fornecedor, Cor, Tamanho, Aspa: String;
  AACBrNFe: TACBrNFe;
  AOpenDialog: TOpenDialog;
  ATxt: TStringList;
begin
  inherited;
  try
    ACodigo := '';
    AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
    AOpenDialog := TOpenDialog.Create(nil);
    try
      AOpenDialog.Options := AOpenDialog.Options - [ofAllowMultiSelect];
      AOpenDialog.FileName   := copy(ACodigo, Length(ACodigo) - 52, 52);
      AOpenDialog.Title      := 'Selecione a NFE';
      AOpenDialog.DefaultExt := '*-nfe.XML';
      AOpenDialog.Filter     := 'Arquivos TXT,XML(*.TXT,*.XML)|*.TXT;*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
      if ACodigo <> '' then
      begin
        AOpenDialog.InitialDir := ExtractFilePath(ACodigo);
        AOpenDialog.FileName   := ExtractFileName(ACodigo);
      end;
      if not AOpenDialog.Execute then
        Exit;
      AACBrNFe.NotasFiscais.Clear;
      //tenta TXT
      Application.ProcessMessages;
      AACBrNFe.NotasFiscais.Add;

      ANFeRTXT := TNFeRTXT.Create(AACBrNFe.NotasFiscais.Items[0].NFe);
      ATxt := TStringList.Create;
      try
        ANFeRTXT.CarregarArquivo(AOpenDialog.FileName);
        if not ANFeRTXT.LerTxt then
        begin
          ATxt.LoadFromFile(AOpenDialog.FileName);
          ACodigo := Copy(ATxt[0], 2, 20);
          if ACodigo = 'Listagem de produtos' then
          begin
            {$REGION 'Ler TXT'}
            i := 0;
            while i <= ATxt.Count do
            begin
              Linha      := Copy(ATxt[0], 1, 334);{RichText.Lines.Strings[i]};
              Cod        := Copy(Linha, 181, 14);
              Referencia := Copy(Linha, 198, 6);

              J    := 207;
              n    := 1;
              Aspa := '';
              while j <= Length(linha) do
              begin
                if (Linha[j]=','){or(linha[j]='"')} then
                begin
                  {if (Linha[j]=',')then} Inc(n);
                  Inc(J);
                end;
                case n of
                  1 : Descricao      := Descricao + Linha[j];
                  2 : Ref_Fornecedor := Ref_Fornecedor + Linha[j];
                  3 : Cor            := Cor + Linha[j];
                  4 : Tamanho        := Tamanho + Linha[j];
                  5, 6 : Val         := Val + Linha[j];
                end;
                Inc(J);

                if n = 7 then
                begin
                  with AACBrNFe.NotasFiscais.Items[n].NFe do
                  begin
                    with Det.Items[i] do
                    begin
                      Prod.nItem   := i;
                      Prod.cProd   := AnsiReplaceStr(Cod,'"','');
                      Prod.xProd   := AnsiReplaceStr(Descricao,'"','')+' '+AnsiReplaceStr(Cor,'"','')+' '+AnsiReplaceStr(Tamanho,'"','');
                      Prod.uCom    := Tamanho;
                      Prod.qCom    := 1;
                      Prod.vUnCom  := StrtoCurr(Val)/100;
                      Prod.vProd   := StrtoCurr(Val)/100;
                      Prod.uTrib   := Tamanho;
                      Prod.qTrib   := 1;
                      Prod.vUnTrib := StrtoCurr(Val)/100;
                      if n = 7 then
                        n := 1
                    end;
                  end;
                end;
              end;
              inc(i);
            end;
            {$ENDREGION}
          end else
          begin             //tenta XML
            AACBrNFe.NotasFiscais.Clear;
            try
              AACBrNFe.NotasFiscais.LoadFromFile(AOpenDialog.FileName);
            except
              ShowMessageWR('Arquivo NFe Inválido');
              Exit;
            end;
          end;
        end;
      finally
        ANFeRTXT.Free;
        ATxt.Free;
      end;

      ACodigo := DM_NFEntradaImportarNota(AACBrNFe);
    finally
      AOpenDialog.Free;
      AACBrNFe.Free;
    end;
  finally
  end;
end;

function TFrmNF_Entrada.DM_NFEntradaImportarNota(AACBrNFe: TACBrNFe; ACodXMLEntradaParaVincular: Integer = 0): string;
var
  APessoaFornecedor: TPessoaRetorno;
  I, J: Integer;
  ANFe: TNFe;
  AMargem : Real;
  ACodProduto: String;
  AFrmAguarde: TFrmAguarde;
  AAcrescimo, ADesconto: Double;
begin
  APessoaFornecedor := nil;

  AFrmAguarde := TFrmAguarde.Create(self);
  try
    for i := 0 to AACBrNFe.NotasFiscais.Count - 1 do
    begin
      ANFe := AACBrNFe.NotasFiscais.Items[i].NFe;

      {$IFDEF COMERCIAL}
      //Importa Fornecedor da Nota;
      APessoaFornecedor :=  TFrame_Pessoas_Mestre.BuscaEImportaFornecedor(ANFe);
      {$ENDIF}

      //Verifica se esta nota já foi importada
      Result :=  NF_EntradaVerificaNotaFiscalCadastrada(WRCalc.DBVendaOuCompra, ANFe.ide.nNF, '', APessoaFornecedor.Codigo);

      if Result <> '' then
      begin
        CloseOpen_AbrirRegistro(Result);
        Continue;
      end;
      AFrmAguarde.Mensagem := 'Importando XML da NF-e...';
      AFrmAguarde.Show;

      //Importa a nota
//      WRCalc.DBVendaOuCompra.Insert;
      btnNovo.Click;
      PmPrincipal.LerDadosNFEntrada(WRCalc.DBVendaOuCompra, ANFe);
      WRCalc.DBVendaOuCompra.FieldByName('CODNF_ENTRADA_MANIFESTO').AsInteger      := ACodXMLEntradaParaVincular;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := APessoaFornecedor.Codigo;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := APessoaFornecedor.Tipo.Codigo;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoaFornecedor.Sequencia;
      WRCalc.DBVendaOuCompra.FieldByName('ATIVO').AsString := 'S';

      AFrmAguarde.Mensagem := 'Importando Produtos, Procurando Vinculos, e atualizando os preços...';
      AFrmAguarde.ProgressoMaximo := ANFe.Det.Count;
      //Importa os produtos
      NF_Entrada_Produtos.DisableControls;
      for J := 0 to ANFe.Det.Count - 1 do
      begin
//        if ANFe.Det.Items[J].Prod.IndTot = 0 then    // POR ENQUANTO ESTA SENDO IGINORADO ATÉ ALGUM CLIENTE RECLAMAR
//          Continue;
        ACodProduto    := NF_EntradaCodProdutoFromCodFabrica(NF_Entrada_Produtos, ANFe.Det.Items[J].Prod.cProd, APessoaFornecedor.Codigo);
        PmPrincipal.ProcuraProduto(ACodProduto , WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);
        if PmPrincipal.Produto.IsEmpty then
        begin
          PmPrincipal.Produto.Edit;
//          ConfigCamposForm.PreencheValoresIniciaisDataSet(PmPrincipal.Produto,'PRODUTO');
          WREventosCadastro.Regra_ValorInicial(PmPrincipal.Produto, 'PRODUTO');
         // WRCalc.DBProduto.FieldByName('MARGEM').AsFloat := 100;
        end;
        //As informações de Peso e Volumes não vem discriminado por produto na nota, apenas o total

        WRCalc.SprFechaMemTables;
        WRCalc.CalcBuild;
//        NF_Entrada_Produtos.CachedUpdates:=True;
        NF_Entrada_Produtos.Insert;
        NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString    := ACodProduto;
        NF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsString := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;

        PmPrincipal.LerDadosProduto(NF_Entrada_Produtos, ANFe.Det.Items[J]);
       // DataSetCopiaRecursivo(PmPrincipal.Composicao, WRCalc.DBProduto, Null, ['CODIGO', 'CODNF_ENTRADA_PRODUTOS'], PmPrincipal.TreeListComposicao.GetTreeList);  //DataSetCopiaRecursivo
//        DSCopiarDataSetIgnorando(PmPrincipal.CustoExtra, WRCalc.DBCustoExtra, ['CODIGO', 'CODPRODUTO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_PRODUTO']);

        DSCopiarCamposIguais(PmPrincipal.Produto, NF_Entrada_Produtos, ['CODIGO', 'CODNF_CST', 'CFOP_COMPRA', 'QUANT_COMPRA', 'NF_VFRETE', 'NF_VICMS', 'NF_PICMS', 'NF_IPI_VIPI', 'NF_IPI_PIPI', 'NF_PIS_PPIS', 'NF_PIS_VPIS', 'NF_VICMSST', 'VOUTRO', 'VDESC', 'VALOR_COMPRA', 'TOTAL_COMPRA',
                                                                        'CODFABRICA',{ 'DESCRICAO',} 'NF_DESCRICAO', 'NF_UNIDADE', 'NF_CODNF_NCM', 'NF_CODIGOEAN', {'CODNF_NCM', 'CODIGOEAN',} 'NF_CODFABRICA',
                                                                        'NF_COFINS_VCOFINS', 'ORIGEM_MERCADORIA', 'QTDADEPECA_SUBUNIDADE', 'QUANT_RENDIMENTO', 'UN_SUBUNIDADE_DESCRICAO','UN_SUBUNIDADE']);


       if not(PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').IsNull) then
         NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString := PmPrincipal.Produto.FieldByName('UN_PADRAO_COMPRA').AsString;

       CalculaRendimento(NF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString ,NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString, TDataSet(NF_Entrada_Produtos));

        NF_Entrada_Produtos.FieldByName('CALC_VALOR_ORIGINAL').Value  := NF_Entrada_Produtos.FieldByName('VALOR').Value;
        NF_Entrada_Produtos.FieldByName('ORDEM').AsInteger := J+2;

//        //Vínculo do produto
//        WRCalc.ValidaCampoImpostos('NF_VICMSST', ANFe.Det[J].Imposto.ICMS.vICMSST );
//        WRCalc.ValidaCampoImpostos('NF_IPI_VIPI', ANFe.Det[J].Imposto.IPI.vIPI );
//        WRCalc.ValidaCampoImpostos('NF_VFRETE', ANFe.Det[J].Prod.vFrete );
//        WRCalc.ValidaCampoImpostos('VOUTRO', ANFe.Det[J].Prod.vOutro );
//        WRCalc.ValidaCampoImpostos('VDESC', ANFe.Det[J].Prod.vDesc );
//        WRCalc.ValidaCampoImpostos('NF_VFCPUFDEST', ANFe.Det[J].Imposto.ICMS.vFCP);


        //       { WRCalc.DBVendaOuCompra.FieldByName('PODE_PRE_COPIAR_DADOS_IMPORTADOS').AsString:= TConfig.ReadString('PODE_PRE_COPIAR_DADOS_IMPORTADOS');
        //        if WRCalc.DBProduto.FieldByName('PODE_PRE_COPIAR_DADOS_IMPORTADOS').AsString = 'S' then
        begin
          if NF_Entrada_Produtos.FieldByName('CODFABRICA').AsString = '' then
            NF_Entrada_Produtos.FieldByName('CODFABRICA').AsString  := NF_Entrada_Produtos.FieldByName('NF_CODFABRICA').AsString;
//
          if NF_Entrada_Produtos.FieldByName('DESCRICAO').AsString = '' then
            NF_Entrada_Produtos.FieldByName('DESCRICAO').AsString   := NF_Entrada_Produtos.FieldByName('NF_DESCRICAO').AsString;

          if NF_Entrada_Produtos.FieldByName('UNIDADE').AsString = '' then
            NF_Entrada_Produtos.FieldByName('UNIDADE').AsString     := NF_Entrada_Produtos.FieldByName('NF_UNIDADE').AsString;

          if NF_Entrada_Produtos.FieldByName('CODNF_NCM').AsString = '' then
            NF_Entrada_Produtos.FieldByName('CODNF_NCM').AsString   := NF_Entrada_Produtos.FieldByName('NF_CODNF_NCM').AsString;

          if NF_Entrada_Produtos.FieldByName('CODIGOEAN').AsString = '' then
            NF_Entrada_Produtos.FieldByName('CODIGOEAN').AsString   := NF_Entrada_Produtos.FieldByName('NF_CODIGOEAN').AsString;

//          if NF_Entrada_Produtos.FieldByName('TEM_LOTE').AsString = '' then
//            NF_Entrada_Produtos.FieldByName('TEM_LOTE').AsString := 'N';
          if (tconfig.readstring('NF_ENTRADA_PODEVENDER') = 'S') or (tconfig.readstring('NF_ENTRADA_PODEVENDER') = 'N') then
            NF_Entrada_Produtos.FieldByName('PODE_SER_VENDIDO').AsString := tconfig.readstring('NF_ENTRADA_PODEVENDER');


          if NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').IsNull then
          begin
            if TConfig.ReadInteger('NF_ENTRADA_PRODUTO_TIPO') > 0 then
            begin
              NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').AsInteger := TConfig.ReadInteger('NF_ENTRADA_PRODUTO_TIPO');
            end;
          end;

          if NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').IsNull then
          begin
            if TConfig.ReadString('NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL') <> '' then
            begin
              NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString := TConfig.ReadString('NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL');
            end;
          end;

          NF_EntradaProdutoCarregaCustoEstoqueAnterior(NF_Entrada_Produtos, StrCodigoToCodEmpresa(WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString));

          PmPrincipal.TabelaPreco.First;
          while not PmPrincipal.TabelaPreco.Eof do
          begin
            NF_Entrada_Tabela_Preco.Insert;
            DSCopiarCamposIguais(PmPrincipal.TabelaPreco, NF_Entrada_Tabela_Preco, []);
            NF_Entrada_Tabela_Preco.FieldByName('CODNF_ENTRADA').AsString  :=  Cadastro.FieldByName('CODIGO').AsString;
            if NF_Entrada_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'S' then
            begin
              // Se cair aqui recalcula
              AAcrescimo := (NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat/100) * NF_Entrada_Produtos.FieldByName('VALOR').AsFloat;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat);
              ADesconto := (NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat/100) * NF_Entrada_Produtos.FieldByName('VALOR').AsFloat;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat);
              NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat := NF_Entrada_Produtos.FieldByName('VALOR').AsFloat + AAcrescimo - ADesconto;//(NF_Entrada_Produtos.FieldByName('QUANT_RENDIMENTO').AsFloat*NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').AsFloat));
            end
            else
            begin
              if NF_Entrada_Produtos.FieldByName('VALOR').AsFloat > NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat then
              begin
                // Aqui gera Desconto
                NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := (NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat/NF_Entrada_Produtos.FieldByName('VALOR').AsFloat)*100;
                NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := 0;
              end
              else
              begin
                // Aqui gera Acréscimo
                NF_Entrada_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat := ((NF_Entrada_Tabela_Preco.FieldByName('VALOR').AsFloat/NF_Entrada_Produtos.FieldByName('VALOR').AsFloat) - 1)*100;
                NF_Entrada_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat := 0;
              end;
            end;
            NF_Entrada_Tabela_Preco.Post;
            PmPrincipal.TabelaPreco.Next;
          end;
        end;

        WRCalc.AtualizaMarkup(Produto_Markup);

        NF_Entrada_Produtos.Post;
        AFrmAguarde.AvancarProgresso;
      end;
      //Importa as parcelas
      if ANFe.Cobr.Dup.Count = 0 then
      begin
        NF_Entrada_Parcelas.Insert;
        NF_Entrada_Parcelas.FieldByName('CODNF_ENTRADA').AsString := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
        NF_Entrada_Parcelas.FieldByName('CODIGO').AsInteger       := 1;
        NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime      := IfThen((ANFe.Ide.indPag = ipVista), ANFe.Ide.dEmi, (ANFe.Ide.dEmi + 30));
        NF_Entrada_Parcelas.FieldByName('VALOR').AsFloat          := ANFe.Total.ICMSTot.vNF;
        NF_Entrada_Parcelas.FieldByName('TIPO').AsString          := 'A PAGAR';
        NF_Entrada_Parcelas.FieldByName('DT_COMPETENCIA').AsDateTime := WRCalc.DBVendaOuCompra.FieldByName('DT_NOTA').AsDateTime;
        NF_Entrada_Parcelas.Post;
      end else
      begin
        for J := 0 to ANFe.Cobr.Dup.Count - 1 do
        begin
          NF_Entrada_Parcelas.Insert;
          NF_Entrada_Parcelas.FieldByName('CODIGO').AsInteger       := J + 1;
          NF_Entrada_Parcelas.FieldByName('CODNF_ENTRADA').AsString := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
          NF_Entrada_Parcelas.FieldByName('CODCONTA').AsString      := TConfig.ReadString('NF_PARCELAS_CONTA_PADRAO');
          NF_Entrada_Parcelas.FieldByName('DT_COMPETENCIA').AsDateTime := WRCalc.DBVendaOuCompra.FieldByName('DT_NOTA').AsDateTime;
          PmPrincipal.LerDadosParcelas(NF_Entrada_Parcelas, ANFe, ANFe.Cobr.Dup.Items[J]);
          NF_Entrada_Parcelas.Post;
        end;
      end;

//      AWRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString:= 'S';// cOLOCAR AQUI AS TCONFIG
      if WRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString = 'S' then
        WRCalc.RecalcularTodosOsProdutos; // Não deveria estar funcionando
      NF_Entrada_Produtos.EnableControls;

      NF_Entrada_Produtos.Refresh;
      WRCalc.SprFechaMemTables;

      WRCalc.CalcBuild;
      WRCalc.SprCopiarFormula;
      WRCalc.SuperCalc;  // TEM QUE SOMAR     Aqui não precisa, mai sdeixa iso aqui comentado por enquanto, sem isso ee tras todos os impostos corretos

      Application.ProcessMessages;
//      NF_Entrada_Produtos.ApplyUpdates;
//      NF_Entrada_Produtos.CommitUpdates;
//      FDSchemaAdapter1.ApplyUpdates;

      Application.ProcessMessages;
      Result := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
//      Cadastro.FieldByName('CODUSUARIO_MODIFICOU').AsInteger := CodigoUsuario; //<<<<<<<< isso marca o último responsável
      btnConfirmar.Click;
    end;
  finally
    PmPrincipal.ProcuraProduto('', '', Empresa.FieldByName('CODIGO').AsInteger);
    AFrmAguarde.Free;
    APessoaFornecedor.Free;
  end;
end;

function TFrmNF_Entrada.DM_NFEntradaImportarCTe(AACBrCTe: TACBrCTe; ACodXMLEntradaParaVincular: Integer = 0): string;
var
  APessoaFornecedor: TPessoaRetorno;
  I, J: Integer;
  ACTe: TCTe;
  AMargem : Real;
  ACodProduto: String;
  AFrmAguarde: TFrmAguarde;
  QuerX, QuerY: TFDQuery;
begin
  APessoaFornecedor := nil;

  AFrmAguarde := TFrmAguarde.Create(self);
  try
    for i := 0 to AACBrCTe.Conhecimentos.Count -1 do
    begin
      ACTe :=  AACBrCTe.Conhecimentos.Items[i].CTe;

      {$IFDEF COMERCIAL}
      //Importa Fornecedor da Nota;
      APessoaFornecedor :=  TFrame_Pessoas_Mestre.BuscaEImportaFornecedorCTe(ACTe);
      {$ENDIF}

      //Verifica se esta nota já foi importada
      Result :=  NF_EntradaVerificaNotaFiscalCadastrada(WRCalc.DBVendaOuCompra, ACTe.ide.nCT, '', APessoaFornecedor.Codigo);

      if Result <> '' then
      begin
        CloseOpen_AbrirRegistro(Result);
        Continue;
      end;
      AFrmAguarde.Mensagem := 'Importando XML da NF-e...';
      AFrmAguarde.Show;

      //Importa a nota
      WRCalc.DBVendaOuCompra.Insert;

      btnNovo.Click;
      PmPrincipal.LerDadosCTeEntrada(WRCalc.DBVendaOuCompra, ACTe);
      WRCalc.DBVendaOuCompra.FieldByName('CODNF_ENTRADA_MANIFESTO').AsInteger      := ACodXMLEntradaParaVincular;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := APessoaFornecedor.Codigo;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := APessoaFornecedor.Tipo.Codigo;
      WRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoaFornecedor.Sequencia;
      WRCalc.DBVendaOuCompra.FieldByName('ATIVO').AsString := 'S';

      //Importa os produtos
      NF_Entrada_Produtos.DisableControls;
//        if ANFe.Det.Items[J].Prod.IndTot = 0 then    // POR ENQUANTO ESTA SENDO IGINORADO ATÉ ALGUM CLIENTE RECLAMAR
//          Continue;
        if PmPrincipal.Produto.IsEmpty then
        begin
          PmPrincipal.Produto.Edit;
//          ConfigCamposForm.PreencheValoresIniciaisDataSet(PmPrincipal.Produto,'PRODUTO');
          WREventosCadastro.Regra_ValorInicial(PmPrincipal.Produto, 'PRODUTO');
         // WRCalc.DBProduto.FieldByName('MARGEM').AsFloat := 100;
        end;
        //As informações de Peso e Volumes não vem discriminado por produto na nota, apenas o total

        WRCalc.SprFechaMemTables;
        WRCalc.CalcBuild;
//        NF_Entrada_Produtos.CachedUpdates:=True;
        NF_Entrada_Produtos.Insert;
        NF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsString       := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
        NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString          := 'TRANSPORTE';
        NF_Entrada_Produtos.FieldByName('DESCRICAO').AsString           := 'Serviço de Transporte';
        NF_Entrada_Produtos.FieldByName('NF_DESCRICAO').AsString        := 'Serviço de Transporte';
        NF_Entrada_Produtos.FieldByName('UNIDADE').AsString             := 'UN';
        NF_Entrada_Produtos.FieldByName('NF_UNIDADE').AsString             := 'UN';
        NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat         := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Produtos.FieldByName('CALC_VALOR_ORIGINAL').Value    := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Produtos.FieldByName('CUSTO').Value                  := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Produtos.FieldByName('TOTAL').Value                  := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Produtos.FieldByName('QUANT').Value                  := 1;
        NF_Entrada_Produtos.FieldByName('QUANT_COMPRA').Value           := 1;
        NF_Entrada_Produtos.FieldByName('TOTAL_COMPRA').Value           := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Produtos.FieldByName('QTDADEPECA').Value             := 1;
        NF_Entrada_Produtos.FieldByName('COMP').Value                   := 1;
        NF_Entrada_Produtos.FieldByName('LARG').Value                   := 1;
        NF_Entrada_Produtos.FieldByName('ESPESSURA').Value              := 1;
        NF_Entrada_Produtos.FieldByName('QUANT_SUBUNIDADE').Value       := 1;
        NF_Entrada_Produtos.FieldByName('QTDADEPECA_SUBUNIDADE').Value  := 1;
        NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').Value  := 'PRINCIPAL';
        NF_Entrada_Produtos.FieldByName('CODPRODUTO_TIPO').AsInteger    := 2;
        NF_Entrada_Produtos.FieldByName('PRODUTO_TIPO').Value           := 'SERVIÇO';
        NF_Entrada_Produtos.FieldByName('DT_ALTERACAO').AsDateTime      := DataHoraSys;
        NF_Entrada_Produtos.FieldByName('CALC_QPESO_BRUTO').AsFloat     := WRCalc.DBVendaOuCompra.FieldByName('NF_PESO_BRUTO').AsFloat;
        NF_Entrada_Produtos.FieldByName('CALC_QPESO_BRUTO_COMPRA').AsFloat:= WRCalc.DBVendaOuCompra.FieldByName('NF_PESO_BRUTO').AsFloat;
        NF_Entrada_Produtos.FieldByName('CALC_QPESO_BRUTO_TOTAL').AsFloat:= WRCalc.DBVendaOuCompra.FieldByName('NF_PESO_BRUTO').AsFloat;
        NF_Entrada_Produtos.FieldByName('NF_VBC').AsFloat               := WRCalc.DBVendaOuCompra.FieldByName('NF_VBC').AsFloat;
        NF_Entrada_Produtos.FieldByName('NF_VICMS').AsFloat             := WRCalc.DBVendaOuCompra.FieldByName('NF_VICMS').AsFloat;
        NF_Entrada_Produtos.FieldByName('NF_VBCST').AsFloat             := WRCalc.DBVendaOuCompra.FieldByName('NF_VBCST').AsFloat;
        NF_Entrada_Produtos.FieldByName('NF_VICMSST').AsFloat           := WRCalc.DBVendaOuCompra.FieldByName('NF_VICMSST').AsFloat;
        NF_Entrada_Produtos.FieldByName('NF_CODNF_NCM').AsString        := '';
        NF_Entrada_Produtos.FieldByName('NF_CODFABRICA').AsString       := '';
        NF_Entrada_Produtos.FieldByName('NF_CODIGOEAN').AsString        := '';
        NF_Entrada_Produtos.FieldByName('ORDEM').AsInteger := 2;

        WRCalc.AtualizaMarkup(Produto_Markup);

        NF_Entrada_Produtos.Post;
      end;

      //Importa as parcelas
        NF_Entrada_Parcelas.Insert;
        NF_Entrada_Parcelas.FieldByName('CODNF_ENTRADA').AsString := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
        NF_Entrada_Parcelas.FieldByName('DOCUMENTO').AsString     := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
        NF_Entrada_Parcelas.FieldByName('CODIGO').AsInteger       := 1;
        NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime      := DataHoraSys;
        NF_Entrada_Parcelas.FieldByName('VALOR').AsFloat          := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        NF_Entrada_Parcelas.FieldByName('TIPO').AsString          := 'A PAGAR';
        NF_Entrada_Parcelas.Post;

//      AWRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString:= 'S';// cOLOCAR AQUI AS TCONFIG
      if WRCalc.DBVendaOuCompra.FieldByName('PODE_RATEAR_FRETE_DESC_OUTRO').AsString = 'S' then
        WRCalc.RecalcularTodosOsProdutos; // Não deveria estar funcionando
      NF_Entrada_Produtos.EnableControls;

      NF_Entrada_Produtos.Refresh;
      WRCalc.SprFechaMemTables;

      WRCalc.CalcBuild;
      WRCalc.SprCopiarFormula;
      WRCalc.SuperCalc;  // TEM QUE SOMAR     Aqui não precisa, mai sdeixa iso aqui comentado por enquanto, sem isso ee tras todos os impostos corretos

      Application.ProcessMessages;
//      NF_Entrada_Produtos.ApplyUpdates;
//      NF_Entrada_Produtos.CommitUpdates;
//      FDSchemaAdapter1.ApplyUpdates;

      Application.ProcessMessages;
      Result := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
//      Cadastro.FieldByName('CODUSUARIO_MODIFICOU').AsInteger := CodigoUsuario; //<<<<<<<< isso marca o último responsável
      btnConfirmar.Click;

      QuerX := GeraFDQuery;
      QuerX.SQL.Text := 'SELECT CODIGO FROM NF_ENTRADA WHERE NF_CHAVE = :ChaveReferencia';
      QuerX.ParamByName('ChaveReferencia').AsString := ACTe.infCTeNorm.infDoc.infNFe[0].chave;
      QuerX.Open;

      if not QuerX.IsEmpty then
      begin
        btnAlterar.Click;

//        QuerY := GeraFDQuery(TransaFD);
//        QuerY.SQL.Text := 'SELECT * FROM NF_ENTRADA_VINCULOS';
//        QuerY.Open;
        try
//          NF_Entrada_Vinculos.Open;
          NF_Entrada_Vinculos.Insert;
          NF_Entrada_Vinculos.FieldByName('CODVINCULO').Value := GetProximoCodigoGen('CR_NF_ENTRADA_VINCULOS');
          NF_Entrada_Vinculos.FieldByName('CODNF_ENTRADA_PRINCIPAL').AsString := QuerX.FieldByName('CODIGO').AsString;
          NF_Entrada_Vinculos.FieldByName('CODNF_ENTRADA_VINCULADA').AsString := WRCalc.DBVendaOuCompra.FieldByName('CODIGO').AsString;
          NF_Entrada_Vinculos.FieldByName('TIPO_VINCULO').AsString := 'TRANSPORTE';
          NF_Entrada_Vinculos.FieldByName('PORCENTAGEM_RATEIO').AsInteger := 100;
          NF_Entrada_Vinculos.Post;

          CalculaCustosVinculados;
          btnConfirmar.Click;
        except
          on E:Exception do
          begin
            ShowMessage(E.Message);
            btnCancelar.Click;
          end;
        end;
      end;

  finally
    PmPrincipal.ProcuraProduto('', '', Empresa.FieldByName('CODIGO').AsInteger);
    AFrmAguarde.Free;
    APessoaFornecedor.Free;
    QuerX.Free;
    QuerY.Free;
  end;
end;

procedure ProdutosProdutoAfetadosIniciar(ANF_Entrada_Produtos_Afetados : TFDQuery; ATransa: TFDTransaction; ACodProduto: String; AAtualizaPreco: Boolean; AFrmProduto_Frame: TFrame_Produto_Mestre);  // Pode ser executada dentro da tela do Entrada_produto
var                                                                                             // Deve ser sempre executada na atualização
  APoint: TBookmark;
  QuerX: TFDQuery;
begin
  ANF_Entrada_Produtos_Afetados.DisableControls;
  try
    APoint := ANF_Entrada_Produtos_Afetados.GetBookmark;
    ANF_Entrada_Produtos_Afetados.Open;

    QuerX := GeraFDQuery(ATransa);
    try
      QuerX.SQL.Text := 'select distinct P.CODIGO, P.DESCRICAO, P.CUSTO, P.VALOR ' +
                         'from PRODUTO_COMPOSICAO PC ' +
                         'left join PRODUTO P on (P.CODIGO = PC.CODPRODUTO_COMPOSICAO) ' +
                         'where (PC.CODPRODUTO = :CodProduto)';
      QuerX.ParamByName('CodProduto').Value := ACodProduto;
      QuerX.Open;
      QuerX.FetchAll;

//      DELETA TUDO E COMEÇA DENOVO;
      while NOT ANF_Entrada_Produtos_Afetados.Eof do
        ANF_Entrada_Produtos_Afetados.Delete;

      ANF_Entrada_Produtos_Afetados.Refresh;
      // Aqui deve criar a clase e devolver o form

      AguardeBegin;   // aqui deve iniciar o agurade
      AguardeProgressoMaximo(QuerX.RecordCount);
      AguardeMensagem('Aguarde enquanto os produtos são atualizados...');
      QuerX.First;
      while not QuerX.Eof do
      begin
         ANF_Entrada_Produtos_Afetados.Insert;
            // fAZ ISSO NO BEFFOR DA TABELA
//         ANF_Entrada_Produtos_Afetados.FieldByName('CODIGO').AsFloat                := proximocod;
//         ANF_Entrada_Produtos_Afetados.FieldByName('CODNF_ENTRADA').AsFloat         := ANF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsFloat;
//         ANF_Entrada_Produtos_Afetados.FieldByName('CODNF_ENTRADA_PRODUTOS').AsFloat:= ANF_Entrada_Produtos.FieldByName('CODNF_ENTRADA_PRODUTOS').AsFloat;

         with AFrmProduto_Frame do
         try
           Hide;
           CloseOpen_AbrirRegistro(QuerX.FieldByName('CODIGO').AsString);

           ANF_Entrada_Produtos_Afetados.FieldByName('CODPRODUTO').AsString      := Cadastro.FieldByName('CODIGO').AsString;
           ANF_Entrada_Produtos_Afetados.FieldByName('DESCRICAO').AsString        := Cadastro.FieldByName('DESCRICAO').AsString;
           ANF_Entrada_Produtos_Afetados.FieldByName('CUSTO_ANTERIOR').AsFloat   := Cadastro.FieldByName('CUSTO').AsFloat;
           ANF_Entrada_Produtos_Afetados.FieldByName('VALOR_ANTERIOR').AsFloat   := Cadastro.FieldByName('VALOR').AsFloat;
           WRCalc.DBComposicao.Refresh;
           WRCalc.AtualizaOsPrecosComposicao(ATransa);
           if Cadastro.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'N' then //QUANDO A MARGEM NÂO É FIXA ELA VARIA DEIXANDO O VALOR NO PRODUTO ORIGINAL, MAS MOSTRANDO O QUANDO PERDE POR
             WRCalc.ProdutoAlterarValor(ANF_Entrada_Produtos_Afetados.FieldByName('VALOR_ANTERIOR').AsFloat); //REALIZAR ESSA AÇÂO.
           ANF_Entrada_Produtos_Afetados.FieldByName('CUSTO').AsFloat            := Cadastro.FieldByName('CUSTO').AsFloat;
           ANF_Entrada_Produtos_Afetados.FieldByName('VALOR').AsFloat            := Cadastro.FieldByName('VALOR').AsFloat;

           if AAtualizaPreco then
           begin
             ANF_Entrada_Produtos_Afetados.FieldByName('ATUALIZAR_VALOR').AsString := 'S';
             Cadastro.Post;
             Cadastro.Transaction.Commit;
           end
           else
           begin
             btnCancelar.Click
           end;

//           ANF_Entrada_Produtos_Afetados.FieldByName('ATUALIZAR_VALOR').AsString := AConfirma_S_OU_N;
//           if ANF_Entrada_Produtos_Afetados.FieldByName('ATUALIZAR_VALOR').AsString = 'N' then
//             btnCancelar.Click
//           else
//           begin
//             Cadastro.Post;
//             Cadastro.Transaction.Commit;
//           end;


//             btnConfirmar.Click;

         finally

         end;
         ANF_Entrada_Produtos_Afetados.Post;

      // PEGA O VALOR ANTIGO
      // AQUI DE CRIAR O CADASTRO DE PRODUTO,
      // ABRIR E RECALCULAR O PREÇO DO PRODUTO, CALCbUILD, SRPcOPIA

      // PODE APERTAR O BOTÃO btnAtualizarPrecosClick, LA ELE APAGA ATÉ A DIFERENÇA LANÇADA MANUALMENTE. ISSO É IMPORTANTE

        AguardeAvancarProgresso;
        QuerX.Next;
      end;
    finally
      QuerX.Free;
//      FrmProduto.Free;
      AguardeEnd;
    end;
    if ANF_Entrada_Produtos_Afetados.BookmarkValid(APoint) then
      ANF_Entrada_Produtos_Afetados.GotoBookmark(APoint);
  finally
    ANF_Entrada_Produtos_Afetados.EnableControls;
  end;
end;

function NF_EntradaVerificaNotaFiscalCadastrada(ATransa: TComponent; ANumNF: Integer; const ACodigo, ACodFornecedor: string): string;
var
  QuerX: TWRDataSet;
begin
  Result := '';
  QuerX := TWRDataSet.Create(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO ' +
                      'from NF_ENTRADA ' +
                      'where (NUN_NF = :NumNF) ' +
                      '      and (PESSOA_RESPONSAVEL_CODIGO = :CodFonecedor) ' +
                      '      and (CODIGO <> :Codigo) ' +
                      '      and (ATIVO = ''S'')';
    QuerX.ParamByName('NumNF').AsInteger       := ANumNF;
    QuerX.ParamByName('CodFonecedor').AsString := ACodfornecedor;
    QuerX.ParamByName('Codigo').AsString       := ACodigo;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      Result := QuerX.Fields[0].AsString;
      {$IFDEF DEBUG}
      if ShowMessageWR('Nota Fiscal: ' + ANumNF.ToString + sLineBreak +
                       'já foi Cadastrada para o ' + sLineBreak + 'Fornecedor: ' +
                       Procura('RAZAOSOCIAL', 'PESSOAS', ACodfornecedor) + sLineBreak +
                       'DEBUG: Continuar e Cadastrar novamente?', MB_ICONQUESTION) = mrYes then
        Result := '';
      {$ELSE}
      ShowMessageWR('Nota Fiscal: ' + ANumNF.ToString + sLineBreak +
                    'já foi Cadastrada para o ' + sLineBreak + 'Fornecedor: ' +
                    Procura('RAZAOSOCIAL', 'PESSOAS', ACodfornecedor));
      {$ENDIF}
    end;
  finally
    QuerX.Free;
  end;
end;

{$REGION 'PROCEDURES MOVIDAS PARA SERVICE.COMPRA'}
//procedure TFrmNF_Entrada.DoAtualizaEstoque;
//var
//  ACodProduto: string;
//  APoint: TBookmark;
//  AQuant: Double;
//  ACodProduto_Movimento: Integer;
//begin
//  inherited;
//  if Cadastro.FieldByName('ENVIA_ESTOQUE').AsString = 'N' then
//  begin
//    Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString := 'N';
//    Exit;
//  end;
//  try
//    if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
//    begin
//      {$REGION 'INCLUI PRODUTO NO ESTOQUE'}
//      if cbxTipo.Text = 'TRANSFERÊNCIA' then
//      begin
//        if Cadastro.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 0 then //Transferência entre estoques
//        begin
//          if (Cadastro.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString.Trim = '') or (Cadastro.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString.Trim = '') then
//          begin
//            ShowMessageWR('Selecione os estoques de Origem e Destino para fazer a transferência.');
//            Abort; //Gera um Rollback na rotina que chamou
//          end;
//          if Cadastro.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString = Cadastro.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString then
//          begin
//            ShowMessageWR('Selecione locais de estoque diferentes na Origem e Destino para fazer a transferência.');
//            Abort; //Gera um Rollback na rotina que chamou
//          end;
//        end
//        else if Cadastro.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //Transferência entre empresas
//        begin
//          if (LblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL.Caption = '') or (LblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL.Caption = '') then
//          begin
//            ShowMessageWR('Selecione as empresas de Origem e Destino para fazer a transferência.');
//            Abort; //Gera um Rollback na rotina que chamou
//          end;
//          if LblEmpresaDestinoÎEmpresaÎRAZAOSOCIAL.Caption = LblEmpresaOrigemÎEmpresaÎRAZAOSOCIAL.Caption then
//          begin
//            ShowMessageWR('Selecione empresas diferentes na Origem e Destino para fazer a transferência.');
//            Abort; //Gera um Rollback na rotina que chamou
//          end;
//        end;
//      end;
//
//      Nf_Entrada_Produtos.First;
//      while not Nf_Entrada_Produtos.Eof do
//      begin
//        AQuant      := NF_Entrada_Produtos.FieldByName('QUANT').AsFloat;
//        ACodProduto := NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;
//
//        if not MatchStr(Cadastro.FieldByName('TIPO').AsString, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA']) then
//        begin
//         (* //Composição
//          QuerComposicao.Close;
//          QuerComposicao.ParamByName('Codigo').AsInteger      := NF_Entrada_Produtos.FieldByName('CODIGO').AsInteger;
//          QuerComposicao.ParamByName('CodNFEntrada').AsString := Cadastro.FieldByName('CODIGO').AsString;
//          QuerComposicao.Open;
//          if not QuerComposicao.IsEmpty then
//          begin
//            {Caso exista algum item na composição que informe como será a conversão da unidade, apenas a conversão
//             deve dar entrada no estoque. Caso contrário, o produto comprado é que entra}
//            while not QuerComposicao.Eof do
//            begin
//              MovimentaEstoque(Cadastro.Transaction, QuerComposicao.FieldByName('CODPRODUTO').AsString,
//                GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString).ToString, QuerComposicao.FieldByName('LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//                DataHoraSys, 'Modificação realizada através da Composição pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//                QuerComposicao.FieldByName('QUANT').AsFloat, QuerComposicao.FieldByName('CODPRODUTO_LOTE').AsInteger,
//                CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString);
//
//              FDM.Produto_Fornecedor.Close;
//              FDM.Produto_Fornecedor.ParamByName('CodProduto').AsString    := QuerComposicao.FieldByName('CODPRODUTO').AsString;
//              FDM.Produto_Fornecedor.ParamByName('CodFornecedor').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//              FDM.Produto_Fornecedor.Open;
//              TDM.ProdutoRegistraEntradaFornecedorComposicao(FDM.Produto_Fornecedor, QuerComposicao, Cadastro);
//              FDM.Produto_Fornecedor.Post;
//
//              QuerComposicao.Next;
//            end;
//          end else
//          begin      *)
//            //Produto principal
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//              Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Modificação realizada pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Normal', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
////            end;
//        end
//        else if Cadastro.FieldByName('TIPO').AsString = 'SAÍDA DE MERCADORIA' then
//        begin
//          MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//            Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//            'Modificação realizada pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//            -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Devolução', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//        end
//        else if Cadastro.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA' then
//        begin
//          if Cadastro.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //0 - Entre Estoques, 1 - Entre Empresas
//          begin
//            //Retira do estoque de Origem
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, Cadastro.FieldByName('CODEMPRESA_ORIGEM').AsString,
//              NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//              DataHoraSys, 'Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//
//            //Entrada no estoque de Destino
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, Cadastro.FieldByName('CODEMPRESA_DESTINO').AsString,
//              NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//              DataHoraSys, 'Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//          end else
//          begin
//            //Retira do estoque de Origem
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, Cadastro.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString,
//              Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//
//            //Entrada no estoque de Destino
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, Cadastro.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString,
//              Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//          end;
//        end;
//        NF_Entrada_Produtos.Next;
//      end;
//      {$ENDREGION}
//    end else
//    begin  ////////RETIRAR PRODUTOS DO ESTOQUE(REVERTER SITUAÇÃO)\\\\\\\\\\\\\\\
//      {$REGION 'RETIRA PRODUTOS DO ESTOQUE'}
////        if ShowMessageWR('Deseja ' + ATexto2 + ' os Produtos no Estoque?', MB_ICONQUESTION) <> mrYes then
////          Exit;
//
//      Nf_Entrada_Produtos.First;
//      while not Nf_Entrada_Produtos.Eof do
//      begin
//        AQuant      := NF_Entrada_Produtos.FieldByName('QUANT').AsFloat;
//        ACodProduto := NF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;
//
//        if (Cadastro.FieldByName('TIPO').AsString <> 'SAÍDA DE MERCADORIA') and (Cadastro.FieldByName('TIPO').AsString <> 'TRANSFERÊNCIA') then
//        begin
//         (* QuerComposicao.Close;
//          QuerComposicao.ParamByName('Codigo').AsInteger      := NF_Entrada_Produtos.FieldByName('CODIGO').AsInteger;
//          QuerComposicao.ParamByName('CodNFEntrada').AsString := Cadastro.FieldByName('CODIGO').AsString;
//          QuerComposicao.Open;
//          while not QuerComposicao.Eof do
//          begin
//            //Composição
//            MovimentaEstoque(Cadastro.Transaction, QuerComposicao.FieldByName('CODPRODUTO').AsString,
//              GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString).ToString, QuerComposicao.FieldByName('LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//              DataHoraSys, 'Cancelamento de Modificação realizada através da Composição pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              -QuerComposicao.FieldByName('QUANT').AsFloat, QuerComposicao.FieldByName('CODPRODUTO_LOTE').AsInteger,
//              CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString);
//            QuerComposicao.Next;
//          end;    *)
//
//          //Produto Principal
//          MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//            Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//            'Cancelamento de Modificação realizada pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//            -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelado', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//        end;
//
//        if Cadastro.FieldByName('TIPO').AsString = 'SAÍDA DE MERCADORIA' then
//          MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//            Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//            'Cancelamento de Modificação realizada pela Entrada de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//            AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelado', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//
//        if Cadastro.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA' then
//        begin
//          if Cadastro.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //0 - Entre Estoques, 1 - Entre Empresas
//          begin
//            //Entrada no estoque de Origem (Retorno)
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, Cadastro.FieldByName('CODEMPRESA_ORIGEM').AsString,
//              NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//
//            //Retirada do estoque de Destino (Retorno)
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, Cadastro.FieldByName('CODEMPRESA_DESTINO').AsString,
//              NF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//          end else
//          begin
//            //Entrada no estoque de Origem (Retorno)
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, Cadastro.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString,
//              Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//
//            //Retirada do estoque de Destino (Retorno)
//            MovimentaEstoque(Cadastro.Transaction, ACodProduto, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, Cadastro.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString,
//              Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
//              'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + Cadastro.FieldByName('CODIGO').AsString + ' Nota Nº ' + Cadastro.FieldByName('NUN_NF').AsString,
//              -AQuant, NF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, Cadastro.FieldByName('CODIGO').AsString, '', NF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
//              NF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, NF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', Cadastro.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//          end;
//        end;
//        Nf_Entrada_Produtos.Next;
//      end;
//    {$ENDREGION}
//    end;
//
//    //Aqui é necessário fechar e abrir novamente o dataset para pegar os dados atualizados da importação acima,
//    //senão este dataset da um post e acaba matando as informações postadas pelo looping acima (que faz por outra query)
//    if Cadastro.FieldByName('DT_FATURAMENTO').IsNull  then // if Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString = 'N' then
//      Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString := 'S'
//    else
//      Cadastro.FieldByName('ATUALIZA_ESTOQUE').AsString := 'N';
//  finally
//  end;
//end;

//procedure TFrmNF_entrada.DoAtualizaFinanceiro;
//var
//  QuerX: TFDQuery;
//  APoint: TBookmark;
//  AObrigPlanoContas, AObrigConta, AObrigPagamento: Boolean;
//  AMsg: string;
//begin
//  inherited;
//  if Cadastro.FieldByName('ENVIA_FINANCEIRO').AsString = 'N' then
//  begin
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'N';
//    Exit;
//  end;
//  if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then   //  if Cadastro.FieldByName('GERA_FINANCEIRO').AsString = 'N' then
//  begin
//    AObrigPlanoContas := TConfig.ReadBoolean('NF_PARCELAS_PLANO_CONTAS_OBRIGATORIO');
//    AObrigConta       := TConfig.ReadBoolean('NF_PARCELAS_CONTA_OBRIGATORIO');
//    AObrigPagamento   := TConfig.ReadBoolean('NF_PARCELAS_TIPO_PAGAMENTO_OBRIGATORIO');
//    QuerX := GeraFDQuery(TransaFD);
//    try
//      QuerX.SQL.Text := 'Select sum(Valor)as valor FROM NF_ENTRADA_PARCELAS WHERE CODNF_ENTRADA= :Codigo';
//      QuerX.ParamByName('Codigo').AsString := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.Open;                      //VALOR_NF
//      if RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency,2) > RoundTo(QuerX.FieldByName('VALOR').AsCurrency,2) then
//      begin
//        //Causa um Rollback na rotina que chamou
//        GrupoFinanceiro.MakeVisible;
//        EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
//        GeraExcecao('Valor da nota fiscal é "Superior" a soma das parcelas');
//      end;
//      if RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency,2) < RoundTo(QuerX.FieldByName('VALOR').AsCurrency,2) then
//      begin
//        //Causa um Rollback na rotina que chamou
//        GrupoFinanceiro.MakeVisible;
//        EdtCondicaoPagtoÎCondicaoPagto.SetFocusWR;
//        GeraExcecao('Valor da nota fiscal é "Inferior" a soma das parcelas');
//      end;
//      QuerX.Close;
//      /////////DELETA TODO O FINANCERO REFERENTE A ESSE LANÇAMENTO (SE EXISTIR É CLARO)////////////
//      //Quer.SQL.Text := 'DELETE FROM FINANCEIRO WHERE CODNF_ENTRADA= :Codigo';
//      //Quer.ParamByName('Codigo').AsString:=Cadastro.FieldByName('CODIGO').AsString;
//      //Quer.ExecSQL;
//    finally
//      //FreeAndNil(Quer);
//      QuerX.Free;
//    end;
//
//    if AObrigPlanoContas or AObrigConta or AObrigPagamento then
//    begin
//      NF_Entrada_Parcelas.First;
//      while not NF_Entrada_Parcelas.Eof do
//      begin
//        //Causa um Rollback na rotina que chamou
//        if AObrigConta and (Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas uma conta (Caixa / Banco).' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//        if AObrigPlanoContas and (NF_Entrada_Parcelas.FieldByName('CODPLANOCONTAS').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas um Plano de Contas.' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//        if AObrigPagamento and (NF_Entrada_Parcelas.FieldByName('TIPOPAGTO').AsString = '') then
//          GeraExcecao('Existem parcelas que não foram informadas o tipo de pagamento.' + sLineBreak +
//                      'Verifique antes de atualizar as contas a pagar.');
//
//        NF_Entrada_Parcelas.Next;
//      end;
//    end;
//
//    // GERAR A PARTE FINANCEIRA //
//    NF_Entrada_Parcelas.First;
//    while NOT NF_Entrada_Parcelas.Eof do
//    begin
//      if  (Procura('TIPO','CONTAS', Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString)= 'CAIXA') //Ajsutado aqui pois se voce coloca-se uma parcela a ser paga para o ano que vem, ele acusava de caixa fechado
//      and ((Nf_Entrada_Parcelas.FieldByName('TIPO').AsString = 'RECEBIDA') or (Nf_Entrada_Parcelas.FieldByName('TIPO').AsString = 'PAGA')) then
//      begin
//        QuerX := GeraFDQuery(TransaFD);
//        try
//          QuerX.SQL.Text := 'select * ' + // first 1 1
//                            'from CAIXA ' +
//                            'where (DATA_FECHAMENTO is null) ' +
//                            '      and (CODCONTA = :CodConta) ' +
//                            '      and ((DATA_ABERTURA < :DtVencto) or (DATA_ABERTURA < :DtPagto))';
//          QuerX.ParamByName('CodConta').AsInteger  := Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger;
//          QuerX.ParamByName('DtVencto').AsDateTime := NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime;
//          QuerX.ParamByName('DtPagto').AsDateTime  := Ifthen(NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime > 0, NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime, DataHoraSys);
//          QuerX.Open;
//
//          if QuerX.IsEmpty then
//          begin
//  //          btn_Faturamento.Enabled := UCControls1.GetComponentRight(btn_Faturamento).Enabled;
//            AMsg := 'O caixa desse período (' + FormatDateTime('DD/MM/YYYY HH:MM', NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime);
//            if (NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsString <> '') and (NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime <> NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime) then
//              AMsg := AMsg + ' - ' + FormatDateTime('DD/MM/YYYY HH:MM', NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime);
//            AMsg := AMsg + ') está fechado ou não existe. ';
//            if Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString <> '' then
//              AMsg := AMsg + 'O caixa "' + Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsString + '" não está aberto. ';
//            AMsg := AMsg + 'Abra seu caixa primeiro.';
//            ShowMessageWR(AMsg);
//            if not UsuarioSenha(False, True) then
//              Abort; //Causa um Rollback na rotina que chamou
//
//            if FrmPrincipal.Action_Caixa.Enabled then
//            begin
//              TFrmFinanceiro_Contas_Escolha.AbrirCaixa;
////              with TFrmFinanceiro_Contas_Escolha.Create(nil) do
////              try
////                ShowModal;
////              finally
////                Destroy;
////              end;
//            end;
//
//            //Causa um Rollback na rotina que chamou
//            Abort;
//          end;
//        finally
//          QuerX.Free;
//        end;
//      end;
//      Lancamento_Financeiro(TransaFD,
//                            ProximoCodigoTrans(TransaFD, 'Financeiro'),
//                            Nf_Entrada_Parcelas.FieldByName('TIPO').AsString,
//                            'FOR',
//                            Nf_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger,
//                            Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
//                            LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption,
//                            NF_Entrada_Parcelas.FieldByName('DOCUMENTO').AsString,
//                            Cadastro.FieldByName('NUN_NF').AsString,
//                            '0',
//                            NF_Entrada_Parcelas.FieldByName('TipoPagto').AsString,
//                            Cadastro.FieldByName('CODCONDICAOPAGTO').AsString,
//                            Cadastro.FieldByName('CONDICAOPAGTO').AsString,
//                            Nf_Entrada_Parcelas.FieldByName('CODPlanoContas').AsString,
//                            Nf_Entrada_Parcelas.FieldByName('HISTORICO').AsString,
//                            'ATIVO',
//                            '0',
//                            Cadastro.FieldByName('CODIGO').AsString,
//                            NF_Entrada_Parcelas.FieldByName('CODIGO').AsString,
//                            '',
//                            CodigoUsuario,
//                            '0',
//                            EmpresaAtiva,
//                            NF_Entrada_Parcelas.FieldByName('Valor').AsCurrency,
//                            NF_Entrada_Parcelas.FieldByName('DESCONTO').AsFloat,
//                            NF_Entrada_Parcelas.FieldByName('JUROS').AsFloat,
//                            0, {TODO: Verificar se o valor de previsão será este mesmo}
//                            NF_Entrada_Parcelas.FieldByName('CHEQUE_NUMERO').AsString,
//                            DataHoraSys,
//                            NF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime,
//                            NF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime,
//                            Cadastro.FieldByName('DT_NOTA').AsDateTime,
//                            'NF_ENTRADA',
//                            Nf_Entrada_Parcelas.FieldByName('CODIGO').AsInteger);
//      NF_Entrada_Parcelas.Next;
//    end;
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'S'
//  end else
//  begin
//    QuerX := GeraFDQuery(TransaFD);
//    try
//      //Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
//      QuerX.SQL.Text := 'select TIPO, CODCONTA, DATAPAGTO ' +
//                        'from FINANCEIRO ' +
//                        'where (CODNF_ENTRADA = :CODNF_ENTRADA)';
//      QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.Open;
//      ValidarSituacaoContaBanco(QuerX); //Gera exceção em falha, Causa um Rollback na rotina que chamou
//      QuerX.Close;
//
//      QuerX.SQL.Text := 'update FINANCEIRO F set F.STATUS = :STATUS,            ' +
//                        '                        F.CODUSUARIO = :CODUSUARIO,    ' +
//                        '                        F.DT_ALTERACAO = :DT_ALTERACAO ' +
//                        'where (CODNF_ENTRADA = :CODNF_ENTRADA)';
//      QuerX.ParamByName('CODNF_ENTRADA').AsString  := Cadastro.FieldByName('CODIGO').AsString;
//      QuerX.ParamByName('STATUS').AsString         := 'INATIVO EXCLUIDO';
//      QuerX.ParamByName('CODUSUARIO').AsInteger    := CodigoUsuario;
//      QuerX.ParamByName('DT_ALTERACAO').AsDateTime := now;
//      QuerX.ExecSQL;
//    finally
//      QuerX.Free;
//    end;
//    Cadastro.FieldByName('GERA_FINANCEIRO').AsString := 'N';
//  end;
//end;

//procedure TFrmNF_Entrada.DM_ProdutoCriaOuAtualizaCadastro(ATransa: TFDTransaction; AWRCalc : TWRCalculaConfiguracoes; Tabela_Preco: TDataSet);
//var
//  QuerX: TFDQuery;
//  ADM: TDM;
//  AConfirma_S_OU_N: String;
//begin
//  ADM := TDM.Create(nil);
//  try
//    ADM.DefineTransacaoFD(ATransa);
//    AWRCalc.DBProduto.First;
//    while not AWRCalc.DBProduto.Eof do
//    begin
//      ADM.Produto.Close;
//      ADM.Produto.ParamByName('CODIGO').AsString:=AWRCalc.DBProduto.fieldByName('CODPRODUTO').AsString;
//      ADM.Produto.Open;
//      ADM.Produto_Composicao.Open;
//      ADM.Produto_Centro_Trabalho.Open;
//      ADM.Produto_Fornecedor.Open;
//
//      if ADM.Produto.RecordCount = 0  then
//      begin
//        ADM.Produto.Insert;
//
////        ConfigCamposForm.PreencheValoresIniciaisDataSet(ADM.Produto);        // nÃO
//        WREventosCadastro.Regra_ValorInicial(ADM.Produto, 'PRODUTO', 'TFrmProduto_ProdutoSimples_Frame');
//
//        if (AWRCalc.DBProduto.fieldByName('CODPRODUTO').AsString = '') then
//        begin
//          AWRCalc.DBProduto.Edit;
//          AWRCalc.DBProduto.FieldByName('CODPRODUTO').AsString := ADM.Produto.FieldByName('CODIGO').AsString;
//          AWRCalc.DBProduto.Post;
//        end else
//          ADM.Produto.FieldByName('CODIGO').AsString := AWRCalc.DBProduto.FieldByName('CODPRODUTO').AsString;
//      end else
//        ADM.Produto.Edit;
//
//      DSCopiarCamposIguais(AWRCalc.DBProduto, ADM.Produto, ['CODIGO','QUANT','TOTAL', 'UN_SUBUNIDADE', 'UN_SUBUNIDADE_DESCRICAO']);   // ADICIONADO 'QUANT','TOTAL' VAMOS VER COMO FICA
//
//      if ADM.Produto.FieldByName('UN_PADRAO_COMPRA').IsNull then
//        ADM.Produto.FieldByName('UN_PADRAO_COMPRA').AsString := AWRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
//
//      ADM.Produto_Tabela_Preco.Close;
//      ADM.Produto_Tabela_Preco.ParamByName('CODIGO').AsString := AWRCalc.DBProduto.fieldByName('CODPRODUTO').AsString;
//      ADM.Produto_Tabela_Preco.Open;
//      Tabela_Preco.First;
//      while not Tabela_Preco.Eof do
//      begin
//        if ADM.Produto_Tabela_Preco.Locate('CODPRODUTO_TABELA', Tabela_Preco.FieldByName('CODPRODUTO_TABELA').Value, []) then
//          ADM.Produto_Tabela_Preco.Edit
//        else
//          ADM.Produto_Tabela_Preco.Insert;
//        DSCopiarCamposIguais(Tabela_Preco, ADM.Produto_Tabela_Preco, []);
//        ADM.Produto_Tabela_Preco.Post;
//        Tabela_Preco.Next;
//      end;
//
//      //Replica as exclusões de tabelas de preço da compra para o cadastro
//      //Comentado pois não temos certeza se deve ser assim, confirmar com o Wagner
//      {ADM.Produto_Tabela_Preco.First;
//      while not ADM.Produto_Tabela_Preco.Eof do
//      begin
//        if not Tabela_Preco.Locate('CODPRODUTO_TABELA', ADM.Produto_Tabela_Preco.FieldByName('CODPRODUTO_TABELA').Value, []) then
//          ADM.Produto_Tabela_Preco.Delete
//        else
//          ADM.Produto_Tabela_Preco.Next;
//      end; }
//
////      DataSetCopiaRecursivo(AWRCalc.DBProduto, ADM.Produto, Null, ['CODIGO', 'CODNF_ENTRADA',
////        'CODNF_ENTRADA_PRODUTOS'], AWRCalc.TreeList);
//
////      DSCopiarDataSetIgnorando(AWRCalc.DBCustoExtra, ADM.Produto_Custo_Adicional, ['CODIGO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_PRODUTO']);
//
//      // SE ESSE CÓDIGO NÃO TIVER PRESTAR ATENÇÃO QUANDO FOR CADASTRAR, Nunca vai ser usado Centro de Trabalho na Compra???
//      // DSCopiarDataSetIgnorando(PmPrincipal.CentroTrabalho, NF_Entrada_Centro_Trabalho, ['CODIGO', 'CODNF_ENTRADA', 'CODNF_ENTRADA_PRODUTO']);
//
//      AtualizaDtAlteracao(ADM.Produto);
//      if ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString = '' then   // Se não tiver padrão, coloca
//      begin
//        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value    := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
//        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value      := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value;
//        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
//      end;
//      ADM.Produto.Post;
//      Assert(AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString <> '', 'Código do Fornecedor não definido');
//      Assert(AWRCalc.DBProduto.FieldByName('CODPRODUTO').AsString <> '', 'Código do Produto não definido');
//      if Not ADM.Produto_Fornecedor.Locate('PESSOA_RESPONSAVEL_CODIGO', AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value,[]) then
//      begin
//        ADM.Produto_Fornecedor.Insert;
//        ADM.Produto_Fornecedor.FieldByName('CODIGO').AsInteger                   := Trunc(GetProximoCodigoGen('CR_PRODUTO_FORNECEDOR'));
//        ADM.Produto_Fornecedor.FieldByName('CODPRODUTO').Value                   := AWRCalc.DBProduto.FieldByName('CODPRODUTO').Value;
//        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value    := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
//        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value      := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value;
//        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
//      end else
//        ADM.Produto_Fornecedor.Edit;
//
//
//      if AWRCalc.DBProduto.FieldByName('NF_CODFABRICA').AsString <> '' then
//        ADM.Produto_Fornecedor.FieldByName('CODFABRICA').Value        := AWRCalc.DBProduto.FieldByName('NF_CODFABRICA').Value;
//      ADM.Produto_Fornecedor.FieldByName('CODFABRICA_ORIGINAL').Value := AWRCalc.DBProduto.FieldByName('NF_CODFABRICA_ORIGINAL').Value;
//      ADM.Produto_Fornecedor.FieldByName('DT_ULTIMA_COMPRA').Value    := AWRCalc.DBVendaOuCompra.FieldByName('DT_NOTA').Value;
//      ADM.Produto_Fornecedor.FieldByName('CUSTO_VENDA').Value         := AWRCalc.DBProduto.FieldByName('VALOR_COMPRA').Value;  //CUSTO_VENDA
//      ADM.Produto_Fornecedor.Post;
//
//      if Not Assigned(FFrmProduto_Frame) then
//        FFrmProduto_Frame:= TFrame_Produto_Mestre.Create(Self);
//
//      // TODO: Achar os dependentes e atualizar
//     if TConfig.ReadBoolean('ATUALIZA_PRODUTO_FINAL') then
//       AConfirma_S_OU_N := 'S'
//     else
//       AConfirma_S_OU_N := 'N';
//
//       ProdutosProdutoAfetadosIniciar(NF_Entrada_Produtos_Afetados, ATransa, ADM.Produto.FieldByName('CODIGO').AsString, AConfirma_S_OU_N, FFrmProduto_Frame);
//
//      DM_Clientes_ProdutoAtualizar(ADM.Produto_Tabela_Preco, AWRCalc.DBProduto.FieldByName('VALOR').AsFloat ); // Tabela de preço
//
//
//      AWRCalc.DBProduto.Next;
//    end;
//  finally
//    ADM.Free;
//  end;
//
//end;
{$ENDREGION}

initialization
  RegisterClass(TFrmNF_Entrada);

end.

