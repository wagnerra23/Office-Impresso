unit Frame_CadVenda_Mestre;

interface

  ///////////////////////////////////////////// DOCUMENTAÇÃO ///////////////////////////////////////////////////////////
  ///   SQL       - Rotinas com Acesso a Banco devem conter SQL no inicio da Função
  ///   CloseOpen - Rotinas que Fecham e Abre o DataSet principal devem iniciar com CloseOpen
  ///
  ///   SEÇÃO 1: FUNÇÕES DA TELA
  ///   SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)
  ///   SEÇÃO 3: EVENTOS DO FORM - Create, Show, Hide, Destroy, KeyDown, WRFormataCampos
  ///   SEÇÃO 4: CONFIGURAÇÕES - Layout, Configuração, Ajuda, MenuPopup, Impressões
  ///   SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen
  ///   SEÇÃO 6: VIEW - OUTRAS FUNÇÕES - Funções que não fazem parte de DATASET, ou do FORM, mais pertencem a uso da FORM
  ///   SEÇÃO 7: NFSe -
  ///   SEÇÃO 8: Click e Exit Isso pode por que executa 1 unica vez
  ///   SEÇÃO 9: Validate, CellText , GetContentStyle, GetCellHint, UpdateEdit, DrawCell , GetDisplayText
  ///////////////////////////////////////////// FIM DOCUMENTAÇÃO ///////////////////////////////////////////////////////

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, cxGraphics, Registry,
  cxContainer, cxEdit, Principal, ImpTexto, DB, Menus, cxClasses, uControleWR,
  ExtCtrls, StdCtrls, cxButtons, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxLabel, cxDropDownEdit, cxButtonEdit, cxCalendar,
  cxCurrencyEdit, cxCheckBox, cxMemo, UCBase, QuickRpt,  pcnConversao, cxSpinEdit, dxLayoutContainer,
  dxLayoutControl, cxProgressBar, dxBevel, Rotinas, UnitFuncoes, cxInplaceContainer, cxTL, cxDBTL,
  cxImageComboBox, ComCtrls, cxShellCommon, cxShellListView, UCHistDataset, UCHist_WRGeral, cxDBLabel,
  cxRadioGroup, cxControls, cxCustomData, cxDBLookupComboBox, ImgList, dxStatusBar, cxSchedulerRecurrence,
  FireDAC.Stan.Param, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataModuleBanco, cxImage, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxCore, cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxLookupEdit, cxDBLookupEdit, cxTLData,
  cxGroupBox, dxLayoutLookAndFeels, cxDBNavigator, Generics.collections, Winapi.ShlObj, cxTreeView, cxShellTreeView,
  dxScreenTip, dxBarBuiltInMenu, cxPC, CadVendaFrameAgrupamento, System.Math,
  Vcl.Grids, Vcl.DBGrids, ImpVenda, System.DateUtils, System.ImageList, Printers, Vcl.Mask, Vcl.DBCtrls,
  ConSelecao_Lote, frFrameAnexosVenda, cxRichEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, cxGridInplaceEditForm, WREventos,
  System.Actions, Vcl.ActnList, DataModuleEdits, wrConstantes, Classes.Venda,
  Vcl.Buttons, dxGDIPlusClasses, ACBrNFe, cxImageList, Classes.WR, uWRCalculaConfiguracoes, DataModule,
  wrConversao, uWRComponent, uWRFormataCamposDataSet, dxDateRanges, CadVenda_Produto, Produto_Preco, frxClass, frxDBSet,
  dxSkinsDefaultPainters, dxUIAdorners, fs_iinterpreter, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils,
  dxSpreadSheet, dxSpreadSheetReportDesigner, uWRNotaFiscal, FrFrameMestre, dxSpreadSheetFormulaBar, uWRValidacao,
  wrFuncoes_Office, ACBrBase, ACBrDFe, ACBrDFeReport,
  ACBrMail, CadProduto_Wizard, FrFrameComposicao, System.Generics.Collections, NFSe,
  dxRangeTrackBar, frFrameVendaPessoa, ConsM, Base, dxDateTimeWheelPicker,
  cxTimeEdit, Frame_Cad, dxCustomTileControl, dxTileControl, Base_Venda, PDV_Pagamento,
  Base_Equipamento_Modal, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Routes.Requisicao.Venda;

type

  TUserControlAccess = class(TUserControl); //Utilizado na mudança de empresa

  TFrame_Venda_Mestre = class(TFrmCad_Frame)
    DS_Financeiro: TDataSource;
    DSVenda_Produto: TDataSource;
    OdNFe: TOpenDialog;
    PopupMenu_Produto: TPopupMenu;
    Impostos1: TMenuItem;
    ImpostosComValorbaseodeVenda1: TMenuItem;
    Calculartodososimpostos1: TMenuItem;
    DSEquipamento: TDataSource;
    edtPROJETO_DT_INICIO: TcxDBDateEdit;
    edtPROJETO_DT_FIM: TcxDBDateEdit;
    edtVendaCodigo: TcxDBTextEdit;
    cbxTipo_Venda: TcxDBLookupComboBox;
    LbUCMensagem: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    EdtEquipamento: TcxDBButtonEdit;
    EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxDBTextEdit;
    DBEdit80: TcxDBTextEdit;
    DBEdit81: TcxDBTextEdit;
    DBEdit10: TcxDBTextEdit;
    licbxTipo_Venda: TdxLayoutItem;
    GrupoTopo: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    liedtVendaCodigo: TdxLayoutItem;
    liedtResponsavelÎPessoas: TdxLayoutItem;
    liedtResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    liedtResponsavelÎPessoasÎFONE1: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Item35: TdxLayoutItem;
    liEquipamento: TdxLayoutGroup;
    cxGrid5: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GrupoTabsPrincipal: TdxLayoutGroup;
    dxLayoutControl1Item20: TdxLayoutItem;
    lbTipo_Equipamento: TLabel;
    TabDadosAdicionais: TdxLayoutGroup;
    liedtSolicitacao_Servico: TdxLayoutItem;
    edtSolicitacao_Servico: TcxDBMemo;
    liedtObservacao_Servico: TdxLayoutItem;
    edtObservacao_Servico: TcxDBMemo;
    liedtPROJETO_DT_INICIO: TdxLayoutItem;
    LiEdtDtPrometidoPara: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    GrupoDadosAdicionais2: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    GrupoDadosAdicionais1: TdxLayoutGroup;
    TabFinanceiro: TdxLayoutGroup;
    liedtCondicaoPagtoÎCondicaoPagto: TdxLayoutItem;
    liedtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TdxLayoutItem;
    dxLayoutControl1Item48: TdxLayoutItem;
    chkIntervalo_Mensal: TcxDBCheckBox;
    liedtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TdxLayoutItem;
    liSpnCaixa: TdxLayoutItem;
    SpnCaixa: TcxSpinEdit;
    libtnParcelas: TdxLayoutItem;
    btnParcelas: TcxButton;
    liedtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TdxLayoutItem;
    ItemFinanceiroGrid: TdxLayoutItem;
    GridFinanceiro: TcxGrid;
    cxGridViewFinanceiro: TcxGridDBTableView;
    cxGridViewFinanceiroCODIGO: TcxGridDBColumn;
    cxGridViewFinanceiroVALOR: TcxGridDBColumn;
    cxGrid1DBTableView1VENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONTA: TcxGridDBColumn;
    cxGrid1DBTableView1CONTA: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1JUROS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn;
    cxGrid1DBTableView1CODCHEQUE: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C3: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C2: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CONTA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C1: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_COMPE: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1HISTORICO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    cxGrid1DBTableView1CONDICAOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODTIPOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTATOS: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_STATUS: TcxGridDBColumn;
    cxGridViewFinanceiroTotal: TcxGridDBColumn;
    cxGridViewFinanceiroDATA: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    GrupoFinanceiroTop: TdxLayoutGroup;
    dxLayoutControl1Item54: TdxLayoutItem;
    liedtRepresentanteÎPessoas: TdxLayoutItem;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    lilblRepresentanteÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    GrupoFinanceiroBottom: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    lilblCampoObrigatorioFuncionario: TdxLayoutItem;
    lblCampoObrigatorioFuncionario: TcxLabel;
    lilblObriga_Representante: TdxLayoutItem;
    lblObriga_Representante: TcxLabel;
    TabProdutos: TdxLayoutGroup;
    liedtCodProdutoÎProduto: TdxLayoutItem;
    edtCodProduto: TcxButtonEdit;
    GrupoVeiculo: TdxLayoutGroup;
    libtnAdicionarProduto: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    libtnRemoverProduto: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    GrupoTabComunicacaoVisual: TdxLayoutGroup;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView3ESTOQUE: TcxGridDBColumn;
    cxGridDBTableView3UNIDADE: TcxGridDBColumn;
    cxGridDBTableView3CustoStr: TcxGridDBColumn;
    cxGridDBTableView3VALOR: TcxGridDBColumn;
    cxGridDBTableView3UNIDADEATACADO: TcxGridDBColumn;
    cxGridDBTableView3VALORATACADO: TcxGridDBColumn;
    cxGridDBTableView3VALOR_PRAZO: TcxGridDBColumn;
    cxGridDBTableView3LOCAL: TcxGridDBColumn;
    cxGridDBTableView3CODFABRICA: TcxGridDBColumn;
    cxGridDBTableView3CUSTO_FABR: TcxGridDBColumn;
    cxGridDBTableView3CUSTO_VENDA_TOTAL: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    GrupoBottom: TdxLayoutGroup;
    liedtObeservacao: TdxLayoutItem;
    edtObeservacao: TcxDBMemo;
    liedtPOutro: TdxLayoutItem;
    edtPOutro: TcxDBCurrencyEdit;
    liedtPDesc: TdxLayoutItem;
    edtPDesc: TcxDBCurrencyEdit;
    dxLayoutControl1Group42: TdxLayoutGroup;
    liedtVOutro: TdxLayoutItem;
    edtVOutro: TcxDBCurrencyEdit;
    dxLayoutControl1Group43: TdxLayoutGroup;
    liedtVDesc: TdxLayoutItem;
    edtVDesc: TcxDBCurrencyEdit;
    dxLayoutControl1Group44: TdxLayoutGroup;
    liedtTotal_Servicos: TdxLayoutItem;
    edtTotal_Servicos: TcxDBTextEdit;
    liedtTOTAL_PRODUTOS: TdxLayoutItem;
    edtTOTAL_PRODUTOS: TcxDBTextEdit;
    dxLayoutControl1Group45: TdxLayoutGroup;
    dxLayoutControl1Item154: TdxLayoutItem;
    Label10: TcxLabel;
    liedtSub_Total: TdxLayoutItem;
    edtSub_Total: TcxDBTextEdit;
    dxLayoutControl1Item156: TdxLayoutItem;
    LbTotal: TcxLabel;
    liedtVendaTotal: TdxLayoutItem;
    edtVendaTotal: TcxDBTextEdit;
    liedtQuantidade: TdxLayoutItem;
    edtQuantidade: TcxDBTextEdit;
    dxLayoutControl1Item164: TdxLayoutItem;
    BtnImprimirDireto: TcxButton;
    MainLayoutGroup3: TdxLayoutGroup;
    MainLayoutGroup4: TdxLayoutGroup;
    MainLayoutGroup5: TdxLayoutGroup;
    MainLayoutLabeledItem1: TdxLayoutLabeledItem;
    MainLayoutLabeledItem2: TdxLayoutLabeledItem;
    GrupoEquipamento: TdxLayoutGroup;
    MainLayoutLabeledItem3: TdxLayoutLabeledItem;
    MainLayoutLabeledItem4: TdxLayoutLabeledItem;
    MainLayoutGroup7: TdxLayoutGroup;
    LbImpressao2: TcxLabel;
    LayoutItemLbImpressao2: TdxLayoutItem;
    ImgListBotoes32: TImageList;
    MainLayoutGroup10: TdxLayoutGroup;
    OpenDialog1: TOpenDialog;
    liedtCalc_VDesc_Manual: TdxLayoutItem;
    edtCalc_VDesc_Manual: TcxDBCurrencyEdit;
    MainLayoutItem5: TdxLayoutItem;
    BtnMenu: TcxButton;
    MenuDireita: TPopupMenu;
    Financeiro1: TMenuItem;
    PoupClientes: TMenuItem;
    LbControleCaixa: TLabel;
    PnlParcela: TPanel;
    PnlCheque: TPanel;
    N5: TMenuItem;
    MainLayoutGroup11: TdxLayoutGroup;
    N10: TMenuItem;
    edtDT_Emissao: TcxDBDateEdit;
    liedtDT_Emissao: TdxLayoutItem;
    UcHistVenda_Financeiro: TUCHist_DataSet;
    UcHistVenda_Produto: TUCHist_DataSet;
    UcHistFinanceiro: TUCHist_DataSet;
    N6: TMenuItem;
    PoupCopiarVendacomProdutos: TMenuItem;
    PoupReativarVenda: TMenuItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit;
    edtAtendenteÎPessoas: TcxDBButtonEdit;
    edtRepresentanteÎPessoas: TcxDBButtonEdit;
    edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO: TcxDBTextEdit;
    edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO: TcxDBTextEdit;
    edtCondicaoPagtoÎCondicaoPagto: TcxDBButtonEdit;
    lblAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel;
    edtCondicaoPagtoÎCondicaoPagtoÎPARCELAS: TcxDBTextEdit;
    lblRepresentanteÎPessoasÎRAZAOSOCIAL: TcxLabel;
    LbUCAlteraFuncionario: TLabel;
    MenuFinanceiro: TPopupMenu;
    Excluirparcelas1: TMenuItem;
    LbUCAlterarDescricaoProduto: TLabel;
    LbUCAlterarRazaoSocial: TLabel;
    LbUCAlterarDescCondPagto: TLabel;
    cxGridViewFinanceiroPARCELA: TcxGridDBColumn;
    edtSequencia: TcxDBCurrencyEdit;
    liedtSequencia: TdxLayoutItem;
    UCHistWRGeral1: TUCHistWRGeral;
    MainLayoutGroup17: TdxLayoutGroup;
    GrupoGrade: TdxLayoutGroup;
    edtGradeQuantTotal: TcxCurrencyEdit;
    liedtGradeQuantTotal: TdxLayoutItem;
    ReplicarGrupo1: TMenuItem;
    LiGrupoVenda_Tipo: TdxLayoutGroup;
    PoupImprimirCdigosdeBarras: TMenuItem;
    PoupAutoPreenchercdigodebarras: TMenuItem;
    Reajustarvenctodasparcelas1: TMenuItem;
    btnConsultaTECVenda: TcxButton;
    libtnConsultaTECVenda: TdxLayoutItem;
    LblResponsavelÎPessoasÎOBSERVACAO: TcxLabel;
    LayoutItemObservacaoResponsavel: TdxLayoutItem;
    GrupoFaturamento: TdxLayoutGroup;
    GrupoAgrupamentoVendas: TdxLayoutGroup;
    MenuEmpresas: TPopupMenu;
    PoupTransferirVendaparaEmpresa: TMenuItem;
    DSPessoas_Contato: TDataSource;
    pnlPessoaContato: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxGrid10DBTableView1: TcxGridDBTableView;
    cxGrid10Level1: TcxGridLevel;
    cxGrid10: TcxGrid;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxGrid10DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid10DBTableView1CONTATO: TcxGridDBColumn;
    edtResponsavelÎPessoasÎCONTATO: TcxDBTextEdit;
    liedtResponsavelÎPessoasÎCONTATO: TdxLayoutItem;
    MainLayoutGroup65: TdxLayoutGroup;
    ZerarValoresdeImpostos1: TMenuItem;
    NotaFiscal1: TMenuItem;
    MainLayoutGroup66: TdxLayoutGroup;
    lblCampoObrigatorioImpressao: TLabel;
    lblCampoObrigatorioAplicacao: TLabel;
    lblCampoObrigatorioCaminho: TLabel;
    lblCampoObrigatorioOBSProduto: TLabel;
    LbUCFuncionarioOuRep: TLabel;
    edtAgenciaÎPessoas: TcxDBButtonEdit;
    liedtAgenciaÎPessoas: TdxLayoutItem;
    lblAgenciaÎPessoasÎRAZAOSOCIAL: TcxLabel;
    lilblAgenciaÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    MainLayoutLabeledItem11: TdxLayoutLabeledItem;
    MainLayoutGroup13: TdxLayoutGroup;
    MainLayoutGroup40: TdxLayoutGroup;
    MainLayoutGroup51: TdxLayoutGroup;
    MainLayoutGroup55: TdxLayoutGroup;
    MainLayoutGroup59: TdxLayoutGroup;
    cbxEstagio: TcxDBComboBox;
    cbxSituacao: TcxDBComboBox;
    licbxSituacao: TdxLayoutItem;
    GrupoCodigoPedidoCompra: TdxLayoutGroup;
    edtPedidoCliente: TcxDBTextEdit;
    MainLayoutItem137: TdxLayoutItem;
    edtPedidoRepresentante: TcxDBTextEdit;
    MainLayoutItem138: TdxLayoutItem;
    LbUCImpedirProducaoFatura: TLabel;
    LbUCPermiteEmissaoNFVendaNaoFaturada: TcxLabel;
    LbUCPermiteFaturarPrazoSemCNPJ: TLabel;
    PnlFrenteVerso: TPanel;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Group3: TdxLayoutGroup;
    cxButton9: TcxButton;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutControl6Item2: TdxLayoutItem;
    EdtFrenteVersoPorcentagem: TcxCurrencyEdit;
    dxLayoutControl6Item3: TdxLayoutItem;
    EdtFrenteVersoValor: TcxCurrencyEdit;
    dxLayoutControl6Item4: TdxLayoutItem;
    dxLayoutControl6SeparatorItem1: TdxLayoutSeparatorItem;
    pnlEnderecoEntrega: TPanel;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    DSPessoas_Entrega: TDataSource;
    btnConfirmaEndEntrega: TcxButton;
    dxLayoutControl7Item1: TdxLayoutItem;
    btnCancelaEndEntrega: TcxButton;
    dxLayoutControl7Item3: TdxLayoutItem;
    dxLayoutControl7Group1: TdxLayoutGroup;
    dxLayoutControl7SeparatorItem1: TdxLayoutSeparatorItem;
    cxGridViewFinanceiroFIN_VENCTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_DATAPAGTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_STATUS: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_TIPO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_TOTAL: TcxGridDBColumn;
    PnlObservacaoVenda: TPanel;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    MemObservacao: TcxDBMemo;
    dxLayoutControl8Item1: TdxLayoutItem;
    Panel1: TPanel;
    dxLayoutControl8Item2: TdxLayoutItem;
    dxLayoutControl8Item3: TdxLayoutItem;
    btnFecharPnlObservacaoVenda: TcxButton;
    dxLayoutControl8Group1: TdxLayoutGroup;
    cxGridViewFinanceiroFIN_VALOR: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_DESCONTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_JUROS: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_COUNTFIN: TcxGridDBColumn;
    TimerHintGridFinanceiro: TTimer;
    cxGridViewFinanceiroMsgFinanceiro: TcxGridDBColumn;
    GrupoFinanceiroParcelas: TdxLayoutGroup;
    PnlFrameAgrupamento: TPanel;
    MainLayoutItem87: TdxLayoutItem;
    dxLayoutControlPnlParcelaGroup_Root: TdxLayoutGroup;
    dxLayoutControlPnlParcela: TdxLayoutControl;
    liedtParcelaResponsavelÎPessoas: TdxLayoutItem;
    edtParcelaResponsavelÎPessoas: TcxDBButtonEdit;
    liedtParcelaResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    edtParcelaResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit;
    licbxTipo: TdxLayoutItem;
    cbxTipo: TcxDBComboBox;
    dxLayoutControlPnlParcelaGroup1: TdxLayoutGroup;
    dxLayoutControlPnlParcelaGroup2: TdxLayoutGroup;
    licbxTipoPagto: TdxLayoutItem;
    cbxTipoPagto: TcxDBComboBox;
    libtnCheque: TdxLayoutItem;
    btnCheque: TcxButton;
    liedtDocumento: TdxLayoutItem;
    edtDocumento: TcxDBTextEdit;
    liedtParcelaNotaFiscal: TdxLayoutItem;
    edtParcelaNotaFiscal: TcxDBTextEdit;
    liedtParcelaStatus: TdxLayoutItem;
    edtParcelaStatus: TcxDBTextEdit;
    dxLayoutControlPnlParcelaGroup3: TdxLayoutGroup;
    liedtVencto: TdxLayoutItem;
    edtVencto: TcxDBDateEdit;
    liedtDataPagto: TdxLayoutItem;
    edtDataPagto: TcxDBDateEdit;
    dxLayoutControlPnlParcelaGroup4: TdxLayoutGroup;
    liedtParcelaPlanoContasÎPlanoContas: TdxLayoutItem;
    edtParcelaPlanoContasÎPlanoContas: TcxDBButtonEdit;
    lilblParcelaPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem;
    lblParcelaPlanoContasÎPlanoContasÎDESCRICAO: TLabel;
    liedtParcelaContaÎContas: TdxLayoutItem;
    edtParcelaContaÎContas: TcxDBButtonEdit;
    lilblParcelaContaÎContasÎDESCRICAO: TdxLayoutItem;
    lblParcelaContaÎContasÎDESCRICAO: TLabel;
    liedtHistorico: TdxLayoutItem;
    edtHistorico: TcxDBTextEdit;
    dxLayoutControlPnlParcelaGroup5: TdxLayoutGroup;
    LayoutItembtn_wrRecibo: TdxLayoutItem;
    btn_wrRecibo: TcxButton;
    LayoutItembtn_wrCancelar: TdxLayoutItem;
    btn_wrCancelar: TcxButton;
    LayoutItembtn_wrConfirmar: TdxLayoutItem;
    btn_wrConfirmar: TcxButton;
    LayoutItembtn_wrFechar: TdxLayoutItem;
    btn_wrFechar: TcxButton;
    dxLayoutControlPnlParcelaSeparatorItem1: TdxLayoutSeparatorItem;
    GrupoParcelaDados: TdxLayoutGroup;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    liedtChequeContaÎContas: TdxLayoutItem;
    edtChequeContaÎContas: TcxDBButtonEdit;
    lilblChequeContaÎContasÎDESCRICAO: TdxLayoutItem;
    lblChequeContaÎContasÎDESCRICAO: TLabel;
    dxLayoutControl9Group1: TdxLayoutGroup;
    liedtCheque_Numero: TdxLayoutItem;
    edtCheque_Numero: TcxDBTextEdit;
    liedtCheque_DT_Bom_Para: TdxLayoutItem;
    edtCheque_DT_Bom_Para: TcxDBDateEdit;
    liedtChequeValor: TdxLayoutItem;
    edtChequeValor: TcxDBTextEdit;
    dxLayoutControl9Group2: TdxLayoutGroup;
    liedtChequeBancoÎBancos: TdxLayoutItem;
    edtChequeBancoÎBancos: TcxDBButtonEdit;
    liedtChequeBancoÎBancosÎDESCRICAO: TdxLayoutItem;
    edtChequeBancoÎBancosÎDESCRICAO: TcxDBTextEdit;
    liedtCheque_Nome: TdxLayoutItem;
    edtCheque_Nome: TcxDBTextEdit;
    dxLayoutControl9Group3: TdxLayoutGroup;
    liedtCheque_DT_Cadastro: TdxLayoutItem;
    edtCheque_DT_Cadastro: TcxDBDateEdit;
    liedtCheque_DT_Repassado: TdxLayoutItem;
    edtCheque_DT_Repassado: TcxDBDateEdit;
    liedtCheque_Repassado: TdxLayoutItem;
    edtCheque_Repassado: TcxDBTextEdit;
    dxLayoutControl9Group4: TdxLayoutGroup;
    liedtCheque_Tipo: TdxLayoutItem;
    edtCheque_Tipo: TcxDBComboBox;
    liedtCheque_CNPJCPF: TdxLayoutItem;
    edtCheque_CNPJCPF: TcxDBTextEdit;
    liedtCheque_Compe: TdxLayoutItem;
    edtCheque_Compe: TcxDBTextEdit;
    liedtCheque_Agencia: TdxLayoutItem;
    edtCheque_Agencia: TcxDBTextEdit;
    liedtCheque_C1: TdxLayoutItem;
    edtCheque_C1: TcxDBTextEdit;
    liedtCheque_Conta: TdxLayoutItem;
    edtCheque_Conta: TcxDBTextEdit;
    liedtCheque_C2: TdxLayoutItem;
    edtCheque_C2: TcxDBTextEdit;
    liedtCheque_C3: TdxLayoutItem;
    edtCheque_C3: TcxDBTextEdit;
    liedtCodCheque: TdxLayoutItem;
    edtCodCheque: TcxDBTextEdit;
    BtnPnlChequeFechar: TcxButton;
    dxLayoutControl9Item21: TdxLayoutItem;
    dxLayoutControl9SeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    btnInserir: TcxButton;
    dxLayoutControl2Group1: TdxLayoutGroup;
    LbUCCampoOpcionalPrometidoPara: TLabel;
    lbUCdtemissao: TLabel;
    DadosVeiculo1: TMenuItem;
    pnlDadosVeiculo: TPanel;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    EdtVeiculoChassi: TcxDBTextEdit;
    LayoutItemVeiculoChassi: TdxLayoutItem;
    EdtVeiculoMotor: TcxDBTextEdit;
    dxLayoutControl10Item1: TdxLayoutItem;
    EdtVeiculoRenavan: TcxDBTextEdit;
    dxLayoutControl10Item2: TdxLayoutItem;
    dxLayoutControl10Item3: TdxLayoutItem;
    EdtVeiculoCilindrada: TcxDBTextEdit;
    dxLayoutControl10Item4: TdxLayoutItem;
    EdtVeiculoAnoModelo: TcxDBTextEdit;
    dxLayoutControl10Group2: TdxLayoutGroup;
    dxLayoutControl10Item5: TdxLayoutItem;
    EdtVeiculoKM: TcxDBTextEdit;
    dxLayoutControl10Item6: TdxLayoutItem;
    EdtVeiculoCombustivel: TcxDBTextEdit;
    EdtVeiculoHP: TcxDBCurrencyEdit;
    dxLayoutControl10Item7: TdxLayoutItem;
    dxLayoutControl10Item8: TdxLayoutItem;
    EdtVeiculoPlaca: TcxDBTextEdit;
    dxLayoutControl10Item9: TdxLayoutItem;
    EdtVeiculoPesoLiquido: TcxDBCurrencyEdit;
    dxLayoutControl10Item10: TdxLayoutItem;
    EdtVeiculoPassageiros: TcxDBCurrencyEdit;
    dxLayoutControl10Item11: TdxLayoutItem;
    EdtVeiculoPesoBruto: TcxDBCurrencyEdit;
    dxLayoutControl10Item12: TdxLayoutItem;
    EdtVeiculoNumeroSerie: TcxDBTextEdit;
    dxLayoutControl10Item13: TdxLayoutItem;
    EdtVeiculoAnoFabricacao: TcxDBTextEdit;
    dxLayoutControl10Item14: TdxLayoutItem;
    EdtVeiculoTipo: TcxDBTextEdit;
    dxLayoutControl10Item15: TdxLayoutItem;
    EdtVeiculoEspecie: TcxDBTextEdit;
    dxLayoutControl10Item16: TdxLayoutItem;
    EdtVeiculoDist: TcxDBTextEdit;
    dxLayoutControl10Item17: TdxLayoutItem;
    EdtVeiculoCondicaoVeiculo: TcxDBTextEdit;
    EdtTituloServico: TcxDBTextEdit;
    dxLayoutControl10Item18: TdxLayoutItem;
    EdtVeiculoCMOD: TcxDBTextEdit;
    dxLayoutControl10Item19: TdxLayoutItem;
    EdtVeiculoCorDenatran: TcxDBTextEdit;
    dxLayoutControl10Group7: TdxLayoutGroup;
    dxLayoutControl10Group1: TdxLayoutGroup;
    dxLayoutControl10Group5: TdxLayoutGroup;
    dxLayoutControl10Group3: TdxLayoutGroup;
    dxLayoutControl10Group4: TdxLayoutGroup;
    btnDadosVeiculoFechar: TcxButton;
    dxLayoutControl10Item20: TdxLayoutItem;
    dxLayoutControl10Group6: TdxLayoutGroup;
    DuplicarProduto1: TMenuItem;
    cxGrid10DBTableView1FONE: TcxGridDBColumn;
    cxGrid10DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid10DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid10DBTableView1CELULAR: TcxGridDBColumn;
    GrupoAcabamento: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    LbUCPermiteAlterarQuantNoGrid: TcxLabel;
    LbUCPermiteCustomizarGridFinanceiro: TcxLabel;
    EdtTipodoEvento: TcxDBTextEdit;
    LiTipodoEvento: TdxLayoutItem;
    GrupoEvento: TdxLayoutGroup;
    EdtCerimonial: TcxDBTextEdit;
    LiCerimonial: TdxLayoutItem;
    GrupoData: TdxLayoutGroup;
    EdtDatadoEvento: TcxDBDateEdit;
    LiDatadoEvento: TdxLayoutItem;
    edtNF_VFrete: TcxDBCurrencyEdit;
    liedtNF_VFrete: TdxLayoutItem;
    PnlFrameAnexos: TPanel;
    GrupoAnexo: TdxLayoutItem;
    DSProduto_Centro_Trabalho: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    PoupCdigosdeBarras: TMenuItem;
    LiGridEnderecoEntrega: TdxLayoutItem;
    cxGrid11: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBCODIGO: TcxGridDBColumn;
    cxGridDBDESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    btnFechar: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    liedtDtCompetencia: TdxLayoutItem;
    edtDtCompetencia: TcxDBDateEdit;
    lichkLote: TdxLayoutItem;
    chkLote: TcxCheckBox;
    cbxCheque_CNPJCPF: TcxDBLookupComboBox;
    licbxCheque_CNPJCPF: TdxLayoutItem;
    DS_PessoasChequesAutorizados: TDataSource;
    chkVenda_Atenticar: TcxDBCheckBox;
    lichkVenda_Atenticar: TdxLayoutItem;
    lilblAutenticar: TdxLayoutItem;
    lblAutenticar: TcxDBLabel;
    GrupoOrcamento: TdxLayoutGroup;
    DSConsultaProdutoGrid: TDataSource;
    ActionList1: TActionList;
    ActDefinirCTProdutos: TAction;
    PnlCentroTrabalhoProduto: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    EdtCTProdutoÎCentro_Trabalho: TcxButtonEdit;
    dxLayoutItem38: TdxLayoutItem;
    BtnCTProdutoCancelar: TcxButton;
    dxLayoutItem39: TdxLayoutItem;
    BtnCTProdutoConfirmar: TcxButton;
    dxLayoutItem40: TdxLayoutItem;
    LblCTProdutoÎCentro_TrabalhoÎDESCRICAO: TcxLabel;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem42: TdxLayoutItem;
    cxLabel2: TcxLabel;
    DefinirCTparaosProdutos1: TMenuItem;
    LiEdtProjetoÎProjeto: TdxLayoutItem;
    EdtProjetoÎProjeto: TcxDBButtonEdit;
    VerDetalhes1: TMenuItem;
    GrupoProjeto: TdxLayoutGroup;
    dxLayoutSkinLookAndFeelCredito: TdxLayoutSkinLookAndFeel;
    cxGridDBTableView3PERC_DESC_ATACADO: TcxGridDBColumn;
    cxGridDBTableView3PERC_ACRESC_PRAZO: TcxGridDBColumn;
    edtProdutoDescricao: TcxDBTextEdit;
    liedtProdutoDescricao: TdxLayoutItem;
    edtUnidade: TcxDBTextEdit;
    liedtUnidade: TdxLayoutItem;
    edtQTDADePeca: TcxDBCurrencyEdit;
    liedtQTDADePeca: TdxLayoutItem;
    edtComp: TcxDBCurrencyEdit;
    liedtComp: TdxLayoutItem;
    edtLarg: TcxDBCurrencyEdit;
    liedtLarg: TdxLayoutItem;
    edtEspessura: TcxDBCurrencyEdit;
    liedtEspessura: TdxLayoutItem;
    edtQuant: TcxDBCurrencyEdit;
    liedtQuant: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    liedtValor: TdxLayoutItem;
    edtTotal: TcxDBCurrencyEdit;
    liedtTotal: TdxLayoutItem;
    edtObservacao_Produto: TcxDBMemo;
    liedtObservacao_Produto: TdxLayoutItem;
    edtPath: TcxDBButtonEdit;
    liedtPath: TdxLayoutItem;
    edtObs_Producao: TcxDBMemo;
    liedtObs_Producao: TdxLayoutItem;
    edtLocalÎLocal: TcxDBButtonEdit;
    liedtLocalÎLocal: TdxLayoutItem;
    GrupoRecebimento: TdxLayoutGroup;
    edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit;
    liedtLocalÎLocalÎDESCRICAO: TdxLayoutItem;
    edtCodTipo_ImpressaoÎTipo_Impressao: TcxDBButtonEdit;
    liedtCodTipo_ImpressaoÎTipo_Impressao: TdxLayoutItem;
    edtCodTipo_ImpressaoÎTipo_ImpressaoÎDESCRICAO: TcxDBTextEdit;
    liedtCodTipo_ImpressaoÎTipo_ImpressaoÎDESCRICAO: TdxLayoutItem;
    edtCALENDARIO_DT_PREVISAO_FIM: TcxDBDateEdit;
    liedtCALENDARIO_DT_PREVISAO_FIM: TdxLayoutItem;
    chkDevolucao: TcxDBCheckBox;
    lichkDevolucao: TdxLayoutItem;
    AbrirVendaOriginal1: TMenuItem;
    chkComissao_Agencia_Cobrar: TcxDBCheckBox;
    lichkComissao_Agencia_Cobrar: TdxLayoutItem;
    chkComissao_Funcionario_Cobrar: TcxDBCheckBox;
    lichkComissao_Funcionario_Cobrar: TdxLayoutItem;
    chkComissao_Representante_Cobrar: TcxDBCheckBox;
    lichkComissao_Representante_Cobrar: TdxLayoutItem;
    edtAtendenteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit;
    liedtAtendenteÎPessoasÎCOMISSAO: TdxLayoutItem;
    edtRepresentanteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit;
    liedtRepresentanteÎPessoasÎCOMISSAO: TdxLayoutItem;
    edtAgenciaÎPessoasÎCOMISSAO: TcxDBCurrencyEdit;
    liedtAgenciaÎPessoasÎCOMISSAO: TdxLayoutItem;
    LbUCAlterarValorProduto: TLabel;
    LbUCPermiteDarDesconto: TLabel;
    LbUCPermiteVenderAbaixoDoValorMinimo: TLabel;
    LbUCPermiteImprimirVendaAbaixoDoValorMinimo: TLabel;
    DSVenda_Produto_MD: TDataSource;
    ImgListBotoesDescAcresc: TcxImageList;
    LbUCPermiteAlterarParcelas: TLabel;
    edtCalc_PDesc_Manual: TcxDBCurrencyEdit;
    liedtCalc_PDesc_Manual: TdxLayoutItem;
    WRCalc: TWRCalculaConfiguracoes;
    DSPmPrincipal: TDataSource;
    PmPrincipal: TwrProdutoMemoria;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    libtnTabelaPreco: TdxLayoutItem;
    btnTabelaPreco: TcxButton;
    LiGrupoResponssavel: TdxLayoutGroup;
    Definiressetipodevendacomopadro1: TMenuItem;
    licbxCalc_Tipo_Desconto: TdxLayoutItem;
    cbxCalc_Tipo_Desconto: TcxDBComboBox;
    libtnProdutoTabelaPreco: TdxLayoutItem;
    btnProdutoTabelaPreco: TcxButton;
    DSProduto_Preco: TDataSource;
    DSProduto_Tabela_Preco: TDataSource;
    PnlConfigCamposProduto: TPanel;
    LcConfigCamposProdutoGroup_Root: TdxLayoutGroup;
    LcConfigCamposProduto: TdxLayoutControl;
    CkConfigCamposProdutoTabPreco: TcxCheckBox;
    LiCkConfigCamposProdutoTabPreco: TdxLayoutItem;
    LiCkConfigCamposProdutoTipoDesc: TdxLayoutItem;
    CkConfigCamposProdutoTipoDesc: TcxCheckBox;
    LiCkConfigCamposProdutoVDesc: TdxLayoutItem;
    CkConfigCamposProdutoVDesc: TcxCheckBox;
    LiCkConfigCamposProdutoPDesc: TdxLayoutItem;
    CkConfigCamposProdutoPDesc: TcxCheckBox;
    libtnConfigCamposProduto: TdxLayoutItem;
    btnConfigCamposProduto: TcxButton;
    LiGrupConfigCabecalho: TdxLayoutGroup;
    CadastroCodPessoa: TStringField;
    CadastroCodTabela: TStringField;
    Venda_Produto: TFDQuery;
    Venda_ProdutoCodTabela: TStringField;
    Venda_ProdutoSituacaoProducao: TStringField;
    Venda_Financeiro: TFDQuery;
    Venda_FinanceiroMsgFinanceiro: TStringField;
    Venda_Produto_Centro_Trabalho: TFDQuery;
    ConsultaProdutoGrid: TFDQuery;
    ConsultaProdutoGridCustoStr: TStringField;
    Equipamento: TFDQuery;
    Financeiro: TFDQuery;
    Produto_Tabela_Preco: TFDQuery;
    Produto_Preco: TFDQuery;
    Endereco_Responsavel: TFDQuery;
    Pessoas_Contato: TFDQuery;
    Pessoas_Entrega: TFDQuery;
    PessoasChequesAutorizados: TFDQuery;
    ConsultaProdutoGridCODIGO: TStringField;
    ConsultaProdutoGridDESCRICAO: TStringField;
    ConsultaProdutoGridESTOQUE_P: TFloatField;
    ConsultaProdutoGridUNIDADE: TStringField;
    ConsultaProdutoGridVALOR: TFloatField;
    ConsultaProdutoGridLOCAL: TStringField;
    ConsultaProdutoGridCODFABRICA: TStringField;
    Parametros: TFDQuery;
    dxLayoutItem18: TdxLayoutItem;
    GridProdutoTree: TcxDBTreeList;
    GridProdutoTreeCODIGO: TcxDBTreeListColumn;
    GridProdutoTreeCODPRODUTO: TcxDBTreeListColumn;
    GridProdutoTreeDESCRICAO: TcxDBTreeListColumn;
    GridProdutoTreeQTDADEPECA: TcxDBTreeListColumn;
    GridProdutoTreeCOMP: TcxDBTreeListColumn;
    GridProdutoTreeLARG: TcxDBTreeListColumn;
    GridProdutoTreeESPESSURA: TcxDBTreeListColumn;
    GridProdutoTreeQUANT: TcxDBTreeListColumn;
    GridProdutoTreeCUSTO: TcxDBTreeListColumn;
    GridProdutoTreeVALOR: TcxDBTreeListColumn;
    GridProdutoTreeTOTAL: TcxDBTreeListColumn;
    GridProdutoTreeCALC_QPESO_LIQUIDO: TcxDBTreeListColumn;
    GridProdutoTreeESTOQUE: TcxDBTreeListColumn;
    GridProdutoTreeTEM_COMPOSICAO: TcxDBTreeListColumn;
    QuerVenda_Tipo: TFDQuery;
    DSQuerVenda_Tipo: TDataSource;
    ConsultaProdutoGridVALOR_COMPRA: TFloatField;
    ConsultaProdutoGridCALC_PDESC_ATACADO: TFloatField;
    ConsultaProdutoGridCALC_PACRESC_PRAZO: TFloatField;
    ConsultaProdutoGridCUSTO: TFloatField;
    ConsultaProdutoGridCALC_VPRAZO: TFloatField;
    ConsultaProdutoGridCALC_VATACADO: TFloatField;
    dxLayoutGroup3: TdxLayoutGroup;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    GridProdutoTreeSequencia: TcxDBTreeListColumn;
    GridProdutoTreeCodTabela: TcxDBTreeListColumn;
    GridProdutoTreeCustoPorPeca: TcxDBTreeListColumn;
    liedtQtdDias: TdxLayoutItem;
    edtQtdDias: TcxCurrencyEdit;
    libtnMudarPrazo: TdxLayoutItem;
    btnMudarPrazo: TcxButton;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    GrupoProducao: TdxLayoutGroup;
    GridProdutoTreePARENT: TcxDBTreeListColumn;
    GridProdutoTreeDESCRICAO_NFE: TcxDBTreeListColumn;
    GridProdutoTreeUNIDADE: TcxDBTreeListColumn;
    GridProdutoTreeTOTAL_RELATORIO: TcxDBTreeListColumn;
    GridProdutoTreeVALOR_RELATORIO: TcxDBTreeListColumn;
    GridProdutoTreeACABAMENTO: TcxDBTreeListColumn;
    GridProdutoTreeCODIGOEAN: TcxDBTreeListColumn;
    GridProdutoTreeCOR: TcxDBTreeListColumn;
    GridProdutoTreePRODUTO_ESTOQUE_LOCAL: TcxDBTreeListColumn;
    GridProdutoTreeFATURADO: TcxDBTreeListColumn;
    GridProdutoTreeLOCAL: TcxDBTreeListColumn;
    GridProdutoTreeMEDIDAS: TcxDBTreeListColumn;
    GridProdutoTreePATH: TcxDBTreeListColumn;
    GridProdutoTreeRATEIO: TcxDBTreeListColumn;
    GridProdutoTreeSERIAL: TcxDBTreeListColumn;
    GridProdutoTreeTAMANHO: TcxDBTreeListColumn;
    GridProdutoTreeCODNF_CST: TcxDBTreeListColumn;
    GridProdutoTreeCODNF_CFOP: TcxDBTreeListColumn;
    GridProdutoTreeCODNF_NCM: TcxDBTreeListColumn;
    GridProdutoTreeCODNF_CEST: TcxDBTreeListColumn;
    GridProdutoTreeCODLOCAL: TcxDBTreeListColumn;
    GridProdutoTreeCODFABRICA: TcxDBTreeListColumn;
    GridProdutoTreeCODPRODUTO_LOTE: TcxDBTreeListColumn;
    GridProdutoTreeCODACABAMENTO: TcxDBTreeListColumn;
    GridProdutoTreeCODPRODUTO_GRUPO: TcxDBTreeListColumn;
    GridProdutoTreeCODVENDA_FATURADO: TcxDBTreeListColumn;
    GridProdutoTreeCODVENDA_ORIGINAL: TcxDBTreeListColumn;
    GridProdutoTreeCODCOR: TcxDBTreeListColumn;
    GridProdutoTreeCODVENDA_PRODUTO_ORIGINAL: TcxDBTreeListColumn;
    GridProdutoTreeCODPRODUCAO: TcxDBTreeListColumn;
    GridProdutoTreeCODPRODUTO_MARCA: TcxDBTreeListColumn;
    GridProdutoTreeCODTIPO_IMPRESSAO: TcxDBTreeListColumn;
    liedtPessoa_Responsavel_Codigo: TdxLayoutItem;
    edtPessoa_Responsavel_Codigo: TcxDBTextEdit;
    GridProdutoTreePRODUTO_TIPO: TcxDBTreeListColumn;
    GridProdutoTreeCALENDARIO_DT_PREVISAO_FIM: TcxDBTreeListColumn;
    chkVenda_Tipo_Pode_Ser_Produzido: TcxDBCheckBox;
    lichkVenda_Tipo_Pode_Ser_Produzido: TdxLayoutItem;
    edtStatus: TcxDBTextEdit;
    liedtStatus: TdxLayoutItem;
    LiCkAgrupar: TdxLayoutItem;
    CkAgrupar: TcxCheckBox;
    GridProdutoTreeNF_VBC: TcxDBTreeListColumn;
    GridProdutoTreeNF_VBCST: TcxDBTreeListColumn;
    GridProdutoTreeNF_VICMSST: TcxDBTreeListColumn;
    GridProdutoTreeNF_VICMS: TcxDBTreeListColumn;
    GridProdutoTreeNF_IPI_VIPI: TcxDBTreeListColumn;
    GridProdutoTreeNF_VCREDICMSSN: TcxDBTreeListColumn;
    GridProdutoTreeNF_PCREDSN: TcxDBTreeListColumn;
    GridProdutoTreeNF_PIS_VPIS: TcxDBTreeListColumn;
    GridProdutoTreeNF_II_VII: TcxDBTreeListColumn;
    GridProdutoTreeNF_VFRETE: TcxDBTreeListColumn;
    GridProdutoTreeNF_PISST_VPIS: TcxDBTreeListColumn;
    GridProdutoTreeVDESC: TcxDBTreeListColumn;
    GridProdutoTreeVOUTRO: TcxDBTreeListColumn;
    GridProdutoTreeNF_ISS_VISS: TcxDBTreeListColumn;
    GridProdutoTreeNF_ISS_VBC: TcxDBTreeListColumn;
    GridProdutoTreeNF_ISSQN_VISSQN: TcxDBTreeListColumn;
    GridProdutoTreeNF_ISSQN_VBC: TcxDBTreeListColumn;
    GridProdutoTreeNF_ISSQN_VISSRET: TcxDBTreeListColumn;
    GridProdutoTreeNF_DESPADUANEIRA: TcxDBTreeListColumn;
    GridProdutoTreeNF_VALIQ_ESTADUAL: TcxDBTreeListColumn;
    GridProdutoTreeNF_VALIQ_IMPORTACAO: TcxDBTreeListColumn;
    GridProdutoTreeNF_VALIQ_MUNICIPAL: TcxDBTreeListColumn;
    GridProdutoTreeNF_VALIQ_NACIONAL: TcxDBTreeListColumn;
    GridProdutoTreeNF_VFCPUFDEST: TcxDBTreeListColumn;
    GridProdutoTreeNF_VICMSUFDEST: TcxDBTreeListColumn;
    GridProdutoTreeNF_VICMSUFREMET: TcxDBTreeListColumn;
    GridProdutoTreePODE_FATURAR: TcxDBTreeListColumn;
    edtResponsavelÎPessoasÎFONE1: TcxDBTextEdit;
    frxReponsavel: TfrxDBDataset;
    DSEndereco_Responsavel: TDataSource;
    QuerFinanceiroAReceber: TFDQuery;
    frxFinanceiroAReceber: TfrxDBDataset;
    dxLayoutItem68: TdxLayoutItem;
    lbPlaca_Equipamento: TLabel;
    lichkLocalEstoque: TdxLayoutItem;
    chkLocalEstoque: TcxCheckBox;
    licbxProduto_Estoque_Local: TdxLayoutItem;
    cbxProduto_Estoque_Local: TcxDBLookupComboBox;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    chkConfDevolucao: TcxCheckBox;
    Motordeclculodoitem1: TMenuItem;
    wrNotaFiscal: TwrNotaFiscal;
    QuerTransportadora: TFDQuery;
    GridProdutoTreeORDEM: TcxDBTreeListColumn;
    CadastroNF_VFRETE: TFloatField;
    TabMotorCalculo: TdxLayoutGroup;
    sprMotorCalculo: TdxSpreadSheet;
    LiMotorDeCalculo: TdxLayoutItem;
    dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar;
    dxLayoutItem4: TdxLayoutItem;
    btnMostrarSpr: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    ProtEstiloAvisoValidacao: TcxEditStyleController;
    ProtEstiloFalhaValidacao: TcxEditStyleController;
    GridProdutoTreeCALC_QPESO_BRUTO: TcxDBTreeListColumn;
    GridProdutoTreeCALC_QPESO_BRUTO_TOTAL: TcxDBTreeListColumn;
    GridProdutoTreeCALC_QPESO_LIQUIDO_TOTAL: TcxDBTreeListColumn;
    edtParcelaValor: TcxDBCurrencyEdit;
    liedtParcelaValor: TdxLayoutItem;
    TransaCredito: TFDTransaction;
    pnlSprMemoria: TPanel;
    SprMemoria: TdxSpreadSheet;
    dxLayoutItem10: TdxLayoutItem;
    chkInformacaoes_Adicionais: TcxCheckBox;
    GridProdutoTreeNF_COFINS_VCOFINS: TcxDBTreeListColumn;
    GridProdutoTreeCOMP_FORMULA: TcxDBTreeListColumn;
    GridProdutoTreeLARG_FORMULA: TcxDBTreeListColumn;
    GridProdutoTreeESPESSURA_FORMULA: TcxDBTreeListColumn;
    GridProdutoTreeQTDADEPECA_FORMULA: TcxDBTreeListColumn;
    GridProdutoTreeFORMULA: TcxDBTreeListColumn;
    RemoverFrmula1: TMenuItem;
    N3: TMenuItem;
    GridProdutoTreeTEM_FORMULACORRETA: TcxDBTreeListColumn;
    GridProdutoTreeOBS_PRODUCAO: TcxDBTreeListColumn;
    Produto_Estoque_Reservado: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DSProduto_Estoque_Reservado: TDataSource;
    VerificarEstoque: TMenuItem;
    GridProdutoTreecxDBTreeTEM_ESTOQUE_ABAIXO_MINIMO: TcxDBTreeListColumn;
    GridProdutoTreeVALOR_VENDA_MINIMO: TcxDBTreeListColumn;
    Venda_ProdutoCustoPorPeca: TFloatField;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    menuProducao: TPopupMenu;
    Enviarparaproduo1: TMenuItem;
    Verproduo1: TMenuItem;
    N4: TMenuItem;
    poupCancelarProducao: TMenuItem;
    TabDadosDoResponsavel: TdxLayoutItem;
    pnlPessoas: TPanel;
    Producao_Produto: TFDQuery;
    Producao: TFDQuery;
    StringField3: TStringField;
    GridProdutoTreeEM_PRODUCAO: TcxDBTreeListColumn;
    UCHist_Producao: TUCHist_DataSet;
    dxLayoutGroup1: TdxLayoutGroup;
    edtCEP_Entrega: TcxDBButtonEdit;
    edtBairro_Entrega: TcxDBTextEdit;
    edtComplemento_Entrega: TcxDBTextEdit;
    btnBuscarEndEntrega: TcxButton;
    edtCodCidadeEntregaÎCIDADES: TcxDBButtonEdit;
    edtCodCidadeEntregaÎCIDADESÎUF: TcxDBTextEdit;
    edtEndereco_Entrega: TcxDBTextEdit;
    edtNumero_Entrega: TcxDBTextEdit;
    chkIs_Orcamento: TcxDBCheckBox;
    chkIs_NotaFiscal: TcxDBCheckBox;
    chkIs_Venda: TcxDBCheckBox;
    edtEntrega_IE: TcxDBTextEdit;
    edtEntrega_Nome: TcxDBTextEdit;
    edtEntrega_Email: TcxDBTextEdit;
    edtEntrega_Fone: TcxDBTextEdit;
    edtEntregaPaisÎPais: TcxDBButtonEdit;
    edtCodCidadeEntregaÎCIDADESÎDescricao: TcxDBLabel;
    edtEntregaPaisÎPaisÎDESCRICAO: TcxDBLabel;
    GrupoDadosAdicionaisEnderecoEntrega: TdxLayoutGroup;
    MainLayoutGroup70: TdxLayoutGroup;
    libtnBuscarEndEntrega: TdxLayoutItem;
    MainLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    liedtCodCidadeEntregaÎCIDADES: TdxLayoutItem;
    LiedtCodCidadeEntregaÎCIDADESÎDescricao: TdxLayoutItem;
    liedtCodCidadeEntregaÎCIDADESÎUF: TdxLayoutItem;
    liedtEndereco_Entrega: TdxLayoutItem;
    liedtBairro_Entrega: TdxLayoutItem;
    liedtNumero_Entrega: TdxLayoutItem;
    MainLayoutGroup71: TdxLayoutGroup;
    liedtCEP_Entrega: TdxLayoutItem;
    liedtComplemento_Entrega: TdxLayoutItem;
    liedtEntregaPaisÎPais: TdxLayoutItem;
    LiedtEntregaPaisÎPaisÎDESCRICAO: TdxLayoutItem;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    liedtEntrega_Nome: TdxLayoutItem;
    liedtEntrega_Email: TdxLayoutItem;
    liedtEntrega_Fone: TdxLayoutItem;
    liedtEntrega_IE: TdxLayoutItem;
    liTipoDeVenda: TdxLayoutGroup;
    lichkIs_Orcamento: TdxLayoutItem;
    lichkIs_Venda: TdxLayoutItem;
    lichkIs_NotaFiscal: TdxLayoutItem;
    libtnExcluirParcelas: TdxLayoutItem;
    btnExcluirParcelas: TcxButton;
    PmComposicao2: TwrProdutoMemoria;
    PmComposicao: TwrProdutoMemoria;
    LanarCrdito2: TMenuItem;
    GridProdutoTreeTEM_TRIBUTACAO_INCORRETA: TcxDBTreeListColumn;
    liedtOperacao: TdxLayoutItem;
    edtOperacao: TcxDBTextEdit;
    cxGridViewFinanceiroSTATUS_TEF: TcxGridDBColumn;
    lblNSU: TcxLabel;
    lilblNSU: TdxLayoutItem;
    liedFolhas: TdxLayoutItem;
    edtFolhas: TcxDBCurrencyEdit;
    lichkFolhas: TdxLayoutItem;
    chkFolhas: TcxCheckBox;
    GridProdutoTreeFOLHAS: TcxDBTreeListColumn;
    tcCadastroGroup1: TdxTileControlGroup;
    btnProducao: TdxTileControlItem;
    EnviarparaRequisio1: TMenuItem;
    liedtValorOriginal: TdxLayoutItem;
    edtValorOriginal: TcxDBCurrencyEdit;
    lichkTabelaPrecoProduto: TdxLayoutItem;
    chkTabelaPrecoProduto: TcxCheckBox;
    lichkValorOriginal: TdxLayoutItem;
    chkValorOriginal: TcxCheckBox;
    licbTabelaProduto: TdxLayoutItem;
    cbTabelaProduto: TcxDBLookupComboBox;
    Produto_PrecoValor: TFloatField;
    GridProdutoTreeCALC_VALOR_ORIGINAL: TcxDBTreeListColumn;
    licbVariacao: TdxLayoutItem;
    cbVariacao: TcxDBLookupComboBox;
    lilblComissaoÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    lblComissaoÎPessoasÎRAZAOSOCIAL: TcxLabel;
    edtComissaoÎPessoas: TcxButtonEdit;
    liedtComissaoÎPessoas: TdxLayoutItem;
    edtComissaoÎPessoasÎCOMISSAO: TcxCurrencyEdit;
    liedtComissao: TdxLayoutItem;
    GrupoComissaoFuncProduto: TdxLayoutGroup;
    lichkComissaoFuncionario: TdxLayoutItem;
    chkComissaoFuncionario: TcxCheckBox;
    CadastroTOTAL_FATURA: TFloatField;
    liedtDT_APROVACAO_SAIDA_ETAPA: TdxLayoutItem;
    edtDT_APROVACAO_SAIDA_ETAPA: TcxDBDateEdit;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    GridProdutoTreeedtDT_APROVACAO_SAIDA_ETAPA: TcxDBTreeListColumn;
    liedtContatos: TdxLayoutItem;
    edtContatos: TcxDBTextEdit;
    GridProdutoTreeCONTATOS: TcxDBTreeListColumn;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    procedure DSStateChange(Sender: TObject);
    procedure Venda_ProdutoCalcFields(DataSet: TDataSet);
    procedure Venda_FinanceiroAfterEdit(DataSet: TDataSet);
    procedure Venda_FinanceiroBeforePost(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure btnCancelarClick(Sender: TdxTileControlItem);
    procedure btnExcluirClick(Sender: TdxTileControlItem);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CkAgruparClick(Sender: TObject);
    procedure Impostos1Click(Sender: TObject);
    procedure Calculartodososimpostos1Click(Sender: TObject);
    procedure edtResponsavelÎPessoasExit(Sender: TObject);
    procedure cbxTipo_VendaExit(Sender: TObject);
    procedure chkDevolucaoClick(Sender: TObject);
    procedure edtAtendenteÎPessoasExit(Sender: TObject);
    procedure EdtCondicaoPagtoÎCondicaoPagtoPropertiesChange(Sender: TObject);
    procedure btnParcelasClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridViewFinanceiroDblClick(Sender: TObject);
    procedure cxGridViewFinanceiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImprimirDiretoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxTipoExit(Sender: TObject);
    procedure cbxTipoPagtoExit(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure btn_wrReciboClick(Sender: TObject);
    procedure btn_wrCancelarClick(Sender: TObject);
    procedure btn_wrConfirmarClick(Sender: TObject);
    procedure RxDBComboEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure RxDBComboEdit4PropertiesChange(Sender: TObject);
    procedure EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FinanceiroAfterEdit(DataSet: TDataSet);
    procedure btn_wrFecharClick(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
    procedure PoupClientesClick(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure ImpostosComValorbaseodeVenda1Click(Sender: TObject);
    procedure FinanceiroBeforePost(DataSet: TDataSet);
    procedure BtnAnexosClick(Sender: TObject);
    procedure Venda_ProdutoBeforeEdit(DataSet: TDataSet);
    procedure MenuDireitaPopup(Sender: TObject);
    procedure PopupMenu_ProdutoPopup(Sender: TObject);
    procedure Excluirparcelas1Click(Sender: TObject);
    procedure ExcluirparcelasPDVPagamentos;
    procedure GrupoTabsPrincipalTabChanged(Sender: TObject);
    procedure EdtQuantGradePropertiesChange(Sender: TObject);
    procedure ReplicarGrupo1Click(Sender: TObject);
    procedure PoupImprimirCdigosdeBarrasClick(Sender: TObject);
    procedure PoupAutoPreenchercdigodebarrasClick(Sender: TObject);
    procedure Reajustarvenctodasparcelas1Click(Sender: TObject); //Associado em tempo de execução
    procedure btnConsultaTECVendaClick(Sender: TObject);
    procedure MenuEmpresasItemClick(Sender: TObject);
    procedure MenuEmpresasPopup(Sender: TObject);
    procedure cxGrid10DBTableView1DblClick(Sender: TObject);
    procedure edtResponsavelÎPessoasÎCONTATOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ZerarValoresdeImpostos1Click(Sender: TObject);
    procedure EdtFrenteVersoValorExit(Sender: TObject);
    procedure EdtFrenteVersoPorcentagemExit(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure btnConfirmaEndEntregaClick(Sender: TObject);
    procedure btnCancelaEndEntregaClick(Sender: TObject);
    procedure edtPedidoRepresentanteExit(Sender: TObject);
    procedure btnFecharPnlObservacaoVenda1Click(Sender: TObject);
    procedure cxGridViewFinanceiroMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure edtPedidoClienteExit(Sender: TObject);
    procedure BtnPnlChequeFecharClick(Sender: TObject);
    procedure EdtPrevisaoEntregaPropertiesChange(Sender: TObject);
    procedure edtResponsavelÎPessoasÎRAZAOSOCIALPropertiesChange(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtNotaFiscalExit(Sender: TObject);
    procedure DadosVeiculo1Click(Sender: TObject);
    procedure btnDadosVeiculoFecharClick(Sender: TObject);
    procedure DuplicarProduto1Click(Sender: TObject);
    procedure cbxTipo_VendaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbxTipo_VendaPropertiesEditValueChanged(Sender: TObject);
    procedure btnProducaoClick(Sender: TdxTileControlItem);
    procedure DBMemo1PropertiesEditValueChanged(Sender: TObject);
    procedure PoupReativarVendaClick(Sender: TObject);
    procedure edtResponsavelÎPessoasÎRAZAOSOCIALPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure Endereco_ResponsavelAfterOpen(DataSet: TDataSet);
    procedure PoupTornarOramentoClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure DeletarNFSeClick(Sender: TObject);
    procedure btnAprovarOrcamentoClick(Sender: TObject);
    procedure ConsultaProdutoGridCalcFields(DataSet: TDataSet);
    procedure Venda_ProdutoBeforeDelete(DataSet: TDataSet);
    procedure Venda_Produto_Centro_TrabalhoAfterInsert(DataSet: TDataSet);
    procedure ActDefinirCTProdutosExecute(Sender: TObject);
    procedure cxGridViewFinanceiroCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure MenuFinanceiroPopup(Sender: TObject);
    procedure EdtCodProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure edtPathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBTableView2TcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure AbrirVendaOriginal1Click(Sender: TObject);
    procedure ConsultaProdutoGridBeforeOpen(DataSet: TDataSet);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure CbParcelaTipoPagtoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid1DBTableView1TIPOPAGTOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure Definiressetipodevendacomopadro1Click(Sender: TObject);
    procedure cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(ASender: TcxDataSummaryItems;
      Arguments: TcxSummaryEventArguments; var OutArguments: TcxSummaryEventOutArguments);
    procedure CadEnviarEmail1Click(Sender: TObject);
    procedure btnTabelaPrecoClick(Sender: TObject);
    procedure btnProdutoTabelaPrecoClick(Sender: TObject);
    procedure Produto_PrecoCalcFields(DataSet: TDataSet);
    procedure btnConfigCamposProdutoClick(Sender: TObject);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure CadastroBeforeInsert(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure ParametrosBeforeOpen(DataSet: TDataSet);
    procedure GridProdutoTreeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure GridProdutoTreeDblClick(Sender: TObject);
    procedure QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(Sender: TObject);
    procedure WREventosCadastroImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);
    procedure GridProdutoTreeCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure WRCalcVENDA(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnMudarPrazoClick(Sender: TObject);
    procedure CkConfigCamposProdutoPDescClick(Sender: TObject);
    procedure CkConfigCamposProdutoVDescClick(Sender: TObject);
    procedure CkConfigCamposProdutoTipoDescClick(Sender: TObject);
    procedure CkConfigCamposProdutoTabPrecoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDT_OcamentoPropertiesChange(Sender: TObject);
    procedure GridProdutoTreeEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure GridProdutoTreeMoveTo(Sender: TcxCustomTreeList; AttachNode: TcxTreeListNode;
      AttachMode: TcxTreeListNodeAttachMode; Nodes: TList; var IsCopy, Done: Boolean);
    procedure GridProdutoTreeCustomDrawIndentCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListIndentCellViewInfo; var ADone: Boolean);
    procedure Venda_ProdutoAfterInsert(DataSet: TDataSet);
    procedure EdtStatusPropertiesChange(Sender: TObject);
    procedure cbxSituacaoPropertiesChange(Sender: TObject);
    procedure CkVendaTipoPodeSerProduzidoPropertiesChange(Sender: TObject);
    procedure dxStatusBar1Panels1Click(Sender: TObject);
    procedure EdtPrevisaoEntregaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure chkLocalEstoqueClick(Sender: TObject);
    procedure chkConfDevolucaoClick(Sender: TObject);
    procedure GridComposicaoTreeCODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Motordeclculodoitem1Click(Sender: TObject);
    procedure Venda_ProdutoAfterClose(DataSet: TDataSet);
    procedure SprMemoriaEditValueChanged(Sender: TdxSpreadSheetCustomView);
    procedure sprMotorCalculoEditValueChanged(Sender: TdxSpreadSheetCustomView);
    procedure btnMostrarSprClick(Sender: TObject);
    procedure GridProdutoTreeEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
    procedure GridComposicaoTreeQTDADEPECAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtQTDADePecaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCompPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtLargPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtEspessuraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCalc_PDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtCalc_VDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure pnlSprMemoriaExit(Sender: TObject);
    procedure btnNavegacaoProximoClick(Sender: TdxTileControlItem);
    procedure btnNavegacaoAnteriorClick(Sender: TdxTileControlItem);
    procedure edtCodProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure chkInformacaoes_AdicionaisClick(Sender: TObject);
    procedure Venda_ProdutoBeforePost(DataSet: TDataSet);
    procedure btnVerProducaoClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TdxTileControlItem);
    procedure GridProdutoTreeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GridProdutoTreeClick(Sender: TObject);
    procedure GridProdutoTreeFORMULAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridProdutoTreeQTDADEPECAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RemoverFrmula1Click(Sender: TObject);
    procedure GridProdutoTreeCOMPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridProdutoTreeLARGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridProdutoTreeESPESSURAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnCancelarProducaoClick(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure VerificarEstoqueClick(Sender: TObject);
    procedure GridProdutoTreeQUANTValidateDrawValue(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; const AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure edtQTDADePecaPropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Enviarparaproduo1Click(Sender: TObject);
    procedure WREventosCadastroValidaComponente(Sender: TObject;
  var AError: Boolean; var ErrorText: TCaption);
    procedure Venda_ProdutoBeforeInsert(DataSet: TDataSet);
    procedure InativaVendaAgrupada(ACodigo: string);
    procedure cbxTipo_VendaPropertiesChange(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(
      Sender: TObject);
    procedure Venda_ProdutoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure edtAtendenteÎPessoasÎCOMISSAOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtAgenciaÎPessoasÎCOMISSAOPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtRepresentanteÎPessoasÎCOMISSAOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure chkComissao_Funcionario_CobrarClick(Sender: TObject);
    procedure chkComissao_Agencia_CobrarClick(Sender: TObject);
    procedure chkComissao_Representante_CobrarClick(Sender: TObject);
    procedure chkComissao_Agencia_CobrarPropertiesChange(Sender: TObject);
    procedure chkComissao_Funcionario_CobrarPropertiesChange(Sender: TObject);
    procedure chkComissao_Representante_CobrarPropertiesChange(Sender: TObject);
    procedure chkFolhasClick(Sender: TObject);
    procedure BtnImprimirPadraoClick(Sender: TdxTileControlItem);
    procedure BtnConfiguracoesClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure EdtEquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProdutoTreeExpanded(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode);
    procedure GridProdutoTreeExpanding(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure edtVendaTotalPropertiesEditValueChanged(Sender: TObject);
    procedure EnviarparaRequisio1Click(Sender: TObject);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
    procedure chkTabelaPrecoProdutoClick(Sender: TObject);
    procedure chkValorOriginalClick(Sender: TObject);
    procedure cbTabelaProdutoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtValorPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure PoupCopiarVendacomProdutosClick(Sender: TObject);
    procedure cbVariacaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure chkComissaoFuncionarioClick(Sender: TObject);
    procedure edtValorPropertiesEditValueChanged(Sender: TObject);
    procedure GridProdutoTreeVALORPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridProdutoTreeTOTALPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtTotalPropertiesEditValueChanged(Sender: TObject);
    procedure GridProdutoTreeVALORValidateDrawValue(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; const AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure GridProdutoTreeTOTALValidateDrawValue(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; const AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure WREventosCadastroImpressaoAfterPrint(Sender: TObject);
    procedure CriarVendaVinculada1Click(Sender: TObject);
    procedure GridProdutoTreeQUANTPropertiesChange(Sender: TObject);
  private
//    AKeys: Variant;
    AFrameAnexosVenda: TFrameAnexosVenda;
    FFrmProdutoPreco: TFrmProduto_Preco;
    FFrameAgrupamento : TFrmVendaFrameAgrupamento;
    FListaComponentesGrade : TObjectList<TcxCurrencyEdit>;
    FGradeAdicionandoProdutos: Boolean; //Flag para controlar a adição de produtos com grade
    FFrmProduto_Wizard : TFrmProduto_Wizard;
    FPAFNFECodVendaGerada: string;
    FConProducao : TConsuM;
    FConsultaProduto: TFrmBase;
    FOldValue : Double;
//    FFrmFrameComposicao: TFrmFrameComposicao;
//    function GetLimiteDesconto: Double;

    procedure AbrirDetalhesProdutoSelecionado;
    function VerificaPedidoCliente : Boolean;
    function VerificaPedidoRepresentante : Boolean;
    function SQLLocal_VerificaContaPadrao(const ATipoPagamento: Variant): Variant;

    procedure LimparCampos;
    procedure SetVendaBloqueio(Transacao: TFDCustomTransaction; const ABloqueado: Boolean);
    procedure CriaComponentesGrade(AFamilia: Integer);
    procedure FinalizaEstoque;
    procedure CodProduto_TabelaCarregado(const ACodProduto_Tabela: Variant);
    procedure AtualizaModalidadeFrete;    // Vou Confeiri isso aqui e matar deixar apenas em 1 lugar, no cadastro de Pessoa, Muito Complicado treinar em dois lugares, custo supera o benefício para nossa empresa

    // Utilizado mesmo calculo da Composição no cadastro do produto - qualquer alterção nela, deve ser alterado no cadastro do produto também

    //Menu Empresas
    procedure CriaMenuEmpresas(AMenu: TMenuItem);   // essa função deve ir para o mestre, e todo as telas ter esse fácil acesso
    procedure MudarEmpresaAtiva(ANovaEmpresa: string);
    procedure TransferirVendaParaEmpresa(ANovaEmpresa: string);

    procedure EdtValorAcrescimoButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdtNF_VFRETEButtonClick(Sender: TObject; AButtonIndex: Integer);

    //Regras do Grid Financeiro
    function GetDocumentoParcelas(AParcela, AQuantidadeParcelas : Integer) : string;

//    procedure ConsultaOrcamentoAnterior;
    procedure AjustaUltimaParcela;
    procedure VerificaEstoque(Produto, AProdutoEdit :TDataSet);
    function VerificaValorMinimo(AValor, AValorMinimo:Double): Boolean;

    procedure EnviarProducao(AParentNode: TcxTreeListNode);
    procedure VerificaCheckboxConfigProduto;
    procedure DeterminaCorSePodeVender;
    function RetornaString(ACaminho: String): String;
    function VerificaOperadorDeCaixa(CodUsuario: Integer): Integer;
    procedure AbreConsultaEquipamento;
    procedure AbreCadastroEquipamento;
    procedure AdicionaParcela;
    procedure AlteraValor(AValor: double);
    procedure EdtValorButtonClick(Sender: TObject; AButtonIndex: Integer);
    function VerificarErrosValidacaoTreeList(var ATexto: String): Boolean;
    procedure AplicaValorMinimoButtonClick(Sender: TObject;
      AButtonIndex: Integer);



  public
    { Public declarations }

    FManterCodigoSetor: Integer;
    FManterCodigoFuncionario: Integer;
    FProtComponentesValidacao: TDictionary<string, TWinControl>;
    FFrameVendaPessoa: TFrameVendaPessoa;
    FFormVenda_Produto: TFrmVenda_Produto;
    FFrmPDV_Pagamento: TFrmPDV_Pagamento;
    FReativarVenda: String;
    FImprimindo: String;
    //Evita a venda seja zerada ao dar o Show, permitindo a emissão de vendas apenas criando o form, sem exibir
    property ListaComponentesGrade: TObjectList<TcxCurrencyEdit> read FListaComponentesGrade;
    function VerificaCustoImprimirOuFaturar(ACodVenda: String): Boolean;
    function VerificaTotalParcelas: Boolean;
    function VerificaSePodeTransformarParaPrevisao : Boolean;
    function VerificaESolicitaValorMinimoTreeList: Boolean;
    //--- Cópia da Venda----
    function FrameCopiarVendaEFinanceiro(AFormVendaBaseNovo :TFrame_Venda_Mestre; ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet; AObsPedidos: String = ''): string;
    procedure FrameCopiarVendaComProduto(ATag: Integer; ADataSetProduto: TDataSet; AGridProdutoTree: TcxDBTreeList; AVincula: Boolean; AFrmVendaNovo: TFrame_Venda_Mestre; AVendasSelecionadas: String = '');
    procedure FrameCopiarVendaComProdutoLista(ATag: Integer; ADataSetProduto: TDataSet; AGridProdutoTree: TcxDBTreeList; AVincula: Boolean; AFrmVendaNovo: TFrame_Venda_Mestre; AProdutosSelecionados: TArray<Integer>; FDQuery1: TFDQuery);
    procedure FrameCopiarVendaProdutos(ACodVendaOrigem: string; ACodVendaProdutoOrigem: Integer; ACodVendaDestino: string;
      AVincula: Boolean = True; AProdutoPadrao: string = ''; AInsere: Boolean = False);
    procedure AbrePDV(Key: Word);
    procedure AdicionaProduto;
    procedure AbrirObservacao;
    procedure FrameKeyDown(Key: Word);
    //----------------------
    class procedure AtualizaSTATUSVendaPrincipal(const AVenda, AVendaProduto: TDataSet; const AStatusFatura: TStatusFatura);

    procedure PreenchedadosAdicionaisdaNota;

    procedure CancelarFaturamentoAgrupado;
    //Validações
    procedure ValidacaoParaAdicionarVendaProduto;
    procedure AlterarValorCelula(TreeList: TcxDBTreeList; Node: TcxTreeListNode; Coluna: Integer; NovoValor: Variant);

    //Permissões
    function PodeAlterarParcelas: Boolean;
    function TemParcelasComNSU: Boolean;
    function PodeEditarVenda: Boolean;
    function PermiteImprimir: Boolean;
    function CalculaValorMinimoVenda(AValorMinimo:Double): Double;
    procedure AplicarPermissoes;
    procedure VerificaSePodeDarNovo;
    class function MigrarTipoDaVenda(ACodVenda, ANovoVendaTipo: string; AIsPedido: Boolean): Boolean;
    Class procedure AtualizaPessoas(AVenda, AEndereco :TDataSet);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  Base_Produto, Recibo, StrUtils, ACBrUtil, Financeiro_Contas_Escolha,
  CadLocal, Types, ConLocal, cxVariants, ShellApi, wrForms,
  IniFiles, Financeiro, DataModuleImpressao, ConEmpresa, ComObj, Senha, pcnConversaoNFe, CadProduto_Barras, XMLDoc,
  XMLDom, XMLIntf, Aguarde, CadCidades, ConCidades, ConCep, wrPreencheLookup,
  Classes.PlanoContas, Utils.Financeiro, CadProduto_Movimento, wrIntegracaoIBASI, wrFuncoes,
  VendaTipoSelecao, NFe, System.UITypes, DebugCounter, Email, CadEncaminhar,
  Excel, ConfiguracoesM, Financeiro_Credito,
  NFe_Status, uWeb, FrmRendimento_Formula, Validacoes, FrFrameVendedor,
  CadEmpresa, frFrameHistorico, Base_Produto_Venda_Modal, Utils.PlanoContas,
  Frame_VendaTipoSelecao, Frame_ConProducao_Mestre, Frame_CadRequisicao_Pocket, Frame_Con, Tag.APP, Tag.Form, Controller.Venda;

{$R *.dfm}

constructor TFrame_Venda_Mestre.Create(AOwner: TComponent);
var
  Reg: TRegistry;
begin
  Assert(TabProdutos.ActuallyVisible, 'Programador!! Coloque o GrupoProdutos como o primeiro a ser mostrado ne tela ao abrir!');
  inherited Create(AOwner);
//  FControleWR.TelaOrigem := cwtoVenda;
  FListaComponentesGrade := TObjectList<TcxCurrencyEdit>.Create;
  InicializaSQLWhere(ConsultaProdutoGrid);
  TabMotorCalculo.Visible:=usuario.Privilegiado;
  VerificaCheckboxConfigProduto;
//  ConfigCamposForm.ControlarTreeList(Self, GridProdutoTree);    bosta

  {$REGION 'Inicialização de Lookups'}
{  PreencheComboProdutoTipo_Desconto(cbxCalc_Tipo_Desconto.Properties);
  PreencheLookuppcnindIEDest(cbxResponsavel_Tipo_Contribuinte.Properties);
  PreencheLookupProduto_Estoque_Local(cbxProduto_Estoque_Local.Properties);
                 }
  {$ENDREGION}
//  TFrmFrameComposicao.CarregaFrame(FFrmFrameComposicao, pnlSprMemoria, WRCalcMemoria, PmComposicao);
  {$REGION 'Ajustes no FControleWR'}
//  FControleWR.FindComponente(EdtProjetoÎProjeto).AddSaida(EdtTituloServico, 'DESCRICAO');    // Achar um nome que tenha, Obra, Projeto, Título do Serviço, Tudo isso é esse campo
  {$ENDREGION}

  ConfigGrid.Carregar(self.ClassName);
  if Self.Owner <> nil then
  begin
    ConfigGrid.CarregaConfigTreeList(GridProdutoTree, Self.ClassName+ 'TreeListProdutoN');
    ConfigGrid.CarregaConfigGridClasse(cxGridViewFinanceiro, Self.ClassName+ 'GridFinanceiro');
    ConfigGrid.CarregaConfigGridClasse(cxGridDBTableView3, Self.ClassName+ 'GridConsultaProduto');
  end;


  ProdutoControleUnidades.AtualizaCaptionsTreeView(GridProdutoTree);
  ProdutoAtualizaViewUnidadeCaption(liedtComp, liedtLarg, liedtEspessura);
  (*  {$REGION 'Carregamento de Configurações'}
  { TODO 1 -oFelipe -cTConfig :
  Migrar tudo para Pedar de lá, Não pode ter duas regras
  Migrar se tiver vazio(VENDA_TITULO_BOTOES_FATURAMENTO), colocque "Fatuamento" }
  ConfigGrid.Atualizar(Self.ClassName);



  liedtCalc_VDesc_Manual.Visible     := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_VDESC');
  liedtCalc_PDesc_Manual.Visible     := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_PDESC');
  libtnProdutoTabelaPreco.Visible    := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TABPRECO');
  licbxCalc_Tipo_Desconto.Visible    := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TIPODESC');
  licbxProduto_Estoque_Local.Visible := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_ESTOQUE_LOCAL');
  lichkDevolucao.Visible             := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_DEVOLUCAO');

  GrupoTabComunicacaoVisual.Visible  := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_INFO_ADICIONAIS');

  CkAgrupar.Checked := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_AGRUPAR');


  GrupoProducao.Visible := pktProducaoOS.Ativo;     *)
  {$ENDREGION}

  {$REGION 'Botões em Edits'}
  DevCriaBotaoImagemEmEdit(edtVOutro, 'Transferir este Acréscimo da Venda para os Produtos', ImgListBotoesDescAcresc, 0, EdtValorAcrescimoButtonClick);
  DevCriaBotaoImagemEmEdit(edtValor, 'Aplicar valor mínimo do produto', ImgListBotoesDescAcresc, 1, AplicaValorMinimoButtonClick);
  DevCriaBotaoImagemEmEdit(edtTotal, 'Aplicar total mínimo do produto', ImgListBotoesDescAcresc, 1, AplicaValorMinimoButtonClick);
  edtValor.Properties.Buttons[0].Visible := False;
  edtTotal.Properties.Buttons[0].Visible := False;
//  DevCriaBotaoImagemEmEdit(edtNF_VFrete, 'Transferir este Frete da Venda para os Produtos',  ImgListBotoesDescAcresc, 0, EdtNF_VFRETEButtonClick);
//  DevCriaBotaoImagemEmEdit(TcxCurrencyEdit(GridProdutoTreeQTDADEPECA.Properties), 'Quantidade de Peças', ImgListBotoesDescAcresc, 0, EdtValorAcrescimoButtonClick);
//  DevCriaBotaoImagemEmEdit(edtVOutro, 'Transferir este Acréscimo da Venda para os Produtos', ImgListBotoesDescAcresc, 0, EdtValorAcrescimoButtonClick);
//  DevCriaBotaoImagemEmEdit(edtVOutro, 'Transferir este Acréscimo da Venda para os Produtos', ImgListBotoesDescAcresc, 0, EdtValorAcrescimoButtonClick);
//  DevCriaBotaoImagemEmEdit(edtVOutro, 'Transferir este Acréscimo da Venda para os Produtos', ImgListBotoesDescAcresc, 0, EdtValorAcrescimoButtonClick);
  {$ENDREGION}

  {$REGION 'Visibilidade de Componentes'}
  GrupoVeiculo.Visible     := Motos;
  GrupoEquipamento.Visible := Informatica;
  liedtObs_Producao.Visible := ComunicacaoVisual;

  {$ENDREGION}
end;


destructor TFrame_Venda_Mestre.Destroy;
begin
  Try    // Erro na troca de empresa,
//    TConfig.SaveInteger('VENDA_PARCELAS_CONTA_PADRAO', VarToIntDef(SpnCaixa.Value, 0));
    ConfigGrid.GravaConfigTreeList(GridProdutoTree, Self.ClassName + 'TreeListProdutoN');

  except End;
  Try    // Erro na troca de empresa,
    ConfigGrid.GravaConfigGrid(cxGridViewFinanceiro, Self.ClassName + 'GridFinanceiro');
  except End;
  Try    // Erro na troca de empresa,
    ConfigGrid.GravaConfigGrid(cxGridDBTableView3, Self.ClassName +'GridConsultaProduto');
  except End;
  inherited Destroy;
end;

class function TFrame_Venda_Mestre.MigrarTipoDaVenda(ACodVenda, ANovoVendaTipo: string; AIsPedido: Boolean): Boolean;   // Função Muito perigosa
var                                                                                       // Sendo editado sem regra de negócio
  QuerX: TFDQuery;                                                                        // Essa função não pode ficar assim
  ATransa: TFDTransaction;
  AModeloDesejado: TVendaTipoModelo;
  ACamposIs: TVendaCamposIs;
  AOk: Boolean;
  AOldTipo: string;
begin
  Result := False;
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  ACamposIs := TVendaCamposIs.Create(QuerX);
  try
    QuerX.SQL.Text := 'select first 1 MODELO ' +
                      'from VENDA_TIPO ' +
                      'where (DESCRICAO = :Cod)';
    QuerX.Params[0].AsString := ANovoVendaTipo;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      ShowMessageWR('Tipo de Venda inválido: ' + ANovoVendaTipo);
      Exit;
    end;                                                                  // Ja tenho o texto e não pode CONVERTER
    AModeloDesejado := VendaTipoModeloStrToEnum(QuerX.Fields[0].AsString);// Conversão apenas quando tem interação externa
    QuerX.Close;
    QuerX.Params.Clear;

    ACamposIs.UsarEsteModelo := AModeloDesejado;

    QuerX.SQL.Text := 'select CODIGO, DT_FATURAMENTO, NOTAFISCAL, IS_VENDA, IS_ORCAMENTO, IS_NOTAFISCAL, VENDA_TIPO, IS_PEDIDO ' +
                      'from VENDA ' +
                      'where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsString := ACodVenda;
    QuerX.Open;

    //Usa a classe TVendaCamposIs para verificar primeiro se o registro da venda pode ser alterado para o tipo desejado
    //passando para o objeto qual é o tipo que se deseja comparar
    case AModeloDesejado of
      vtmVenda:      AOk := ACamposIs.IsVenda;
      vtmOrcamento:  AOk := ACamposIs.IsOrcamento;
      vtmNotaFiscal: AOk := ACamposIs.IsNotaFiscal;
    else
      AOk := False;
    end;

    //Caso o registro da venda seja considerado do tipo escolhido usando o tipo desejado, aplica as modificações no registro
    if AOk then
    begin
      AOldTipo := QuerX.FieldByName('VENDA_TIPO').AsString;

      QuerX.Edit;
      QuerX.FieldByName('VENDA_TIPO').AsString := ANovoVendaTipo;
      ACamposIs.UpdateDataSet;

      // Se for encaminhado para pedido, deve setar pedido = 'S' e tirar da venda.
      // Sobescreve o ACampoIs.UpdateDataSet caso seja IsPedido.
      if AIsPedido then
      begin
        QuerX.FieldByName('IS_VENDA').AsString := 'N';
        QuerX.FieldByName('IS_PEDIDO').AsString := 'S';
      end;

      QuerX.Post;

//      TFrameHistorico.AdicionaHistorico(ATransa, UCHist_Cadastro, ACodVenda,
//        'Alterou o Tipo de Venda de "' + AOldTipo + '" para "' + ANovoVendaTipo + '".', '');

      if ATransa.Active then
        ATransa.Commit;

      Result := True;
    end;
  finally
    ACamposIs.Free;
    QuerX.Free;
    ATransa.Free;
  end;
end;

class procedure TFrame_Venda_Mestre.AtualizaSTATUSVendaPrincipal(const AVenda, AVendaProduto: TDataSet; const AStatusFatura: TStatusFatura);//TODO  Ta fazendo por fora e não tem como saber quando isso foi feito, ou de onde veio a alteração
var
  QuerX, QuerF, QuerY: TWRDataSet;
  AStatus: string;
begin
  // Copia da venda para faturamento originalmente construida
  QuerX := TWRDataSet.Create(AVenda);
  QuerF := TWRDataSet.Create(AVenda);
  AVendaProduto.DisableControls;
  AVendaProduto.Refresh;
  try
    QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.OBS_FATURAMENTO = :Observacao, VP.PODE_FATURAR = :PodeFaturar, ' +
                      '       VP.CODVENDA_FATURADO = :CodVendaFaturado, VP.QUANTFATURADA = :QuantFaturada ' +
                      'where ((VP.CODVENDA = :CodVendaOriginal) and (VP.CODIGO = :CodVendaProdutoOriginal))  ' +
                      //'      or ((VP.CODVENDA_ORIGINAL = :CodVendaOriginal) and (VP.CODVENDA_PRODUTO_ORIGINAL = :CodVendaProdutoOriginal))) ' +
                      '      and (VP.CODVENDA is distinct from :CodVenda)';

    AVendaProduto.First;
    while not AVendaProduto.Eof do
    begin
      if AVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString <> '' then
      begin
        QuerY := TWRDataSet.Create(AVenda);
        QuerY.SQL.Text := 'select QUANTFATURADA from VENDA_PRODUTO VP where ((VP.CODVENDA = :CodVendaOriginal) and (VP.CODIGO = :CodVendaProdutoOriginal))  ' +
                  '      and (VP.CODVENDA is distinct from :CodVenda)';
        QuerY.ParamByName('CodVendaOriginal').AsString         := AVenda.FieldByName('CODVENDA_PRINCIPAL').AsString;
        QuerY.ParamByName('CodVendaProdutoOriginal').AsInteger := AVendaProduto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').AsInteger;
        QuerY.ParamByName('CodVenda').AsString                 := AVendaProduto.FieldByName('CODVENDA').AsString;
        QuerY.Open;
        // tem qeu fazer select na query pronta

        QuerX.ParamByName('CodVendaOriginal').AsString         := AVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString;
        QuerX.ParamByName('CodVendaProdutoOriginal').AsInteger := AVendaProduto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').AsInteger;
        QuerX.ParamByName('CodVenda').AsString                 := AVendaProduto.FieldByName('CODVENDA').AsString;
        if AStatusFatura in [tsfFatura, tsfNota] then
        begin
          QuerX.ParamByName('CodVendaFaturado').AsString := AVendaProduto.FieldByName('CODVENDA').AsString;
  //        QuerX.ParamByName('Observacao').AsString               := 'FATURADO PARCIALMENTE: ' + Venda_ProdutoCODVENDA.AsString;
          if AVenda.FieldByName('NOTAFISCAL').AsLargeInt > 0 then    // LargeInt Fora do Padrão
            QuerX.ParamByName('Observacao').AsString := 'Nota : ' + AVenda.FieldByName('NOTAFISCAL').AsString;
//          QuerX.ParamByName('PodeFaturar').AsString := 'N';
          QuerX.ParamByName('QuantFaturada').AsFloat := QuerY.FieldByName('QUANTFATURADA').AsFloat + AVendaProduto.FieldByName('QUANT').AsFloat;
        end;
        if AStatusFatura = tsfCancelafatura then
        begin
          QuerX.ParamByName('CodVendaFaturado').Value := Null;
  //        QuerX.ParamByName('Observacao').AsString               := 'FATURADO PARCIALMENTE: ' + Venda_ProdutoCODVENDA.AsString;
//          QuerX.ParamByName('PodeFaturar').AsString   := 'S';
          QuerX.ParamByName('QuantFaturada').AsFloat := QuerY.FieldByName('QUANTFATURADA').AsFloat - AVendaProduto.FieldByName('QUANT').AsFloat;
        end;

        //Verificar quantidade faturada e quantidade de itens tirado nota
  //    Pegar a quantidade e Gerar o texto no cancelar colocar o negativo e forma o Texto
        QuerX.ExecSQL;
        if AStatusFatura = tsfFatura then
        begin
          //Caso todos os produtos da venda original não possam mais ser faturados, então a venda original
          //é desativada.
          QuerF.SQL.Text := 'select first 1 1 ' +
                            'from VENDA_PRODUTO ' +
                            'where (CODVENDA = :CodVenda) ' +
                            '      and (coalesce(PODE_FATURAR, '''') <> ''N'')';
          QuerF.ParamByName('CodVenda').AsString := AVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString;
          QuerF.Open;
          if (QuerF.IsEmpty) then
          begin
            QuerF.Close;
            QuerF.SQL.Text := 'update VENDA set IS_VENDA = ''N'', IS_PEDIDO = ''S''' +
                              'where (CODIGO = :Codigo)';
            QuerF.ParamByName('Codigo').AsString := AVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString;
            QuerF.ExecSQL;
          end;
        end;
      end;
      AVendaProduto.Next;
    end;
  finally
    QuerX.Free;
    QuerF.Free;
    QuerY.Free;
    AVendaProduto.EnableControls;
  end;
end;

{$REGION 'SEÇÃO 1: FUNÇÕES DA TELA'}

function TFrame_Venda_Mestre.VerificaPedidoCliente: Boolean;   // Desenvolver regra agregada ao campo
//var                                                // Essa regra não pode existir
//  QuerX : TFDQuery;
begin
  //Movido para wrValidacoes
  {Result := True;
  if (Cadastro.FieldByName('PEDIDO_COMPRA').AsString <> '') AND (Cadastro.FieldByName('CODVENDA').AsString = '')then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select first 1 CODIGO ' +
                        'from VENDA ' +
                        'where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
                        '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
                        '     and (STATUS like ''ATIVO%'')' +
                        '     and (CODIGO <> :CodVenda) ' +
                        '     and (CODVENDA IS NULL)';
      QuerX.ParamByName('CodCliente').AsString    := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      QuerX.ParamByName('PedidoCliente').AsString := Cadastro.FieldByName('PEDIDO_COMPRA').AsString;
      QuerX.ParamByName('CodVenda').AsString      := Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;
      Result := QuerX.IsEmpty;
      if not Result then
        ShowMessageWR('Número de Pedido deste Cliente já cadastrado no Pedido: ' + QuerX.FieldByName('CODIGO').AsString, MB_ICONWARNING);
    finally
      QuerX.Free;
    end;
  end; }
end;

function TFrame_Venda_Mestre.VerificaPedidoRepresentante: Boolean;   // Isso deve ser eliminado, pois no campo da tela ja tem essa função de informar que o campo é Unico
//var                                                        // Função morta
//  QuerX : TFDQuery;                                        // Nas regras novas, as funções que o felipe esta pedindo para o grid deve atender essa funcionalidade
begin
  //Movido para wrValidacoes
  {Result := True;
  if (Cadastro.FieldByName('PEDIDO_REP').AsString <> '') and (Cadastro.FieldByName('PESSOA_REPRESENTANTE_CODIGO').AsString <> '') AND (Cadastro.FieldByName('CODVENDA').AsString = '') then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select first 1 CODIGO from VENDA V ' +
                        'where V.PESSOA_REPRESENTANTE_CODIGO = :CODREPRESENTANTE ' +
                        '     and V.PEDIDO_REP = :PEDIDO_REPRESENTANTE ' +
                        '     and V.CODIGO <> :CODVENDA'+
                        '     and (V.STATUS like ''ATIVO%'')' +
                        '     and (V.CODVENDA IS NULL)';
      QuerX.ParamByName('CODREPRESENTANTE').AsString     := Cadastro.FieldByName('PESSOA_REPRESENTANTE_CODIGO').AsString;
      QuerX.ParamByName('PEDIDO_REPRESENTANTE').AsString := Cadastro.FieldByName('PEDIDO_REP').AsString;
      QuerX.ParamByName('CODVENDA').AsString             := Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;

      Result := QuerX.IsEmpty;

      if not Result then
      begin
        ShowMessageWR('Número de Pedido deste Representante já cadastrado no Pedido: ' + QuerX.FieldByName('CODIGO').AsString, MB_ICONWARNING);
      end;
    finally
      QuerX.Free;
    end;
  end;  }
end;

procedure TFrame_Venda_Mestre.VerificarEstoqueClick(Sender: TObject);
begin
  inherited;
  VerificaEstoque(Venda_produto, Venda_produto );
end;

// e agora tem que remover qualquer tipo de invazão de qualquer tipo
procedure TFrame_Venda_Mestre.VerificaSePodeDarNovo;  // Só pode dar novo no botão novo e pronto, simples assim, toda outra regra de qualquer tela esta errada
begin
  if Cadastro.FieldByName('CODIGO').AsString = '' then
  begin
    if UCControls1.GetComponentRight(btnNovo).Enabled then
    begin
      btnNovoClick(nil);
    end else
      Exit;
  end;
end;

procedure TFrame_Venda_Mestre.LimparCampos;  // Isso é um erro, só pode ter um único lugar que busque o produto com suas regras
begin                              // ponto de acesso a dados em outra tela deve ser tudo em uma unica procedure,
//  if FNaoLimparCampos then
//    Exit;
  edtCodProduto.Text:='';
  edtComissaoÎPessoas.Text := '';

  EdtFrenteVersoValor.Value       := 0.0;
  EdtFrenteVersoPorcentagem.Value := 0.0;

  FListaComponentesGrade.Clear;
  GrupoGrade.Visible := False;
end;

function TFrame_Venda_Mestre.GetDocumentoParcelas(AParcela, AQuantidadeParcelas : Integer) : string;   //OK
var
  AExcluirOS : Boolean;
  ACodigo : string;
begin
  AExcluirOS := TConfig.ReadBoolean('VENDA_EXCLUIR_PREFIXO_OS_PARCELA_FINANCEIRO');
  if MultiEmpresa then
    ACodigo := Cadastro.FieldByName('CODIGO').AsString
  else
    ACodigo := Copy(Cadastro.FieldByName('CODIGO').AsString, 1, Pos('-', Cadastro.FieldByName('CODIGO').AsString) -1);
  Result := IfThen(not AExcluirOS, 'Os ') + ACodigo + ' ' + IntToStr(AParcela) + '/' + IntToStr(AQuantidadeParcelas);
end;

procedure TFrame_Venda_Mestre.Definiressetipodevendacomopadro1Click(Sender: TObject);  { TODO 1 -oFelipe -cTConfig : Configuração deve ficar em configuração }
var                                                                          // Deve ficar no TConfig eu acredito
  Reg: TRegistry;                                                            // mesma opnião ainda, isso é referente a empresa e não a máquina que esta instalada, deve ficar no banco
begin
// Código Antigo -----------------------------------
//  if not (ds.State in [dsEdit, dsInsert]) then
//    exit;
//  Reg := TRegistry.Create;
//  try
//    Reg.RootKey := HKEY_CURRENT_USER;
//    if Reg.OpenKey(Sistema.RegPath + ClassName + '\', true) then
//      Reg.Writeinteger('CodVenda_Tipo' + Empresa.FieldByName('CODIGO').AsString, StrToInt(ProcuraField('Codigo', 'Venda_tipo',['DESCRICAO'], [Cadastro.FieldByName('VENDA_TIPO').AsString])));
//  finally
//    Reg.Free;
//  end;
//--------------------------------------------------
end;

procedure TFrame_Venda_Mestre.ValidacaoParaAdicionarVendaProduto;     { TODO 1 -oFelipe -cSQL : Criar o campo e preencher antes comparar apenas campos na tela }
var
  ACodProduto : TCodBarras;
//  QuerX : TFDQuery;

  function ValidaMedidas : Boolean;
  var
    AUnidade : TUnidade;
  begin
    Result := True;
    AUnidade := ProdutoControleUnidades.GetUnidade(edtUnidade.Text);
    if AUnidade.CalcComprimento and (edtComp.Value = 0) then
    begin
      ShowMessageWR('Informe ' + ProdutoControleUnidades.CaptionComprimento.Descricao + '!');
      Result := False;
      edtComp.SetFocusWR;
    end;

    if Result and AUnidade.CalcLargura and (edtLarg.Value = 0) then
    begin
      ShowMessageWR('Informe ' + ProdutoControleUnidades.CaptionLargura.Descricao + '!');
      Result := False;
      edtLarg.SetFocusWR;
    end;

    if Result and AUnidade.CalcEspessura and (edtEspessura.Value = 0) then
    begin
      ShowMessageWR('Informe ' + ProdutoControleUnidades.CaptionEspessura.Descricao + '!');
      Result := False;
      edtEspessura.SetFocusWR;
    end;
  end;
begin
  VerificaSePodeDarNovo;

 {
    if Cadastro.State = DSBrowse then
      Cadastro.Edit;                     // Colocou a venda em edição
     }

  if not ValidaMedidas then
    Abort;

  //Movido para wrValidacoes
  {if not (edtQuant.Value > 0) then
  begin
    edtQuant.SetFocusWR;
    ShowMessageWR('Coloque a quantidade do produto/serviço');
    Abort;
  end;}
  //varifica codigo aplicação e codigo tipo impressao

  //Campos com obrigação via configuração devem ser configurados pela tela de configurações de campos.
  //Modificar aqui quando a configurações por grupos estiver funcionando
  if (edtCodTipo_ImpressaoÎTipo_Impressao.Text = '') and not(lblCampoObrigatorioImpressao.Visible) then
  begin
    edtCodTipo_ImpressaoÎTipo_Impressao.SetFocusWR;
    ShowMessageWR('Campo obrigatório! Código do Tipo de Impressão');
    Abort;
  end;
  if (EdtLocalÎLocal.Text = '') and not(lblCampoObrigatorioAplicacao.Visible) then
  begin
    EdtLocalÎLocal.SetFocusWR;
    ShowMessageWR('Campo obrigatório! Código do Local de Aplicação.');
    Abort;
  end;
  //varifica OBS Produto e caminho do aquivo
  if (edtPath.Text = '') and not(lblCampoObrigatorioCaminho.Visible) then
  begin
    edtPath.SetFocusWR;
    ShowMessageWR('Campo obrigatório! Caminho do Arquivo.');
    Abort;
  end;
  if (edtObs_Producao.Text = '') and not(lblCampoObrigatorioOBSProduto.Visible) then
  begin
    edtObs_Producao.SetFocusWR;
    ShowMessageWR('Campo obrigatório! Obs. Produto.');
    Abort;
  end;

// Verifica a quantidade minima permitida para venda do produto, ao inserir o item no grid da venda.
//  VerificaQuantMinimaVenda(false);      // não pode verificar aqui com SQL  , Conferência antes, a faz o campo aparecer na tela se esse campo estiver visivel cobre do cliente

  //Movido para wrValidacoes
  {if Trim(edtProdutoDescricao.Text) = '' then
  begin
    edtCodProdutoÎProduto.SetFocusWR;
    ShowMessageWR('Informe um Produto ou Serviço');
    Abort;
  end; }

end;

procedure TFrame_Venda_Mestre.FrameCopiarVendaProdutos(ACodVendaOrigem: string; ACodVendaProdutoOrigem: Integer; ACodVendaDestino: string;
  AVincula: Boolean = True; AProdutoPadrao: string = ''; AInsere: Boolean = False);    // VAI DAR CAGADA
var                                                                                    // Migra a copia correta, Só através do componete
  QuerOrig, QuerDest, QuerX, QuerServico: TFDQuery;                                    // Da errado Merda,as fórmulas ficam malucas sem posição e os filhos ficam perdidos
  I, ANewCodProduto: Integer;
begin
  QuerServico := GeraFDQuery(TransaFD);
  QuerOrig := GeraFDQuery(TransaFD);
  QuerDest := GeraFDQuery(TransaFD);
  try
    QuerDest.SQL.Text := 'select max(CODIGO) ' +
                         'from VENDA_PRODUTO ' +
                         'where (CODVENDA = :Cod)'; // Não pode mais usar SQL no código
    QuerDest.Params[0].AsString := ACodVendaDestino;
    QuerDest.Open;
    ANewCodProduto := QuerDest.Fields[0].AsInteger + 1;
    QuerDest.Close;

    QuerDest.SQL.Text := 'select * ' +
                         'from VENDA_PRODUTO ' +
                         'where (CODVENDA = :Cod)';
    QuerDest.Params[0].AsString := ACodVendaDestino;
    QuerDest.Open;

    QuerOrig.SQL.Text := 'select * ' +
                         'from VENDA_PRODUTO ' +
                         'where (CODVENDA = :CodVenda) '+
                         'and (CODIGO = :Codigo)';
    QuerOrig.ParamByName('Codigo').AsInteger  := ACodVendaProdutoOrigem;
    QuerOrig.ParamByName('CodVenda').AsString := ACodVendaOrigem;
    QuerOrig.Open;
    if AProdutoPadrao <> '' then    // Errado Pois aqui Guardava o Nome Do Produto e não o Código
    begin                           // Foi Modificado e não foi ajustado, AJUSTAR QUANDO POSSÍVEL
      if AInsere then
      begin
        QuerDest.Insert;
        QuerServico.Sql.Text := 'select * ' +
                                'from PRODUTO ' +
                                'where (CODIGO = :Codigo)';
        QuerServico.ParamByName('Codigo').AsString := TConfig.ReadString('VENDA_SERVICO_PRODUTO_PADRAO');   //// erroooo <<<< tECH pRESS
        QuerServico.Open;
        QuerDest.FieldByName('CODIGO').AsInteger           := ANewCodProduto;
        QuerDest.FieldByName('CODVENDA').AsString          := ACodVendaDestino;
        QuerDest.FieldByName('CODPRODUTO').AsString        := QuerServico.FieldByName('CODIGO').AsString;
        QuerDest.FieldByName('PRODUTO').AsString           := QuerServico.FieldByName('DESCRICAO').AsString;
        QuerDest.FieldByName('UNIDADE').AsString           := QuerServico.FieldByName('UNIDADE').AsString;
        QuerDest.FieldByName('CODPRODUTO_GRUPO').AsString  := QuerServico.FieldByName('CODPRODUTO_GRUPO').AsString;
        QuerDest.FieldByName('QUANT').AsFloat              := 1;
        QuerDest.FieldByName('QTDADEPECA').AsFloat         := 1;
        QuerDest.FieldByName('VALOR').AsFloat              := QuerOrig.FieldByName('VALOR').AsFloat * QuerOrig.FieldByName('QUANT').AsFloat;
      end else
      begin
        QuerDest.Edit;
        QuerDest.FieldByName('VALOR').AsFloat              := QuerDest.FieldByName('VALOR').AsFloat + (QuerOrig.FieldByName('VALOR').AsFloat * QuerOrig.FieldByName('QUANT').AsFloat);
        QuerDest.FieldByName('VDESC').AsFloat              := QuerDest.FieldByName('VDESC').AsFloat + QuerOrig.FieldByName('VDESC').AsFloat;
        QuerDest.FieldByName('VOUTRO').AsFloat             := QuerDest.FieldByName('VOUTRO').AsFloat + QuerOrig.FieldByName('VOUTRO').AsFloat;
      end;
//      QuerDest.FieldByName('TEM_PRODUCAO_ENVIADO').AsString := 'N';
      QuerDest.FieldByName('PROTOCOLO').Clear;
      QuerDest.Post;
    end else
    begin
      QuerDest.Insert;
      for I := 0 to QuerOrig.FieldCount - 1 do
        QuerDest.FieldByName(QuerOrig.Fields[i].FieldName).Value := QuerOrig.Fields[i].Value;
      QuerDest.FieldByName('CODIGO').AsInteger                   := ANewCodProduto;
      QuerDest.FieldByName('CODVENDA').AsString                  := ACodVendaDestino;
      QuerDest.FieldByName('CODPRODUCAO').Clear;
      QuerDest.FieldByName('PODE_FATURAR').Clear;
      if AVincula then
      begin
        // Copiar o pedido de compra para as tags xped e xItem para deixar mais bonito
        if QuerDest.FieldByName('CODVENDA_ORIGINAL').IsNull then  //(Fatura <> 'Agrupado') and
        begin
          QuerDest.FieldByName('CODVENDA_ORIGINAL').Value         := QuerOrig.FieldByName('CODVENDA').Value;
          QuerDest.FieldByName('CODVENDA_PRODUTO_ORIGINAL').Value := QuerOrig.FieldByName('CODIGO').Value;
        end;
      end else
      begin
        QuerDest.FieldByName('CODVENDA_ORIGINAL').Clear;
        QuerDest.FieldByName('CODVENDA_PRODUTO_ORIGINAL').Clear;
      end;
//      QuerDest.FieldByName('TEM_PRODUCAO_ENVIADO').AsString := 'N';
      QuerDest.FieldByName('PROTOCOLO').Clear;
      QuerDest.Post;

      {if AVincula then
      begin
        //Atualiza os vínculos da produção
        QuerX := GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'update PRODUCAO set CODVENDA = :NewCodVenda, CODVENDA_PRODUTO = :NewCodVendaProduto, ' +
                            '                  CODVENDA_ORIGINAL = :CODVENDA_ORIGINAL, CODVENDA_PRODUTO_ORIGINAL = :CODVENDA_PRODUTO_ORIGINAL ' +
                            'where (CODVENDA = :OldCodVenda) AND (CODVENDA_PRODUTO = :OldCodVendaProduto)';
          QuerX.ParamByName('OldCodVenda').AsString                := QuerOrig.FieldByName('CODVENDA').Value;
          QuerX.ParamByName('OldCodVendaProduto').AsInteger        := QuerOrig.FieldByName('CODIGO').Value;
          QuerX.ParamByName('CODVENDA_ORIGINAL').AsString          := QuerOrig.FieldByName('CODVENDA').Value;
          QuerX.ParamByName('CODVENDA_PRODUTO_ORIGINAL').AsInteger := QuerOrig.FieldByName('CODIGO').Value;
          QuerX.ParamByName('NewCodVenda').AsString                := ACodVendaDestino;
          QuerX.ParamByName('NewCodVendaProduto').AsInteger        := ANewCodProduto;
          QuerX.ExecSQL;
        finally
          QuerX.Free;
        end;
      end;  }
    end;

  finally
    QuerDest.Free;
    QuerServico.Free;
    QuerOrig.Free;
  end;
end;

procedure TFrame_Venda_Mestre.FrameEnter(Sender: TObject);
var
  AOk: Boolean;
begin
  inherited;
  //Necessário devido ao método de restauração de grid utilizado, que elimina estes eventos da form
  //para que a mesma não grave o grid ao fechar
//  AplicarPermissoes; //foi para FORM ACTIVE
  QuerVenda_Tipo.Open;        // Aqui deveria ser close open, se caso o usuário cadastre uma nova, (ir no banco e verificar se precisa atualizar) descobrir os eventos para ter esse comportamento
  PreencheComboBox('DESCRICAO', 'VENDA_SITUACAO', cbxSituacao);
  PreencheComboBox('DESCRICAO', 'VENDA_ESTAGIO', cbxEstagio);

//  Registra_WR_ValidateEvento(edtCodProduto, TaValidadte);


  libtnConsultaTECVenda.Visible := TConfig.ReadBoolean('UTILIZA_CONSULTA_TEC');    // Necessário criar outra Tag, e colocar na tala se preenche ou não

  PreencheTiposPagtoArray([cbxTipoPagto.Properties.Items,
                           TcxComboBoxProperties(cxGrid1DBTableView1TIPOPAGTO.Properties).Items]);    // TODO: Padronizar colocando a função na Unit wrValidacao
  LimparCampos;
//  AplicaConditionalFormatting(Configuracao_Acao_Campos, GridProdutoTree);

  SpnCaixa.Value   := TConfig.ReadInteger('VENDA_PARCELAS_CONTA_PADRAO');
  if VarSameValueWR(SpnCaixa.Value, 0) then
    SpnCaixa.Value := 1;

  if TConfig.ReadString('NOME_DATA_LIMITE') <> '' then
  begin
    LiEdtDtPrometidoPara.CaptionOptions.Text :=  TConfig.ReadString('NOME_DATA_LIMITE');
  end;
  if TConfig.ReadString('NOME_DATA_ENTREGA') <> '' then
  begin
    liedtCALENDARIO_DT_PREVISAO_FIM.CaptionOptions.Text  :=  TConfig.ReadString('NOME_DATA_ENTREGA');
    GridProdutoTreeCALENDARIO_DT_PREVISAO_FIM.Caption.Text    :=  TConfig.ReadString('NOME_DATA_ENTREGA');
  end;
  if TConfig.ReadString('NOME_DATA_ETAPA') <> '' then
  begin
    liedtDT_APROVACAO_SAIDA_ETAPA.CaptionOptions.Text   :=  TConfig.ReadString('NOME_DATA_ETAPA');
    GridProdutoTreeedtDT_APROVACAO_SAIDA_ETAPA.Caption.Text  :=  TConfig.ReadString('NOME_DATA_ETAPA');
  end;


  GridProdutoTreeORDEM.SortOrder := TdxSortOrder.soAscending;
end;


function TFrame_Venda_Mestre.FrameCopiarVendaEFinanceiro(AFormVendaBaseNovo :TFrame_Venda_Mestre; ADatasetVenda, ADataSetFinanceiro, ADataSetProduto: TDataSet; AObsPedidos: String = ''): string;  // OK, Copiar uma só venda dá certo
var
  QuerDest: TFDQuery;
  i: Integer;
//  AEstagio :String = ''; ASituacao :String = ''; AVendaTipo :String = ''
begin
  inherited;
  QuerDest := GeraFDQuery(AFormVendaBaseNovo.TransaFD);
  try
    QuerDest.SQL.Text := TFdQuery(ADatasetVenda).SQL.Text;
    QuerDest.Open;
    QuerDest.Insert;

    for I := 0 to ADatasetVenda.FieldCount - 1 do
    begin
      //Caso esteja copiando os dados da venda para duplicar para outros usos
      if (ADatasetVenda.Fields[i].FieldKind = fkData) and not MatchStr(ADatasetVenda.Fields[i].FieldName, ['PROJETO_DT_INICIO', {'INTERVALO_MENSAL',}
         'VENDA_TIPO', 'NF_SAIDA_ENTRADA', 'NF_FINALIDADE', 'NF_FRETEPORCONTA', 'BLOQUEIO', 'DT_FATURAMENTO', 'NOTAFISCAL',
         'SITUACAOFINANCEIRA', 'PROJETO_DT_FIM', 'NF_DT_EMISSAO', {'OBSERVACAO',} 'IS_NOTAFISCAL', 'SEQUENCIA',
         'DT_ORCAMENTO_FINALIZADO', 'OPERACAO', 'TEM_OPERACAO_TEF', 'CODVENDA_VINCULADA', 'TEM_IMPRESSO']) then
        QuerDest.FieldByName(ADatasetVenda.Fields[i].FieldName).Value := ADatasetVenda.Fields[i].Value
    end;

//    QuerDest.FieldByName('IS_VENDA').AsString       := 'S';
//    QuerDest.FieldByName('IS_ORCAMENTO').Clear;
//    QuerDest.FieldByName('IS_Pedido').Clear;
//    QuerDest.FieldByName('IS_NOTAFISCAL').Clear;

//    QuerDest.FieldByName('SITUACAO').AsString      := ASituacao;
//    QuerDest.FieldByName('VENDA_ESTAGIO').AsString := AEstagio;
//    QuerDest.FieldByName('VENDA_TIPO').AsString    := AVendaTipo;

    Result := FloatToStr(GetProximoCodigoGen('CR_VENDA' + EmpresaAtiva)) + '-' + EmpresaAtiva;

    QuerDest.FieldByName('CODIGO').AsString        := Result;
    QuerDest.FieldByName('STATUS').AsString        := 'ATIVO CRIADO';
    QuerDest.FieldByName('ATIVO').AsString         := 'S';
    QuerDest.FieldByName('SERVICO_NOTA_PADRAO').AsString := 'S';     // TecTress para puxar o padrão do Mes  IMposto

    if AObsPedidos <> '' then
      QuerDest.FieldByName('OBSERVACAO').AsString  := QuerDest.FieldByName('OBSERVACAO').AsString +lineBreak+ 'Pedidos Agrupados: ' + AObsPedidos;
    //verificar...

    QuerDest.FieldByName('DT_COMPETENCIA').AsDateTime   := QuerDest.FieldByName('DT_EMISSAO').AsDateTime;
    QuerDest.FieldByName('DT_EMISSAO').AsDateTime       := DataHoraSys;
//    QuerDest.FieldByName('DT_ALTERACAO').AsDateTime     := QuerDest.FieldByName('DT_EMISSAO').AsDateTime;
    QuerDest.FieldByName('SITUACAOFINANCEIRA').AsString := VendaSituacaoFinanceiraToStr(vsfAFaturar);

    //Guardar uma lista de campos que registraram a geração da venda
    QuerDest.FieldByName('CODVENDA').AsString           := ADatasetVenda.FieldByName('CODIGO').AsString; //O CodVenda agora não existe mais. O vínculo acontece APENAS nos produtos da venda.


    QuerDest.Post;

    //Copia o Venda Financeiro
    // COMENTADO. O CLIENTE DEVE GERAR DE NOVO AS PARCELAS.
    // SE DER MERDA SÓ DESCOMENTAR.
//    ADataSetFinanceiro.DisableControls;
//    try
//      QuerDest.Close;
//      QuerDest.SQL.Text := TFdQuery(ADataSetFinanceiro).SQL.Text;
//      QuerDest.Open;
//      ADataSetFinanceiro.First;
//      while not ADataSetFinanceiro.Eof do
//      begin
//        QuerDest.Insert;
//        for I := 0 to ADataSetFinanceiro.FieldCount - 1 do
//        begin
//          if not MatchStr(ADataSetFinanceiro.Fields[i].FieldName, ['CONTA', 'NSU', 'REDE', 'CNPJ_CREDENCIADORA']) and (ADataSetFinanceiro.Fields[i].FieldKind = fkData) then
//            QuerDest.FieldByName(ADataSetFinanceiro.Fields[i].FieldName).Value := ADataSetFinanceiro.Fields[i].Value;
//        end;
//        QuerDest.FieldByName('CODVENDA').AsString := Result;
//        QuerDest.Post;
//        ADataSetFinanceiro.Next;
//      end;
//    finally
//      ADataSetFinanceiro.EnableControls;
//    end;
    AFormVendaBaseNovo.CloseOpen_AbrirRegistro(Result);

    //Isso aqui não esta registrando
    AFormVendaBaseNovo.UCHist_Cadastro.MensagemHistorico.text:='Duplicada da Original: '+ADatasetVenda.FieldByName('CODIGO').AsString;
    AFormVendaBaseNovo.Cadastro.Edit;
  finally
    QuerDest.Free;
  end;
end;

procedure TFrame_Venda_Mestre.ActDefinirCTProdutosExecute(Sender: TObject);  // desativada
var                                                                // estudar o que fazer com isso
  ACod, i, AMaxDesc: Integer;
  AProdutos: TStringList;
  ADesc: string;
begin
  inherited;
  ShowMessageWR('Função desativada.');
  Exit;  // Não define a seleção, reativar código
  EdtCTProdutoÎCentro_Trabalho.Clear;
  repeat
    if ShowPanelForm(PnlCentroTrabalhoProduto, bsSingle) <> mrOk then
      Exit;

    ACod := StrToIntDef(EdtCTProdutoÎCentro_Trabalho.Text, 0);
    if (ACod = 0) or (LblCTProdutoÎCentro_TrabalhoÎDESCRICAO.Caption = '') then   //Se o cliente não preencher o centro de trabalho, ou o codigo dele estiver vazio Então
    begin
      ShowMessageWR('Centro de Trabalho inválido');  // aparece mensagem para o cliente dizendo que o CT é invalido
      Continue;   // o sistema pode dar continuidade apos a mensagem
    end;
    Break;
  until False;
 {
  VerificaSePodeAlteraDataSet;
  AProdutos := TStringList.Create;
  try
    AMaxDesc := 0;
    for I := 0 to GridProdutoTree.DataController.SelectedRecordCount - 1 do
      AMaxDesc := Max(AMaxDesc, Length(VarToStrDef(GridProdutoTree.Controller.SelectedRecords[i].Values[cxGridDBTableView2PRODUTO.Index], '')));
    Inc(AMaxDesc, 7); //5 do código com dois dígitos + 2 do final da linha para espaçar com a próxima coluna

    for I := 0 to GridProdutoTree.Controller.SelectedRecordCount - 1 do
    begin
      GridProdutoTree.DataController.ChangeFocusedRecordIndex(GridProdutoTree.Controller.SelectedRecords[i].RecordIndex);
      ADesc := Venda_Produto.FieldByName('CODIGO').AsString + ' - ' + Venda_Produto.FieldByName('PRODUTO').AsString + ': ';
      if Venda_Produto_Centro_Trabalho.IsEmpty then
      begin
        Venda_Produto_Centro_Trabalho.Insert;
        Venda_Produto_Centro_Trabalho.FieldByName('CODCENTRO_TRABALHO').AsInteger := ACod;
        Venda_Produto_Centro_Trabalho.FieldByName('DESCRICAO').AsString           := LblCTProdutoÎCentro_TrabalhoÎDESCRICAO.Caption;
        Venda_Produto_Centro_Trabalho.Post;

        AProdutos.Add(PadRight(ADesc, AMaxDesc) + 'CT Definido');
      end else
        AProdutos.Add(PadRight(ADesc, AMaxDesc) + 'Já possui CT. Não foi modificado!');
    end;
    ShowMessageWR('Inclusão de CT concluído:' + LineBreakWR(2) + AProdutos.Text);
  finally
    AProdutos.Free;
  end;  }
end;

procedure TFrame_Venda_Mestre.CodProduto_TabelaCarregado(const ACodProduto_Tabela: Variant);
begin

  if (Cadastro.state = dsEdit) and not(Cadastro.FieldByName('CODPRODUTO_TABELA').IsNull) then
  begin
    if VarSameValueWR(Cadastro.FieldByName('CODPRODUTO_TABELA').Value, ACodProduto_Tabela) then
      Exit;

    if (not VarIsNull(Cadastro.FieldByName('CODPRODUTO_TABELA').Value) or
       not VarIsNull(ACodProduto_Tabela)) and
       (ShowMessageWR('Esta venda já está usando a Tabela de Preço de produto "' +
         Procura('DESCRICAO', 'PRODUTO_TABELA', Cadastro.FieldByName('CODPRODUTO_TABELA').Value) + '".' +
         'Deseja alterar para "' + Procura('DESCRICAO', 'PRODUTO_TABELA', ACodProduto_Tabela) + '"?', MB_ICONQUESTION) <> mrYes) then
      Exit;
  end;
  Cadastro.FieldByName('CODPRODUTO_TABELA').Value := ACodProduto_Tabela;

end;

procedure TFrame_Venda_Mestre.TransferirVendaParaEmpresa(ANovaEmpresa: string);     // Função errada, não pode ter acesso sen pasar pelo quais campos mudar, no UC Histórico
const
  ACampos : array[0..1] of string = ('CODVENDA', 'CODPEDIDO');
var
  ACodAntigo, ACodNovo : string;
  ATransa : TFDTransaction;
  QuerX, QuerTabelas : TFDQuery;
  I : Integer;
begin
  if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0 then
  begin
    ShowMessageWR('Esta venda está faturada e não pode ser transferida.');
    Exit;
  end;

  if Cadastro.FieldByName('STATUS').AsString = 'ATIVO PRODUTOS FATURADO' then
  begin
    ShowMessageWR('Venda com Produtos Faturados não pode ser transferida.');
    Exit;
  end;

  ACodAntigo  := Cadastro.FieldByName('CODIGO').AsString;
  if (EmpresaAtiva = ANovaEmpresa) or (ACodAntigo = '') or AnsiEndsStr('-' + ANovaEmpresa, ACodAntigo) or
     (ShowMessageWR('Deseja mover a venda atual para a empresa "' + Procura('FANTASIA', 'EMPRESA', ANovaEmpresa) + '"?' +
                    sLineBreak +
                    'Atenção! Este procedimento irá alterar o código da venda.', MB_ICONQUESTION) <> mrYes) then
    Exit;

  ACodNovo := FormatFloat('0', GetProximoCodigoGen('CR_VENDA' + ANovaEmpresa)) + '-' + ANovaEmpresa;

  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  QuerTabelas := GeraFDQuery(ATransa);
  try
    for I := Low(ACampos) to High(ACampos) do
    begin
      QuerTabelas.Close;
      QuerTabelas.SQL.Text := 'select RDB$RELATION_NAME ' +
                              'from RDB$RELATION_FIELDS ' +
                              'where (RDB$FIELD_NAME = ' + QuotedStr(ACampos[i]) + ') ' +
                              '      and (RDB$RELATION_NAME <> ''CTRC_VENDA'')'; //Tabela CTRC_VENDA tem CODVENDA Integer
      QuerTabelas.Open;
      while not QuerTabelas.Eof do
      begin
        QuerX.SQL.Text := 'update ' + Trim(QuerTabelas.Fields[0].AsString) +
                          ' set ' + ACampos[i] + ' = :CodNovo ' +
                          'where (' + ACampos[i] + ' = :CodAntigo)';
        QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
        QuerX.ParamByName('CodNovo').AsString   := ACodNovo;
        QuerX.ExecSQL;
        QuerTabelas.Next;
      end;
    end;

    //Altera a referência no pedido original
    if MatchStr(Cadastro.FieldByName('STATUS').AsString, ['INATIVO FATURAMENTO', 'ATIVO PRODUTOS PARCIAL']) then
    begin
      QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.CODVENDA_FATURADO = :NEWCODFATURADO ' +
                        'where VP.CODVENDA_FATURADO = :OLDCODFATURADO';
      QuerX.ParamByName('NEWCODFATURADO').AsString := ACodNovo;
      QuerX.ParamByName('OLDCODFATURADO').AsString := ACodAntigo;
      QuerX.ExecSQL;
    end;

    QuerX.SQL.Text := 'update VENDA set CODIGO = :CodNovo, CODEMPRESA = :CodEmpresa ' +
                      'where (CODIGO = :CodAntigo)';
    QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
    QuerX.ParamByName('CodNovo').AsString   := ACodNovo;
    QuerX.ParamByName('CodEmpresa').AsString   := ANovaEmpresa;
    QuerX.ExecSQL;
    ATransa.Commit;
    MudarEmpresaAtiva(ANovaEmpresa);
    CloseOpen_AbrirRegistro(ACodNovo);
  finally
    QuerX.Free;
    QuerTabelas.Free;
    RollbackTransacao(ATransa);
    ATransa.Free;
  end;
end;

procedure TFrame_Venda_Mestre.FrameCopiarVendaComProduto(ATag: Integer; ADataSetProduto: TDataSet;
   AGridProdutoTree: TcxDBTreeList; AVincula: Boolean;
   AFrmVendaNovo: TFrame_Venda_Mestre; AVendasSelecionadas: String = '');
begin
  //Copia a Venda e o Financeiro
  with AFrmVendaNovo do
  try
    //Abre a venda gerada e atualiza alguns campos
//    AlteraDataSet(Cadastro);
//    TVendaCamposIs.AtualizaCamposIsFromVenda(Cadastro, AVendaTipoModelo);
//
//    if AVincula then
//    begin
//      if QuantVendas > 1 then
//        Cadastro.FieldByName('STATUS').AsString := 'ATIVO AGRUPADO'
//      else
//        Cadastro.FieldByName('STATUS').AsString := 'ATIVO';
//
//      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString + sLineBreak +
//                                                     AFrmVendaTemporaria.Cadastro.FieldByName('OBSERVACAO').AsString + sLineBreak;
//
//    end
//    else
//      Cadastro.FieldByName('OBSERVACAO').AsString := 'Duplicado do pedido ' + AFrmVendaTemporaria.Venda_Produto.FieldByName('CODVENDA').AsString + sLineBreak +
//                                                     Cadastro.FieldByName('OBSERVACAO').AsString;
    //Copia os Produtos e a Composição
    ADataSetProduto.DisableControls;


    DataSetCopiaRecursivoCamposIguais(ADataSetProduto, AFrmVendaNovo.venda_produto,
                    null, // ÚnicaDiferenca achar o novo parent mestre
                    ['CODIGO','CODVENDA','CODVENDA_ORIGINAL'{, 'CODPRODUTO_COMPOSICAO'}],
                    AGridProdutoTree);


     Venda_produto.First;
     while not venda_produto.Eof do
     begin
       venda_produto.Edit;

       if AVincula then
       begin
           // Copiar o pedido de compra para as tags xped e xItem para deixar mais bonito
         if venda_produto.FieldByName('CODVENDA_ORIGINAL').IsNull then  //(Fatura <> 'Agrupado') and
           venda_produto.FieldByName('CODVENDA_ORIGINAL').Value         := ADataSetProduto.FieldByName('CODVENDA').Value;

//           if venda_produto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').IsNull then     enviado por findfield para DataSetCopiaRecursivoCamposIguais
//             venda_produto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').Value := ADataSetProduto.FieldByName('CODIGO').Value;
//         end;

       end else
       begin
         venda_produto.FieldByName('EM_PRODUCAO').AsString := 'N';
         venda_produto.FieldByName('PROTOCOLO').Clear;
         venda_produto.FieldByName('CODPRODUCAO').Clear;
         venda_produto.FieldByName('PODE_FATURAR').Clear;
         Venda_Produto.FieldByName('CODVENDA_ORIGINAL').Clear;
         Venda_Produto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').Clear;
       end;
       Venda_produto.Post;
       Venda_produto.Next;
     end;

    AFrmVendaNovo.WRCalc.SprFechaMemTables;  //CalculaProduto
    AFrmVendaNovo.Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO

    AFrmVendaNovo.GridProdutoTree.FullRefresh;
    AFrmVendaNovo.WRCalc.CalcBuild;
    AFrmVendaNovo.WRCalc.SprCopiarFormula;
    AFrmVendaNovo.WRCalc.SuperCalc;  //CalculaProduto
//    AFrmVendaNovo.Cadastro.Post;
  finally
    ADataSetProduto.EnableControls;
  end;
end;

procedure TFrame_Venda_Mestre.FrameCopiarVendaComProdutoLista(ATag: Integer; ADataSetProduto: TDataSet;
   AGridProdutoTree: TcxDBTreeList; AVincula: Boolean;
   AFrmVendaNovo: TFrame_Venda_Mestre; AProdutosSelecionados: TArray<Integer>; FDQuery1: TFDQuery);
begin
  //Copia a Venda e o Financeiro
  with AFrmVendaNovo do
  try
    ADataSetProduto.DisableControls;
    DataSetCopiaRecursivoCamposIguaisLista(ADataSetProduto, AFrmVendaNovo.venda_produto,
                    null, // ÚnicaDiferenca achar o novo parent mestre
                    ['CODIGO','CODVENDA','CODVENDA_ORIGINAL', 'QTDADEPECA','QUANT'{, 'CODPRODUTO_COMPOSICAO'}],AProdutosSelecionados, FDQuery1,
                    AGridProdutoTree);

     Venda_produto.First;
     while not venda_produto.Eof do
     begin
       venda_produto.Edit;

       if AVincula then
       begin
           // Copiar o pedido de compra para as tags xped e xItem para deixar mais bonito
         if venda_produto.FieldByName('CODVENDA_ORIGINAL').IsNull then  //(Fatura <> 'Agrupado') and
           venda_produto.FieldByName('CODVENDA_ORIGINAL').Value         := ADataSetProduto.FieldByName('CODVENDA').Value;
       end else
       begin
         venda_produto.FieldByName('EM_PRODUCAO').AsString := 'N';
         venda_produto.FieldByName('PROTOCOLO').Clear;
         venda_produto.FieldByName('CODPRODUCAO').Clear;
         venda_produto.FieldByName('PODE_FATURAR').Clear;
         Venda_Produto.FieldByName('CODVENDA_ORIGINAL').Clear;
         Venda_Produto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').Clear;
       end;
       Venda_produto.Post;
       Venda_produto.Next;
     end;

    AFrmVendaNovo.WRCalc.SprFechaMemTables;  //CalculaProduto
    AFrmVendaNovo.Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO

    AFrmVendaNovo.GridProdutoTree.FullRefresh;
    AFrmVendaNovo.WRCalc.CalcBuild;
    AFrmVendaNovo.WRCalc.SprCopiarFormula;
    AFrmVendaNovo.WRCalc.SuperCalc;  //CalculaProduto

  finally
    ADataSetProduto.EnableControls;
  end;
end;

procedure TFrame_Venda_Mestre.CriaComponentesGrade(AFamilia: Integer);  // Revisar e testar, isso deve ir para o Wizard
var
  AEdit : TcxCurrencyEdit;
  i, j, ACount : Integer;
  QuerX, QuerGrade : TFDQuery;
  ACampo, ACampoTipo : string;
  AGrupoGrade : TdxLayoutGroup;
  AListaCodigos: TStringList;
  AExiste: Boolean;

  procedure CreateEdit;
  begin
    AEdit := TcxCurrencyEdit.Create(MainLayout);
    with AEdit do
    begin
      ParentShowHint := False;
      ShowHint       := False;
      AutoSize       := False;
      Visible        := True;
      Hint           := QuerX.FieldByName('CODIGO').AsString;
      Width          := 100;
      Properties.DisplayFormat := '0.00';
      Properties.OnChange := EdtQuantGradePropertiesChange;
    end;
  end;

  procedure AddGrupo(AContador: Integer);
  var
    AComponent : System.Classes.TComponent;
    AName: string;
  begin
    if ACount <= 10 then
      AName := 'GrupoGrade_1'
    else if (ACount > 10) and (ACount <= 20) then
      AName := 'GrupoGrade_2'
    else if (ACount > 20) and (ACount <= 30) then
      AName := 'GrupoGrade_3'
    else if (ACount > 30) and (ACount <= 40) then
      AName := 'GrupoGrade_4'
    else if (ACount > 40) and (ACount <= 50) then
      AName := 'GrupoGrade_5'
    else if (ACount > 50) and (ACount <= 60) then
      AName := 'GrupoGrade_6'
    else if (ACount > 60) and (ACount <= 70) then
      AName := 'GrupoGrade_7'
    else if (ACount > 70) and (ACount <= 80) then
      AName := 'GrupoGrade_8'
    else if (ACount > 80) and (ACount <= 90) then
      AName := 'GrupoGrade_9'
    else if (ACount > 90) and (ACount <= 100) then
      AName := 'GrupoGrade_10'
    else if (ACount > 100) then
      AName := 'GrupoGrade_11';

    AComponent := FindComponent(AName);
    if AComponent <> nil then
      AGrupoGrade := TdxLayoutGroup(AComponent)
    else
    begin
      AGrupoGrade := TdxLayoutGroup.Create(Self);
      with AGrupoGrade do
      begin
        Name            := AName;
        Parent          := GrupoGrade;
        AlignHorz       := ahClient;
        AlignVert       := avTop;
        Visible         := True;
        LayoutDirection := TdxLayoutDirection.ldHorizontal;
        ShowBorder      := False;
      end;
    end;
  end;

  procedure AddEditToGrupo;
  var
    ADescricao: string;
  begin
    ADescricao := QuerX.FieldByName('COR').AsString;
    if ADescricao <> '' then
      ADescricao := ADescricao + IfThen(QuerX.FieldByName('TAMANHO').AsString <> '',
                                      ' - ' + QuerX.FieldByName('TAMANHO').AsString,
                                                                                  '')
    else
      ADescricao := QuerX.FieldByName('TAMANHO').AsString;

    with AGrupoGrade.CreateItemForControl(AEdit) do
    begin
      with CaptionOptions do
      begin
        Visible   := True;
        Text      := ADescricao;
        Layout    := clTop;
        AlignHorz := taCenter;
        Offsets.Right := 8;
      end;
    end;
  end;

begin
  if FGradeAdicionandoProdutos then
    Exit;
  try
    FListaComponentesGrade.Clear;

    if not TConfig.ReadBoolean('VENDA_METODO_AGIL_GRADE') then
      Exit;

    AListaCodigos := TStringList.Create;
    QuerGrade := GeraFDQuery(TransaFD);
    QuerX     := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select P.CODIGO, P.TAMANHO, P.CODCOR, ' +
                        '       P.CODGRADE_MODELO, C.DESCRICAO as COR ' +
                        'from PRODUTO P ' +
                        'left join COR C on C.CODIGO = P.CODCOR ' +
                        'where (P.CODFAMILIA = :Familia) ' +
                    //    '      and (coalesce(P.TAMANHO, '''') <> '''') ' +
                        '      and (coalesce(P.ATIVO, ''S'') = ''S'') ' +
                        'order by 5, 2';
                       // 'order by P.TAMANHO';
      QuerX.Params[0].AsInteger := AFamilia;
      QuerX.Open;

      QuerGrade.Close;
      QuerGrade.SQL.Clear;
      QuerGrade.SQL.Text := 'select * from PRODUTO_GRADE_MODELO PG where PG.CODIGO = :CodGrade';
      QuerGrade.ParamByName('CodGrade').AsInteger := QuerX.FieldByName('CODGRADE_MODELO').AsInteger;
      QuerGrade.Open;

      ACampoTipo := QuerGrade.FieldByName('TIPO').AsString;
      if ACampoTipo <> '' then
      begin
        if ACampoTipo = 'COR' then
          ACampoTipo := 'CODCOR';

        ACount := 1;
        if TConfig.ReadBoolean('VENDA_ORDENA_GRADE_NOME') then
        begin
          QuerX.First;
          while not QuerX.Eof do
          begin
            for I := 1 to 30 do
            begin
              ACampo := 'T' + i.ToString;
              if QuerX.FieldByName(ACampoTipo).AsString = QuerGrade.FieldByName(ACampo).AsString then
              begin
                if ACampoTipo = 'COR' then
                begin
                  AExiste := False;
                  for j := 0 to AListaCodigos.Count - 1 do
                  begin
                    AExiste := QuerX.FieldByName(ACampoTipo).AsString = AListaCodigos[j];
                    if AExiste then
                      Break;
                  end;
                  if AExiste then
                  begin
                    QuerX.Next;
                    Continue;
                  end;
                end;

                CreateEdit;
                FListaComponentesGrade.Add(AEdit);

                AddGrupo(ACount);

                AddEditToGrupo;
                Inc(ACount);
                AListaCodigos.Add(QuerX.FieldByName(ACampoTipo).AsString);
              end;
            end;
            QuerX.Next;
          end;
        end else
        begin
          for I := 1 to 30 do
          begin
            ACampo := 'T' + i.ToString;
            QuerX.First;
            while not QuerX.Eof do
            begin
              if (QuerX.FieldByName(ACampoTipo).AsString = QuerGrade.FieldByName(ACampo).AsString) then
              begin
                if ACampoTipo = 'COR' then
                begin
                  AExiste := False;
                  for j := 0 to AListaCodigos.Count - 1 do
                  begin
                    AExiste := QuerX.FieldByName(ACampoTipo).AsString = AListaCodigos[j];
                    if AExiste then
                      Break;
                  end;
                  if AExiste then
                  begin
                    QuerX.Next;
                    Continue;
                  end;
                end;

                CreateEdit;
                FListaComponentesGrade.Add(AEdit);

                AddGrupo(ACount);

                AddEditToGrupo;
                Inc(ACount);
                AListaCodigos.Add(QuerX.FieldByName(ACampoTipo).AsString);
              end;
              QuerX.Next;
            end;
          end;
        end;
      end;
    finally
      QuerX.Free;
      QuerGrade.Free;
      AListaCodigos.Free;
    end;
    GrupoGrade.Visible := (FListaComponentesGrade.Count > 1);
    //dxLayoutControl1Item66.Enabled := not GrupoGrade.Visible;
  finally
  end;

  if GrupoGrade.Visible then
  begin
//    MainLayoutEdtPeca.Visible := False; Wagner //Se tiver comprimento, largura aparece a quantidade de peças Transfereido para o onchege de EdtCodProduto
    liedtQuant.Visible := False;
    MainLayout.AutoControlTabOrders := False;
    FListaComponentesGrade[0].TabOrder := edtProdutoDescricao.TabOrder + 1;
    for I := 1 to FListaComponentesGrade.Count - 1 do
      FListaComponentesGrade[i].TabOrder := FListaComponentesGrade[i - 1].TabOrder + 1;
    edtValor.TabOrder := FListaComponentesGrade[FListaComponentesGrade.Count - 1].TabOrder + 1;
  end else
  begin
    MainLayout.AutoControlTabOrders := True;
//    MainLayoutEdtPeca.Visible := True; Wagner
    liedtQuant.Visible := True;
  end;
end;

function TFrame_Venda_Mestre.VerificaTotalParcelas: Boolean;  // Não sei o que faz, mesmo sendo financeiro essa função me preocupa
var                                                 // Aonda tem que revisar, mais ja soma o Acrescimo
  ATotalParcelas: Double;
begin
  Result := False;
  if not Venda_Financeiro.IsEmpty then
  begin
    ATotalParcelas := RoundTo(GetValorSumario(cxGridViewFinanceiroVALOR), -2);
    if (RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency, -2) > (ATotalParcelas + 0.01)) then
    begin
      ShowMessageWR('Valor da Venda é superior a soma das parcelas');
      DevMakeVisible(GrupoRecebimento);
      Exit;
    end;
    if (RoundTo(Cadastro.FieldByName('TOTAL').AsCurrency, -2) < (ATotalParcelas - 0.01)) then
    begin
      ShowMessageWR('Valor da Venda é inferior a soma das parcelas');
      DevMakeVisible(GrupoRecebimento);
      Exit;
    end;
  end;
  Result := True;
end;

procedure TFrame_Venda_Mestre.FinalizaEstoque;  // Quando chegar nessa função ja deve ter conferido tudo, e se tem estoque
var                                   // aqui é a rotina que da baixa apenas
  QuerX: TFDQuery;
  AFatorMultiplicador, ACodProduto_Movimento: Integer;            // Essa função esta acessando tabela errada, tem vários SQL qe não pode existir.
  ABloqueiaEstoqueInsuficiente: Boolean;
  ATipoUso: String;

  procedure VerificaEstoqueComposicao(AQuerEstoque: TFDQuery; ACodVendaProduto: Integer; ACodVenda: string;
    AQuantPecas: Double);
  var
    QuerZ: TFDQuery;
    AMensagem: string;                                // O cAMPO JA DEVE ESTAR NO SQL, E ESSA INFOMAÇÃO JA DEVE SER SINALIZADA NO GRID DO PRODUTO PRINCIPAL E NA COMPOSIÇÃO
  begin                                               // NÃO PODE IR NO BANCO
    QuerZ := GeraFDQuery(AQuerEstoque.Transaction);     // não pode fazer acesso aou banco, remover SQL usar as quer da tela
    try                                               // O BOTÃO DA TELA JA DEVE ESTAR VERIFICANDO SE O ESTOQUE ESTA OK
      QuerZ.SQL.Text := 'select VC.*, PT.DESCRICAO as PRODUTO_TIPO                  ' +
                        'from VENDA_COMPOSICAO VC                                   ' +
                        'left join PRODUTO P on P.CODIGO = VC.CODPRODUTO            ' +
                        'left join PRODUTO_TIPO PT on PT.CODIGO = P.CODPRODUTO_TIPO ' +
                        'where VC.CODVENDA = :CODVENDA                              ' +
                        '      and VC.CODVENDA_PRODUTO = :CODVENDA_PRODUTO';
      QuerZ.ParamByName('CODVENDA').AsString          := ACodVenda;
      QuerZ.ParamByName('CODVENDA_PRODUTO').AsInteger := ACodVendaProduto;
      QuerZ.Open;
      while not QuerZ.Eof do
      begin
        if (QuerZ.FieldByName('CODPRODUTO').AsString <> '') and
           (QuerZ.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') then
        begin
          AQuerEstoque.Close;
          AQuerEstoque.ParamByName('CodProduto').AsString := QuerZ.FieldByName('CODPRODUTO').AsString;
          AQuerEstoque.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
          AQuerEstoque.Open;
          ABloqueiaEstoqueInsuficiente := 'S' = Procura('BLOQUEIA_ESTOQUE_INSUFICIENTE',
                                                        'PRODUTO_TIPO',
                                                        Procura('CODPRODUTO_TIPO',
                                                                'PRODUTO',
                                                                QuerZ.FieldByName('CODPRODUTO').AsString));
          if ABloqueiaEstoqueInsuficiente and (AQuerEstoque.Fields[0].AsFloat < (QuerZ.FieldByName('QUANT').AsFloat * AQuantPecas)) then
          begin
            AMensagem := 'A Composição "' + QuerZ.FieldByName('PRODUTO').AsString +
                         '" do Produto "' +
                         ProcuraField('PRODUTO', 'VENDA_PRODUTO', ['CODVENDA', 'CODIGO'],
                                                                  [ACodVenda, ACodVendaProduto]) +
                         '" não possui estoque suficiente.';
          {  case ATipoMovimento of
              tmeFaturamento: ShowMessageWR('Não foi possível Faturar esta venda.' + sLineBreak + sLineBreak + AMensagem, MB_ICONWARNING);
              tmeMovimentoIndividual: ShowMessageWR(AMensagem, MB_ICONWARNING);
            end;
            Abort;   }
          end;
        end;
        QuerZ.Next;
      end;
    finally
      QuerZ.Free;
    end;
  end;

begin
{$REGION 'Conferencia de estoque antiga'}

//  if TConfig.ReadBoolean('VENDA_IMPEDIR_PRODUTO_SEM_ESTOQUE') then    // ISSO NÃO PODE SER GLOBAL, TEM QUE SER POR PRODUTO
//  begin
//    QuerX := GeraFDQuery(TransaFD);
//    Venda_Produto.DisableControls;
//    try
//      QuerX.SQL.Text := 'select ESTOQUE ' +           // NÃO PODE TER ACESSO SQL, JA DEVE SE CAMPO PADRAO DA TABELA VENDA PRODUTO
//                        'from PRODUTO_ESTOQUE ' +     // NÃO PODE TER ACESSO AO BANCO NO MEIO DO CÓDIGO
//                        'where (CODPRODUTO = :CodProduto) ' +
//                        '      and (CODEMPRESA = :CodEmpresa)';
//      QuerX.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
//      Venda_Produto.First;
//      while not Venda_Produto.Eof do
//      begin
//        if (Venda_Produto.FieldByName('CODPRODUTO').AsString <> '') and (Venda_Produto.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') then
//        begin
//          QuerX.Close;
//          QuerX.ParamByName('CodProduto').AsString := Venda_Produto.FieldByName('CODPRODUTO').AsString;
//          QuerX.Open;
//          ABloqueiaEstoqueInsuficiente := 'S' = Procura('BLOQUEIA_ESTOQUE_INSUFICIENTE',
//                                                        'PRODUTO_TIPO',
//                                                        Procura('CODPRODUTO_TIPO',
//                                                                'PRODUTO',
//                                                                Venda_Produto.FieldByName('CODPRODUTO').AsString));  // ESSA FUNÇÃO NÃO CORRESPONDE COM A NECESSIDADE DE BLOQUEAR APENAS PRODUTOS CHAVES
//          // TODO REGRA DE ESTOQUE TEM QUE VIR DO CADASTRO DE PRODUTO
//          if ABloqueiaEstoqueInsuficiente and (QuerX.Fields[0].AsFloat < Venda_Produto.FieldByName('QUANT').AsFloat) then
//          begin
//           { case ATipoMovimento of
//              tmeFaturamento: ShowMessageWR('Não foi possível Faturar esta venda.' + sLineBreak + sLineBreak +
//                                            'O produto "' + Venda_Produto.FieldByName('PRODUTO').AsString +
//                                            '" não possui estoque suficiente.', MB_ICONWARNING);  }
////              ShowMessageWR('O produto "' + Venda_Produto.FieldByName('DESCRICAO').AsString +
////                                                    '" não possui estoque suficiente.', MB_ICONWARNING);
////              end;
//            ShowMessageWR('O produto "' + Venda_Produto.FieldByName('DESCRICAO').AsString +
//                          '" não possui estoque suficiente.', MB_ICONWARNING);
//            Abort;
//          end;
//        end;
//        VerificaEstoqueComposicao(QuerX,
//                                  Venda_Produto.FieldByName('CODIGO').AsInteger,
//                                  Venda_Produto.FieldByName('CODVENDA').AsString,
//                                  Venda_Produto.FieldByName('QTDADEPECA').AsFloat);
//        Venda_Produto.Next;
//      end;
//    finally
//      QuerX.Free;
//      Venda_Produto.EnableControls;
//    end;
//  end;
{$ENDREGION}
  produto_estoque_reservado.First;
  while not produto_estoque_reservado.Eof do
  begin
    produto_estoque_reservado.Delete;
  end;

  // TODOS ESSES WHILES JA DEVEM SER MOSTRADOS EM CAMPOS NO GRID, E UMA FLAG INFORMADO QUE NÃO PODE SER FATURADO
  // SIMPLES, COMPOSICAO GERA INFORMAÇÃO PARA O PRODUTO E PRODUTO PARA A VENDA. FAZENDO RESUMOS
  AFatorMultiplicador := IfThen(Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString = tpNFToStr(tnEntrada), 1, -1);
  ATipoUso := IfThen(Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString = tpNFToStr(tnEntrada),'Devolucao', 'Normal');
  Venda_Produto.First;
  while not Venda_Produto.Eof do
  begin
    //Efetua a baixa do produto principal, mesmo se o estoque não é movimentado pela venda
    MovimentaEstoque(Cadastro.Transaction, Venda_Produto.FieldByName('CODPRODUTO').AsString, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, Venda_Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
      '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime, 'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString, Venda_Produto.FieldByName('QUANT').AsFloat * AFatorMultiplicador,
      Venda_Produto.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, '', Cadastro.FieldByName('CODIGO').AsString, Venda_Produto.FieldByName('VALOR_COMPRA').AsFloat, Venda_Produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat, Venda_Produto.FieldByName('VALOR').AsFloat, 'FrmVenda', ATipoUso, Cadastro.FieldByName('VENDA_TIPO').AsString,
      ACodProduto_Movimento);


    if TConfig.ReadBoolean('ESTOQUE_DUPLO') then
    begin
      MovimentaEstoque(Cadastro.Transaction, Venda_Produto.FieldByName('CODPRODUTO').AsString, StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString, TConfig.ReadString('DESCRICAO_ESTOQUE_DUPLO'),
        '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime, 'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString, Venda_Produto.FieldByName('QUANT').AsFloat,
        Venda_Produto.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, '', Cadastro.FieldByName('CODIGO').AsString, Venda_Produto.FieldByName('VALOR_COMPRA').AsFloat, Venda_Produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat, Venda_Produto.FieldByName('VALOR').AsFloat, 'FrmVenda', ATipoUso, Cadastro.FieldByName('VENDA_TIPO').AsString,
        ACodProduto_Movimento);
    end;


    //Caso o estoque seja pela venda, então efetua a baixa da composição
//    if ProdutoLocalMovimentoEstoqueStrToEnum(Venda_Produto.FieldByName('ESTOQUE_LOCAL_MOVIMENTO').AsString) = pmeVenda then
    begin
      {Venda_Composicao.First;
      while not Venda_Composicao.Eof do
      begin
        MovimentaEstoque(Cadastro.Transaction, Venda_Composicao.FieldByName('CODPRODUTO').AsString, GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString).ToString, Venda_Composicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
          '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime, 'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString, Venda_Composicao.FieldByName('QUANT').AsFloat * AFatorMultiplicador,
          Venda_Composicao.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario,'', Cadastro.FieldByName('CODIGO').AsString);
        Venda_Composicao.Next;
      end;   }
    end;
    Venda_Produto.Next;
  end;
end;

procedure TFrame_Venda_Mestre.CriaMenuEmpresas(AMenu: TMenuItem);   // essa função deve ir para o mestre, e todo as telas ter esse fácil acesso
var
  AMenuItem : TMenuItem;
  QuerX : TFDQuery;
begin
  AMenu.Clear;
  if not (Cadastro.State = dsBrowse) then
  begin
    AMenuItem := TMenuItem.Create(AMenu);
    AMenuItem.Enabled := False;
    AMenuItem.Caption := '<Confirme a venda para alterar a empresa>';
    AMenu.Add(AMenuItem);

    AMenuItem := TMenuItem.Create(AMenu);
    AMenuItem.Caption := '-';
    AMenu.Add(AMenuItem);
  end;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CODIGO, FANTASIA from EMPRESA order by FANTASIA asc';  // tem uma query no principal
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AMenuItem := TMenuItem.Create(AMenu);
      AMenuItem.Enabled := (Cadastro.State = dsBrowse);
      AMenuItem.Checked := (QuerX.FieldByName('CODIGO').AsInteger = Empresa.FieldByName('CODIGO').AsInteger);
      AMenuItem.Caption := QuerX.FieldByName('FANTASIA').AsString;
      AMenuItem.Tag     := QuerX.FieldByName('CODIGO').AsInteger;
      AMenuItem.OnClick := MenuEmpresasItemClick;
      AMenu.Add(AMenuItem);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrame_Venda_Mestre.CriarVendaVinculada1Click(Sender: TObject);
begin
  inherited;
  ShowMessage('Cria uma venda vinculada.');
end;

procedure TFrame_Venda_Mestre.MudarEmpresaAtiva(ANovaEmpresa: string);   // Revisar, função bacana mais deve estar no mestre
var
  ACloseAction: TCloseAction;
begin
  if EmpresaAtiva = ANovaEmpresa then
    Exit;
  FormClose(Self, ACloseAction);
  try
    EmpresaAtiva := ANovaEmpresa;
    FrmPrincipal.UserControl.ApplicationID := EmpresaAtiva;
    FrmPrincipal.Empresa.Close;
    FrmPrincipal.Empresa.Open;
    with TUserControlAccess(FrmPrincipal.UserControl) do
    begin
      DefinePerfil;
      ApplyRights;
    end;
    FrmPrincipal.VerificaSistemaModulo;
  finally
    FormShow(Self);
  end;
end;

function TFrame_Venda_Mestre.PermiteImprimir: Boolean;   // Ótimo uma regra só, apenas senti falta dos componentes visiuais, informando para o usuário que ele tem restrição
begin                                          // Não pode ler direto da Configuração, tem que ter um componente visual informado que  ele esta bloqueado
  Result := True;                              // Aqui vai ler o componente visual assim fica fácil de rastrear regras de negócio
                                              { TODO 1 -oLeandro -cRegraNegócio : Criar um componente visual informando o usuário, assim fica mais fácil onde esta no visual a regra de negócio }


// DESATIVADO PQ VAI ENCHER O SACO
//  if not VerificaCustoImprimirOuFaturar(Cadastro.FieldByName('CODIGO').AsString) then
//  begin
//    ShowMessageWR('Não permitido');
//    Exit(False);
//  end;


//  ValidarGrupo('Produtos');  não dá pra mover para o wrValidacoes por causa da permissão de usuário
//  if not LbUCPermiteImprimirVendaAbaixoDoValorMinimo.Visible then
//  begin
//    try
//      Venda_Produto.first;
//      while not Venda_Produto.Eof do
//      begin
//        if not VendaValidarProdutoValorAbaixoMinimoDS(Venda_Produto) then
//          Exit(False);
//        Venda_Produto.Next;
//      end;
//    finally
////      Venda_Produto.Free;
//    end;
//  end;
end;

procedure TFrame_Venda_Mestre.AplicarPermissoes;    // Essa rotina não pode existir, permissões só com user control, se precisar a regra vai estar em dois lugares, dai fudeu
  procedure LAjustaColuna(const AColuna: TcxGridDBColumn);
  begin
    AColuna.VisibleForCustomization := GetPodeVerCustos;
    AColuna.Visible := AColuna.Visible and AColuna.VisibleForCustomization;
  end;
begin
  if not Financeiro1.Enabled then
  begin
    GridOcultarColuna(cxGridViewFinanceiroFIN_VENCTO);
    GridOcultarColuna(cxGridViewFinanceiroFIN_COUNTFIN);
    GridOcultarColuna(cxGridViewFinanceiroFIN_DATAPAGTO);
    GridOcultarColuna(cxGridViewFinanceiroFIN_DESCONTO);
    GridOcultarColuna(cxGridViewFinanceiroFIN_JUROS);
    GridOcultarColuna(cxGridViewFinanceiroFIN_STATUS);
    GridOcultarColuna(cxGridViewFinanceiroFIN_TIPO);
    GridOcultarColuna(cxGridViewFinanceiroFIN_TOTAL);
    GridOcultarColuna(cxGridViewFinanceiroFIN_VALOR);
  end;

{  cxGridDBTableView2.BeginUpdate;
  try
    //Aqui devem estar todos os campos e colunas relativas a CUSTOS, inclusive a margem.
    //Tratar todos aqui para não mostrar se o usuário não tem permissão para ver
    LAjustaColuna(cxGridDBTableView2CUSTO_LOJA);
    LAjustaColuna(cxGridDBTableView2CUSTO_FABR);
    LAjustaColuna(cxGridDBTableView2CUSTO_COMPOSICAO);
    LAjustaColuna(cxGridDBTableView2TotalCusto);
    LAjustaColuna(cxGridDBTableView2PERC_LUCRO_DESEJADO);
    LAjustaColuna(cxGridDBTableView2CustoPorPeca);
    LAjustaColuna(cxGridDBTableView2TotalCustoFabrica);
    LAjustaColuna(cxGridDBTableView2MARGEM);
  finally
    cxGridDBTableView2.EndUpdate;
  end;    }

{  if not Empresa.EmiteNFe then        // Legal isso como configuração, reativar
  begin
    cxGridDBTableView2.BeginUpdate;
    try
      GridOcultarColuna(cxGridDBTableView2CODNF_CST);
      GridOcultarColuna(cxGridDBTableView2CODNF_CFOP);
      GridOcultarColuna(cxGridDBTableView2PICMS);
      GridOcultarColuna(cxGridDBTableView2CODNF_NCM);
      GridOcultarColuna(cxGridDBTableView2VBC);
      GridOcultarColuna(cxGridDBTableView2VICMS);
      GridOcultarColuna(cxGridDBTableView2VICMSST);
      GridOcultarColuna(cxGridDBTableView2VBCSTDEST);
      GridOcultarColuna(cxGridDBTableView2CODNF_CEST);
    finally
      cxGridDBTableView2.EndUpdate;
    end;
  end;  }

//  dxLayoutControl1Item54.enabled                        := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;

  edtAgenciaÎPessoas.Enabled                            := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;
  edtAgenciaÎPessoasÎCOMISSAO.Enabled                   := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;
  edtAtendenteÎPessoas.Enabled                          := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;
  edtAtendenteÎPessoasÎCOMISSAO.Enabled                 := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;
  edtRepresentanteÎPessoas.Enabled                      := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;
  edtRepresentanteÎPessoasÎCOMISSAO.Enabled             := UCControls1.GetComponentRight(LbUCAlteraFuncionario).Enabled;


  EdtAtendenteÎPessoasÎCOMISSAO.Properties.ReadOnly     := not UCControls1.GetComponentRight(EdtAtendenteÎPessoasÎCOMISSAO).Enabled;
  EdtRepresentanteÎPessoasÎCOMISSAO.Properties.ReadOnly := not UCControls1.GetComponentRight(EdtRepresentanteÎPessoasÎCOMISSAO).Enabled;
  //Permissão para alterar data de emissão
  edtDT_Emissao.Properties.ReadOnly                           := not UCControls1.GetComponentRight(lbUCdtemissao).Enabled;
  edtDT_Emissao.Properties.Buttons[0].Enabled                 := not edtDT_Emissao.Properties.ReadOnly;

  cxGridViewFinanceiro.OptionsCustomize.ColumnsQuickCustomization   := LbUCPermiteCustomizarGridFinanceiro.Visible;
//      cxGridDBTableView2.OptionsCustomize.ColumnsQuickCustomization   := cxGridDBTableView1.OptionsCustomize.ColumnsQuickCustomization;
  edtValor.Properties.ReadOnly                           := not(LbUCAlterarValorProduto.Visible);
  edtTotal.Properties.ReadOnly                           := not(LbUCAlterarValorProduto.Visible);
  GridProdutoTreeVALOR.Properties.ReadOnly               := not(LbUCAlterarValorProduto.Visible);
  GridProdutoTreeTOTAL.Properties.ReadOnly               := not(LbUCAlterarValorProduto.Visible);

  Motordeclculodoitem1.Visible                           := GetPodeVerCustos;
  GrupoLogAlteracoes.Visible                             := GetPodeVerCustos;

//  edtCalc_VDesc_Manual.Properties.ReadOnly               := LbUCPermiteDarDesconto.Visible;
  dxLayoutControl1Group44.Enabled                        := LbUCPermiteDarDesconto.Enabled;  //GRUPO DE DESCONTO DA VENDA

  SpnCaixa.Enabled := UCControls1.GetComponentRight(LbControleCaixa).Enabled;
  edtProdutoDescricao.Properties.ReadOnly                      := not LbUCAlterarDescricaoProduto.Enabled;
  edtResponsavelÎPessoasÎRAZAOSOCIAL.Properties.ReadOnly       := not LbUCAlterarRazaoSocial.Enabled;
  edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Properties.ReadOnly := not LbUCAlterarDescCondPagto.Enabled;



  edtDT_Emissao.Properties.ReadOnly           := not UCControls1.GetComponentRight(lbUCdtemissao).Enabled;
  edtDT_Emissao.Properties.Buttons[0].Enabled := not edtDT_Emissao.Properties.ReadOnly;

  lilblCampoObrigatorioFuncionario.Visible  := not UCControls1.GetComponentRight(lblCampoObrigatorioFuncionario).Visible;
  lilblObriga_Representante.Visible         := not UCControls1.GetComponentRight(lblObriga_Representante).Visible;
//  lilblCampoObrigatorioAplicacao.Visible    := not UCControls1.GetComponentRight(lblCampoObrigatorioAplicacao).Visible;
//  lilblCampoObrigatorioImpressao.Visible    := not UCControls1.GetComponentRight(lblCampoObrigatorioImpressao).Visible;
//  lilblCampoObrigatorioCaminho.Visible      := not UCControls1.GetComponentRight(lblCampoObrigatorioCaminho).Visible;
//  lilblCampoObrigatorioOBSProduto.Visible   := not UCControls1.GetComponentRight(lblCampoObrigatorioOBSProduto).Visible;
  UCControls1.AplicaDireito(edtComissaoÎPessoasÎCOMISSAO,'Frame_Venda_Venda.edtAtendenteÎPessoasÎCOMISSAO');
  UCControls1.AplicaDireito(edtCalc_PDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
  UCControls1.AplicaDireito(edtCalc_VDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
end;

procedure TFrame_Venda_Mestre.PreenchedadosAdicionaisdaNota;   // Isso pode estar dentro do Calc pois vai ser tirado na compra e na venda, e na nova tela de NotaFiscal
  procedure LAddObs(const AObs: string);
  begin
    Cadastro.FieldByName('NF_OBSERVACAO').AsString := Cadastro.FieldByName('NF_OBSERVACAO').AsString + sLineBreak + AObs;
  end;

var
  AIni: TIniFile;
  ATributos: string;
begin
  if (Cadastro.FieldByName('NF_OBSERVACAO_PADRAO').AsString =  'S') then
  begin
    Cadastro.FieldByName('NF_OBSERVACAO').Clear;
    if Cadastro.FieldByName('NF_VCREDSN').AsFloat <> 0 then
    begin
      LAddObs('Permite o aproveitamento do crédito do ICMS no');
      LAddObs('valor de R$ ' + FormatFloat('#,###,##0.00', Cadastro.FieldByName('NF_VCREDSN').AsFloat) +
              ' correspondente alíquota ' + FormatFloat('#,###,##0.00', Venda_Produto.FieldByName('NF_PCREDSN').AsFloat) + '%');
      LAddObs('nos termos da LC123/2006'); //Verificar o PCREDSN
    end;

    if (MatchStr(UpperCase(Empresa.FieldByName('CRT').AsString), ['', 'SIMPLES NACIONAL', 'SIMPLES NACIONAL - EXCESSO'])) then
    begin
      LAddObs(Empresa.FieldByName('NFE_DADOS_SIMPLES_NACIONAL').AsString);


//      if not TConfig.ReadBoolean('NFE_NAO_PREENCHER_DADOS_ADC_SIMPLES_NACIONAL') then
//      begin
//        LAddObs('.:Documento emitido por ME ou EPP optante pelo Simples');
//        LAddObs('.:Nacional, não gera Crédito fiscal de IPI. Pagamento no DAS.');
//      end;
    end;
    // Apenas para consumidor final
    ATributos := '';
    if TConfig.ReadBoolean('NFE_PERMITE_IBPT') or (Cadastro.FieldByName('CONSUMIDOR_FINAL').AsString = 'S') then
    begin
      ATributos := '.:Val Aprox Tributos: |';
      if Cadastro.FieldByName('TOTALALIQ_NACIONAL').AsCurrency > 0 then
       ATributos := ATributos + ' Nacional R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('TOTALALIQ_NACIONAL').AsCurrency) +
                    ' (' + FormatFloat('0.00', Cadastro.FieldByName('TOTALALIQ_NACIONAL').AsCurrency * 100 / Cadastro.FieldByName('TOTAL').AsCurrency)+ '%) ';
      if Cadastro.FieldByName('TOTALALIQ_IMPORTACAO').AsCurrency > 0 then
         ATributos := ATributos + ' | Importação R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('TOTALALIQ_IMPORTACAO').AsCurrency ) +
                    ' (' + FormatFloat('0.00', Cadastro.FieldByName('TOTALALIQ_IMPORTACAO').AsCurrency  * 100 / Cadastro.FieldByName('TOTAL').AsCurrency)+ '%) ';
      if Cadastro.FieldByName('TOTALALIQ_ESTADUAL').AsCurrency > 0 then
         ATributos := ATributos + ' | Estadual R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('TOTALALIQ_ESTADUAL').AsCurrency) +
                    ' (' + FormatFloat('0.00', Cadastro.FieldByName('TOTALALIQ_ESTADUAL').AsCurrency * 100 / Cadastro.FieldByName('TOTAL').AsCurrency)+ '%) ';
      if Cadastro.FieldByName('TOTALALIQ_MUNICIPAL').AsCurrency > 0 then
         ATributos := ATributos + ' | Municipal R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('TOTALALIQ_MUNICIPAL').AsCurrency) +
                    ' (' + FormatFloat('0.00', Cadastro.FieldByName('TOTALALIQ_MUNICIPAL').AsCurrency * 100 / Cadastro.FieldByName('TOTAL').AsCurrency)+ '%) ';
      if Cadastro.FieldByName('TOTALALIQ_ESTADUAL').AsCurrency+Cadastro.FieldByName('TOTALALIQ_IMPORTACAO').AsCurrency+Cadastro.FieldByName('TOTALALIQ_MUNICIPAL').AsCurrency+Cadastro.FieldByName('TOTALALIQ_NACIONAL').AsCurrency > 0 then
         ATributos := ATributos + '.:"Fonte: IBPT"';
      LAddObs(ATributos);
    end;

    {$REGION 'Retorno do PAF arquivo ini'}
    if PAFNFE then
    begin
      AIni := TIniFile.Create(GetDirSistema + 'PAFNFE.ini');
      try
        LAddObs('MD-5: ' + AIni.ReadString('Geral', 'MD5', ''));
        if AIni.ReadInteger('Venda', 'COO', 0) <> 0 then
          LAddObs('COO: ' + IntToStr(AIni.ReadInteger('Venda', 'COO', 0)));
      finally
        AIni.Free;
      end;
    end;
    {$ENDREGION}

    if (ProcuraField('II_DADOSADICIONAIS_NFE', 'VENDA_TIPO', ['DESCRICAO'],[Cadastro.FieldByName('VENDA_TIPO').AsString]) = 'S') then
    begin
//      VendaNF_OBSERVACAO.AsString:=VendaNF_OBSERVACAO.AsString+LineBreak+'DI N ' + VendaNF_NDI.AsString +  ' - ' + VendaNF_DDI.AsString;
      LAddObs('PIS R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('NF_PIS_VPIS').AsFloat));
      LAddObs('COFINS R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('NF_COFINSST_VCOFINS').AsFloat));
      LAddObs('II R$ ' + FormatFloat(DECIMAL_2, Cadastro.FieldByName('NF_II_VII').AsFloat));
    end;

    if Cadastro.FieldByName('NF_VFCPUFDEST').AsFloat > 0 then
    begin
      LAddObs(IfThen(Cadastro.FieldByName('NF_OBSERVACAO').AsString <> '', ';') +
              'Valor total do ICMS relativo ao Fundo de Combate à Pobreza (FECOP) da UF de destino: ' +
              FormatFloat(DECIMAL_2,  Cadastro.FieldByName('NF_VFCPUFDEST').AsFloat) + '.');
    end;
    if (Cadastro.FieldByName('NF_VFCPUFDEST').AsFloat > 0) and not TConfig.ReadBoolean('NFE_NAO_PREENCHER_DADOS_ADC_ICMS_INTERSTADUAL') then
    begin
      LAddObs(IfThen(Cadastro.FieldByName('NF_OBSERVACAO').AsString <> '', ';') +
              'Valor total do ICMS Interestadual para a UF de destino: ' +
              FormatFloat(DECIMAL_2,  Cadastro.FieldByName('NF_VFCPUFDEST').AsFloat) + '.');
    end;
  end;
end;

function TFrame_Venda_Mestre.PodeAlterarParcelas: Boolean;     // Revisar rera dupla é foda, Se não pode ja avisa na tela, com label
begin
  Result := LbUCPermiteAlterarParcelas.Visible
            and Cadastro.FieldByName('DT_FATURAMENTO').IsNull
            and Cadastro.FieldByName('NOTAFISCAL').IsNull
            and (Cadastro.FieldByName('OPERACAO').AsString <> 'EM PAGAMENTO')
            and not TemParcelasComNSU;
end;

function TFrame_Venda_Mestre.TemParcelasComNSU: Boolean;
var
  QuerX: TFDQuery;
begin
  Result := False;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT VF.NSU FROM VENDA_FINANCEIRO VF WHERE VF.CODVENDA = :Codvenda';
    QuerX.ParamByName('Codvenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;

    QuerX.First;
    while not QuerX.eof do
    begin
      if QuerX.FieldByName('NSU').AsString <> '' then
        Result := True;

      QuerX.Next;
    end;

  finally
      QuerX.Free;
  end;
end;

function TFrame_Venda_Mestre.PodeEditarVenda: Boolean;     // Regra dupla é foda
begin
  Result := Cadastro.FieldByName('DT_FATURAMENTO').IsNull or (Cadastro.FieldByName('NOTAFISCAL').AsInteger = 0); // essa regra não pode acontecer, ainda tem que existir por que o sistema é uma meerrrrr....
end;

procedure TFrame_Venda_Mestre.AbrirDetalhesProdutoSelecionado;     //Ok
begin
  if Cadastro.IsEmpty or Venda_Produto.IsEmpty then
    Exit;                                 //TO_DO
  TFrmVenda_Produto.AbreProduto(FFormVenda_Produto, WRCalc, GridProdutoTree, nil, nil, nil);
end;

procedure TFrame_Venda_Mestre.SetVendaBloqueio(Transacao: TFDCustomTransaction; const ABloqueado: Boolean); // IMPORTANTE COLOCAR QUEM ESTA EDITANDO
var                                                                                               // Aqui ja deve lançar no histórico quem comecou a editar a venda, e deixar ela trancada em um posto sem trasaction.commit;
  QuerX : TFDQuery;
  ATransa : TFDTransaction; //É instanciada quando nenhuma transação é passada como parâmetro
begin                       //quando esta transação é instanciada, o commit é executado automaticamente
  ATransa := nil;           //Se não inicializar aqui, vem sujeira na variável
  if not Assigned(Transacao) then
  begin
    ATransa := GeraFDTransacao;
    Transacao := ATransa;
  end;
  QuerX := GeraFDQuery(Transacao);
  try
    QuerX.SQL.Text := 'update VENDA set BLOQUEIO = :Bloqueado where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsString        := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('Bloqueado').AsInteger := Integer(ABloqueado);
    QuerX.ExecSQL;
    if Assigned(ATransa) then
      ATransa.Commit;
  finally
    QuerX.Free;
    if Assigned(ATransa) then
      ATransa.Free;
  end;
end;

                                      // RAPAIZ ISSO TA ESTRANHO TEM REGRA EM DOIS LUGARES AQUI, NA SELECÃO DO CLIENTE E AQUI, TA RUIM ISSO
procedure TFrame_Venda_Mestre.AtualizaModalidadeFrete;   // Não pode ter acesso a SQL, tem que usar o que esta na tela
var                                            // Verificar one é uda e onde tem o ponto que precisa dessa regra,
  QuerX: TFDQuery;                             // reunir em poucos lugares os pontos de configuração das telas, e preenchipo de dados
begin
  {A Modalidade de Frete pode ser definida para ter um padrão na venda tanto pelo cadastro do Tipo de Venda
   quando pelo cadastro da Pessoa.
   O que foi definido no cadastro da Pessoa prevalece sobre o do Tipo de Venda}
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select (select first 1 VT.NF_FRETE_POR_CONTA ' +
                      '        from VENDA_TIPO VT ' +
                      '        where (VT.DESCRICAO = :VendaTipo)) as FRETE_VENDA_TIPO, ' +
                      '        (select first 1 P.NF_FRETEPORCONTA ' +
                      '         from PESSOAS P ' +
                      '         where (P.CODIGO = :CodPessoa)) as FRETE_PESSOA ' +
                      'from RDB$DATABASE';
    QuerX.ParamByName('VendaTipo').AsString := Cadastro.FieldByName('VENDA_TIPO').AsString;
    QuerX.ParamByName('CodPessoa').AsString := FControleWR.FindComponente(EdtResponsavelÎPessoas).Pessoa.Codigo;
    QuerX.Open;
    if QuerX.FieldByName('FRETE_PESSOA').AsString <> '' then
      Cadastro.FieldByName('NF_FRETEPORCONTA').AsString := QuerX.FieldByName('FRETE_PESSOA').AsString
    else if QuerX.FieldByName('FRETE_VENDA_TIPO').AsString <> '' then
      Cadastro.FieldByName('NF_FRETEPORCONTA').AsString := QuerX.FieldByName('FRETE_VENDA_TIPO').AsString
    else
      Cadastro.FieldByName('NF_FRETEPORCONTA').AsString := modFreteToStr(mfContaEmitente);
  finally
    QuerX.Free;
  end;
end;

function TFrame_Venda_Mestre.VerificaSePodeTransformarParaPrevisao : Boolean;
var
  QuerX, QuerAgrupado: TFDQuery;
  ACaixaRec: TCaixaRec;
begin
  Result := True;
  QuerX := GeraFDQUery;
  try
//  [X] Boletos impressos e [X] Não pode ter data de balancete do cadastro de conta; (Fechamento)
    QuerX.Close;
    QuerX.SQL.Text := 'select * from FINANCEIRO F where F.CODPEDIDO = :CODPEDIDO';
    QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;

    QuerX.first;
    while not QuerX.eof do
    begin
      if QuerX.FieldByName('STATUS').AsString = 'INATIVO AGRUPADO' then
      begin
        QuerAgrupado := GeraFDQuery;
        try
          QuerAgrupado.SQL.Text := 'select * from FINANCEIRO F ' +
            'where F.AGRUPADOR = :AGRUPADOR ' + '      and F.STATUS = :STATUS';
          QuerAgrupado.ParamByName('AGRUPADOR').AsInteger :=
            QuerX.FieldByName('AGRUPADOR').AsInteger;
          QuerAgrupado.ParamByName('STATUS').AsString := 'ATIVO AGRUPADO';
          QuerAgrupado.Open;
          if not QuerAgrupado.IsEmpty then
          begin
            GeraExcecao
              ('Existe parcela referente a este pedido que está agrupada!' +
              sLineBreak + 'Não é possível cancelar o faturamento desta venda.'
              + sLineBreak + 'Documento Financeiro: ' +
              QuerX.FieldByName('DOCUMENTO').AsString);
            Result := False;
            Exit;
          end;
        finally
          QuerAgrupado.Free;
        end;
      end;
      if QuerX.FieldByName('BOLETO_NOSSO_NR').AsString.Trim <> '' then
      begin
        GeraExcecao
          ('Existe parcela referente a este pedido que já foi emitido boleto.' +
          sLineBreak + 'Não é possível cancelar o faturamento dessa venda.' +
          sLineBreak + 'Documento Financeiro: ' + QuerX.FieldByName('DOCUMENTO')
          .AsString);
        Result := False;
        Exit;
      end;
      if not QuerX.FieldByName('DT_CONCILIADO').IsNull then
      begin
        GeraExcecao
          ('Existe parcela referente a este pedido que já foi conciliada.' +
          sLineBreak + 'Não é possível cancelar o faturamento dessa venda.' +
          sLineBreak + 'Documento Financeiro: ' + QuerX.FieldByName('DOCUMENTO')
          .AsString);
        Result := False;
        Exit;
      end;
      if QuerX.FieldByName('DATAPAGTO').AsString <> '' then
      begin
        GeraExcecao
          ('Já existem parcelas recebidas para esta venda.');
        Result := False;
        Exit;
      end;
      QuerX.next;
    end;


//  [X] Todas as parcelas A RECEBER  e [X] Não pode estar em caixa fechado;
    QuerX.Close;
    QuerX.SQL.Text := 'select F.DATAPAGTO, F.CODCONTA, F.STATUS ' +
      'from FINANCEIRO F ' + 'left join CONTAS C on (F.CODCONTA = C.CODIGO) ' +
      'where (F.CODPEDIDO = :Cod) ' + '      and (F.STATUS like ''ATIVO%'') ' +
      '      and (C.TIPO = ''CAIXA'') ' +
      '      and (F.TIPO in (''RECEBIDA'',''PAGA''))';
    QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;

    QuerX.First;
    while not QuerX.eof do
    begin
      ACaixaRec := GetSituacaoCaixaSQL(TransaFD, QuerX.FieldByName('DATAPAGTO')
        .AsDateTime, QuerX.FieldByName('CODCONTA').AsInteger, True);
      if ACaixaRec.Situacao = scCaixaFechado then
      begin
        ShowMessageWR
          ('Algumas parcelas desta venda já foram recebidas/pagas e o caixa relativo já foi fechado.'
          + sLineBreak + 'Não é possível cancelar o faturamento desta venda.');
        Result := False;
        Exit;
      end;
      if QuerX.FieldByName('STATUS').AsString = 'ATIVO*' then
      // Impede que o venda seja previsão caso o cartão ja tenha sido transferido
      begin
        ShowMessageWR
          ('Algumas Parcelas desta venda já foram transferidas para outra conta.'
          + sLineBreak + 'Não é possível cancelar o faturamento desta venda.');
        Result := False;
        Exit;
      end;
      QuerX.next;
    end;
  finally
    QuerX.Free;
  end;
end;

function TFrame_Venda_Mestre.SQLLocal_VerificaContaPadrao(const ATipoPagamento: Variant): Variant;  // Ok - não usar variante
var                                                                                       // Informar o tipo correto, se possível
  ACodConta: Integer;
begin
  inherited;
  ACodConta := StrToIntDef(ProcuraField('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [ATipoPagamento]), 0);
  Result    := GetVariantNE(ACodConta);
end;

 procedure TFrame_Venda_Mestre.AjustaUltimaParcela;
var
  QuerX: TFDQuery;
  AQuantParcelas: Integer;
  ATotal, Valor_Parcela: Double;
begin
  ATotal         := Cadastro.FieldByName('TOTAL').AsCurrency;
  AQuantParcelas := Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger;

  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select sum(VALOR) as VALOR ' +
                'from VENDA_FINANCEIRO ' +
                'where (CODVENDA = :CodVenda) ' +
                '      and (CODIGO < :CodVenda_Financeiro)';

    QuerX.ParamByName('CodVenda').AsString              := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodVenda_Financeiro').AsInteger   := AQuantParcelas;
    QuerX.Open;

    Valor_Parcela := ATotal - QuerX.FieldByName('VALOR').AsCurrency;


    QuerX.SQL.Text := 'update venda_financeiro vf set' + #13#10 +
                      'vf.valor = :Valor_Parcela where' + #13#10 +
                      'vf.codvenda = :CodVenda and' + #13#10 +
                      'vf.Codigo = (select max(vf2.codigo) from venda_financeiro vf2' + #13#10 +
                      'where vf2.codvenda = :Codvenda2)';
    QuerX.ParamByName('Valor_Parcela').AsFloat          := Valor_Parcela;
    QuerX.ParamByName('CodVenda').AsString              := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodVenda2').AsString             := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ExecSQL;
  finally
    FreeAndNil(QuerX);
  end;
end;


{$REGION '...'}
{
function TFrmVenda.GetLimiteDesconto: Double;     // TODO: Unificar o local de desconto do Funcionário
var                                               // Isso ja deve vir no sql principal
  QuerX: TFDQuery;                                // Acho que não esta sendo usado
begin
  QuerX := GeraFDQuery;           // só não matei essa rotina pois não sei onte tem configuração de desconto
  try
    QuerX.SQL.Text := 'select F.FUNCIONARIO_LIMITE_DESCONTO ' +    // Isso ja deve vir no sql principal
                      'from USUARIO U ' +                          // NÃO PODE IR NOVAMENTE NO BANCO, TEM QUE ESTAR NO CONTROLE DO USUÁRIO
                      'left join PESSOAS F on (F.CODIGO = U.CODFUNCIONARIO) ' +
                      'where (U.CODIGO = :CodUsuario)';
    QuerX.ParamByName('CodUsuario').AsInteger := CodigoUsuario;
    QuerX.Open;
    Result := QuerX.Fields[0].AsFloat;
  finally
    QuerX.Free;
  end;
  if IsZero(Result) then
  begin
    Parametros.Close;
    Parametros.Open;
    Result := Parametros.FieldByName('LIMITE_DESCONTO').AsFloat;  // MEUS DEUS REGRA DE DESCONTO POR TODOS OS LADOS
  end;
  if IsZero(Result) then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select LIMITE_DESCONTO ' +
                        'from PESSOAS ' +
                        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      QuerX.Open;
      Result := QuerX.Fields[0].AsFloat;
    finally
      QuerX.Free;
    end;
  end;
end;    }
{$ENDREGION}

{$ENDREGION}

{$REGION 'SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)'}

// Calc Field, Cuidado Executa minhares de Vezes
procedure TFrame_Venda_Mestre.CadastroCalcFields(DataSet: TDataSet);   // Os anexos usam isso aqui
begin
  inherited;
//  Cadastro.FieldByName('CodPessoa').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.ConsultaProdutoGridCalcFields(DataSet: TDataSet);  //OK
begin
  inherited;
  {O campo CustoStr deve ser formatado desta forma para que o custo não apareça na tela de forma tão explícita
   quando o cliente está vendo, parecendo um código de referência ou algo do tipo.
   Ex: R$ 150,34 fica 00015034}
  ConsultaProdutoGrid.FieldByName('CustoStr').AsString := AnsiReplaceText(FormatFloat('000000.00', ConsultaProdutoGrid.FieldByName('CUSTO').AsFloat), ',', '');
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoCalcFields(DataSet: TDataSet);  // Isso deveria ser livre mais por algum motivo que não lembro agora
begin                                                            // tem um isso no negócio
  inherited;
  if Venda_Produto.State in [dsCalcFields] then
  begin
//    Venda_Produto.FieldByName('Sequencia').AsInteger:= Venda_Produto.RecNo;
    //Usado como parâmetro no anexo

    Venda_Produto.FieldByName('CustoPorPeca').AsFloat := Venda_Produto.FieldByName('Total').AsFloat/Venda_Produto.FieldByName('QTDADEPECA').AsFloat;
//    Venda_Produto.FieldByName('CodTabela').AsString := Venda_Produto.FieldByName('CODVENDA').AsString + ';' + Venda_Produto.FieldByName('CODIGO').AsString;
  end;
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if Pos('PRIMARY',E.Message) > 0 then
  begin
//    QuerX.SQL.Text := 'select H.*, U.USUARIO, U.PRIVILEGED from HISTORICO_EDITANDO  H ' +
//                      'left join USUARIO U on U.CODIGO = H.CODUSUARIO ' +
//                      'where (H.TABELA = ''VENDA'') and (H.EVENTO = ''Utilizando'') and (DT_FECHAMENTO Is Null)';
//    QuerX.sql.Text:= QuerX.sql.Text  + ' and(H.CHAVE_PK2 = '+ QuotedStr(Cadastro.FieldByname(UCHist_Cadastro.CampoPK2).AsString)+') ';
//    QuerX.ParamByName('Tabela').AsString := NomeTabela;
//    QuerX.ParamByName('Evento').AsString := 'Utilizando';
//    QuerX.Open;

    ShowMessage('Erro desconhecido ao inserir produto.');
  end;
  Venda_Produto.Cancel;
  Abort;
end;

procedure TFrame_Venda_Mestre.Produto_PrecoCalcFields(DataSet: TDataSet);   // OK, Isso poderia estar no banco, ver se vai dar mais trabalho nos relatórios e colsulta de produto e na telinha nova da venda
begin
  inherited;
  Produto_Preco.FieldByName('Valor').AsFloat := PercDesconto(PmPrincipal.Produto.FieldByName('CALC_VALOR_ORIGINAL').AsFloat, Produto_Preco.FieldByName('PORCENTAGEM').AsFloat);  //CalculaProduto
end;

// KeyDown e KeyPerss, Cuidado Executa sempre que digitado, esse evento da para saber porque pesa na hora pro usuário
procedure TFrame_Venda_Mestre.edtResponsavelÎPessoasÎCONTATOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);  // ISSO não pode
begin                                                                                                           // código estranho pra caramba não é padrão tenho medo de deixar ele aqui
  inherited;
  If Key = VK_F2 Then
  begin
    Pessoas_Contato.Close;
    Pessoas_Contato.Open;
    ShowPanelForm(pnlPessoaContato,bsSingle);
  end;
end;

// Change não pode pesar, Então evite SQL
procedure TFrame_Venda_Mestre.EdtStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  //Se começa com ATIVO, então é verde, venda ativa, venda válida e contando...
  if AnsiStartsStr('ATIVO', edtStatus.Text) then
    edtStatus.Style.TextColor := clGreen
//  'INATIVO CANCELADO'
  //Senão começa com INATIVO, então verificamos se está excluída, vermelho
  else if AnsiContainsStr(edtStatus.Text, 'EXCLU') then
    edtStatus.Style.TextColor := clRed

  //ou se for INATIVO por outro motivo, tipo agrupado, então mostra em amarelo
  else
    edtStatus.Style.TextColor := $0000969D;
end;

procedure TFrame_Venda_Mestre.SprMemoriaEditValueChanged(Sender: TdxSpreadSheetCustomView);
begin
  AlteraDataSet(WRCalcMemoria.DBProduto);
  WRCalcMemoria.SprCopiarFormula;    //SPRITESHEET
end;

procedure TFrame_Venda_Mestre.sprMotorCalculoEditValueChanged(Sender: TdxSpreadSheetCustomView);
begin
  inherited;
//  AlteraDataSet(WRCalc.DBProduto);
  WRCalc.SprCopiarFormula;   //SPRITESHEET
  WRCalc.SuperCalc;   // << Soma no produto principal
end;

procedure TFrame_Venda_Mestre.DSStateChange(Sender: TObject);   // Revisando as regras de negócio
begin
  inherited;
//  DS_Financeiro.AutoEdit   := Cadastro.FieldByName('PODE_ALTERAR_FINANCEIRO').IsNull;   ESSE É O CAMPO NOVO
//  DSVenda_Produto.AutoEdit := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;    // Isso pode melhorar, conseguir Editar direto

  Reajustarvenctodasparcelas1.Enabled :=  not (Cadastro.State in [dsEdit, dsInsert]) and btnAlterar.Enabled;   // MenuItem
  ReplicarGrupo1.Enabled :=  not (Cadastro.State in [dsEdit, dsInsert]) and btnAlterar.Enabled;                // MenuItem
  ZerarValoresdeImpostos1.Enabled :=  not (Cadastro.State in [dsEdit, dsInsert]) and btnAlterar.Enabled;       // MenuItem

  btnImprimirDireto.Enabled := not (DS.State in [dsInsert, dsEdit]);   // Ok
  GrupoFaturamento.Enabled := (Cadastro.State = dsBrowse);
  GrupoOrcamento.Enabled :=  (Cadastro.State = dsBrowse);




//  edtValor.Enabled :=  not(UCControls1.GetComponentRight(edtValor).Enabled);
//  edtTotal.Enabled :=  not(UCControls1.GetComponentRight(edtTotal).Enabled);
//  GridProdutoTreeVALOR.Properties.ReadOnly := not(UCControls1.GetComponentRight(edtValor).Enabled); //TODO: VERIFICAR

  btnProducao.Enabled := (DS.DataSet.State = dsBrowse) and
                         UCControls1.GetComponentRight(BtnProducao).Enabled;

  {  Selecionar Layout de Impressão}    // tem que ter outro componente na tela para gerenciar essa permissão
                                        // se tiver mais alguma regra deve aparecer na tela.
  BtnImprimirPadrao.Enabled := UCControls1.GetComponentRight(BtnImprimirPadrao).Enabled and (not (DS.State in [dsInsert, dsEdit]));
  btnImprimirPadrao.Enabled := BtnImprimirPadrao.Enabled;

  if (DS.State = dsInsert) then         // Isso não deveria estar aqui
    edtSequencia.Style.Font.Color := clYellow
  else begin
    edtSequencia.Style.RestoreDefaults;
    edtSequencia.Style.Color := cl3DLight;
  end;

end;

procedure TFrame_Venda_Mestre.cxDBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);   // Regras de validações devem ser na unit validacao
begin                                                                                 // Essa regra vai ser difícil
  inherited;
  if Venda_Financeiro.State = dsEdit then
  begin
    if PessoasChequesAutorizados.FieldByName('Titular').AsString = 'S' then
    begin
      ShowMessage('Documento não autorizado');
      Exit;
    end;

    Venda_Financeiro.FieldByName('CHEQUE_NOME').AsString:=PessoasChequesAutorizados.FieldByName('TITULAR').AsString;
  end;
end;

procedure TFrame_Venda_Mestre.cbTabelaProdutoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  Codigo_Limpo: TCodBarras;
begin
  inherited;
  if not (Cadastro.State in dsEditModes) and not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  Codigo_Limpo := Barras_Trata(edtCodProduto.Text);
  Produto_Tabela_Preco.Locate('CODPRODUTO_TABELA', TcxDBLookupCombobox(Sender).EditValue, []);
  PmPrincipal.Produto.FieldByName('CALC_VALOR_TABELA_PRECO').Value := Produto_Tabela_Preco.FieldByName('VALOR').Value;
  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', Codigo_Limpo.Quantidade);
end;

procedure TFrame_Venda_Mestre.cbVariacaoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  Produto_Preco.Locate('CODIGO', cbVariacao.EditValue, []);
  WRCalcMemoria.ProdutoCalculaVariacao(Produto_Preco);
end;

procedure TFrame_Venda_Mestre.cbxSituacaoPropertiesChange(Sender: TObject);
begin
  inherited;
//  licbxSituacao.Visible     := (cbxSituacao.Properties.Items.Count > 0);
end;

procedure TFrame_Venda_Mestre.edtDT_OcamentoPropertiesChange(Sender: TObject);
begin
  inherited;
{//  Isso aqui deve ficar na data de faturamento do Orcamento
  GrupoOrcamento.Visible   := Cadastro.Active and (TConfig.ReadBoolean('VENDA_SEPARA_ORCAMENTO_VENDA') and (AVendaTipoModelo = vtmOrcamento));
  GrupoNotaFiscal.Visible  := Cadastro.Active and not (TConfig.ReadBoolean('VENDA_SEPARA_ORCAMENTO_VENDA') and (AVendaTipoModelo = vtmOrcamento));

  if TConfig.ReadBoolean('VENDA_SEPARA_ORCAMENTO_VENDA') then
    GrupoFaturamento.Visible := Cadastro.Active and (AVendaTipoModelo <> vtmOrcamento)
                            and ((Cadastro.FieldByName('IS_NOTAFISCAL').AsString <> 'S') or (Cadastro.FieldByName('IS_VENDA').AsString = 'S'));}
end;

procedure TFrame_Venda_Mestre.GrupoTabsPrincipalTabChanged(Sender: TObject);  // tem a nota fiscal que tem que olhar
begin
  inherited;
  if GrupoAnexo.ActuallyVisible then
    TFrameAnexosVenda.CarregaFrame1(AFrameAnexosVenda, PnlFrameAnexos, DS, UCHist_Cadastro);  // por duas entradas para o mesmo anexos?? isso ja esta no tabchange

  if TabFinanceiro.ActuallyVisible then
  begin
      { TODO -oLeandro -cTConfig : Criar campo "Pode Alterar Financeiro" Importante }
    btnParcelas.Enabled          := PodeAlterarParcelas;   // se tem regra o usuário tem possibilidade de interagir ou no mínimo saber que a regra existe e quando ela é ativada
    DS_Financeiro.AutoEdit       := PodeAlterarParcelas;   // O Componente vai possuir um hint bonito informando por ele foi ativado
    GrupoFinanceiroTop.Enabled   := PodeAlterarParcelas;
    cxGridViewFinanceiro.OptionsData.Editing    := PodeAlterarParcelas;
  end;

  if GrupoAgrupamentoVendas.ActuallyVisible then
    TFrmVendaFrameAgrupamento.CarregaFrame(FFrameAgrupamento, PnlFrameAgrupamento, DS);
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );

  if TabMotorCalculo.ActuallyVisible then
  begin
    sprMotorCalculo.SetFocusWR;
    WRCalc.CalcBuild;  //CalculaProduto //SPRITESHEET
  end;
  if TabDadosDoResponsavel.ActuallyVisible then
  begin
    TFrameVendaPessoa.CarregaFrame(FFrameVendaPessoa, pnlPessoas, DS);
    WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameVendaPessoa));
  end;
end;

procedure TFrame_Venda_Mestre.EdtPrevisaoEntregaPropertiesChange(Sender: TObject);   // TODO : Essa rera deve ir para Validação
begin                                                                      // Deve valer sempre
  inherited;
  //Verifica se a data de "Previsão de Entrega" do produto esta maior que a data de "Prometido Para" da Venda
  //Movido para wrValidacoes
  {edtCALENDARIO_DT_PREVISAO_FIM.Style.Color := clWindow;
  edtCALENDARIO_DT_PREVISAO_FIM.ShowHint    := False;
  if (not Cadastro.FieldByName('PROJETO_DT_FIM').IsNull) and (Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime > 0) then
  begin
    if (edtCALENDARIO_DT_PREVISAO_FIM.Date > 0) and (edtCALENDARIO_DT_PREVISAO_FIM.Date > Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime) then
    begin
      edtCALENDARIO_DT_PREVISAO_FIM.Style.Color := clRed;
      edtCALENDARIO_DT_PREVISAO_FIM.Hint     := 'A data de "Previsão de Entrega" do Produto' + sLineBreak + 'está maior do que a data de "Prometido Para" da Venda!';
      edtCALENDARIO_DT_PREVISAO_FIM.ShowHint := True;
    end;
  end; }
  //ShowMessageWR(edtCALENDARIO_DT_PREVISAO_FIM.Text);
end;

procedure TFrame_Venda_Mestre.RxDBComboEdit4PropertiesChange(Sender: TObject);    // migrar e colocar no padrão Î
var                                                                     // TODO: Esse código esta errado
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' select E.DESCRICAO, E.TIPO, EV.PLACA from EQUIPAMENTO E '+
                      ' LEFT JOIN EQUIPAMENTO_VEICULO EV ON (EV.CODIGO = E.CODIGO) '+
                      ' where (E.CODIGO = :Codigo)';
    QuerX.ParamByName('Codigo').AsString := Trim(EdtEquipamento.Text);
    QuerX.Open;
    if (Cadastro.State in [dsEdit, dsInsert])  then
    begin
      if not QuerX.IsEmpty then
        Cadastro.FieldByName('EQUIPAMENTO_DESCRICAO').AsString := QuerX.FieldByName('DESCRICAO').AsString
      else
        Cadastro.FieldByName('EQUIPAMENTO_DESCRICAO').AsString := '';
    end;
    lbTipo_Equipamento.Caption  := QuerX.FieldByName('TIPO').AsString;
    lbPlaca_Equipamento.Caption := QuerX.FieldByName('PLACA').AsString;
  finally
    QuerX.Free;
  end;
end;

procedure TFrame_Venda_Mestre.EdtCondicaoPagtoÎCondicaoPagtoPropertiesChange(Sender: TObject);     // migrar e colocar no padrão Î
var                                                                                      // TODO: Migrar para novo padrão
  QuerX: TFDQuery;   // Criar campo  DESCONTO_ACRESCIMO, e copiar da condição de pagamento
begin                // DESCONTO_ACRESCIMO from CONDICAOPAGTO Permissão nesse campo novo, se ele tiver preenchido o desconto da tela se fecha
  inherited;

  /// lOUCURA LOUCURA, RAPAIZ O QUE DEVERIA ESTAR ACONTECENDO AQUI, AINDA TENHO SPERANÇA, DEUS É BRASILEIRO E NÃO DESISTE NUNCA
  ///  OS ESPINHOS DOI, DOI MUITO
  ///  MAIS VAI DAR CERTO, TENHO CERTEZA, EU ACHO


  if not (Cadastro.State in dsEditModes) or (edtCondicaoPagtoÎCondicaoPagto.Text = '') then
    Exit;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select TIPO, DESCONTO_ACRESCIMO, PODE_SUBSTITUIR_DESCONTO_VENDA ' +
                      'from CONDICAOPAGTO ' +
                      'where (CODIGO = :Codigo)';
    QuerX.ParamByName('Codigo').AsInteger := edtCondicaoPagtoÎCondicaoPagto.EditingValue;
    QuerX.Open;
    Cadastro.FieldByName('INTERVALO_MENSAL').AsBoolean := (QuerX.FieldByName('TIPO').AsString = '2');
    if Cadastro.FieldByName('INTERVALO_MENSAL').AsBoolean then
      Cadastro.FieldByName('DIA_INTERVALO').AsString := '';
    {Para detalhes, verificar o link abaixo
     http://192.168.0.124/web#id=16626&view_type=form&model=helpdesk.ticket&action=780&active_id=8&menu_id=537



      PDESC_CONDICAO :=  QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat
      CALC
      SUPERCALC;
     }

    if (QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat < 0) then
    begin
      if (QuerX.FieldByName('PODE_SUBSTITUIR_DESCONTO_VENDA').AsString = 'S') then
      begin
        Cadastro.FieldByName('POUTRO').AsFloat := 0;
        Cadastro.FieldByName('VOUTRO').AsFloat := 0;
        Cadastro.FieldByName('PDESC').AsFloat  := -QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat;  //MODIFICA VALOR
        Cadastro.FieldByName('VDESC').AsFloat  := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('PDESC').AsFloat);
        ShowMessage('O Desconto da condição de pagamento foi aplicado para venda');
      end;
    end
    else
    if (QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat > 0) then
    begin
      if (QuerX.FieldByName('PODE_SUBSTITUIR_DESCONTO_VENDA').AsString = 'S') then
      begin
        Cadastro.FieldByName('PDESC').AsFloat  := 0;
        Cadastro.FieldByName('VDESC').AsFloat  := 0;
        Cadastro.FieldByName('POUTRO').AsFloat := QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat;
        Cadastro.FieldByName('VOUTRO').AsFloat := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('POUTRO').AsFloat);
        ShowMessage('O Acrescimo da condição de pagamento foi aplicado para venda');
      end;
    end;
//    else
//    begin
//      Cadastro.FieldByName('PDESC').AsFloat  := 0;
//      Cadastro.FieldByName('VDESC').AsFloat  := 0;
//      Cadastro.FieldByName('POUTRO').AsFloat := 0;
//      Cadastro.FieldByName('VOUTRO').AsFloat := 0;
//    end;

    WRCalc.RecalcularTodosOsProdutos; //SPRITESHEET  // Errado, não deveria estar funcionando


    WRCalc.SuperCalc;

{$REGION 'MODELO ANTIGO DESCONTO PARCELA'}
//   {
//    if UCControls1.GetComponentRight(Label106).Visible then
//    begin  }
//    //Foi Habilitado o codigo novamente mas somente a parte que permite o desconto pela condição de pagamento
//    if not IsZero(QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat) then
//    begin
//      if QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat < 0 then
//      begin
//        Cadastro.FieldByName('PDESC').AsFloat := -QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat;  //MODIFICA VALOR
//        Cadastro.FieldByName('VDESC').AsFloat := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('PDESC').AsFloat);
//        ShowMessage('O Desconto da condição de pagamento foi aplicado para venda');
//      end
//      else
//      begin
//        Cadastro.FieldByName('POUTRO').AsFloat := QuerX.FieldByName('DESCONTO_ACRESCIMO').AsFloat;
//        Cadastro.FieldByName('VOUTRO').AsFloat := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('POUTRO').AsFloat);
//        ShowMessage('O Acrescimo da condição de pagamento foi aplicado para venda');
//      end;
//      WRCalc.RecalcularTodosOsProdutos; //SPRITESHEET  // Errado, não deveria estar funcionando
//    end;
//    WRCalc.SuperCalc;    //CalculaProduto
////    EdtPercDescontoExit(Self);     // Verificar se vai funcionar para deconto e acrescimo;
//  //  end;
{$ENDREGION}
  finally
    QuerX.Free;
  end;
end;

procedure TFrame_Venda_Mestre.edtResponsavelÎPessoasÎRAZAOSOCIALPropertiesChange(Sender: TObject); // OK
begin
  liedtResponsavelÎPessoasÎCONTATO.Enabled := (edtResponsavelÎPessoasÎRAZAOSOCIAL.Text <> '');
  liedtResponsavelÎPessoasÎFONE1.Enabled := (edtResponsavelÎPessoasÎRAZAOSOCIAL.Text <> '');
end;

procedure TFrame_Venda_Mestre.DBMemo1PropertiesEditValueChanged(Sender: TObject);  // OK
begin
  inherited;
  edtObeservacao.Hint := Cadastro.FieldByName('OBSERVACAO').AsString;
end;

procedure TFrame_Venda_Mestre.cbxTipo_VendaPropertiesChange(Sender: TObject);
begin
  inherited;
  //deixa meu barra-barra aqui. É usado no ConVendaBase.
end;

procedure TFrame_Venda_Mestre.cbxTipo_VendaPropertiesEditValueChanged(Sender: TObject);  // Isso deveria estar no validate
begin                                                                        // TODO: Revisar isso aqui pois nesse campo tem muita regra de negócio importante, para analisar uma equipe de vendas
  inherited;
  GrupoVeiculo.Visible := (cbxTipo_Venda.Text = 'VENDA MOTOS');
  if Cadastro.State in dsEditModes then
  begin
    if QuerVenda_Tipo.State = dsInactive then
      QuerVenda_Tipo.Open;
    QuerVenda_Tipo.Refresh;
    if QuerVenda_Tipo.Locate('DESCRICAO', cbxTipo_Venda.Text) then
    begin
      Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString  := IfThen(QuerVenda_Tipo.FieldByName('ENTRADA_SAIDA').AsString = 'E', '0', '1');
      Cadastro.FieldByName('VENDA_TIPO_PODE_SER_PRODUZIDO').AsString := QuerVenda_Tipo.FieldByName('PODE_SER_PRODUZIDO').AsString;
//      Cadastro.FieldByName('TEM_BLOQUEIO_NF').AsString:= QuerVenda_Tipo.FieldByName('TEM_BLOQUEIO_NF').AsString;
      // comentado pois este campo foi removido temporariamente
      //      if Cadastro.FieldByName('TEM_BLOQUEIO_NF').AsString = 'S' then
      Cadastro.FieldByName('PODE_EMITIR_NOTAFISCAL').AsString := QuerVenda_Tipo.FieldByName('PODE_EMITIR_NOTAFISCAL').AsString;

      if QuerVenda_Tipo.FieldByName('MODELO').AsString = 'VENDA' then
      begin
        Cadastro.FieldByName('IS_VENDA').AsString := 'S';
        Cadastro.FieldByName('IS_PEDIDO').AsString := 'S';
        Cadastro.FieldByName('IS_ORCAMENTO').AsString := 'N';
      end;
      if QuerVenda_Tipo.FieldByName('MODELO').AsString = 'ORCAMENTO' then
      begin
        Cadastro.FieldByName('IS_ORCAMENTO').AsString := 'S';
        Cadastro.FieldByName('IS_VENDA').AsString := 'N';
      end;
      if QuerVenda_Tipo.FieldByName('MODELO').AsString = 'NOTA FISCAL' then
        Cadastro.FieldByName('is_notafiscal').AsString := 'S';

      if QuerVenda_Tipo.FieldByName('MODELO').AsString = 'PROJETO' then
      begin
        Cadastro.FieldByName('IS_PROJETO').AsString := 'S';
        Cadastro.FieldByName('IS_VENDA').AsString := 'N';
      end;

      // aqui tem que ver se a tabela não foi definida no cadastro do cliete, lá tem preferencia
      Cadastro.FieldByName('VENDA_TIPO_TABELA').AsString := QuerVenda_Tipo.FieldByName('TABELA').AsString;
      if QuerVenda_Tipo.FieldByName('NF_FINALIDADE').AsString = '' then
        Cadastro.FieldByName('NF_FINALIDADE').AsString := FinNFeToStr(fnNormal)
      else
        Cadastro.FieldByName('NF_FINALIDADE').AsString := QuerVenda_Tipo.FieldByName('NF_FINALIDADE').AsString;

//      Cadastro.FieldByName('PODE_SER_FATURADO').Value := QuerVenda_Tipo.FieldByName('PODE_SER_FATURADO').Value;

      AtualizaModalidadeFrete;
      Cadastro.FieldByName('NF_CODNATUREZA_OPERACAO').AsString := ProcuraField('CODNF_NATUREZA_OPERACAO_PADRAO', 'VENDA_TIPO', ['DESCRICAO'], [cbxTipo_Venda.Text]);
      //aqui eu mandei atualizar de novo porque, se o usuario não abriu a aba de NF-E ele não está salvando no banco de dados, pelo edit value do natureza de operação
      //assim a nota sai sem natureza de operação, o codigo como é feito nessa rotina aqui, sempre salva, então deixei aqui a descrição para sempre salvar tbm, e deixei la se o
      //usuario trocar manualmente;
      Cadastro.FieldByName('NF_NATUREZA_OPERACAO').AsString    := Procura('DESCRICAO','NF_NATUREZA_OPERACAO',Cadastro.FieldByName('NF_CODNATUREZA_OPERACAO').AsInteger);
//      TVendaCamposIs.AtualizaCamposIsFromVenda(Cadastro, Cadastro.FieldByName('VENDA_TIPO_MODELO').AsString);
      Cadastro.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString := QuerVenda_Tipo.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;

      if not TConfig.ReadBoolean('NAO_UTILIZA_TABELA_PRECO_NO_TIPO_VENDA') then
        CodProduto_TabelaCarregado(QuerVenda_Tipo.FieldByName('CODPRODUTO_TABELA').Value);
    end;
  end;
end;

procedure TFrame_Venda_Mestre.CkVendaTipoPodeSerProduzidoPropertiesChange(Sender: TObject);
begin
  inherited;
  lichkVenda_Tipo_Pode_Ser_Produzido.Visible := (Cadastro.FieldByName('NF_CODNATUREZA_OPERACAO').AsString = 'N');
end;

procedure TFrame_Venda_Mestre.EdtCodProdutoPropertiesEditValueChanged(Sender: TObject);  // Único lugar que deve buscar o produto
var                                                                            // TODO: Fazer essa função se comportar para isso
  Codigo_Limpo: TCodBarras;                                                    // só atraves dessa função que tem acesso a inserir ou atualizar o produto ou composições
begin                                                                          // FUNÇÂO CRITICA, o mesmo que Faturar ou Fincneiro
  inherited;
  edtQuant.Style.RestoreDefaults;
  edtCodProduto.Hint := '';
//  GrupoTabComunicacaoVisual.Visible := False;
  FListaComponentesGrade.Clear;
  btnProdutoTabelaPreco.Enabled:=False;

  Codigo_Limpo := Barras_Trata(edtCodProduto.Text);
  if Venda_Produto.FindField('CODPRODUTO') <> nil then
    if Length(Codigo_Limpo.Codigo) > Venda_Produto.FieldByName('CODPRODUTO').Size then
      Exit;
  WRCalcMemoria.SprFechaMemTables;
  PmPrincipal.ProcuraProduto(Codigo_Limpo.Codigo, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);

  // Edu //Verifica se o produto pode ser vendido
  if not PmPrincipal.DSProduto.Dataset.Eof then //Precisa deste if senão dá conflito com o KeyDown
  begin
    if (edtCodProduto.Text <> '') and (PmPrincipal.DSProduto.DataSet.FieldByName('PODE_SER_VENDIDO').AsString = 'N') then
    begin
      ShowMessageWR('Produto ' + PmPrincipal.DSProduto.DataSet.FieldByName('DESCRICAO').AsString + ' não pode ser vendido.', MB_ICONWARNING);
      LimparCampos;
    end;
    if (edtCodProduto.Text <> '') and (PmPrincipal.DSProduto.DataSet.FieldByName('ATIVO').AsString = 'N') then
    begin
      ShowMessageWR('Produto ' + PmPrincipal.DSProduto.DataSet.FieldByName('DESCRICAO').AsString + ' está inativo e não pode ser vendido.', MB_ICONWARNING);
      LimparCampos;
    end;
  end;

  btnMostrarSpr.Enabled := {$IFDEF DEBUG} edtCodProduto.Text <> '' {$ELSE} ((WRCalcMemoria.DBComposicao.RecordCount > 0) and (GetPodeVerCustos)) {$ENDIF};
  GrupoTabComunicacaoVisual.Visible := chkInformacaoes_Adicionais.Checked and not (PmPrincipal.Produto.IsEmpty);
  if not SprMemoria.Enabled then
    SprMemoria.Visible := False;
//  SprMemoria.Visible := {$IFDEF DEBUG} edtCodProdutoÎProduto.Text <> '' {$ELSE} WRCalcMemoria.DBComposicao.RecordCount > 0 {$ENDIF};

  if PmPrincipal.Produto.IsEmpty then
    Exit;

  if SprMemoria.Visible then
    MostrarGridAbaixoDe(SprMemoria, edtCodProduto);
  edtCodProduto.Hint        := PmPrincipal.Produto.FieldByName('OBSERVACAO_PRODUTO').AsString;
  liedtObservacao_Produto.Visible   := (edtCodProduto.Hint <> '');

  Try
//    MainLayout.BeginUpdate;
    ProdutoAtualizaViewUnidadeEnabled(PmPrincipal.Produto.FieldByName('UNIDADE').AsString, edtComp, edtLarg, edtEspessura);

  //  if PmPrincipal.Produto.FieldByName('TEM_FAMILIA').AsInteger = 'S' then  <<<<<<  Ativar ISSO AQUI
    CriaComponentesGrade(PmPrincipal.Produto.FieldByName('CODFAMILIA').AsInteger);  // Revisar o código, pode abri um Wizard  e colacar visivelente o vai acontecer,

  Finally
//    MainLayout.EndUpdate;
  End;

  Produto_Preco.Close;

  if PmPrincipal.Produto.FieldByName('VARIACAO_TIPO').AsString = 'Cor e Tamanho' then
  begin
    Produto_Preco.SQL[1] := 'P.DESCRICAO AS DESCRICAO';
    licbVariacao.CaptionOptions.Text := 'Selecione o Tamanho ou Cor';
  end
  else
  begin
    Produto_Preco.SQL[1] := 'iif(PP.TIPO <> ''Acima de'', ''De ''|| iif(PP.DE IS NOT NULL, CAST(PP.DE AS NUMERIC(15,2)), ''0.00'') || '' '', '''') || PP.TIPO || '' '' || CAST(PP.QUANT AS NUMERIC(15,2)) AS DESCRICAO';
    licbVariacao.CaptionOptions.Text := 'Selecione o Preço por Quant.';
  end;

  Produto_Preco.Open;
  if Produto_Preco.RecordCount > 0 then
    btnProdutoTabelaPreco.Enabled:=True;
                                                                                // Se produtos com grade pode ter composição??
//Desconto digitado no campo do código do produto
//TODO: CÓDIGO PERGIGOSO

  //O clone deve acontecer ANTES de o dataset entrar em edição
  WRCalcMemoria.CalcBuild;   //SPRITESHEET

  AlteraDataSet(PmPrincipal.Produto);

  if PmPrincipal.Produto.FieldByName('PRODUCAO_DIAS_PARA_PRODUZIR').AsInteger > 0 then
    PmPrincipal.Produto.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsDateTime := IncDay(Now, PmPrincipal.Produto.FieldByName('PRODUCAO_DIAS_PARA_PRODUZIR').AsInteger);

  // Isso tem que ficar antes do valida abaixo
  PmPrincipal.Produto.FieldByName('CALC_VALOR_ORIGINAL').Value  := PmPrincipal.Produto.FieldByName('VALOR').Value;
  PmPrincipal.Produto.FieldByName('DT_VALOR_ORIGINAL').AsDateTime:= Now;

  {TODO: Este código também está no PAF.
   Quando a regra de negócio for corrigida para questão de validações de preços e custos, também alterar no PAF para
   manter a compatibilidade e integridade}
  if Codigo_Limpo.Porcentagem > 0 then
  begin
    if Codigo_Limpo.PorcentagemTipo = cbptDesconto then    // Isso não foi visto no componente de cálculo para dar desconto, origem do desconto
      edtCalc_VDesc_Manual.Value  := PercValor(PmPrincipal.Produto.FieldByName('TOTAL').AsFloat, Codigo_Limpo.Porcentagem)
    else
      PmPrincipal.Produto.FieldByName('VOUTRO_MANUAL').Value := PercValor(PmPrincipal.Produto.FieldByName('TOTAL').AsFloat, Codigo_Limpo.Porcentagem);
  end;

  PmPrincipal.Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString := Cadastro.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;
  if PmPrincipal.Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString = '' then
    PmPrincipal.Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString  := 'PRINCIPAL';  // Deve aparecer na tela antes se o usuário precisa dessa informação
  // PmPrincipal.Produto.FieldByName('PESONOFRETE').AsFloat             := PmPrincipal.Produto.FieldByName('PESO').AsFloat * Venda_Produto.FieldByName('QUANT').AsFloat;

  // Por que isso existe Era para o Erro do código EAN - O Felipe Criou o campo EAN eresolveu o caso, não precisa mais dessa configuração
  if TConfig.ReadBoolean('REMOVE_CODFABRICA') then
    PmPrincipal.Produto.FieldByName('CODFABRICA').Clear;
  PmPrincipal.Produto.FieldByName('DESCRICAO_NFE').AsString   := LeftStr(PmPrincipal.Produto.FieldByName('DESCRICAO_NFE').AsString, 120);  // se so pode 120 então não deve ter mais que isso no banco, de qualquer forma tem que arrumar a origem

  if not Produto_Tabela_Preco.Active then
    Produto_Tabela_Preco.Open
  else
    Produto_Tabela_Preco.Refresh;

  if Assigned(Produto_Tabela_Preco) and Produto_Tabela_Preco.Locate('CODPRODUTO_TABELA', Cadastro.FieldByName('CODPRODUTO_TABELA').Value, []) then
    PmPrincipal.Produto.FieldByName('CALC_VALOR_TABELA_PRECO').Value := Produto_Tabela_Preco.FieldByName('VALOR').Value
  else
    PmPrincipal.Produto.FieldByName('CALC_VALOR_TABELA_PRECO').Value := 0;

  PmPrincipal.Produto.FieldByName('CODPRODUTO_TABELA').Value := Cadastro.FieldByName('CODPRODUTO_TABELA').Value;

  if Cadastro.FieldByName('POUTRO').AsFloat > 0 then
  begin
    PmPrincipal.Produto.FieldByName('pOUTRO').Value := Cadastro.FieldByName('POUTRO').Value;
    PmPrincipal.Produto.FieldByName('vOUTRO').Value := PercValor(PmPrincipal.Produto.FieldByName('TOTAL').Value, Cadastro.FieldByName('POUTRO').Value);
  end;
  if Cadastro.FieldByName('PDESC').AsFloat > 0 then
  begin
    PmPrincipal.Produto.FieldByName('pDESC').Value := Cadastro.FieldByName('PDESC').Value;
    PmPrincipal.Produto.FieldByName('vDESC').Value := PercValor(PmPrincipal.Produto.FieldByName('TOTAL').Value, Cadastro.FieldByName('PDESC').Value);
  end;

  licbVariacao.Visible := PmPrincipal.Produto.FieldByName('VARIACAO_TIPO').AsString <> '';

//    PmPrincipal.Produto.FieldByName('QTDADEPECA').Value := Codigo_Limpo.Quantidade;
//    PmPrincipal.Produto.FieldByName('QUANT').Value      := Codigo_Limpo.Quantidade;
//  edtQTDADePeca.Value:= Codigo_Limpo.Quantidade;

  //Se o Produto for Composto, não pode alterar o valor
//  liedtCalc_PDesc_Manual.Enabled := not(PmPrincipal.Produto.FieldByName('TEM_COMPOSICAO').Value = 'S');    // gAMBIARRA PARA DIZER QUE NÃO SABE GERENCIAR O USUÁRIO, MAIS O OFFICE IMPRESSO É FODA, ELE ADIVINHA O QUE O CLIENTE QUER FAZER, TO FALANDO
//  liedtCalc_VDesc_Manual.Enabled := not(PmPrincipal.Produto.FieldByName('TEM_COMPOSICAO').Value = 'S');    // ELE É  BOM PODE COMPRAR QUE ELE FAZ OS CALCULOS DE TRAS PRA FRETE, E DE FRENTE PRA TRAS
//  liedtValor.Enabled             := not(PmPrincipal.Produto.FieldByName('TEM_COMPOSICAO').Value = 'S');   // iMAGINA ELE GERINDO UMA EMPRESA, DA TAPA NA MÃO DO ADMINISTRADOR TANSO
//  liedtTotal.Enabled             := not(PmPrincipal.Produto.FieldByName('TEM_COMPOSICAO').Value = 'S');

  //Ajusta a cor do Quant para Devolução
  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', Codigo_Limpo.Quantidade);
  cbVariacao.EditValue := Produto_Preco.FieldByName('CODIGO').AsString;
  chkDevolucaoClick(nil);
//  WRCalcMemoria.SuperCalc;
//  libtnAdicionarProduto.Enabled := Not(PmPrincipal.Produto.FieldByName('TEM_WIZARD').AsString = 'S');
//  libtnRemoverProduto.Enabled := Not(PmPrincipal.Produto.FieldByName('TEM_WIZARD').AsString = 'S');
end;

procedure TFrame_Venda_Mestre.EdtQuantGradePropertiesChange(Sender: TObject);  // TODO: Verificar GRADE
var                                                                  // Isso vai morrer, e virar produto de composição, perguntar como , NADA DE PERGUNTAR EU VOU FAZER ESSA BOSTA
  AQuant: Double;
  i: Integer;
begin
  //evento associado em runtime nos componentes da grade.
  AQuant := 0;
  for I := 0 to FListaComponentesGrade.Count - 1 do
    AQuant := AQuant + FListaComponentesGrade[i].Value;
  edtQTDADePeca.Value            := AQuant;        // VERIFICAR SE ENTRADO NA VALIDADE E RECALCULANDO CORRETO
  edtGradeQuantTotal.Value := AQuant;        // PREOCUPANTE
end;

{$ENDREGION}

{$REGION 'SEÇÃO 3: EVENTOS DO FORM - Create, Show, Hide, Destroy, KeyDown, WRFormataCampos'}

procedure TFrame_Venda_Mestre.FormActivate(Sender: TObject);
begin




//  inherited;    // Para pintar 1 vez, e deixar rápido
//  UCControls1.ApplyRights;  // SQL   Colocar para aplicar apenas se o Usuário ou perfil foi atualizado
//  Criar um propriendade no componente para saber quando foi a última aplicação Data e verificar antes de aplicar
//  MainLayout.EndUpdate;   // isso ficou fora na rotina superior
end;

procedure TFrame_Venda_Mestre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if PAFNFE and (Cadastro.FieldByName('CODIGO').AsString <> '') then
    PAFNFE_UltimoCupom := False;
  inherited;
  edtObeservacao.Tag := 0;
  Ocultar(PnlObservacaoVenda);
end;

procedure TFrame_Venda_Mestre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);    //Olhar o key press, quando o grid da conslta de produto esta aparecendo, tem o evento keypress do CadM
begin
  if PAFNFE and (Key = VK_F3) then
    Abort;
  if (Key in [VK_F2, VK_F3]) and (Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '') then
    Key := 0;
  if edtObeservacao.Focused or edtSolicitacao_Servico.Focused or edtObservacao_Servico.Focused or
     edtObs_Producao.Focused or MemObservacao.Focused then
  begin
    if Key = VK_RETURN then
      Key := 0;
  end;
  if ((cbxTipo_Venda.Focused) or (GridProdutoTree.Focused)) and (Key in [VK_UP, VK_DOWN]) then
    Exit;

  if Key = VK_ESCAPE then
  begin
    if cxGrid3.Visible then
    begin
      Ocultar(cxGrid3);
      edtCodProduto.SetFocusWR;
    end;
    if PnlConfigCamposProduto.Visible then
      FechaPanelForm(PnlConfigCamposProduto);
    if SprMemoria.Visible then
    begin
      SprMemoria.Visible := False;
      Key := 0;
    end;
  end;
  if (Key = VK_F10) then
    AbrirDetalhesProdutoSelecionado;
  inherited;
end;

procedure TFrame_Venda_Mestre.FormShow(Sender: TObject);    // revisar
var
  AOk: Boolean;
begin
  //Necessário devido ao método de restauração de grid utilizado, que elimina estes eventos da form
  //para que a mesma não grave o grid ao fechar
  inherited;
//  AplicarPermissoes; //foi para FORM ACTIVE
  QuerVenda_Tipo.Open;        // Aqui deveria ser close open, se caso o usuário cadastre uma nova, (ir no banco e verificar se precisa atualizar) descobrir os eventos para ter esse comportamento
  PreencheComboBox('DESCRICAO', 'VENDA_SITUACAO', cbxSituacao);
  PreencheComboBox('DESCRICAO', 'VENDA_ESTAGIO', cbxEstagio);

  libtnConsultaTECVenda.Visible := TConfig.ReadBoolean('UTILIZA_CONSULTA_TEC');    // Necessário criar outra Tag, e colocar na tala se preenche ou não

  PreencheTiposPagtoArray([cbxTipoPagto.Properties.Items,
                           TcxComboBoxProperties(cxGrid1DBTableView1TIPOPAGTO.Properties).Items]);    // TODO: Padronizar colocando a função na Unit wrValidacao
  LimparCampos;
//  AplicaConditionalFormatting(Configuracao_Acao_Campos, GridProdutoTree);

  SpnCaixa.Value   := TConfig.ReadInteger('VENDA_PARCELAS_CONTA_PADRAO');
  if VarSameValueWR(SpnCaixa.Value, 0) then
    SpnCaixa.Value := 1;
end;

procedure TFrame_Venda_Mestre.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);    //ok
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(Cadastro, 'VENDA');
  WRFormataCamposDataSets1.AdicionarDataSet(Venda_Produto, 'VENDA_PRODUTO');
  WRFormataCamposDataSets1.AdicionarDataSet(Venda_Financeiro, 'VENDA_FINANCEIRO');
  WRFormataCamposDataSets1.AdicionarDataSet(PmPrincipal.Produto, 'VENDA_PRODUTO');
  WRFormataCamposDataSets1.AdicionarDataSet(Produto_Preco, 'PRODUTO_PRECO');


  edtComp.Properties.DisplayFormat                 := DecimalQuantidade;
  edtEspessura.Properties.DisplayFormat            := DecimalQuantidade;
  edtLarg.Properties.DisplayFormat                 := DecimalQuantidade;
  edtTotal.Properties.DisplayFormat                := DecimalFinanceiro;
  edtValor.Properties.DisplayFormat                := DecimalFinanceiro;

  ConsultaProdutoGridVALOR.DisplayFormat           := DecimalFinanceiro;
  ConsultaProdutoGridESTOQUE_P.DisplayFormat       := DecimalQuantidade;

  edtQuant.Properties.DisplayFormat                := DecimalQuantidade;
  edtGradeQuantTotal.Properties.DisplayFormat      := DecimalQuantidade;

  //Dados Adicionais
  edtQtdDias.Properties.DisplayFormat              := DECIMAL_0;
end;

procedure TFrame_Venda_Mestre.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);  // Oque é isso ??
begin
  inherited;
  if Key = VK_RETURN then
    cxGrid1DBTableView1DblClick(self);
  if Key = VK_ESCAPE then
  begin
    Ocultar(cxGrid5);
    EdtEquipamentoÎEquipamentoÎDESCRICAO.SetFocusWR;
  end;
end;
{$ENDREGION}

{$REGION 'SEÇÃO 4: CONFIGURAÇÕES - Layout, Configuração, Ajuda, MenuPopup, Impressões'}

procedure TFrame_Venda_Mestre.BtnImprimirDiretoClick(Sender: TObject);   // Ok
begin
  DMImpressaoImprimirPadraoDaTela(Self, True, Sender);
end;

procedure TFrame_Venda_Mestre.BtnImprimirPadraoClick(Sender: TdxTileControlItem);
begin
  if not VerificaESolicitaValorMinimoTreeList then
    Exit;
  inherited;
  if Cadastro.FieldByName('PODE_ATUALIZAR_CADASTRO').AsString = 'S' then
  begin
//    btnAtualizaCadastro.Click;
//    btnAlterar.Click;
//    edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(nil);
//    btnConfirmar.Click;
  end;
  inherited;
  GridProdutoTree.Root.Collapse(True);
  if not VerificaTotalParcelas then
     Exit;
end;

function TFrame_Venda_Mestre.VerificaESolicitaValorMinimoTreeList: Boolean;
var
  ACodUsuarioQueAutorizou: Integer;
  ATexto :String;
begin
  Result := False;
  if VerificarErrosValidacaoTreeList(ATexto) then
  begin
    if ShowMessageWR('Item(s) com '+ ATexto +' abaixo do mínimo permitido, Deseja Solicitar Acesso?', MB_ICONQUESTION) = mrYes then
    begin
      if not SolicitaPermissao('LbUCPermiteVenderAbaixoDoValorMinimo',ACodUsuarioQueAutorizou) then
      begin
        ShowMessage('Usuario não foi autorizado');
        Exit;
      end;
      UCHist_Cadastro.MensagemHistorico.Add('Usuário ' + GetNomeUsuario(ACodUsuarioQueAutorizou) + ' autorizou a venda abaixo do '+ ATexto +' mínimo');
      UCHist_Cadastro.MensagemHistorico.Add('');
      Result := True;
    end
  end else
  Result := True;
end;

function TFrame_Venda_Mestre.VerificarErrosValidacaoTreeList(var ATexto: String): Boolean;
var
  wr_memoria_venda_produto  : TFDMemTable;
  QuerX: TFDQuery;
  Estoque: Double;
begin
//  if not Assigned(wr_memoria_venda_produto) then
  wr_memoria_venda_produto:= TFDMemTable.Create(nil);
  try
    if wr_memoria_venda_produto.Active then
      wr_memoria_venda_produto.Close;

    wr_memoria_venda_produto.Data := Venda_Produto.Data;

    wr_memoria_venda_produto.open;

    wr_memoria_venda_produto.first;
    while not wr_memoria_venda_produto.EoF do
    begin
      if wr_memoria_venda_produto.FieldByName('TEM_CONTROLE_ESTOQUE').AsString = 'S'  then
      begin
        if wr_memoria_venda_produto.FieldByName('TEM_ESTOQUE_ABAIXO_MINIMO').AsString = 'S' then
        begin
          ATexto := 'Estoque';
          Result := True;
          exit;
        end;
      end;

      if TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
      begin
        if wr_memoria_venda_produto.FieldByName('PARENT').IsNull then
        begin
          if wr_memoria_venda_produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat > 0 then
          begin
            if wr_memoria_venda_produto.FieldByName('TOTAL').AsFloat < CalculaValorMinimoVenda(wr_memoria_venda_produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat) then
            begin
              ATexto := 'Preço';
              Result := True;
              exit;
            end;
          end;
        end;
      end else
      begin
        if wr_memoria_venda_produto.FieldByName('PARENT').IsNull then
        begin
          if wr_memoria_venda_produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat > 0 then
          begin
            if wr_memoria_venda_produto.FieldByName('VALOR').AsFloat < CalculaValorMinimoVenda(wr_memoria_venda_produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat) then
            begin
              ATexto := 'Preço';
              Result := True;
              exit;
            end;
          end;
        end;
      end;
//
//      if TConfig.ReadBoolean('IMPEDIR_ESTOQUE_NO_MINIMO') then
//      begin
//        QuerX := GeraFDQuery;
//        QuerX.SQL.Text := 'select * from produto_estoque pe where pe.codproduto = ' + wr_memoria_venda_produto.FieldByName('CODPRODUTO').AsString + ' pe.codempresa = ' + empresa.fieldbyname('CODIGO').AsString;
//        QuerX.Open;
//        try
//          Estoque := QuerX.FieldByName('ESTOQUE').AsFloat - wr_memoria_venda_produto.FieldByName('QUANT').AsFloat;
//          if Estoque <= 0 then
//          begin
//            ATexto := 'Estoque';
//            Result := True;
//            exit;
//          end;
//        finally
//          QuerX.free;
//        end;
//      end;
      wr_memoria_venda_produto.Next;
      Result := False;
    end;
  finally
    wr_memoria_venda_produto.Free;
  end;
end;

procedure TFrame_Venda_Mestre.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  inherited;  NÃO PODE TER AQUI POR CAUSA DA DESCRIÇÃO
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria('VENDA', 'CODIGO', edtCodigo);
      AddGeneratorMultEmpresa(edtCodigo);
      AddValorInicial('VENDA', 'ATIVO',                           cbxAtivo,                           'S');
      AddValorInicial('VENDA', 'INTERVALO_MENSAL',                chkIntervalo_Mensal,                'N');
      AddValorInicial('VENDA', 'PESSOA_RESPONSAVEL_TIPO',         edtResponsavelÎPessoas,             'CLI');
      AddValorInicial('VENDA', 'STATUS',                          edtStatus,                          'ATIVO');
      AddValorInicial('VENDA', 'DT_EMISSAO',                      edtDT_Emissao,                      '@DATA');
      AddValorInicial('VENDA', 'PROJETO_DT_INICIO',           edtPROJETO_DT_INICIO,                   '@DATA');
      AddValorInicial('VENDA', 'DT_COMPETENCIA',                  edtDtCompetencia,                   '@DATA');
      AddValorInicial('VENDA', 'OPERACAO',                        edtOperacao,                   'EM VENDA');


      AddImpedirDuplicidade('VENDA', 'PEDIDO_COMPRA',    edtPedidoCliente     , ' select first 1 CODIGO from VENDA ' +                                                                          '     and (CODVENDA IS NULL)');
      AddImpedirDuplicidade('VENDA', 'PEDIDO_REP',    edtPedidoRepresentante  , ' select first 1 CODIGO from VENDA ' +
                                                                                ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
                                                                                '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
                                                                                '     and (STATUS like ''ATIVO%'')' +
                                                                                '     and (CODIGO <> :CodVenda) ' +
                                                                                '     and (CODVENDA IS NULL)');
      AddValorInicial('VENDA', 'PODE_RATEAR_FRETE_DESC_OUTRO',    nil,           'S');

      with TFrameVendaPessoa(FFrameVendaPessoa) do
      begin
        AddValorInicialFrame('VENDA', 'PODE_ATUALIZAR_CADASTRO',         'chkPodeAtualizarCadastro',           'S');
      end;

      // Isso ta no frame  - DESABILITADO POR CONTA DA DIVISÃO
    {  with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
      begin
        AddValorInicialFrame('VENDA', 'NF_OBSERVACAO_PADRAO', 'chkNF_Observacao_Padrao',       'S');
        AddValorInicialFrame('VENDA', 'NF_NUMERO',            'edtNF_Numero',                  '1');  //Número de Caixas do Frete, Padrão 1 Unidade
        AddValorInicialFrame('VENDA', 'NF_FRETEPORCONTA',     'cbxNF_FretePorConta',           modFreteToStr(mfContaEmitente));
      end; }

      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confimar.', 'S') do
      begin
        AddObrigatorioValidaComponente('VENDA', 'RAZAOSOCIAL', edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Informar a Descrição do Destinatário(Cliente)');
        AddObrigatorio('VENDA', 'VENDA_TIPO',  cbxTipo_Venda,                      'Informe o Tipo de Venda que esta sendo realizada.');  // Vazio sempre executa
        AddObrigatorio('VENDA', 'ATIVO',       cbxAtivo,                           'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
      end;


      with AddAcoesTabela('EXCLUIR','', 'Dependencias para poder excluir Excluir.') do   // Deverá checar as referencias dessa Tabela dentro de Sistema
      begin  // Mostrar a Quantidade e abrir o Destino, Filtrando a tela pea Quantidade de registros
         AddDependencia('FINANCEIRO', 'CODPEDIDO');    // Lista de Tabelas que usam a informação
         AddDependencia('PESSOAS', 'CODIGO');          // Aqui ainda Vai ter que melhorar e Muito
         AddDependencia('FINANCEIRO', 'CODPEDIDO');
      end;

      // Antes de Imprimir a NFE ou NFCe
      // Confere os Campos da empresa Necessários para Gerar a NFSe
      // Antes de Imprimir a NFE ou NFCe
      // Confere os Campos da empresa Necessários para Gerar a NFSe
  {     Valida('EMPRESA','NFSe');
        Valida('EMPRESA','Certificado');
        Valida('PESSOA','NFSe');
        Valida('Shemas','NFSe');
  }

       //AQUI WAGNER
       // with AddGrid(GridProdutoTree) do



        {
        AddObrigatorio('VENDA', 'Fantasia', EdtFantasia,        'A Fantazia da empresa não pode ficar vazio.');                           // Emit.xFant   := FEmpresa.FieldByName('Fantasia').AsString;
        AddObrigatorio('VENDA', 'CodPais',  edtCodPais,         'A Código do País da empresa não pode ficar vazio.(Brasil = 1058)');                 // Emit.EnderEmit.cPais   := FEmpresa.FieldByName('CodPais').AsInteger;
        AddObrigatorio('VENDA', 'Pais',     edtPais,            'A País da empresa não pode ficar vazio.');                    // Emit.EnderEmit.xPais   := FEmpresa.FieldByName('Pais').AsString;
        }



            // Antes de Imprimir a NFSe
      //   - Aqui deve configurar a Nota e Verificar as Falhas de Validação de Notas
      // 1) Primeiro a regras do certificado digital.
      // 2) Conferir os dados da Empresa
      // 3) Conferir a configuração de Tributação e Serviço
      // 4) Conferir o Provedor escolhido
      // 5) Conferir os dados do Cliente.







//        AddDependencia('FINANCEIRO', 'CODPEDIDO');
//        AddObrigatorio('VENDA', 'RAZAOSOCIAL', edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Informar a Descrição do Destinatário(Cliente)');


  //    AddValidacaoConfig(Result, rvAviso, 'CERT_DATA', 'Certificado Digital está prestes a expirar.' + IntToStr(DaysBetween(AACBrNFSe.SSL.CertDataVenc, Date)) + ' dia(s) restante(s).', DaysBetween(AACBrNFSe.SSL.CertDataVenc, Date) <= 15)
  //    AddValidacaoConfig(Result, rvErro, 'CERT_DATA', 'Certificado Digital expirado', AACBrNFSe.SSL.CertDataVenc < Date);
  //    AddValidacaoConfig(Result, rvErro, 'CERT_CNPJ', 'O Certificado Digital informado pertence a outra empresa', OnlyNumberWR(AACBrNFSe.SSL.CertCNPJ) <> OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString));
  //    AddValidacaoConfig(Result, rvErro, 'CERT_NAO_DEFINIDO', 'Certificado Digital não definido', AACBrNFSe.Configuracoes.Certificados.NumeroSerie = '');
  //    AddValidacaoConfig(Result, rvAviso, 'NFSE_USUARIO', 'Usuário não definido', True);
  //    AddValidacaoConfig(Result, rvAviso, 'NFSE_SENHA', 'Senha não definida', True);
  //    AddValidacaoConfig(AValidacoes, rvErro, 'NFSE_NAT_OPERACAO', 'Natureza da Operação não informada', ANaturezaOperacao = '');
  //    AddValidacaoConfig(AValidacoes, rvErro, 'NFSE_LISTA_SERVICO', 'Lista de Serviço não informado', AListaServico = '');
  //    AddValidacaoConfig(AValidacoes, rvAviso, 'NFSE_REGIME_TRIBUTACAO', 'Regime Especial de Tributação não informado', ARegimeTributacao = '');
  //    AddValidacaoConfig(Result, rvErro, 'NENHUM', 'O provedor não está definido. Verifique se sua Cidade está ' + 'corretamente preenchida no Cadastro da Empresa. Se estiver preenchida, pode ser que sua cidade ainda não esteja ' + 'homologada pelo sistema para emissão de NFSe.', AACBrNFSe.Configuracoes.Geral.Provedor = proNenhum);


  //      AddValidacao(EdtCidadeÎCidades , edtIM, edtIM.Text = '' , '"Inscrição Municipal" Obrigatória Para esse Provedor de NFSe.' );

//        Acoes('VENDA', 'N', 'IM',               edtIM,           '"Inscrição Municipal" Obrigatória Para esse Provedor de NFSe.', edtIM.text<>'');
  //      Acoes('VENDA', 'N', 'CNAE',             edtCNAE,         '"CNAE" Obrigatório Para esse Provedor de NFSe.',                edtCNAE.text<>''); // COM 7 DIGITOS       // Verifique na cidade do emissor da NFe se é permitido
  //      Acoes('VENDA', 'N', 'CNPJCPF',          edtNFSe_CNPJCPF, '"CNPJ" Obrigatório Para esse Provedor de NFSe.',                edtNFSe_CNPJCPF.text<>'');
  //      Acoes('VENDA', 'N', 'NFSE_USUARIO',     edtNFSe_Usuario, '"Login na Prefeitura" Obrigatório Para esse Provedor de NFSe.', chkCodProvedorÎNF_PROVEDORÎTEM_OBRIGATORIO_LOGIN.Checked and (edtNFSe_Usuario.text<>'') );
  //      Acoes('VENDA', 'N', 'NFSE_SENHA',       edtNFSe_Senha,   '"Senha da Prefeitura" Obrigatório Para esse Provedor de NFSe.', chkCodProvedorÎNF_PROVEDORÎTEM_OBRIGATORIO_SENHA.Checked and (edtNFSe_Senha.text<>''));
  //      Acoes('VENDA', 'N', 'CERTIFICADO_SENHA',chkUsaCertificadoPeloExplorer, '"Certificado Digital" Obrigatório Para esse Provedor de NFSe.', chkUsaCertificadoPeloExplorer.Checked And (LbCertNumeroSerie.Caption<>'') );
  //      Acoes('VENDA', 'N', 'TEM_CERTIFICADO',  chkUsaCertificadoPeloExplorer, '"Certificado Digital" Obrigatório Para esse Provedor de NFSe.', Not (chkUsaCertificadoPeloExplorer.Checked) And (edtCertificado_Senha.Text<>'') );

  //      Acoes('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Informar a Descricao do Destinatário(Cliente)', '');
  //      Acoes('VENDA', 'VENDA_TIPO', 'cbxTipo_Venda', 'Informe o Tipo de Venda que esta sendo realizada.', '');  // Vazio sempre executa
  //
  //      Acoes('VENDA', 'SERV_NCM', 'edtListaServicoÎNF_NCM', 'ItemListaServico com tamanho inferior a 4 dígitos', '');
  //      Acoes('VENDA', 'SERV_DISCRIMINACAO','', 'Discriminação não preenchida', '');
  //      Acoes('VENDA', 'SERV_VALOR', 'edtVendaTotal', 'Valor não preenchido', '');
  //      Acoes('VENDA', 'SERV_ALIQUOTA', 'edtListaServicoÎNF_NCMÎALIQ_ISS', 'Aliquota não preenchida', '');
  //      Acoes('VENDA', 'SERV_REGIME_TRIBUTACAO', 'edtRegimeEspecialÎNF_Regime_Especial_Tributacao', 'Regime Especial de Tributação não preenchido', '');
  //      Acoes('VENDA', 'SERV_NAT_OPERACAO', 'edtNaturezaOperacaoÎNF_Natureza_Operacao', 'Natureza da Operação não preenchida', '');
  //
  //      Acoes('VENDA', 'RESP_RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Tomador não preenchido', '');
  //      Acoes('VENDA', 'RESP_CNPJCPF', 'edtResponsavelPessoasCNPJCPF', 'Tomador sem CNPJ / CPF', '');
  //      Acoes('VENDA', 'RESP_ENDERECO', 'edtResponsavelPessoasENDERECO', 'Tomador sem Endereço', '');
  //      Acoes('VENDA', 'RESP_CEP', 'edtResponsavelPessoasCEP', 'Tomador sem CEP', '');
  //      Acoes('VENDA', 'RESP_NUMERO', 'edtResponsavelPessoasNUMERO', 'Tomador sem Número no Endereço', '');
  //      Acoes('VENDA', 'RESP_CODIGO_MUNICIPIO', 'edtResponsavelÎCidades', 'Tomador sem Código do Município', '');
  //      Acoes('VENDA', 'RESP_UF', 'edtResponsavelÎCidadesÎUF', 'Tomador sem UF', '');
  //      Add('RESP_TELEFONE', 'edtResponsavelPessoasFONE1', 'Tomador sem Telefone', ''););  <<< NÃO EXISTE ISSO AQUI

      with AddAcoesTabela('APROVAR','', 'Regras necessárias para poder Aprovar Orçamento.') do
      begin

      end;
      with AddAcoesTabela('REPROVAR','', 'Regras necessárias para poder Reprovar Orçamento.') do
      begin

      end;
      with AddAcoesTabela('PRODUCAO','', 'Regras necessárias para poder Produção.') do
      begin

      end;
      with AddAcoesTabela('EXCLUIR','', 'Regras necessárias para poder Excluir.') do
      begin

      end;
      with AddAcoesTabela('ORCAMENTO','', 'Regras necessárias para poder Fazer Orçamento.') do
      begin
        // regras do Orçamento
      end;
      with AddAcoesTabela('PARCELAS','', 'Regras necessárias para poder Gerar Parcelas.') do
      begin
        AddObrigatorioValidaComponente('VENDA', 'RAZAOSOCIAL', edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
      end;
    end;
    with AddForm(FFormVenda_Produto) do
    begin
      with AddAcoesTabela('NFE','', '') do
      begin
        // Quais as regras eu tenho que validar dos produtos, e como eu Mostro na Tela

      end;
      // Venda_Produto -  Tabela Extra. Vários registros
      // Regras no Treelist
      with AddAcoesTabela('ADDPRODUTO','', '') do
      begin
        //AddObrigatorio('VENDA_PRODUTO', 'CODTIPO_IMPRESSAO',       edtCodTipo_ImpressaoÎTipo_Impressao,   'Informe o Código do tipo de Impressão.');
        // Regras da Baixa do Estoque
        // Adicionar produtos na Venda.
        // Regras do CFOP
//        PmPrincipal.Produto,
      end;
      with AddAcoesTabela('IMPOSTOS','', '') do
      begin

      end;
    end;
    with AddForm(FFrmProduto_Wizard) do    // Tem que Ser as mesmas regras que o Pai,
    begin                               // Criar um Função que busca a rotina no Pai e colo no filho
      with AddAcoesTabela('NFE','', '') do
      begin
        // Quais as regras eu tenho que validar dos produtos, e como eu Mostro na Tela

      end;
      // Venda_Produto -  Tabela Extra. Vários registros
      // Regras no Treelist
      with AddAcoesTabela('ADDPRODUTO','', '') do
      begin
        // Regras da Baixa do Estoque
        // Adicionar produtos na Venda.
        // Regras do CFOP
        AddAcoesDependente(edtProdutoDescricao, edtProdutoDescricao);
        AddAcoesDependenteTreeList(edtProdutoDescricao, edtProdutoDescricao);
      end;
      with AddAcoesTabela('IMPOSTOS','', '') do
      begin

      end;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.WREventosCadastroImpressaoAfterPrint(
  Sender: TObject);
begin
  inherited;
   FImprimindo := 'N';
end;

procedure TFrame_Venda_Mestre.WREventosCadastroImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean); // Porque isso Aqui ?? ja deixou acontecer os problemas para tracar depois???
begin
  inherited;
  APermiteImprimir := PermiteImprimir;
  FImprimindo := 'S';
end;

procedure TFrame_Venda_Mestre.WREventosCadastroLayoutChange(Sender: TObject);
begin
  inherited;
  LanarCrdito2.Visible := AWR_APP[TagAPP_Credito_Cliente].Ativo;

  liedtAgenciaÎPessoasÎCOMISSAO.Visible        := AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  MainLayoutLabeledItem2.Visible               := AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  liedtAtendenteÎPessoasÎCOMISSAO.Visible      := AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  MainLayoutLabeledItem4.Visible               := AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  liedtRepresentanteÎPessoasÎCOMISSAO.Visible  := AWR_APP[TagAPP_Venda_Comissoes].Ativo;
  btnProducao.Visible                          := AWR_APP[TagAPP_Ordem_Producao].Ativo;
//  MainLayoutItem26.Visible                     := AAPP[TagAPP_Anexo].Ativo;
  PoupCdigosdeBarras.Visible                   := AWR_APP[TagAPP_Codigo_Barras].Ativo;
  Financeiro1.Visible                          := AWR_APP[TagAPP_Financeiro].Ativo;
  btnMostrarSpr.Visible                        := AWR_APP[TagAPP_Produto_Composicao].Ativo;
  AplicarPermissoes;

end;

procedure TFrame_Venda_Mestre.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(Sender: TObject);    // Tem que ver onde isso executa
var
  ANomeArquivoPDF, ACaminhoArquivoPDF: string;
begin
  inherited;
  ANomeArquivoPDF    := TConfig.ReadString('VENDA_NOME_ARQUIVO_PDF').Trim;
  ACaminhoArquivoPDF := TConfig.ReadString('VENDA_CAMINHO_ARQUIVO_PDF').Trim;



  //TcxShellListView(Message.wParam).SelectedFilePaths.Strings[I];
  WREventosCadastro.Impressao.Report.Variables['Anexo'] := Fr3String(RetornaString((GetCaminhoGED_Venda_Anexos(Cadastro.FieldByName('CODIGO').AsString))));

  WREventosCadastro.Impressao.Report.Variables['Funcionario'] := Fr3String(LblAtendenteÎPessoasÎRAZAOSOCIAL.Caption);



  if ACaminhoArquivoPDF <> '' then
    WREventosCadastro.Impressao.PathArquivoExportar := ACaminhoArquivoPDF
  else
    WREventosCadastro.Impressao.PathArquivoExportar := GetDirTemp;

  if Endereco_Responsavel.State = dsInactive then
    Endereco_Responsavel.Open;
  if ANomeArquivoPDF <> '' then
  begin
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$NomeCliente$',      RemoveCaracterEspecial(Cadastro.FieldByName('RAZAOSOCIAL').AsString));
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$RazaoSocial$',      RemoveCaracterEspecial(Endereco_Responsavel.FieldByName('RAZAOSOCIAL').AsString));
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$Fantasia$',         RemoveCaracterEspecial(Endereco_Responsavel.FieldByName('FANTASIA').AsString));
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$CodigoVenda$',      Cadastro.FieldByName('CODIGO').AsString);
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$CodigoCliente$',    Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$SequenciaCliente$', Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsString);
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$TipoPessoa$',       Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString);
    ANomeArquivoPDF := ReplaceStr(ANomeArquivoPDF, '$TipoVenda$',        Cadastro.FieldByName('VENDA_TIPO').AsString);
    WREventosCadastro.Impressao.NomeArquivoExportar := ANomeArquivoPDF;
  end else
    WREventosCadastro.Impressao.NomeArquivoExportar := PrimeirasMaiusculas(Cadastro.FieldByName('VENDA_TIPO').AsString) + ' ' +
                                            Cadastro.FieldByName('CODIGO').AsString + ' - ' +
                                            RemoveCaracterEspecial(Cadastro.FieldByName('RAZAOSOCIAL').AsString);
  WREventosCadastro.Impressao.EmailAssunto := PrimeirasMaiusculas(Cadastro.FieldByName('VENDA_TIPO').AsString) + ' ' + Cadastro.FieldByName('CODIGO').AsString;
  WREventosCadastro.Impressao.EmailEndereco.Clear;

  WREventosCadastro.Impressao.AddEmailEndereco(Endereco_Responsavel.FieldByName('RAZAOSOCIAL').AsString, Endereco_Responsavel.FieldByName('EMAIL').AsString);
  WREventosCadastro.Impressao.AddEmailEndereco(Endereco_Responsavel.FieldByName('RAZAOSOCIAL').AsString, Endereco_Responsavel.FieldByName('EMAIL_NFE').AsString);

  Pessoas_Contato.Open;
  try
    while not Pessoas_Contato.Eof do
    begin
      WREventosCadastro.Impressao.AddEmailEndereco(Pessoas_Contato.FieldByName('CONTATO').AsString, Pessoas_Contato.FieldByName('EMAIL').AsString);
      Pessoas_Contato.Next;
    end;
  finally
    Pessoas_Contato.Close;
  end;
end;

function TFrame_Venda_Mestre.RetornaString(ACaminho:String): String;
Var
  Path    : String;
  SR      : TSearchRec;
  DirList : TStrings;
begin
  Path:=ACaminho;
  DirList:=TStringList.Create;
  try
    if FindFirst(IncludeTrailingPathDelimiter(Path) + '*.*', faArchive, SR) = 0 then
    begin
      repeat
        DirList.Add(IncludeTrailingPathDelimiter(Path) + SR.Name + ''); //Fill the list
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
    Result := IncludeTrailingPathDelimiter(Path) + SR.Name + '';//DirList.Text;
  finally
    DirList.Free;
  end;
end;

procedure TFrame_Venda_Mestre.WREventosCadastroValidaComponente(Sender: TObject;
  var AError: Boolean; var ErrorText: TCaption);
begin
  if(sender = edtResponsavelÎPessoasÎRAZAOSOCIAL) then
  begin
    if (WREventosCadastro.AcaoTabelaAtiva = 'CONFIRMAR') and (Cadastro.FieldByName('RAZAOSOCIAL').AsString = '') then
    begin
      AError := True;
      ErrorText := 'A Razão Social / Nome do Destinatário não pode ficar vazia.';
    end;
    if (WREventosCadastro.AcaoTabelaAtiva = 'PARCELAS') and (Cadastro.FieldByName('RAZAOSOCIAL').AsString = '') then
    begin
      AError := True;
      ErrorText := 'Para gerar parcelas, o nome do Responsável não pode estar vazio.';
    end;
  end;
end;

procedure TFrame_Venda_Mestre.MenuDireitaPopup(Sender: TObject);      // Ok
begin
  inherited;
  CriaMenuEmpresas(PoupTransferirVendaparaEmpresa);
  // regras
  PoupClientes.Enabled      := (EdtResponsavelÎPessoas.Text <> '');
  PoupCopiarVendacomProdutos.Enabled := (Cadastro.State = dsBrowse)and not Cadastro.IsEmpty;
  PoupTransferirVendaparaEmpresa.Enabled := (Cadastro.State = dsBrowse) and not Cadastro.IsEmpty;                  // MenuItem

  PoupReativarVenda.Enabled := (CbxAtivo.Text <> 'S');
  PoupClientes.Enabled := FrmPrincipal.Action_Cad_Clientes.Enabled;  // OK, pega do principal
end;

procedure TFrame_Venda_Mestre.MenuEmpresasPopup(Sender: TObject);    // Ok
begin
  inherited;
  CriaMenuEmpresas(MenuEmpresas.Items);
end;

procedure TFrame_Venda_Mestre.MenuFinanceiroPopup(Sender: TObject);     // Ok
begin
  inherited;
  Excluirparcelas1.Enabled            := PodeAlterarParcelas;
  Reajustarvenctodasparcelas1.Enabled := PodeAlterarParcelas;
end;

procedure TFrame_Venda_Mestre.PopupMenu_ProdutoPopup(Sender: TObject); // Ok, novo padrão
begin
  inherited;
  AbrirVendaOriginal1.Visible := (Venda_Produto.FieldByName('CODVENDA_ORIGINAL').AsString <> '');
  DadosVeiculo1.Visible := Venda_Produto.FieldByName('VEICULO_CHASSI').AsString.Trim <> '';
  DuplicarProduto1.Visible := (Cadastro.State = dsBrowse) and (Cadastro.FieldByName('DT_FATURAMENTO').AsString = '');
end;

{$ENDREGION}

{$REGION 'SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen'}

procedure TFrame_Venda_Mestre.ParametrosBeforeOpen(DataSet: TDataSet);    // Ok
begin
  inherited;
  Parametros.ParamByName('Cod').AsInteger := Empresa.FieldByName('CODIGO').AsInteger;
end;

procedure TFrame_Venda_Mestre.CadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  Endereco_Responsavel.Close;
  Produto_Tabela_Preco.Close;
end;

procedure TFrame_Venda_Mestre.CadastroAfterEdit(DataSet: TDataSet);           // Essa função deve ficar na integração do PAF
  procedure LDefault(const ACampo: string; const AValue: Variant);  // e migrar os antigos no UpdateSQL
  begin                                                             // Preciso de todos os dados bem cadastrados para poder ter relatórios fáceis de desenvolver
    if Cadastro.FieldByName(ACampo).IsNull then                     // depois que o erro vai para o banco da um trabalhaão de minerar os dados
      Cadastro.FieldByName(ACampo).Value := AValue;
  end;
var
  AConsumidorFinal: Variant;
begin
  inherited;
  if Cadastro.FieldByName('VENDA_TIPO').AsString = 'CUPOM' then
  begin
    LDefault('NF_SAIDA_ENTRADA', tpNFToStr(tnSaida));
    LDefault('NF_FINALIDADE', FinNFeToStr(fnComplementar));
    LDefault('NF_FRETEPORCONTA', modFreteToStr(mfContaEmitente));
    if Cadastro.FieldByName('CONSUMIDOR_FINAL').IsNull then
    begin
      AConsumidorFinal := ProcuraVar('CONSUMIDOR_FINAL', 'PESSOAS', Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value);
      if VarIsNull(AConsumidorFinal) then
        AConsumidorFinal := 'S';
      Cadastro.FieldByName('CONSUMIDOR_FINAL').Value := AConsumidorFinal;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.CadastroAfterInsert(DataSet: TDataSet);
var
  Reg: TRegistry;
begin
  inherited;
  Reg := TRegistry.Create;
  try
//    Reg.RootKey := HKEY_CURRENT_USER;
//    ATipo := 'VENDA';
//    if Reg.OpenKey(Sistema.RegPath + ClassName + '\', False) and (Reg.ReadIntegerWR('CodVenda_Tipo' + Empresa.FieldByName('CODIGO').AsString) <> 0) then
//    begin
//      ACodTipo := Reg.ReadIntegerWR('CodVenda_Tipo' + Empresa.FieldByName('CODIGO').AsString);
//      if QuerVenda_Tipo.Locate('CODIGO', ACodTipo) then
//        ATipo := QuerVenda_Tipo.FieldByName('DESCRICAO').AsString;
//    end;
//
//    if QuerVenda_Tipo.Locate('DESCRICAO', ATipo, []) then
//      Cadastro.FieldByName('VENDA_TIPO').AsString := ATipo
//    else
//    begin
//      if Cadastro.FieldByName('VENDA_TIPO').AsString = '' then
//      begin
//        QuerVenda_Tipo.First;
//        Cadastro.FieldByName('VENDA_TIPO').AsString := QuerVenda_Tipo.FieldByName('DESCRICAO').AsString;
//      end;
    if Reg.OpenKeyReadOnly('Software\Rocha\' + ApplicationTitle + '\CadVenda\FrmVendaFrameNotaFiscal') and Reg.ValueExists('FretePorConta') then
      Cadastro.FieldByName('NF_FRETEPORCONTA').AsInteger := Reg.ReadInteger('FretePorConta');
    Cadastro.FieldByName('CODEMPRESA').AsInteger := Empresa.FieldByname('CODIGO').AsInteger;
  finally
    Reg.Free;
  end;
  // Martinho da caçamba, clica em editar
  FControleWR.FindComponente(EdtAtendenteÎPessoas).ValorComponentePessoa := TPessoaRetorno.Create(Usuario.CodigoFuncionario, 'FUN', Usuario.SequenciaFuncionario);

  if Cadastro.FieldByName('CODIGOVENDA').IsNull then
    Cadastro.FieldByName('CODIGOVENDA').AsString    := Cadastro.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.CadastroAfterOpen(DataSet: TDataSet);   //Retirar o máximo de  Opem daqui só se realmente for necessáro
var                                                         // Só abertura de Query aqui não pode ter outra coisa
  QuerX: TFDQuery;
begin
  inherited;
  Venda_Produto.Open;
  Venda_Financeiro.Open;
  Venda_Produto_Centro_Trabalho.Open;
  Produto_Estoque_Reservado.Open;

  GrupoTabsPrincipalTabChanged(nil);        // Pode,
  WRCalc.CalcBuild;     // O Caralho do negócio precisa dar o build para funcionar, cacete, Dai tudo funciona
end;

procedure TFrame_Venda_Mestre.CadastroBeforeClose(DataSet: TDataSet); // Revisar a necessidade de abrir e fechar tudo junto, dividir pelas partes abertas da tela
begin
  inherited;
  Venda_Produto.Close;
  Venda_Financeiro.Close;
  Venda_Produto_Centro_Trabalho.Close;
  Produto_Estoque_Reservado.Close;
end;

procedure TFrame_Venda_Mestre.CadastroBeforeEdit(DataSet: TDataSet);  // Aqui deveria ter DeadLook e mostrar o histórico quem esta editando a venda no momento                                     { TODO 1 -oWagner -cDeadLook : Deadlokk da Venda, }
begin
  inherited;
  // Problema reportado: Deu o Novo cancelou e abriu uma venda dentro da cancelada.
  if FReativarVenda <> 'S' then
  begin
    if (Cadastro.FieldByName('ATIVO').AsString = 'N') then
    begin
      ShowMessage('Venda está INATIVA, Reative primeiro a Venda antes de usar.'+linebreak+
                  'Menu-> Reativar Venda' );
      Abort;
    end;
  end;
  FReativarVenda := 'N';
end;

procedure TFrame_Venda_Mestre.CadastroBeforeInsert(DataSet: TDataSet);   // Deixar isso em um única linha
{$IFDEF WR_DEMO}
var
  QuerX : TFDQuery;
{$ENDIF}
begin
  inherited;
  {$IFDEF WR_DEMO}            // TODO: Migrar essa função para a dataModulo e aqui ficar apenas a chamada
  QuerX := GeraFDQuery;       // quero agrupar todas essas menssagens, MostrarMenssagemDeLimiteDe500VendaDemosntracao;
  try
    QuerX.SQL.Text := 'select count(1) from VENDA';
    QuerX.Open;
    if QuerX.Fields[0].AsInteger >= 500 then
    begin
      ShowMessageWR('Obrigado por testar o Office Impresso! 500 Vendas realizadas.' + sLineBreak + sLineBreak +
      'Esta é uma versão de demonstração do sistema. Para continuar utilizando, entre em contato com a WR2 Sistemas e adquira a versão completa.' + sLineBreak +
      'Telefones para contato: (48) 3301-0200.' + sLineBreak +
      'Agradecemos a preferência!' + sLineBreak + sLineBreak +
      'Atenciosamente, ' + sLineBreak +
      'WR2 Sistemas');
      Abort;
    end;
    Caption := 'Venda - Office Impresso VERSÃO DEMONSTRAÇÃO - ' + IntToStr(500 - QuerX.Fields[0].AsInteger) + ' vendas restantes.';
  finally
    QuerX.Free;
  end;
  {$ENDIF}
end;

procedure TFrame_Venda_Mestre.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;

 { try
    Endereco_Responsavel.Open;
  except
    ShowMessage('Errou Endereço');
  end;  }
 { try
    Produto_Tabela_Preco.Open;
  except

  end;   }

end;

procedure TFrame_Venda_Mestre.CadastroBeforePost(DataSet: TDataSet);   // Aqui deve ter uma tabela extra para conseguir seguir essas alterações e não ficar furo de sequencia
var
  I : Integer;
begin
  inherited;
  if (DS.State = dsInsert) then
  begin   //Quando for uma nova venda, gera a sequência.
    if (Cadastro.FieldByName('SEQUENCIA').AsString = '') then
      Cadastro.FieldByName('SEQUENCIA').AsInteger   := SQLVendaMaxSequencia(TransaFD, Cadastro.FieldByName('VENDA_TIPO').AsString);
    Exit;
  end;

  if (Cadastro.FieldByName('SEQUENCIA').AsString = '') then
    Cadastro.FieldByName('SEQUENCIA').AsInteger   := SQLVendaMaxSequencia(TransaFD, Cadastro.FieldByName('VENDA_TIPO').AsString);


  if (Cadastro.FieldByName('SEQUENCIA').AsInteger = 0) then
    Cadastro.FieldByName('SEQUENCIA').Clear;

//-----------------MENSAGENS--PERSONALIZADAS--HISTÓRICO-----------------//

  // Alterou o valor de frete
  if Cadastro.FieldByName('NF_VFRETE').OldValue <> Cadastro.FieldByName('NF_VFRETE').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Valor de FRETE ' +
    ifThen(Cadastro.FieldByName('NF_VFRETE').OldValue > Cadastro.FieldByName('NF_VFRETE').Value,'reduzido ', 'aumentado ') +
    ifThen(VarToStrDef(Cadastro.FieldByName('NF_VFRETE').OldValue, '') <> '', 'de R$ ' + VarToStrDef(Cadastro.FieldByName('NF_VFRETE').OldValue, '') + ',00 ' ,'') +
    'para R$ ' + VarToStrDef(Cadastro.FieldByName('NF_VFRETE').Value,'') + ',00.'
    );

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Alterou o valor de desconto
  if Cadastro.FieldByName('VDESC').OldValue <> Cadastro.FieldByName('VDESC').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Valor de DESCONTO ' +
    ifThen(Cadastro.FieldByName('VDESC').OldValue > Cadastro.FieldByName('VDESC').Value,'reduzido ', 'aumentado ') +
    ifThen(VarToStrDef(Cadastro.FieldByName('VDESC').OldValue, '') <> '', 'de R$ ' + VarToStrDef(Cadastro.FieldByName('VDESC').OldValue, '') + ',00 ' ,'') +
    'para R$ ' + VarToStrDef(Cadastro.FieldByName('VDESC').Value,'') + ',00.'
    );

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Alterou o valor de acréscimo
  if Cadastro.FieldByName('VOUTRO').OldValue <> Cadastro.FieldByName('VOUTRO').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Valor de ACRÉSCIMO ' +
    ifThen(Cadastro.FieldByName('VOUTRO').OldValue > Cadastro.FieldByName('VOUTRO').Value,'reduzido ', 'aumentado ') +
    ifThen(VarToStrDef(Cadastro.FieldByName('VOUTRO').OldValue, '') <> '', 'de R$ ' + VarToStrDef(Cadastro.FieldByName('VOUTRO').OldValue, '') + ',00 ' ,'') +
    'para R$ ' + VarToStrDef(Cadastro.FieldByName('VOUTRO').Value,'') + ',00.'
    );

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Faturou ou cancelou o Faturamento?
  if Cadastro.FieldByName('DT_FATURAMENTO').OldValue <> Cadastro.FieldByName('DT_FATURAMENTO').Value then
  begin
    if Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
      UCHist_Cadastro.MensagemHistorico.Add('-> Faturamento CANCELADO na data ' + VarToStrDef(DataHoraSys,'') + '.');

    if Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '' then
      UCHist_Cadastro.MensagemHistorico.Add('-> Venda FATURADA na data ' + Cadastro.FieldByName('DT_FATURAMENTO').AsString + '.');

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Trocou Condição de Pagamento
  if Cadastro.FieldByName('CONDICAOPAGTO').OldValue <> Cadastro.FieldByName('CONDICAOPAGTO').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Condição de Pagamento alterada ' +
    ifThen(VarToStrDef(Cadastro.FieldByName('CONDICAOPAGTO').OldValue, '') <> '', 'de ' + VarToStrDef(Cadastro.FieldByName('CONDICAOPAGTO').OldValue, '') + ' ' ,'') +
    'para ' + VarToStrDef(Cadastro.FieldByName('CONDICAOPAGTO').Value,'') + '.'
    );
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Excluiu a venda
  if (Cadastro.FieldByName('STATUS').AsString = 'INATIVO EXCLUÍDO') and
     (Cadastro.FieldByName('ATIVO').OldValue <> Cadastro.FieldByName('ATIVO').Value)  then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Venda EXCLUÍDA na data ' + VarToStrDef(DataHoraSys,'') + '.');

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Reativou a Venda
  if (Cadastro.FieldByName('STATUS').AsString = 'ATIVO') and
     (Cadastro.FieldByName('ATIVO').OldValue <> Cadastro.FieldByName('ATIVO').Value)  then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Venda REATIVADA na data ' + VarToStrDef(DataHoraSys,'') + '.');

    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Situação de Venda
  if Cadastro.FieldByName('SITUACAO').OldValue <> Cadastro.FieldByName('SITUACAO').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> SITUAÇÃO alterada ' +
    ifThen(VarToStrDef(Cadastro.FieldByName('SITUACAO').OldValue, '') <> '', 'de "' + VarToStrDef(Cadastro.FieldByName('SITUACAO').OldValue, '') + '" ' ,'') +
    'para "' + VarToStrDef(Cadastro.FieldByName('SITUACAO').Value,'') + '".'
    );
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Alterou o tipo de venda
  if Cadastro.FieldByName('VENDA_TIPO').OldValue <> Cadastro.FieldByName('VENDA_TIPO').Value then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> TIPO DE VENDA alterada ' +
    ifThen(VarToStrDef(Cadastro.FieldByName('VENDA_TIPO').OldValue, '') <> '', 'de "' + VarToStrDef(Cadastro.FieldByName('VENDA_TIPO').OldValue, '') + '" ' ,'') +
    'para "' + VarToStrDef(Cadastro.FieldByName('VENDA_TIPO').Value,'') + '".'
    );
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Alterou a razão social
  if  (Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').OldValue = Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value)
  and (Cadastro.FieldByName('RAZAOSOCIAL').OldValue <> Cadastro.FieldByName('RAZAOSOCIAL').Value) then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Razão Social do Cliente alterada ' +
    ifThen(VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').OldValue, '') <> '', 'de "' + VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').OldValue, '') + '" ' ,'') +
    'para "' + VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').Value,'') + '".'
    );
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Alterou o cliente
  if  (Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').OldValue <> Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value)
  and (Cadastro.FieldByName('RAZAOSOCIAL').OldValue <> Cadastro.FieldByName('RAZAOSOCIAL').Value) then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Cliente alterado ' +
    ifThen(VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').OldValue, '') <> '', 'de "' + VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').OldValue, '') + '" (Cód: ' +  VarToStrDef(Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').OldValue + ') ', ''),'') +
    'para "' + VarToStrDef(Cadastro.FieldByName('RAZAOSOCIAL').Value,'') + '" (Cód: ' +  VarToStrDef(Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value + ').', '')
    );
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;

  // Apagou o número da nota fiscal
  if  (Cadastro.FieldByName('NOTAFISCAL').OldValue <> Cadastro.FieldByName('NOTAFISCAL').Value)
  and (Cadastro.FieldByName('NOTAFISCAL').AsString = '') then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Número de Nota Fiscal apagado. O número anterior informado no campo era "' + VarToStrDef(Cadastro.FieldByName('NOTAFISCAL').OldValue, '') + '".');
    UCHist_Cadastro.MensagemHistorico.Add('');
  end;


//  if UCHist_Cadastro.MensagemHistorico.Count > 1 then
//    UCHist_Cadastro.MensagemHistorico.Delete(UCHist_Cadastro.MensagemHistorico.Count - 1);

  // Venda produto não funciona porque não reconhece a alteração venda_produto no post
  {
  Venda_Produto.First;
  while not Venda_Produto.eof do
  begin
    if Venda_Produto.FieldByName('DESCRICAO').OldValue <> Venda_Produto.FieldByName('DESCRICAO').Value then
      UCHist_Cadastro.MensagemHistorico.Add('Descrição do Item ' + Venda_Produto.FieldByName('SEQUENCIA').AsString + ' foi alterado manualmente, verifique o histórico do item para conferir as alterações.');

    if Venda_Produto.FieldByName('VALOR').OldValue <> Venda_Produto.FieldByName('VALOR').Value then
      UCHist_Cadastro.MensagemHistorico.Add('Valor do Item ' + Venda_Produto.FieldByName('VALOR').AsString + ' foi alterado manualmente de R$' + Venda_Produto.FieldByName('VALOR').OldValue + ',00 para ' + Venda_Produto.FieldByName('VALOR').AsString + ',00.');

    Venda_Produto.Next;
  end;
  }
//  if (cadastro.FieldByName('DT_FATURAMENTO').IsNull) and (cadastro.FieldByName('IS_VENDA').AsString = 'S') then //regra dupla
//  begin
//    venda_produto.First;
//    while not venda_produto.Eof do
//    begin
//      if produto_estoque_reservado.locate('CODPRODUTO', venda_produto.FieldByName('CODPRODUTO').AsString) then
//      begin
//        produto_estoque_reservado.Edit;
//        produto_estoque_reservado.FieldByName('RESERVADO').AsFloat := venda_produto.FieldByName('QUANT').AsFloat;
//      end else
//      begin
//        produto_estoque_reservado.Insert;
//        produto_estoque_reservado.FieldByName('CODPRODUTO').AsString := venda_produto.FieldByName('CODPRODUTO').AsString;
//        produto_estoque_reservado.FieldByName('CODVENDA').AsString   := venda_produto.FieldByName('CODVENDA').AsString;
//        produto_estoque_reservado.FieldByName('RESERVADO').AsFloat   := venda_produto.FieldByName('QUANT').AsFloat;
//      end;
//      produto_estoque_reservado.Post;
//      venda_produto.Next;
//    end;
//  end;

  ControllerVenda_KPIVendaFaturada(DataSet);
end;

procedure TFrame_Venda_Mestre.Venda_Produto_Centro_TrabalhoAfterInsert(DataSet: TDataSet); //Ok, deveria ter chaves
begin
  inherited;
//  Venda_Produto_Centro_Trabalho.FieldByName('CODIGO').AsInteger           := Trunc(GetProximoCodigoGen('CR_VENDA_PRODUTO_CENTRO_TRAB'));
//  Venda_Produto_Centro_Trabalho.FieldByName('CODVENDA').AsString          := Venda_Produto.FieldByName('CODVENDA').AsString;
//  Venda_Produto_Centro_Trabalho.FieldByName('CODVENDA_PRODUTO').AsInteger := Venda_Produto.FieldByName('CODIGO').AsInteger;
end;

procedure TFrame_Venda_Mestre.Venda_FinanceiroAfterEdit(DataSet: TDataSet); // OK, fico preocupado com os acessos
begin                                                             // Gosto de ver o código para que vou deixar acessar o dataset.
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Venda_Mestre.Venda_FinanceiroBeforePost(DataSet: TDataSet);     // Não pode ter acesso ao SQL da tela
  function LUsandoCredito: Boolean;   // Não pode                      // Use a própria DataSet
  var                                                                  // Resisar e testar
    QuerX: TFDQuery;
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select first 1 1 ' +
                        'from VENDA_FINANCEIRO ' +
                        'where (CODVENDA = :CodVenda) ' +
                        '      and (TIPOPAGTO = ''CRÉDITO'')';
      QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;
      Result := not QuerX.IsEmpty;
    finally
      QuerX.Free;
    end;
  end;

var
  Valor_Parcela: Real;
  QuerX, QuerUpdate : TFDQuery;
  ATotal : Double;
  AQuantParcelas, AUsaCreditoDelta: Integer;
  ADataAtual : TDateTime;
  ATPSemDTPagto, AUltima : string;
begin
  inherited;
  if (DataSet.State = dsInsert) then
    Exit;
  //ATENÇÃO!! O DataSet pode ser o Venda_Financeiro ou o Venda_Terceirizado!!!!
  ADataAtual := DataHoraSys;
  if MatchStr(DataSet.FieldByName('TIPOPAGTO').AsString,
     ['CHEQUE', 'CHEQUE-PRÉ', 'CARTÃO DE CRÉDITO', 'CARTÃO DE DÉBITO', 'DINHEIRO']) then
  begin
    //if Copy(DataSet.FieldByName('TipoPagto').AsString, 1, 6) = 'CHEQUE' then
    if StartsStr('CHEQUE', DataSet.FieldByName('TipoPagto').AsString) then
    begin
      DataSet.FieldByName('CHEQUE_DT_BOM_PARA').AsDateTime := DataSet.FieldByName('VENCTO').AsDateTime;
      if DateOf(DataSet.FieldByName('DATAPAGTO').AsDateTime) > DateOf(ADataAtual) then
        DataSet.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;
    end else if DataSet.FieldByName('TipoPagto').AsString = 'DINHEIRO' then
    begin
      if DateOf(DataSet.FieldByName('DATAPAGTO').AsDateTime) > DateOf(ADataAtual) then
        DataSet.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;
    end else
      DataSet.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;

  end else
  begin
    if (not MatchStr(DataSet.FieldByName('TIPO').AsString, ['RECEBIDA', 'PAGA']))then
      DataSet.FieldByName('DATAPAGTO').Clear;
  end;

  if (DataSet.State = dsEdit) then
  begin
    ATotal         := Cadastro.FieldByName('TOTAL').AsCurrency;
    AQuantParcelas := Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger;
    if RdT(ATotal, -2) < RdT(DataSet.FieldByName('VALOR').AsCurrency, -2) then
    begin
      ShowMessageWR('O valor da Parcela: ' + DataSet.FieldByName('PARCELA').AsString + ' , é maior que o valor da Nota');
      DataSet.Cancel;
      Abort;
    end;
    if AQuantParcelas = 0 then AQuantParcelas:=1;

    VerificaPlanoContasFinanceiro(TFDQuery(DataSet).Transaction, DataSet.FieldByName('CODPLANOCONTAS').AsString);
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select sum(VALOR) as VALOR ' +
                        'from VENDA_FINANCEIRO ' +
                        'where (CODVENDA = :CodVenda) ' +
                        '      and (CODIGO < :CodVenda_Financeiro)';
    //  QuerX.SQL.Add('and (PESSOA_FORNECEDOR_CODIGO is null)');
      QuerX.ParamByName('CodVenda').AsString            := Cadastro.FieldByName('CODIGO').AsString;
      QuerX.ParamByName('CodVenda_Financeiro').AsString := DataSet.FieldByName('CODIGO').AsString;
      QuerX.Open;

      //O AUsaCreditoDelta é usado para ajustar a identificação da parcela quando se está usando crédito. Se não usar crédito
      //o AUsaCreditoDelta fica em 0 e a identificação é a padrão, caso contrário é definido como 1 para contar uma parcela a mais
     { AUsaCreditoDelta := 0;
      if LUsandoCredito then
        AUsaCreditoDelta := 1; }

      AUsaCreditoDelta := 0;
      if (AQuantParcelas = 1) and (AUsaCreditoDelta = 0) then
        DataSet.FieldByName('VALOR').AsFloat := ATotal
      else if AQuantParcelas + AUsaCreditoDelta =  DataSet.FieldByName('CODIGO').AsInteger  then// //DataSet.FieldByName('PARCELA').AsInteger
      begin
        DataSet.FieldByName('VALOR').AsFloat := ATotal - QuerX.FieldByName('VALOR').AsFloat;
      end
      else
      begin
        Valor_Parcela := (ATotal - (QuerX.FieldByName('VALOR').AsFloat + DataSet.FieldByName('VALOR').AsFloat)) /
                          (AQuantParcelas - (DataSet.FieldByName('CODIGO').AsInteger - AUsaCreditoDelta));
                          //DataSet.FieldByName('PARCELA').AsInteger
        Valor_Parcela := RdT(Valor_Parcela, -2);//(trunc(Valor_Parcela*100)/100);//
        if not (Valor_Parcela >= 0) then
        begin
          ShowMessageWR('O valor Digitado é maior que o permitido');
          DataSet.Cancel;
          Abort;
        end;


        QuerX.SQL.Text := 'update venda_financeiro vf set' + #13#10 +
                          'vf.valor = :Valor_Parcela where' + #13#10 +
                          'vf.codvenda = :CodVenda and' + #13#10 +
                          'vf.Codigo > :CodVenda_Financeiro';
        QuerX.ParamByName('Valor_Parcela').AsFloat          := Valor_Parcela;
        QuerX.ParamByName('CodVenda').AsString              := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ParamByName('CodVenda_Financeiro').AsInteger  := DataSet.FieldByName('CODIGO').AsInteger;
        QuerX.ExecSQL;





        //DataSet.FieldByName('Valor').AsCurrency  := Valor_Parcela;
      end;
    finally
      FreeAndNil(QuerX);
    end;
  end;

  ATPSemDTPagto := ProcuraField('SEM_DT_PAGTO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [DataSet.FieldByName('TIPOPAGTO').AsString]);
  if ATPSemDTPagto = 'S' then
    DataSet.FieldByName('DATAPAGTO').Clear;

  DataSet.FieldByName('PARCELA_ALTERADA').AsString := 'S';
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoAfterClose(DataSet: TDataSet);
begin
  inherited;
  WRCalc.SprFechaMemTables;  //SPRITESHEET
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DM_VendaProdutoEventoAfterInsert(Cadastro, Venda_Produto);   //Isso aqui da muito ruim código escondido
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoBeforeDelete(DataSet: TDataSet);    // Padronização da exclusão
begin
  inherited;                                                         // Se der erro não tem apoio aqui
  {Estes DisableControls foram validados, estão aqui pois foi não há datasets filhos dependentes deles.
   Caso algum dataset filho seja vinculado, deve ser revisado!}

//  while not Venda_Produto_Centro_Trabalho.IsEmpty do não é padrão // Gostaria de padronizar o negócio
//    Venda_Produto_Centro_Trabalho.Delete;
   VerificaControleEdicao;
   DSExcluirRecursivoInformandoCampos(Venda_Produto_Centro_Trabalho, 'CODIGO', 'CODVENDA_PRODUTO_CT_PRE_REQ');
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoBeforeEdit(DataSet: TDataSet); // Ok, tenho medo de código escondido
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  VerificaControleEdicao;
end;

procedure TFrame_Venda_Mestre.Venda_ProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Venda_Produto.FieldByName('CODNF_CFOP').AsString <> '') and
     (Venda_Produto.FieldByName('CODNF_CST').AsString <> '') and
     (Venda_Produto.FieldByName('CODNF_NCM').AsString <> '')
  then
    Venda_Produto.FieldByName('TEM_TRIBUTACAO_INCORRETA').AsString := 'N'
  else
    Venda_Produto.FieldByName('TEM_TRIBUTACAO_INCORRETA').AsString := 'S';

  VerificaControleEdicao;
  Venda_Produto.FieldByName('Medidas').AsString  := ProdutoGetMedidasDataSet(Venda_Produto).Medidas;
end;

procedure TFrame_Venda_Mestre.QuerVenda_TipoBeforeOpen(DataSet: TDataSet);  // As Venda disponível para o usuário
var                                                               // tem que passar o sql para TConfig e migrar
  AFiltroSQL: string;
begin
  inherited;
  QuerVenda_Tipo.SQL.Text := 'select * ' +
                             'from VENDA_TIPO ' +
                             'where (ATIVO = ''S'')';
  AFiltroSQL := GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO'); { TODO -oFelipe -cTConfig : Migrar isso para TConfig, apenas GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO') }
  if AFiltroSQL <> '' then
    QuerVenda_Tipo.SQL.Add('and not (DESCRICAO in (' + AFiltroSQL + '))');
  QuerVenda_Tipo.SQL.Add('order by 1 asc');
end;

procedure TFrame_Venda_Mestre.FinanceiroAfterEdit(DataSet: TDataSet);   // Ok, revisar a rotina
begin
  inherited;
  wrFuncoesValidarSituacaoContaBanco(Financeiro);    // Executa 2 vezes, função acima   SQL
end;

procedure TFrame_Venda_Mestre.FinanceiroBeforePost(DataSet: TDataSet); // Ok, revisar a rotina
begin
  inherited;
  wrFuncoesValidarSituacaoContaBanco(Financeiro);     // Executa 2 vezes, função acima  SQL
end;

procedure TFrame_Venda_Mestre.Endereco_ResponsavelAfterOpen(DataSet: TDataSet); // OK - Gosto desse padrão
begin
  inherited;
  edtResponsavelÎPessoasÎRAZAOSOCIAL.ValidateEdit(False);  // Coreto
end;

procedure TFrame_Venda_Mestre.Enviarparaproduo1Click(Sender: TObject);
var
  i: Integer;
  AMsg: TStringList;
  ANode: TcxTreeListNode;
  ATipoEnvio: String;
  ATemProdutoEnviadoParaProducao: boolean;
  wr_memoria_producao_produto  : TFDMemTable;
  QuerX: TFDQuery;
begin
//  if not Assigned(wr_memoria_venda_produto) then
  inherited;
  if not VerificaESolicitaValorMinimoTreeList then
    Exit;
  ATemProdutoEnviadoParaProducao := False;

  QuerX := GeraFDQuery;
  if Cadastro.FieldByName('VENDA_TIPO_PODE_SER_PRODUZIDO').AsString <> 'S' then
  begin
    ShowMessageWR('Esse tipo: ' + Cadastro.FieldByName('VENDA_TIPO').AsString + ' não pode enviar itens a produção. selecione a opção: "Pode ser produzido" no cadastro de tipo de venda.');
    Exit;
  end;
  WREventosCadastro.ValidaCamposObrigatorio(Self, 'PRODUCAO');

  //Label LbUCImpedirProducaoFatura com sentido diferente, deveria ser LbUCLiberarProducaoFatura.
  if (not LbUCImpedirProducaoFatura.Enabled) and not (Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0) then
    GeraExcecao('Para enviar o(s) item(ns) a produção, a venda deve estar faturada.');

  //Mover para wrValidacoes, tem que desenvolver...
  if TConfig.ReadBoolean('VENDA_OBRIGAR_PERMITIDOPARA_PRODUCAO') then
  begin
    if Cadastro.FieldByName('PROJETO_DT_FIM').AsString = '' then
    begin
      ShowMessage('Não é permitido produzir sem o campo "Prometido Para" estar preenchido');
      Exit;
    end;
  end;

  if TConfig.ReadBoolean('VENDA_OBRIGAR_SITUACAO_PRODUCAO') then
  begin
    if Cadastro.FieldByName('SITUACAO').AsString = '' then
    begin
      ShowMessage('Não é permitido produzir sem o campo "Situação" estar preenchido');
      Exit;
    end;
  end;

  if TConfig.ReadInteger('PRODUCAO_CENTRO_TRABALHO_PADRAO') <> 0 then
  begin
    ShowMessage('Função de Envio Automatico desativada, Entrar em Contato com Suporte');
    Exit;
  end;

  if ShowMessageWR('Deseja enviar o(s) item(ns) para a Produção?', MB_ICONQUESTION) <> mrYes then
    Exit;
  {$ENDREGION}

  {$REGION 'Envio a Produção'}
  AMsg := TStringList.Create;
  Producao.Open;
  Producao_Produto.Open;
  with TFrmEncaminhar.Create(Self) do
  try
    wr_memoria_producao_produto:= TFDMemTable.Create(nil);

    if wr_memoria_producao_produto.Active then
      wr_memoria_producao_produto.Close;

    wr_memoria_producao_produto.Data := Producao_Produto.Data;
    wr_memoria_producao_produto.open;

    for I := 0 to GridProdutoTree.Count - 1 do
    begin
      ANode := GridProdutoTree.Items[I];
      DSLocateWR(Venda_Produto, TreeListGetValorNode(ANode, 'CODIGO'));
//      Try
        if Venda_Produto.FieldByName('EM_PRODUCAO').AsString = 'S' then
          Continue
        else
          ATemProdutoEnviadoParaProducao := True;

        if Venda_Produto.FieldByName('TEM_PRODUCAO_FINALIZADA_NOENVIO').AsString = 'S' then
          Continue;

        if not(Venda_Produto.FieldByName('PROTOCOLO').IsNull) then
        begin                     //cancelar a anterior e
          if (ShowMessageWR('Deseja reenviar o Item N°: '+ TreeListGetValorNodeString(ANode, 'CODIGO') + sLineBreak + Venda_Produto.FieldByName('DESCRICAO').AsString + '?', MB_ICONQUESTION) = mrNo) then
          begin
            AMsg.Add('Item N°: '+ TreeListGetValorNodeString(ANode, 'CODIGO') + ' '+TreeListGetValorNodeString(ANode, 'DESCRICAO') +' NÃO Reenviado.' );
            Continue;
          end else
          begin
            ATipoEnvio := 'Reenviado';
          end;
        end else
          ATipoEnvio := 'Enviado';

//        TransaFD.StartTransaction;      /// Cada produto enviado tem uma transação, Se o ´código de protocolo for errado gravargrid no histórico


        LblAssunto.Caption := 'Encaminhar para produção';
        LblProduto.Caption := Venda_Produto.FieldByName('DESCRICAO').AsString;
        MemoObservacao.Text:= Venda_Produto.FieldByName('OBS_PRODUCAO').AsString;



        Producao.Close; // Pega o item selecionado
        Producao.Open;
        if Producao.RecordCount > 0 then
        begin
          cbxCodCentro_Trabalho.EditValue          := Producao.FieldByName('CODCENTRO_TRABALHO').AsString;
          cbxSituacao.Text                         := Producao.FieldByName('SITUACAO').AsString;
          cbxEstagio.Text                          := Producao.FieldByName('PRODUCAO_ESTAGIO').AsString;
          cxbUsuario.Text                          := Producao.FieldByName('USUARIO').AsString;
          cbxFuncionario.EditValue                 := Producao.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
          cbxProducao_Motivo.Text                  := Producao.FieldByName('PRODUCAO_MOTIVO').AsString;
        end;
        QuerX.Close;
        QuerX.SQL.Text := 'select * from produto_etapa pe where pe.codproduto = '+ quotedStr(Venda_Produto.FieldByName('CODPRODUTO').AsString) + ' and ORDEM = 1';
        QuerX.Open;
        if QuerX.RecordCount > 0 then
        begin
          cbxCodCentro_Trabalho.EditValue :=  QuerX.FieldByName('CODCENTRO_TRABALHO').AsString;
          cbxCodCentro_Trabalho.Enabled := False;
        end
        else
          cbxCodCentro_Trabalho.Enabled := True;


        if ShowModal = mrOk then
        begin

          DSLocateWR(Venda_Produto, TreeListGetValorNode(ANode, 'CODIGO'));

//        Se encontrou, edita todos
//          if not(Venda_Produto.FieldByName('PROTOCOLO').IsNull) and (Venda_Produto.FieldByName('EM_PRODUCAO').AsString = 'N') then
//          begin
          UCHist_Producao.MensagemHistorico.Text:='';
//          if Producao.RecordCount > 0 then
//          begin
//            Producao.First;
//            while Not Producao.Eof do
//            begin
//              Producao.Edit;
////              Producao.FieldByName('PRODUTO').Value    := Venda_Produto.FieldByName('DESCRICAO').Value;
////              Producao.FieldByName('DESCRICAO').Value  := Venda_Produto.FieldByName('DESCRICAO').Value;
////              Producao.FieldByName('QTDADEPECA').Value := Venda_Produto.FieldByName('QTDADEPECA').Value;
////              Producao.FieldByName('COMP').Value       := Venda_Produto.FieldByName('COMP').Value;
////              Producao.FieldByName('LARG').Value       := Venda_Produto.FieldByName('LARG').Value;
////              Producao.FieldByName('ESPESSURA').Value  := Venda_Produto.FieldByName('ESPESSURA').Value;
////              Producao.FieldByName('QUANT').Value      := Venda_Produto.FieldByName('QUANT').Value;
//              Producao.FieldByName('ATIVO').AsString        := 'N';    // Reativado
//              Producao.FieldByName('TEM_ARQUIVADO').AsString:= 'S';    // Reativado
//              Producao.FieldByName('SITUACAO').Value        := 'Cancelado';//Cancelada pela Venda    // Reativado
//              UCHist_Producao.MensagemHistorico.Add('Cancelada pela venda.');
//              UCHist_Producao.MensagemHistorico.Add('Responsável pelo cancelamento: '+usuario.Login);
//              Producao.Post;
//              Producao.Next;
//            end;
//          end;
//           else
//          begin
          AMsg.Add('Item N°: '+ TreeListGetValorNodeString(ANode, 'CODIGO') + ' '+TreeListGetValorNodeString(ANode, 'DESCRICAO') +' ' +ATipoEnvio);
          Producao.Insert;
          UCHist_Producao.MensagemHistorico.Text:='';
          WREventosCadastro.Regra_ValorInicial(Producao, 'PRODUCAO', 'TFrmProducao');

          DSCopiarCamposIguais(Cadastro, Producao, ['CODIGO', 'DT_ALTERACAO', 'DT_EMISSAO', 'ATIVO', 'VALOR']);
          DSCopiarCamposIguais(Venda_Produto, Producao, ['CODIGO', 'DT_ALTERACAO', 'DT_EMISSAO', 'QUANT']);

          Producao.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUCAO')); //TFDQuery(Producao).Transaction
          Producao.FieldByName('ORDEM_ETAPA').AsInteger         := QuerX.FieldByName('ORDEM').AsInteger;
          Producao.FieldByName('TEM_ARQUIVADO').AsString        := 'N';
          Producao.FieldByName('CODVENDA_PRODUTO').AsInteger    := Venda_Produto.FieldByName('CODIGO').AsInteger;
          Producao.FieldByName('CODCENTRO_TRABALHO').AsInteger  := cbxCodCentro_Trabalho.EditingValue; // QuerProducaoEtapa.FieldByName('CODCENTRO_TRABALHO').AsInteger;
          Producao.FieldByName('PRODUCAO_ESTAGIO').AsString     := cbxEstagio.Text;
          //Producao.FieldByName('CODUSUARIO').AsInteger          := cxbUsuario.EditingValue;
          Producao.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString          := cbxFuncionario.EditingValue;
          Producao.FieldByName('PRODUTO').AsString              := Venda_Produto.FieldByName('DESCRICAO').AsString;
          Producao.FieldByName('QUANT_PRODUZIR').AsFloat        := Venda_Produto.FieldByName('QUANT').AsFloat;
          Producao.FieldByName('ATIVO').AsString                := 'S';
          Producao.FieldByName('SITUACAO').AsString             := 'Liberado';
          Producao.FieldByName('DT_EMISSAO').AsString           := DataHoraSis;  // SQL
          Producao.FieldByName('DT_ALTERACAO').AsString         := Producao.FieldByName('DT_EMISSAO').AsString;
          Producao.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsString       := Cadastro.FieldByName('PROJETO_DT_FIM').AsString;
          Producao.FieldByName('DT_ENTREGA').AsString           := Venda_Produto.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsString;
          Producao.FieldByName('DT_APROVACAO_SAIDA_ETAPA').AsString           := Venda_Produto.FieldByName('DT_APROVACAO_SAIDA_ETAPA').AsString;
          Producao.FieldByName('OBS_PRODUCAO').AsString         := MemoObservacao.Text;
          Producao.FieldByName('VALOR').AsFloat                 := Venda_Produto.FieldByName('TOTAL').AsFloat;

          if Venda_Produto.FieldByName('PROTOCOLO').AsString<>'' then
            UCHist_Producao.MensagemHistorico.Add('Protocolo Antigo:'+Venda_Produto.FieldByName('PROTOCOLO').AsString+' foi substituído pelo: ');

          Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString  := GeraProtocolo;
          Producao.FieldByName('CODANEXO').AsString             := Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
          Producao.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(TransaFD, Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
          Producao.FieldByName('PROTOCOLO').AsString            := Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString+'-'+Producao.FieldByName('SEQUENCIA_PROTOCOLO').AsString;
          UCHist_Producao.MensagemHistorico.Add('Protocolo:'+Producao.FieldByName('PROTOCOLO').AsString);
          UCHist_Producao.MensagemHistorico.Add('Criado na venda pelo: '+usuario.Login);
          UCHist_Producao.MensagemHistorico.Add('OBS: ' + MemoObservacao.Text);
          Producao.Post;

//          Producao_Produto.Insert;
//          Producao_Produto.FieldByName('CODIGO').AsInteger               := Trunc(GetProximoCodigoGen('CR_PRODUCAO_PRODUTO'));
//          Producao_Produto.FieldByName('ATIVO').AsString                 := 'S';    {TODO -oFelipe -cRetirar o ATIVO daqui : Ativo}
//          Producao_Produto.FieldByName('CODPRODUCAO').Value              := Producao.FieldByName('CODIGO').AsInteger;
//          Producao_Produto.FieldByName('CODVENDA').AsString              := Cadastro.FieldByName('CODVENDA').AsString;
//          Producao_Produto.FieldByName('PROTOCOLO_PRINCIPAL').AsString   := Venda_Produto.FieldByName('PROTOCOLO').AsString;
//          Producao_Produto.FieldByName('PROTOCOLO').AsString             := Venda_Produto.FieldByName('PROTOCOLO').AsString;
//          Producao_Produto.FieldByName('CODUSUARIO').AsInteger           := Usuario.Codigo;
//          Producao_Produto.FieldByName('DT_EMISSAO').AsDateTime          := DataHoraSys;



          InternalDataSetCopiaFilhosRecursivoProducao(Venda_Produto, producao_produto, Venda_Produto.FieldbyName('Codigo').AsInteger,
          ['CODIGO', 'ORDEM', 'SEQUENCIA', 'PROTOCOLO_PRINCIPAL','CODPRODUCAO'],GridProdutoTree.Root, Producao.FieldByName('CODIGO').AsInteger, Venda_Produto.FieldByName('CODPRODUTO').AsString, Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString);


          Venda_Produto.Edit;
          Venda_Produto.FieldByName('OBS_PRODUCAO').AsString        := MemoObservacao.Text;
          Venda_Produto.FieldByName('PROTOCOLO').AsString           := Producao.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
          Venda_Produto.Post;
           (* Try
              if Producao.FieldByName('DT_PRAZO_FINAL').AsDateTime > 0 then
              begin
                horasTotais := HoursBetween(DataHoraSys,Producao.FieldByName('DT_PRAZO_FINAL').AsDateTime);
                horas := ((QuerXCamposAdicionais.FieldByName('HORAS_DIARIA').AsFloat * horasTotais)/100);
                horasadd := Round(horas);
                Producao.FieldByName('CALENDARIO_DT_PREVISAO_FIM').AsDateTime := IncHour(DataHoraSys,  horasadd);
              end;
    //        if QuerXCamposAdicionais.FindField('MENSAGEM_HISTORICO') <> nil then
    //          UCHist_Cadastro.MensagemHistorico.Text := QuerXCamposAdicionais.FieldByName('MENSAGEM_HISTORICO').AsString;
            except End;   *)
    // Deveria ser esse ->> historico.MensagemHistorico.Text:= 'Encaminhado para o setor: ' + QuerXCamposAdicionais.FieldByName('CENTRO_TRABALHO').AsString  + '.    OBS: ' +  AWRCalcVenda.DBProduto.FieldByName('OBS_PRODUCAO').AsString;
    //        Historico.AdicionaHistoricoNovo(nil, '1', Usuario.Codigo,
    //        now, 'TFrmProducao', 'PRODUCAO', 'Menssagem', '', 'PRODUCAO', Producao.FieldByName('CODIGO').AsInteger, 'Encaminhado para o setor: ' + QuerXCamposAdicionais.FieldByName('CENTRO_TRABALHO').AsString  + '.    OBS: ' +  AWRCalcVenda.DBProduto.FieldByName('OBS_PRODUCAO').AsString, 'S');
//          end;

          TFrame_ConsuProducao_Mestre.GeraProducaoEtapas(TransaFD, Venda_Produto, strToIntDef(cbxCodCentro_Trabalho.EditingValue,0), cbxSituacao.Text, strToIntDef(cbxFuncionario.EditingValue,0),
            cbxEstagio.Text , cbxProducao_Motivo.Text , Producao.FieldByName('CODIGO').AsInteger);

          ANode := ANode.GetFirstChild;
          EnviarProducao(ANode);        //<< Isso aqui manda os itens Filhos (materiais)
        end;
        TransaFD.Commit;
//      except
//        on E:Exception do
//        begin
//          RollbackTransacao(TransaFD);
//          AMsg.Add('Item N°: '+ TreeListGetValorNodeString(ANode, 'CODIGO') +' - '+TreeListGetValorNodeString(ANode, 'DESCRICAO')+ ' NÃO foi enviado(s) com para a Produção.');
//          ShowMessageWR('Há informações que não estão corretas, a operação será fechada para garantir a integridade da Produção' +
//              sLineBreak + 'Erro: ' + E.Message, MB_ICONWARNING);
//        end;
//      end;
    end;
  finally
    wr_memoria_producao_produto.Free;
    Free;
    QuerX.Free;
  end;
  Producao.Close;
  Producao_Produto.Close;
  {$ENDREGION}

  if (ATemProdutoEnviadoParaProducao) then
    ShowMessageWR(AMsg.Text)
  else
    ShowMessageWR('Nenhum item enviado. Todos os itens já estão em produção.');

  if Not (Cadastro.State = dsEdit) then
    Cadastro.Edit;
    UCHist_Cadastro.MensagemHistorico.text:='';
    UCHist_Cadastro.MensagemHistorico.Add('Usuário : '+Usuario.Login+ ' ' + ATipoEnvio + ' para produção:');
    UCHist_Cadastro.MensagemHistorico.Add(AMsg.Text);
    Cadastro.FieldByName('PROJETO_DT_EMISSAO').AsDateTime := DataHoraSys;
  try
    Cadastro.Post;
    TransaFD.Commit;
  except
    on E:Exception do
    begin
      RollbackTransacao(TransaFD);
      AMsg.Add('Item N°: '+ TreeListGetValorNodeString(ANode, 'CODIGO') +' - '+TreeListGetValorNodeString(ANode, 'DESCRICAO')+ ' NÃO foi enviado(s) com para a Produção.');
      ShowMessageWR('Há informações que não estão corretas, a operação será fechada para garantir a integridade da Produção' +
          sLineBreak + 'Erro: ' + E.Message, MB_ICONWARNING);
    end;
  end;
  Venda_Produto.Refresh;
  AMsg.Free;
end;

procedure TFrame_Venda_Mestre.EnviarparaRequisio1Click(Sender: TObject);
begin
  inherited;
  BtnAlterar.Click;

//  TFrame_Requisicao_Pocket.SolicitaRequisicao(Venda_Produto, AEntradaSaida);
  try
    Routes.Requisicao.Venda.SolicitaRequisicaoPelaVenda(TransaFD, Cadastro, Venda_Produto, Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString);
//    Cadastro.FieldByName('DT_REQUISICAO').AsDateTime := DataHoraSys;
    BtnConfirmar.Click;
  except
    on E:EWRException do
    begin
      BtnCancelar.Click;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrame_Venda_Mestre.EnviarProducao(AParentNode: TcxTreeListNode);
begin
  while AParentNode <> nil do
  begin
    DSLocateWR(Venda_Produto, TreeListGetValorNode(AParentNode, 'CODIGO'));
    if Venda_Produto.FieldByName('PARENT').Value > 0 then
    begin
//              // Cria o Produto da Produção
///               Producao_Produto.Insert;
//    //             // ConfigCamposForm.PreencheValoresIniciaisDataSet(AProducaoProduto);
//    //             // Regra_ValorInicial(Producao_Produto, AConfiguracao_Componente_Producao_produto, 'PRODUCAO_PRODUTO');
//                DSCopiarCamposIguais(Venda_Produto, Producao_Produto, ['CODIGO', 'PARENT', 'QUANT']);
//                Producao_Produto.FieldByName('QUANT_PREVISTA').Value  := Venda_Produto.FieldByName('QUANT').Value;
//                   if not(TConfig.ReadBoolean('ESTOQUE_DUPLO')) then //SE NAO USAR ESTOQUE DUPLO; COMO A VENDA JA DEU BAIXA, ELE JA CAI COM A BAIXA FEITA
//                begin                                             //POIS ESSA QUANTIDADE NÃO PODE SER BAIXADA NOVAMENTE QUANDO FINALIZAR A PRODUCAO
//                  Producao_Produto.FieldByName('QUANT').Value                 := Venda_Produto.FieldByName('QUANT').Value;
//                  Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime := now;
//                end;
//                Producao_Produto.FieldByName('CODIGO').Value              := GetProximoCodigo('PRODUCAO_PRODUTO', TFDQuery(Producao).Transaction);
//                Producao_Produto.FieldByName('PARENT').Value              := Venda_Produto.FieldByName('PARENT').Value;
//                Producao_Produto.FieldByName('CODPRODUCAO').AsInteger     := ACodProducao;
//                Producao_Produto.FieldByName('ATIVO').AsString            := 'S';
//                Producao_Produto.FieldByName('PROTOCOLO').AsString        := Producao.FieldByName('PROTOCOLO').AsString;
//                Producao_Produto.Post;
    end;
    AParentNode := AParentNode.getNextSibling;
  end;
end;

procedure TFrame_Venda_Mestre.ConsultaProdutoGridBeforeOpen(DataSet: TDataSet);  //Ok - aceitável, gosto de deixar tudo no mesmo evento
begin
  inherited;
  ConsultaProdutoGrid.ParamByName('CodEmpresa').AsString := Empresa.FieldByName('CODIGO').AsString;    //Ok
end;


{$ENDREGION}

{$REGION 'SEÇÃO 6: VIEW - OUTRAS FUNÇÕES - Funções que não fazem parte de DATASET, ou do FORM, mais pertencem a uso da FORM'}

procedure TFrame_Venda_Mestre.edtPathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);  // OK - Tenho que testar mais acho que esta certo
begin                                                                                         // Verificar se esse eventa esta linkado com todos os acesso ao caminho
  inherited;                                                                                  // Venda Produto tambem e o Grid se tiver
  if OpenDialog1.Execute then
    edtPath.DataBinding.DataSource.DataSet.FieldByName(edtPath.DataBinding.DataField).AsString := OpenDialog1.FileName;
end;

procedure TFrame_Venda_Mestre.RxDBComboEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);  // ok até aqui mais onde executa, é outra coisa
begin
  inherited;
  AbreConsultaEquipamento;
end;

procedure TFrame_Venda_Mestre.Reajustarvenctodasparcelas1Click(Sender: TObject);    // OK, APENAS TESTAR
var                                                                       // testar
  AData : TDate;
  APoint : TBookmark;
begin
  inherited;
  if ShowMessageWR('Este procedimento irá reajustar os vencimentos das parcelas de acordo com o vencimento da primeira ' +
                 'parcela.' + sLineBreak + 'Deseja continuar?', MB_ICONQUESTION) = mrYes then
  begin
    if Venda_Financeiro.RecordCount <= 1 then
    begin
      ShowMessageWR('Este procedimento só é válido quando há mais de uma parcela.');
      Exit;
    end;
    if (Cadastro.FieldByName('INTERVALO_MENSAL').AsString <> 'T') and (Cadastro.FieldByName('DIA_INTERVALO').AsInteger < 1) then
    begin
      ShowMessageWR('Intervalo de Dias inválido. Selecione um intervalo válido ou marque a opção "Mês".');
      edtCondicaoPagtoÎCondicaoPagtoÎINTERVALO.SetFocusWR;
      Exit;
    end;
    VerificaSePodeAlteraDataSet;
    Venda_Financeiro.DisableControls;
    try
      APoint := Venda_Financeiro.GetBookmark;
      Venda_Financeiro.First;
      AData := Venda_Financeiro.FieldByName('VENCTO').AsDateTime;
      Venda_Financeiro.Next;
      while not Venda_Financeiro.Eof do
      begin
        if Cadastro.FieldByName('INTERVALO_MENSAL').AsString = 'T' then
          AData := IncMonth(AData)
        else
          AData := IncDay(AData, Cadastro.FieldByName('DIA_INTERVALO').AsInteger);
        Venda_Financeiro.Edit;
        Venda_Financeiro.FieldByName('VENCTO').AsDateTime := AData;
        try
          Venda_Financeiro.Post;
        except
          Venda_Financeiro.Cancel;
          Exit;
        end;
        Venda_Financeiro.Next;
      end;
    finally
      if APoint <> nil then
        Venda_Financeiro.GotoBookmark(APoint);
      Venda_Financeiro.EnableControls;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.RemoverFrmula1Click(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Venda_Produto);
  WrCalc.SprAplicaFormula(Venda_Produto, '', 0, 'UN', '', '', '', '');
end;

procedure TFrame_Venda_Mestre.PoupReativarVendaClick(Sender: TObject);    // TODO: remover esse código quando o mestre suportar
begin
  if not Cadastro.IsEmpty and (ShowMessageWR('Deseja Ativar este(a) ' +
         'Venda ?', MB_ICONQUESTION) = mrYes) then
  begin
    try
      FReativarVenda := 'S';
      Cadastro.Edit;                // TODO: Código novo problema em reativar a VENDA
      Cadastro.FieldByName('ATIVO').AsString   := 'S';
      Cadastro.FieldByName('STATUS').AsString  := 'ATIVO';
      Cadastro.Post;
      TransaFD.Commit;
//      btnNovo.SetFocusWR;
      tcCadastro.Controller.FocusedItem:= btnNovo;
    except
      on E:Exception do
      begin
        btnCancelar.Click;
        raise;
      end;
    end;
  end;
//    inherited;
end;

procedure TFrame_Venda_Mestre.ReplicarGrupo1Click(Sender: TObject);    // OK, TESTAR os calculos de impostos
var
  AGrupo, ANomeGrupo : string;
  APoint : TBookmark;
begin
  inherited;
  if Venda_Produto.IsEmpty then
    Exit;
  AGrupo := Venda_Produto.FieldByName('CODPRODUTO_GRUPO').AsString;
  ANomeGrupo := Procura('DESCRICAO', 'PRODUTO_GRUPO', AGrupo);
  if ShowMessageWR('Deseja replicar o grupo "' + IfThen(ANomeGrupo <> '', AGrupo + ' - ' + ANomeGrupo, AGrupo) + '" para todos os produtos desta venda?', MB_ICONQUESTION) <> mrYes then
    Exit;
  Venda_Produto.DisableControls;
  try
    APoint := Venda_Produto.GetBookmark;
    Venda_Produto.First;
    while not Venda_Produto.Eof do
    begin
      if Venda_Produto.FieldByName('CODPRODUTO_GRUPO').AsString <> AGrupo then
      begin
        Venda_Produto.Edit;
        Venda_Produto.FieldByName('CODPRODUTO_GRUPO').AsString := AGrupo;
//        ZerarValoresdeImpostos1Click();    deveria matar os impostos gerados
        {Quando muda o grupo do produto, os impostos devem ser recalculados não?}
        Venda_Produto.Post;   //POST-Calc
      end;
      Venda_Produto.Next;
    end;
  finally
    if not Venda_Produto.IsEmpty and (APoint <> nil) then
      Venda_Produto.GotoBookmark(APoint);
    Venda_Produto.EnableControls;
  end;
end;

procedure TFrame_Venda_Mestre.MenuEmpresasItemClick(Sender: TObject);   // Rotina ok, olhar dentro dela depois
begin                                                         // Quero levar ela para o Mestre CadM ConM
  if TMenuItem(Sender).Parent = PoupTransferirVendaparaEmpresa then
    TransferirVendaParaEmpresa(IntToStr(TMenuItem(Sender).Tag))
  else
    MudarEmpresaAtiva(IntToStr(TMenuItem(Sender).Tag));
end;

procedure TFrame_Venda_Mestre.Impostos1Click(Sender: TObject);  //OK, Testar
begin
  inherited;
  VerificaSePodeAlteraDataSet; // Aqui é problema, mais não sei como resolver, regra dupla na edição da venda por que tem tirar nota fiscal
  if ShowMessageWR('Este procedimento irá sobrescrever todos os valores informados manualmente. Deseja continuar?', MB_ICONQUESTION) <> mrYes then
    Exit;
  AlteraDataSet(Venda_Produto);
  WRCalc.CalcularImpostosProdutoSelecionado;




  // NÃO FUNCIONA MAIS ISSO
  WRCalc.CalcBuild;



  Venda_Produto.Post;   //POST-Calc
  WRCalc.SuperCalc;    // acho que não precisa mais disso, ja faz no post
end;

procedure TFrame_Venda_Mestre.ImpostosComValorbaseodeVenda1Click(Sender: TObject); // Maravilha de gambiarra feita para a Falcon
Var                                                                     { TODO 1 -oWagner -cCalc : Revisar os cálculos e manter o somatório batendo com o total }
  AProdutoTotal:Double;
  Function ValorTotalComImpostos:Real;
  begin
     Result:= RdT(Venda_Produto.FieldByName('TOTAL').AsFloat
             + Venda_Produto.FieldByName('NF_VFRETE').AsFloat
             + Venda_Produto.FieldByName('VOUTRO').AsFloat
             + Venda_Produto.FieldByName('NF_vICMSST').AsFloat
             + Venda_Produto.FieldByName('NF_II_VII').AsFloat
             + Venda_Produto.FieldByName('NF_IPI_VIPI').AsFloat, -2);  // essa regra não fecha, com a realidade

 {   VendaTOTAL.AsFloat        := VendaTOTAL.AsFloat
                                 + VendaSub_Total.AsFloat
                                 - VendaValor_Desc.AsFloat
                                 + VendaNF_VALOR_SEGURO.AsFloat
                                 + VendaValor_Acresc.AsFloat
                                 + VendaNF_VALOR_ICMS_ST.AsFloat
                                 + VendaNF_VALOR_II.AsFloat
                                 + VendaNF_VALOR_IPI.AsFloat;   }

  end;
begin
  inherited;
//  ShowMessage('Função desativada');  // não vai mais funcionar, tem que fazer pelo componente de cálculo
//  Exit;                               // Venda_Produto.FieldByName('VALOR').AsFloat nao pode
  AlteraDataSet(Cadastro);
  DSDisableControls(DSVenda_Produto);
//  Venda_Produto.DisableControls;
  try
    Venda_Produto.First;
    while not Venda_Produto.Eof do
    begin
      { Ajusta o preço do produto para fechar com o valor final }
      AProdutoTotal := RdT(Venda_Produto.FieldByName('TOTAL').AsFloat, -2); {VALOR_ORIGINAL}
      AlteraDataSet(Venda_Produto);
      Venda_Produto.FieldByName('PODE_RECALCULAR_IMPOSTOS').AsString := 'S';
      WRCalc.CalcularImpostosProdutoSelecionado;
      // não vai mais funcionar, tem que fazer pelo componente de cálculo

      Venda_Produto.FieldByName('VALOR').AsFloat := Venda_Produto.FieldByName('VALOR').AsFloat -((Venda_Produto.FieldByName('NF_VFRETE').AsFloat
                                                               + Venda_Produto.FieldByName('VOUTRO').AsFloat
                                                               + Venda_Produto.FieldByName('NF_vICMSST').AsFloat
                                                               + Venda_Produto.FieldByName('NF_II_VII').AsFloat
                                                               + Venda_Produto.FieldByName('NF_IPI_VIPI').AsFloat)/Venda_Produto.FieldByName('QUANT').AsFloat);
      while ValorTotalComImpostos < AProdutoTotal do
      begin
        Venda_Produto.FieldByName('VALOR').AsFloat   := Venda_Produto.FieldByName('VALOR').AsFloat + 0.01;
        WRCalc.CalcularImpostosProdutoSelecionado; //CalculaProduto
        if ValorTotalComImpostos < AProdutoTotal then
        begin
          Venda_Produto.FieldByName('VALOR').AsFloat := Venda_Produto.FieldByName('VALOR').AsFloat - 0.01;
          WRCalc.CalcularImpostosProdutoSelecionado;
          Break;
        end;
      end;
  //    Venda_ProdutoVALOR.AsFloat := Calcula_Imposto.vProduto_Liquido / Venda_ProdutoQUANT.AsFloat;
      if Venda_Produto.State in dsEditModes then
      begin



        WRCalc.CalcBuild;         // nÃO FUNCIONA MAIS ISSO





        Venda_Produto.Post; //POST-Calc
      end;
      Venda_Produto.Next;
    end;
  finally
    DSEnableControls(DSVenda_Produto);
//    Venda_Produto.EnableControls;
  end;
end;

procedure TFrame_Venda_Mestre.InativaVendaAgrupada(ACodigo: string);
var
  QuerX: TFDQuery;

begin
  QuerX := GeraFDQuery(TransaFD);
end;

procedure TFrame_Venda_Mestre.PoupImprimirCdigosdeBarrasClick(Sender: TObject);
begin
  CodigoBarrasGerar(Venda_Produto);
end;

procedure TFrame_Venda_Mestre.Excluirparcelas1Click(Sender: TObject);    // OK Testar
var
  ADataSet: TDataSet;
  AMsg: string;
begin
//  Venda_Financeiro.First;
//  while not Venda_Financeiro.Eof do
//  begin
//    if Venda_Financeiro.FieldByName('STATUS_TEF').AsString = 'Confirmada' then
//    begin
//      ShowMessageWR('Não foi possível excluir pois existem parcelas com recebimento em TEF.');
//      Exit;
//    end;
//    Venda_Financeiro.Next;
//  end;

  VerificaSePodeAlteraDataSet;
  inherited;
  ADataSet := Venda_Financeiro;
  AMsg := 'desta venda';

  if (ADataSet <> nil) and not ADataSet.IsEmpty and (ShowMessageWR('Deseja EXCLUIR todas as parcelas ' + AMsg + '?', MB_ICONQUESTION) = mrYes) then
  begin
    if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0 then
    begin
      ShowMessageWR('Não é possível excluir parcelas de uma venda faturada.');
      Exit;
    end;
    while not ADataSet.IsEmpty do
      ADataSet.Delete;
    UCHist_Cadastro.MensagemHistorico.Add('Todas as Parcelas foram excluídas');
  end;
end;

procedure TFrame_Venda_Mestre.ExcluirparcelasPDVPagamentos;
var
  AMsg: string;
begin
  Venda_Financeiro.First;

//  while not Venda_Financeiro.Eof do
//  begin
//    if Venda_Financeiro.FieldByName('STATUS_TEF').AsString = 'Confirmada' then
//    begin
//      ShowMessageWR('Não foi possível excluir pois existem parcelas com recebimento em TEF.');
//      Exit;
//    end;
//    Venda_Financeiro.Next;
//  end;

  VerificaSePodeAlteraDataSet;
  inherited;
  AMsg := 'desta venda';

  if not Venda_Financeiro.IsEmpty then
  begin
    if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0 then
    begin
      ShowMessageWR('Não é possível excluir parcelas de uma venda faturada.');
      Exit;
    end;
    while not Venda_Financeiro.IsEmpty do
      Venda_Financeiro.Delete;
    UCHist_Cadastro.MensagemHistorico.Add('Todas as Parcelas foram excluídas');
  end;
end;

procedure TFrame_Venda_Mestre.Financeiro1Click(Sender: TObject);  // Testar aberura da tela
var                                                     // Só veirifcar se alguem mecheu no financeiro, e trocou os compoponentes de tela
  AFrmFinanceiro : TFrmFinanceiro;
  procedure InativaComponentes;
  var
    i, j : Integer;
    AComponentGroup, AComponentItem : TdxCustomLayoutItem;
  begin
    with AFrmFinanceiro do
    begin
      GrupoInferior.Enabled              := False;
      Grupo_Consulta.Visible             := False;
      MainLayoutItemCEdit_Saldo.Visible  := False;
      CEdit_Saldo.Visible                := False;
      GrupoBotoesPrincipais.Visible      := False;
      NBItem_Relatorio.Visible           := False;
      NBItem_Relatorio_Contabil.Visible  := False;
      NBItem_Livro_Caixa.Visible         := False;
      NBItem_Planinha_Fluxo.Visible      := False;
      NBItem_Plano_de_Contas.Visible     := False;
      NBItem_Relatorio_Devedores.Visible := False;
      NBItem_Relatorios_Personalizados.Visible := False;

      Agrupar1.Visible                   := False;
      Desagrupar1.Visible                := False;
      Pedido1.Visible                    := False;
      VisualizarResponsvel1.Visible      := False;
      Mudaracordalinha1.Visible          := False;
      AtivarcomemEspera1.Visible         := False;
      DuplicarConta1.Visible             := False;
      Visualizartotaldaseleo1.Visible    := False;
      RecalcularVencimento1.Visible      := False;
      ConciliaoBancria1.Visible          := False;
      for I := 0 to GrupoCabecalho.VisibleCount - 1 do
      begin
        AComponentGroup := GrupoCabecalho.VisibleItems[i];
        if AComponentGroup is TdxLayoutGroup then
        begin
          for j := 0 to TdxLayoutGroup(AComponentGroup).VisibleCount - 1 do
          begin
            AComponentItem := TdxLayoutGroup(AComponentGroup).VisibleItems[j];
             //Desativa todos os Componentes do cabeçaho e deixa somente o Botão para gerar boleto.
            if (AComponentItem is TdxLayoutItem) and ((AComponentItem <> MainLayoutItem20) or (AComponentItem <> MainLayoutItem9)) then
            begin
              TdxLayoutItem(AComponentItem).Enabled := False;
            end;
          end;
        end;
      end;
    end;
  end;

begin
  inherited;
  if Cadastro.FieldByName('CODIGO').AsString = '' then
    Exit;
//  TFrmFinanceiro.AbrirParcela(Self, ACodigo.Codigo, ACodigo.CodPedido, ACodigo.CodEmpresa);    cÓDIGO REPETIDO  DEVE SER ESSA AQUI
  AFrmFinanceiro := TFrmFinanceiro(ConsultaForm(TFrmFinanceiro));
  try
    AFrmFinanceiro.OpenFromVenda       := True;
    AFrmFinanceiro.WrCheckBox1.Checked := True;
    AFrmFinanceiro.WrCheckBox3.Checked := True;

    //A linha 3 do SQL contém os filtros de datas, estes serão substituídos pelo código do pedido
    AFrmFinanceiro.Financeiro.Close;
    AFrmFinanceiro.Financeiro.SelectSQL[3] := 'and (CODPEDIDO = ' + QuotedStr(Cadastro.FieldByName('CODIGO').AsString) + ')';
    AFrmFinanceiro.Financeiro.Open;

    InativaComponentes;
    AFrmFinanceiro.ShowModal;
  finally
    AFrmFinanceiro.Free;
  end;
end;

procedure TFrame_Venda_Mestre.DuplicarProduto1Click(Sender: TObject); //TODO: Não pode Existir,  Essa função é perigosa.
begin                                                       // Tem que ser pelo novo componente, e os cáculos de valores corretos
  inherited;                                                // Produtos com fórmulas vai dar muito errado
//  ShowMessage('Função desativada.');                      // Tem que fazer as fórumlas depois poder copiar, achar a nova posição da ORDEM
//  Exit;

  VerificaSePodeAlteraDataSet;
  if (Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '') then
  begin
    ShowMessage('Não pode duplicar produto, por que ja foi FATURADA');
    Exit;
  end;

  FrameCopiarVendaProdutos(Venda_Produto.FieldByName('CODVENDA').AsString, Venda_Produto.FieldByName('CODIGO').AsInteger, Venda_Produto.FieldByName('CODVENDA').AsString, True);
  Venda_Produto.Refresh;
  WRCalc.SuperCalc;   //CalculaProduto
end;

procedure TFrame_Venda_Mestre.dxStatusBar1Panels1Click(Sender: TObject);
begin
  inherited;
  if not FrmPrincipal.Action_Empresa_Ativa.Enabled then
    Exit;
  MenuEmpresas.PopupOnMouse;
end;

procedure TFrame_Venda_Mestre.EdtNF_VFRETEButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  WRCalc.TransferirRateioParaVenda;
end;

procedure TFrame_Venda_Mestre.EdtValorAcrescimoButtonClick(Sender: TObject; AButtonIndex: Integer); // deve estar no calc
begin
  WRCalc.TransferirAcrescimoParaVenda;
end;

procedure TFrame_Venda_Mestre.PoupTornarOramentoClick(Sender: TObject);   // Aqui deve pedir senha e manter o hist´´orico dessa mudança muito importante
begin                                                       // Criar tabela extra para gerenciar as trocas de estado de venda
  inherited;

end;

procedure TFrame_Venda_Mestre.DadosVeiculo1Click(Sender: TObject);  // Saber onde isso aparece?????
begin
  inherited;
  ShowPanelForm(pnlDadosVeiculo, bsSingle);
end;

procedure TFrame_Venda_Mestre.cxGridDBTableView5DblClick(Sender: TObject);  // olhar isso
begin
  inherited;
  btnConfirmaEndEntrega.Click;
end;

procedure TFrame_Venda_Mestre.cxGridDBTableView3DblClick(Sender: TObject);     //Que função é essa e onde ela é chamada
var                                                                  // Grid de seleção de produto?
  ACod: TCodBarras;
  ARes: string;
begin                                                               // Pelo que eu li, a pessoa coloca 2* e seleciona o item no grid
  inherited;                                                        // Mais n~~ao sei se vai funcionar com as fórmulas, pois no change do campo
  Ocultar(cxGrid3);                                                 // edtCodProdutoÎProduto é colocado 1 na mão, na quantidade de peças
  ARes := '';                                                       // Tem que testar
  ACod := Barras_Trata(edtCodProduto.Text);
  if ACod.Quantidade <> 1 then
    ARes := FloatToStr(ACod.Quantidade) + '*';
  if ACod.Porcentagem <> 0 then
  begin
    if ACod.PorcentagemTipo = cbptAcrescimo then
      ARes := ARes + '+' + FloatToStr(ACod.Porcentagem)
    else
      ARes := ARes + FloatToStr(ACod.Porcentagem);
    ARes := ARes + '.';
  end;
  Application.ProcessMessages;
  edtProdutoDescricao.SetFocusWR;
  Perform(WM_NEXTDLGCTL, 0, 0);
  edtCodProduto.Text := ARes + ConsultaProdutoGrid.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.cxGridViewFinanceiroDblClick(Sender: TObject); // Financeiro não vou olhar
begin
  inherited;
  if Venda_Financeiro.FieldByName('CODIGO').AsString = '' then
    Exit;

  if Venda_Financeiro.FieldByName('NSU').AsString <> '' then
  begin
    lilblNSU.Visible := True;
    lblNSU.Caption := Venda_Financeiro.FieldByName('NSU').AsString;
  end
  else
    lilblNSU.Visible := False;

  if PodeAlterarParcelas then
  begin
    AlteraDataSet(Cadastro);
    AlteraDataSet(Venda_Financeiro);
    GrupoParcelaDados.Enabled         := True;
    LayoutItembtn_wrCancelar.Visible  := True;
    LayoutItembtn_wrConfirmar.Visible := True;
  end else
  begin
    GrupoParcelaDados.Enabled         := False;
    LayoutItembtn_wrCancelar.Visible  := False;
    LayoutItembtn_wrConfirmar.Visible := False;
  end;
  LayoutItembtn_wrFechar.Visible      := True;

  cbxTipo.Enabled := not (Venda_Financeiro.FieldByName('TIPOPAGTO').AsString = 'CRÉDITO');
  ShowPanelForm(PnlParcela, bsSingle, btn_wrFechar);
end;

procedure TFrame_Venda_Mestre.BtnAnexosClick(Sender: TObject);           // OK
begin
  inherited;
  GrupoAnexo.MakeVisible;
end;

procedure TFrame_Venda_Mestre.cxButton9Click(Sender: TObject);     // Isso não pode
begin
  FechaPanelForm(PnlFrenteVerso);
  EdtFrenteVersoValor.Value := 0.0;
  EdtFrenteVersoPorcentagem.Value := 0.0;
end;

procedure TFrame_Venda_Mestre.chkValorOriginalClick(Sender: TObject);
begin
  inherited;
  liedtValorOriginal.Visible        := chkValorOriginal.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_VALOR_ORIGINAL', chkValorOriginal.Checked);
end;

procedure TFrame_Venda_Mestre.chkTabelaPrecoProdutoClick(Sender: TObject);
begin
  inherited;
  licbTabelaProduto.Visible        := chkTabelaPrecoProduto.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_TABELA_PRECO', chkTabelaPrecoProduto.Checked);
end;

procedure TFrame_Venda_Mestre.cxGrid10DBTableView1DblClick(Sender: TObject);  // Onde isso chama
begin
  inherited;
  btnInserirClick(self);
end;

procedure TFrame_Venda_Mestre.cxGrid1DBTableView1DblClick(Sender: TObject);  // Onde isso chama
begin
  inherited;
  Ocultar(cxGrid5);
  VerificaSePodeAlteraDataSet;
  if not Equipamento.IsEmpty then
  begin
    Cadastro.FieldByName('PLACA').AsString := Equipamento.FieldByName('CODIGO').AsString;
    Cadastro.FieldByName('EQUIPAMENTO_DESCRICAO').AsString := Equipamento.FieldByName('DESCRICAO').AsString;
  end;
  EdtEquipamentoÎEquipamentoÎDESCRICAO.SetFocusWR;
end;

procedure TFrame_Venda_Mestre.chkComissaoFuncionarioClick(Sender: TObject);
begin
  inherited;
  GrupoComissaoFuncProduto.Visible        := chkComissaoFuncionario.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_COMISSAO_FUNCIONARIO', chkComissaoFuncionario.Checked);
end;

procedure TFrame_Venda_Mestre.chkComissao_Agencia_CobrarClick(Sender: TObject);
var
  AComissaoParaRatear, AAcrescimoAtualDaVenda, ANovoAcrescimo, AComissaoParaRemover : Double;
begin
  inherited;
  if not (Cadastro.State = dsEdit) then
    Cadastro.Edit;

  AComissaoParaRemover := 0;
  AComissaoParaRatear := (Cadastro.FieldByName('SUB_TOTAL').AsFloat * Cadastro.FieldByName('COMISSAO_AGENCIA').AsFloat/100);
  AAcrescimoAtualDaVenda := Cadastro.FieldByName('VOUTRO').AsFloat;

  if chkComissao_Agencia_Cobrar.Checked then
  begin
    if MessageDlg('Este procedimento adicionará o valor da comissão no acréscimo da venda. Deseja continuar?',
                  mtConfirmation, mbYesNo, 0) <> mrYes then
    begin
      Cadastro.FieldByName('COMISSAO_AGENCIA').AsFloat := 0;
      chkComissao_Agencia_Cobrar.Checked := False;
      Exit;
    end;
    ANovoAcrescimo := AAcrescimoAtualDaVenda + AComissaoParaRatear;
    WRCalc.VendaCompraAlterarVOUTRO(ANovoAcrescimo);
    WRCalc.RecalcularTodosOsProdutos;
    WRCalc.SuperCalc;
  end else
  begin
    AComissaoParaRemover := Cadastro.FieldByName('SUB_TOTAL').AsFloat - Cadastro.FieldByName('SUB_TOTAL').AsFloat / ((100 + Cadastro.FieldByName('COMISSAO_AGENCIA').AsFloat)/100);
    WRCalc.RemoverAcrescimoComissoesProdutos(AComissaoParaRemover);
  end;
end;

procedure TFrame_Venda_Mestre.chkComissao_Agencia_CobrarPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkComissao_Agencia_Cobrar.Checked then
    edtAgenciaÎPessoasÎCOMISSAO.Enabled := False
  else
    edtAgenciaÎPessoasÎCOMISSAO.Enabled := True;
end;

procedure TFrame_Venda_Mestre.chkComissao_Funcionario_CobrarClick(Sender: TObject);
var
  AComissaoParaRatear, AAcrescimoAtualDaVenda, ANovoAcrescimo, AComissaoParaRemover : Double;
begin
  inherited;
  if not (Cadastro.State = dsEdit) then
    Cadastro.Edit;

  AComissaoParaRatear := (Cadastro.FieldByName('SUB_TOTAL').AsFloat * Cadastro.FieldByName('COMISSAO').AsFloat/100);
  AAcrescimoAtualDaVenda := Cadastro.FieldByName('VOUTRO').AsFloat;

  if chkComissao_Funcionario_Cobrar.Checked then
  begin
    if MessageDlg('Este procedimento adicionará o valor da comissão no acréscimo da venda. Deseja continuar?',
                  mtConfirmation, mbYesNo, 0) <> mrYes then
    begin
      Cadastro.FieldByName('COMISSAO').AsFloat := 0;
      chkComissao_Funcionario_Cobrar.Checked := False;
      Exit;
    end;
    ANovoAcrescimo := AAcrescimoAtualDaVenda + AComissaoParaRatear;
    WRCalc.VendaCompraAlterarVOUTRO(ANovoAcrescimo);
    WRCalc.RecalcularTodosOsProdutos;
    WRCalc.SuperCalc;
  end else
  begin
    AComissaoParaRemover := Cadastro.FieldByName('SUB_TOTAL').AsFloat - Cadastro.FieldByName('SUB_TOTAL').AsFloat / ((100 + Cadastro.FieldByName('COMISSAO').AsFloat)/100);
    WRCalc.RemoverAcrescimoComissoesProdutos(AComissaoParaRemover);
  end;
end;

procedure TFrame_Venda_Mestre.chkComissao_Funcionario_CobrarPropertiesChange(
  Sender: TObject);
begin
  inherited;
//  if chkComissao_Funcionario_Cobrar.Checked then
//    edtAtendenteÎPessoasÎCOMISSAO.Enabled := False                   //NAO FAZ SENTIDO ISso aQUI
//  else
//    edtAtendenteÎPessoasÎCOMISSAO.Enabled := True;
end;

procedure TFrame_Venda_Mestre.chkComissao_Representante_CobrarClick(Sender: TObject);
var
  AComissaoParaRatear, AAcrescimoAtualDaVenda, ANovoAcrescimo, AComissaoParaRemover : Double;
begin
  inherited;
  if not (Cadastro.State = dsEdit) then
    Cadastro.Edit;

  AComissaoParaRatear := (Cadastro.FieldByName('SUB_TOTAL').AsFloat * Cadastro.FieldByName('COMISSAO_REPRESENTANTE').AsFloat/100);
  AAcrescimoAtualDaVenda := Cadastro.FieldByName('VOUTRO').AsFloat;

  if chkComissao_Representante_Cobrar.Checked then
  begin
    if MessageDlg('Este procedimento adicionará o valor da comissão no acréscimo da venda. Deseja continuar?',
                  mtConfirmation, mbYesNo, 0) <> mrYes then
    begin
      Cadastro.FieldByName('COMISSAO_REPRESENTANTE').AsFloat := 0;
      chkComissao_Representante_Cobrar.Checked := False;
      Exit;
    end;
    ANovoAcrescimo := AAcrescimoAtualDaVenda + AComissaoParaRatear;
    WRCalc.VendaCompraAlterarVOUTRO(ANovoAcrescimo);
    WRCalc.RecalcularTodosOsProdutos;
    WRCalc.SuperCalc;
  end else
  begin
    AComissaoParaRemover := Cadastro.FieldByName('SUB_TOTAL').AsFloat - Cadastro.FieldByName('SUB_TOTAL').AsFloat / ((100 + Cadastro.FieldByName('COMISSAO_REPRESENTANTE').AsFloat)/100);
    WRCalc.RemoverAcrescimoComissoesProdutos(AComissaoParaRemover);
  end;
end;

procedure TFrame_Venda_Mestre.chkComissao_Representante_CobrarPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkComissao_Representante_Cobrar.Checked then
    edtRepresentanteÎPessoasÎCOMISSAO.Enabled := False
  else
    edtRepresentanteÎPessoasÎCOMISSAO.Enabled := True;
end;

procedure TFrame_Venda_Mestre.chkConfDevolucaoClick(Sender: TObject);
begin
  inherited;
  lichkDevolucao.Visible        := chkConfDevolucao.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_DEVOLUCAO',    chkConfDevolucao.Checked);
end;

procedure TFrame_Venda_Mestre.chkDevolucaoClick(Sender: TObject);
begin
  inherited;
  if chkDevolucao.Checked then
    WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', WRCalcMemoria.DBProduto.FieldByName('QTDADEPECA').AsFloat * -1);
  edtQuant.Style.Color := clSilver;
  edtQTDADePeca.Style.Color  := clWhite;
  if chkDevolucao.Checked then
  begin
    if LiEdtQuant.Visible then
      edtQuant.Style.Color := clRed
    else
      edtQTDADePeca.Style.Color := clRed;
  end else
  begin
    if LiEdtQuant.Visible then
      edtQuant.Style.Color := clSilver
    else
      edtQTDADePeca.Style.Color := clWhite;
  end;
end;

procedure TFrame_Venda_Mestre.chkFolhasClick(Sender: TObject);
begin
  inherited;
  liedFolhas.Visible        := chkFolhas.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_FOLHAS', chkFolhas.Checked);
end;

procedure TFrame_Venda_Mestre.CkAgruparClick(Sender: TObject);
begin
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_AGRUPAR', CkAgrupar.Checked);
end;

procedure TFrame_Venda_Mestre.chkInformacaoes_AdicionaisClick(Sender: TObject);
begin
  inherited;
//  GrupoTabComunicacaoVisual.Visible := chkInformacaoes_Adicionais.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_INFO_ADICIONAIS', chkInformacaoes_Adicionais.Checked);
end;

procedure TFrame_Venda_Mestre.PoupClientesClick(Sender: TObject);
begin
  if EdtResponsavelÎPessoas.Text <> '' then
    CadastroTag_NormalChave(Self, Tag_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
end;

procedure TFrame_Venda_Mestre.PoupCopiarVendacomProdutosClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFrame_Venda_Mestre.Calculartodososimpostos1Click(Sender: TObject);   // OK
begin
  inherited;
  VerificaSePodeAlteraDataSet; //<<<<<<<< primeira linha
  if ShowMessageWR('Deseja Calcular os impostos? Este procedimento irá sobrescrever todos os valores informados manualmente.', MB_ICONQUESTION) <> mrYes then
    Exit;
  {NÃO USAR DISABLECONTROLS!!! Isso faz com que os datasets filhos não atualizem no Calc!!!}
  Venda_Produto.First;
  while not Venda_Produto.Eof do
  begin
    if Venda_Produto.FieldByName('PODE_RECALCULAR_IMPOSTOS').AsString <> 'S' then
    begin
      Venda_Produto.Edit;
      WRCalc.CalcularImpostosProdutoSelecionado; //CalculaProduto
      if Venda_Produto.FieldByName('CODNF_CFOP').AsString = '' then
        Venda_Produto.FieldByName('TEM_TRIBUTACAO_INCORRETA').AsString := 'S';

      Venda_Produto.Post;  //POST-Calc
    end;
    Venda_Produto.Next;
  end;
  WRCalc.CalcBuild;
  WRCalc.SprCopiarFormula;

  Cadastro.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat := 0;
  WRCalc.SuperCalc;

  if Cadastro.FieldByName('SERVICO_ISS_RETIDO').AsFloat = 0 then //Caso vazio fica o padrão de não reter o iss;
    Cadastro.FieldByName('SERVICO_ISS_RETIDO').AsFloat := 2;

  if Cadastro.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 1 then //RETIDO SIM
  begin
    Cadastro.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat:= Cadastro.FieldByName('TOTAL').AsFloat*Perc(Cadastro.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat);
    Cadastro.FieldByName('NF_VALOR_ISS').AsFloat := Cadastro.FieldByName('TOTAL').AsFloat*Perc(Cadastro.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat);
  end;

  if Cadastro.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 2 then  //RETIDO NAO (Calcula ISS Normal)
  begin
    Cadastro.FieldByName('NF_VALOR_ISS').AsFloat:= ds.DataSet.FieldByName('TOTAL').AsFloat*Perc(ds.DataSet.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat);
    Cadastro.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat := 0;
  end;
  WRCalc.SuperCalc;

  PreenchedadosAdicionaisdaNota;
end;

procedure TFrame_Venda_Mestre.ZerarValoresdeImpostos1Click(Sender: TObject);   //TESTAR
begin
  inherited;
  VerificaSePodeAlteraDataSet;  //<<<<<<<< primeira linha
  {NÃO USAR DISABLECONTROLS!!! Isso faz com que os datasets filhos não atualizem no Calc!!!}
  Venda_Produto.First;
  while not Venda_Produto.Eof do
  begin
    AlteraDataSet(Venda_Produto);
//    Aqui se cria um campo ja vai ficar sujeira no banco
    Venda_Produto.FieldByName('VALOR').AsFloat              := Venda_Produto.FieldByName('CALC_VALOR_ORIGINAL').AsFloat;
    Venda_Produto.FieldByName('NF_VBC').AsFloat                := 0.00;
    Venda_Produto.FieldByName('NF_VICMS').AsFloat              := 0.00;
    Venda_Produto.FieldByName('NF_VICMSST').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_PCREDSN').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_VCREDICMSSN').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_PREDBC').AsFloat             := 0.00;
    Venda_Produto.FieldByName('NF_PICMS').AsFloat              := 0.00;
    Venda_Produto.FieldByName('NF_PMVAST').AsFloat             := 0.00;
    Venda_Produto.FieldByName('NF_PREDBCST').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_VBCST').AsFloat              := 0.00;
    Venda_Produto.FieldByName('NF_PICMSST').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_VBCSTRET').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_VICMSSTRET').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_VBCSTDEST').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_VICMSSTDEST').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_IPI_VBC').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_IPI_QUNID').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_IPI_VUNID').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_IPI_PIPI').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_IPI_VIPI').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_II_VBC').AsFloat             := 0.00;
    Venda_Produto.FieldByName('NF_II_VDESPADU').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_II_PII').AsFloat             := 0.00;
    Venda_Produto.FieldByName('NF_II_PIOF').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_II_VII').AsFloat             := 0.00;
    Venda_Produto.FieldByName('NF_II_VIOF').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_PIS_VBC').AsFloat            := 0.00;
    Venda_Produto.FieldByName('NF_PIS_PPIS').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_PIS_VPIS').AsFloat           := 0.00;
    Venda_Produto.FieldByName('NF_PIS_QBCPROD').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_PIS_VALIQPROD').AsFloat      := 0.00;
    Venda_Produto.FieldByName('NF_PISST_VBC').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_PISST_PPIS').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_PISST_VPIS').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_PISST_QBCPROD').AsFloat      := 0.00;
    Venda_Produto.FieldByName('NF_PISST_VALIQPROD').AsFloat    := 0.00;
    Venda_Produto.FieldByName('NF_COFINS_VBC').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_COFINS_PCOFINS').AsFloat     := 0.00;
    Venda_Produto.FieldByName('NF_COFINS_VBCPROD').AsFloat     := 0.00;
    Venda_Produto.FieldByName('NF_COFINS_VALIQPROD').AsFloat   := 0.00;
    Venda_Produto.FieldByName('NF_COFINS_VCOFINS').AsFloat     := 0.00;
    Venda_Produto.FieldByName('NF_COFINSST_VBC').AsFloat       := 0.00;
    Venda_Produto.FieldByName('NF_COFINSST_PCOFINS').AsFloat   := 0.00;
    Venda_Produto.FieldByName('NF_COFINSST_QBCPROD').AsFloat   := 0.00;
    Venda_Produto.FieldByName('NF_COFINSST_VALIQPROD').AsFloat := 0.00;
    Venda_Produto.FieldByName('NF_COFINSST_VCOFINS').AsFloat   := 0.00;
    Venda_Produto.FieldByName('NF_ISSQN_VBC').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_ISSQN_VALIQ').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_ISSQN_VISSQN').AsFloat       := 0.00;
    Venda_Produto.FieldByName('NF_VALORADUANEIRA').AsFloat     := 0.00;
    Venda_Produto.FieldByName('NF_DESPADUANEIRA').AsFloat      := 0.00;
    Venda_Produto.FieldByName('CODNF_CST').AsString            := '';
    Venda_Produto.FieldByName('CODNF_CFOP').AsString        := '';
    Venda_Produto.FieldByName('NF_IPI_ST').AsString            := '';
    Venda_Produto.FieldByName('NF_PIS_ST').AsString            := '';
    Venda_Produto.FieldByName('NF_COFINS_ST').AsString         := '';
    Venda_Produto.FieldByName('NF_VBCUFDEST').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_PFCUFDEST').AsFloat          := 0.00;
    Venda_Produto.FieldByName('NF_PICMSUFDEST').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_PICMSINTER').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_PICMSINTERPART').AsFloat     := 0.00;
    Venda_Produto.FieldByName('NF_VFCPUFDEST').AsFloat         := 0.00;
    Venda_Produto.FieldByName('NF_VICMSUFDEST').AsFloat        := 0.00;
    Venda_Produto.FieldByName('NF_VICMSUFREMET').AsFloat       := 0.00;
    Venda_Produto.FieldByName('NF_IPI_CENQ').AsFloat           := 0.00;

    // NÃO FUNCIONA MAIS ISSO
//    WRCalc.CalcBuild;


    Venda_Produto.Post;    //POST-Calc
    Venda_Produto.Next;
  end;
end;

procedure TFrame_Venda_Mestre.btnParcelasClick(Sender: TObject);   // não vou olhar, financeiro

  function CadastraPlanoContas(ATitulo : string): string;
  var
    QuerX : TFDQuery;
    AIndices : TStringDynArray;
    i, AMaxIndice : Integer;
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      if RightStr(ATitulo, 1) = '.' then
        Delete(ATitulo, Length(ATitulo), 1);
      AIndices := SplitString(ATitulo, '.');

      //Determina o próximo índice a ser usado
      QuerX.SQL.Text := 'select max(INDICE' + IntToStr(High(AIndices) + 2) + ') ' +
                        'from PLANOCONTAS ' +
                        'where (CODIGO like :Cod)';
      QuerX.Params[0].AsString := ATitulo + '.%';
      QuerX.Open;
      AMaxIndice := QuerX.Fields[0].AsInteger + 1;
      QuerX.Close;

      //Cadastra o novo Plano de Contas
      QuerX.SQL.Text := 'insert into PLANOCONTAS (CODIGO, DESCRICAO, INDICE1, INDICE2, INDICE3, INDICE4, ATIVO, TIPO) ' +
                        'values (:CODIGO, :DESCRICAO, :INDICE1, :INDICE2, :INDICE3, :INDICE4, :ATIVO, :TIPO)';
      QuerX.ParamByName('CODIGO').AsString    := ATitulo + '.' + IntToStr(AMaxIndice);
      QuerX.ParamByName('ATIVO').AsString     := 'S';
      QuerX.ParamByName('TIPO').AsString      := 'A';
      QuerX.ParamByName('DESCRICAO').AsString := 'VENDA - ' + Procura('RAZAOSOCIAL', 'PESSOAS', Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);
      for I := Low(AIndices) to High(AIndices) do
        QuerX.ParamByName('INDICE' + IntToStr(i + 1)).AsString := AIndices[i];
      QuerX.ParamByName('INDICE' + IntToStr(High(AIndices) + 2)).AsInteger := AMaxIndice;
      Result := QuerX.ParamByName('CODIGO').AsString;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
  end;

var
  I, D, ADiaDoMes : Integer;
  Aux, Entrada, ACodEmpresa: String;
  Vetor_Dias: Array[1..255] of Real;
  //Variáveis de controle
  AQuantidadeParcelas : Integer;
  AIntervaloMensal : Boolean;
  ACondicaoPagto, ACodCondicaoPagto, ACodConta, ATPSemDTPagto : string;
  AValorTotal, AValorEntrada, APercEntrada : Double;
  ADataAtual, AData : TDateTime;
  AQuantParcelasFinanceiro, ACodContaPadrao : Integer;
  AParcelasFinanceiroEVenda : Integer;
begin
  inherited;
  if not PodeEditarVenda then
    Exit;
  VerificaSePodeAlteraDataSet;
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'PARCELAS');
  ADataAtual := DataHoraSys;
//  Venda_Financeiro.DisableControls;
  while not Venda_Financeiro.IsEmpty do
    Venda_Financeiro.Delete;
  try
    if Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger = 0 then
    begin
      AQuantidadeParcelas := 1;
      Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger := 1;
    end else
      AQuantidadeParcelas := Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger;

    //AQuantidadeParcelas := IfThen(Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger = 0, 1, Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger);
    if (Cadastro.FieldByName('CREDITO').AsFloat > 0) then
    begin
      if (Cadastro.FieldByName('CREDITO').AsFloat < Cadastro.FieldByName('TOTAL').AsFloat) {and (Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger = 1)} then
      begin
        ShowMessageWR('Será adicionado mais uma parcela referente ao crédito');
        AQuantidadeParcelas := AQuantidadeParcelas + 1;    //aqui é somente para quando for avista(1 parcela)
        Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger :=  Cadastro.FieldByName('QUANTIDADE_PARCELAS').AsInteger + 1;
        AValorTotal     := Cadastro.FieldByName('TOTAL').AsFloat - Cadastro.FieldByName('CREDITO').AsFloat;
      end;
    end else
      AValorTotal       := Cadastro.FieldByName('TOTAL').AsFloat;
    if edtCondicaoPagtoÎCondicaoPagto.Text = '' then
      Cadastro.FieldByName('CODCONDICAOPAGTO').AsString:='1';
    ACodCondicaoPagto   := edtCondicaoPagtoÎCondicaoPagto.Text;
    AIntervaloMensal    := chkIntervalo_Mensal.Checked;
    ACondicaoPagto      := edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO.Text;
    ACodConta           := SpnCaixa.Text;
    if ACodCondicaoPagto <> '' then
    begin
      Entrada      := Procura('ENTRADA', 'CONDICAOPAGTO', ACodCondicaoPagto);
      APercEntrada := StrToIntDef(Procura('PERC_ENTRADA', 'CONDICAOPAGTO', ACodCondicaoPagto), 0) / 100;
    end else
    begin
      APercEntrada := 0;
    end;
    /////////////////////// codigo de pagamento por descricao ou digitado direto //////////////
    if ((ACodCondicaoPagto = '') or (Procura('TIPO', 'CONDICAOPAGTO', ACodCondicaoPagto) = '0')) AND ((Cadastro.FieldByName('DIA_INTERVALO').AsInteger = 0) and not AIntervaloMensal) then
    begin
      D := 1;
      Aux := '0';
      for I := 1 to Length(ACondicaoPagto) do
        if (ACondicaoPagto[I] = '/') or (Length(ACondicaoPagto) = I) then
        begin
          if Length(ACondicaoPagto) = I then
            if VerificaInteiro(ACondicaoPagto[I]) then
              Aux := Aux + ACondicaoPagto[I];
          Vetor_Dias[D] := StrToInt(Aux);
          D := D + 1;
          Aux := '0';
        end
        else If VerificaInteiro(ACondicaoPagto[I]) then
          Aux := Aux + ACondicaoPagto[I];
    end
    else
    ////////////////////////////////////////////////////////////////////////////////
    if (Cadastro.FieldByName('DIA_INTERVALO').AsInteger <> 0)and not AIntervaloMensal then
    begin
      for I := 1 to AQuantidadeParcelas do
      begin
        if (Entrada = 'S') then
        begin
          if (I = 1) then
            Vetor_Dias[I] := 0
          else
            Vetor_Dias[I] := Cadastro.FieldByName('DIA_INTERVALO').AsInteger * (I - 1);
        end else
          Vetor_Dias[I] := Cadastro.FieldByName('DIA_INTERVALO').AsInteger * I;
      end;
    end
    else if AIntervaloMensal then
    begin
      ADiaDoMes := StrToIntDef(Procura('CONDICAOPAGTO_DIA_PROXIMO_MES', 'PESSOAS', Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString), 0);
      AData := Date;
      for I := 1 to AQuantidadeParcelas do
      begin
        if (Entrada = 'S') then // se entrada recebida?
        begin
          if I = 1 then
            Vetor_Dias[I] := 0
          else
            Vetor_Dias[I] := SysUtils.IncMonth(AData, I - 1) - AData;
        end else
          Vetor_Dias[I] := SysUtils.IncMonth(AData, I) - AData;
        if (Vetor_Dias[I] > 0) and (ADiaDoMes > 0) then
          Vetor_Dias[I] := Vetor_Dias[I] - DayOf(AData) + ADiaDoMes;
      end;
    end;

    if (Vetor_Dias[1] = 0) and (APercEntrada > 0) then
      AValorEntrada := AValorTotal * APercEntrada
    else if (Cadastro.FieldByName('CREDITO').AsFloat > 0) then
    begin
      AValorEntrada := Cadastro.FieldByName('CREDITO').AsFloat;    // Aqui decide o Qaunto do Crédito vai ser utilizado
//      AValorTotal
    end else
      AValorEntrada := 0;

    /////////////////////// COLOCA NO FINANCEIRO ///////////////////////
    Aux := '';
    for I := 1 to AQuantidadeParcelas do
    begin
      Venda_Financeiro.Insert;
      Venda_Financeiro.FieldByName('CODVENDA').Value    := Cadastro.FieldByName('CODIGO').Value;
      Venda_Financeiro.FieldByName('CODIGO').AsInteger  := I;
      Venda_Financeiro.FieldByName('PARCELA').AsInteger := I;
      Venda_Financeiro.FieldByName('CODCONDICAOPAGTO').AsString := ACodCondicaoPagto;
      {O tamanho do campo CONDICAOPAGTO está diferente em cada tabela. Na venda está 100, no venda_financeiro está 30 e
       no Financeiro está 50!!! Aqui foi decidido em dar um crop no texto e manter apenas os 30 primeiros caracteres
       pois no cadastro da condição de pagamento também está 30, então não há como ter uma parcela com nome da condição
       de pagamento menor do que no cadastro}
      Venda_Financeiro.FieldByName('CONDICAOPAGTO').AsString                 := LeftStr(ACondicaoPagto, Venda_Financeiro.FieldByName('CONDICAOPAGTO').Size);
      Venda_Financeiro.FieldByName('CONTATOS').AsString                      := Cadastro.FieldByName('CONTATO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
      Venda_Financeiro.FieldByName('RAZAOSOCIAL').AsString                   := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
      Venda_Financeiro.FieldByName('DOCUMENTO').AsString                     := GetDocumentoParcelas(I+AParcelasFinanceiroEVenda, AQuantidadeParcelas+AParcelasFinanceiroEVenda);

      Venda_Financeiro.FieldByName('STATUS').AsString                      := 'ATIVO';

      Venda_Financeiro.FieldByName('CODPLANOCONTAS').AsString                := Procura('CODPLANOCONTAS', 'CONDICAOPAGTO', ACodCondicaoPagto);
      if Venda_Financeiro.FieldByName('CODPLANOCONTAS').AsString = ''  then
        Venda_Financeiro.FieldByName('CODPLANOCONTAS').AsString              := QuerVenda_Tipo.FieldByName('CODPLANOCONTAS').AsString;


      ////////// parte de carteira automatica ///////////////////
      Venda_Financeiro.FieldByName('TipoPagto').AsString    := Procura('TIPOPAGTO', 'CONDICAOPAGTO', ACodCondicaoPagto);

      ACodContaPadrao := StrToIntDef(ProcuraField('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Venda_Financeiro.FieldByName('TIPOPAGTO').AsString]), 0);
      if ACodContaPadrao <> 0 then
        Venda_Financeiro.FieldByName('CODCONTA').AsInteger  := ACodContaPadrao
      else
        Venda_Financeiro.FieldByName('CODCONTA').AsString   := ACodConta;

      if Venda_Financeiro.FieldByName('TIPOPAGTO').AsString = '' then
        Venda_Financeiro.FieldByName('TIPOPAGTO').AsString  := 'DINHEIRO';
      Venda_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
      Venda_Financeiro.FieldByName('EMISSAO').AsDateTime    := ADataAtual;
      Venda_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual;
      Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;
      if (i > 1) or (Entrada = 'N') then
      begin
        Venda_Financeiro.FieldByName('TIPO').AsString       := 'A RECEBER';
        Venda_Financeiro.FieldByName('VENCTO').AsDateTime   := ADataAtual + (Vetor_Dias[I]);
        Venda_Financeiro.FieldByName('DATAPAGTO').Clear;
      end;
      if (Entrada = 'T') then
      begin
        Venda_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
        Venda_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual + (Vetor_Dias[I]);
        Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;
      end;

      if (AValorEntrada > 0) then
      begin
        Venda_Financeiro.FieldByName('VALOR').AsFloat := RdT(AValorEntrada, -2);
        AQuantidadeParcelas := AQuantidadeParcelas - 1;
        AValorEntrada       := 0;
        if (Cadastro.FieldByName('CREDITO').AsFloat > 0) then
        begin
          Venda_Financeiro.FieldByName('TIPOPAGTO').AsString   := 'CRÉDITO';
          Venda_Financeiro.FieldByName('TIPO').AsString        := 'PAGA';
          Venda_Financeiro.FieldByName('STATUS').AsString      := 'ATIVO*';
          Venda_Financeiro.FieldByName('HISTORICO').AsString   := 'BAIXA DE CREDITO';
          Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;
          Venda_Financeiro.FieldByName('VENCTO').AsDateTime    := ADataAtual; // + (Vetor_Dias[I - 1])
        end else
          AValorTotal         := AValorTotal - AValorEntrada;
      end else
        Venda_Financeiro.FieldByName('VALOR').AsFloat := RdT((AValorTotal / AQuantidadeParcelas) , -2);

      // Se for uma previsão, fatura como A RECEBER e tipo ATIVO PREVISAO
      if Cadastro.FieldByName('FATURA_PREVISAO').AsString = 'S' then
      begin
        Venda_Financeiro.FieldByName('LANCAMENTO_FUTURO').AsString:= 'S';
        Venda_Financeiro.FieldByName('STATUS').AsString           := 'ATIVO';
        Venda_Financeiro.FieldByName('TIPO').AsString             := 'A RECEBER';
        Venda_Financeiro.FieldByName('HISTORICO').AsString        := 'Previsão de Recebimento.';
      end;

      // Se no cadastro for TEF obrigatório, tem que registrar 'S' ou 'N' para cobrar no PDV.
      Venda_Financeiro.FieldByName('EXIGE_TEF').AsString := ProcuraField('TEM_TEF', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Venda_Financeiro.FieldByName('TIPOPAGTO').AsString]);
      Venda_Financeiro.FieldByName('NF_TIPO_PAGTO').AsString := ProcuraField('NF_TIPO_PAGTO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Venda_Financeiro.FieldByName('TIPOPAGTO').AsString]);
     (* if (Venda_Financeiro.FieldByName('TIPO').AsString <> 'RECEBIDA'){ or (
         (Copy(Venda_Financeiro.FieldByName('TIPOPAGTO').AsString, 1, 6) = 'CHEQUE') or
         (Copy(Venda_Financeiro.FieldByName('TIPOPAGTO').AsString, 1, 6) = 'CARTÃO')) }then
      begin
        Venda_Financeiro.FieldByName('VENCTO').AsDateTime := ADataAtual + (Vetor_Dias[I]);
      end else
        Venda_Financeiro.FieldByName('VENCTO').AsDateTime := ADataAtual;  *)

   {   //Previsão
      if (Venda_Financeiro.FieldByName('TIPOPAGTO').AsString <> 'CRÉDITO') and
         (ProcuraField('PREVISAO', 'VENDA_TIPO', ['DESCRICAO'], [Cadastro.FieldByName('VENDA_TIPO').AsString]) = 'S') then
      begin
        Venda_Financeiro.FieldByName('STATUS').AsString  := 'ATIVO PREVISAO';
        Venda_Financeiro.FieldByName('PREVISAO').AsFloat := Venda_Financeiro.FieldByName('VALOR').AsFloat;
      end;   }
      Venda_Financeiro.Post;
    end;
    AjustaUltimaParcela;
  finally
//    Venda_Financeiro.EnableControls;
  end;
  Venda_Financeiro.Refresh;   // Atualiza Left Joins
end;

procedure TFrame_Venda_Mestre.AdicionaParcela;
var
 I, ACodContaPadrao, ACodConta, AParcelasFinanceiroEVenda :integer;
 ADataAtual, AData : TDateTime;
 QuerX: TFDQuery;

begin
    /////////////////////// COLOCA NO FINANCEIRO ///////////////////////
    ///
  QuerX := GeraFDQuery;
//  QuerX.SQL.Text := 'select * from financeiro f where f.
  try
    I := Venda_Financeiro.RecordCount + 1;

    ADataAtual := DataHoraSys;

      Venda_Financeiro.Insert;
      Venda_Financeiro.FieldByName('CODVENDA').Value    := Cadastro.FieldByName('CODIGO').Value;
      Venda_Financeiro.FieldByName('CODIGO').AsInteger  := I;
      Venda_Financeiro.FieldByName('PARCELA').AsInteger := I;
      Venda_Financeiro.FieldByName('CONTATOS').AsString                      := Cadastro.FieldByName('CONTATO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
      Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
      Venda_Financeiro.FieldByName('RAZAOSOCIAL').AsString                   := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
      Venda_Financeiro.FieldByName('DOCUMENTO').AsString                     := 'Os' + Venda_Financeiro.FieldByName('CODVENDA').AsString + ' - ' + IntToStr(I);
      Venda_Financeiro.FieldByName('STATUS').AsString                        := 'ATIVO';
      Venda_Financeiro.FieldByName('CODPLANOCONTAS').AsString                := QuerVenda_Tipo.FieldByName('CODPLANOCONTAS').AsString;


      ////////// parte de carteira automatica ///////////////////

      ACodContaPadrao := StrToIntDef(ProcuraField('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', ['DESCRICAO'], [Venda_Financeiro.FieldByName('TIPOPAGTO').AsString]), 0);
      if ACodContaPadrao <> 0 then
        Venda_Financeiro.FieldByName('CODCONTA').AsInteger  := ACodContaPadrao
      else
        Venda_Financeiro.FieldByName('CODCONTA').AsString   := '1';

      if Venda_Financeiro.FieldByName('TIPOPAGTO').AsString = '' then
        Venda_Financeiro.FieldByName('TIPOPAGTO').AsString  := 'DINHEIRO';
      Venda_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
      Venda_Financeiro.FieldByName('EMISSAO').AsDateTime    := ADataAtual;
      Venda_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual;
      Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;

      Venda_Financeiro.FieldByName('TIPO').AsString         := 'RECEBIDA';
      Venda_Financeiro.FieldByName('VENCTO').AsDateTime     := ADataAtual;
      Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime  := ADataAtual;

      Venda_Financeiro.FieldByName('GERADO_DO_FINANCEIRO').AsString := 'S';

      Venda_Financeiro.FieldByName('VALOR').AsFloat := 2;

      Venda_Financeiro.FieldByName('TIPOPAGTO').AsString   := 'CRÉDITO';
      Venda_Financeiro.FieldByName('TIPO').AsString        := 'RECEBIDA';
      Venda_Financeiro.FieldByName('STATUS').AsString      := 'ATIVO*';
      Venda_Financeiro.FieldByName('HISTORICO').AsString   := 'BAIXA DE CREDITO';
      Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime := ADataAtual;
      Venda_Financeiro.FieldByName('VENCTO').AsDateTime    := ADataAtual; // + (Vetor_Dias[I - 1])

//      AValorTotal         := AValorTotal - AValorEntrada;

//      Venda_Financeiro.FieldByName('VALOR').AsFloat := RdT((AValorTotal / AQuantidadeParcelas) , -2);
      Venda_Financeiro.Post;

    AjustaUltimaParcela;
  finally
//    Venda_Financeiro.EnableControls;
  end;
  Venda_Financeiro.Refresh;   // Atualiza Left Joins
end;

procedure TFrame_Venda_Mestre.btn_wrCancelarClick(Sender: TObject);   // ok
begin
  inherited;
  Venda_Financeiro.Cancel;
  FechaPanelForm(PnlParcela);
end;

procedure TFrame_Venda_Mestre.btn_wrConfirmarClick(Sender: TObject);  //ok
begin
  inherited;
  if Venda_Financeiro.State in [dsEdit, dsInsert] then
    Venda_Financeiro.Post;
  AjustaUltimaParcela;

  Venda_Financeiro.Refresh;   // Atualiza Left Joins
  FechaPanelForm(PnlParcela);
end;

procedure TFrame_Venda_Mestre.btn_wrFecharClick(Sender: TObject);    //ok
begin
  inherited;
  FechaPanelForm(PnlParcela);
end;

procedure TFrame_Venda_Mestre.btn_wrReciboClick(Sender: TObject);  // Testar, acho que esta OK, se mandar Só Dataset, posso ter uma unit com todas as chamadas estranhas do sistema
begin
  inherited;
  with TFrmRecibo.Create(nil) do
  try
    //Manter DS_Financeiro.DataSet, pois o dataset varia
    EdtNumero.Text     := DS_Financeiro.DataSet.FieldByName('DOCUMENTO').AsString;
    edtValor.Value     := DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat;
    if DS_Financeiro.DataSet.FindField('NOTAFISCAL') <> nil then
      edtNotaFiscal.Text := DS_Financeiro.DataSet.FieldByName('NOTAFISCAL').AsString;
    if MatchStr(DS_Financeiro.DataSet.FieldByName('TIPO').AsString, ['A RECEBER', 'RECEBIDA']) then
    begin
      //Pagante = Cliente
      PagCbTipo.ItemIndex := 2;
      PagCbTipoPropertiesChange(nil);
      EdtPaganteÎPessoasÎRAZAOSOCIAL.Text := DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString;

      //Recebente = Empresa
      RecCbTipo.ItemIndex := 1; //Empresa
      RecCbTipoPropertiesChange(nil);
    end
    else if MatchStr(DS_Financeiro.DataSet.FieldByName('TIPO').AsString, ['A PAGAR', 'PAGA']) then
    begin
      //Pagante = Empresa
      PagCbTipo.ItemIndex := 1;
      PagCbTipoPropertiesChange(nil);

      //Recebente = Cliente
      RecCbTipo.ItemIndex := 2;
      RecCbTipoPropertiesChange(nil);
      EdtRecebenteÎPessoasÎRAZAOSOCIAL.Text := DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString;
    end;
    EdtReferente.Text := 'Documento: ' + DS_Financeiro.DataSet.FieldByName('DOCUMENTO').AsString + '    ' +
                         'Emissão ' + DS_Financeiro.DataSet.FieldByName('EMISSAO').AsString + '    ' +
                         'Vencimento: ' + DS_Financeiro.DataSet.FieldByName('VENCTO').AsString + '    ' +
                         'Valor: ' + FormatFloat(DecimalFinanceiro, DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat);
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrame_Venda_Mestre.btnFecharClick(Sender: TObject); //OK
begin
  inherited;
  FechaPanelForm(pnlPessoaContato);
end;

procedure TFrame_Venda_Mestre.btnFecharPnlObservacaoVenda1Click(Sender: TObject);   // OK
begin
  inherited;
  edtObeservacao.Tag := 0;    /// A tAG MAÇDITA SERVE PARA O F8 DA TELA, ENTÃO TA SUCEGADO
  Ocultar(PnlObservacaoVenda);
end;

procedure TFrame_Venda_Mestre.btnInserirClick(Sender: TObject);  // Testar
begin
  inherited;
  if not Pessoas_Contato.IsEmpty then
    Cadastro.FieldByName('CONTATO').AsString := Pessoas_Contato.FieldByName('CONTATO').AsString + '/ ' + Pessoas_Contato.FieldByName('DESCRICAO').AsString;
  FechaPanelForm(pnlPessoaContato);
  edtResponsavelÎPessoasÎCONTATO.SetFocusWR;
end;

procedure TFrame_Venda_Mestre.btnProducaoClick(Sender: TdxTileControlItem);    // Testar, ne olhei, estou preocupado com a interação do código com outra tela
begin
   menuProducao.PopupOnMouse;
end;

procedure TFrame_Venda_Mestre.btnProdutoTabelaPrecoClick(Sender: TObject); // Fora do Padrão, ou colocar todos os grid assim ou desfazer para grid normal
begin
  inherited;
  TFrmProduto_Preco.Abrir(TForm(Self.Owner), FFrmProdutoPreco, Produto_Preco, edtQuant);  // Isso não ta no padrão
end;

procedure TFrame_Venda_Mestre.btnMostrarSprClick(Sender: TObject);
begin
  inherited;
  pnlSprMemoria.Visible := not pnlSprMemoria.Visible;
  if pnlSprMemoria.Visible then
    MostrarGridAbaixoDe(pnlSprMemoria, edtCodProduto);
end;

procedure TFrame_Venda_Mestre.btnMudarPrazoClick(Sender: TObject);   //testar
begin
  inherited;
  VerificaSePodeAlteraDataSet;   // TODO: Essa ação é crítica de deve gerar uma linha de Histórico Bonita de mudança no prazo de entrega
  Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime := IncDay(now, Trunc(edtQtdDias.Value));
end;

procedure TFrame_Venda_Mestre.btnTabelaPrecoClick(Sender: TObject); // Ok, testar
begin
  inherited;
  CadastroTag_NormalChaveMakeVisible(Self, TAG_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value, 'GrupoTabelaDePrecos');
end;

procedure TFrame_Venda_Mestre.btnVerProducaoClick(Sender: TObject);
begin
  inherited;
  if FrmPrincipal.Action_Producao_OS.Enabled then
  begin
    TFrame_ConsuProducao_Mestre.Abrir(Cadastro.FieldByName('CODIGO').AsString);
    Cadastro.Refresh;
  end else
  begin
    ShowMessage('Você não tem permissão para visualizar a produção');
    Exit;
  end;
end;

procedure TFrame_Venda_Mestre.btnNovoClick(Sender: TdxTileControlItem);    // Zerar o código aqui , testar
var
  QuerX: TFDQuery;
  ACodTipo: Integer;
  ATipo: string;
begin
  if cbxTipo_Venda.Properties.ListSource.DataSet.IsEmpty then    // DEVE APARECER A TELA, A AÇÃO PARA O CLIENTE RESILVER ESSE PROBLEMA
  begin
    ShowMessageWR('Todos os Tipos de Vendas estão bloqueados nas permissões de usuários. ' +
                  'Para cadastrar uma nova venda, é necessário ter no mínimo um Tipo de Venda liberado.');
    Exit;
  end;
  inherited;



  Cadastro.FieldByName('OBSERVACAO_SERVICO').AsString    := Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString;// TConfig.ReadString('VENDA_SERVICO_PRODUTO_PADRAO');
  Cadastro.FieldByName('NFE_IMPRIMIR_QTDEPECA').AsString := BoolToStrDB(TConfig.ReadBoolean('NFE_IMPRIMIR_QTDEPECA'));
  Cadastro.FieldByName('NF_CRT_EMIT').AsString           := UpperCase(Empresa.FieldByName('CRT').AsString);
  if TConfig.ReadBoolean('NFE_UTILIZAR_CODFABRICA_NA_IMPRESSAO') then
    Cadastro.FieldByName('NF_UTILIZAR_CODFABRICA_NA_IMPR').AsString:= 'S';
  if TConfig.ReadBoolean('VENDA_SEPARA_ORCAMENTO_VENDA') then
    Cadastro.FieldByName('IS_ORCAMENTO').AsString := 'S';
  if TConfig.ReadBoolean('NFE_SOMA_PESO') then
    Cadastro.FieldByName('PODE_SOMAR_PESO_NOTAFISCAL').AsString := 'S';

  LimparCampos;
  TabProdutos.MakeVisible;

//  FControleWR.FindComponente(EdtAtendenteÎPessoas).ValorComponentePessoa := TPessoaRetorno.Create(Usuario.CodigoFuncionario, 'FUN', Usuario.SequenciaFuncionario);
  if TConfig.ReadString('VENDA_PESSOA_RESPONSAVEL_CODIGO') <> '' then
  begin
    Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := TConfig.ReadString('VENDA_PESSOA_RESPONSAVEL_TIPO');
    Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := TConfig.ReadInteger('VENDA_PESSOA_RESPONSAVEL_SEQUENCIA');
    Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := TConfig.ReadString('VENDA_PESSOA_RESPONSAVEL_CODIGO');
    edtCodProduto.SetFocusWR;
  end else
    EdtResponsavelÎPessoas.SetFocusWR;
end;

procedure TFrame_Venda_Mestre.BtnPnlChequeFecharClick(Sender: TObject);  // Testar
begin
  inherited;
  PessoasChequesAutorizados.Close;
  FechaPanelForm(PnlCheque);

end;

procedure TFrame_Venda_Mestre.PoupAutoPreenchercdigodebarrasClick(Sender: TObject);  // Deveria enviar o nome dos itens pois muda com o tempo.
var                                                                     // Se a pessoa que colocar etiqueta nos itens isso é importante
  APoint : TBookmark;
begin
  inherited;
  if Venda_Produto.IsEmpty or (ShowMessageWR('Este procedimento irá preencher automaticamente o código de barras ' +
     'de todos os produtos que estiverem em branco.' + sLineBreak + 'Deseja continuar?', MB_ICONQUESTION) <> mrYes) then
    Exit;
  VerificaSePodeAlteraDataSet;
  APoint := Venda_Produto.GetBookmark;
  Venda_Produto.DisableControls;
  try
    Venda_Produto.First;
    while not Venda_Produto.Eof do
    begin
      if Venda_Produto.FieldByName('CODFABRICA').AsString = '' then
      begin
        Venda_Produto.Edit;
        Venda_Produto.FieldByName('CODFABRICA').AsString := Venda_Produto.FieldByName('CODPRODUTO').AsString;   // Enviar tudo da venda
        Venda_Produto.Post;    //POST-Calc                                                                                 // Veirficr todas as chamadas e padronizar
      end;
      Venda_Produto.Next;
    end;
  finally
    Venda_Produto.GotoBookmark(APoint);
    Venda_Produto.EnableControls;
  end;
end;

procedure TFrame_Venda_Mestre.btnRemoverProdutoClick(Sender: TObject);      // Não pode ter acesso por fora
var                                                               // USar a query de tela
  QuerX: TFDQuery;                                                // Essas ações devem estar em botões na tela como cancelar a produção em outro lugar
  AMsg: string;
begin

  inherited;
  if Venda_Produto.IsEmpty then
    Exit;

  (*//Esta query aqui fica fora da transação da venda para validar os dados do produto sem a necessidade
  //de carregar novamente a venda para ter as informações atuais do produto
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select VP.FATURADO, VP.CODPRODUCAO, PR.SITUACAO ' +
                      'from VENDA_PRODUTO VP ' +
                      'left join PRODUCAO PR on (VP.CODPRODUCAO = PR.CODIGO) ' +
                      'where (VP.CODIGO = :Codigo) ' +
                      '      and (VP.CODVENDA = :CodVenda)';
    QuerX.ParamByName('Codigo').Value   := Venda_Produto.FieldByName('CODIGO').AsVariant;
    QuerX.ParamByName('CodVenda').Value := Venda_Produto.FieldByName('CODVENDA').AsVariant;
    QuerX.Open;

    if QuerX.FieldByName('FATURADO').AsInteger = 1 then
    begin
      ShowMessageWR('Este produto já está faturado e não pode ser removido!', MB_ICONWARNING);
      Exit;
    end;
 {   if not QuerX.FieldByName('CODPRODUCAO').IsNull and
       not (ProducaoSituacaoStrToEnum(QuerX.FieldByName('SITUACAO').AsString) in [psCancelado, psRecusado]) then
    begin
      AMsg := 'Este item foi encaminhado a produção e não pode ser excluído.' + sLineBreak;
      AMsg := AMsg + 'Para remover este item, você deve acessar a Produção e Cancelar ou Recursar ';
      if pktOrdemProducao.Ativo then
        AMsg := AMsg + 'Ordem de Producao relativa '
      else
        AMsg := AMsg + 'todas as Ordens de Serviço relativas ';
      AMsg := AMsg + 'a este Produto.' + LineBreakWR(2);
      AMsg := AMsg + 'Você pode acompanhar a situação da produção através da coluna "Produção" dos produtos da Venda.';
      ShowMessageWR(AMsg, MB_ICONWARNING);
      Exit;
    end;   }
  finally
    QuerX.Free;
  end;  *)

  if Venda_Produto.FieldByName('EM_PRODUCAO').AsString = 'S' then
  begin
    ShowMessage('Item em produção, favor cancelar antes de remover da venda');
    Exit;
  end;

  if Venda_Produto.FieldByName('FATURADO').AsInteger = 1 then
  begin
    ShowMessageWR('Este produto já está faturado e não pode ser removido!', MB_ICONWARNING);
    Exit;
  end;

  QuerX := GeraFDQuery(TransaFD);
  try
    //Desvincula o item da Produção caso exista
    QuerX.SQL.Text := 'update PRODUCAO set CODVENDA_PRODUTO = null ' +
                      'where (CODVENDA = :CodVenda) ' +
                      '      and (CODVENDA_PRODUTO = :CodVendaProduto)';
    QuerX.ParamByName('CodVenda').AsString         := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodVendaProduto').AsInteger := Venda_Produto.FieldByName('CODIGO').AsInteger;
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'select V.CODIGO, V.STATUS ' +
                      'from VENDA_PRODUTO VP ' +
                      'left join VENDA V on (V.CODIGO = VP.CODVENDA) ' +
                      'where (VP.CODVENDA_ORIGINAL = :CodVenda) ' +
                      '      and (VP.CODVENDA_PRODUTO_ORIGINAL = :CodVendaProduto)';
    QuerX.ParamByName('CodVenda').AsString         := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodVendaProduto').AsInteger := Venda_Produto.FieldByName('CODIGO').AsInteger;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      if not AnsiSameText('INATIVO EXCLUÍDO', QuerX.FieldByName('STATUS').AsString) then
      begin
        ShowMessageWR('Este produto está vinculado a venda ' + QuerX.FieldByName('CODIGO').AsString + ' e não pode ser ' +
                      'removido. A remoção só será possível caso a venda em questão seja excluída.');
        Exit;
      end else
      begin
        QuerX.Close;
        QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.CODVENDA_PRODUTO_ORIGINAL = null ' +
                          'where (VP.CODVENDA_ORIGINAL = :CodVenda) ' +
                          '      and (VP.CODVENDA_PRODUTO_ORIGINAL = :CodVendaProduto)';
        QuerX.ParamByName('CodVenda').AsString         := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ParamByName('CodVendaProduto').AsInteger := Venda_Produto.FieldByName('CODIGO').AsInteger;
        QuerX.ExecSQL;
      end;
    end;
  finally
    QuerX.Free;
  end;

  if Produto_Estoque_Reservado.RecordCount > 0 then
    Produto_Estoque_Reservado.Delete;


  if not WRCalc.DBProduto.IsEmpty then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('-> Produto REMOVIDO: ' + WRCalc.DBProduto.FieldByName('DESCRICAO').AsString + ' - Valor Total: R$' + WRCalc.DBProduto.FieldByName('TOTAL').AsString + ',00.');
    UCHist_Cadastro.MensagemHistorico.Add('');

    WRCalc.CalcBuild;  //CalculaProduto //SPRITESHEET
    AlteraDataSet(Cadastro);
    WRCalc.SprDeleteLinha; // aqui deveria ter -1 ; Precisa calcular quantos nodes ele vai excluir, Quantos nodes filhos
    GridProdutoTree.FullRefresh;
    WRCalc.SuperCalc;   // << Soma no produto principal
  end;
end;

procedure TFrame_Venda_Mestre.btnNavegacaoAnteriorClick(Sender: TdxTileControlItem);
begin
  inherited;
  WRCalc.CalcBuild;
end;

procedure TFrame_Venda_Mestre.btnNavegacaoProximoClick(Sender: TdxTileControlItem);
begin
  inherited;
  WRCalc.CalcBuild;
end;

procedure TFrame_Venda_Mestre.btnConfigCamposProdutoClick(Sender: TObject); //OK
begin
  inherited;
  VerificaCheckboxConfigProduto;
  ShowPanelFormAbaixoDeControle(PnlConfigCamposProduto, BtnConfigCamposProduto, alRight);
end;

procedure TFrame_Venda_Mestre.BtnConfiguracoesClick(Sender: TdxTileControlItem);
begin
  inherited;
  MenuDireita.PopupOnMouse;
end;

procedure TFrame_Venda_Mestre.btnAdicionarProdutoClick(Sender: TObject);   // Aqui deve melhora bastante
var                                                              // Grade são produtos componposição, cada produto que tenha quantidade deve ser inserido, antes no produto memória
  I, ACodUsuarioQueAutorizou: Integer;                           // Aqui é apans regra de inserção, qualquer outra regra esta errada
  AValorProdutoGrade, Estoque: Double;
  AMesmoValorProdutosGrade, AMesmaDescricaoProdutosGrade: Boolean;
  ACodProduto: TCodBarras;
  ALote, ADescricaoProdutoGrade, AJustificativa, ATipoPreferencial, ACodPessoa: string;
  Var1 : variant;
  QuerX : TFDQuery;
  APessoa: TPessoaRetorno;
begin
  inherited;
//  btnMostrarSprClick(nil); //para debug
  VerificaSePodeAlteraDataSet(Cadastro);
  GridProdutoTree.Root.Collapse(True);

  if edtCodProduto.Text = '' then
    Exit;
// Eduardo: Comentei pois está quebrado ainda para adicionar produtos com composição,
// mas já dá para liberar para alguns clientes sem isso.
//
  if Produto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString <> '' then
    PmPrincipal.ProcuraProduto(Produto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);

//  if PmPrincipal.Produto.FieldByName('TEM_WIZARD').AsString = 'S' then
//  begin  // Se não for modal True, cancela
////    WRCalcMemoria.TreeListEmMemoria:= fALSE;
//
//    if Not TFrmProduto_Wizard.ExecutaWizard(FFrmProduto_Wizard, edtCodProduto.Text, WRCalcMemoria, PmPrincipal) then
//      Exit;
//    WRCalcMemoria.TreeListEmMemoria  := True;
//    WRCalcMemoria.SprFormula := SprMemoria;
//    WRCalcMemoria.CalcBuild;
//  end;

//  if Not ValidaCamposObrigatorio(btnAdicionarProduto, PmPrincipal.Produto, 'PRODUTO', ['ADDPRODUTO']) then
//    Exit;
  ACodProduto := Barras_Trata(edtCodProduto.Text);
  AMesmoValorProdutosGrade     := TConfig.ReadBoolean('VENDA_MESMO_VALOR_PRODUTOS_GRADE');
  AMesmaDescricaoProdutosGrade := TConfig.ReadBoolean('VENDA_MESMA_DESCRICAO_GRADE');
  if AMesmaDescricaoProdutosGrade  then
    ADescricaoProdutoGrade := edtProdutoDescricao.Text;
  if not FGradeAdicionandoProdutos and (FListaComponentesGrade.Count > 1) then //Condição replicada no fim da rotina
  begin                                                                        //para limpar os campos
    FGradeAdicionandoProdutos := True;
    FrmAguarde := TFrmAguarde.Create(Self);
    try
      FrmAguarde.Mensagem := 'Adicionando Produtos. Aguarde...';
      FrmAguarde.ProgressoMaximo := FListaComponentesGrade.Count;
      FrmAguarde.Show;
      AValorProdutoGrade := edtValor.Value;
      for I := 0 to FListaComponentesGrade.Count - 1 do
      begin
        if FListaComponentesGrade[i].Value <> 0 then
        begin
          edtCodProduto.Text := FListaComponentesGrade[i].Hint;

          if ADescricaoProdutoGrade <> '' then
            PmPrincipal.Produto.FieldByName('DESCRICAO').AsString := ADescricaoProdutoGrade;

          //////////////////////////////////////////////////////////////////////////////////////////////////////////////
          // Isso aqui pode gerar dor de cabeça se o produto for composto
          //////////////////////////////////////////////////////////////////////////////////////////////////////////////
          PmPrincipal.Produto.FieldByName('QTDADEPECA').AsFloat := FListaComponentesGrade[i].Value;
          if AMesmoValorProdutosGrade then
          begin
            edtValor.Value:= AValorProdutoGrade;    //CalculaProduto
//            WRCalcMemoria.AlterarValorProduto(AValorProdutoGrade)    // iSSO NÃO PODE
          end
          else
          begin
            AValorProdutoGrade := edtValor.Value;
//            WRCalcMemoria.AlterarValorProduto(AValorProdutoGrade);    // iSSO NÃO PODE
          end;

          ////////////////////////////////////////////////////////////////////////////////////////////////////////////
          BtnAdicionarProdutoClick(nil);
        end;
        FrmAguarde.AvancarProgresso;
      end;
      LimparCampos;
      Exit;
    finally
      FGradeAdicionandoProdutos := False;
      FrmAguarde.Free;
    end;
  end;
  //Migrado para o wrValidacoes, mas não dessa forma, está avisando no Edit antes...
  {if (not Cadastro.FieldByName('PROJETO_DT_FIM').IsNull) and (Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime > 0) then   // Não pode, comparar aqui avise o Cliente antes
  begin
    if (edtCALENDARIO_DT_PREVISAO_FIM.Date > 0) and (edtCALENDARIO_DT_PREVISAO_FIM.Date > Cadastro.FieldByName('PROJETO_DT_FIM').AsDateTime) then
      ShowMessageWR('A data de Previsão de Entrega do produto,' + sLineBreak + 'é mais recente do que a data de "Prometido Para" da Venda.');
      //Somente aviso...não bloquear.
  end; }
  if chkLote.Checked then
  begin
    ALote := TFrmSelecao_Lote.AbreSelecaoLote(edtCodProduto.Text, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);  // Se for lote pergunte antes, resolva tudo antes dessa função
    if ALote = '' then
    begin
      ShowMessage('Esse Produto não pode ser inserido sem o número de Lote.');
      Exit;
    end;
  end;

  if not VerificaValorMinimo(PmPrincipal.Produto.FieldByName('VALOR').AsFloat, PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat) then
  begin
    ShowMessage('O Usuario não é autorizado');
    Exit;
  end;

//  //Faz algumas validações para adicionar o produto na venda.
//  ValidacaoParaAdicionarVendaProduto;  // Deve ser a única regra, se estiver algum componente de tela errado, não deixa passar
//TODO: Ajustar permissão venda
  //Esta parte abaixo NÃO PODE estar dentro do DisableControls
  if CkAgrupar.Checked and not edtComp.Enabled and  // Testar essa COISA PARA VER SE FUNCION COM PRODUTO COMPLEXOS
     Venda_Produto.Locate('CODPRODUTO;VALOR;PARENT', VarArrayOf([ACodProduto.Codigo, edtValor.Value, Null]),[]) then
  begin
//    WRCalc.SprFechaMemTables;
//    WRCalc.CalcBuild;     // O Caralho do negócio precisa dar o build para funcionar, cacete, Dai tudo funciona

    Venda_Produto.Edit;   // TODO: Santo DEUS isso tem acesso ao campo direto
                          // Não pode acessar dessa forma
                          // Tem que abir o produtoe recalcular tudos as fórmulas não é apenas a quantidade é tudo
    Var1:= Venda_Produto.FieldByName('QTDADEPECA').AsFloat + edtQuant.Value;
//      GridComposicaoTreeQTDADEPECA.Value:= Venda_Produto.FieldByName('QTDADEPECA').AsFloat;
//    WRCalc.SprGravaFieldPosicao('QTDADEPECA', Var1);
//    WRCalc.SprCopiarFormula;
    WRCalc.ValidaCampoMedidas('QTDADEPECA', Var1);   // Aqui ele posta
  end else
  begin
    // Deve ser a única coisa  valida componente de tela e insere
    // Aqui deve inserir de tras para frente, para quando dar o post do produto composto ja poder aplicar o Calc correto em uma passada
    Venda_Produto.Insert;
    DSCopiarCamposIguais(PmPrincipal.Produto, Venda_Produto, ['CODIGO', 'ORDEM', 'CODVENDA', 'NF_VICMSST', 'NF_IPI_VIPI', 'NF_VFRETE', 'VOUTRO', 'VDESC', 'VDESC_MANUAL', 'VOUTRO_MANUAL' ]);
    Venda_Produto.FieldByName('QTDADEPECA_FORMULA').Value := Venda_Produto.FieldByName('QTDADEPECA').Value;
    Venda_Produto.FieldByName('COMP_FORMULA').Value       := Venda_Produto.FieldByName('COMP').Value;
    Venda_Produto.FieldByName('LARG_FORMULA').Value       := Venda_Produto.FieldByName('LARG').Value;
    Venda_Produto.FieldByName('ESPESSURA_FORMULA').Value  := Venda_Produto.FieldByName('ESPESSURA').Value;
    Venda_Produto.FieldByName('QUANTORIGINAL').Value      := Venda_Produto.FieldByName('QUANT').Value;
    Venda_Produto.FieldByName('DT_APROVACAO_SAIDA_ETAPA').Value      := PmPrincipal.Produto.FieldByName('DT_APROVACAO_SAIDA_ETAPA').Value;
    Venda_Produto.FieldByName('TOTAL_RELATORIO').Value  := Venda_Produto.FieldByName('TOTAL').Value;
    Venda_Produto.FieldByName('VALOR_RELATORIO').Value  := Venda_Produto.FieldByName('TOTAL').Value/Venda_Produto.FieldByName('QUANT').Value;

    //    Venda_Produto.FieldByName('TEM_PRODUCAO_ENVIADO').Value := 'N';
    Venda_Produto.FieldByName('SEQUENCIA').Value          := GridProdutoTree.Count;

    if edtComissaoÎPessoas.EditValue <> null then
    begin
      ACodPessoa := TControleWR.GetCodPessoa(edtComissaoÎPessoas.Properties.Buttons[0].Caption,edtComissaoÎPessoas.EditValue);


      Venda_Produto.FieldByName('PESSOA_FUNCIONARIO_CODIGO').Value    := ACodPessoa;
      Venda_Produto.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').Value := edtComissaoÎPessoas.Text;
      Venda_Produto.FieldByName('PESSOA_FUNCIONARIO_TIPO').Value      := edtComissaoÎPessoas.Properties.Buttons[0].Caption;

      Venda_Produto.FieldByName('COMISSAO').Value                     := edtComissaoÎPessoasÎCOMISSAO.Value;
    end;

    Venda_Produto.Post;   //POST-Calc
    //Custos Extras e Centro de Trabalho
//    DSCopiarDataSetIgnorando(PmPrincipal.CustoExtra, Venda_Produto_Custo_Adicional, ['CODIGO', 'CODPRODUTO']);
//    DSCopiarDataSetIguais(PmPrincipal.CentroTrabalho, Venda_Produto_Centro_Trabalho, ['CODIGO', 'CODPRODUTO']);

    DataSetCopiaRecursivoCamposIguais(PmPrincipal.Composicao, Venda_Produto, Venda_Produto.FieldbyName('Codigo').AsInteger,
      ['CODIGO', 'ORDEM', 'CODVENDA', 'CODVENDA_PRODUTO','SEQUENCIA'],PmPrincipal.TreeListComposicao.GetTreeList);
  end;

//  if PmPrincipal.Composicao.RecordCount > 0 then
//    VerificaEstoque(PmPrincipal.Composicao, Venda_produto)
//  else
    VerificaEstoque(PmPrincipal.Produto, Venda_produto);//(PmPrincipal.Produto);


  WRCalc.SprFechaMemTables;  //CalculaProduto
  Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO
  WRCalc.CalcBuild;  //CalculaProduto
  WRCalc.SuperCalc;  //CalculaProduto

  edtCodProduto.SetFocusWR;
  if not FGradeAdicionandoProdutos then
    LimparCampos;
  GridProdutoTree.FullCollapse;
end;

procedure TFrame_Venda_Mestre.VerificaCheckboxConfigProduto;
begin
  chkConfDevolucao.Checked              := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_DEVOLUCAO');
  CkConfigCamposProdutoVDesc.Checked    := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_VDESC');
  CkConfigCamposProdutoPDesc.Checked    := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_PDESC');
  CkConfigCamposProdutoTabPreco.Checked := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TABPRECO');
  CkConfigCamposProdutoTipoDesc.Checked := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TIPODESC');
  CkAgrupar.Checked                     := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_AGRUPAR');
  chkLocalEstoque.Checked               := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_ESTOQUE_LOCAL');
  chkInformacaoes_Adicionais.Checked    := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_INFO_ADICIONAIS');
  chkFolhas.Checked                     := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_PRODUTO_FOLHAS');
  chkValorOriginal.Checked              := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_TABELA_PRECO');
  chkTabelaPrecoProduto.Checked         := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_VALOR_ORIGINAL');
  chkTabelaPrecoProduto.Checked         := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_TABELA_PRECO');
  chkComissaoFuncionario.Checked        := TConfig.ReadBoolean('VENDA_CONFIG_CAMPO_COMISSAO_FUNCIONARIO');
end;

function TFrame_Venda_Mestre.VerificaValorMinimo(AValor, AValorMinimo:Double): Boolean;
var
  ACodUsuarioQueAutorizou: Integer;
  QuerX: TFDQuery;
//  AValor: Double;
begin
  Result := False;
  if TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
    AValor :=  PmPrincipal.Produto.FieldByName('TOTAL').AsFloat
  else
    AValor :=  AValor;

  AValorMinimo :=  CalculaValorMinimoVenda(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat);
  if AValor < AValorMinimo then
  begin
    if ShowMessageWR('Item com valor abaixo do mínimo permitido: ' + FormatFloat('R$##,###,##0.00',AValorMinimo)+' Deseja Solicitar Acesso?' , MB_ICONQUESTION) = mrYes then
    begin
      if SolicitaPermissao('LbUCPermiteVenderAbaixoDoValorMinimo',ACodUsuarioQueAutorizou) then
        Result := True;
    end;
  end else
    Result := True;
end;


function TFrame_Venda_Mestre.VerificaCustoImprimirOuFaturar(ACodVenda: String): Boolean;
var
  ACodUsuarioQueAutorizou: Integer;
  QuerX, QuerY: TFDQuery;
  ABloqueia: Boolean;
begin
  Result := False;
  ABloqueia := False;
  QuerX := GeraFDQuery;
  QuerX.SQL.Text :=   'SELECT VP.CODIGO, VP.VALOR, VP.CALC_VENDA_MINIMO_VALOR FROM VENDA_PRODUTO VP ' +
                      ' WHERE VP.CODVENDA = :CODIGOVENDA';
  QuerX.ParamByName('CODIGOVENDA').value := ACodVenda;
  QuerX.Open;
  QuerX.First;
  try
    while not QuerX.eof do
    begin
      if QuerX.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat > QuerX.FieldByName('VALOR').AsFloat then
        ABloqueia := true;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;

  if ABloqueia then
  begin
    if ShowMessageWR('Existem itens com valor abaixo do mínimo permitido. Deseja autorização?', MB_ICONQUESTION) = mrYes then
    begin
      if UsuarioSenhaAutorizado(True,ACodUsuarioQueAutorizou) then
      begin
        try
          QuerY := GeraFDQuery;
          QuerY.SQL.Text := 'Select * from USUARIO_EXTRA Where CodUsuario = :CodUsuario and Componente = :Component';
          QuerY.ParamByName('CodUsuario').Value := ACodUsuarioQueAutorizou;
          QuerY.ParamByName('Component').Value := 'ActPermissaoVerCustos';
          QuerY.Open;
          if QuerY.RecordCount > 0 then
            Result := True;
        finally
          QuerY.Free
        end;
      end;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.VerificaEstoque(Produto, AProdutoEdit :TDataSet);
var
  QuerX :TFDQuery;
  Estoque :Double;
  CodProduto :String;
begin
//  exit;

  QuerX := GeraFDQuery(TransaFD);
  if (Produto.Name = 'Venda_Produto') or (Produto.Name = 'MemTableComposicao') then
    CodProduto := 'CODPRODUTO'
  else
    CodProduto := 'CODIGO';
  try
    Produto.First;
    while not Produto.eof do
    begin
      QuerX.SQL.text := 'select estoque from produto_estoque pe where pe.codproduto = :Cod and pe.codempresa = ' + IntToStr(Empresa.FieldByName('CODIGO').AsInteger);
      QuerX.ParamByName('Cod').AsString := Produto.FieldByName(CodProduto).AsString ;
      QuerX.Open;
      if Produto.FieldByName('TEM_CONTROLE_ESTOQUE').AsString = 'S' then
      begin
        if AProdutoEdit.Locate('CODPRODUTO',Produto.FieldByName(CodProduto).AsString,[]) then
        begin
          if AProdutoEdit.State <> DSEdit then
            AProdutoEdit.Edit;
          Estoque := QuerX.FieldByName('ESTOQUE').AsFloat - Produto.FieldByName('QUANT').AsFloat ;
          if Estoque <= 0 then//estoque minimo
            AProdutoEdit.FieldByName('TEM_ESTOQUE_ABAIXO_MINIMO').AsString := 'S'
          else
            AProdutoEdit.FieldByName('TEM_ESTOQUE_ABAIXO_MINIMO').AsString := 'N';
//          AProdutoEdit.Post;
        end;
      end;
      Produto.Next;
    end;
  finally
    QuerX.Free;
  end;
end;


procedure TFrame_Venda_Mestre.btnAprovarOrcamentoClick(Sender: TObject);       // Arrumar, grave
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ACodVenda: string;
begin
  inherited;
//  WrCalc.NaoValida:= True;
//  ValidarGrupos(['Aprovar']);
//  WrCalc.NaoValida:= False;
//  WREventosCadastro.ValidaCamposObrigatorio(Self, 'APROVAR');
  //Movido para wrValidacoes
  {
  if Cadastro.FieldByName('VENDA_TIPO_MODELO').AsString <> VendaTipoModeloToStr(vtmOrcamento) then
  begin
    ShowMessageWR('Este não é um Orçamento');
    Exit;
  end;
  // TODO 1 -oLeandro -cSQL : Mudar para editar no altera e Post. Para manter o Histórico
  Venda_Produto.DisableControls;
  try
    Venda_Produto.first;
    while not Venda_Produto.Eof do
    begin
      if Venda_produto.FieldByName('PODE_FATURAR').AsString = 'N' then
      begin
        ShowMessageWR('Não é possivel aprovar integralmente esse pedido, existem itens que já estão faturados');
        Exit;
      end;
      Venda_Produto.Next;
    end;
  finally
    Venda_Produto.EnableControls;
  end; }

//  ACodVenda := Cadastro.FieldByName('CODIGO').AsString;
//  CopiarVendaComProduto(vtmVenda);
//
//  ATransa := GeraFDTransacao;
//  QuerX := GeraFDQuery(ATransa);
//  try
//    QuerX.SQL.Text := 'update VENDA set STATUS = :Status, DT_ORCAMENTO_FINALIZADO = current_timestamp ' +      // Não pode
//                      'where (CODIGO = :Codigo)';                                                              // Cade o histórico mai importe
//    QuerX.ParamByName('Codigo').AsString := ACodVenda;
//    QuerX.ParamByName('Status').AsString := 'INATIVO APROVADO';
//    QuerX.ExecSQL;
//    ATransa.Commit;
//  finally
//    QuerX.Free;
//    ATransa.Free;
//  end;
//
//  ShowMessageWR('Orçamento Aprovado! Parabéns!');
end;

procedure TFrame_Venda_Mestre.btnCancelaEndEntregaClick(Sender: TObject);  // Revisar pois deveria ser QuerX, é usada em um unico ponto da tela
begin                                                            // tenho que ver em operação
  inherited;
  FechaPanelForm(pnlEnderecoEntrega);
  Pessoas_Entrega.Close;
end;

procedure TFrame_Venda_Mestre.btnCancelarClick(Sender: TdxTileControlItem);    // Coceito de rastrear tro de mudançã de estado do tipo de venda
begin
  if DS.State = dsInsert then
  begin
    try
      Cadastro.FieldByName('STATUS').AsString     := 'INATIVO CANCELADO';
      Cadastro.FieldByName('ATIVO').AsString      := 'N';
      Cadastro.FieldByName('SEQUENCIA').AsInteger := 0;             // Essa Sequencia deve ser uma tabela extra, informando o número de cada tipo de venda
      DS.DataSet.Post;                                              // Igual ao cadastro de pessoa, ou melhor a Tipo de pessoa da versão 17
      TransaFD.Commit;
//      TransaFD.StartTransaction;
    except
      Venda_Produto.Cancel; // Sem chave primaria
    end;
    Cadastro.Open;
//    btnNovo.SetFocusWR;
    tcCadastro.Controller.FocusedItem:= btnNovo;
  end else
  begin
    WRCalc.SprFechaMemTables;
    if Venda_Produto.State in [dsEdit, dsInsert] then
      Venda_Produto.Cancel;
    if Venda_Financeiro.State in [dsEdit, dsInsert] then
     Venda_Financeiro.Cancel;
    inherited;

    CloseOpen_AbrirRegistro(Cadastro.FieldByName('Codigo').Value);
  end;
end;

procedure TFrame_Venda_Mestre.btnCancelarProducaoClick(Sender: TObject);
var
 CodProtudo : Integer;
 AMsg: TStringList;
begin
  inherited;
  if not FrmPrincipal.Action_Producao_OS.Enabled then
  begin
    ShowMessage('Você não tem Permissão para Cancelar uma Produção');
    Exit;
  end;
  try
    if not(Venda_Produto.FieldByName('PROTOCOLO').isNull) then
    begin
      if ShowMessageWR('Cancelar o Item: ' + Venda_Produto.FieldByName('DESCRICAO').AsString + '?', MB_ICONQUESTION) = mrYes then
      begin
        VerificaSePodeAlteraDataSet(Cadastro);
        AMsg := TStringList.Create;
        UCHist_Producao.MensagemHistorico.Text:='';
        Producao.Close; // Pega o item selecionado
        Producao.Open;
        if Producao.RecordCount > 0 then
        begin
          Producao.First;
          while Not Producao.Eof do
          begin
            Producao.Edit;
//              Producao.FieldByName('PRODUTO').Value      := Venda_Produto.FieldByName('DESCRICAO').Value;
//              Producao.FieldByName('DESCRICAO').Value    := Venda_Produto.FieldByName('DESCRICAO').Value;
//              Producao.FieldByName('QTDADEPECA').Value   := Venda_Produto.FieldByName('QTDADEPECA').Value;
//              Producao.FieldByName('COMP').Value         := Venda_Produto.FieldByName('COMP').Value;
//              Producao.FieldByName('LARG').Value         := Venda_Produto.FieldByName('LARG').Value;
//              Producao.FieldByName('ESPESSURA').Value    := Venda_Produto.FieldByName('ESPESSURA').Value;
//              Producao.FieldByName('QUANT').Value        := Venda_Produto.FieldByName('QUANT').Value;
            Producao.FieldByName('ATIVO').AsString         := 'N';    // Reativado
            Producao.FieldByName('TEM_ARQUIVADO').AsString := 'S';    // Reativado
            Producao.FieldByName('SITUACAO').Value         := 'Cancelado';// 'Cancelada pela Venda';    // Reativado
            UCHist_Producao.MensagemHistorico.Add('Cancelada pela venda.');
            UCHist_Producao.MensagemHistorico.Add('Responsável pelo cancelamento: '+usuario.Login);
            Producao.Post;

            Producao.Next;
          end;
        end;
        btnConfirmar.Click;
        Venda_Produto.Refresh;
      end;
    end else
      ShowMessageWR('Este item ainda não foi enviado para produção, não foi possivel cancelar');
  except
    ShowMessage('O item está sendo utilizado na produção');
  end;

end;

procedure TFrame_Venda_Mestre.btnConfirmaEndEntregaClick(Sender: TObject);   // Aqui esta o código, tem que ver como vai ficar isso
begin                                                              // Os nome dos campos tem que mudar, Colocar "ENTREGA" na frente
  inherited;                                                       // Fica melhor de ler no banco de dados
  if not Pessoas_Entrega.IsEmpty then
  begin
    VerificaSePodeAlteraDataSet;
    Cadastro.FieldByName('CODCIDADE_ENTREGA').AsInteger  := Pessoas_Entrega.FieldByName('CODCIDADE').AsInteger;
    Cadastro.FieldByName('ENDERECO_ENTREGA').AsString    := Pessoas_Entrega.FieldByName('ENDERECO').AsString;
    Cadastro.FieldByName('BAIRRO_ENTREGA').AsString      := Pessoas_Entrega.FieldByName('BAIRRO').AsString;
    Cadastro.FieldByName('NUMERO_ENTREGA').AsString      := Pessoas_Entrega.FieldByName('NUMERO').AsString;
    Cadastro.FieldByName('COMPLEMENTO_ENTREGA').AsString := Pessoas_Entrega.FieldByName('COMPLEMENTO').AsString;
    Cadastro.FieldByName('UF_ENTREGA').AsString          := Pessoas_Entrega.FieldByName('UF').AsString;
    Cadastro.FieldByName('CEP_ENTREGA').AsString         := Pessoas_Entrega.FieldByName('CEP').AsString;
  end;
  btnCancelaEndEntregaClick(nil);
end;

procedure TFrame_Venda_Mestre.btnConfirmarClick(Sender: TdxTileControlItem);   // Resisar incansavelmente
var                                                       // recompilar o PAF
  ACor: TColor;
  Reg: TRegistry;
  AIni: TIniFile;
  Inserindo : String;
  QuerX: TFDQuery;
begin
  if Not Cadastro.Active then
  begin
    ShowMessage('Tabela fechada, antes de postar. Sua rede esta indisponível, tente reconectar a rede depois.');
    Exit;
  end;
  if ds.State = dsInsert then
    Inserindo := Cadastro.FieldByName('CODIGO').AsString
  else
    Inserindo:='';
  {TODO: Revisões para Orçamentos - Os problemas abaixo devem ser solucionados pois permitem a impressão de orçamentos
   com informações incorretas.
   - O sistema permite Confirmar mesmo quando as parcelas não batem com o total da venda
   - Não deve ser permitido cadastrar ou alterar condições de pagamento. O vendedor só pode selecionar a desejada.
   * Para depois: As condições de pagamento devem possuir regras para utilização. Ex: Em 3x apenas com valor maior que R$ 100,00}
  WrCalc.NaoValida:= True;
  DSPost(Venda_Produto);

  Cadastro.FieldByName('CODUSUARIO').AsInteger := CodigoUsuario;
  if TConfig.ReadBoolean('UTILIZA_CONSULTA_IBASE') and( Cadastro.FieldByName('VENDA_ATENTICAR').AsString = 'S') then
    TIntegracaoIBASI.Venda(Ds,DS_Financeiro);

  if not LbUCMensagem.Visible and TConfig.ReadBoolean('VENDA_IMPRIMIR_VENDA_SEM_CNPJ_CPF') then  // Não pode, tem que ser componente de tela
    ShowMessageWR('Cliente não possui CNPJ ou CPF cadastrado. Não será possível realizar a impressão.');

  try
    ACor := -1;
    if not VerificaSePodeVender(ACor, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Venda_Financeiro, False) then  // nÃO PODE TER ISSO AQUI, TEM QUE ESTAR NA TELA
    begin
      EdtResponsavelÎPessoas.SetFocusWR;
      Exit;
    end;
  finally
    if ACor = -1 then
      edtResponsavelÎPessoasÎRAZAOSOCIAL.Style.RestoreDefaults
    else
      edtResponsavelÎPessoasÎRAZAOSOCIAL.Style.Color := ACor;
  end;

  if PAFNFE and (FPAFNFECodVendaGerada <> '') then              // ISSO PODE integraçãoes
  begin                                                         // ter duas linhas, se tem executa, igual ao IBASE
    AIni := TIniFile.Create(GetDirSistema + 'PAFNFE.ini');
    try
      AIni.WriteString('Geral', 'VendaGerada', FPAFNFECodVendaGerada);
    finally
      AIni.Free;
    end;
    FPAFNFECodVendaGerada := '';
  end;
  WRCalc.CalcBuild;
  WRCalc.SuperCalc;  //CalculaProduto
  inherited;

  if not(Cadastro.State in dsEditModes) and(Inserindo <>'')and Assigned(FConsulta) then
  begin
    Cadastro.Close;
    TFrmBase(FConsulta).FrameConsulta.Consulta.Refresh;
    if TFrmBase(FConsulta).FrameConsulta.Consulta.Locate('CODIGO', Inserindo, [])then
      CloseOpen_AbrirRegistro(Inserindo)
    else
      Cadastro.Open;

//    TConsu_Frame(FConsulta).Consulta.Refresh;
//    if TConsu_Frame(FConsulta).Consulta.Locate('CODIGO', Inserindo, [])then
//      Cadastro.Open
//    else
//      CloseOpen_AbrirRegistro(Inserindo);
  end;
  WrCalc.NaoValida:= False;
  DSStateChange(NIL);
end;

procedure TFrame_Venda_Mestre.btnConsultarClick(Sender: TdxTileControlItem);
begin
  WRCalc.SprFechaMemTables;
  inherited;
end;

procedure TFrame_Venda_Mestre.btnConsultaTECVendaClick(Sender: TObject);        // TESTAR ESSA COISA
var
  ATipo, AImprime : Boolean;
  ACodigo : string;
  QuerX, QuerAgencia : TFDQuery;
  AFrmAguarde : TFrmAguarde;
begin
  inherited;
  ATipo   := (Cadastro.FieldByName('VENDA_TIPO').AsString <> 'CONDICIONAL');
  ACodigo := Cadastro.FieldByName('CODIGO').AsString;
  if (Cadastro.State in [dsEdit, dsInsert]) then
  begin
    ShowMessageWR('Confirme a Venda antes de Consultar.', MB_ICONWARNING);
    Exit;
  end
  else if (Codigo = '') then
  begin
    ShowMessageWR('Para Consultar, a Venda deve ser emitida.', MB_ICONWARNING);
    Exit;
  end;
  if Cadastro.FieldByName('CODIGO').AsString = '' then
  begin
    ShowMessageWR('Nenhuma Venda disponível para ser consultada!', MB_ICONWARNING);
    Exit;
  end;
  QuerX := GeraFDQuery;
  QuerAgencia := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select EMAIL, DATANASCIMENTO, TIPO ' +
                      'from PESSOAS ' +
                      'where (CODIGO = :CodPessoa)';
    QuerX.Params[0].AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    QuerX.Open;
    if QuerX.FieldByName('EMAIL').AsString = '' then //DATANASCIMENTO
    begin
      ShowMessageWR('Cliente sem Email.' + sLineBreak + 'Cadastre o Email para continuar.');
      CadastroTag_NormalChave(Self, Tag_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
      Exit;
    end;
    if (QuerX.FieldByName('DATANASCIMENTO').AsString = '') and (QuerX.FieldByName('TIPO').AsString = 'J') then //
    begin
      ShowMessageWR('Cliente sem Data de Abertura da Empresa.' + sLineBreak + 'Cadastre esta data para continuar.');
      CadastroTag_NormalChave(Self, Tag_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
      //DBDateEdit1
      Exit;
    end;
    QuerAgencia.SQL.Text := 'select AG.REFERENCIA ' +
                            'from PESSOAS P ' +
                            'left join PESSOAS AG on (AG.CODIGO = P.PESSOA_REPRESENTANTE_CODIGO) ' +
                            'where (P.CODIGO = :CodPessoa)';
    QuerAgencia.ParamByName('CodPessoa').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    QuerAgencia.Open;
    if QuerAgencia.Fields[0].AsString = '' then
    begin
      ShowMessageWR('Cliente sem Agência vinculada.' + sLineBreak + 'Cadastre a Agência para continuar.');
      CadastroTag_NormalChave(Self, Tag_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
      Exit;
    end;
  finally
    QuerX.Free;
    QuerAgencia.Free;
  end;
  VerificaSePodeAlteraDataSet;
  AFrmAguarde := TFrmAguarde.Create(Self);
  try
    AFrmAguarde.Mensagem := 'Consulta de Venda sendo executada. Aguarde...';
    AFrmAguarde.Show;
    Self.Enabled := False;
    try
      AImprime := TConsultaTECPanel.ConsutaTECPanel(ATipo, ACodigo, TransaFD);
    finally
      Self.Enabled := True;
    end;
    btnConfirmar.Click;
  finally
    AFrmAguarde.Free;
  end;
  if AImprime then
    DMImpressaoImprimirPorNome(TForm(Self.Owner), RelatorioListaImpressoesPadroes('FR0045'));
end;

procedure TFrame_Venda_Mestre.btnDadosVeiculoFecharClick(Sender: TObject);    // OK
begin
  inherited;
  FechaPanelForm(pnlDadosVeiculo);
end;

procedure TFrame_Venda_Mestre.AbrePDV(Key: Word);
var
  AResult :Boolean;
  ACodFuncionario, ASeqFuncionario, ATipoFuncionario, ACodCondicaoPagto, AParcela, AMes, AIsCartao, AEmiteNFCe :String;
  ACodConta, AQuantCaixas:Integer;
  ACodVendaComTEF: String;
  QuerFinanceiroTEF: TFDQuery;
begin
  WRLog('Utilizou de atalho para entrar no PDV Operação:' +Cadastro.FieldByName('OPERACAO').AsString );
  // no botão novo tem que ver o arquivo de venda e Caso exista trazer e continuar a venda aberta.
  // Se existir arquivo Trava tudo  Venda.Ler; Iniciar operações
  // Se tiver em edição e for livre  do
  // Aqui deve Comitar e proibir entrada de pessoas não autorizada
  // e Travar a venda para os demais atores de pois desse passo, fica exclusiva

  if Cadastro.FieldByName('TOTAL').AsFloat = 0 then
  begin
    ShowMessage('Não pode abrir o PDV em vendas com o valor total = 0');
    Exit;
  end;

// -------Só pode passar por aqui se as parcelas forem as mesmas e não foram mexidas-------------
// Nesse momento não pode mexer em nada de produtos e nada de financeiro
// Se entrou na telinha, só pode cancelar operações tef ou finalizar operações tef


  // ISSO PODE CONFLITAR COM A ROTINA
  ACodConta :=VerificaOperadorDeCaixa(Usuario.Codigo);

  if True then
  begin
    AQuantCaixas := TFrmFinanceiro_Contas_Escolha.VerificaQuantidadeCaixasPermitidos;
    if Not(ACodConta > 0) then
    begin
      if AQuantCaixas > 1 then
      begin
      //AQUI DEVE TER ALGUM TIPO DE RESTRICAO COMO PRIVILEGIADO
        ShowMessage('Selecione o caixa que você possui acesso');
        ACodConta := TFrmFinanceiro_Contas_Escolha.SelecionarContaCaixa;
      end
      else
      begin
        ShowMessage('CAIXA FECHADO. '+sLineBreak+'Abra um caixa Primeiro.');
        ACodConta := TFrmFinanceiro_Contas_Escolha.AbrirCaixa(Now);
      end;
      if ACodConta = 0 then
        Exit;
    end;
  end;

  if AWR_APP[TagAPP_TEF_Dedicado].Ativo then   //CASO APP INSTALADO FAZ REGRAS DE VALIDACAO OBRIGATORIAS DO TEF
  begin
  //////////////////////////////REGRAS QUE ANALISAM OUTRAS VENDAS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    ACodVendaComTEF := ProcuraVendaComOperacaoPagamento(Cadastro.FieldByName('CODIGO').AsString, IntToStr(ACodConta));
    if (ACodVendaComTEF <> '') then // Se retornou algo é porque não é a mesma venda
    begin
      ShowMessageWR('Existe uma Operação TEF em andamento, por favor resolva primeiro, antes de continuar', MB_ICONWARNING);
  //      CadastroMidChildChave(TFrame_Venda_Mestre, ACodVendaComTEF);
  //      CadastroMidChildChaveFrame(Self.Owner, ACodVendaComTEF);
  //      CadastroTag_NormalChave(self, Tag_Venda, ACodVendaComTEF);
      with ABaseClass_MidChild[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(Self) do
        ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, ACodVendaComTEF);
      Exit;
    end;



  //      Aqui deveria trocar as Parcelas já, nem deixar entrar se não pode trocar.

  //      Aqui deve Informar  Se O USUÁRIO Buscou venda de outro caixa
    UCHist_Cadastro.MensagemHistorico.Text:='Usuário '+Usuario.Login+' Buscou do Caixa '+
                                             Cadastro.FieldbyName('CODCONTA').AsString+
                                             ' para faturar no caixa '+InTToStr(ACodConta)+'.'+sLineBreak+
                                             '- Para não permitir isso, vá em configuração e desative a opção de trocar caixa no faturamento';

        // Aqui testa se existe venda com Operação ou Transação TEF.
    ACodVendaComTEF := TFrmPDV_Pagamento.ProcuraVendaComOperacaoTEF(ACodConta);

    if  (ACodVendaComTEF <> '')
    and (ACodVendaComTEF <> Cadastro.FieldByName('CODIGO').AsString) then
    begin
      ShowMessage('Resolva o Recebimento na Venda ' + ACodVendaComTEF + '.');
  //      CadastroMidChildChave(TFrmVenda, ACodVendaComTEF);
      with ABaseClass_MidChild[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(Self) do
        ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, ACodVendaComTEF);
      Exit;

    end;

    // Aqui testa se existe venda Inativa com TEF Confirmado.
    ACodVendaComTEF := TFrmPDV_Pagamento.ProcuraVendaInativaComOperacaoTEFConfirmada;
    if  (ACodVendaComTEF <> '')
    and (ACodVendaComTEF <> Cadastro.FieldByName('CODIGO').AsString) then
    begin
      ShowMessage('Existe uma Venda Inativa com Transação TEF Confirmada. Resolva Primeiro! ');
  //      CadastroMidChildChave(TFrmVenda, ACodVendaComTEF);
      with ABaseClass_MidChild[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(Self) do
        ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, ACodVendaComTEF);
      Exit;
    end;
    //////////////////////////////FIM REGRAS QUE ANALISAM OUTRAS VENDAS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    ///////////////////////////////REGRAS QUE ANALISAM PARCELAS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    QuerFinanceiroTEF := GeraFDQuery(TransaFD);
    try
      QuerFinanceiroTEF.SQL.Text := 'select * from venda_financeiro_tef vft where vft.TEF_STATUS = ''Pendente'' and vft.CODVENDA = :CodVenda';
      QuerFinanceiroTEF.ParamByName('CodVenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
      QuerFinanceiroTEF.Open;
      if QuerFinanceiroTEF.RecordCount = 0 then
      begin
        QuerFinanceiroTEF.SQL.Text := 'select * from venda_financeiro_tef vft where vft.TEF_STATUS = ''Pendente''';
        QuerFinanceiroTEF.Open;
        if QuerFinanceiroTEF.RecordCount > 0 then
        begin
          QuerFinanceiroTEF.First;
          ShowMessage('Resolva a parcela pendente na Venda (' + QuerFinanceiroTEF.FieldByName('CODVENDA').AsString + ')' );
  //          CadastroMidChildChave(TFrmVenda, QuerFinanceiroTEF.FieldByName('CODVENDA').AsString);
          with ABaseClass_MidChild[QuemeoPai(TFrmBase(Owner).tcBase.Tag)].Create(Self) do
            ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, QuerFinanceiroTEF.FieldByName('CODVENDA').AsString);
          exit;
        end;
      end;
    finally
      QuerFinanceiroTEF.Free;
    end;


  ///////////////////////////////FIM REGRAS QUE ANALISAM PARCELAS\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


  ////////////////////////////REGRAS DO CAIXA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

    if Cadastro.FieldbyName('CODCONTA_PDV').AsInteger > 0 then
    begin
      if Cadastro.FieldbyName('CODCONTA_PDV').AsInteger <> ACodConta then
      begin
        if ShowMessageWR('Esta venda está sobre responsabilidade do caixa: ' + IntToStr(Cadastro.FieldbyName('CODCONTA_PDV').AsInteger) + ' Deseja Continuar?', MB_ICONQUESTION) <> mrYes then
          exit
        else
        //AQUI FICA A ROTINA DE AJUSTAR AS PARCELAS PARA ENTRAR NO PDV
  //          TFrmPDV_Pagamento.AjustaParcelas;
      end;
    end;


  //////////////////////////////FIM REGRAS DO CAIXA \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


  end;
{$REGION 'Codigo não utilizado'}
//    if Not (ACodCaixa > 0) then //Não tem caixa aberto para usuário
//    begin
//      ShowMessage('CAIXA FECHADO. '+sLineBreak+'Abra um caixa Primeiro.');
//      TFrmFinanceiro_Contas_Escolha.AbrirCaixa(Now);
//      Exit;
//    end;


// -------Só pode passar por aqui se as parcelas forem as mesmas e não foram mexidas-------------
// Nesse momento não pode mexer em nada de produtos e nada de financeiro
// Se entrou na telinha, só pode cancelar operações tef ou finalizar operações tef

//    if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
//    begin
//      if not (Cadastro.State in dsEditModes) then
//        btnAlterar.Click;

//      if TFrmPDV_Pagamento.VerificaCodVendaIni(FFrmPDV_Pagamento, Self, key, DS, DS_Financeiro, ACodCaixa) <> Cadastro.FieldByName('CODIGO').AsString then
//      begin
//        ShowMessage('É diferente');
//      end
//      else       // Apenas abre assim se o não tiver INI:
   { QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select V.CODIGO from venda v where v.TEM_OPERACAO_TEF = ''S''';
      QuerX.Open;
      WRLog('Vai verificar se tem operação TEF em andamento');
      if QuerX.RecordCount > 0 then
      begin
        if QuerX.FieldByName('CODIGO').AsString <> Cadastro.FieldByName('CODIGO').AsString then
        begin
          WRLog('Tem Operação em andamento, pediu para resolver primeiro');
          ShowMessageWR('Existe uma Operação TEF em andamento, por favor resolva primeiro, antes de continuar', MB_ICONWARNING);
          CadastroMidChildChave(TFrmVenda, QuerX.FieldByName('CODIGO').AsString);
          Exit;
        end;
      end;
    finally
      QuerX.Free;
    end;   }
{$ENDREGION}




  if MatchStr(Cadastro.FieldByName('OPERACAO').AsString, ['','EM VENDA']) then
  begin

    VerificaSePodeAlteraDataSet(Cadastro);
    Cadastro.FieldbyName('CODCONTA_PDV').AsInteger := ACodConta;
    Cadastro.FieldByName('OPERACAO').AsString := 'EM PAGAMENTO';

    btnConfirmar.Click;
    WRLog('COMMIT(btnConfirmar.Click)! Mudou a Operação para: ' + Cadastro.FieldByName('OPERACAO').AsString);
//      TFrameHistorico.AdicionaHistorico(nil,
//          TFrmVenda(Self.Owner).UCHist_Cadastro,
//          'Chamou o PDV, trocou para operação:' + Cadastro.FieldByName('OPERACAO').AsString);

  end;

  WRLog('Vai Abrir o PDV');
  TFrmPDV_Pagamento.AbrirFrame(FFrmPDV_Pagamento, Self, key, DS, DS_Financeiro, ACodConta, AQuantCaixas, WREventosCadastro);
end;

procedure TFrame_Venda_Mestre.AdicionaProduto;
begin
  if libtnAdicionarProduto.Enabled then
    btnAdicionarProduto.Click;
end;

procedure TFrame_Venda_Mestre.AbrirObservacao;
begin
  if ((edtObeservacao.Focused) or (MemObservacao.Focused)) then
  begin
    if edtObeservacao.Tag = 0 then
    begin
      edtObeservacao.Tag := 1;
      PnlObservacaoVenda.Top  := edtObeservacao.Top + edtObeservacao.Height - PnlObservacaoVenda.Height - 2;
      PnlObservacaoVenda.Left := edtObeservacao.Left;
      PnlObservacaoVenda.Width := edtObeservacao.Width;
      Mostrar(PnlObservacaoVenda);
      MemObservacao.SetFocusWR;
    end else
    begin
      edtObeservacao.Tag := 0;
      Ocultar(PnlObservacaoVenda);
    end;
  end;
end;

procedure TFrame_Venda_Mestre.FrameKeyDown(Key: Word);
begin
  if key = VK_ESCAPE then
  begin
    if cxGrid3.Visible then
    begin
      Ocultar(cxGrid3);
      edtCodProduto.SetFocusWR;
    end;
    if PnlConfigCamposProduto.Visible then
      FechaPanelForm(PnlConfigCamposProduto);
    if SprMemoria.Visible then
    begin
      SprMemoria.Visible := False;
      Key := 0;
    end;
  end;

  if (Key = VK_F10) then
    AbrirDetalhesProdutoSelecionado;

end;

function TFrame_Venda_Mestre.VerificaOperadorDeCaixa(CodUsuario: Integer): Integer;
var
  QuerX :TFDQuery;
begin
  Result:= 0;
  QuerX  := GeraFDQuery;
  try

//
//  'SELECT first 1 cx.DATA_ABERTURA, cx.DATA_FECHAMENTO, cx.CODIGO, cx.CODCONTA from caixa cx ' +
//                      'where (cx.DATA_FECHAMENTO is null) and (cx.codusuario = :CodUsuario) ' +
//                      'ORDER BY DATA_ABERTURA DESC';  ORIGINAL

    QuerX.SQL.Text := 'SELECT first 1 cx.DATA_ABERTURA, cx.DATA_FECHAMENTO, cx.CODIGO, cx.CODCONTA from caixa cx ' +
                      'left join contas c on c.codigo = cx.codconta ' +
                      'where (cx.DATA_FECHAMENTO is null) and (c.codempresa = :CodEmpresa) ' +
                      'ORDER BY DATA_ABERTURA DESC';
    QuerX.ParamByName('CodEmpresa').Value := EmpresaAtiva;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
      Result := QuerX.FieldByName('CODCONTA').AsInteger;

    //VERIFICAR MULTIPLOS CAIXAS


  finally
    QuerX.Free;
  end;
end;

procedure TFrame_Venda_Mestre.btnExcluirClick(Sender: TdxTileControlItem);    // Não Pode ter SQL, Tem que ter Painel mostrando os passos para poder excluir
var                                                      // se trancar precisa ja ecaminhar, dar opções de excluir tudo se a pessoa quiser
  QuerX: TFDQuery;
  AFrmVendaTemporaria: TFrame_Venda_Mestre;                                     // Mostrar tela com as dependencias e deixar excluir
begin
  if Cadastro.RecordCount <> 0 then
  begin
    if ShowMessageWR('Deseja excluir esta venda?', MB_ICONQUESTION) = mrYes then
    begin
      if not UsuarioSenha(True, True) then
        Exit;
      WREventosCadastro.ValidaCamposObrigatorio(Self, 'EXCLUIR');
      //Movido para wrValidacoes
      if Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '' then
      begin
        ShowMessageWR('Não é possível excluir uma venda faturada.');
        Exit;
      end;
      if Cadastro.FieldByName('NOTAFISCAL').AsString <> '' then
      begin
        ShowMessageWR('Não foi possível excluir esta venda.' + sLineBreak + 'Já foi emitido nota fiscal.');
        Exit;
      end;
      if VerificaEM_PRODUCAOGrid(Venda_Produto) then
      begin
        ShowMessage('Existe produtos não finalizados na Produção');
        Exit;
      end;

   {   QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'select count(1) ' +
                          'from PRODUCAO ' +
                          'where (CODVENDA = :CodVenda) ' +
                          '      and (ATIVO = ''S'') ' +
                          '      and not (SITUACAO in (' + QuotedStr(ProducaoSituacaoToStr(psFinalizado)) + ', ' + QuotedStr(ProducaoSituacaoToStr(psCancelado)) + '))';
        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.Open;
        if not QuerX.Fields[0].AsInteger > 0 then
        begin
          ShowMessageWR('Não é possível excluir esta venda.' + sLineBreak +
                        QuerX.Fields[0].AsString + ' produto(s) está(ão) em produção.' + sLineBreak +
                        'Para excluir esta venda, cancele ou finalize os itens em produção.');
          Exit;
        end;
      finally
        QuerX.Free;
      end;   }
      //Mover para wrValidacoes, está bugando o Replace com o campo ATIVO = 'S', ele substitui o "INATIVO" para "IN'S'"
      if MatchStr(Cadastro.FieldByName('STATUS').AsString, ['INATIVO AGRUPADO']) then
      begin
          ShowMessageWR('Não é possível excluir esta venda.' + sLineBreak +
                        'A Venda Foi agrupada com o pedido: '+Cadastro.FieldByName('CODVENDA').AsString);
          Exit;
      end;

      {$REGION 'Reativar vendas Agrupadas'}
      if MatchStr(Cadastro.FieldByName('STATUS').AsString, ['ATIVO AGRUPADO']) then
      begin
        QuerX := GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'update VENDA V set STATUS = ''ATIVO'' ' +
                            'where (V.CODIGO in (select distinct VP.CODVENDA_ORIGINAL ' +
                            '                    from VENDA_PRODUTO VP ' +
                            '                    where (VP.CODVENDA = :Cod))) ' +
                            '      and (V.STATUS = ''INATIVO AGRUPADO'')';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ExecSQL;

          QuerX.SQL.Text := 'update PRODUCAO set CODVENDA = CODVENDA_ORIGINAL, ' +
                            '                  CODVENDA_PRODUTO = CODVENDA_PRODUTO_ORIGINAL, ' +
                            '                  CODVENDA_ORIGINAL = null, ' +
                            '                  CODVENDA_PRODUTO_ORIGINAL = null ' +
                            'where (CODVENDA = ''' + Cadastro.FieldByName('CODIGO').AsString + ''')';
          QuerX.ExecSQL;
        finally
          QuerX.Free;
        end;
       {
        Venda_Produto.Open;
        Venda_Produto.First;
        while not Venda_Produto.Eof do
        begin
          QuerX := GeraFDQuery(Transa);
          try
            QuerX.SQL.Text := 'select count(1) ' +
                              'from VENDA_PRODUTO VP ' +
                              'where (VP.CODIGO = :CODVENDA_PRODUTO) ' +
                              '      and (VP.CODVENDA = :CODVENDA)';
            QuerX.ParamByName('CODVENDA_PRODUTO').AsInteger := Venda_ProdutoCODVENDA_PRODUTO_ORIGINAL.AsInteger;
            QuerX.ParamByName('CODVENDA').AsString          := Venda_ProdutoCODVENDA_ORIGINAL.AsString;
            QuerX.Open;
            QuerX.Last;
            QuerX.First;
            if QuerX.Fields[0].AsInteger = 1 then
            begin
              QuerUp := GeraFDQuery(Transa);
              try
                QuerUp.SQL.Text := 'update VENDA_PRODUTO VP set VP.FATURADO = 0, VP.CODVENDA_FATURADO = null ' +
                                   'where (VP.CODIGO = :CODVENDA_PRODUTO) ' +
                                   '      and (VP.CODVENDA = :CODVENDA)';
                QuerUp.ParamByName('CODVENDA_PRODUTO').AsInteger := Venda_ProdutoCODVENDA_PRODUTO_ORIGINAL.AsInteger;
                QuerUp.ParamByName('CODVENDA').AsString          := Venda_ProdutoCODVENDA_ORIGINAL.AsString;
                QuerUp.ExecSQL;
              finally
                QuerUp.Free;
              end;
            end;
            QuerX.Close;
            QuerX.SQL.Text := 'select * ' +
                              'from VENDA_PRODUTO VP ' +
                              'where (VP.CODVENDA = :CODVENDA)';
            QuerX.ParamByName('CODVENDA').AsString := Venda_ProdutoCODVENDA_ORIGINAL.AsString;
            QuerX.Open;
            QuerX.First;
            while not QuerX.Eof do
            begin
              AFaturado := (QuerX.FieldByName('FATURADO').AsInteger = 1);
              if AFaturado then Break;
              QuerX.Next;
            end;
            if not AFaturado then
            begin
              QuerX.Close;
              QuerX.SQL.Text := 'select first 1 1 from VENDA where CODVENDA = :CODVENDA';
              QuerX.ParamByName('CODVENDA').AsString := Venda_ProdutoCODVENDA_ORIGINAL.AsString;
              QuerX.Open;

              QuerUp := GeraFDQuery(Transa);
              try
                QuerUp.SQL.Text := 'update VENDA set STATUS = :STATUS ' +
                                   'where CODIGO = :CODVENDA';
                QuerUp.ParamByName('STATUS').AsString   := IfThen(not QuerX.IsEmpty , 'ATIVO AGRUPADO', 'ATIVO');
                QuerUp.ParamByName('CODVENDA').AsString := Venda_ProdutoCODVENDA_ORIGINAL.AsString;
                QuerUp.ExecSQL;
              finally
                QuerUp.Free;
              end;
            end;
          finally
            QuerX.Free;
          end;
          Venda_Produto.Next;
        end;    }
      end;
      {$ENDREGION}
      if MatchStr(Cadastro.FieldByName('STATUS').AsString, ['ATIVO CRIADO'])
      and (VarToStr(Cadastro.FieldByName('CODVENDA_VINCULADA').AsString) <> '') then
      begin
        QuerX := GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'update VENDA V set V.STATUS = ''ATIVO'', V.IS_VENDA = ''S'' ' +
                            'where (V.CODIGO in (select distinct VP.CODVENDA_ORIGINAL ' +
                            '                    from VENDA_PRODUTO VP ' +
                            '                    where (VP.CODVENDA = :Cod)))';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ExecSQL;

          QuerX.Close;
          QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.PODE_FATURAR = ''S'' ' +
                            'where (VP.CODVENDA in (select distinct VP1.CODVENDA_ORIGINAL ' +
                            '                    from VENDA_PRODUTO VP1 ' +
                            '                    where (VP1.CODVENDA = :Cod)))';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ExecSQL;

//          QuerX.SQL.Text := 'update PRODUCAO set CODVENDA = CODVENDA_ORIGINAL, ' +
//                            '                  CODVENDA_PRODUTO = CODVENDA_PRODUTO_ORIGINAL, ' +
//                            '                  CODVENDA_ORIGINAL = null, ' +
//                            '                  CODVENDA_PRODUTO_ORIGINAL = null ' +
//                            'where (CODVENDA = ''' + Cadastro.FieldByName('CODIGO').AsString + ''')';
        finally
          QuerX.Free;
        end;
      end;


      QuerX := GeraFDQuery(TransaFD);
      try
        QuerX.SQL.Text := 'update FINANCEIRO set STATUS = ''INATIVO EXCLUIDA'' ' +
                          'where (CODPEDIDO = :CodPedido)';
        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      Cadastro.Edit;
      Cadastro.FieldByName('STATUS').AsString               := 'INATIVO EXCLUÍDO';
      Cadastro.FieldByName('ATIVO').AsString                := 'N';
      Cadastro.FieldByName('CODUSUARIO_EXCLUSAO').AsInteger := Usuario.Codigo;
      Cadastro.Post;
      TransaFD.Commit;
      Cadastro.Open;
    end;
  end else
    ShowMessageWR('Nenhuma Venda Selecionada.');
end;

procedure TFrame_Venda_Mestre.CancelarFaturamentoAgrupado;
var                                                      // se trancar precisa ja ecaminhar, dar opções de excluir tudo se a pessoa quiser
  QuerX: TFDQuery;
  AFrmVendaTemporaria: TFrame_Venda_Mestre;                                     // Mostrar tela com as dependencias e deixar excluir
begin
  if Cadastro.RecordCount <> 0 then
  begin
    if ShowMessageWR('Deseja desagrupar esta venda?', MB_ICONQUESTION) = mrYes then
    begin
      if not UsuarioSenha(True, True) then
        Exit;
      WREventosCadastro.ValidaCamposObrigatorio(Self, 'EXCLUIR');
      //Movido para wrValidacoes
      if Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '' then
      begin
        ShowMessageWR('Não é possível excluir uma venda faturada.');
        Exit;
      end;
      if Cadastro.FieldByName('NOTAFISCAL').AsString <> '' then
      begin
        ShowMessageWR('Não foi possível excluir esta venda.' + sLineBreak + 'Já foi emitido nota fiscal.');
        Exit;
      end;
      if VerificaEM_PRODUCAOGrid(Venda_Produto) then
      begin
        ShowMessage('Existe produtos não finalizados na Produção');
        Exit;
      end;

      if MatchStr(Cadastro.FieldByName('STATUS').AsString, ['ATIVO CRIADO'])
      and (VarToStr(Cadastro.FieldByName('CODVENDA_VINCULADA').AsString) <> '') then
      begin
        QuerX := GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'update VENDA V set V.STATUS = ''ATIVO'', V.IS_VENDA = ''S'' ' +
                            'where (V.CODIGO in (select distinct VP.CODVENDA_ORIGINAL ' +
                            '                    from VENDA_PRODUTO VP ' +
                            '                    where (VP.CODVENDA = :Cod)))';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ExecSQL;

          QuerX.Close;
          QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.PODE_FATURAR = ''S'' ' +
                            'where (VP.CODVENDA in (select distinct VP1.CODVENDA_ORIGINAL ' +
                            '                    from VENDA_PRODUTO VP1 ' +
                            '                    where (VP1.CODVENDA = :Cod)))';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ExecSQL;

        finally
          QuerX.Free;
        end;
      end;

      QuerX := GeraFDQuery(TransaFD);
      try
        QuerX.SQL.Text := 'update FINANCEIRO set STATUS = ''INATIVO EXCLUIDA'' ' +
                          'where (CODPEDIDO = :CodPedido)';
        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;

      Cadastro.Edit;
      Cadastro.FieldByName('STATUS').AsString                   := 'INATIVO CANCELADO';
      Cadastro.FieldByName('ATIVO').AsString                    := 'N';
      Cadastro.FieldByName('IS_FATURAMENTO_CANCELADO').AsString := 'S';
      Cadastro.FieldByName('CODUSUARIO_EXCLUSAO').AsInteger := Usuario.Codigo;
      Cadastro.Post;
      TransaFD.Commit;
      Cadastro.Open;
    end;
  end else
    ShowMessageWR('Nenhuma Venda Selecionada.');
end;

procedure TFrame_Venda_Mestre.BtnMenuClick(Sender: TObject);    //ok
begin
  inherited;
  MenuDireita.PopupOnMouse;
end;

procedure TFrame_Venda_Mestre.AbrirVendaOriginal1Click(Sender: TObject);
begin
  inherited;
  CloseOpen_AbrirRegistro(Venda_Produto.FieldByName('CODVENDA_ORIGINAL').AsString);      // Tenho dúvidas ainda se funciona
end;

// Atualização acho que funciona

{$ENDREGION}

{$REGION 'SEÇÃO 7: NFSe -'}

procedure TFrame_Venda_Mestre.DeletarNFSeClick(Sender: TObject);      // Testar
begin
  inherited;
end;



{$ENDREGION}

{$REGION 'SEÇÃO 8: Click e Exit, (GridProdutoTree DragOver, MoveTo, EndDrag), Eventos com Mouse, <<<-  Isso pode por que executa 1 unica vez'}

procedure TFrame_Venda_Mestre.GridProdutoTreeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;   // Reativar quando a composição estiver funcionando
  var Accept: Boolean);
var
  AHitTest: TcxTreeListHitTest;
begin
  inherited;
  Accept := (Sender = Source);
  if Accept then
  begin
    AHitTest := GridProdutoTree.HitTest;
    if AHitTest.HitAtNode then
    begin
      // aqui pode deixar auto drag ativado, se for o código
      GridProdutoTree.OptionsBehavior.AutoDragCopy := (TreeListGetValorNodeString(AHitTest.HitNode,'TEM_COMPOSICAO') <> 'S');
      Accept := TreeListGetValorNode(GridProdutoTree.FocusedNode,'CODIGO') <> TreeListGetValorNode(AHitTest.HitNode,'CODIGO');    // ùltima Rera, não pode jogar dentro dele mesmo
    end;
  end;
  // Algo do Tipo (Composição fixa)<<<<<<< if Pode_Alterar_Composição then
  // Aqui tem que saber se pode mudar a Composição a composição, do material sem o wizard
  // Aqui Não deixar arrastar para o mesmo item e se não for composição tem que duplicar
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
Var
  ATemFormula: Boolean;
  AUnidade : TUnidade;
begin
  inherited;
  // Isso é bacana, se tiver valor calculado não deixa alterar tbm, muito difícil de gerenciar isso
  if MatchObj(AColumn, [GridProdutoTreeQTDADEPECA, GridProdutoTreeCOMP, GridProdutoTreeLARG, GridProdutoTreeESPESSURA,
   GridProdutoTreeOBS_PRODUCAO, GridProdutoTreePATH, GridProdutoTreeCALENDARIO_DT_PREVISAO_FIM,
   GridProdutoTreeCODTIPO_IMPRESSAO, GridProdutoTreeCODACABAMENTO, GridProdutoTreeACABAMENTO,
   GridProdutoTreeCODLOCAL, GridProdutoTreeLOCAL, GridProdutoTreeOBS_PRODUCAO, GridProdutoTreeCODPRODUTO, GridProdutoTreeFORMULA]) then
  begin
    if Venda_Produto.FieldByName('EM_PRODUCAO').AsString = 'S' then
    begin
      Allow  := false;
    end;
//    Allow  := not ;
    if MatchObj(AColumn, [GridProdutoTreeQTDADEPECA, GridProdutoTreeCOMP, GridProdutoTreeLARG, GridProdutoTreeESPESSURA])then
    begin
      ATemFormula:=StartsStr('=', TreeListGetValorNodeString(GridProdutoTree.FocusedNode, TcxDBTreeListColumn(AColumn).DataBinding.FieldName + '_FORMULA'));
      if ATemFormula then
        GridProdutoTree.Hint:='Esse campo tem fórmula e não pode ser alterado por aqui.'+ LineBreak +
                    'Fórmula : '+  TreeListGetValorNodeString(GridProdutoTree.FocusedNode, TcxDBTreeListColumn(AColumn).DataBinding.FieldName + '_FORMULA')
      else
        GridProdutoTree.Hint:='';
      AColumn.Properties.ReadOnly := ATemFormula;
      if AColumn.Properties.Buttons.Count>0 then
        AColumn.Properties.Buttons.Items[0].Visible := ATemFormula;
      if Not ATemFormula then
      begin
        AUnidade := ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(GridProdutoTree.FocusedNode, 'UNIDADE'));
        if AColumn.ItemIndex =  GridProdutoTreeCOMP.ItemIndex then
          AColumn.Properties.ReadOnly  := Not AUnidade.CalcComprimento;
        if AColumn.ItemIndex =  GridProdutoTreeLARG.ItemIndex then
          AColumn.Properties.ReadOnly  := Not AUnidade.CalcLargura;
        if AColumn.ItemIndex =  GridProdutoTreeESPESSURA.ItemIndex then
          AColumn.Properties.ReadOnly  := Not AUnidade.CalcEspessura;
      end;
    end;
  end;


//  // Isso é bacana, se tiver valor calculado não deixa alterar tbm, muito difícil de gerenciar isso
//  if MatchObj(AViewInfo.Column, [GridComposicaoTreeQTDADEPECA, GridComposicaoTreeCOMP, GridComposicaoTreeLARG, GridComposicaoTreeESPESSURA]) then
//  begin
//    AColumn.StatusHint:= TreeListGetValorNodeString(GridProdutoTree.FocusedNode, TcxDBTreeListColumn(AViewInfo.Column).DataBinding.FieldName + '_FORMULA');
//    IF StartsStr('=', GridProdutoTree.Hint) then
//
////    ACanvas.Font.Color := $00C08000;
////    ACanvas.Brush.Color := clMoneyGreen;
//      ACanvas.Font.Style := ACanvas.Font.Style + [fsUnderline]
//    else
//      ACanvas.Font.Style := ACanvas.Font.Style - [fsUnderline];
//  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  ANode: TcxTreeListNode;
//  AHitTest: TcxTreeListHitTest;
//  HT: TcxCustomGridHitTest;
begin
  inherited;
 { ANode :=TcxDBTreeList(Sender).GetNodeAt(X, Y);
  if ANode = nil then     // tem código acima duplicado, acho que esse evento é melhor, quando tira o elemento do grupo
  begin
    VerificaSePodeAlteraDataSet(Cadastro);
    VerificaSePodeAlteraDataSet(Venda_Produto);
    Venda_Produto.FieldByName('PARENT').Clear;


    wrcalc.SprFormula.ActiveSheetAsTable.InsertRows(Venda_Produto.RecordCount+2, 1 );
    wrcalc.SprFormula.Refresh;
//        showmessage('Inseriu');

    wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(Venda_Produto.FieldByName('ORDEM').AsInteger+1, Venda_Produto.FieldByName('ORDEM').AsInteger+1 );
    wrcalc.SprFormula.ActiveSheetAsTable.CutToClipboard;
    wrcalc.SprFormula.Refresh;
//        showmessage('Cut');

    wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(Venda_Produto.RecordCount+2, Venda_Produto.RecordCount+2);
    wrcalc.SprFormula.ActiveSheetAsTable.PasteFromClipboard;
    wrcalc.SprFormula.Refresh;
//        showmessage('Past');

    wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(Venda_Produto.FieldByName('ORDEM').AsInteger+1, Venda_Produto.FieldByName('ORDEM').AsInteger+1);
    wrcalc.SprFormula.ActiveSheetAsTable.DeleteRows(Venda_Produto.FieldByName('ORDEM').AsInteger+1, 1);
    wrcalc.SprFormula.Refresh;


    Venda_Produto.FieldByName('ORDEM').AsInteger:= Venda_Produto.RecordCount+1;

    Venda_Produto.FieldByName('FORMULA').AsString       := '';
    Venda_Produto.FieldByName('COMP_FORMULA').Value     := Venda_Produto.FieldByName('COMP').Value;
    Venda_Produto.FieldByName('LARG_FORMULA').Value     := Venda_Produto.FieldByName('LARG').Value;
    Venda_Produto.FieldByName('ESPESSURA_FORMULA').Value:= Venda_Produto.FieldByName('ESPESSURA').Value;
    Venda_Produto.FieldByName('QTDADEPECA_FORMULA').Value:= Venda_Produto.FieldByName('QTDADEPECA').Value;
    Venda_Produto.Post;
    Venda_Produto.Refresh;
  end;      }
  // Aqui verificar se pode mover,
  {Depois de mover o node, é necessário executar o Build no Spr e copiar os dados de volta para o dataset.
   Mas para isso, o TreeList deve estar ordenado corretamente. Neste ponto ele não representa os dados corretos
   atualizados, então temos que forçar um FullRefresh para que os nodes tenham o AbsoluteIndex atualizados e assim
   poder executar o ReorderTreeList}
//  WRCalc.RecopiarFormulasAteOFim;



  WRCalc.SprFechaMemTables;  //CalculaProduto
  Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO

//  Venda_Produto.Refresh;
//  WRCalc.SprFechaMemTables;
  GridProdutoTree.FullRefresh;
  WRCalc.CalcBuild;
  WRCalc.SprCopiarFormula;
  if ds.State in dsEditModes then
    WRCalc.SuperCalc;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeMoveTo(Sender: TcxCustomTreeList; AttachNode: TcxTreeListNode;
  AttachMode: TcxTreeListNodeAttachMode; Nodes: TList; var IsCopy, Done: Boolean);
Var
  I, AFilhosOrigem, AFilhosDestino: Integer;
  NewParentValue, OldParent, ACodigoOrigem, ACodigoDestino: Variant;
  ATotal: Real;
  ANodeAduplicar: TcxTreeListNode;
  AProdutoMemoria: TFDMemTable;
//  ATreelistOrdenacao : TcxDBTreeList;
  AOrdemOrigem, AOrdemDestino: Integer;

  function PegaUltimaOrdem(ALastNode: TcxTreeListNode):Variant;
  begin
    Result:=TreeListGetValorNode(ALastNode,'ORDEM');
    if ALastNode.HasChildren then
      Result:=PegaUltimaOrdem(ALastNode.GetLastChild);
  end;
begin
  if Not WRCalc.SprVerificaOrdenacao then
    Exit;

//  for I := 0 to ANodeFocado.Count -1 do
//  begin
//    if TreeListGetValorNode(ANodeFocado.Items[i], 'CODPRODUTO') <> 'Diferença.' then
//      ValorTotalAtual:= ValorTotalAtual - VarToDoubleDef(TreeListGetValorNode(ANodeFocado.Items[i], 'Total'),0);
//  end;

{$REGION 'Grava Ordem'}
 { ATreelistOrdenacao:= TcxDBTreeList.Create(self);
  ATreelistOrdenacao.Assign(GridProdutoTree);
  for I := 0 to GridProdutoTree.SortedColumnCount -1 do
  begin
    ATreelistOrdenacao.Columns[GridProdutoTree.SortedColumns[i].ItemIndex]:=GridProdutoTree.SortedColumns[i];
  end;   }

  GridProdutoTree.ClearSorting;
  GridProdutoTree.GetColumnByFieldName('ORDEM').SortIndex := 0;
  GridProdutoTree.GetColumnByFieldName('ORDEM').SortOrder := soAscending;
  GridProdutoTree.Sorted:=True;

  GridProdutoTree.Refresh;
  WrCalc.CalcBuild;
{$ENDREGION}

  OldParent      := TreeListGetValorNode(AttachNode.Parent,'CODIGO');
  AFilhosOrigem  := WRCalc.LDeepCount(TcxTreeListNode(Nodes[0]));
  AFilhosDestino := WRCalc.LDeepCount(AttachNode);
  AOrdemOrigem   := TreeListGetValorNode(TcxTreeListNode(Nodes[0]),'ORDEM');
  AOrdemDestino  := TreeListGetValorNode(AttachNode,'ORDEM');
  ATotal         := TreeListGetValorNode(AttachNode,'TOTAL');
  ATotal         := ATotal+ TreeListGetValorNode(TcxTreeListNode(Nodes[0]),'TOTAL');

//  wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(AOrdemOrigem+1, AOrdemOrigem+AFilhosOrigem+1);
//  wrcalc.SprFormula.Refresh;

  if (AOrdemDestino = TcxTreeListNode(Nodes[0]).Parent.AbsoluteIndex + 1) then
  begin
    ShowMessageWR('Este item já faz parte desta composição.');
    abort;
  end;

  if (OldParent <> null) and (AFilhosDestino = 0) then
  begin
    ShowMessageWR('Não é possível inserir itens dentro da matéria-prima de outro produto.');
    abort;
  end;

  wrcalc.SprFormula.ActiveSheetAsTable.DeleteRows(AOrdemOrigem+1, AFilhosOrigem+1);
  wrcalc.SprFormula.Refresh;


//    showmessage('Deleta');

  //if (TcxTreeListNode(Nodes[0]).Parent.AbsoluteIndex + 1 <> TreeListGetValorNode(AttachNode,'ORDEM')) then
  //begin
    // WRCalc.SprCopiarNovaFormula(node a partir de, node movido, quantidade de casas que move)
    //WRCalc.SprCopiarNovaFormula(TcxTreeListNode(Nodes[0]), nil, -(AFilhosOrigem+5), -1)
  //end;

  if (TcxTreeListNode(Nodes[0]).Parent) <> (GridProdutoTree.Root) then // Totaliza os que sobram no produto composto
  begin
    if AOrdemDestino < AOrdemOrigem then
      WRCalc.SprCopiarNovaFormula(TcxTreeListNode(Nodes[0]), nil, -(AFilhosOrigem+2))
    else
      WRCalc.SprCopiarNovaFormula(TcxTreeListNode(Nodes[0]), nil, -(AFilhosOrigem+1))
  end;





  // Aqui tem que saber se vai duplicar, ou vai oegar o último registro do Pai.......

  if (TreeListGetValorNodeString(AttachNode,'TEM_COMPOSICAO') <> 'S') and (ShowMessageWR('O Valor de um produto composto é formado apenas pela sua própria composição,' + #13#10 +
    'para manter o preço do produto o sistema ira colocar' + #13#10 +
    'o próprio como composição para formar o valor corretamente. Deseja Continuar?', MB_ICONQUESTION) = mrYes) then
  begin
//      AOrdemDestino:= TreeListGetValorNode(AttachNode,'ORDEM');
    ANodeAduplicar:= AttachNode;

    wrcalc.SprFormula.ActiveSheetAsTable.InsertRows(AOrdemDestino+1, AFilhosOrigem+ 2);

    wrcalc.SprFormula.Refresh;
    WRCalc.SprCopiarNovaFormula(AttachNode, TcxTreeListNode(Nodes[0]), AFilhosOrigem+ 1);
    AProdutoMemoria := TFDMemTable.Create(nil);
    try
      Venda_Produto.DisableControls;
      Venda_Produto.Locate('CODIGO', TreeListGetValorNodeString(ANodeAduplicar,'CODIGO'),[]);
      AProdutoMemoria.CopyDataSet(Venda_Produto, [coStructure]);
      AProdutoMemoria.Insert;
      AProdutoMemoria.CopyRecord(Venda_Produto);
      AProdutoMemoria.Post;

      Venda_Produto.Insert;
      NewParentValue:= Venda_Produto.FieldByName('CODIGO').AsInteger;
      Venda_Produto.CopyRecord(AProdutoMemoria);
      Venda_Produto.FieldByName('CODIGO').AsInteger := NewParentValue;
      Venda_Produto.FieldByName('CODPRODUTO').AsString := Venda_Produto.FieldByName('CODPRODUTO').AsString + 'C';
      Venda_Produto.FieldByName('TEM_COMPOSICAO').AsString := 'S';
      Venda_Produto.FieldByName('TEM_COMPOSICAO_DRAGDROP').AsString := 'S';
      Venda_Produto.FieldByName('PARENT').Value := OldParent;
      Venda_Produto.FieldByName('ORDEM').AsFloat:= AOrdemDestino;

      Venda_Produto.FieldByName('Total').AsFloat:= ATotal;
      Venda_Produto.FieldByName('Valor').AsFloat:= ATotal/Venda_Produto.FieldByName('Quant').AsFloat;
      WrCalc.SprAplicaFormula(Venda_Produto, '', 0, 'UN', '', '', '', '', True);
      Venda_Produto.Post;   //POST-Calc

      Venda_Produto.Locate('CODIGO', TreeListGetValorNodeString(AttachNode,'CODIGO'),[]);
      Venda_Produto.Edit;
      Venda_Produto.FieldByName('PARENT').Value  := NewParentValue;
      WrCalc.SprAplicaFormula(Venda_Produto, 'IGUAL', 1, TreeListGetValorNodeString(ANodeAduplicar,'UNIDADE'), '', '', '', '', True);
      Venda_Produto.FieldByName('ORDEM').AsFloat := AOrdemDestino+(0.1/10000);

      // Falta aqui o Replace nos filhos, trocando R[-1] para quantas casa vai ser trocadas
    finally
      Venda_Produto.EnableControls;
      AProdutoMemoria.Free;
    end;
  end else
  begin
    AOrdemDestino:= PegaUltimaOrdem(AttachNode.GetLastChild);
    WrCalc.SprFormula.ActiveSheetAsTable.InsertRows(AOrdemDestino+2, AFilhosOrigem+ 1);

    WrCalc.SprFormula.Refresh;
    WrCalc.SprCopiarNovaFormula(AttachNode,nil, AFilhosOrigem +1);

    NewParentValue:=TreeListGetValorNodeString(AttachNode,'CODIGO');
  end;
//  if AOrdemOrigem < AOrdemDestino  then //Destino Menor Que o node Pai
//    wrcalc.SprFormula.ActiveSheetAsTable.InsertRows(AOrdemDestino+1 -AFilhosOrigem, AFilhosOrigem+ 1 );
//  else
//    wrcalc.SprFormula.ActiveSheetAsTable.InsertRows(AOrdemDestino+1, AFilhosOrigem+ 1);
//    Aqui soma os filhos e recalcula os indexs Finais
//  wrcalc.SprFormula.Refresh;

//    showmessage('Inseriu');

//  wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(AbOrigem+2, AbOrigem+AFilhosOrigem+2 );
//  wrcalc.SprFormula.ActiveSheetAsTable.CutToClipboard;
//  wrcalc.SprFormula.Refresh;
////    showmessage('Cut');
//
//  wrcalc.SprFormula.ActiveSheetAsTable.Selection.SelectRows(AbDestino+AFilhosOrigem+3, AbDestino+AFilhosDestino+3);
//  wrcalc.SprFormula.ActiveSheetAsTable.PasteFromClipboard;
//  wrcalc.SprFormula.Refresh;
////    showmessage('Past');

//    Seleciona o Item transferido, da um FOR na lista
  // Aqui tem que movimentar o pai apenas, e ordenar os filhos.
  Venda_Produto.Locate('CODIGO', TreeListGetValorNodeString(TcxTreeListNode(Nodes[0]),'CODIGO'),[]);
  Venda_Produto.Edit;
  Venda_Produto.FieldByName('PARENT').Value  := NewParentValue;


  WrCalc.SprAplicaFormula(Venda_Produto, '', 0, 'UN', '', '', '', '', True);

  Venda_Produto.FieldByName('ORDEM').AsFloat := AOrdemDestino+(1/10000);

//  if Not  ADuplicando then
//  begin
//    Venda_Produto.FieldByName('Total').AsFloat:= ATotal;
//    Venda_Produto.FieldByName('Valor').AsFloat:= ATotal/Venda_Produto.FieldByName('Quant').AsFloat;
//  end;
  Inc(AOrdemOrigem);
  Venda_Produto.Post;
  if TcxTreeListNode(Nodes[0]).Count > 0  then
  begin
    for I := 0 to AFilhosOrigem -1  do
    begin
//      Seleciona o Item
      Venda_Produto.Locate('ORDEM', AOrdemOrigem,[]);
      Venda_Produto.Edit;
      Venda_Produto.FieldByName('ORDEM').AsFloat := AOrdemDestino+(ValidaNumero((i+2)/10000)); // Venda_Produto.FieldByName('ORDEM').AsInteger
      Venda_Produto.Post;    //POST-Calc
      Inc(AOrdemOrigem);
    end;
  end;

//{$REGION 'Retorna Ordem'}
//  GridProdutoTree.ClearSorting;
//  for I := 0 to ATreelistOrdenacao.SortedColumnCount -1 do
//  begin
//    GridProdutoTree.Columns[ATreelistOrdenacao.SortedColumns[i].ItemIndex]:=ATreelistOrdenacao.SortedColumns[i];
//  end;
//  // Aqui deve retornar a Ordenação do Usuário
//  ATreelistOrdenacao.Free;
//{$ENDREGION}

  Done := True;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
//var
//  I: Integer;
begin
  inherited;
//  with TcxtreeGridDBTableView(TcxTreeList(Sender).GridView) do
//  AKeys := GridProdutoTree.DataController.DataSet.FieldValues['ORDEM'];
//    AKeys := Controller.FocusedRecord.Values[cxGrid1DBTableView1ID.Index];

{  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    AKeys := VarArrayCreate([0, Controller.SelectedRecordCount - 1], varVariant);
    for I := 0 to Controller.SelectedRecordCount - 1 do
      AKeys[I] := Controller.SelectedRecords[I].Values[cxGridCSSViewCSSORDERBY.Index];
  end;        }
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeTOTALPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarTotal(DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcão pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeTOTALValidateDrawValue(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
  AData: TcxEditValidateInfo);
var
  AValorMinimo: Double;
begin
  inherited;
  if Assigned(ANode) then
  begin
    if TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
    begin
      AValorMinimo := CalculaValorMinimoVenda(TreeListGetValorNodeAsFloat(ANode, 'VALOR_VENDA_MINIMO'));
      if AValorMinimo > 0 then
      begin
        if TreeListGetValorNodeAsFloat(ANode, 'TOTAL') < AValorMinimo then
        begin
          AData.ErrorType := eetWarning;
          AData.ErrorText := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
        end;
      end;
    end;
  end;
end;

function TFrame_Venda_Mestre.CalculaValorMinimoVenda(AValorMinimo:Double): Double;
var
  AMark: Double;
begin
  if Cadastro.FieldByName('PDESC').AsFloat > 0 then
  begin
    AMark :=(100/(100-Cadastro.FieldByName('PDESC').AsFloat));
    Result :=  roundto(((AValorMinimo * AMark)),-2);
  end else
    Result := AValorMinimo;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeVALORPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarValor(DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcão pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeVALORValidateDrawValue(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
  AData: TcxEditValidateInfo);
var
  AValorMinimo: Double;
begin
  inherited;
  if Assigned(ANode) then
  begin
    if not TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
    begin
      AValorMinimo := CalculaValorMinimoVenda(TreeListGetValorNodeAsFloat(ANode, 'VALOR_VENDA_MINIMO'));
      if AValorMinimo > 0 then
      begin
        if TreeListGetValorNodeAsFloat(ANode, 'VALOR') < AValorMinimo then
        begin
          AData.ErrorType := eetWarning;
          AData.ErrorText := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
        end;
      end;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeDblClick(Sender: TObject); // OK
begin
  inherited;
  AbrirDetalhesProdutoSelecionado;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeQTDADEPECAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormRendimento_Formula.Abrir(TWinControl(Sender), WRCalc, WRCalc.DBProduto, nil);
  GridProdutoTree.SetFocusWR;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeQUANTPropertiesChange(
  Sender: TObject);
begin
  inherited;
  VerificaEstoque(Venda_produto, Venda_produto);
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeQUANTValidateDrawValue(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
  AData: TcxEditValidateInfo);
begin
  inherited;
  if Assigned(ANode) then
  begin
    if TreeListGetValorNodeString(ANode, 'TEM_ESTOQUE_ABAIXO_MINIMO') = 'S' then
    begin
      AData.ErrorType := eetError;
      AData.ErrorText := 'Estoque Insuficiente';
    end;
  end;
end;


procedure TFrame_Venda_Mestre.AlterarValorCelula(TreeList: TcxDBTreeList; Node: TcxTreeListNode; Coluna: Integer; NovoValor: Variant);
begin
  // Certifique-se de que a coluna seja válida
  if (Coluna >= 0) and (Coluna < TreeList.VisibleColumnCount) then
  begin
    // Altere o valor da célula
    Node.Values[Coluna] := NovoValor;
  end;
end;


procedure TFrame_Venda_Mestre.CkConfigCamposProdutoPDescClick(Sender: TObject);  //Ok
begin
  inherited;
  liedtCalc_PDesc_Manual.Visible        := CkConfigCamposProdutoPDesc.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_PDESC',    CkConfigCamposProdutoPDesc.Checked);
end;

procedure TFrame_Venda_Mestre.CkConfigCamposProdutoTabPrecoClick(Sender: TObject);  //Ok
begin
  inherited;
  LibtnProdutoTabelaPreco.Visible  := CkConfigCamposProdutoTabPreco.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TABPRECO', CkConfigCamposProdutoTabPreco.Checked);
end;

procedure TFrame_Venda_Mestre.CkConfigCamposProdutoTipoDescClick(Sender: TObject);  //Ok
begin
  inherited;
  licbxCalc_Tipo_Desconto.Visible        := CkConfigCamposProdutoTipoDesc.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_TIPODESC', CkConfigCamposProdutoTipoDesc.Checked);
end;

procedure TFrame_Venda_Mestre.CkConfigCamposProdutoVDescClick(Sender: TObject);  //Ok
begin
  inherited;
  liedtCalc_VDesc_Manual.Visible := CkConfigCamposProdutoVDesc.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_VDESC',    CkConfigCamposProdutoVDesc.Checked);
end;

procedure TFrame_Venda_Mestre.btnChequeClick(Sender: TObject);    // Testar
begin
  inherited;
  if StartsText('CHEQU', cbxTipoPagto.Text) then
  begin
    PessoasChequesAutorizados.Open;
    ShowPanelForm(PnlCheque, bsSingle);
  end;
end;

procedure TFrame_Venda_Mestre.Motordeclculodoitem1Click(Sender: TObject);
begin
  TFrmExcel.Abrir(WRCalc, 'CalcVenda');
end;

procedure TFrame_Venda_Mestre.edtCodProdutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
// AQUI SÓ PODE CHAMAR OS PRODUTOS, QUE PODEM SER VENDIDO

  if Not Assigned(FConsultaProduto) then
    FConsultaProduto := TFrmProduto_Venda_Modal.Create(Self{TForm(Owner)});

  FConsultaProduto.ShowConsultaItem(Tag_Produto_Venda);
  AguardaFormFechar(FConsultaProduto);

  if (Codigo <> '')and(Codigo <> '0') then
    edtCodProduto.Text  := Codigo;
end;

procedure TFrame_Venda_Mestre.GridComposicaoTreeCODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);     // Erro nos relatórios de venda, FALHA <<<<<<<<----------------
Var
  ACodProduto : String;
begin
  inherited;
  VerificaSePodeAlteraDataSet(Venda_Produto);

  if Not Assigned(FConsultaProduto) then
    FConsultaProduto := TFrmProduto_Venda_Modal.Create(Self{TForm(Owner)});//TConsuProduto_Modal.Create(Self{TForm(Owner)});
  FConsultaProduto.ShowConsultaItem(Tag_Produto_Venda);
  AguardaFormFechar(FConsultaProduto);
  ACodProduto:=Codigo;

  if ShowMessageWR('Deseja Atualizar o Produto?', MB_ICONQUESTION) = mrYes then
  begin
    Venda_Produto.FieldByName('CODPRODUTO').Value:= ACodProduto;
//    RecaregarProduto1.Click;           // caralho por que isso foi desativado , falha grave, pois pode gerar um valor com outro código,?? pode pagar comissões pelo código do produto ????? isso é foda

    try
      PodeEditarHitorico_Editando(FCodigoHistorico);
      VerificaSePodeAlteraDataSet(Cadastro);
      AlteraDataSet(Venda_Produto);

      PmPrincipal.ProcuraProduto(ACodProduto, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);

      if PmPrincipal.IsEmpty then
        Exit;

      if PmPrincipal.Produto.FieldByName('TEM_COMPOSICAO').AsString = 'S' then
      begin
        ShowMessage('Não é possível substituir por item com composição');
        Exit;
      end;

      Venda_Produto.FieldByName('CODPRODUTO').AsString:=ACodProduto;
      PmPrincipal.Produto.Edit;
      DSCopiarCamposIguais(PmPrincipal.Produto, Venda_Produto, ['CODIGO', 'ORDEM', 'CODVENDA', 'NF_VICMSST', 'NF_IPI_VIPI', 'NF_VFRETE', 'VOUTRO', 'VDESC', 'VDESC_MANUAL', 'VOUTRO_MANUAL' ]);

    finally
      PmPrincipal.ProcuraProduto('', '', Empresa.FieldByName('CODIGO').AsInteger);
    end;

    WRCalc.SprFechaMemTables;
    Venda_Produto.Refresh;
    GridProdutoTree.FullRefresh;
    WRCalc.CalcBuild;
    WRCalc.SprCopiarFormula;
    if ds.State in dsEditModes then
      WRCalc.SuperCalc;
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeClick(Sender: TObject);     // Isso aqui é Foda, tentando informar que se nãresolver o problema de quem envia para produção nesse momento, recai sobre NOIS procurar saber quem cometeu o erro, ou em qual momento???? É FODA. mAIS AQUI COMEÇA OS ERROS QUE DEIXAM O SUPORTE, NO TELEFONE COM O CLIENTE PARA DESCOBRIR QUEM FEZ CAGADA. (FOI O PROGRAMADOR QUE DEIXOU PASSAR DESSE PONTO)
begin
  inherited;
//  if GridProdutoTree.FocusedNode.Parent <> GridProdutoTree.Root then
//    ShowMessage(TreeListGetValorNodeString(GridProdutoTree.FocusedNode.Parent, 'ORDEM'));
//  libtnCancelarProducao.Visible := Venda_produto.FieldByName('TEM_PRODUCAO_ENVIADO').AsString = 'S';
end;

procedure TFrame_Venda_Mestre.CadEnviarEmail1Click(Sender: TObject);   // Ok, Integração com o email, tem que copir o texto, Diplay value do campo, tudo como texto para funcionar a formatação
begin
//  inherited;  // Não pode usar o principal
  TFrmEmail.AbrirEmail(TForm(Self.Owner), Cadastro.fieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, [Cadastro, Endereco_Responsavel]); // Formatação do campos valores, no merge field
end;

procedure TFrame_Venda_Mestre.EdtFrenteVersoPorcentagemExit(Sender: TObject);  // frente e verso não pode, acho que encaixa o acrescimo
begin
  if (EdtFrenteVersoPorcentagem.Value > 0) then
    EdtFrenteVersoValor.Value := 0;
end;

procedure TFrame_Venda_Mestre.EdtFrenteVersoValorExit(Sender: TObject);  // frente e verso não pode, acho que encaixa o acrescimo
begin
  if (EdtFrenteVersoValor.Value > 0) then
    EdtFrenteVersoPorcentagem.Value := 0;
end;

procedure TFrame_Venda_Mestre.edtPedidoClienteExit(Sender: TObject);      // Isso não pode, se precisa do valor antes do post usa a validação
begin
  inherited;
  edtPedidoCliente.PostEditValue;
  VerificaPedidoCliente;
end;

procedure TFrame_Venda_Mestre.edtPedidoRepresentanteExit(Sender: TObject);  // Isso não pode, se precisa do valor antes do post usa a validação
begin
  inherited;
  edtPedidoRepresentante.PostEditValue;
  VerificaPedidoRepresentante;
end;

procedure TFrame_Venda_Mestre.edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(
  Sender: TObject);
var
  AOk: Boolean;
  ATipoContribuinte: TpcnindIEDest;
  ACor :TColor;
begin
  inherited;
  if not VerificaSeBloqueioCliente(ACor, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString) then
  begin
    EdtResponsavelÎPessoas.SetFocusWR;
    EdtResponsavelÎPessoas.Text := '';
    Exit;
  end;
  // edtPessoa_Responsavel_CodigoPropertiesEditValueChanged Nome Original ligado ao Componente de tela
  if (Cadastro.State in [dsEdit, dsInsert]){and not (edtPessoa_Responsavel_Codigo.Text = '') } then   //Codigo da responsável ainda não existe
  begin
    if not Endereco_Responsavel.Active then
      Endereco_Responsavel.Open
    else
      Endereco_Responsavel.Refresh;

    if not Produto_Tabela_Preco.Active then
      Produto_Tabela_Preco.Open
    else
      Produto_Tabela_Preco.Refresh;

    //Carregar a transportadora do cliente
    ATipoContribuinte := StrToindIEDest(AOk, Endereco_Responsavel.FieldByName('TIPO_CONTRIBUINTE').AsString);
    if not AOk then
      ATipoContribuinte := inContribuinte;

    Cadastro.FieldByName('NFE_CALCULA_DIFAL').AsString := IfThen(((Empresa.FieldByName('UF').AsString <> Endereco_Responsavel.FieldByName('UF').AsString) and (Endereco_Responsavel.FieldByName('UF').AsString <> 'EX')) and
                                             ((ATipoContribuinte = inContribuinte) or (Endereco_Responsavel.FieldByName('TIPO').AsString = 'F')),'S','N');


    Cadastro.FieldByName('NF_IE_EMIT').AsString  := Empresa.FieldByName('INSCIDENT').AsString;
    if (Trim(Cadastro.FieldByName('NF_IE_EMIT').AsString) = '') then
      Cadastro.FieldByName('NF_IE_EMIT').AsString := 'ISENTO';

    if Cadastro.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString = '' then  //Tras apenas 1 vez
    begin
      Cadastro.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString    := Endereco_Responsavel.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString;
      Cadastro.FieldByName('PESSOA_TRANSPORTADORA_TIPO').AsString      := Endereco_Responsavel.FieldByName('PESSOA_TRANSPORTADORA_TIPO').AsString;
      Cadastro.FieldByName('PESSOA_TRANSPORTADORA_SEQUENCIA').AsString := Endereco_Responsavel.FieldByName('PESSOA_TRANSPORTADORA_SEQUENCIA').AsString;
  //
//      Cadastro.FieldByName('NF_TRANSPORTADORA').AsString               := Endereco_Reponsavel.FieldByName('RAZAOSOCIAL').AsString;
      if Cadastro.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString <> '' then
         Cadastro.FieldByName('NF_TRANSPORTADORA_UF').AsString    := Procura('UF', 'PESSOAS', Endereco_Responsavel.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString);

    end;
    if Cadastro.FieldByName('NF_FRETEPORCONTA').AsString = '' then  //Tras apenas 1 vez
      AtualizaModalidadeFrete; // Isso ta errado, e cade o transporte
    Cadastro.FieldByName('RESPONSAVEL_BAIRRO').Value    := Endereco_Responsavel.FieldByName('BAIRRO').Value;
    Cadastro.FieldByName('RESPONSAVEL_NUMERO').Value    := Endereco_Responsavel.FieldByName('NUMERO').Value;
    Cadastro.FieldByName('RESPONSAVEL_ENDERECO').Value  := Endereco_Responsavel.FieldByName('ENDERECO').Value;
    Cadastro.FieldByName('RESPONSAVEL_CEP').Value       := Endereco_Responsavel.FieldByName('CEP').Value;
    Cadastro.FieldByName('RESPONSAVEL_INSCIDENT').Value := Endereco_Responsavel.FieldByName('INSCIDENT').Value;
    Cadastro.FieldByName('RESPONSAVEL_CNPJCPF').Value   := Endereco_Responsavel.FieldByName('CNPJCPF').Value;
    Cadastro.FieldByName('RESPONSAVEL_TIPO').Value      := Endereco_Responsavel.FieldByName('TIPO').Value;

    if Cadastro.FieldByName('PESSOA_AGENCIA_CODIGO').AsString = '' then
    begin
      Cadastro.FieldByName('PESSOA_AGENCIA_CODIGO').Value    := Endereco_Responsavel.FieldByName('PESSOA_AGENCIA_CODIGO').Value;
      Cadastro.FieldByName('PESSOA_AGENCIA_TIPO').Value      := Endereco_Responsavel.FieldByName('PESSOA_AGENCIA_TIPO').Value;
      Cadastro.FieldByName('PESSOA_AGENCIA_SEQUENCIA').Value := Endereco_Responsavel.FieldByName('PESSOA_AGENCIA_SEQUENCIA').Value;
      Cadastro.FieldByName('COMISSAO_AGENCIA').Value         := Endereco_Responsavel.FieldByName('COMISSAO_AGENCIA').Value;
    end;

    if Cadastro.FieldByName('PESSOA_REPRESENTANTE_CODIGO').AsString = '' then
    begin
      Cadastro.FieldByName('PESSOA_REPRESENTANTE_CODIGO').Value    := Endereco_Responsavel.FieldByName('PESSOA_REPRESENTANTE_CODIGO').Value;
      Cadastro.FieldByName('PESSOA_REPRESENTANTE_TIPO').Value      := Endereco_Responsavel.FieldByName('PESSOA_REPRESENTANTE_TIPO').Value;
      Cadastro.FieldByName('PESSOA_REPRESENTANTE_SEQUENCIA').Value := Endereco_Responsavel.FieldByName('PESSOA_REPRESENTANTE_SEQUENCIA').Value;
      Cadastro.FieldByName('COMISSAO_REPRESENTANTE').Value         := Endereco_Responsavel.FieldByName('COMISSAO_REPRESENTANTE').Value;
    end;

    if Cadastro.FieldByName('CODCONDICAOPAGTO').AsString = '' then
      Cadastro.FieldByName('CODCONDICAOPAGTO').Value              := Endereco_Responsavel.FieldByName('CODCONDICAOPAGTO').Value;

    Cadastro.FieldByName('CODCIDADE').Value                     := Endereco_Responsavel.FieldByName('CODCIDADE').Value;
    Cadastro.FieldByName('RESPONSAVEL_COMPLEMENTO').Value       := Endereco_Responsavel.FieldByName('COMPLEMENTO').Value;
    Cadastro.FieldByName('RESPONSAVEL_PROXIMIDADE').Value       := Endereco_Responsavel.FieldByName('PROXIMIDADE').Value;
    Cadastro.FieldByName('RESPONSAVEL_CODCIDADE').Value         := Endereco_Responsavel.FieldByName('CODCIDADE').Value;
    Cadastro.FieldByName('RESPONSAVEL_CIDADE').Value            := Endereco_Responsavel.FieldByName('CIDADE').Value;

    Cadastro.FieldByName('NF_UF').AsString       := Endereco_Responsavel.FieldByName('UF').AsString;
    Cadastro.FieldByName('NF_CRT_DEST').AsString := Endereco_Responsavel.FieldByName('CRT').AsString;

    Cadastro.FieldByName('RESPONSAVEL_UF').AsString             := Endereco_Responsavel.FieldByName('UF').AsString;
    Cadastro.FieldByName('RESPONSAVEL_TABELA_PRECO').Value      := Endereco_Responsavel.FieldByName('TABELA_PRECO').Value;
    Cadastro.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').Value := Endereco_Responsavel.FieldByName('TIPO_CONTRIBUINTE').Value;
    Cadastro.FieldByName('PERMITEVENDERPELOCUSTO').Value        := Endereco_Responsavel.FieldByName('PERMITEVENDERPELOCUSTO').Value;
    Cadastro.FieldByName('PCREDSN_PERMITE').Value               := Endereco_Responsavel.FieldByName('PCREDSN_PERMITE').Value;
    Cadastro.FieldByName('NF_FRETEPORCONTA').Value              := Endereco_Responsavel.FieldByName('NF_FRETEPORCONTA').Value;
    Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat          := TFrmFinanceiro.GetCreditoDisponivel(TransaFD, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
    if Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat > 0 then
      Cadastro.FieldByName('CREDITO').AsFloat                   := RoundTo(Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat, -2);
    // Esses dois campos só podem atualizar aqui
    Cadastro.FieldByName('CONSUMIDOR_FINAL').AsString           := Endereco_Responsavel.FieldByName('CONSUMIDOR_FINAL').AsString;
    Cadastro.FieldByName('SERVICO_ISS_RETIDO').Value            := Endereco_Responsavel.FieldByName('ISS_RETIDO').Value;
    Cadastro.FieldByName('NFSE_SITUACAO_TRIBUTACAO').Value      := Endereco_Responsavel.FieldByName('NFSE_SITUACAO_TRIBUTACAO').Value;
    Cadastro.FieldByName('RESPONSAVEL_INSC_MUNICIPAL').Value    := Endereco_Responsavel.FieldByName('INSC_MUNICIPAL').Value;
    Cadastro.FieldByName('TEM_PRODUTOR_RURAL').Value            := Endereco_Responsavel.FieldByName('TEM_PRODUTOR_RURAL').Value;

    if (Cadastro.FieldByName('STATUS').Value = 'ATIVO CRIADO') and
       (Cadastro.FieldByName('CODVENDA').AsString <> '')  then
      Cadastro.FieldByName('FATURA_PREVISAO').Value               := 'N'
    else
      Cadastro.FieldByName('FATURA_PREVISAO').Value               := Endereco_Responsavel.FieldByName('FATURA_PREVISAO').Value;

    Cadastro.FieldByName('RESPONSAVEL_EMAIL').Value            := Endereco_Responsavel.FieldByName('EMAIL_NFE').Value; //   RESPONSAVEL_EMAIL
    if Trim(Cadastro.FieldByName('RESPONSAVEL_EMAIL').AsString) = '' then
      Cadastro.FieldByName('RESPONSAVEL_EMAIL').Value :=  Endereco_Responsavel.FieldByName('EMAIL').Value;

    if TConfig.ReadBoolean('MUNICIPIO_PRESTACAO_SERVICO') then
    begin
      Cadastro.FieldByName('SERVICO_MUNICIPIO_INCIDENCIA').AsNotEmpty := Empresa.FieldByName('CODCIDADE').Value;
      Cadastro.FieldByName('SERVICO_CODPAIS').AsNotEmpty              := Empresa.FieldByName('CODPAIS').Value;
    end else
    begin
      Cadastro.FieldByName('SERVICO_MUNICIPIO_INCIDENCIA').AsVariant := Endereco_Responsavel.FieldByName('CODCIDADE').Value;
      Cadastro.FieldByName('SERVICO_CODPAIS').AsVariant              := Endereco_Responsavel.FieldByName('CODPAIS').Value;
    end;

    if not(Venda_Produto.RecordCount>0) and (Endereco_Responsavel.FieldByName('CODPRODUTO_TABELA').AsString <> '') then    // Se tiver produto inserirdo não pode ou não deve permitir, trocar a tabela de preço. Senão tem que ver os preços dos produtos inseridos
      CodProduto_TabelaCarregado(Endereco_Responsavel.FieldByName('CODPRODUTO_TABELA').Value);


    {Se tem um funcionário definido no cliente, então substitui o que está vinculado pelo Cadastro de Usuário}
    if Endereco_Responsavel.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString <> '' then
    begin
      Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').Value    := Endereco_Responsavel.FieldByName('PESSOA_FUNCIONARIO_CODIGO').Value;
      Cadastro.FieldByName('PESSOA_FUNCIONARIO_TIPO').Value      := Endereco_Responsavel.FieldByName('PESSOA_FUNCIONARIO_TIPO').Value;
      Cadastro.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').Value := Endereco_Responsavel.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').Value;
      Cadastro.FieldByName('COMISSAO').Value                     := Endereco_Responsavel.FieldByName('COMISSAO_FUNCIONARIO').Value;
    end;
    if Endereco_Responsavel.FieldByName('MENSAGEM_PARA_VENDA').AsString <> '' then
      ShowMessageWR(Endereco_Responsavel.FieldByName('MENSAGEM_PARA_VENDA').AsString);
    //Verifica se o responsavel tem valor de frete padrão e preenche se for o caso.
    if (Cadastro.FieldByName('DT_FATURAMENTO').IsNull)and not Endereco_Responsavel.FieldByName('VALOR_FRETE_PADRAO').IsNull and
       GrupoTabsPrincipal.Enabled and //(Rodrigues)(OS01022016003)(12/02/2016)
       not SameValue(Cadastro.FieldByName('NF_VFRETE').AsFloat, Endereco_Responsavel.FieldByName('VALOR_FRETE_PADRAO').AsFloat) and
       (ShowMessageWR('Atualizar o valor do frete para o padrão do cliente?' + sLineBreak +
                      'Valor do frete atual: ' + FormatFloat(DECIMAL_2M, Cadastro.FieldByName('NF_VFRETE').AsFloat) + sLineBreak +
                      'Valor do frete padrão: ' + FormatFloat(DECIMAL_2M, Endereco_Responsavel.FieldByName('VALOR_FRETE_PADRAO').AsFloat),
                      MB_ICONQUESTION) = mrYes) then
    begin
      Cadastro.FieldByName('NF_VFRETE').AsFloat := Endereco_Responsavel.FieldByName('VALOR_FRETE_PADRAO').AsFloat;
//      VendaCompraAlterarNF_VFRETE
    end;
    if (Cadastro.State = dsInsert) or(
       not Endereco_Responsavel.FieldByName('DESCONTO_PRODUTO').IsNull and
       not SameValue(Cadastro.FieldByName('PDESC').AsFloat, Endereco_Responsavel.FieldByName('DESCONTO_PRODUTO').AsFloat) and
       (ShowMessageWR('Atualizar o valor do Desconto para o padrão do cliente?' + sLineBreak +
                      'Valor do Desconto: ' + FormatFloat(DECIMAL_2P, Cadastro.FieldByName('PDESC').AsFloat) + sLineBreak +
                      'Valor do Desconto padrão: ' + FormatFloat(DECIMAL_2P, Endereco_Responsavel.FieldByName('DESCONTO_PRODUTO').AsFloat),
                      MB_ICONQUESTION) = mrYes)) then
    begin
      Cadastro.FieldByName('PDESC').AsFloat := Endereco_Responsavel.FieldByName('DESCONTO_PRODUTO').AsFloat;
      Cadastro.FieldByName('VDESC').AsFloat := PercValor(Cadastro.FieldByName('TOTAL').AsFloat, Cadastro.FieldByName('PDESC').AsFloat);
      WRCalc.SuperCalc;   //SuperCalc
    end;
    EdtResponsavelÎPessoas.PostEditValue;

//    DeterminaCorSePodeVender;
  end;
  libtnTabelaPreco.Visible := (Produto_Tabela_Preco.RecordCount > 0);
end;

procedure TFrame_Venda_Mestre.DeterminaCorSePodeVender;
var
  ACor: TColor;
begin       //Essa rotina é usada ao selecionar o cliente(codigo interno) para que o usuario ja saiba que tem pendencia
  try
    ACor := -1;
    if not VerificaSePodeVender(ACor, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Venda_Financeiro, False) then  // nÃO PODE TER ISSO AQUI, TEM QUE ESTAR NA TELA
    begin
      EdtResponsavelÎPessoas.SetFocusWR;
      Exit;
    end;
  finally
    if ACor = -1 then
      edtResponsavelÎPessoasÎRAZAOSOCIAL.Style.RestoreDefaults
    else
      edtResponsavelÎPessoasÎRAZAOSOCIAL.Style.Color := ACor;
  end;
end;

Class procedure TFrame_Venda_Mestre.AtualizaPessoas(AVenda, AEndereco :TDataSet);
begin
  if (AVenda.state in [DsEdit, DsInsert]) then
  begin
    AVenda.FieldByName('RESPONSAVEL_BAIRRO').Value                  := AEndereco.FieldByName('BAIRRO').Value;
    AVenda.FieldByName('RESPONSAVEL_NUMERO').Value                  := AEndereco.FieldByName('NUMERO').Value;
    AVenda.FieldByName('RESPONSAVEL_ENDERECO').Value                := AEndereco.FieldByName('ENDERECO').Value;

    if AVenda.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString <> '' then
       AVenda.FieldByName('NF_TRANSPORTADORA_UF').AsString          := Procura('UF', 'PESSOAS', AEndereco.FieldByName('PESSOA_TRANSPORTADORA_CODIGO').AsString);

    AVenda.FieldByName('RESPONSAVEL_EMAIL').Value                   := AEndereco.FieldByName('EMAIL_NFE').Value; //   RESPONSAVEL_EMAIL
    if Trim(AVenda.FieldByName('RESPONSAVEL_EMAIL').AsString) = '' then
      AVenda.FieldByName('RESPONSAVEL_EMAIL').Value :=  AEndereco.FieldByName('EMAIL').Value;

    AVenda.FieldByName('RESPONSAVEL_CEP').Value                     := AEndereco.FieldByName('CEP').Value;
    AVenda.FieldByName('RESPONSAVEL_INSCIDENT').Value               := AEndereco.FieldByName('INSCIDENT').Value;
    AVenda.FieldByName('RESPONSAVEL_CNPJCPF').Value                 := AEndereco.FieldByName('CNPJCPF').Value;
    AVenda.FieldByName('RESPONSAVEL_TIPO').Value                    := AEndereco.FieldByName('TIPO').Value;
    AVenda.FieldByName('RESPONSAVEL_COMPLEMENTO').Value             := AEndereco.FieldByName('COMPLEMENTO').Value;
    AVenda.FieldByName('RESPONSAVEL_PROXIMIDADE').Value             := AEndereco.FieldByName('PROXIMIDADE').Value;
    AVenda.FieldByName('RESPONSAVEL_CODCIDADE').Value               := AEndereco.FieldByName('CODCIDADE').Value;
    AVenda.FieldByName('RESPONSAVEL_CIDADE').Value                  := AEndereco.FieldByName('CIDADE').Value;

    if TConfig.ReadBoolean('MUNICIPIO_PRESTACAO_SERVICO') then
    begin
      AVenda.FieldByName('SERVICO_MUNICIPIO_INCIDENCIA').AsNotEmpty := Empresa.FieldByName('CODCIDADE').Value;
      AVenda.FieldByName('SERVICO_CODPAIS').AsNotEmpty              := Empresa.FieldByName('CODPAIS').Value;
    end else
    begin
      AVenda.FieldByName('SERVICO_MUNICIPIO_INCIDENCIA').AsVariant  := AEndereco.FieldByName('CODCIDADE').Value;
      AVenda.FieldByName('SERVICO_CODPAIS').AsVariant               := AEndereco.FieldByName('CODPAIS').Value;
    end;
    AVenda.FieldByName('RESPONSAVEL_UF').AsString                   := AEndereco.FieldByName('UF').AsString;
    AVenda.FieldByName('RESPONSAVEL_TABELA_PRECO').Value            := AEndereco.FieldByName('TABELA_PRECO').Value;
    AVenda.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').Value       := AEndereco.FieldByName('TIPO_CONTRIBUINTE').Value;

    AVenda.FieldByName('CONSUMIDOR_FINAL').AsString                 := AEndereco.FieldByName('CONSUMIDOR_FINAL').AsString;
    AVenda.FieldByName('SERVICO_ISS_RETIDO').Value                  := AEndereco.FieldByName('ISS_RETIDO').Value;
    AVenda.FieldByName('NFSE_SITUACAO_TRIBUTACAO').Value            := AEndereco.FieldByName('NFSE_SITUACAO_TRIBUTACAO').Value;
    AVenda.FieldByName('RESPONSAVEL_INSC_MUNICIPAL').Value          := AEndereco.FieldByName('INSC_MUNICIPAL').Value;

    if AVenda.FieldByName('TELEFONE').AsString = '' then
      AVenda.FieldByName('TELEFONE').Value  := AEndereco.FieldByName('FONE1').Value;
    if AVenda.FieldByName('TELEFONE').AsString = '' then
      AVenda.FieldByName('TELEFONE').Value  := AEndereco.FieldByName('FONE2').Value;


    if (AVenda.FieldByName('STATUS').Value = 'ATIVO CRIADO') and
       (AVenda.FieldByName('CODVENDA').AsString <> '')  then
      AVenda.FieldByName('FATURA_PREVISAO').Value                   := False
    else
      AVenda.FieldByName('FATURA_PREVISAO').Value                   := AEndereco.FieldByName('FATURA_PREVISAO').Value;

    AVenda.FieldByName('TEM_PRODUTOR_RURAL').Value                  := AEndereco.FieldByName('TEM_PRODUTOR_RURAL').Value;
  end
  else
    ShowMessage('Clique em Alterar Antes de Atualizar o Cadastro');
end;

procedure TFrame_Venda_Mestre.cbxTipo_VendaExit(Sender: TObject);   // Depois que seleciona o tipo de Venda, cai Direto no produto, agiliza a venda
begin
  inherited;
  if Venda_Produto.state <> dsInactive then
  begin
    edtCodProdutoPropertiesEditValueChanged(nil);
    edtCodProduto.SetFocusWR;
  end;
end;

procedure TFrame_Venda_Mestre.chkLocalEstoqueClick(Sender: TObject);
begin
  inherited;
  licbxProduto_Estoque_Local.Visible := chkLocalEstoque.Checked;
  TConfig.SaveBoolean('VENDA_CONFIG_CAMPO_PRODUTO_ESTOQUE_LOCAL', chkLocalEstoque.Checked);
end;

procedure TFrame_Venda_Mestre.cbxTipoPagtoExit(Sender: TObject);     // Financeiro, não vou olhar
begin
  inherited;
  if StartsText('CHEQU', cbxTipoPagto.Text) then
    btnChequeClick(nil);
end;

procedure TFrame_Venda_Mestre.cbxTipoExit(Sender: TObject);  // Financeiro, não vou olhar
begin
  inherited;
  if Venda_Financeiro.FieldByName('TIPO').AsString = 'RECEBIDA' then
    Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime := DataHoraSys
  else
    Venda_Financeiro.FieldByName('DATAPAGTO').AsString := '';
end;

procedure TFrame_Venda_Mestre.edtNotaFiscalExit(Sender: TObject);
begin                                                                    // se o outro setor precisa dessa informação lá deve ter o comando manual buscando atualizar seus dados
end;

procedure TFrame_Venda_Mestre.pnlSprMemoriaExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlSprMemoria);
end;

procedure TFrame_Venda_Mestre.edtRepresentanteÎPessoasÎCOMISSAOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AComissao: Double;
begin
  inherited;
  AComissao := DisplayValue;
  WRCalc.RecalculaProdutoComissaoRepresentante(AComissao);
//  WRCalc.CalcBuild;
end;

procedure TFrame_Venda_Mestre.edtResponsavelÎPessoasExit(Sender: TObject);    // Verificar, close Open, em tabela é foda, tem que saber onde ela é usada
begin                                                               // Ratrear tudo
  inherited;
  if DS.State in [dsEdit, dsInsert] then
  begin
    if (EdtResponsavelÎPessoas.Text <> '') and (edtResponsavelÎPessoasÎRAZAOSOCIAL.Text = '') then
    begin
      ShowMessageWR('Responsável não Cadastrado');
      EdtResponsavelÎPessoas.SetFocusWR;
    end;

  end;
end;

procedure TFrame_Venda_Mestre.edtAgenciaÎPessoasÎCOMISSAOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AComissao: Double;
begin
  inherited;
  AComissao := DisplayValue;
  WRCalc.RecalculaProdutoComissaoAgencia(AComissao);
//  WRCalc.CalcBuild;
end;

procedure TFrame_Venda_Mestre.edtAtendenteÎPessoasExit(Sender: TObject); // Ok, isso reduz meu suporte
begin                                                          // é chato para o cliente, mais é bom para nois, CUSTO benefício
  inherited;
  if (EdtAtendenteÎPessoas.Text <> '') and (LblAtendenteÎPessoasÎRAZAOSOCIAL.Caption = '') then
  begin
    ShowMessageWR('Funcionário não cadastrado');
    EdtAtendenteÎPessoas.SetFocusWR;
  end;
end;


procedure TFrame_Venda_Mestre.edtAtendenteÎPessoasÎCOMISSAOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AComissao: Double;
begin
  inherited;
  if DisplayValue <> '' then
    AComissao := DisplayValue
  else
    AComissao := 0;

  WRCalc.RecalculaProdutoComissaoFuncionario(AComissao);
//  WRCalc.CalcBuild;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 9: Validate, CellText , GetContentStyle, GetCellHint, UpdateEdit, DrawCell , GetDisplayText'}

procedure TFrame_Venda_Mestre.WRCalcVENDA(Sender: TObject; var DisplayValue: Variant;    // OK
  var ErrorText: TCaption; var Error: Boolean);
var
  ACodUsuarioQueAutorizou: Integer;
begin
  inherited;
//  if SolicitaPermissao('LbUCPermiteDarDesconto',ACodUsuarioQueAutorizou) then
  WRCalc.ValidaCampoVENDA(Sender);
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeFORMULAPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
Var
  AIndice: Integer;
begin
  inherited;
  // Acha o Node Pai e Pega os valores para a fórmula
  if (GridProdutoTree.FocusedNode.Parent <> GridProdutoTree.Root) then
  begin
    AIndice:= wrcalc.LGetRelativeIndex(GridProdutoTree.FocusedNode, GridProdutoTree.FocusedNode.Parent);

    WRCalc.SprAplicaFormula(Venda_Produto, DisplayValue,
                            AIndice,
                            TreeListGetValorNodeString(GridProdutoTree.FocusedNode.Parent, 'UNIDADE'),
                            '','','','');
  end else
  begin
    ShowMessage('Apenas Composições podem ter fórmula. ');
    DisplayValue:='';
  end;
end;

procedure TFrame_Venda_Mestre.EdtPrevisaoEntregaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  {if Error then
  begin
    Error := False;
    ErrorText := '';
    DisplayValue := '  /  /     00:00:00';
  end;  }
end;

procedure TFrame_Venda_Mestre.edtQTDADePecaPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

//  VerificaEstoque(PmPrincipal.Produto, PmPrincipal.Produto);
end;

procedure TFrame_Venda_Mestre.edtQTDADePecaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AIndexTabela: integer;
begin
  inherited;
  if not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', DisplayValue);     //CalculaProduto
  cbVariacao.EditValue := Produto_Preco.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.edtCompPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  pnlSprMemoria.Visible := True;
  WRCalcMemoria.ValidaCampoMedidas('COMP', DisplayValue);     //CalculaProduto
  cbVariacao.EditValue := Produto_Preco.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.edtTotalPropertiesEditValueChanged(
  Sender: TObject);
var
  AValorMinimo :Double;
begin
  inherited;
  if TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
  begin
    AValorMinimo :=  CalculaValorMinimoVenda(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat);
    if edtTotal.Value < AValorMinimo then
    begin
      edtTotal.style.Color := clred;
      edtTotal.hint := 'Valor minimo necessario: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
      edtTotal.Properties.Buttons[0].Visible  := True;
//      Error := True;
//      ErrorText := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
    end else
    begin
      edtTotal.style.Color := clWindow;
      edtTotal.hint := '';
      edtTotal.Properties.Buttons[0].Visible  := False;
    end;
  end else
    edtTotal.Properties.Buttons[0].Visible  := False;
end;

procedure TFrame_Venda_Mestre.edtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
Var
  AValorMinimo: Double;
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarTotal(DisplayValue);
end;

procedure TFrame_Venda_Mestre.edtResponsavelÎPessoasÎRAZAOSOCIALPropertiesValidate(Sender: TObject; var DisplayValue: Variant;// compotamento estranho, padronizar não sei o que faz mais ta fora do padrão
  var ErrorText: TCaption; var Error: Boolean);                                                                     // estudar esse comportamento no compfirmar
//var
//  AOk: Boolean;
//  ATipoContribuinte: TpcnindIEDest;
begin
  inherited;
  {Error := False;
  if not Empresa.EmiteNFe or not Endereco_Reponsavel.Active or (Endereco_Reponsavel.FieldByName('TIPO').AsString = 'O') then
    Exit;
  if Endereco_Reponsavel.RecordCount > 0 then
  begin
    ErrorText := 'Não será possivel emitir a NFe para essa pessoa pelos seguintes motivos:' + sLineBreak;
    if Trim(Endereco_Reponsavel.FieldByName('ENDERECO').AsString) = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou Endereço' + sLineBreak;
    end;
    if Trim(Endereco_Reponsavel.FieldByName('BAIRRO').AsString) = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou Bairro' + sLineBreak;
    end;
    if Trim(Endereco_Reponsavel.FieldByName('NUMERO').AsString) = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou Numero' + sLineBreak;
    end;
    if Trim(Endereco_Reponsavel.FieldByName('CEP').AsString) = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou CEP' + sLineBreak;
    end;
    if Trim(Endereco_Reponsavel.FieldByName('CNPJCPF').AsString) = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou CNPJ/CPF' + sLineBreak;
    end;
    //Movar para wrValidações, está bugando o Replace.
    //RESPONSAVEL_TIPO_CONTRIBUINTE
    ATipoContribuinte := StrToindIEDest(AOk, Endereco_Reponsavel.FieldByName('TIPO_CONTRIBUINTE').AsString);
    if not AOk then
      ATipoContribuinte := inContribuinte;
    if (ATipoContribuinte = inContribuinte) and
       ((Trim(Endereco_Reponsavel.FieldByName('INSCIDENT').AsString) = '') or
        (Trim(Endereco_Reponsavel.FieldByName('INSCIDENT').AsString) = 'ISENTO'))  then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou Inscrição para Cliente do Tipo Contribuinte' + sLineBreak;
    end;
//    if (Endereco_Reponsavel.FieldByName('FONE1').AsString.Length > 14) or (Endereco_Reponsavel.FieldByName('FONE1').AsString.Length < 6) then
//    begin
//      Error := True;
//      ErrorText := ErrorText + 'Telefone Precisa ser Maior que 6 e menor que 14' + sLineBreak;
//    end;
    if Endereco_Reponsavel.FieldByName('CIDADE').AsString = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou Cidade' + sLineBreak;
    end;
    if Endereco_Reponsavel.FieldByName('UF').AsString = '' then
    begin
      Error := True;
      ErrorText := ErrorText + 'Faltou UF' + sLineBreak;
    end;
  end;}
end;

procedure TFrame_Venda_Mestre.edtCodProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);    // testar mais tem 2 acessos ao mesmo sql
var                                                                                                      // revisar
  Codigo_Limpo: TCodBarras;
  ARes, ASQLFiltro, ACodigoCadastro : String;
begin
  inherited;
//  if Key = VK_F7 then
//    ConsultaOrcamentoAnterior;   // não ta funcionando

  if VK_F3 = Key then
  begin
    ACodigoCadastro:= edtCodProduto.Text;
    edtCodProduto.Clear;
    edtCodProduto.Text := TFrmProduto.Create(self).ShowCadastroModalItem(0, ACodigoCadastro);
  end;
  if (Key = VK_RETURN) then
  begin

    Codigo_Limpo := Barras_Trata(edtCodProduto.Text);
{    if Length(Codigo_Limpo.Codigo) = 13 then
      Codigo_Limpo.Codigo := Copy(Codigo_Limpo.Codigo, 1, 12);    }
    ConsultaProdutoGrid.Close;
    LimpaSQLWhere(ConsultaProdutoGrid);
    ConsultaProdutoGrid.SQL.Add('and (E.CODEMPRESA = ' + QuotedStr(EmpresaAtiva) + ')' +
                               'where ((P.CODIGO = ' + QuotedStr(Codigo_Limpo.Codigo) + ')' +
                               '      or (P.CODFABRICA = ' + QuotedStr(Codigo_Limpo.Codigo) + ')' +
                               '      or (P.CODIGOEAN = ' + QuotedStr(Codigo_Limpo.Codigo) + ')' + //Adicionado para ler o codigo de barras do codigo EAN tbm
                               '      or (P.DESCRICAO like ' + QuotedStr('%' + Codigo_Limpo.Codigo + '%') + '))' +
                               'and (P.ATIVO = ''S'')and(P.PODE_SER_VENDIDO = ''S'')');
    ASQLFiltro := GetSQLPermissaoTipo('PRODUTO_TIPO_NEGAR_USUARIO');
    if ASQLFiltro <> '' then
      ConsultaProdutoGrid.SQL.Add('and not (P.CODPRODUTO_TIPO in (' + ASQLFiltro + '))');
    ConsultaProdutoGrid.SQL.Add('order by P.DESCRICAO');
    ConsultaProdutoGrid.Open;
    if (ConsultaProdutoGrid.RecordCount > 1) and (edtProdutoDescricao.Text = '') then
      MostrarGridAbaixoDe(cxGrid3, edtCodProduto)
    else if ConsultaProdutoGrid.RecordCount = 1 then
    begin
      if Length(edtCodProduto.Text) = 13 then
      begin
        edtCodProduto.Text := ConsultaProdutoGrid.FieldByName('CODIGO').AsString;
        btnAdicionarProduto.Click;
      end else
      begin
        if Codigo_Limpo.Quantidade <> 1 then
          ARes := FloatToStr(Codigo_Limpo.Quantidade) +  '*';
        if Codigo_Limpo.Porcentagem <> 0 then
        begin
          if Codigo_Limpo.PorcentagemTipo = cbptAcrescimo then
            ARes := ARes + '+' + FloatToStr(Codigo_Limpo.Porcentagem)
          else
            ARes := ARes + FloatToStr(Codigo_Limpo.Porcentagem);
          ARes := ARes + '.';
        end;
        edtCodProduto.Text := ARes + ConsultaProdutoGrid.FieldByName('CODIGO').AsString;
      end;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.EdtEquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    AbreConsultaEquipamento
  end
  else
  if Key = VK_F3 then
    AbreCadastroEquipamento;
end;

procedure TFrame_Venda_Mestre.AbreConsultaEquipamento;
var
  ASQLWhere: string;
begin
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;

  ASQLWhere := 'PESSOA_CLIENTE_CODIGO = ' + QuotedStr(Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
  ConsultaTag_NormalModalFiltro(Self, Tag_Equipamento_Veiculo, ASQLWhere);
  EdtEquipamento.EditValue := Codigo;
  Cadastro.FieldByName('PLACA').AsString := Codigo;
end;

procedure TFrame_Venda_Mestre.AbreCadastroEquipamento;
begin
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;

  TFrmBase(TFrmEquipamento_Modal.Create(self)).ShowCadastroModalItem(Tag_Equipamento_Veiculo, EdtEquipamento.EditValue);

  // Precisa fazer isso para atualizar os labels
  EdtEquipamento.EditValue := '';
  Cadastro.FieldByName('PLACA').AsString := '';

  EdtEquipamento.EditValue := Codigo;
  Cadastro.FieldByName('PLACA').AsString := Codigo;
end;

procedure TFrame_Venda_Mestre.EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);   // Padronizar isso
begin
  inherited;
  if Key = VK_RETURN then
  begin
    Equipamento.Close;
    Equipamento.ParamByName('Desc').AsString := '%' + EdtEquipamentoÎEquipamentoÎDESCRICAO.Text + '%';
    Equipamento.Open;
    Mostrar(cxGrid5);
    cxGrid5.SetFocusWR;
  end;
end;

procedure TFrame_Venda_Mestre.cxGridViewFinanceiroCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);    // não é para ter isso, retirar esse código, achar outro método
begin
  inherited;
  if VarToStrDef(AViewInfo.GridRecord.Values[cxGrid1DBTableView1TIPOPAGTO.Index], '') = 'CRÉDITO' then
  begin
    ACanvas.Font.Color  := $00000095;
    ACanvas.Brush.Color := $00FFB366;
    if (AViewInfo.Item = cxGrid1DBTableView1CODCONTA) or (AViewInfo.Item = cxGrid1DBTableView1CONTA) then
      ACanvas.Brush.Color := clSilver;
    if (AViewInfo.Item = cxGrid1DBTableView1TIPOPAGTO) or (AViewInfo.Item = cxGridViewFinanceiroVALOR) then
      ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
  end;
end;

procedure TFrame_Venda_Mestre.cxGrid1DBTableView1TIPOPAGTOPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);        // testar isso pois tem sql preenchendo, isso não pode
Var
  CodConta : Variant;
begin                                                  // tem que estar na função que traz a interação com o outro módulo
  inherited;                                           // Padronizar
  if DS_Financeiro.State in dsEditModes then
  begin
    Venda_Financeiro.FieldByName('TIPOPAGTO').Value := DisplayValue;
    CodConta:= SQLLocal_VerificaContaPadrao(VarToStrDef(DisplayValue,''));
    if CodConta <> Null then
      Venda_Financeiro.FieldByName('CODCONTA').Value  := CodConta;
  end;
end;

procedure TFrame_Venda_Mestre.cxGridViewFinanceiroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);     // Não sei onde acessa
begin                                                                                                // não sei esses eventos melhor não existir
  inherited;                                                                                         //achar outra forma de se expressar ou não vai ter isso
  if Key in [VK_RETURN, VK_UP, VK_DOWN] then
    cxGridViewFinanceiro.DataController.SetFocus;
end;

procedure TFrame_Venda_Mestre.cxGridViewFinanceiroMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);      // eSTRANHO  morrer
var                                                                                                     // NÃO DEVE EXISTIR
  APoint : TPoint;                                                                                      // não sei esses eventos melhor não existir
  AHitTest : TcxCustomGridHitTest;                                                                      //achar outra forma de se expressar ou não vai ter isso
  AMsg : string;
begin
  GridFinanceiro.Hint := '';
  AHitTest := cxGridViewFinanceiro.GetHitTest(X, Y);
  if AHitTest is TcxGridRecordCellHitTest then
  begin
    AMsg := VarToStrDef(TcxGridRecordCellHitTest(AHitTest).GridRecord.Values[cxGridViewFinanceiroMsgFinanceiro.Index], '');
    if AMsg <> '' then
    begin
      GridFinanceiro.Hint     := AMsg;
      GridFinanceiro.ShowHint := True;
      GetCursorPos(APoint);
      Application.ActivateHint(APoint);
      Exit;
    end;
  end;
  Application.HideHint;
end;

procedure TFrame_Venda_Mestre.cxGridDBTableView2TcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);     // Não sei, achar isso
begin
  inherited;
  AText := 'Total: R$ ' + FormatFloat(DECIMAL_2, VarToDoubleDef(AValue, 0));
end;

procedure TFrame_Venda_Mestre.cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);     // Acho que é o grid consulta de produto
begin
  inherited;
  if Key in [VK_RETURN, VK_UP, VK_DOWN] then     // Trocar o Nome do Grid, para saber o que ele é
    cxGrid3.SetFocusWR;
  if Key = VK_RETURN then
    cxGridDBTableView3DblClick(Self);
end;

procedure TFrame_Venda_Mestre.cbxTipo_VendaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);      // Revisar a aplicação de padroes vindo da venda, todos esses campos devem ser registrados só nesse evento
var
  QuerX: TFDQuery;
begin
  inherited;
 { if (Cadastro.State <> dsInsert) and not UCControls1.GetComponentRight(PoupTornarOramento).Visible then
  begin
    QuerX := SQLVendaTipoModeloBuscaPelaVendaTipo(cbxTipo_Venda.text);
    try
      if VendaTipoModeloStrToEnum(QuerX.FieldByName('MODELO').AsString) = vtmOrcamento then
      begin
        GeraExcecao('Você não possui permissão de mudar essa venda para tipos de ORÇAMENTO.');
  //      Error:=True;
      end;
    finally
      QuerX.Free;                                                                                   F
    end;
  end;     }
  if (ds.State = dsEdit) then
  begin
    if (cbxTipo_Venda.text <> Cadastro.FieldByName('VENDA_TIPO').AsString) and (Cadastro.FieldByName('VENDA_TIPO').AsString <> '')and (Cadastro.FieldByName('SEQUENCIA').AsInteger <> 0) then
    begin
      ShowMessageWR('A sequência vai ser perdida.');
      Cadastro.FieldByName('SEQUENCIA').Clear;
    end;
  end;
end;

procedure TFrame_Venda_Mestre.CbParcelaTipoPagtoPropertiesValidate(Sender: TObject;    // Financeiro, não vou olhar
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if ValidaAlteracao(Sender) then
    Venda_Financeiro.FieldByName('CODCONTA').Value := SQLLocal_VerificaContaPadrao(DisplayValue);
end;

procedure TFrame_Venda_Mestre.edtEspessuraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  WRCalcMemoria.ValidaCampoMedidas('ESPESSURA', DisplayValue);     //CalculaProduto
  cbVariacao.EditValue := Produto_Preco.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.cxGridDBTableView1DataControllerSummaryFooterSummaryItemsSummary(ASender: TcxDataSummaryItems;     // Financeiro não vou olhar
  Arguments: TcxSummaryEventArguments; var OutArguments: TcxSummaryEventOutArguments);
//var
//  ATipo: Variant;
//  AValor: Double;
//  AItem: TcxGridTableSummaryItem;
begin
{  AItem := TcxGridTableSummaryItem(Arguments.SummaryItem);
  if (AItem.Column = cxGridFinanceiroVALOR) and (AItem.Kind = skSum) then
  begin
    ATipo := VarToStrDef(cxGridFinanceiro.DataController.Values[Arguments.RecordIndex, cxGrid1DBTableView1TIPO.Index], '');
    if FinanceiroTipoStrToEnum(ATipo) in [fitPaga, fitAPagar] then
    begin
      AValor := VarToDoubleDef(cxGridFinanceiro.DataController.Values[Arguments.RecordIndex, cxGridFinanceiroVALOR.Index], 0);
      OutArguments.Value := -AValor;
    end;
  end;   }
end;

procedure TFrame_Venda_Mestre.edtValorPropertiesEditValueChanged(
  Sender: TObject);
var
  AValor, AValorMinimo : Double;
begin
  inherited;
  if not TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
  begin
    AValorMinimo :=  CalculaValorMinimoVenda(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat);
    if edtValor.Value < AValorMinimo then
    begin
      edtValor.style.Color := clred;
      edtValor.hint := 'Valor minimo necessario: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
      edtValor.Properties.Buttons[0].Visible  := True;
//      Error := True;
//      ErrorText := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
    end else
    begin
      edtValor.style.Color := clWindow;
      edtValor.hint := '';
      edtValor.Properties.Buttons[0].Visible  := False;
    end;
  end else
    edtValor.Properties.Buttons[0].Visible  := False;
end;


procedure TFrame_Venda_Mestre.AplicaValorMinimoButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if not TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
    WRCalcMemoria.ProdutoAlterarValor(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat)
  else
    WRCalcMemoria.ProdutoAlterarTotal(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat)
end;



procedure TFrame_Venda_Mestre.EdtValorButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
//  WRCalcMemoria.ProdutoAlterarValor(PmPrincipal.Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat);
end;

procedure TFrame_Venda_Mestre.AlteraValor(AValor: double);
begin
  WRCalcMemoria.ProdutoAlterarValor(AValor);
end;

procedure TFrame_Venda_Mestre.edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  ACodUsuarioQueAutorizou: Integer;
  QuerX: TFDQuery;
  AValorMinimo: Double;
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarValor(DisplayValue);
end;

procedure TFrame_Venda_Mestre.edtVendaTotalPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if not (Cadastro.State in [dsEdit, dsInsert]) then
    Exit;
  if (Cadastro.FieldByName('NF_VFRETE').AsFloat > 0) or
     (Cadastro.FieldByName('POUTRO').AsFloat > 0) or
     (Cadastro.FieldByName('PDESC').AsFloat > 0)
  then
  begin
    Cadastro.FieldByName('VDESC').AsFloat := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('PDESC').AsFloat);
    Cadastro.FieldByName('VOUTRO').AsFloat := PercValor(Cadastro.FieldByName('SUB_TOTAL').AsFloat, Cadastro.FieldByName('POUTRO').AsFloat);
    WRCalc.RecalcularTodosOsProdutos;
    WRCalc.SuperCalc;
  end;
end;

procedure TFrame_Venda_Mestre.edtCalc_PDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarPDesc_Manual(DisplayValue);     //CalculaProduto
end;

procedure TFrame_Venda_Mestre.edtCalc_VDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ProdutoAlterarVDesc_Manual(DisplayValue);
end;

procedure TFrame_Venda_Mestre.GridComposicaoTreeQTDADEPECAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('QTDADEPECA', DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcão pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeCOMPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('COMP', DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcão pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeESPESSURAPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('ESPESSURA', DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcão pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeExpanded(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode);
begin
  inherited;
  if TConfig.ReadBoolean('NAO_PERMITE_VER_COMPOSICAO_VENDA') then
  begin
    if not Principal.FrmPrincipal.Action_Composicao.enabled then
      GridProdutoTree.Root.Collapse(True);
  end;
  if FImprimindo = 'S' then
    GridProdutoTree.Root.Collapse(True);
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeExpanding(
  Sender: TcxCustomTreeList; ANode: TcxTreeListNode; var Allow: Boolean);
begin
  inherited;
  if TConfig.ReadBoolean('NAO_PERMITE_VER_COMPOSICAO_VENDA') then
  begin
    if not Principal.FrmPrincipal.Action_Composicao.enabled then
      GridProdutoTree.Root.Collapse(True);
  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeLARGPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if Venda_Produto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('LARG', DisplayValue);
    WRCalc.SuperCalc;   // << Soma no produto principal deve estar dentro dessa funcõa pois sempre deve somar no pai, até onde a cerveja deixa eu penssar é assim
  end;
end;

procedure TFrame_Venda_Mestre.edtLargPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if not (PmPrincipal.Produto.State in [dsEdit, dsInsert]) then exit;

  WRCalcMemoria.ValidaCampoMedidas('LARG', DisplayValue);     //CalculaProduto
  cbVariacao.EditValue := Produto_Preco.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; // TODO: Isso esta sendo migrado
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
const
  LCORES: TArray<TColor> = [clWebGhostWhite, clWebLavender, clWebBeige, clWebCornSilk, clWebIvory, clWebLavenderBlush];
Var
  AFormula : String;
  AIndice  : integer;
  AUnidade : TUnidade;
  AValorMinimo : Double;
begin
  inherited;
  if not (AViewInfo.Column = GridProdutoTreeQUANT) then
    ACanvas.Brush.Color := LCORES[AViewInfo.Node.Level mod 6];
  if (AViewInfo.Node.Parent <> GridProdutoTree.Root) then
  begin
    if (AViewInfo.Column.ItemIndex in [GridProdutoTreeQTDADEPECA.ItemIndex,
                                       GridProdutoTreeCOMP.ItemIndex,
                                       GridProdutoTreeLARG.ItemIndex,
                                       GridProdutoTreeESPESSURA.ItemIndex ]) then
    begin
      AFormula := TreeListGetValorNodeString(AViewInfo.Node, TcxDBTreeListColumn(AViewInfo.Column).DataBinding.FieldName + '_FORMULA');
      if StartsStr('=', AFormula) then
      begin
        AIndice:= WRCalc.LGetRelativeIndex(AViewInfo.Node,AViewInfo.Node.Parent);
        if (pos('R[-'+AIndice.ToString, AFormula)>0)or
           (pos('C[-'+AIndice.ToString, AFormula)>0) then
  //      TreeListGetValorNode(GridProdutoTree.FocusedNode,'CODIGO');
          ACanvas.Brush.Color := clWebLightGreen
        else
          ACanvas.Brush.Color := clWebRed;
        if TreeListGetValorNodeString(AViewInfo.Node, 'FORMULA')= 'PERSONALIZADA' then
          ACanvas.Brush.Color := clWebYellow
      end;
    end;
  end;
  if (AViewInfo.Column = GridProdutoTreeORDEM) then
  begin
    if TreeListGetValorNodeAsFloat(AViewInfo.Node, 'ORDEM') <> AViewInfo.Node.AbsoluteIndex+1  then
    begin
//      wrcalc.LGetRelativeIndex(Sender,)
//      TreeListGetValorNode(GridProdutoTree.FocusedNode,'CODIGO');
      ACanvas.Brush.Color := clWebRed;
    end else
      ACanvas.Brush.Color := clWebLightGreen;
  end;

  if AViewInfo.Column = GridProdutoTreeCUSTO then
  begin
    if not AViewInfo.Selected then
      ACanvas.Brush.Color := clCream;
  end;
  if AViewInfo.Column = GridProdutoTreeQUANT then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'TEM_ESTOQUE_ABAIXO_MINIMO') = 'S' then
      ACanvas.Brush.Color := clRed;
  end;
  if (AViewInfo.Column = GridProdutoTreeVALOR)then
  begin
    if not AViewInfo.Selected then
      ACanvas.Brush.Color := clMoneyGreen;
    ACanvas.Font.Style := [fsBold];



//    if not TConfig.ReadBoolean('VALOR_MINIMO_TOTAL_ITEM') then
//    begin
//      AValorMinimo := CalculaValorMinimoVenda(TreeListGetValorNodeAsFloat(AViewInfo.Node, 'VALOR_VENDA_MINIMO'));
//      if TreeListGetValorNodeAsFloat(AViewInfo.Node, 'VALOR') < AValorMinimo then
//      begin
//        ACanvas.Brush.Color := clRed;
//        AViewInfo.Column.StatusHint := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',AValorMinimo);
//
////          AViewInfo. := 'Valor Abaixo do Mínimo Permitido para Venda: '+ FormatFloat('R$##,###,##0.00',CalculaValorMinimoVenda(Venda_Produto));
//      end;
//    end;

  end;
  if (AViewInfo.Column = GridProdutoTreeTOTAL) then
  begin
    if not AViewInfo.Selected then
    begin
      ACanvas.Font.Color := $00C08000;
      ACanvas.Brush.Color := clMoneyGreen;
    end;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.Column = GridProdutoTreeCODNF_CFOP)
     and (TreeListGetValorNodeString(AViewInfo.Node, 'PARENT') = '') then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'CODNF_CFOP') = '' then
      ACanvas.Brush.Color := clWebRed
    else
      ACanvas.Brush.Color := clWebGhostWhite;
  end;
  if (AViewInfo.Column = GridProdutoTreeCODNF_CST)
     and (TreeListGetValorNodeString(AViewInfo.Node, 'PARENT') = '') then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'CODNF_CST') = '' then
      ACanvas.Brush.Color := clWebRed
    else
      ACanvas.Brush.Color := clWebGhostWhite;
  end;
  if (AViewInfo.Column = GridProdutoTreeCODNF_NCM)
     and (TreeListGetValorNodeString(AViewInfo.Node, 'PARENT') = '') then
  begin
    if TreeListGetValorNodeString(AViewInfo.Node, 'CODNF_NCM') = '' then
      ACanvas.Brush.Color := clWebRed
    else
      ACanvas.Brush.Color := clWebGhostWhite;
  end;
  if AViewInfo.Selected then
  begin
    ACanvas.Font.Color := $00484848;
    ACanvas.Font.Style := [fsBold];
  end;
  try
    if TreeListGetValorNodeString(AViewInfo.Node, 'TEM_FORMULACORRETA') = 'N' then
      ACanvas.SetBrushColor(clRed);
  except

  end;
end;

procedure TFrame_Venda_Mestre.GridProdutoTreeCustomDrawIndentCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
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


{$ENDREGION}

initialization
  RegisterClass(TFrame_Venda_Mestre);

end.


