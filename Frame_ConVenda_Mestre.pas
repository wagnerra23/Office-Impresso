unit Frame_ConVenda_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxCustomData, Data.DB, cxDBData,
  Vcl.Menus, dxLayoutContainer, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinscxPCPainter, cxStyles, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxScreenTip, System.Actions, dxCustomHint, cxHint, dxServerModeData, dxLayoutLookAndFeels,
  frxClass, dxPSCore, dxPScxCommon, cxDateProfileButton, cxCalendar, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  cxGridServerModeTableView, cxGridCustomView, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, cxClasses, dxServerModeFireDACDataSource,
  FireDAC.Comp.DataSet, Vcl.ExtCtrls, cxDropDownEdit, dxGDIPlusClasses, cxLabel, cxCurrencyEdit,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, frxDBSet, Vcl.DBCtrls, cxCheckBox, Rotinas, UCBase, Vcl.Buttons,
  Vcl.ActnList, FireDAC.UI.Intf, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  wrConversao, ConsM, cxDataControllerConditionalFormattingRulesManagerDialog, cxEditRepositoryItems,
  dxActivityIndicator, cxGridChartView, cxGridDBChartView, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.ImageList, Vcl.ImgList, cxImageList, dxStatusBar, uButtonFlat,
  cxGridViewLayoutContainer, dxTokenEdit, WREventos, dxDateRanges, UCHistDataset,
  uWRFormataCamposDataSet, dxPSRichEditControlLnk, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxBarEditItem, dxRibbon, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxOfficeSearchBox, dxRibbonStatusBar, dxBarExtItems, wrFuncoes_Office,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper, cxTL, cxImageComboBox, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, Frame_Con, dxCustomTileControl, dxTileControl,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TTipoCopiaPedido = (tcpAprovar, tcpNotaFiscal, tcpFaturar);

  TFrame_ConsuVenda_Mestre = class(TConsu_Frame)
    DSVendaProduto: TDataSource;
    LiMemoObservacao: TdxLayoutItem;
    MemoObservacao: TDBMemo;
    GrupoRodape: TdxLayoutGroup;
    SplitterVendaProdutoObservacao: TdxLayoutSplitterItem;
    SplitterRodape: TdxLayoutSplitterItem;
    LbUCLiberarVerTodasVendas: TLabel;
    LblTotal: TcxLabel;
    LayoutControlLiTotal: TdxLayoutItem;
    GrupoTotal: TdxLayoutGroup;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1TELEFONE: TcxGridDBColumn;
    GridConsultaDBTableView1VENDA_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1NOTAFISCAL: TcxGridDBColumn;
    GridConsultaDBTableView1CONDICAOPAGTO: TcxGridDBColumn;
    GridConsultaDBTableView1STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1PROJETO_DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1CONTATO: TcxGridDBColumn;
    GridConsultaDBTableView1PLACA: TcxGridDBColumn;
    GridConsultaDBTableView1CHASSI: TcxGridDBColumn;
    GridConsultaDBTableView1MOTORISTA_DOCUMENTO_NUMERO: TcxGridDBColumn;
    GridConsultaDBTableView1FANTASIA: TcxGridDBColumn;
    GridConsultaDBTableView1FUNCIONARIO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1CLIENTE_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1REPRESENTANTE: TcxGridDBColumn;
    GridConsultaDBTableView1PEDIDO_COMPRA: TcxGridDBColumn;
    GridConsultaDBTableView1PEDIDO_REP: TcxGridDBColumn;
    UCControls1: TUCControls;
    Venda_ProdutoT: TFDQuery;
    GrupoProdutosObs: TdxLayoutGroup;
    RelVenda: TFDQuery;
    DSLookupVendaTipo: TDataSource;
    LookupVendaTipo: TFDQuery;
    LookupVendaTipoCODIGO: TIntegerField;
    LookupVendaTipoDESCRICAO: TStringField;
    LookupVendaTipoMODELO: TStringField;
    LookupVendaTipoModeloObj: TIntegerField;
    LiBtnProxima: TdxLayoutItem;
    BtnProxima222: TSpeedButton;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1SEQUENCIA: TcxGridDBColumn;
    LiGridVendaProduto: TdxLayoutItem;
    GridVendaProduto1: TcxGrid;
    GridProdutos: TcxGridDBTableView;
    GridProdutosCODIGO: TcxGridDBColumn;
    GridProdutosCODVENDA: TcxGridDBColumn;
    GridProdutosPRODUTO: TcxGridDBColumn;
    GridProdutosVALOR: TcxGridDBColumn;
    GridProdutosQUANT: TcxGridDBColumn;
    GridProdutosREPRESENTANTE: TcxGridDBColumn;
    GridProdutosTOTAL: TcxGridDBColumn;
    GridProdutosPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    GridProdutosATIVO: TcxGridDBColumn;
    GridProdutosVENDA_TIPO: TcxGridDBColumn;
    GridProdutosPEDIDO_COMPRA: TcxGridDBColumn;
    GridProdutosPEDIDO_REP: TcxGridDBColumn;
    GridProdutosPRODUTO_TIPO: TcxGridDBColumn;
    cxGridDBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGridLevel2: TcxGridLevel;
    GridProdutosCOMP: TcxGridDBColumn;
    GridProdutosLARG: TcxGridDBColumn;
    GridProdutosESPESSURA: TcxGridDBColumn;
    GridProdutosUNIDADE: TcxGridDBColumn;
    GridProdutosQTDADEPECA: TcxGridDBColumn;
    GridProdutosMedidas: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAOFINANCEIRA: TcxGridDBColumn;
    RepAgenda: TcxEditRepository;
    RepAgendaImageTarefaStatus: TcxEditRepositoryImageComboBoxItem;
    RepAgendaImagePrioridade: TcxEditRepositoryImageComboBoxItem;
    RepAgendaSelecionado: TcxEditRepositoryCheckBoxItem;
    RepAgendaImageTipoRegistro: TcxEditRepositoryImageComboBoxItem;
    RepAgendaImageAnexo: TcxEditRepositoryImageComboBoxItem;
    VisualizarProdutosVenda1: TMenuItem;
    VisualizarObservacoes1: TMenuItem;
    N1: TMenuItem;
    Faturar1: TMenuItem;
    N2: TMenuItem;
    NotaFiscal1: TMenuItem;
    GridConsultaDBTableView1CNPJCPF: TcxGridDBColumn;
    GridProdutosOBS_FATURAMENTO: TcxGridDBColumn;
    GridProdutosNF_OBS_NOTAFISCAL: TcxGridDBColumn;
    VisualizarTotalVenda1: TMenuItem;
    VisualizarTodasEmpresas1: TMenuItem;
    N6: TMenuItem;
    liEdtTotalSelecionado: TdxLayoutItem;
    EdtTotalSelecionado: TcxCurrencyEdit;
    GridProdutosCODVENDA_ORIGINAL: TcxGridDBColumn;
    GridProdutosCODVENDA_FATURADO: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    GridProdutosPODE_FATURAR: TcxGridDBColumn;
    liBtnTodos: TdxLayoutItem;
    btnTodos: TcxButton;
    GrupoDataTodos: TdxLayoutGroup;
    GridProdutosSITUACAO: TcxGridDBColumn;
    fr3Venda: TfrxDBDataset;
    Desagrupar1: TMenuItem;
    GridConsultaDBTableView1DT_COMPETENCIA: TcxGridDBColumn;
    ActFiltroFaturadas: TAction;
    ActFiltroNaoFaturadas: TAction;
    ActFiltroPorCliente: TAction;
    ActFiltroPorRepresentante: TAction;
    ActFiltroPorFuncionario: TAction;
    ActFiltroOrcamentoSituacao: TAction;
    ActFiltroEmitidas: TAction;
    ActFiltroNaoEmitidas: TAction;
    ActFiltroNotaTodas: TAction;
    ActFiltroNotaFiscal: TAction;
    ActFiltroVenda: TAction;
    ActFiltroOrcamento: TAction;
    ActFiltroTipoVenda: TAction;
    GridConsultaDBTableView1IS_NOTAFISCAL: TcxGridDBColumn;
    GridConsultaDBTableView1IS_VENDA: TcxGridDBColumn;
    GridConsultaDBTableView1IS_ORCAMENTO: TcxGridDBColumn;
    GridConsultaDBChartView1: TcxGridDBChartView;
    GridConsultaDBChartView1Series1: TcxGridDBChartSeries;
    GridConsultaDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    GridConsultaDBChartView1DataGroup2: TcxGridDBChartDataGroup;
    GridConsultaDBChartView1DataGroup5: TcxGridDBChartDataGroup;
    GridConsultaDBChartView1DataGroup6: TcxGridDBChartDataGroup;
    EstiloValorGrafico: TcxStyle;
    GridConsultaDBChartView1DataGroup7: TcxGridDBChartDataGroup;
    QuerGrafico: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSGrafico: TDataSource;
    QuerGraficoCODIGO: TStringField;
    QuerGraficoRAZAOSOCIAL: TStringField;
    QuerGraficoTOTAL: TFloatField;
    QuerGraficoVENDA_TIPO: TStringField;
    QuerGraficoSTATUS: TStringField;
    QuerGraficoFANTASIA: TStringField;
    QuerGraficoFUNCIONARIO: TStringField;
    QuerGraficoREPRESENTANTE: TStringField;
    QuerGraficoUF: TStringField;
    QuerGraficoVALOR_DESC: TFloatField;
    GridConsultaDBChartView1Series2: TcxGridDBChartSeries;
    GridConsultaDBChartView1DataGroup9: TcxGridDBChartDataGroup;
    QuerGraficoVENDEDOR: TStringField;
    QuerGraficoAGENCIA: TStringField;
    GridConsultaDBChartView1DataGroup3: TcxGridDBChartDataGroup;
    GridConsultaDBChartView1DataGroup4: TcxGridDBChartDataGroup;
    GridConsultaDBChartView1DataGroup8: TcxGridDBChartDataGroup;
    QuerGraficoCIDADE: TStringField;
    GridConsultaDBChartView1DataGroup10: TcxGridDBChartDataGroup;
    GridConsultaDBChartView2: TcxGridDBChartView;
    QuerGraficoProduto: TFDQuery;
    DSGraficoProduto: TDataSource;
    QuerGraficoProdutoPESSOAVENDA: TStringField;
    QuerGraficoProdutoVALOR: TFloatField;
    QuerGraficoProdutoGRUPOPRODUTO: TStringField;
    QuerGraficoProdutoNCM: TStringField;
    QuerGraficoProdutoQUANT: TFloatField;
    GridConsultaDBChartView2Series1: TcxGridDBChartSeries;
    GridConsultaDBChartView2Series2: TcxGridDBChartSeries;
    GridConsultaDBChartView2DataGroup1: TcxGridDBChartDataGroup;
    GridConsultaDBChartView2DataGroup2: TcxGridDBChartDataGroup;
    GridConsultaDBChartView2DataGroup3: TcxGridDBChartDataGroup;
    GridConsultaDBChartView2DataGroup4: TcxGridDBChartDataGroup;
    QuerGraficoProdutoCODIGO: TStringField;
    GridConsultaDBChartView2DataGroup5: TcxGridDBChartDataGroup;
    ActViewPadrao: TAction;
    ActViewGrafico: TAction;
    ActViewGraficoProdutos: TAction;
    Visualizao1: TMenuItem;
    Vendas2: TMenuItem;
    VendasemGrfico1: TMenuItem;
    GrficoporProduto1: TMenuItem;
    ImgListActions: TcxImageList;
    PnlMigraVendaTipo: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    CbMigraModelo: TcxComboBox;
    liCbMigraModelo: TdxLayoutItem;
    BtnMigraCancelar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    BtnMigraConfirmar: TcxButton;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    ActMigraVentaTipo: TAction;
    CbMigraVendaTipo: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    MigraTiposDeVenda: TFDQuery;
    DSMigraTiposDeVenda: TDataSource;
    MigraTiposDeVendaCODIGO: TIntegerField;
    MigraTiposDeVendaDESCRICAO: TStringField;
    MigraTiposDeVendaMODELO: TStringField;
    MigrarTipodeVenda1: TMenuItem;
    BtnMigraCadastroVendaTipo: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    FiltroVendaTipo: TFDQuery;
    DSFiltroVendaTipo: TDataSource;
    FiltroVendaTipoCODIGO: TIntegerField;
    FiltroVendaTipoDESCRICAO: TStringField;
    FiltroVendaTipoMODELO: TStringField;
    FiltroVendaTipoQUANT: TLargeintField;
    FiltroVendaSituacao: TFDQuery;
    DSFiltroVendaSituacao: TDataSource;
    FiltroVendaSituacaoSEQ: TIntegerField;
    FiltroVendaSituacaoCODIGO: TIntegerField;
    FiltroVendaSituacaoDESCRICAO: TStringField;
    FiltroVendaSituacaoQUANT: TLargeintField;
    MemThdTotal: TFDMemTable;
    DSMemThdTotal: TDataSource;
    AtvCarregandoTotal: TdxActivityIndicator;
    LiAtvCarregandoTotal: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    EdtTotal: TcxCurrencyEdit;
    LiEdtTotal: TdxLayoutItem;
    QuerGraficoProdutoDESCRICAO: TStringField;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    RelVenda_Produto: TFDQuery;
    RelVenda_Financeiro: TFDQuery;
    RelVenda_Produto_Centro_Trabalho: TFDQuery;
    DSVenda: TDataSource;
    DSVenda_Produto1: TDataSource;
    Fr3Venda_Produto: TfrxDBDataset;
    Fr3Venda_Financeiro: TfrxDBDataset;
    Fr3Venda_Produto_Centro_Trabalho: TfrxDBDataset;
    GridProdutosCODPRODUTO: TcxGridDBColumn;
    GridProdutosCODPRODUCAO: TcxGridDBColumn;
    GridProdutosSITUACAO1: TcxGridDBColumn;
    dxRibbonPopupAgrupar: TdxRibbonPopupMenu;
    GridProdutosTEM_PRODUCAO_ENVIADO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_REPRESENTANTE_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1VDESC: TcxGridDBColumn;
    GridConsultaDBTableView1VOUTRO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_VFRETE: TcxGridDBColumn;
    GridConsultaDBTableView1PROJETO: TcxGridDBColumn;
    GridProdutosQuant_original: TcxGridDBColumn;
    GridProdutosTotal_original: TcxGridDBColumn;
    LiTreeListUsuarios: TdxLayoutItem;
    TreeListUsuarios: TcxDBTreeList;
    cxDBTreeListCODIGO: TcxDBTreeListColumn;
    cxDBTreeListPARENT: TcxDBTreeListColumn;
    cxDBTreeListDESCRICAO: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListTABELA: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListCHAVE_PK1: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListQUANT: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListCHAVE_PK2: TcxDBTreeListColumn;
    MemTreeList: TFDMemTable;
    MemTreeListCODIGO: TIntegerField;
    MemTreeListDESCRICAO: TStringField;
    MemTreeListMODULO: TStringField;
    MemTreeListPARENT: TIntegerField;
    MemTreeListIMAGEINDEX: TIntegerField;
    MemTreeListQUANT: TIntegerField;
    MemTreeListTABELA: TStringField;
    MemTreeListCHAVE_PK1: TIntegerField;
    MemTreeListCHAE_PK2: TStringField;
    MemTreeListCHAVE_PK3: TStringField;
    DSMemTreeList: TDataSource;
    cxStatusKeeperTreelist: TcxStatusKeeper;
    cxImageListTreeList: TcxImageList;
    GridConsultaDBTableView1VENDA_ESTAGIO: TcxGridDBColumn;
    GridConsultaDBTableView1FATURAMENTO_DT_ENVIO: TcxGridDBColumn;
    LayoutControlLiTotalSelecao: TdxLayoutItem;
    liTotalSelecionado: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    cxButton3: TcxButton;
    GridConsultaDBTableView1CODVENDA_VINCULADA: TcxGridDBColumn;
    GridConsultaDBTableView1FATURA_PREVISAO: TcxGridDBColumn;
    GridConsultaDBTableView1FATURAMENTO_CANCELADO: TcxGridDBColumn;
    GridConsultaDBTableView1PREVISAO_CLIENTE: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    tcAgrupadorItem4: TdxTileControlItem;
    tcAgrupadorItem5: TdxTileControlItem;
    tcAgrupadorItem6: TdxTileControlItem;
    GridConsultaDBTableView1PESSOA_AGENCIA_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1AGENCIA: TcxGridDBColumn;
    tiReativar: TdxTileControlItem;
    tiArquivar: TdxTileControlItem;
    tiEmcaminhar: TdxTileControlItem;
    ConsultaCODIGO: TStringField;
    ConsultaSEQUENCIA: TIntegerField;
    ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaTOTAL: TFloatField;
    ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    ConsultaCNPJCPF: TStringField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaTELEFONE: TStringField;
    ConsultaVENDA_TIPO: TStringField;
    ConsultaDT_FATURAMENTO: TSQLTimeStampField;
    ConsultaNOTAFISCAL: TLargeintField;
    ConsultaCONDICAOPAGTO: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaSTATUS: TStringField;
    ConsultaPROJETO_DT_FIM: TSQLTimeStampField;
    ConsultaCONTATO: TStringField;
    ConsultaPLACA: TStringField;
    ConsultaCHASSI: TStringField;
    ConsultaMOTORISTA_DOCUMENTO_NUMERO: TIntegerField;
    ConsultaFANTASIA: TStringField;
    ConsultaFUNCIONARIO: TStringField;
    ConsultaNF_DT_EMISSAO: TSQLTimeStampField;
    ConsultaSITUACAOFINANCEIRA: TStringField;
    ConsultaVENDA_ESTAGIO: TStringField;
    ConsultaIS_PDV: TStringField;
    ConsultaCLIENTE_GRUPO: TStringField;
    ConsultaREPRESENTANTE: TStringField;
    ConsultaAGENCIA: TStringField;
    ConsultaPEDIDO_COMPRA: TStringField;
    ConsultaFATURAMENTO_DT_ENVIO: TSQLTimeStampField;
    ConsultaPEDIDO_REP: TStringField;
    ConsultaCODVENDA: TStringField;
    ConsultaSITUACAO: TStringField;
    ConsultaIS_VENDA: TStringField;
    ConsultaIS_NOTAFISCAL: TStringField;
    ConsultaIS_ORCAMENTO: TStringField;
    ConsultaDT_COMPETENCIA: TDateField;
    ConsultaCODVENDA_VINCULADA: TStringField;
    ConsultaFATURA_PREVISAO: TStringField;
    ConsultaIS_FATURAMENTO_CANCELADO: TStringField;
    ConsultaCODVENDA_PRE_VENDA: TStringField;
    ConsultaOBSERVACAO: TMemoField;
    ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ConsultaPESSOA_REPRESENTANTE_CODIGO: TStringField;
    ConsultaPESSOA_AGENCIA_CODIGO: TStringField;
    ConsultaVDESC: TFloatField;
    ConsultaVOUTRO: TFloatField;
    ConsultaNF_VFRETE: TFloatField;
    ConsultaPROJETO: TStringField;
    ConsultaPREVISAO_CLIENTE: TStringField;
    tiFaturamentoParcial: TdxTileControlItem;
    GridProdutosQUANTFATURADA: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGOVENDA: TcxGridDBColumn;
    ConsultaCODIGOVENDA: TStringField;
    ConsultaTOTAL_FATURA: TFloatField;
    GridConsultaDBTableView1TOTAL_FATURA: TcxGridDBColumn;
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure VisualizarObservacoes1Click(Sender: TObject);
    procedure LookupVendaTipoCalcFields(DataSet: TDataSet);
    procedure Venda_ProdutoTCalcFields(DataSet: TDataSet);
    procedure ActFaturarExecute(Sender: TObject);
    procedure GridProdutosEditChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure VisualizarInativos1Click(Sender: TObject);
    procedure Venda_ProdutoTBeforeOpen(DataSet: TDataSet);
    procedure Todos1Click(Sender: TObject);
    procedure OrcamentoAprovados1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure VisualizarTotalVenda1Click(Sender: TObject);
    procedure VisualizarTodasEmpresas1Click(Sender: TObject);
    procedure GridConsultaDBTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure GridProdutosCanSelectRecord(Sender: TcxCustomGridTableView; ARecord:
      TcxCustomGridRecord; var AAllow: Boolean);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure PorCliente1Click(Sender: TObject);
    procedure ActFiltroEmitidasExecute(Sender: TObject);
    procedure ActFiltroNaoEmitidasExecute(Sender: TObject);
    procedure ActFiltroNotaTodasExecute(Sender: TObject);
    procedure ActFiltroAprovadoExecute(Sender: TObject);
    procedure ActFiltroOrcamentoSituacaoExecute(Sender: TObject);
    procedure ActFiltroPorRepresentanteExecute(Sender: TObject);
    procedure ActFiltroPorFuncionarioExecute(Sender: TObject);
    procedure ActFiltroNotaFiscalExecute(Sender: TObject);
    procedure ActFiltroVendaExecute(Sender: TObject);
    procedure ActFiltroOrcamentoExecute(Sender: TObject);
    procedure VisualizarFaturados1Click(Sender: TObject);
    procedure VisualizarNaoFaturados1Click(Sender: TObject);
    procedure VisualizarTodas1Click(Sender: TObject);
    procedure ActFiltroTipoVendaExecute(Sender: TObject);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure GridConsultaDBChartView1DblClick(Sender: TObject);
    procedure GridConsultaDBChartView2DblClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure ActViewPadraoExecute(Sender: TObject);
    procedure ActViewGraficoExecute(Sender: TObject);
    procedure ActViewGraficoProdutosExecute(Sender: TObject);
    procedure VisualizarProdutosVenda1Click(Sender: TObject);
    procedure ActListConsultaExecute(Action: TBasicAction; var Handled: Boolean);
    procedure MigraTiposDeVendaBeforeOpen(DataSet: TDataSet);
    procedure CbMigraModeloPropertiesChange(Sender: TObject);
    procedure BtnMigraConfirmarClick(Sender: TObject);
    procedure BtnMigraCadastroVendaTipoClick(Sender: TObject);
    procedure MigraTiposDeVendaAfterOpen(DataSet: TDataSet);
    procedure FiltroVendaTipoBeforeOpen(DataSet: TDataSet);
    procedure FiltroVendaSituacaoBeforeOpen(DataSet: TDataSet);
    procedure cxtxtdtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MemThdTotalAfterOpen(DataSet: TDataSet);
    procedure DSStateChange(Sender: TObject);
    procedure GridSubGridViewDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var
      Accept: Boolean);
    procedure GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure RelVendaBeforeOpen(DataSet: TDataSet);
    procedure RelVendaAfterClose(DataSet: TDataSet);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
    procedure btnFiltroOrcamentoClick(Sender: TObject);
    procedure btnFiltroSemClick(Sender: TObject);
    procedure MostrarINATIVASAGRUPADAS1Click(Sender: TObject);
    procedure edtRapidoFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure TreeListUsuariosClick(Sender: TObject);
    procedure WREventosCadastroValidaEdicaoCampos(var AFieldName,
      AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
    procedure TreeListUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeListUsuariosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure edtRapidoFiltroPropertiesChange(Sender: TObject);
    procedure btnArquivarClick(Sender: TObject);
    procedure btnReativarClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tiEmcaminharClick(Sender: TdxTileControlItem);
    procedure tiImprimirClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure tiReativarClick(Sender: TdxTileControlItem);
    procedure tiArquivarClick(Sender: TdxTileControlItem);
    procedure tiImpressoesClick(Sender: TdxTileControlItem);
    procedure MigrarTipodeVenda1Click(Sender: TObject);
    procedure LookupVendaTipoBeforeOpen(DataSet: TDataSet);
    procedure QuerGraficoBeforeOpen(DataSet: TDataSet);
    procedure tiFaturamentoParcialClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
    FMudaGrafico: Boolean;
    FSQLFiltroNegarTipoVendaUsuario: string;
    FThreadSomaTotal: Cardinal;

    FAcaoSelecionados_Situacao: Variant;
    FAcaoSelecionados_Estagio: Variant;
    FAcaoSelecionados_Usuario : Variant;
    FAcaoSelecionados_MemoObservacao: String;

    function GetSQLProdutosSelecionados(AFiltroCodVenda: string = ''): string;
    procedure LayoutChanged; override;
    procedure DesativaFiltro;
    procedure AgrupaPorPessoa(AActionFiltro: TObject);
    procedure LimpaAcaoSelecaoExtras;
    function VerificaPermissoesUsuarioConsulta(ASQLWhere: TStringList): TStringList;
  public
    FVendasSelecionadas: TStringList;
    function LRecordValue(AColuna: TcxGridDBColumn;ACellViewInfo: TcxGridTableDataCellViewInfo): Variant;
    function GetSQLVendasSelecionadas(ARetornarComoVendaProduto: Boolean): string;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

//    procedure CarregaTreeList;
//    procedure AddTreeList(ACodigo, AParent, AImageIndex: Integer;
//      ADescricao, AModulo: string; ATabela, AChave_PK1, AChave_PK2, AChave_PK3,
//      AQuant: Variant);
    { Public declarations }
  end;

var
  Frame_ConsuVenda_Mestre: TFrame_ConsuVenda_Mestre;

implementation

{$R *.dfm}

uses
  wrFuncoes, ImpConsultaVenda, DataModuleImpressao, StrUtils, Aguarde, Registry, Math,
  DateUtils, UnitFuncoes, Principal, VendaTipoSelecao, Classes.Venda, Classes.WR,
  wrConstantes, wrForms, Base, Frame_cadVenda_Mestre, Tag.APP,  Base_Venda, Frame_CadVenda_Venda;

{ TConsuVenda }

constructor TFrame_ConsuVenda_Mestre.Create(AOwner: TComponent);
var
  Reg: TRegistry;
begin
  inherited Create(AOwner);
  FMudaGrafico := False;
  InicializaSQLWhere(RelVenda);
//  InicializaSQLWhere(QuerGrafico);
//  InicializaSQLWhere(QuerGraficoProduto);
  FVendasSelecionadas := TStringList.Create;
  FVendasSelecionadas.QuoteChar := #0;
  FVendasSelecionadas.Delimiter := ',';

  if Not AWR_APP[TagAPP_Faturamento].Ativo then
  begin
    if GridConsultaDBTableView1FATURAMENTO_DT_ENVIO.Visible then
      GridConsultaDBTableView1FATURAMENTO_DT_ENVIO.Visible:= False;
  end;

  LookupVendaTipo.Open;
  Reg := TRegistry.Create;             { TODO 2 -oLeandro -cTConfig : Migrar tudo para TConfig }
  try                                  // Isso tudo deve ficar centralizado em configuração, tela nova
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKeyReadOnly('\Software\Rocha\' + ApplicationTitle + '\'+Self.className ) then
    begin
//        EdtPesquisa.Text                 := Reg.ReadStringWR('Pesquisa');
      VisualizarProdutosVenda1.Checked := Reg.ReadBoolWR('VisualizarProdutosVenda');
      VisualizarObservacoes1.Checked := Reg.ReadBoolWR('VisualizarObservacoes');
      VisualizarTotalVenda1.Checked := Reg.ReadBoolWR('VisualizarTotal');
      VisualizarTodasEmpresas1.Checked := Reg.ReadBoolWR('VisualizarTodasEmpresas');

    end;
  finally
    Reg.Free;
  end;
  ProdutoControleUnidades.AtualizaCaptionsGrid(GridProdutos);

  ConfigGrid.Carregar(self.ClassName);
  ConfigGrid.CarregaConfigGridClasse(GridProdutos, className + 'Gridproduto2022');

  if not (UCControls1.GetComponentRight(VisualizarTotalVenda1).Enabled) then    // Isso é SQL não pode usar
    GridConsultaDBTableView1.DataController.Summary.DefaultGroupSummaryItems[1].Free; // Não deixa o Usuario sem permissão Visualizar o Total Agrupado;


//  BtnNota.Enabled := UCControls1.GetComponentRight(BtnVenda).Enabled; // Ao Bloquear o botão de venda, bloquia o de nota;


//  CarregaTreeList;
//  if fileexists(GetDirSistema + className +'.txt') then
//    cxStatusKeeperTreelist.RestoreStatesFromFile(GetDirSistema + className + '.txt')
//  else
//    MemTreeList.Locate('TABELA;CHAVE_PK1', varArrayOf(['USUARIO',USUARIO.Codigo]),[]);

  LayoutChanged;
end;

destructor TFrame_ConsuVenda_Mestre.Destroy;
var
  Reg: TRegistry;
begin
  cxGridLevel1.GridView := GridConsultaDBTableView1; //EVITA ERRO NO GRAVA GRID;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\'+Self.className , True) then
    begin
      Reg.WriteBool('VisualizarProdutosVenda', VisualizarProdutosVenda1.Checked);
      Reg.WriteBool('VisualizarObservacoes', VisualizarObservacoes1.Checked);
      Reg.WriteBool('VisualizarTotal', VisualizarTotalVenda1.Checked);
      Reg.WriteBool('VisualizarTodasEmpresas', VisualizarTodasEmpresas1.Checked);

    end;
  finally
    Reg.Free;
  end;
//  cxStatusKeeperTreelist.StoreStatesToFile(GetDirSistema + className+'.txt');
  ConfigGrid.GravaConfigGrid(GridProdutos, className + 'Gridproduto2022');
  FVendasSelecionadas.Free;
  inherited;
end;

function TFrame_ConsuVenda_Mestre.LRecordValue(AColuna: TcxGridDBColumn;ACellViewInfo: TcxGridTableDataCellViewInfo): Variant;
begin
  Result := Null;
  try
    if Assigned(ACellViewInfo) and
//         (ACellViewInfo is TcxGridTableController )and
       Assigned(ACellViewInfo.GridView) then
      Result := ACellViewInfo.GridRecord.Values[AColuna.Index];
  except  end;
end;

function TFrame_ConsuVenda_Mestre.GetSQLProdutosSelecionados(AFiltroCodVenda: string = ''): string;
var
  I: Integer;
  ACodigo, ACodVenda: string;
  AStr: TStringList;
begin
  AStr := TStringList.Create;
  try
    for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
    begin
      ACodigo := GridProdutos.DataController.Values[GridProdutos.Controller.SelectedRows[I].RecordIndex,
        GridProdutosCODIGO.Index];
      ACodVenda := GridProdutos.DataController.Values[GridProdutos.Controller.SelectedRows[I].RecordIndex,
        GridProdutosCODVENDA.Index];
      if (AFiltroCodVenda = '') or (AFiltroCodVenda = ACodVenda) then
      begin
        if AStr.Count > 0 then
          AStr.Add('or');
        AStr.Add('((VP.CODIGO = ' + ACodigo + ') and (VP.CODVENDA = ' + QuotedStr(ACodVenda) + '))');
      end;
    end;
    Result := AStr.Text;
  finally
    AStr.Free;
  end;
end;

function TFrame_ConsuVenda_Mestre.GetSQLVendasSelecionadas(ARetornarComoVendaProduto: Boolean): string;
var
  i: Integer;
  AStr: TStringList;
  ACampo: string;
begin
  AStr := TStringList.Create;
  try
    case ARetornarComoVendaProduto of
      False:
        ACampo := 'P.CODIGO';
      True:
        ACampo := 'VP.CODVENDA';
    end;

    AStr.Add('where (' + ACampo + ' = :CODIGO)');
    for i := 0 to FVendasSelecionadas.Count - 1 do
      AStr.Add('or (' + ACampo + ' = ' + QuotedStr(FVendasSelecionadas[i]) + ')');
    Result := AStr.Text;
  finally
    AStr.Free;
  end;
end;

procedure TFrame_ConsuVenda_Mestre.GridConsultaDBChartView1DblClick(Sender: TObject);
begin
  inherited;
  if FMudaGrafico then
    FMudaGrafico := False
  else
    FMudaGrafico := True;
  LayoutChanged;
end;

procedure TFrame_ConsuVenda_Mestre.GridConsultaDBChartView2DblClick(Sender: TObject);
begin
  inherited;
  FMudaGrafico := false;
  LayoutChanged;
end;

procedure TFrame_ConsuVenda_Mestre.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  Exit;
  //DEFAULT
  //Text: $00484848    Background: $00F8EFEF
//  ACanvas.Brush.Color := $00F8EFEF;
  ACanvas.Font.Color := $00484848;
  // Default
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := clGradientInactiveCaption // Vermelho mais escurinho
  else
    ACanvas.Brush.Color := $00F8EFEF; // Padrão

  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1FATURAMENTO_CANCELADO.Index], varString)) = 'S') then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $009EA8FC // Vermelho mais escurinho
    else
      ACanvas.Brush.Color := $00BBB9FF ; // Vermelho
  end
  else
  if ((trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CODVENDA_VINCULADA.Index], varString)) = '')
      and (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1PREVISAO_CLIENTE.Index], varString)) = 'S')
      and (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1DT_FATURAMENTO.Index], varString)) = ''))
      or (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1FATURA_PREVISAO.Index], varString)) = 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $0098FCFA //$0079FBF8 //amarelo
    else
      ACanvas.Brush.Color := $00B9F8FF; //amarelo
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CODVENDA_VINCULADA.Index], varString)) <> '') then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $00A6FE9E //$00A9FEA5 // verde
    else
      ACanvas.Brush.Color := $00C8FFC4; //verde
  end;
end;

procedure TFrame_ConsuVenda_Mestre.GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
//  if not FLimitarConsulta then   // Soma pelo grid   FunSoma é em outro lugar
  EdtTotal.Value := SomaColuna(GridConsultaDBTableView1,GridConsultaDBTableView1Total);
end;

procedure TFrame_ConsuVenda_Mestre.LimpaAcaoSelecaoExtras;
begin
  FAcaoSelecionados_Situacao:=null;
  FAcaoSelecionados_Usuario :=null;
  FAcaoSelecionados_Estagio :=Null;
  FAcaoSelecionados_MemoObservacao:='';
end;

procedure TFrame_ConsuVenda_Mestre.GridConsultaDBTableView1SelectionChanged(Sender: TcxCustomGridTableView);
var
  I: Integer;
  ARecord: TcxCustomGridRecord;
  ATotal: Double;
begin
  inherited;
  ATotal := 0;
  liEdtTotalSelecionado.Visible := false;
  LayoutControlLiTotalSelecao.Visible := false;

  if LiGridVendaProduto.Visible then
  begin
    I := GridConsultaDBTableView1.DataController.GetSelectedCount;
    liEdtTotalSelecionado.Visible := (I > 1);
    LayoutControlLiTotalSelecao.Visible := (I > 1);
    FVendasSelecionadas.Clear;
    for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
    begin
      try          //TODO: acontece um erro ao agrupar por situação, verificar
        ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[I];
        FVendasSelecionadas.Add(ARecord.Values[GridConsultaDBTableView1CODIGO.Index]);
        ATotal := ATotal + VarToDoubleDef(ARecord.Values[GridConsultaDBTableView1TOTAL.Index], 0);
      except
      end;
    end;
  end;
  EdtTotalSelecionado.Value := ATotal;

  if LiGridVendaProduto.Visible then
  begin
    //Pré-seleciona os produtos aptos a serem faturados
    Venda_ProdutoT.Close;
    Venda_ProdutoT.Open;
    GridProdutos.DataController.ClearSelection;
    for I := 0 to GridProdutos.DataController.RecordCount - 1 do
    begin
      if VarToStrDef(GridProdutos.DataController.Values[I, GridProdutosPODE_FATURAR.Index], '') <> 'N' then
        GridProdutos.DataController.SelectRows(I, I);
    end;
  end;


  if Consulta.Active and Assigned(Sender)and (GridConsultaDBTableView1.Controller.SelectedRecordCount > 0) then
  begin
    ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[0];
    tiReativar.Visible := VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') <> 'S';
    tiArquivar.Visible := VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S';
    tiEmcaminhar.Visible := VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S';
    tiFaturamentoParcial.Visible := ((VarToStrDef(ARecord.Values[GridConsultaDBTableView1DT_FATURAMENTO.Index], '') = '') and (VarToStrDef(ARecord.Values[GridConsultaDBTableView1STATUS.Index], '') = 'ATIVO'))
                                    or (VarToStrDef(ARecord.Values[GridConsultaDBTableView1STATUS.Index], '') = 'ATIVO PRINCIPAL');
    UCControls1.AplicaDireito(tiArquivar,'Frame_Venda_Venda.btnExcluir');

  end;
end;

{function TConsuVenda.GetItensSelecionados: TListaProdutosSelecionados;
var
  i: Integer;
  AItem: TFaturamentoProdutoItemSelecionado;
begin
  Result := TListaProdutosSelecionados.Create;
  for I := 0 to GridConsultaDBTableView1.DataController.RecordCount - 1 do
  begin
    if VarSameValueWR(GridConsultaDBTableView1.DataController.Values[i, FColunaSelecao.Index], 1) then
    begin
      AItem := TFaturamentoProdutoItemSelecionado.Create;
      AItem.Codigo         := GridConsultaDBTableView1.DataController.Values[i, GridConsultaDBTableView1CODIGO.Index];
      AItem.CodVenda       := GridConsultaDBTableView1.DataController.Values[i, GridConsultaDBTableView1CODVENDA.Index];
      AItem.CodResponsavel := GridConsultaDBTableView1.DataController.Values[i, GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO.Index];
      Result.Add(AItem);
    end;
  end;
  if Result.Count = 0 then
  begin
    AItem := TFaturamentoProdutoItemSelecionado.Create;
    AItem.Codigo         := ConsultaCODIGO.AsVariant;
    AItem.CodVenda       := ConsultaCODVENDA.AsVariant;
    AItem.CodResponsavel := ConsultaPESSOA_RESPONSAVEL_CODIGO.AsVariant;
    Result.Add(AItem);
  end;
end;     }

procedure TFrame_ConsuVenda_Mestre.FiltroVendaSituacaoBeforeOpen(DataSet: TDataSet);
var
  ASQLSemWhere: string;
begin
(*
  ASQLSemWhere:= ReplaceStr(SQLSubGrid, 'where','');
  inherited;
  FiltroVendaSituacao.SQL.Text := 'select 0 as SEQ, null as CODIGO, ''TODOS'' as DESCRICAO,  ' +
                                  '       (select cast(count(1) as bigint) ' +
                                  '        from VENDA P ' +
                                  '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA) ' +
                                  '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO) ' +
                                  '        left join PESSOAS_GRUPO CG on (C.CODPessoas_GRUPO = CG.CODIGO) ' +
                                  '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO) ' +
                                  '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODIGO) ' +
                                  '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)';
  FiltroVendaSituacao.SQL.Add(SQLSubGrid);
  FiltroVendaSituacao.SQL.Add(') as QUANT ' +
                              'from RDB$DATABASE ' +
                              'union all ' +
                              'select 1 as SEQ, F.CODIGO, F.DESCRICAO, ' +
                              '       (select cast(count(1) as bigint) ' +
                              '        from VENDA P ' +
                              '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA) ' +
                              '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO) ' +
                              '        left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.CODIGO) ' +
                              '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO) ' +
                              '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODIGO) ' +
                              '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO) ' +
                              '        where (P.SITUACAO = F.DESCRICAO)');
  FiltroVendaSituacao.SQL.Add('and ' + ASQLSemWhere{SQLSubGrid});
  FiltroVendaSituacao.SQL.Add(') as QUANT ' +
                              'from VENDA_SITUACAO F ' +
                              'order by 1, 2');         *)
end;

procedure TFrame_ConsuVenda_Mestre.FiltroVendaTipoBeforeOpen(DataSet: TDataSet);
var
  ASQLSemWhere: string;
begin
 (* inherited;
  ASQLSemWhere:= ReplaceStr(SQLSubGrid, 'where','');
  FiltroVendaTipo.SQL.Text := 'select 0 as SEQ, null as CODIGO, ''TODOS'' as DESCRICAO, null as MODELO, ' +
                              '       (select cast(count(1) as bigint) ' +
                              '        from VENDA P ' +
                              '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA) ' +
                              '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO) ' +
                              '        left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.CODIGO) ' +
                              '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO) ' +
                              '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODIGO) ' +
                              '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO)';
  FiltroVendaTipo.SQL.Add(SQLSubGrid);
  FiltroVendaTipo.SQL.Add(') as QUANT ' +
                          'from RDB$DATABASE ' +
                          'union all ' +
                          'select 1 as SEQ, F.CODIGO, F.DESCRICAO, F.MODELO, ' +
                          '       (select cast(count(1) as bigint) ' +
                          '        from VENDA P ' +
                          '        left join EQUIPAMENTO_VEICULO EV on (EV.CODIGO = P.PLACA) ' +
                          '        left join PESSOAS C on (P.PESSOA_RESPONSAVEL_CODIGO = C.CODIGO) ' +
                          '        left join PESSOAS_GRUPO CG on (C.CODPESSOAS_GRUPO = CG.CODIGO) ' +
                          '        left join PESSOAS PV on (P.PESSOA_FUNCIONARIO_CODIGO = PV.CODIGO) ' +
                          '        left join PESSOAS PR on (P.PESSOA_REPRESENTANTE_CODIGO = PR.CODIGO) ' +
                          '        left join VENDA_TIPO VT on (VT.DESCRICAO = P.VENDA_TIPO) ' +
                          '        where (P.VENDA_TIPO = F.DESCRICAO)');
  if SQLSubGrid <> '' then
    FiltroVendaTipo.SQL.Add('and ' + ASQLSemWhere{SQLSubGrid});
  FiltroVendaTipo.SQL.Add(') as QUANT ' +
                          'from VENDA_TIPO F ' +
                          'where (F.MODELO = :Modelo) ' +
                          '      and (F.ATIVO is distinct from ''N'') ' +
                          'order by 1, 2');
  if BtnOrcamento.SpeedButtonOptions.Down then
    FiltroVendaTipo.ParamByName('Modelo').AsString := vtmOrcamento.ToStr
  else if BtnNota.SpeedButtonOptions.Down then
    FiltroVendaTipo.ParamByName('Modelo').AsString := vtmNotaFiscal.ToStr
  else
    FiltroVendaTipo.ParamByName('Modelo').AsString := vtmVenda.ToStr;    *)
end;

procedure TFrame_ConsuVenda_Mestre.FrameEnter(Sender: TObject);
begin
//  Orcamentos1.Visible := TConfig.ReadBoolean('VENDA_SEPARA_ORCAMENTO_VENDA');
  FSQLFiltroNegarTipoVendaUsuario := GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO');
  UCControls1.FormName := 'ConsuVenda';
  UCControls1.ApplyRights; // Deve aplicar isso antes de abrir a tabela pelas permissões de filtro, filtros
  UCControls1.AplicaDireito(LbUCLiberarVerTodasVendas,'Frame_ConsuVenda_Venda.LbUCLiberarVerTodasVendas');
  inherited;
  Desagrupar1.Visible := False;
//  NotaFiscal1.Visible := False;
//  Vendas1.Enabled := UCControls1.GetComponentRight(BtnVenda).Enabled;
//  NotaFiscal2.Enabled := UCControls1.GetComponentRight(BtnVenda).Enabled;
//  Orcamentos1.Enabled := UCControls1.GetComponentRight(BtnOrcamento).Enabled;

{  Vendas1.Enabled := BtnVenda.Enabled;
  NotaFiscal2.Enabled := BtnVenda.Enabled;
  Orcamentos1.Enabled := BtnOrcamento.Enabled;     }

  //LiOrcamento.Visible  := SeparaOrcamentoVenda;
  //LiAprovar.Visible    := SeparaOrcamentoVenda;
  //LiVenda.Visible      := SeparaOrcamentoVenda;
  //LiNotaFiscal.Visible := SeparaOrcamentoVenda;
end;

procedure TFrame_ConsuVenda_Mestre.CbMigraModeloPropertiesChange(Sender: TObject);
begin
  inherited;
  MigraTiposDeVenda.Close;
  MigraTiposDeVenda.Open;
end;

procedure TFrame_ConsuVenda_Mestre.GridProdutosCanSelectRecord(Sender: TcxCustomGridTableView; ARecord:
  TcxCustomGridRecord; var AAllow: Boolean);
begin
  inherited;
  AAllow := (VarToStrDef(ARecord.Values[GridProdutosPODE_FATURAR.Index], '') <> 'N');
end;

procedure TFrame_ConsuVenda_Mestre.GridProdutosEditChanged(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;
//  if AItem = FColunaSelecao then
//  begin
//    LayoutChanged;
 //     AItem.Enabled := False;
{var
  i, QuantItensOriginais: Integer;
  Status : String;
begin
  Status := 'Faturado';    //  Status := 'Faturado Parcial ';   Status := 'Faturado Agrupada';
//  Verificar Quais itens podem ser faturados  //  Regras
//  Se todos ou Todo Valor ja foi Faturado
//  Criar campo de quantidade fatruada e valor faturado  Faturado? Quanto pode?
  for I := 0 to GridProdutos.DataController.RecordCount - 1 do
  begin
    if VarSameValueWR(GridProdutos.DataController.Values[i, FColunaSelecao.Index], 1) then
    begin
      AItem.Codigo         := GridProdutos.DataController.Values[i, GridProdutosCODIGO.Index];
      AItem.CodVenda       := GridProdutos.DataController.Values[i, GridProdutosCODVENDA.Index];
      AListaProdutosSelecionados.Add(AItem);
    end;
    if not VarSameValueWR(GridProdutos.DataController.Values[i, GridProdutosCODVENDA.Index], ConsultaCODIGO.AsString) then
      Status:= 'Faturamento Agrupado'
    else
      Inc(QuantItensOriginais);
  end;
//  if (Status = 'Faturado')AND(AListaProdutosSelecionados.Count < QuantItensOriginais) then
//      Status:= 'Faturamento Parcial';   }
//  end;
end;

procedure TFrame_ConsuVenda_Mestre.GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
(*var
  HT: TcxCustomGridHitTest;
  ACodVenda, AFiltroSelecionado, AOldSituacao: string;
  ARecord: TcxCustomGridRecord;
  I: Integer;
  QuerX: TFDQuery;
  ATransa: TFDTransaction;   *)
begin
//  QueryDragAndDrop.sql.Text:='Select V.RAZAOSOCIAL AS DESCRICAO, V.*  From VENDA V Where CODIGO = :CODIGO';

  inherited;
(*  HT := GridSubGridView.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Exit;

  {Aqui foi usado apenas uma variável AFiltroSelecionado para os dois filtros pois ambos não usam código, trabalham
   apenas pela descrição do filtro. Caso um novo SubGrid seja colocado na venda e este usar um código, separar
   aqui as variável de controle do item selecionado}
  AFiltroSelecionado := VarToStrDef(TcxGridRecordCellHitTest(HT).GridRecord.Values[GridSubGridViewDESCRICAO.Index],
    '');
  if MatchStr(AFiltroSelecionado, ['', 'TODOS']) then
    Exit;

  //Caso esteja na view de Tipo de Venda
//  if ActFiltroViewVendaTipo.Checked then
  begin
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[I];
      ACodVenda := VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index], '');

      TFrmVenda.MigrarTipoDaVenda(ACodVenda, AFiltroSelecionado);
    end;
  end;

  //Caso esteja na view de Situação
//  if ActFiltroViewSituacao.Checked then
  begin
    ATransa := GeraFDTransacao;
    QuerX := GeraFDQuery(ATransa);
    try
      QuerX.SQL.Text := 'select CODIGO, SITUACAO from VENDA ' + 'where (CODIGO = :Cod)';
      for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[I];
        ACodVenda := VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index], '');

        QuerX.Close;
        QuerX.ParamByName('Cod').AsString := ACodVenda;
        QuerX.Open;
        AOldSituacao := QuerX.FieldByName('SITUACAO').AsString;
        if AOldSituacao <> AFiltroSelecionado then
        begin
          QuerX.Edit;
          QuerX.FieldByName('SITUACAO').AsString := AFiltroSelecionado;
          QuerX.Post;

//          Bosta de código tem que ser reativado
//          TFrameHistorico.AdicionaHistorico(ATransa, 'VENDA', ACodVenda,
//            'Alterou a Situação de "' + AOldSituacao + '" para "' + AFiltroSelecionado + '".', '');
        end;
      end;
      ComitaTransacao(ATransa);
    finally
      QuerX.Free;
      ATransa.Free;
    end;
  end;

  RefreshConsulta;     *)
end;

procedure TFrame_ConsuVenda_Mestre.GridSubGridViewDragOver(Sender, Source: TObject; X, Y: Integer; State:
  TDragState; var Accept: Boolean);
begin
//  Não sei que regra é essa, Vai dar problema aqui
//  if (TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding.FieldName = 'FATURAMENTO') then
//  begin
//    Accept := False;
//    exit;
//  end;
  inherited;
//  Accept := (Source <> nil) and (Source is TcxDragControlObject) and (TcxDragControlObject(Source).Control
//    is TcxGridSite) and (TcxGridSite(TcxDragControlObject(Source).Control).GridView =
//    GridConsultaDBTableView1);
end;

procedure TFrame_ConsuVenda_Mestre.Venda_ProdutoTBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  Transa.Connection := FConexao;
//  TFDQuery(DataSet).Connection := FConexao;
  Venda_ProdutoT.SQL[11] := GetSQLVendasSelecionadas(True);
end;

procedure TFrame_ConsuVenda_Mestre.Venda_ProdutoTCalcFields(DataSet: TDataSet);
begin
  inherited;     // TEM_PRODUCAO_FINALIZADA_NOENVIO
 { if VendaProdutoNAO_ENVIA_PARA_PRODUCAO.AsString = 'S' then     o Mesmo Campo não pode ter 2 funções
    VendaProdutoSituacaoProducao.AsString := 'Não Produzível'
  else if VendaProdutoCODPRODUCAO.IsNull then
    VendaProdutoSituacaoProducao.AsString := 'Não Enviado'
  else     }
//  Venda_ProdutoT.FieldByName('SituacaoProducao').AsString := ProducaoSituacaoToDescricao(ProducaoSituacaoStrToEnum(Venda_ProdutoT.FieldByName('SITUACAO').AsString));
{  Venda_ProdutoMedidas.AsString := ProdutoGetMedidas(Venda_ProdutoUNIDADE.AsString,
                                                    Venda_ProdutoCOMP.AsFloat,
                                                    Venda_ProdutoLARG.AsFloat,
                                                    Venda_ProdutoESPESSURA.AsFloat,
                                                    Venda_ProdutoQTDADEPECA.AsFloat).Medidas;   }
end;

procedure TFrame_ConsuVenda_Mestre.OrcamentoAprovados1Click(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.edtRapidoFiltroPropertiesChange(Sender: TObject);
begin
  inherited;
  tiReativar.Visible := (btnFiltro_Filtro.Caption = 'Arquivados');
  tiArquivar.Visible := Not tiReativar.Visible;
//  StartsStr('INATIVO', (VarToStrDef(LRecordValue(GridConsultaDBTableView1STATUS),''))) and (edtRapidoData.Text = '-Filtro Datas-');
end;

procedure TFrame_ConsuVenda_Mestre.edtRapidoFiltroPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  if edtRapidoFiltro.Text = 'Faturadas' then

//Arquivados
//Mostra Inativas Agrupadas
//Faturadas
//Não Faturadas

end;

procedure TFrame_ConsuVenda_Mestre.VisualizarFaturados1Click(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarInativos1Click(Sender: TObject);
begin
  inherited;
  LayoutChanged;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarNaoFaturados1Click(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarObservacoes1Click(Sender: TObject);
begin
  inherited;
  VisualizarObservacoes1.Checked := not VisualizarObservacoes1.Checked;
  LayoutChanged;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarProdutosVenda1Click(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarTodas1Click(Sender: TObject);
begin
  inherited;
//  DesativaFiltro;
////  VisualizarTodas1.Checked := True;
//  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarTodasEmpresas1Click(Sender: TObject);
begin
  inherited;
  VisualizarTodasEmpresas1.Checked := not VisualizarTodasEmpresas1.Checked;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.VisualizarTotalVenda1Click(Sender: TObject);
begin
  inherited;
  VisualizarTotalVenda1.Checked := not VisualizarTotalVenda1.Checked;
  LayoutChanged;
  if VisualizarTotalVenda1.Checked then
    RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  AReport: TfrxReport;
  I: Integer;
begin
  inherited;
  //Bug encontrado no FR. Se passar a data 28/02/2013 23:59:59, na variável fica armazenado 01/03/2013.
  AReport := WREventosCadastro.Impressao.Report;

  AReport.Variables['DtInicio'] := DateOf(EdtDataInicio.Date);
  AReport.Variables['DtFim'] := DateOf(EdtDataFim.Date);

  for I := 0 to GridConsultaDBTableView1.ColumnCount - 1 do
  begin
    if GridConsultaDBTableView1.Columns[I].GroupIndex = 0 then       // Permitir apeas 3 grupos, se funcionar avisar antes de imprimir que permite até 3
      AReport.Variables['Grupo1'] := GridConsultaDBTableView1.Columns[I].DataBinding.FieldName;
    if GridConsultaDBTableView1.Columns[I].GroupIndex = 1 then
      AReport.Variables['Grupo2'] := GridConsultaDBTableView1.Columns[I].DataBinding.FieldName;
    if GridConsultaDBTableView1.Columns[I].GroupIndex = 2 then
      AReport.Variables['Grupo3'] := GridConsultaDBTableView1.Columns[I].DataBinding.FieldName;
    if GridConsultaDBTableView1.Columns[I].GroupIndex > 3 then
      ShowMessage('Só Permite 3 Colunas Agrupadas.');
  end;
end;

procedure TFrame_ConsuVenda_Mestre.WREventosCadastroValidaEdicaoCampos(var AFieldName,
  AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
var
  APessoa: TPessoaRetorno;
  ATipoPreferencial: String;
begin
  inherited;
  if FAcaoSelecionados_Usuario <> null then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('Usuário: '+ADataSet.FieldByName('CODUSUARIO').AsString+' -> '+VarToStr(FAcaoSelecionados_Usuario));
    ADataSet.FieldByName('CODUSUARIO').Value       := FAcaoSelecionados_Usuario;
  end;

  if FAcaoSelecionados_Estagio <> null then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('Estágio: '+ADataSet.FieldByName('VENDA_ESTAGIO').AsString+' -> '+VarToStr(FAcaoSelecionados_Estagio));
    ADataSet.FieldByName('VENDA_ESTAGIO').Value := FAcaoSelecionados_Estagio;
  end;

  if FAcaoSelecionados_Situacao <> null then
  begin
    UCHist_Cadastro.MensagemHistorico.Add('Situação: '+ADataSet.FieldByName('SITUACAO').AsString+' -> '+VarToStr(FAcaoSelecionados_Situacao));
    ADataSet.FieldByName('SITUACAO').Value          := FAcaoSelecionados_Situacao;
  end;

  if FAcaoSelecionados_MemoObservacao <> '' then
    UCHist_Cadastro.MensagemHistorico.Add('Observção: '+FAcaoSelecionados_MemoObservacao);

  // Tratamento igual ao da Produção.
  // Tem que fazer assim pois o AFieldName chega só o TIPO.

  if(AFieldName = 'FUNCIONARIO') then
    AFieldNameTratado := 'PESSOA_FUNCIONARIO_CODIGO';

  if(AFieldName = 'REPRESENTANTE') then
    AFieldNameTratado := 'PESSOA_REPRESENTANTE_CODIGO';

  if(AFieldName = 'AGENCIA') then
    AFieldNameTratado := 'PESSOA_AGENCIA_CODIGO';
  // Precisa preencher TIPO e SEQUENCIA, essa função serve pra todas
  if pos('PESSOA_',AFieldNameTratado) > 0 then
  begin
    PessoaBusca(TransaDragAndDrop, AValue, APessoa, ATipoPreferencial);
    ADataSet.FieldByName('PESSOA_'+AFieldName+'_TIPO').AsString := AnsiUpperCase(APessoa.Tipo.Descricao);
    ADataSet.FieldByName('PESSOA_'+AFieldName+'_SEQUENCIA').AsString := APessoa.Sequencia.ToString;
  end;
end;

procedure TFrame_ConsuVenda_Mestre.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;

  procedure VerificaSeNull(ACampo, AChave_PK: String);
  begin
    if VarToStr(MemTreeList.FieldByName(AChave_PK).Value)= '' then
      SQLWhere.AddAnd('(P.'+ACampo+' IS NULL)or(P.'+ACampo+' = '''')')
    else
      SQLWhere.AddAnd('P.'+ACampo+' = '+QuotedStr(MemTreeList.FieldByName(AChave_PK).AsString));
//      (('+ACampo+' = :Codigo) or ((:Codigo is Null) and ('+ACampo+' IS NULL)))
  end;

begin
  if FDashboardsFiltro <> '' then
  begin
    SQLWhere.Clear;
    MemTreeList.Locate('TABELA', 'TODOS',[]);
    SQlWhere.Add('where ' + FDashboardsFiltro);
    SQlWhere := VerificaPermissoesUsuarioConsulta(SQlWhere);
    FDashboardsFiltro := '';
//    btnDtFiltro_SemFiltro.Click;
  end
  else
  begin
    inherited;
    SQlWhere := VerificaPermissoesUsuarioConsulta(SQlWhere);
    // Se estiver a opção Todos, limpa o agrupamento e não é possível agrupar.
    if MemTreeList.FieldByName('TABELA').AsString = 'TODOS' then
      GridConsultaDBTableView1.DataController.Groups.ClearGrouping;

    if MemTreeList.FieldByName('TABELA').AsString = 'VENDA_ESTAGIO' then
    begin
      VerificaSeNull('VENDA_TIPO', 'CHAVE_PK2');
      VerificaSeNull('VENDA_ESTAGIO', 'CHAVE_PK3');
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'VENDA_TIPO' then
      VerificaSeNull('VENDA_TIPO', 'CHAVE_PK2');
    if MemTreeList.FieldByName('TABELA').AsString = 'STATUS' then
      VerificaSeNull('STATUS', 'CHAVE_PK2');
    if MemTreeList.FieldByName('TABELA').AsString = 'SITUACAO' then
      VerificaSeNull('SITUACAO', 'CHAVE_PK2');
    if MemTreeList.FieldByName('TABELA').AsString = 'AGENCIA' then
      VerificaSeNull('PESSOA_AGENCIA_CODIGO', 'CHAVE_PK2');
    if MemTreeList.FieldByName('TABELA').AsString = 'FUNCIONARIO' then
      VerificaSeNull('PESSOA_FUNCIONARIO_CODIGO', 'CHAVE_PK2');
    if MemTreeList.FieldByName('TABELA').AsString = 'REPRESENTANTE' then
      VerificaSeNull('PESSOA_REPRESENTANTE_CODIGO', 'CHAVE_PK2');
    if MemTreeList.FieldByName('DESCRICAO').AsString = 'Faturamento Agrupado' then
      SQLWhere.AddAnd('P.CODVENDA_VINCULADA <> '''' ');
    if MemTreeList.FieldByName('DESCRICAO').AsString = 'Em aberto - Previsão' then
      SQLWhere.AddAnd(' ((coalesce(P.CODVENDA_VINCULADA,'''') = '''' and C.FATURA_PREVISAO = ''S'' AND coalesce(P.DT_FATURAMENTO,'''') = '''') or P.FATURA_PREVISAO = ''S'') ');


   (* if edtRapidoAgrupar.Text='Mostra Inativas Agrupadas' {btnMostrarInativasAgrupadas.Down} then
      SQLWhere.AddAnd('(P.STATUS like ''ATIVO%'') or (P.STATUS = ''INATIVO AGRUPADO'')')
    else
      if edtRapidoFiltro.Text='Arquivados' then
        SQLWhere.AddAnd('P.ATIVO = ''N''')
      else
        SQLWhere.AddAnd('P.STATUS like ''ATIVO%'''); *)

  //  if not btnFiltroTodas.Down then
  //  begin
  //    if edtRapidoAgrupar.Text='' then
  //Arquivados
  //Mostra Inativas Agrupadas
  //Faturadas
  //Não Faturadas

    if btnFiltro_Filtro.Caption='Faturadas' {btnFiltroFaturadas.Down} then
      SQLWhere.AddAnd('not (P.DT_FATURAMENTO is null)')
    else if btnFiltro_Filtro.Caption='A Faturar' {btnFiltroNaoFaturadas.Down} then
      SQLWhere.AddAnd('P.DT_FATURAMENTO is null');

    //Nota Fiscal
    if ActFiltroNotaTodas.Checked then
      SQLWhere.AddAnd('(P.IS_NOTAFISCAL = ''S'') and (P.STATUS like ''ATIVO%'')');
    if ActFiltroEmitidas.Checked then
      SQLWhere.AddAnd('(P.IS_NOTAFISCAL = ''S'') and (P.STATUS like ''ATIVO%'') and (P.NOTAFISCAL > 0)');
    if ActFiltroNaoEmitidas.Checked then
      SQLWhere.AddAnd('(P.IS_NOTAFISCAL = ''S'') and (P.STATUS like ''ATIVO%'') and (P.NOTAFISCAL is null)');


    //Orçamento
  //  if btnAgrupaStatus.Down then
  //    SQLWhere.AddAnd('(P.IS_ORCAMENTO = ''S'')');// and (P.STATUS = ''INATIVO APROVADO'')');
  //  if ActFiltroReprovado.Checked then
  //    SQLWhere.AddAnd('(P.IS_ORCAMENTO = ''S'') and (P.STATUS like ''INATIVO REPROVADO'')');
  //  if ActFiltroEmAberto.Checked then
  //    SQLWhere.AddAnd('(P.IS_ORCAMENTO = ''S'') and (P.STATUS like ''ATIVO%'')');



    LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
    if GridConsultaDBTableView1.GroupedColumnCount > 0 then
    begin
      with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
      try
        ACampo_Codigo    := FieldName;
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
        begin
          if FieldName = 'FANTASIA' then
          begin
            ACampo_Codigo    := 'PESSOA_RESPONSAVEL_CODIGO';         // ISSO falta o de Por Cliente
  //        if FieldName = 'RA' then
  //          ACampo_Codigo    := 'PESSOA_RESPONSAVEL_CODIGO'
            ACampo_Sql       := 'P.PESSOA_RESPONSAVEL_CODIGO';
          end
          else if FieldName = 'FUNCIONARIO' then
          begin
            ACampo_Codigo    := 'PESSOA_FUNCIONARIO_CODIGO';
          end
          else if FieldName = 'CLIENTE_GRUPO' then
            ACampo_Codigo    := 'CODPESSOAS_GRUPO'
          else if FieldName = 'REPRESENTANTE' then
          begin
            ACampo_Codigo    := 'PESSOA_REPRESENTANTE_CODIGO';
          end
          else if FieldName = 'AGENCIA' then
          begin
            ACampo_Codigo    := 'PESSOA_AGENCIA_CODIGO';
          end
          else
            ACampo_Codigo    := 'COD'+FieldName;
        end;
        ACampo_Sql := 'P.'+ACampo_Codigo;
        AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
      finally
      end;
      LiGridSubGrid.Visible:= True;
    end;
    SplitSubGrid.Visible:= LiGridSubGrid.Visible;
  end;
end;

function TFrame_ConsuVenda_Mestre.VerificaPermissoesUsuarioConsulta(ASQLWhere: TStringList): TStringList;
begin
  {$REGION 'Permissões'}
  //  if not UCControls1.GetComponentRight(BtnOrcamento).Enabled then
  //    SQLWhere.AddAnd('P.IS_ORCAMENTO is distinct from ''S''');

  //  //A permissão do botão de visualizar Venda também é aplicada ao de Nota Fiscal
  //  if not UCControls1.GetComponentRight(BtnVenda).Enabled then
  //  begin
  //    SQLWhere.AddAnd('P.IS_VENDA is distinct from ''S''');
  //    SQLWhere.AddAnd('P.IS_NOTAFISCAL is distinct from ''S''');
  //  end;

  if FSQLFiltroNegarTipoVendaUsuario <> '' then
    ASQLWhere.AddAnd('not (P.VENDA_TIPO in (' + FSQLFiltroNegarTipoVendaUsuario + '))');

//
  if not LbUCLiberarVerTodasVendas.Enabled then
    ASQLWhere.AddAnd('P.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(Usuario.CodigoFuncionario));

  if MultiEmpresa and not VisualizarTodasEmpresas1.Checked then
  begin
    if Not Empresa.Active then   // Queda da Rede
    begin
      Empresa.Close;
      Empresa.Open;
    end;
    if Empresa.FieldByName('CODIGO').AsInteger = 1 then
      ASQLWhere.AddAnd('(P.CODIGO like ' + QuotedStr('%-' + Empresa.FieldByName('CODIGO').AsString) +
        ') or not (P.CODIGO like ''%-%'')')
    else
      ASQLWhere.AddAnd('P.CODIGO like ' + QuotedStr('%-' + Empresa.FieldByName('CODIGO').AsString));
  end;
  {$ENDREGION}

  Result := ASQLWhere;
end;

procedure TFrame_ConsuVenda_Mestre.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'P.ATIVO');
  ASQL := ReplaceText(ASQL, '(CODIGO', '(P.CODIGO');
  ASQL := ReplaceText(ASQL, '(RAZAOSOCIAL', '(P.RAZAOSOCIAL');
  ASQL := ReplaceText(ASQL, '(DT_EMISSAO', '(P.DT_EMISSAO');
  ASQL := ReplaceText(ASQL, '(PESSOA_RESPONSAVEL_SEQUENCIA', '(P.PESSOA_RESPONSAVEL_SEQUENCIA');
  ASQL := ReplaceText(ASQL, '(PESSOA_RESPONSAVEL_CODIGO', '(P.PESSOA_RESPONSAVEL_CODIGO');
  ASQL := ReplaceText(ASQL, '(PLACA', '(EV.PLACA');
  ASQL := ReplaceText(ASQL, '(CHASSI', '(P.CHASSI');
  ASQL := ReplaceText(ASQL, '(CLIENTE_GRUPO', '(CG.DESCRICAO');
  ASQL := ReplaceText(ASQL, '(CNPJCPF', '(C.CNPJCPF');
  ASQL := ReplaceText(ASQL, '(FANTASIA', '(C.FANTASIA');
  ASQL := ReplaceText(ASQL, '(FUNCIONARIO', '(PV.RAZAOSOCIAL');
  ASQL := ReplaceText(ASQL, '(REPRESENTANTE', '(PR.RAZAOSOCIAL');
  ASQL := ReplaceText(ASQL, '(SITUACAO', '(P.SITUACAO');
  ASQL := ReplaceText(ASQL, '(OBSERVACAO', '(P.OBSERVACAO');
  ASQL := ReplaceText(ASQL, '(PEDIDO_COMPRA', '(P.PEDIDO_COMPRA');
  ASQL := ReplaceText(ASQL, '(PEDIDO_REP', '(P.PEDIDO_REP');
  ASQL := ReplaceText(ASQL, '(CONTATO', '(P.CONTATO');
  ASQL := ReplaceText(ASQL, '(CODVENDA', '(P.CODVENDA');
  ASQL := ReplaceText(ASQL, '(STATUS', '(P.STATUS');
end;

procedure TFrame_ConsuVenda_Mestre.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  FVendasSelecionadas := TStringList.Create;
  FVendasSelecionadas.QuoteChar := #0;
  FVendasSelecionadas.Delimiter := ',';
  //Formatação de casas decimais
//  ConsultaTOTAL.DisplayFormat := DECIMAL_2;
  WRFormataCamposDataSets1.AdicionarDataSet(Consulta, 'CONSULTA_VENDA');
  WRFormataCamposDataSets1.AdicionarDataSet(Venda_ProdutoT, 'CONSULTA_VENDA_PRODUTO');
end;

procedure TFrame_ConsuVenda_Mestre.ActFaturarExecute(Sender: TObject);
var
  ACodVendaNew, Fatura: string;
  I: Integer;
begin
  inherited;
  Fatura := 'Integral';
  for I := 0 to GridProdutos.DataController.RecordCount - 1 do
  begin
//    if VarSameValue(GridProdutos.DataController.Values[i, FColunaSelecao.Index], 1) then
//    begin
    if not VarSameValue(GridProdutos.DataController.Values[I, GridProdutosCODVENDA.Index],
      Consulta.FieldByName('CODIGO').AsString) then
    begin
      Fatura := 'Agrupado';
      Break;
    end;
//    end else
//      Fatura:= 'Parcial';
  end;

  if (MessageBox(0, PWideChar('Deseja fazer o Envio para financeiro? (' + Fatura + ')'), '',
    MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON1) in [idYes, idNo]) then                                   //Pode ter NF, mas não estar faturado
  begin
    Codigo := DS.DataSet.FieldByName('Codigo').AsString;
  {  AbreCadastro;
    if Not (Fatura = 'Integral') then
      with TFrmVenda(FFormCadastro) do
      try
        ACodVendaNew:=CopiarVendaFinanceiro;
        for I := 0 to GridProdutos.DataController.RecordCount - 1 do
          if VarSameValueWR(GridProdutos.DataController.Values[i, FColunaSelecao.Index], 1) then
             CopiarVendaProdutos(GridProdutos.DataController.Values[i, GridProdutosCODVENDA.Index],
                                 GridProdutos.DataController.Values[i, GridProdutosCODIGO.Index],
                                 ACodVendaNew);
//        GrupoFinanceiro.MakeVisible;
        AbrirRegistro(ACodVendaNew);
        Venda.Edit;
        Calc;
      finally
      end;
    TravaCadastro;  }
  end;
  // No faturamento Parcial deve informar o Valor e a quantidade faturada
  // Gravar a opção selecionada O Status no campo Status
  // Grava Opção selecionada
end;

procedure TFrame_ConsuVenda_Mestre.btnFiltroOrcamentoClick(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.btnFiltroSemClick(Sender: TObject);
begin
  inherited;
  VisualizarTodas1Click(self);
end;

procedure TFrame_ConsuVenda_Mestre.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited; // sÓ PODE ABRIR SE ESTIVER PREPARADA
 { if ActViewGraficoProdutos.Checked then
    QuerGraficoProduto.Open
  else if ActViewGrafico.Checked then
    QuerGrafico.Open;                  }
//  ShowMessage(Consulta.Sql.Text);
end;

procedure TFrame_ConsuVenda_Mestre.DesativaFiltro;   // Itens internos no menu
begin
{  VisualizarNaoFaturados1.Checked := False;
  VisualizarFaturados1.Checked := False;
  ActFiltroEmitidas.Checked := False;
  ActFiltroNaoEmitidas.Checked := False;
  ActFiltroNotaTodas.Checked := False;
  ActFiltroAprovado.Checked := False;
  ActFiltroReprovado.Checked := False;
  ActFiltroEmAberto.Checked := False;
  ActFiltroNaoFaturadas.Checked := False;
  ActFiltroPorCliente.Checked := False;
  ActFiltroPorRepresentante.Checked := False;
  ActFiltroPorFuncionario.Checked := False;    }
end;

procedure TFrame_ConsuVenda_Mestre.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  LibtnAgrupar.Visible := BtnVenda.Down and not (edtRapidoAgrupar.Text='Arquivados' {btnArquivados.Down});
//  LiAprovar.Visible := (BtnOrcamento.Down) and (BtnOrcamento.Visible) and not (edtRapidoAgrupar.Text='Arquivados' {btnArquivados.Down});
//  LiGeraNotaFiscal.Visible := ((BtnVenda.Down) or (BtnNota.Down)) and not (edtRapidoAgrupar.Text='Arquivados' {btnArquivados.Down});
end;

procedure TFrame_ConsuVenda_Mestre.DSStateChange(Sender: TObject);
begin
  inherited;
//  BtnAprovar.Enabled    := (DS.State = dsBrowse);
//  BtnDesagrupar.Enabled := (DS.State = dsBrowse);
//  BtnAgrupar.Enabled    := (DS.State = dsBrowse);

//  btnFaturar.Enabled    := (DS.State = dsBrowse);
  tiEmcaminhar.Enabled := (DS.State = dsBrowse);
end;

procedure TFrame_ConsuVenda_Mestre.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
//  QuerGrafico.Close;
//  QuerGraficoProduto.Close;
end;

procedure TFrame_ConsuVenda_Mestre.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  QuerGrafico.SQL.Add(SQLWhere.Text);
//  QuerGraficoProduto.SQL.Add(SQLWhere.Text);
end;

procedure TFrame_ConsuVenda_Mestre.btnArquivarClick(Sender: TObject);
begin
  inherited;
  AcaoSelecionados('ATIVO','N');
end;

procedure TFrame_ConsuVenda_Mestre.cxButton3Click(Sender: TObject);
begin
  inherited;
  MenuAcoes.PopupOnMouse;
end;

procedure TFrame_ConsuVenda_Mestre.cxtxtdtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
//  if Key = VK_RETURN then
//    TimerPesquisaTimer(Self);
end;

procedure TFrame_ConsuVenda_Mestre.BtnMigraCadastroVendaTipoClick(Sender: TObject);
begin
  inherited;
  FrmPrincipal.Action_Cad_OS.Execute;
  MigraTiposDeVenda.Close;
  MigraTiposDeVenda.Open;
end;

procedure TFrame_ConsuVenda_Mestre.BtnMigraConfirmarClick(Sender: TObject);
var
  i, ACountExecutado, ACountSelecionados: Integer;
  ARecord: TcxCustomGridRecord;
  ACod: string;
begin
  inherited;
  ACountSelecionados := GridConsultaDBTableView1.Controller.SelectedRecordCount;
  if ACountSelecionados = 0 then
    Exit;

  if MigraTiposDeVenda.IsEmpty then
  begin
    ShowMessageWR('Nenhum Tipo de Venda existente para o modelo desejado.');
    CbMigraVendaTipo.SetFocusWR;
    Exit;
  end;

  for i := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
  begin
    ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];

    // Se for pedido, não pode enviar venda agrupada.
    if  (TVendaTipoModelo(CbMigraModelo.GetObjetoSelecionado) = TVendaTipoModelo(3))
        and (VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODVENDA_VINCULADA.Index], '') <> '')
        and (VarToStrDef(ARecord.Values[GridConsultaDBTableView1STATUS.Index], '') = 'ATIVO CRIADO')
    then
    begin
      ShowMessageWR('Não é possível encaminhar uma venda agrupada para pedido.');
      Exit;
    end;
  end;

  if ShowMessageWR('Deseja migrar o Tipo de Venda dos itens selecionados?', MB_ICONQUESTION) <> mrYes then
    Exit;

  ACountExecutado := 0;
  for i := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
  begin
    ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];
    ACod := VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index], '');

    if TFrame_Venda_Mestre.MigrarTipoDaVenda( ACod,
                                    MigraTiposDeVendaDESCRICAO.AsString,
                                    TVendaTipoModelo(CbMigraModelo.GetObjetoSelecionado) = TVendaTipoModelo(3))
    then
      Inc(ACountExecutado);
  end;

  RefreshConsulta;
  if ACountExecutado <> ACountSelecionados then
    ShowMessageWR('Uma ou mais itens não puderam ser migrados devido ao tipo desejado não ser compatível com o '
      + 'item selecionado. Exemplo: Não é possível definir uma venda faturada como "Orçamento".',
      MB_ICONWARNING);
  FechaPanelForm(PnlMigraVendaTipo);
end;

procedure TFrame_ConsuVenda_Mestre.btnReativarClick(Sender: TObject);
begin
  inherited;
  AcaoSelecionados('ATIVO','S');
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroAprovadoExecute(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroEmitidasExecute(Sender: TObject);           // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
//  BtnNota.Down := True;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroNaoEmitidasExecute(Sender: TObject);       // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
//  BtnNota.Down := True;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroNotaFiscalExecute(Sender: TObject);    // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroNotaTodasExecute(Sender: TObject);      // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
//  BtnNota.Down := True;
  RefreshConsulta
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroOrcamentoExecute(Sender: TObject);     // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroPorRepresentanteExecute(Sender: TObject);   // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
//  BtnVenda.Down := True;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroPorFuncionarioExecute(Sender: TObject);    // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
//  BtnVenda.Down := True;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroOrcamentoSituacaoExecute(Sender: TObject);
begin
  inherited;
//  BtnOrcamento.Down := True;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroTipoVendaExecute(Sender: TObject);
begin
  inherited;
//  BtnVenda.Down := True;
  if ActFiltroTipoVenda.Checked then
    GridConsultaDBTableView1VENDA_TIPO.GroupIndex := 1
  else
    GridConsultaDBTableView1VENDA_TIPO.GroupIndex := -1;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActFiltroVendaExecute(Sender: TObject);    // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActListConsultaExecute(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  AgrupaPorPessoa(Action);   // Onde chama ??
end;

procedure TFrame_ConsuVenda_Mestre.ActViewGraficoExecute(Sender: TObject);  // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.ActViewGraficoProdutosExecute(Sender: TObject);  // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;     // Onde chama
end;

procedure TFrame_ConsuVenda_Mestre.ActViewPadraoExecute(Sender: TObject);   // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.AgrupaPorPessoa(AActionFiltro: TObject);
var
  AColuna: TcxGridDBColumn;
begin
  GridConsultaDBTableView1.Controller.BeginUpdate;
  try
    GridConsultaDBTableView1RAZAOSOCIAL.GroupIndex := -1;
    GridConsultaDBTableView1FUNCIONARIO.GroupIndex := -1;
    GridConsultaDBTableView1REPRESENTANTE.GroupIndex := -1;

    AColuna := nil;
    if AActionFiltro = ActFiltroPorCliente then
      AColuna := GridConsultaDBTableView1RAZAOSOCIAL
    else if AActionFiltro = ActFiltroPorFuncionario then
      AColuna := GridConsultaDBTableView1FUNCIONARIO
    else if AActionFiltro = ActFiltroPorRepresentante then
      AColuna := GridConsultaDBTableView1REPRESENTANTE;

    if (AColuna <> nil) and TAction(AActionFiltro).Checked then
      AColuna.GroupIndex := 2;
  finally
    GridConsultaDBTableView1.Controller.EndUpdate;
  end;
end;

procedure TFrame_ConsuVenda_Mestre.LayoutChanged;
begin
  dxLayoutControl1.BeginUpdate;
  try
    inherited;
    GrupoTotal.Visible := VisualizarTotalVenda1.Checked and VisualizarTotalVenda1.Enabled;
    LiMemoObservacao.Visible := VisualizarObservacoes1.Checked;
    SplitterVendaProdutoObservacao.Visible := VisualizarObservacoes1.Checked;
    LiGridVendaProduto.Visible := VisualizarProdutosVenda1.Checked;

    if ActViewGraficoProdutos.Checked then
      cxGridLevel1.GridView := GridConsultaDBChartView2
    else if ActViewGrafico.Checked then
      cxGridLevel1.GridView := GridConsultaDBChartView1
    else
      cxGridLevel1.GridView := GridConsultaDBTableView1;

    //Ajuste do Rodapé. Quando o grupo GrupoProdutosObs não estiver visível, não faz sentido ter o splitter, então
    //o alinhamento vertical deve ser alterado para permanecer na parte inferior da form
    GrupoRodape.Visible := LiMemoObservacao.Visible or LiGridVendaProduto.Visible;
    SplitterRodape.Visible := GrupoRodape.Visible;
//    GrupoSubviewFaturamento.Visible := (ConfiguracoesSistema.MetodoFaturamento = vmfQuantEntregue);
    case GrupoProdutosObs.Visible of
      True:
        GrupoRodape.AlignVert := avClient;
      False:
        begin
          GrupoRodape.AlignVert := avBottom;
          GrupoRodape.SizeOptions.Height := 0; //Necessário senão o grupo fica com o tamanho anterior, não redimensiona automaticamente
        end;
    end;
  finally
    dxLayoutControl1.EndUpdate(False);
  end;
end;

procedure TFrame_ConsuVenda_Mestre.LookupVendaTipoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  Transa.Connection := FConexao;
//  TFDQuery(DataSet).Connection := FConexao;
end;

procedure TFrame_ConsuVenda_Mestre.LookupVendaTipoCalcFields(DataSet: TDataSet);
begin
  inherited;
  LookupVendaTipoModeloObj.AsInteger := Integer(VendaTipoModeloStrToEnum(LookupVendaTipoMODELO.AsString));
end;

procedure TFrame_ConsuVenda_Mestre.MemThdTotalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  LiAtvCarregandoTotal.Visible := False;
  AtvCarregandoTotal.Active := False;
end;

procedure TFrame_ConsuVenda_Mestre.MigrarTipodeVenda1Click(Sender: TObject);
begin
  inherited;
  tiEmcaminharClick(nil);
end;

procedure TFrame_ConsuVenda_Mestre.MigraTiposDeVendaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CbMigraVendaTipo.EditValue := MigraTiposDeVendaCODIGO.AsVariant;
end;

procedure TFrame_ConsuVenda_Mestre.MigraTiposDeVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // Se for Pedido, entra neste if, para dar balão na função do Leandro.
  if TVendaTipoModelo(CbMigraModelo.GetObjetoSelecionado) = TVendaTipoModelo(3) then
    MigraTiposDeVenda.ParamByName('Modelo').AsString := 'VENDA'
  else
    MigraTiposDeVenda.ParamByName('Modelo').AsString := VendaTipoModeloToStr(TVendaTipoModelo(CbMigraModelo.GetObjetoSelecionado));
end;

procedure TFrame_ConsuVenda_Mestre.MostrarINATIVASAGRUPADAS1Click(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.NotasFiscais1Click(Sender: TObject);   // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.Todos1Click(Sender: TObject);    // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.TreeListUsuariosClick(Sender: TObject);
Var
  ASubNivel :String;
begin
  inherited;
  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Encaminhar' then  // Aqui tem que verificar se o treelista esta focado, quando clica no + para espandir a item
    tiEmcaminhar.Click;
  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString, ['Agência','Funcionário', 'Representante',
                                                              'Apps', 'Situação']) then
    TreeListUsuarios.Selections[0].Expanded:=Not TreeListUsuarios.Selections[0].Expanded;
  if MemTreeList.FieldByName('DESCRICAO').AsString = 'Adicionar estágio' then
    FrmPrincipal.Action_Venda_Estagio.Execute;


  Consulta.DisableControls;
  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString,
             ['Todos'])then
  begin
    RefreshConsulta;
  end;

//  dxLayoutControl1.BeginUpdate;
  if MatchStr(MemTreeList.FieldByName('TABELA').AsString, ['SITUACAO','VENDA_TIPO', 'AGENCIA', 'FUNCIONARIO', 'REPRESENTANTE','VENDA_ESTAGIO', 'SITUACAO', 'STATUS']) then
  begin
    if MatchStr(MemTreeList.FieldByName('TABELA').AsString, ['SITUACAO', 'STATUS', 'AGENCIA', 'FUNCIONARIO', 'REPRESENTANTE']) then
    begin
      {if edtRapidoAgrupar.Text <> 'Situação Financeira'  then
        edtRapidoAgrupar.Text:= 'Situação Financeira'
      else }RefreshConsulta;
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'VENDA_TIPO' then
    begin
      {if (edtRapidoAgrupar.Text <> 'Estágio')  then
        edtRapidoAgrupar.Text:= 'Estágio'
      else }RefreshConsulta;
    end;
    if MemTreeList.FieldByName('TABELA').AsString = 'VENDA_ESTAGIO' then
    begin
      ASubNivel := ProcuraField('SUBNIVEL', 'VENDA_TIPO', ['DESCRICAO'], [MemTreeList.FieldByName('CHAVE_PK2').AsString]);
    {  if ASubNivel = '-Agrupar Por-'  then
      begin
        if edtRapidoAgrupar.Text <> 'Situação Financeira'  then
          edtRapidoAgrupar.Text:= 'Situação Financeira';
      end
      else begin
        if edtRapidoAgrupar.Text <> ASubNivel  then
          edtRapidoAgrupar.Text:= ASubNivel
        else
          RefreshConsulta;
      end;  }
    end;


//      RefreshConsulta;
  end;
  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString, ['Faturamento Agrupado', 'Em aberto - Previsão']) then
    RefreshConsulta;
  Consulta.EnableControls;
end;

procedure TFrame_ConsuVenda_Mestre.TreeListUsuariosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  ACodigo: Variant;
  ANode: TcxTreeListNode;
  I: Integer;
  QuerX: TFDQuery;
  ACaixaRec: TCaixaRec;
begin
  inherited;
  LimpaAcaoSelecaoExtras;
  Anode := TcxTreeList(Sender).GetNodeAt(X,Y);
// PESSOA_AGENCIA_CODIGO
// PESSOA_FUNCIONARIO_CODIGO
// PESSOA_REPRESENTANTE_CODIGO
  if ANode <> nil then
  begin
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'AGENCIA' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2');
     AcaoSelecionados('PESSOA_AGENCIA_CODIGO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'FUNCIONARIO' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2');
     AcaoSelecionados('PESSOA_FUNCIONARIO_CODIGO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'REPRESENTANTE' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2');
     AcaoSelecionados('PESSOA_REPRESENTANTE_CODIGO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'VENDA_ESTAGIO' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
     FAcaoSelecionados_Estagio:= TreeListGetValorNode(ANode, 'DESCRICAO');
     AcaoSelecionados('VENDA_TIPO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'VENDA_TIPO' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
     AcaoSelecionados('VENDA_TIPO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'SITUACAO' then
   begin
     ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
     AcaoSelecionados('SITUACAO', ACodigo);
   end else
   if TreeListGetValorNodeString(ANode, 'TABELA') = 'FATURA_PREVISAO' then
   begin
    for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
    begin
      if (VarToStr(GridConsultaDBTableView1.Controller.SelectedRows[I].Values[GridConsultaDBTableView1CODVENDA_VINCULADA.Index]) <> '') then
      begin
        ShowMessageWR('Não é possível transformar vendas agrupadas em Previsão.');
        Exit;
      end;
    end;

    QuerX := GeraFDQuery;
    try
      // Verifica se há parcelas recebidas e se estas estão em caixa fechado
      QuerX.SQL.Text := 'select F.CODPEDIDO ' +
        'from FINANCEIRO F ' +
        'where (F.CODPEDIDO = :Cod) ' +
        '      and (F.STATUS like ''ATIVO%'') ' +
        '      and (F.TIPO in (''RECEBIDA''))';
      for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        QuerX.Close;
        QuerX.Params[0].AsString := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
        QuerX.Open;
        while not QuerX.eof do
        begin
          if QuerX.RecordCount > 0 then
          begin
            ShowMessageWR
              ('Já existem parcelas recebidas na venda ' + QuerX.FieldByName('CODPEDIDO').AsString + '. Não foi possível transformar em previsão.');
            Exit;
          end;
          QuerX.next;
        end;
      end;
    finally
      QuerX.Free;
    end;
    ACodigo := TreeListGetValorNode(ANode, 'CHAVE_PK2'); // Aqui tem que ir tbm o Estágio
    AcaoSelecionados('FATURA_PREVISAO', ACodigo);
  end;
end;
end;

procedure TFrame_ConsuVenda_Mestre.TreeListUsuariosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
Var
  ANode: TcxTreeListNode;
begin
  // aqui pode arrastar qual coisa aind, tem que restrngir para o GridConsulta e Kanban
  Anode := TcxTreeList(Sender).GetNodeAt(X,Y);
  if (ANode <> nil)and MatchStr(TreeListGetValorNodeString(ANode, 'TABELA') , ['AGENCIA', 'FUNCIONARIO','REPRESENTANTE', 'VENDA_ESTAGIO','VENDA_TIPO','SITUACAO', 'FATURA_PREVISAO']) then
    Accept := True
  else
    Accept:= False;
end;

procedure TFrame_ConsuVenda_Mestre.PorCliente1Click(Sender: TObject); // Toadas a as procedures iguais em uma única chamada
begin
  inherited;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Mestre.QuerGraficoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  Transa.Connection := FConexao;
//  TFDQuery(DataSet).Connection := FConexao;
end;

procedure TFrame_ConsuVenda_Mestre.RelVendaAfterClose(DataSet: TDataSet);
begin
  inherited;
  RelVenda_Financeiro.Close;
  RelVenda_Produto.Close;
  RelVenda_Produto_Centro_Trabalho.Close;
end;

procedure TFrame_ConsuVenda_Mestre.RelVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  RelVenda_Financeiro.open;
  RelVenda_Produto.open;
  RelVenda_Produto_Centro_Trabalho.open;
end;

procedure TFrame_ConsuVenda_Mestre.tiArquivarClick(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('ATIVO','N');
end;

procedure TFrame_ConsuVenda_Mestre.tiEmcaminharClick(Sender: TdxTileControlItem);
var
  AModelo: TVendaTipoModelo;
begin
  inherited;
  CbMigraModelo.Properties.BeginUpdate;
  try
    CbMigraModelo.Properties.Items.Clear;
    for AModelo := Low(TVendaTipoModelo) to High(TVendaTipoModelo) do
      CbMigraModelo.Properties.Items.AddObject(VendaTipoModeloToDescricao(AModelo), TObject(AModelo));
    CbMigraModelo.Properties.Items.AddObject('Pedido', TObject(3));;
    CbMigraModelo.ItemIndex := 0;
  finally
    CbMigraModelo.Properties.EndUpdate(True);
  end;
  ShowPanelForm(PnlMigraVendaTipo, bsSingle);
end;

procedure TFrame_ConsuVenda_Mestre.tiFaturamentoParcialClick(
  Sender: TdxTileControlItem);
var
  AFrmVendaNovo, AFrmVendaBackup: TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  AListaProduto: TArray<Integer>;
  AListaQTDAPECA: TArray<Double>;
  I, J: Integer;
  QuerX, QuerY: TFDQuery;
  ACodVendaVinculada, ACodVendaPrincipal: String;
begin
  inherited;
  if ShowMessageWR('Criar Faturamento Parcial desta venda?', MB_ICONQUESTION) <> mrYes then
    exit;
  if Consulta.FieldByName('STATUS').AsString = 'ATIVO PARCIAL' then
  begin
    ShowMessage('Não é possivel faturar parcialmente uma venda que já é parcial de outra');
    exit;
  end;
  SetLength(AListaProduto, 1000);
  SetLength(AListaQTDAPECA, 1000);
  J := 0;
  try
    for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
    begin
      if not GridProdutos.Controller.SelectedRecords[i].IsData then
        Continue;
      GridProdutos.DataController.ChangeFocusedRecordIndex(GridProdutos.Controller.SelectedRecords[i].RecordIndex);

      J := J + 1;
      AListaProduto[J] := Venda_ProdutoT.FieldByName('CODIGO').AsInteger;

//      if Venda_ProdutoT.FieldByName('QUANTSELECIONADA').AsFloat = 0 then
//      begin
//        ShowMessage('O produto: ' + Venda_ProdutoT.FieldByName('DESCRICAO').AsString + ' não tem quantidade selecionada');
//        exit;
//      end;
//
//
//      if ((Venda_ProdutoT.FieldByName('QUANTSELECIONADA').AsInteger) + (Venda_ProdutoT.FieldByName('QUANTFATURADA').AsInteger)) > (Venda_ProdutoT.FieldByName('QUANT').AsInteger) then
//      begin
//        ShowMessage('O produto: ' + Venda_ProdutoT.FieldByName('DESCRICAO').AsString + ' a quantidade a ser faturada ultrapassa o total da quantidade disponivel');
//        exit;
//      end;
//
//      AListaQTDAPECA[J] := Venda_ProdutoT.FieldByName('QUANTSELECIONADA').AsFloat;
    end;

    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
    AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
//    QuerY := GeraFDQuery(ATransa);
//    QuerY.SQL.Text := 'select * from venda v where v.codigo = ' + Consulta.FieldByName('CODIGO').AsString;
//    QuerY.Open
//
//    QuerY
    with TFrame_Venda_Venda(AFrmVendaTemporaria) do
    begin
      if Cadastro.FieldByName('STATUS').AsString <> 'ATIVO PRINCIPAL' then
      begin
        Cadastro.Edit;
        QuerX := GeraFDQuery;

        try
          QuerX.SQL.Text := 'select tem_fatura from venda_situacao where tem_fatura = ''S''';
          QuerX.Open;
          if QuerX.RecordCount = 1 then
          begin
            Cadastro.FieldByName('SITUACAO').AsString  := QuerX.FieldByName('DESCRICAO').AsString;
          end;

          Cadastro.FieldByName('TOTAL_FATURA').AsFloat := Cadastro.FieldByName('TOTAL').AsFloat;
          Cadastro.FieldByName('CODVENDA_VINCULADA').AsString := Cadastro.FieldByName('CODIGO').AsString;
          Cadastro.FieldByName('STATUS').AsString    := 'ATIVO PRINCIPAL';
//          Cadastro.FieldByName('IS_VENDA').AsString  := 'N';
//          Cadastro.FieldByName('IS_PEDIDO').AsString := 'S';
          Cadastro.Post;
          TransaFD.Commit;
        finally
          QuerX.Free;
        end;
      end;
      ACodVendaVinculada := Cadastro.FieldByName('CODVENDA_VINCULADA').AsString;
      ACodVendaPrincipal := Cadastro.FieldByName('CODIGO').AsString;
    end;
//    AFrmVendaBackup := TFrmVenda_Base.FrameDuplicaVendaBaseSilent(40, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

    AFrmVendaNovo := TFrmVenda_Base.FrameDuplicaApenasVendaBase(40, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProduto(40, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro));
                                                                                               //AFrmVendaTemporaria.Venda_Produto
    with TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro) do
    begin
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.First;
      while not TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Eof do
      begin
        if ((TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('PARENT').IsNull) or (TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('PARENT').AsInteger = 0)) then
        begin
          if not MatchInt(TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('CODIGO').AsInteger, AListaProduto) then
          begin
            TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).btnRemoverProdutoClick(nil);
          end else
          begin
            TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Next;
          end;
        end else
        begin
          TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Next;
        end;
      end;

      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODVENDA_PRINCIPAL').AsString  := ACodVendaPrincipal;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODVENDA_VINCULADA').AsString  := ACodVendaVinculada;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODIGOVENDA').AsString   := Cadastro.FieldByName('CODIGO').AsString;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('OBSERVACAO').AsString    := Cadastro.FieldByName('OBSERVACAO').AsString;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_VENDA').AsString      := 'S';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_PEDIDO').AsString     := 'N';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_NOTAFISCAL').AsString := 'S';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_PARCIAL').AsString    := 'S';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('STATUS').AsString        := 'ATIVO PARCIAL';
  //      Cadastro.FieldByName('CODVENDA').AsString := AVendasSelecionadas;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SprFechaMemTables;  //CalculaProduto
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.CalcBuild;  //CalculaProduto
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SprCopiarFormula;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SuperCalc;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).TransaFD.Commit;
    end;
  finally
    AFrmVendaTemporaria.free;
  end;
end;

procedure TFrame_ConsuVenda_Mestre.tiImpressoesClick(Sender: TdxTileControlItem);
var
  ASQLOrderBy, ASQLWhere: string;
  i: Integer;
begin
  RelVenda.Close;
  LimpaSQLWhere(RelVenda);
  if GridConsultaDBTableView1.Controller.SelectedRecordCount > 1 then
    ASQLWhere := GetSQLVendasSelecionadas(False)
  else
  begin
     ASQLWhere:= 'where (P.CODIGO = :CODIGO)';
    for i := 0 to GridConsultaDBTableView1.DataController.RecordCount - 1 do
      ASQLWhere := ASQLWhere + 'or (P.CODIGO = ' + QuotedStr(GridConsultaDBTableView1.DataController.Values
        [i, GridConsultaDBTableView1CODIGO.Index]) + ')';

  end;
  RelVenda.SQL.Add(ASQLWhere);
  ASQLOrderBy := GetSQLOrderBy(GridConsultaDBTableView1);
  WREventosConsulta.DoSQLTrataNomes(ASQLOrderBy);
  RelVenda.SQL.Add(ASQLOrderBy);
  RelVenda.Open;
  inherited;
end;

procedure TFrame_ConsuVenda_Mestre.tiImprimirClick(Sender: TdxTileControlItem);
begin
  inherited;
  MenuAcoes.PopupOnMouse;
end;

procedure TFrame_ConsuVenda_Mestre.tiReativarClick(Sender: TdxTileControlItem);
begin
  inherited;
  AcaoSelecionados('ATIVO','S');
end;

//initialization
//  RegisterClass(TFrame_ConsuVenda_Mestre);

{$REGION ' Rotinas desativadas'}

(*
procedure TFrame_ConsuVenda_Mestre.CarregaTreeList;
var
  QuerX: TFDQuery;
  ACod, AImagem, Anivel: Integer;
  AQuant:Variant;
  AField: TField;
  AFormatoData, ASQLTratado, AVenda_Tipo :String;
  AFiltro: TStringList;
begin
  inherited;
  if Not MemTreeList.IsEmpty then
    cxStatusKeeperTreelist.SaveState;

  AFiltro := TStringList.Create;
  QuerX := GeraFDQuery(Transa);
  TreeListUsuarios.BeginUpdate;
  try

   TreeListUsuarios.DataController.DataSource:=nil;
    MemTreeList.Open;
    if Not MemTreeList.IsEmpty then
     MemTreeList.EmptyDataSet;

// MODELO >>>>> AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string; ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);

//    if poupMenuTodasasnolidas.Checked then// Só aparece em raros os casos melhor dividir em assuntos APPs, menos peso para carregar e conceitos diferentes. Venda, Leads, Cobrança, essa divisão é importante
    AddTreeList(1, -1, 6, 'Todos', '', 'TODOS', Null, Null, Null, Null);
         *)
   (* if Not (btnDtFiltro_SemFiltro.Down) and (CbCamposData.ItemIndex >= 0) and not VarIsNull(EdtDataInicio.EditValue) and not VarIsNull(EdtDataFim.EditValue) then
    begin
      AFormatoData := DATA_FB;
      //Se o campo for do tipo Date, não pode ter a hora no filtro pois ocasiona erro no SQL
      AField := Consulta.FindField(GetNomeCampoFormatado(CbCamposData.GetItemSelecionado));
      if (AField <> nil) and (AField.DataType <> ftDate) then
        AFormatoData := AFormatoData + ' hh:nn:ss:zzz';

      //Manter os "(" e ")" aqui mesmo usando o AddAnd que já colocar estes abre e fecha parênteses. É necessário para
      //o DoSQLTrataNomes
      ASQLTratado := '(' + GetNomeCampoFormatado(CbCamposData.GetItemSelecionado) + ' between ' +
                     QuotedStr(FormatDateTime(AFormatoData, StartOfTheDay(EdtDataInicio.Date))) + ' and ' +
                     QuotedStr(FormatDateTime(AFormatoData, EndOfTheDay(EdtDataFim.Date))) + ')';

      WREventosConsulta.DoSQLTrataNomes(ASQLTratado);
      AFiltro.AddAnd(ASQLTratado);
    end;
    *)
       (*
    if edtRapidoModelo.Text='Orçamento' then
      AFiltro.AddAnd('P.IS_ORCAMENTO = ''S''');

    if edtRapidoModelo.Text='Pedido' then
      AFiltro.AddAnd('P.IS_PEDIDO = ''S''');

    if edtRapidoModelo.Text='Venda' then
      AFiltro.AddAnd('P.IS_VENDA = ''S''');

    if edtRapidoModelo.Text='Notas Fiscais' then
      AFiltro.AddAnd('(P.IS_NOTAFISCAL = ''S'')');

    if FSQLFiltroNegarTipoVendaUsuario <> '' then
      AFiltro.AddAnd('not (P.VENDA_TIPO in (' + FSQLFiltroNegarTipoVendaUsuario + '))');

    if not LbUCLiberarVerTodasVendas.Enabled then
      AFiltro.AddAnd('P.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(Usuario.CodigoFuncionario));

    if MultiEmpresa and not VisualizarTodasEmpresas1.Checked then
    begin
      if Not Empresa.Active then   // Queda da Rede
      begin
        Empresa.Close;
        Empresa.Open;
      end;
      if Empresa.FieldByName('CODIGO').AsInteger = 1 then
        AFiltro.AddAnd('(P.CODIGO like ' + QuotedStr('%-' + Empresa.FieldByName('CODIGO').AsString) +
          ') or not (P.CODIGO like ''%-%'')')
      else
        AFiltro.AddAnd('P.CODIGO like ' + QuotedStr('%-' + Empresa.FieldByName('CODIGO').AsString));
    end;


    ACod := 100;

    AddTreeList(2, 0, 2, 'Situações', '', Null, Null, Null, Null, Null);    // Sem Imagem

    QuerX.SQL.Text := ' select coalesce(SITUACAO, '''') as SITUACAO, Count(1) as Quant from VENDA P where (P.ATIVO <> ''N'') and '
                      + AFiltro.Text +
                      ' group by 1 ';
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin                       // Tem que colocar as imagens aqui
     { if QuerX.FieldByName('SITUACAO').AsString = 'Parado' then // Aqui Verificar, Play, Pause, Cancelado
        AImagem:= 3;
      if QuerX.FieldByName('SITUACAO').AsString = 'Produzindo' then
        AImagem:= 4;
      if QuerX.FieldByName('SITUACAO').AsString = 'Novo' then
        AImagem:= 5;
      if QuerX.FieldByName('SITUACAO').AsString = 'Cancelado' then
        AImagem:= 5;   }

      inc(ACod);
      AddTreeList(ACod, 2, AImagem, QuerX.FieldByName('SITUACAO').AsString, 'SITUACAO', 'SITUACAO',
         Null, QuerX.FieldByName('SITUACAO').Value, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;

    ACod := 700;
    AddTreeList(3, 0, 2, 'Status','', Null, NULL, Null, Null, Null);

    QuerX.Close;
    QuerX.SQL.Text := 'select coalesce(P.STATUS, '''') as STATUS, Count(1) as QUANT from VENDA P WHERE (P.ATIVO <> ''N'') and '
                  + AFiltro.Text +
                  ' group by 1 ';
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
      inc(ACod);
      AddTreeList(ACod, 3, 2, QuerX.FieldByName('STATUS').AsString, 'STATUS', 'STATUS',
        Null, QuerX.FieldByName('STATUS').Value, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;

    ACod := 1000;
    AddTreeList(10, 0, 2, 'Tipo de venda', '', Null, Null, Null, Null, Null);    // Sem Imagem

    QuerX.SQL.Text:= ' select coalesce(P.VENDA_TIPO, '''') as VENDA_TIPO, coalesce(P.VENDA_ESTAGIO, '''') as VENDA_ESTAGIO, count(1) as QUANT '+
                     ' from VENDA P '+
                     ' where P.ATIVO = ''S'' and '+ AFiltro.Text +
                     ' Group by P.VENDA_TIPO, P.VENDA_ESTAGIO '+
                     ' order by P.VENDA_TIPO Asc, P.VENDA_ESTAGIO ';

    QuerX.Open;
//    Criando Sub-Nível
    AVenda_Tipo :=  '';
    QuerX.First;
    while not QuerX.Eof do
    begin
      inc(ACod);
      if QuerX.FieldByName('VENDA_ESTAGIO').Value = null then
        QuerX.Next
      else begin
        if AVenda_Tipo <>  QuerX.FieldByName('VENDA_TIPO').AsString  then
        begin
          AVenda_Tipo :=  QuerX.FieldByName('VENDA_TIPO').AsString;
          AImagem:= 0;//ifthen(QuerX.FieldByName('PRIVADO').AsString = 'S', 1, 0);
          AddTreeList(ACod , 10, AImagem,
            QuerX.FieldByName('VENDA_TIPO').AsString, 'VENDA', 'VENDA_TIPO', Null, QuerX.FieldByName('VENDA_TIPO').Value, Null,
            {QuerX.FieldByName('Quant').Value}null);
          ANivel:=ACod;
        end;
        while not QuerX.Eof and (AVenda_Tipo =  QuerX.FieldByName('VENDA_TIPO').AsString) do
        begin
          inc(ACod);
          AddTreeList(ACod , ANivel, AImagem,
            QuerX.FieldByName('VENDA_ESTAGIO').AsString, 'VENDA', 'VENDA_ESTAGIO', Null, QuerX.FieldByName('VENDA_TIPO').Value, QuerX.FieldByName('VENDA_ESTAGIO').Value,
            QuerX.FieldByName('Quant').Value);
          QuerX.Next;
        end;
      end;
//      QuerX.Next;
    end;

    if FrmPrincipal.actProducao_Equipe.Enabled then
      AddTreeList(2999, 10, 7, 'Adicionar estágio', '', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2

    // Adiciona todos os usuários, sem divisão por setor
// PESSOA_AGENCIA_CODIGO
// PESSOA_FUNCIONARIO_CODIGO
// PESSOA_REPRESENTANTE_CODIGO
    QuerX.SQL.Text := 'select PE.codigo, PE.FANTASIA,Count(1) as Quant from VENDA P '+
                      ' left join PESSOAS PE ON P.PESSOA_AGENCIA_CODIGO = PE.CODIGO '+
                      ' where P.ATIVO = ''S'' and '+ AFiltro.Text +
                      ' GROUP BY PE.codigo, pE.FANTASIA order by PE.FANTASIA asc ';
    QuerX.Open;
    if QuerX.RecordCount>0 then
    begin
    AddTreeList(18, 0, 2, 'Agência','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod);
    end;
    QuerX.First;
    while not QuerX.Eof do
    begin
      AImagem:=4;//ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      inc(ACod);
      AddTreeList(ACod, 18, AImagem, QuerX.FieldByName('FANTASIA').AsString, 'AGENCIA', 'AGENCIA',
        Null, QuerX.FieldByName('CODIGO').Value, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;
    inc(ACod);

    QuerX.SQL.Text := 'select PE.codigo, PE.FANTASIA,Count(1) as Quant from VENDA P '+
                      ' left join PESSOAS PE ON P.PESSOA_FUNCIONARIO_CODIGO = PE.CODIGO '+
                      ' where P.ATIVO = ''S'' and '+ AFiltro.Text +
                      ' GROUP BY PE.codigo, pE.FANTASIA order by PE.FANTASIA asc ';
    QuerX.Open;
    if QuerX.RecordCount>0 then
    begin
    AddTreeList(19, 0, 2, 'Funcionário','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod);
    end;
    QuerX.First;
    while not QuerX.Eof do
    begin
      AImagem:=4;//ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      inc(ACod);
      AddTreeList(ACod, 19, AImagem, QuerX.FieldByName('FANTASIA').AsString, 'FUNCIONARIO', 'FUNCIONARIO',
        Null, QuerX.FieldByName('CODIGO').Value, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;
    inc(ACod);

    QuerX.SQL.Text := 'select PE.codigo, PE.FANTASIA,Count(1) as Quant from VENDA P '+
                      ' left join PESSOAS PE ON P.PESSOA_REPRESENTANTE_CODIGO = PE.CODIGO '+
                      ' where P.ATIVO = ''S'' and '+ AFiltro.Text +
                      ' GROUP BY PE.codigo, pE.FANTASIA order by PE.FANTASIA asc ';
    QuerX.Open;
    if QUERX.RecordCount>0 then
    begin
    AddTreeList(20, 0, 2, 'Representante','', Null, NULL, Null, Null, Null);     // Imagem de Pasta 2
    Inc(ACod);
    end;
    QuerX.First;
    while not QuerX.Eof do
    begin
      AImagem:=4;//ifthen(QuerX.FieldByName('OnLine').AsInteger < 1, 3, 4);
      inc(ACod);
      AddTreeList(ACod, 20, AImagem, QuerX.FieldByName('FANTASIA').AsString, 'REPRESENTANTE', 'REPRESENTANTE',
        Null, QuerX.FieldByName('CODIGO').Value, Null, QuerX.FieldByName('QUANT').Value);
      QuerX.Next;
    end;
    inc(ACod);

    QuerX.SQL.Text := 'select PE.codigo, PE.FANTASIA,Count(1) as Quant from VENDA P '+
                      ' left join PESSOAS PE ON P.PESSOA_RESPONSAVEL_CODIGO = PE.CODIGO '+
                      ' where PE.FATURA_PREVISAO = ''S'' and P.ATIVO = ''S'' and '+ AFiltro.Text +
                      ' GROUP BY PE.codigo, pE.FANTASIA order by PE.FANTASIA asc ';
    QuerX.Open;

    if QUERX.RecordCount>0 then
    begin
      AddTreeList(28, 4, 2, 'Faturamento Agrupado', 'Faturamento Agrupado', 'Faturamento Agrupado', Null, Null, Null, Null);
      AddTreeList(29, 4, 2, 'Em aberto - Previsão', 'FATURA_PREVISAO', 'FATURA_PREVISAO', Null, 'S', Null, Null);
    end;
                   // Muita atenção no item 4 abaixo se tiver outro nde usar um númeiro maior
    AddTreeList(30, 4, 2, 'Apps', '', Null, Null, Null, Null, Null);

    QuerX.SQL.Text:= ' select H.MODULO, H.TABELA, Count(1) as Quant '+
                     ' from HISTORICO_NOTIFICACAO H where NOT(H.TABELA = ''USUARIO'')AND NOT(H.TABELA = ''VENDA'') '+
                     '  and(H.CodUsuario = '+Usuario.Codigo.ToString+')and(H.DT_LIDO IS NULL) '+
                     ' group by H.MODULO, H.TABELA ';
    QuerX.Open;

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['AGENDA','AGENDA']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(5, 30, 8, 'Orçamento', 'CRM', 'AGENDA', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','PRODUCAO']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(6, 30, 9, 'Pedido', 'PRODUCAO',  'PRODUCAO', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','PRODUCAO']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(7, 30, 9, 'Venda', 'PRODUCAO',  'PRODUCAO', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PRODUCAO','PRODUCAO']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(8, 30, 9, 'Nota Fiscal', 'PRODUCAO',  'PRODUCAO', Null, Null, Null, AQuant);

    AQuant:=null;
    if QuerX.locate('MODULO;TABELA', varArrayOf(['PAINEL','PAINEL']),[]) then  AQuant:= QuerX.FieldByName('QUANT').Value;
    AddTreeList(9, 30, 14, 'Painel de controle', 'PAINEL',  'PAINEL', Null, Null, Null, AQuant);

  finally
    QuerX.Free;
    AFiltro.Free;
    TreeListUsuarios.DataController.DataSource:=DSMemTreeList;

//  Fechar a aba de setores, quando tem muitos
    TreeListUsuarios.EndUpdate;
    try
      cxStatusKeeperTreelist.LoadState;
    Except // Se não conseguir refazer o stado anterior não tem problema
    end;
//    TimerUsuarioOnLine.Enabled:=True;
  end;
end;    *)
                   (*
procedure TFrame_ConsuVenda_Mestre.AddTreeList(ACodigo, AParent, AImageIndex: Integer;
  ADescricao, AModulo: string; ATabela, AChave_PK1, AChave_PK2, AChave_PK3,
  AQuant: Variant);
begin
  MemTreeList.Insert;
  MemTreeList.FieldByName('CODIGO').AsInteger     := ACodigo;
  MemTreeList.FieldByName('DESCRICAO').AsString   := ADescricao;
  MemTreeList.FieldByName('PARENT').AsInteger     := AParent;
  MemTreeList.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;
  MemTreeList.FieldByName('TABELA').Value         := ATabela;
  MemTreeList.FieldByName('MODULO').Value         := AModulo;
  MemTreeList.FieldByName('CHAVE_PK1').Value      := AChave_PK1;
  MemTreeList.FieldByName('CHAVE_PK2').Value      := AChave_PK2;
  MemTreeList.FieldByName('CHAVE_PK3').Value      := AChave_PK3;
  if AQuant = 0 then
    MemTreeList.FieldByName('QUANT').Clear
  else
    MemTreeList.FieldByName('QUANT').Value        := AQuant;
  MemTreeList.Post;
end;   *)
{$ENDREGION}

end.


