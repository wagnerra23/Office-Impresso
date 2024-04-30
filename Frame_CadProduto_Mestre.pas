unit Frame_CadProduto_Mestre;

interface

  ///////////////////////////////////////////// DOCUMENTAÇÃO ///////////////////////////////////////////////////////////
  ///   SQL       - Rotinas com Acesso a Banco devem conter SQL no inicio da Função
  ///   CloseOpen - Rotinas que Fecham e Abre o DataSet principal devem iniciar com CloseOpen
  ///
  ///   SEÇÃO 1: FUNÇÕES DA TELA
  ///   SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)
  ///   SEÇÃO 3: EVENTOS DO FORM - Load, Enter, Exit
  ///   SEÇÃO 4: CONFIGURAÇÕES - Layout, Configuração, Ajuda, Impressões
  ///   SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen
  ///   SEÇÃO 6: VIEW - OUTRAS FUNÇÕES - Funções que não fazem parte de DATASET, ou do FORM, mais pertencem a uso da FORM
  ///   SEÇÃO 7: Fotos são Pesadas quero separar as funções
  ///   SEÇÃO 8: Click e Exit Isso pode por que executa 1 unica vez
  ///   SEÇÃO 9: Exit Isso pode por que executa 1 unica vez
  ///   SEÇÃO 10: Validate, CellText , GetContentStyle, GetCellHint, UpdateEdit, DrawCell , GetDisplayText
  ///////////////////////////////////////////// FIM DOCUMENTAÇÃO ///////////////////////////////////////////////////////


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, cxGraphics, cxControls,
  Menus, cxEdit, DB, cxContainer, dxLayoutContainer, UCBase, ImgList, ExtCtrls, cxTextEdit, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxButtons, dxLayoutControl,
  UCHistDataset, DBClient, ExtDlgs, cxCurrencyEdit, cxLabel, cxDropDownEdit, cxButtonEdit, cxImage,
  cxDBLookupComboBox, cxSpinEdit, cxTL, cxCheckBox, cxInplaceContainer, cxDBTL, DBCtrls, Buttons, Mask, Rotinas,
  cxCalendar, cxShellCommon, cxShellListView, cxEditRepositoryItems, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, JSON, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCustomData, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxMaskEdit, cxTLdxBarBuiltInMenu, Vcl.ComCtrls,
  Winapi.ShlObj, dxCore, cxDateUtils, cxListView, cxTLData, dxGDIPlusClasses, cxLookupEdit, cxDBLookupEdit, cxMemo,
  cxVGrid, cxOI, dxLayoutLookAndFeels, cxClasses, cxGridCustomView, cxDBNavigator, dxStatusBar, cxImageComboBox,
  ConsultaProdutosBigData, System.ImageList, cxVariants, dxSkinsCore, RLParser, uGridLayoutView, wrConversao,
  cxGridCustomLayoutView, FireDAC.Stan.StorageBin, uButtonFlat,Generics.Collections, Aguarde,
  System.Generics.Collections, cxDataControllerConditionalFormattingRulesManagerDialog, cxTimeEdit, Classes.WR,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeControl, cxGroupBox, cxRadioGroup, cxCustomListBox,
  cxCheckListBox, frxClass, frxDBSet, WREventos, frFrameCustos, Vcl.DBGrids, Vcl.Grids,
  dxDateRanges, dxSkinsDefaultPainters, cxDBLabel, System.Actions, Vcl.ActnList, CadProdutoFrameEstoque, FrFrameComposicao,
  UnitFuncoes, uWRCalculaConfiguracoes, uWRFormataCamposDataSet, dxUIAdorners,
  fs_iinterpreter, dxSpreadSheetReportDesigner, dxSpreadSheetCore, FrFrameTabelaPreco, FrFrameCentroCustos,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions,
  dxSpreadSheetStyles, dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, dxSpreadSheet,
  dxRatingControl, dxDBRatingControl, frFrameAnexosProduto, Frame_ConProdutoSubUnidade, ThdTimer, Frame_Cad, dxCustomTileControl,
  dxTileControl, FrFrameProdutoVariacaoTabela, ProdutoTipoSelecao, Frame_Producao_Fluxo_Produto,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
//  TcxGridDBLayoutView = class(TWRcxGridDBLayoutView);

  TFrame_Produto_Mestre = class(TFrmCad_Frame)
    cbxCodProduto_Tipo: TcxDBLookupComboBox;
    edtCodFabrica: TcxDBTextEdit;
    edtEstoque: TcxDBCurrencyEdit;
    btnAdicionarEstoque: TcxButton;
    edtDT_Cadastro: TcxDBTextEdit;
    imgProduto: TcxImage;
    BtnMenu: TcxButton;
    btnGerarCodigoBarras: TcxButton;
    PnlTabDadosAdicionais: TPanel;
    liedtObservacao: TdxLayoutControl;
    edtMarcaÎProduto_Marca: TcxDBButtonEdit;
    lblMarcaÎProduto_MarcaÎDESCRICAO: TcxLabel;
    edtObservacao: TcxDBMemo;
    lblObservacoes: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    liedtObservacaoGroup2: TdxLayoutGroup;
    liedtObservacaoGroup3: TdxLayoutGroup;
    liedtObservacaoGroup4: TdxLayoutGroup;
    liedtMarcaÎProduto_Marca: TdxLayoutItem;
    liedtObservacaoGroup5: TdxLayoutGroup;
    lilblMarcaÎProduto_MarcaÎDESCRICAO: TdxLayoutItem;
    liedtObservacaoGroup6: TdxLayoutGroup;
    liedtObservacaoItem34: TdxLayoutItem;
    lilblDadosAdicionais: TdxLayoutItem;
    GrupoMarca: TdxLayoutGroup;
    edtCategoriaÎProduto_Categoria: TcxDBButtonEdit;
    lblCategoriaÎProduto_CategoriaÎDESCRICAO: TcxLabel;
    lblDadosAdicionais: TcxLabel;
    dxLayoutSeparatorItem22: TdxLayoutSeparatorItem;
    PnlTabImagens: TPanel;
    PnlTabImpostos: TPanel;
    dxLayoutControl7: TdxLayoutControl;
    edtGrupoÎProduto_Grupo: TcxDBButtonEdit;
    lblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel;
    edtNCMÎNF_NCM: TcxDBButtonEdit;
    edtNCMÎNF_NCMÎDescricao: TcxLabel;
    edtEx_Tipi: TcxDBTextEdit;
    cbxIAT: TcxDBComboBox;
    cbxIPPT: TcxDBComboBox;
    edtDescricao_NFe: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    GroupTributos: TdxLayoutGroup;
    liedtGrupoÎProduto_Grupo: TdxLayoutItem;
    lilblGrupoÎProduto_GrupoÎDESCRICAO: TdxLayoutItem;
    MainLayoutGroup13: TdxLayoutGroup;
    liedtNCMÎNF_NCM: TdxLayoutItem;
    lilblNF_NCMDescricao: TdxLayoutItem;
    liedtEx_Tipi: TdxLayoutItem;
    GrupoPAF: TdxLayoutGroup;
    licbxIAT: TdxLayoutItem;
    licbxIPPT: TdxLayoutItem;
    LiPnlImpostos: TdxLayoutGroup;
    liedtDescricao_NFe: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    PnlTabTabelaPrecos: TPanel;
    dxLayoutControl8: TdxLayoutControl;
    GridPrecos: TcxGrid;
    GridPrecosDBTableView2: TcxGridDBTableView;
    GridPrecosDBTableView2Column1: TcxGridDBColumn;
    GridPrecosDBTableView2TIPO: TcxGridDBColumn;
    GridPrecosDBTableView2QUANT: TcxGridDBColumn;
    GridPrecosDBTableView2PERC_LUCRO_DESEJADO: TcxGridDBColumn;
    GridPrecosDBTableView2MARKUP: TcxGridDBColumn;
    GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn;
    GridPrecosDBTableView2Valor: TcxGridDBColumn;
    GridPrecosLevel1: TcxGridLevel;
    chkTem_Tabela_Preco_Fixo: TcxDBCheckBox;
    cxLabel19: TcxLabel;
    edtTabelaPrecoDe: TcxCurrencyEdit;
    cbxTabelaPrecoTipo: TcxLookupComboBox;
    edtTabelaPrecoQuant: TcxCurrencyEdit;
    edtTabelaPrecoDesconto: TcxCurrencyEdit;
    edtTabelaPrecoValor: TcxCurrencyEdit;
    btnAdicionaTabelaPreco: TcxButton;
    btnRemoverTabelaPreco: TcxButton;
    rdgModo_Valor_Minimo_Venda: TcxDBRadioGroup;
    chkTem_Tabela_Preco_QTDADePeca: TcxDBCheckBox;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8Item1: TdxLayoutItem;
    lichkTem_Tabela_Preco_Fixo: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem116: TdxLayoutItem;
    dxLayoutSeparatorItem21: TdxLayoutSeparatorItem;
    lilblUnidade: TdxLayoutItem;
    liedtTabelaPrecoDe: TdxLayoutItem;
    licbxTabelaPrecoTipo: TdxLayoutItem;
    liedtTabelaPrecoQuant: TdxLayoutItem;
    liedtTabelaPrecoDesconto: TdxLayoutItem;
    liedtTabelaPrecoValor: TdxLayoutItem;
    libtnAdicionaTabelaPreco: TdxLayoutItem;
    libtnRemoverTabelaPreco: TdxLayoutItem;
    lirdgModo_Valor_Minimo_Venda: TdxLayoutItem;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutGroup36: TdxLayoutGroup;
    lichkTem_Tabela_Preco_QTDADePeca: TdxLayoutItem;
    lblUnidade: TcxDBLabel;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cbxUnidade: TcxDBComboBox;
    edtCodigoEan: TcxDBTextEdit;
    SpLucro: TShape;
    SpCustoFinanceiro: TShape;
    SpComissao: TShape;
    PnlCentroTrabalho: TPanel;
    liedtProducao_Dias_Para_Produzir: TdxLayoutControl;
    edtCentro_TrabalhoÎCentro_Trabalho: TcxButtonEdit;
    lblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO: TcxLabel;
    cbxCentroTrabalhoPreRequisito: TcxLookupComboBox;
    edtTempoEstimado: TcxTimeEdit;
    btnAdicionaCentroTrabalho: TcxButton;
    btnRemoveCentroTrabalho: TcxButton;
    GridProduto_Centro_Trabalho: TcxGrid;
    GridProduto_Centro_TrabalhoView2: TcxGridDBTableView;
    GridProduto_Centro_TrabalhoView2CODIGO: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2DESCRICAO: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2CENTRO_TRABALHO: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2MINUTOS: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2PREREQUISITO: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoLevel1: TcxGridLevel;
    edtCentroTrabalhoDescricao: TcxTextEdit;
    lblFluxoDeProducao: TcxLabel;
    chkTem_Producao_Finalizada: TcxDBCheckBox;
    liedtProducao_Dias_Para_ProduzirGroup_Root: TdxLayoutGroup;
    liedtCentro_TrabalhoÎCentro_Trabalho: TdxLayoutItem;
    lilblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO: TdxLayoutItem;
    licbxCentroTrabalhoPreRequisito: TdxLayoutItem;
    liedtTempoEstimado: TdxLayoutItem;
    libtnAdicionaCentroTrabalho: TdxLayoutItem;
    libtnRemoveCentroTrabalho: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    liedtCentroTrabalhoDescricao: TdxLayoutItem;
    lilblFluxoDeProducao: TdxLayoutItem;
    dxLayoutSeparatorItem6: TdxLayoutSeparatorItem;
    lichkTem_Producao_Finalizada: TdxLayoutItem;
    dxLayoutSeparatorItem17: TdxLayoutSeparatorItem;
    dxLayoutGroup3: TdxLayoutGroup;
    PnlTabComposicao: TPanel;
    dxLayoutGroup50: TdxLayoutGroup;
    edtValor: TcxDBCurrencyEdit;
    edtMargem: TcxDBCurrencyEdit;
    PnlFrameCustos: TPanel;
    EdtTotal: TcxDBCurrencyEdit;
    EdtQuantTotal: TcxDBCurrencyEdit;
    edtCusto: TcxDBCurrencyEdit;
    edtValor_Compra: TcxDBCurrencyEdit;
    MainLayoutGroup8: TdxLayoutGroup;
    MainLayoutGroup7: TdxLayoutGroup;
    licbxCodProduto_Tipo: TdxLayoutItem;
    liedtCodFabrica: TdxLayoutItem;
    GrupoTopEstoque: TdxLayoutGroup;
    liedtEstoque: TdxLayoutItem;
    libtnAdicionarEstoque: TdxLayoutItem;
    MainLayoutGroup6: TdxLayoutGroup;
    liedtDT_Cadastro: TdxLayoutItem;
    liimgProduto: TdxLayoutItem;
    LiMenu: TdxLayoutItem;
    libtnGerarCodigoBarras: TdxLayoutItem;
    TabDadosAdicionais: TdxLayoutItem;
    TabTabelaPreco: TdxLayoutItem;
    licbxUnidade: TdxLayoutItem;
    liedtCodigoEan: TdxLayoutItem;
    TabProducao: TdxLayoutItem;
    LiPnlTabComposicao: TdxLayoutItem;
    dxLayoutGroup24: TdxLayoutGroup;
    TabFormacaoPreco: TdxLayoutGroup;
    liedtCategoriaÎProduto_Categoria: TdxLayoutItem;
    lilblCategoriaÎProduto_CategoriaÎDESCRICAO: TdxLayoutItem;
    LiValores: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    liedtValor: TdxLayoutItem;
    liedtMargem: TdxLayoutItem;
    TabComposicao: TdxLayoutGroup;
    TabCustos: TdxLayoutItem;
    LiEdtTotal: TdxLayoutItem;
    LiEdtQuantTotal: TdxLayoutItem;
    LiQuantidadeTotal: TdxLayoutGroup;
    liedtCusto: TdxLayoutItem;
    liedtValor_Compra: TdxLayoutItem;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    DSProduto_Grade: TDataSource;
    DSEmpresa: TDataSource;
    DSProdutoTipo: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    DSEstoque_Produto: TDataSource;
    PopupMenu1: TPopupMenu;
    Alterarocdigodoproduto1: TMenuItem;
    N3: TMenuItem;
    Exportar1: TMenuItem;
    PoupBalanaFiziola: TMenuItem;
    PoupBalanaUrano: TMenuItem;
    PoupBalanaToledo: TMenuItem;
    PoupGertecBuscaPreco: TMenuItem;
    MnuAplicarAjusteValorFamlia: TMenuItem;
    Consultarcadastrosprontos1: TMenuItem;
    ArrumarEstoqueProduo1: TMenuItem;
    AtualizarCustos1: TMenuItem;
    DSProduto_Composicao: TDataSource;
    DSProdutoPreco: TDataSource;
    DSProduto_Centro_Trabalho: TDataSource;
    ImageList1: TImageList;
    cxEditRepositoryVinculoMedidas: TcxEditRepository;
    PropVinculoComp: TcxEditRepositoryCurrencyItem;
    PropVinculoNenhum: TcxEditRepositoryCurrencyItem;
    PropVinculoEspessura: TcxEditRepositoryCurrencyItem;
    PropVinculoLarg: TcxEditRepositoryCurrencyItem;
    PropVinculoManterMedida: TcxEditRepositoryCurrencyItem;
    PropVinculoPerimetro: TcxEditRepositoryCurrencyItem;
    TimerViewFotos: TTimer;
    DSPreRequisitoCentroTrabalho: TDataSource;
    DSProduto_Custo_Adicional: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    EstiloSegoeSB14: TcxStyle;
    EstiloSegoe12: TcxStyle;
    EstiloSegoe14: TcxStyle;
    EstiloSegoe8: TcxStyle;
    EstiloGrupo: TcxStyle;
    EstiloGrupoInterno: TcxStyle;
    EstiloSegoe14Verde: TcxStyle;
    cxStyle1: TcxStyle;
    PnlLocalEstoque: TPanel;
    EdtLocalEstoqueQuant: TcxCurrencyEdit;
    ComboLocaisEstoque: TcxComboBox;
    BtnLocalEstoqueCancelar: TcxButton;
    BtnLocalEstoqueConfirmar: TcxButton;
    cxLabel1: TcxLabel;
    LblLoteÎProduto_LoteÎREFERENCIA: TcxLabel;
    EdtLoteÎProduto_Lote: TcxButtonEdit;
    CbEntradaSaida: TcxComboBox;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    PnlCodigoBarras: TPanel;
    dxLayoutControl6: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EdtCodigoBarras: TcxTextEdit;
    cxButton3: TcxButton;
    cxLabel16: TcxLabel;
    LabelDigito: TcxLabel;
    cxLabel17: TcxLabel;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem101: TdxLayoutItem;
    dxLayoutItem102: TdxLayoutItem;
    dxLayoutSeparatorItem15: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem16: TdxLayoutSeparatorItem;
    dxLayoutItem103: TdxLayoutItem;
    LiLabelDigito: TdxLayoutItem;
    GrupoDigitoVerificador: TdxLayoutGroup;
    dxLayoutItem104: TdxLayoutItem;
    GrupoCodigoDeBarras: TdxLayoutGroup;
    PnlAlterarCodProduto: TPanel;
    dxLayoutControl13: TdxLayoutControl;
    EdtAlterarCodProdutoCodigoÎProduto: TcxButtonEdit;
    BtnAlterarCodProdutoConfirmar: TcxButton;
    cxLabel2: TcxLabel;
    LblAlterarCodProdutoCodigoÎProdutoÎDescricao: TcxLabel;
    dxLayoutControl13Group_Root: TdxLayoutGroup;
    dxLayoutControl13Item1: TdxLayoutItem;
    dxLayoutControl13Item2: TdxLayoutItem;
    dxLayoutControl13Group1: TdxLayoutGroup;
    dxLayoutControl13Item3: TdxLayoutItem;
    dxLayoutControl13Item4: TdxLayoutItem;
    PnlAplicarAjusteValorNaFamilia: TPanel;
    dxLayoutControl15: TdxLayoutControl;
    BtnAjusteFamiliaAplicar: TcxButton;
    BtnAjusteFamiliaCancelar: TcxButton;
    EdtAjusteFamiliaReajuste: TcxCurrencyEdit;
    EdtAjusteFamiliaCustoLojaAtual: TcxCurrencyEdit;
    EdtAjusteFamiliaCustoLojaCalculado: TcxCurrencyEdit;
    EdtAjusteFamiliaVarejoAtual: TcxCurrencyEdit;
    EdtAjusteFamiliaVarejoCalculado: TcxCurrencyEdit;
    ChkAjusteFamiliaCustoLoja: TcxCheckBox;
    ChkAjusteFamiliaVarejo: TcxCheckBox;
    dxLayoutControl15Group_Root: TdxLayoutGroup;
    dxLayoutControl15Group1: TdxLayoutGroup;
    dxLayoutControl15Item1: TdxLayoutItem;
    dxLayoutControl15Item2: TdxLayoutItem;
    dxLayoutControl15Item3: TdxLayoutItem;
    Produto_Grade: TFDQuery;
    QuerEmpresa: TFDQuery;
    Produto_Tipo: TFDQuery;
    Estoque_Produto: TFDQuery;
    Produto_Balanca: TFDQuery;
    Produto_Composicao: TFDQuery;
    Produto_ComposicaoTotalCusto: TCurrencyField;
    Produto_ComposicaoTotalPeso: TCurrencyField;
    Produto_ComposicaoCustoUnit: TCurrencyField;
    Produto_ComposicaoMedidas: TStringField;
    Produto_Preco: TFDQuery;
    Produto_Centro_Trabalho: TFDQuery;
    Produto_Tabela_Preco: TFDQuery;
    PreRequisitoCentroTrabalho: TFDQuery;
    Produto_Custo_Adicional: TFDQuery;
    DBGrid1: TDBGrid;
    libtnVisualizaEstoque: TdxLayoutItem;
    btnVisualizaEstoque: TcxButton;
    LiMenuValores: TdxLayoutGroup;
    libtnTabelaDePrecos: TdxLayoutItem;
    btnTabelaDePrecos: TWRButtonFlat;
    libtnPrecoEspecial: TdxLayoutItem;
    btnPrecoEspecial: TWRButtonFlat;
    libtnCustos: TdxLayoutItem;
    btnCustos: TWRButtonFlat;
    ActionList1: TActionList;
    Action_BtnCustos: TAction;
    Action_TabelaDePreco: TAction;
    Action_PrecoEspecial: TAction;
    TabEstoque: TdxLayoutGroup;
    MainLayoutTab: TdxLayoutGroup;
    FcPrincipal: TWRFormataCamposDataSets;
    WRCalc: TWRCalculaConfiguracoes;
    Produto_PrecoValor: TFloatField;
    PmComposicao: TwrProdutoMemoria;
    liEdtCalc_Qpeso_Bruto: TdxLayoutItem;
    EdtCalc_Qpeso_Bruto: TcxDBCurrencyEdit;
    LiedtDias_Para_Produzir: TdxLayoutItem;
    edtProducao_Dias_Para_Produzir: TcxDBCurrencyEdit;
    LiedtCodProducao_RoteiroÎROTEIRO_PRODUCAO: TdxLayoutItem;
    edtCodProducao_RoteiroÎPRODUCAO_ROTEIRO: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    lblCodProducao_RoteiroÎPRODUCAO_ROTEIROÎDESCRICAO: TcxLabel;
    GrupoRoteiro: TdxLayoutGroup;
    Migrarimagens1: TMenuItem;
    TabPrecoEspecial: TdxLayoutItem;
    PnlTabelaPreco: TPanel;
    TabCentroCusto: TdxLayoutItem;
    pnlCentroCusto: TPanel;
    DSClientes_Produto: TDataSource;
    LichkCriaTarefaProducao: TdxLayoutItem;
    chkCriaTarefaProducao: TcxDBCheckBox;
    LiedtCalc_Qpeso_Liquido: TdxLayoutItem;
    edtCalc_Qpeso_Liquido: TcxDBCurrencyEdit;
    lIchkPode_Alterar_Estoque: TdxLayoutItem;
    chkPode_Alterar_Estoque: TcxDBCheckBox;
    DataSource1: TDataSource;
    DuplicarProduto1: TMenuItem;
    N4: TMenuItem;
    dxLayoutItem3: TdxLayoutItem;
    edtTempo: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtOrigem_Mercadoria: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    liedtPlanoContasÎPlanoContas: TdxLayoutItem;
    edtPlanoContasÎPlanoContas: TcxDBButtonEdit;
    lilblPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem;
    lblPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    edtObservacaoEstoque: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    licbxNF_CEST: TdxLayoutItem;
    cbxNF_CEST: TcxDBLookupComboBox;
    lilblCentro_TrabalhoPadraoÎCentro_TrabalhoÎDESCRICAO: TdxLayoutItem;
    lblCentro_TrabalhoPadraoÎCentro_TrabalhoÎDESCRICAO: TcxLabel;
    liedtCentro_TrabalhoPadraoÎCentro_Trabalho: TdxLayoutItem;
    edtCentro_TrabalhoPadraoÎCentro_Trabalho: TcxDBButtonEdit;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxDBRatingControl1: TdxDBRatingControl;
    dxLayoutItem5: TdxLayoutItem;
    TimerFotos: TThreadedTimer;
    tcTabs: TdxTileControl;
    dxLayoutItem8: TdxLayoutItem;
    tiAtividade: TdxTileControlItem;
    tiFormacaoPreco: TdxTileControlItem;
    tiDadosAdicionais: TdxTileControlItem;
    tiEstoque: TdxTileControlItem;
    tiProducao: TdxTileControlItem;
    tiTributos: TdxTileControlItem;
    dxTileControl2Group2: TdxTileControlGroup;
    tiAnexos: TdxTileControlItem;
    pnlEstoque: TPanel;
    tiCustos: TdxTileControlItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    tcTabsGroup1: TdxTileControlGroup;
    tcTabsGroup2: TdxTileControlGroup;
    tiSubUnidade: TdxTileControlItem;
    Produto_Etapas: TFDQuery;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    StringField1: TStringField;
    Produto_Prerequisito: TFDQuery;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    StringField2: TStringField;
    Produto_Baixa_Automatica: TFDQuery;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    StringField3: TStringField;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtCentroCustoÎCentro_Custo: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtCentroCustoÎCentro_CustoÎDESCRICAO: TcxLabel;
    Produto_Preco_Filho: TFDQuery;
    procedure edtCodFabricaExit(Sender: TObject);
    procedure btnAdicionarEstoqueClick(Sender: TObject);
    procedure btnVisualizaEstoqueClick(Sender: TObject);
    procedure cbxIATKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxIPPTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAdicionaCentroTrabalhoClick(Sender: TObject);
    procedure btnRemoveCentroTrabalhoClick(Sender: TObject);
    procedure GridListComposicaoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure BtnMenuClick(Sender: TObject);
    procedure Produto_ComposicaoBeforeOpen(DataSet: TDataSet);
    procedure Produto_ComposicaoCalcFields(DataSet: TDataSet);
    procedure Produto_TipoAfterOpen(DataSet: TDataSet);
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure PoupBalanaFiziolaClick(Sender: TObject);
    procedure PoupBalanaUranoClick(Sender: TObject);
    procedure PoupBalanaToledoClick(Sender: TObject);
    procedure PoupGertecBuscaPrecoClick(Sender: TObject);
    procedure BtnAlterarCodProdutoConfirmarClick(Sender: TObject);
    procedure dbtxtCodigoEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure GridListComposicaoCODLOCALPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure TimerViewFotosTimer(Sender: TObject);
    procedure PnlAlterarCodProdutoExit(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure MnuAplicarAjusteValorFamliaClick(Sender: TObject);
    procedure BtnAjusteFamiliaAplicarClick(Sender: TObject);
    procedure BtnAjusteFamiliaCancelarClick(Sender: TObject);
    procedure EdtAjusteFamiliaReajustePropertiesChange(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure btnGerarCodigoBarrasClick(Sender: TObject);
    procedure Produto_Custo_AdicionalAfterInsert(DataSet: TDataSet);
    procedure Produto_PrecoCalcFields(DataSet: TDataSet);
    procedure Produto_Centro_TrabalhoAfterInsert(DataSet: TDataSet);
    procedure Produto_Centro_TrabalhoAfterOpen(DataSet: TDataSet);
    procedure Produto_Centro_TrabalhoBeforeClose(DataSet: TDataSet);
    procedure Alterarocdigodoproduto1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure EdtCodigoBarrasPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure Consultarcadastrosprontos1Click(Sender: TObject);
    procedure GridComposicaoDBTableView2VALORGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure GridComposicaoDBTableView2CUSTO_VENDAGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure AtualizarCustos1Click(Sender: TObject);
    procedure EdtTabelaPrecoDescontoPropertiesChange(Sender: TObject);
    procedure EdtTabelaPrecoValorPropertiesChange(Sender: TObject);
    procedure Produto_PrecoAfterInsert(DataSet: TDataSet);
    procedure GridPrecosDBTableView2Column1GetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure Produto_ComposicaoAfterInsert(DataSet: TDataSet);
    procedure Action_BtnCustosExecute(Sender: TObject);
    procedure Action_TabelaDePrecoExecute(Sender: TObject);
    procedure Action_PrecoEspecialExecute(Sender: TObject);
    procedure FcPrincipalCarregaDataSets(Sender: TObject);
    procedure WRCalcCalculaQuant(Sender: TObject; AUnidade: string; AComprimento, ALargura, AEspessura,
      AQtdadePeca: Double; var AQuant: Double);
    procedure EdtQuantTotalPropertiesChange(Sender: TObject);
    procedure LiValoresTabChanged(Sender: TObject);
    procedure Migrarimagens1Click(Sender: TObject);
    procedure Produto_ComposicaoBeforeEdit(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure Produto_ComposicaoAfterClose(DataSet: TDataSet);
    procedure DSEstoque_ProdutoDataChange(Sender: TObject; Field: TField);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure chkPode_Alterar_EstoquePropertiesChange(Sender: TObject);
    procedure btnNavegacaoProximoClick(Sender: TdxTileControlItem);
    procedure btnNavegacaoAnteriorClick(Sender: TdxTileControlItem);
    procedure edtTempoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Produto_ComposicaoBeforePost(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure edtNCMÎNF_NCMPropertiesEditValueChanged(Sender: TObject);
    procedure EdtCalc_Qpeso_BrutoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCalc_Qpeso_LiquidoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtDescricaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure imgProdutoPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure TimerFotosTimer(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure btnExcluirClick(Sender: TdxTileControlItem);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure btnCancelarClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure FrameExit(Sender: TObject);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure TileActivateDetail(Sender: TdxTileControlItem);
    procedure tcTabsItemDeactivateDetail(Sender: TdxCustomTileControl;
      AItem: TdxTileControlItem);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TdxTileControlItem);
    procedure DuplicarProduto1Click(Sender: TObject);
    procedure Produto_EtapasBeforeEdit(DataSet: TDataSet);
    procedure Produto_PrerequisitoBeforeEdit(DataSet: TDataSet);
    procedure Produto_Baixa_AutomaticaBeforeEdit(DataSet: TDataSet);
    procedure Produto_EtapasBeforePost(DataSet: TDataSet);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
    procedure Produto_Preco_FilhoAfterOpen(DataSet: TDataSet);
  private
    FConsultaBig: TFrmConsultaProdutosBigData;
//    ViewFotos: TcxShellListView;
    FFrameProduto_Estoque    : TFrameCadProduto_Estoque;
    FFrameCustos : TFrameCustos;
    FUnidade: TUnidade;
    FOldValor: Double;
    FFrmFrameComposicao: TFrmFrameComposicao;
    FTileAtivo: TdxTileControlItem;
    FFrameTabelaPreco: TFrmFrameTabelaPreco;
    FFrameCentroCustos: TFrmFrameCentroCustos;
    FFrameAnexosProduto: TFrameAnexosProduto;
    FFrameProdutoVariacaoTabela: TFrmProdutoVariacaoTabela;
    FFrameProdutoSubUnidade: TFrame_ConsuProdutoSubUnidade;
    FFrame_Producao_Fluxo: TFrmFrame_Producao_Fluxo_Produto;
    function Tamanho(Texto:String;QTD:Integer):String;
//    procedure AtualizaViewFotos;
    procedure CadastrarProdutoBigData(AJSTabelas: TJSONObject);
//    procedure CarregaFotos;
    procedure RetornaImagem(const Picture: TPicture; ACodProduto : String);
    procedure TrocaCodigoProduto(ACodAntigo, ACodNovo: String);


    procedure TrataExceptPostProduto(const AExcept: Exception);

  public
    { Public declarations }
    function BuscaCodigoTipoPelaClassificacao(ATipo: string): integer;
    class function GetValorCorComposicaoDiferenca(const ARecord: TcxCustomGridRecord; const AProduto: TDataSet;
      ACorAcimaValor, ACorAbaixoValor, ACorAbaixoCusto: TColor): TColor;
    class function GetValorHintComposicaoDiferenca(const ARecord: TcxCustomGridRecord; const AProduto: TDataSet): string;
    class function IsCustoComposicaoDiferente(ARecord: TcxCustomGridRecord): Boolean;
  end;
  TFrameClass = class of TFrame;

implementation

{$R *.dfm}

uses
  Base_Produto, Registry, ConNF_CFOP, CadNF_CFOP, pcnConversao, Principal, Base_Cor, Senha,
  Imptexto, CadProduto_Grade_Modelo, ConProduto_Grade_Modelo, Math, ShellApi,
  DateUtils, StrUtils, cxDataUtils, ConLocal, ACBrUtil, System.IOUtils,
  CadProduto_Movimento, dxCoreGraphics, DataModuleBanco,
  wrPreencheLookup, wrConstantes, wrFormataCampo, ConsM, wrFuncoes, DataModule, wrFuncoes_Office, wrForms, EntradaTempo,
  frFrameHistorico, Base, Routes.Produto, Utils.Produto, Tag.APP;

{$REGION 'SEÇÃO 1: FUNÇÕES DA TELA/////////////////////////////////////////////////////////////////////////////////////'}
  ///   SEÇÃO 1: FUNÇÕES DA TELA
  ///

procedure TFrame_Produto_Mestre.PoupBalanaUranoClick(Sender: TObject);
begin
  inherited;
  ProdutoExportaBalancaUrano;
end;

procedure TFrame_Produto_Mestre.PoupBalanaToledoClick(Sender: TObject);
  begin
  inherited;
  ProdutoExportaBalancaToledo;
  end;

procedure TFrame_Produto_Mestre.PoupBalanaFiziolaClick(Sender: TObject);
begin
  inherited;
  ProdutoExportaBalancaFilizola;
end;

procedure TFrame_Produto_Mestre.PoupGertecBuscaPrecoClick(Sender: TObject);
begin
  inherited;
  ProdutoExportaBalancaGertec;
end;

procedure TFrame_Produto_Mestre.CadastrarProdutoBigData(AJSTabelas: TJSONObject);

  procedure AtualizaCodigo(ACampo, ACodOld, ACodNew: string; ATab: TJSONObject);
  var
    AReg: TJSONObject;
    ACampoOld: string;
    i: Integer;
  begin
    if (ATab <> nil) then
    begin
      ACampoOld := ACampo+'_OLD';
      for i := 0 to (ATab.Count - 1) do
      begin
        AReg := TJSONObject(ATab.Pairs[i].JsonValue);
        if (AReg.Values[ACampo].Value = ACodOld) and (AReg.Values[ACampoOld] = nil) then
        begin
          AReg.RemovePair(ACampo); //Nâo da para setar o valor, então tem que remover e adicionar novamente.
          AReg.AddPair(ACampoOld, ACodOld);
          AReg.AddPair(ACampo, ACodNew);
        end;
      end;
    end;
  end;

var
  ATab, AReg: TJSONObject;
  AJSFile: TStringList;
  AQuerX: TFDQuery;
  AParam: TFDParam;
  ACodOld, ACodNew, ACampos, AParametros, ACaption: string;
  AField: TField;
  i, t, x: Integer;
begin
  if (AJSTabelas.Pairs[0].JsonString.Value = 'TABELA.PRODUTO') then
  try
    AJSFile := TStringList.Create;
    try
      AJSFile.Text := AJSTabelas.ToString;
      AJSFile.SaveToFile('D:\ConsultaProdutoBigDataOld.json');
    finally
      AJSFile.Free;
    end;
    //Regerar os códigos do produto importando.
    ACaption := FConsultaBig.LblRodape.Caption;
    FConsultaBig.LblRodape.Caption := 'Gerando novos códigos...';
    Application.ProcessMessages;
    ATab := TJSONObject(AJSTabelas.Pairs[0].JsonValue);
    for i := 0 to (ATab.Count - 1) do
    begin
      AReg := TJSONObject(ATab.Pairs[i].JsonValue);
      ACodNew := FloatToStr(GetProximoCodigoGen('CR_PRODUTO')); //Spa.Params[0].AsString;
      ACodOld := AReg.Values['CODIGO'].Value;

      AReg.RemovePair('CODIGO');
      AReg.AddPair('CODIGO', ACodNew);
      AReg.AddPair('CODIGO_OLD', ACodOld);

      AtualizaCodigo('CODPRODUTO_COMPOSICAO', ACodOld, ACodNew, TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_COMPOSICAO']));
      AtualizaCodigo('CODPRODUTO', ACodOld, ACodNew, TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_COMPOSICAO']));
    end;
    //Regerar os códigos do produto grupo.
    ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_GRUPO']);
    if (ATab <> nil) then
      for i := 0 to (ATab.Count - 1) do
      begin
        AReg := TJSONObject(ATab.Pairs[i].JsonValue);
        ACodNew := GetProximoCodigoSP('PRODUTO_GRUPO').ToString;
        ACodOld := AReg.Values['CODIGO'].Value;

        AReg.RemovePair('CODIGO');
        AReg.AddPair('CODIGO', ACodNew);
        AReg.AddPair('CODIGO_OLD', ACodOld);

        AtualizaCodigo('CODPRODUTO_GRUPO', ACodOld, ACodNew, TJSONObject(AJSTabelas.Values['TABELA.PRODUTO']));
        AtualizaCodigo('CODPRODUTO_GRUPO', ACodOld, ACodNew, TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_GRUPO_IMPOSTOUF']));
      end;
    //Regerar os códigos do produto tipo.
    ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_TIPO']);
    x := GetProximoCodigo('PRODUTO_TIPO');
    if (ATab <> nil) then
      for i := 0 to (ATab.Count - 1) do
      begin
        AReg := TJSONObject(ATab.Pairs[i].JsonValue);
        ACodNew := (x + i).ToString;
        ACodOld := AReg.Values['CODIGO'].Value;

        AReg.RemovePair('CODIGO');
        AReg.AddPair('CODIGO', ACodNew);
        AReg.AddPair('CODIGO_OLD', ACodOld);

        AtualizaCodigo('CODPRODUTO_TIPO', ACodOld, ACodNew, TJSONObject(AJSTabelas.Values['TABELA.PRODUTO']));
      end;

    AJSFile := TStringList.Create;
    try
      AJSFile.Text := AJSTabelas.ToString;
      AJSFile.SaveToFile('D:\ConsultaProdutoBigDataNew.json');
    finally
      AJSFile.Free;
    end;
    //Cadastra o produto principal
    FConsultaBig.LblRodape.Caption := 'Cadastrando o produto principal...';
    Application.ProcessMessages;
    Cadastro.DisableControls;
    try
      ATab := TJSONObject(AJSTabelas.Pairs[0].JsonValue);
      AReg := TJSONObject(ATab.Pairs[0].JsonValue);
      for i := 0 to (AReg.Count - 1) do
      begin
        AField := Cadastro.FindField(AReg.Pairs[i].JsonString.Value);
        if AField <> nil then
        begin
          if AField.DataType in [ftFloat, ftCurrency, ftBCD, ftExtended, ftSingle] then
            AField.AsString := AReg.Pairs[i].JsonValue.Value.Replace('.', ',')
          else
            AField.AsString := AReg.Pairs[i].JsonValue.Value;
        end;
      end;
    finally
      Cadastro.EnableControls;
    end;
    //Cadastra os produtos da composição
    FConsultaBig.LblRodape.Caption := 'Cadastrando os produtos da composição...';
    Application.ProcessMessages;
    AQuerX := GeraFDQuery(TransaFD);
    try
      AQuerX.SQL.Text := Cadastro.SQL.Text;
      ATab := TJSONObject(AJSTabelas.Pairs[0].JsonValue);
      if (ATab <> nil) then
      begin
        AQuerX.Open;
        AQuerX.Insert;
        for t := 1 to (ATab.Count - 1) do
        begin
          AReg := TJSONObject(ATab.Pairs[t].JsonValue);
          for i := 0 to (AReg.Count - 1) do
          begin
            AField := AQuerX.FindField(AReg.Pairs[i].JsonString.Value);
            if AField <> nil then
              AField.AsString := AReg.Pairs[i].JsonValue.Value;
          end;
          AQuerX.ExecSQL;
        end;
        AQuerX.Post;
      end;
    finally
      AQuerX.Free;
    end;
    //Cadastra a composição.
    FConsultaBig.LblRodape.Caption := 'Cadastrando a(s) composição(ões)...';
    Application.ProcessMessages;
    Produto_Composicao.DisableControls;
    try
      ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_COMPOSICAO']);
      if (ATab <> nil) then
        for t := 0 to (ATab.Count - 1) do
        begin
          AReg := TJSONObject(ATab.Pairs[t].JsonValue);
          Produto_Composicao.Insert;
          for i := 0 to (AReg.Count - 1) do
          begin
            AField := Produto_Composicao.FindField(AReg.Pairs[i].JsonString.Value);
            if AField <> nil then
            begin
              if AField.DataType in [ftFloat, ftCurrency, ftBCD, ftExtended, ftSingle] then
                AField.AsString := AReg.Pairs[i].JsonValue.Value.Replace('.', ',')
              else
                AField.AsString := AReg.Pairs[i].JsonValue.Value;
            end;
          end;
          Produto_Composicao.Post;
        end;
    finally
      Produto_Composicao.Close;
      Produto_Composicao.Open;
      Produto_Composicao.EnableControls;
    end;
    //Cadastra o(s) grupo(s).
    FConsultaBig.LblRodape.Caption := 'Cadastrando os grupos...';
    Application.ProcessMessages;
    ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_GRUPO']);
    if (ATab <> nil) and (ATab.Count > 0) then
    begin
      AQuerX := GeraFDQuery(TransaFD);
      try
        AQuerX.SQL.Text := 'select list(trim(r.rdb$field_name)) as campos '+
                           'from rdb$relation_fields r '+
                           'inner join rdb$fields f on ((f.rdb$field_name = r.rdb$field_source) and (r.rdb$field_name <> ''CODBANCODEDADOS'') and (f.rdb$field_type <> 261)) '+
                           'where (r.rdb$relation_name = ''PRODUTO_GRUPO'')';
        AQuerX.Open;
        ACampos := AQuerX.FieldByName('campos').AsString;
        AQuerX.Close;
        AParametros := StringReplace(ACampos, ',' , ',:', [rfReplaceAll]);
        ACampos := '('+ACampos+')';
        AParametros := '(:'+AParametros+')';
        AQuerX.SQL.Text := 'insert into PRODUTO_GRUPO '+ACampos+sLineBreak+
                           'values '+AParametros;
        AQuerX.Prepare;
        for t := 0 to (ATab.Count - 1) do
        begin
          AReg := TJSONObject(ATab.Pairs[t].JsonValue);
          for i := 0 to (AReg.Count - 1) do
          begin
            AParam := AQuerX.Params.FindParam(AReg.Pairs[i].JsonString.Value);
            if AParam <> nil then
              AParam.AsString := AReg.Pairs[i].JsonValue.Value;
          end;
          AQuerX.ExecSQL;
          if (edtGrupoÎProduto_Grupo.Text <> '') and (edtGrupoÎProduto_Grupo.Text = AReg.Values['CODIGO'].Value) then
            LblGrupoÎProduto_GrupoÎDESCRICAO.Caption := AReg.Values['DESCRICAO'].Value;
        end;
      finally
        AQuerX.Free;
      end;
    end;
    //Cadastra o(s) imposto(s) do grupo(s). Sei, aqui tem repetição de código, e deve ser revisto.
    FConsultaBig.LblRodape.Caption := 'Cadastrando os impostos dos grupos...';
    Application.ProcessMessages;
    ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_GRUPO_IMPOSTOUF']);
    if (ATab <> nil) and (ATab.Count > 0) then
    begin
      AQuerX := GeraFDQuery(TransaFD);
      try
        AQuerX.SQL.Text := 'select list(trim(r.rdb$field_name)) as campos '+
                           'from rdb$relation_fields r '+
                           'inner join rdb$fields f on ((f.rdb$field_name = r.rdb$field_source) and (r.rdb$field_name <> ''CODBANCODEDADOS'') and (f.rdb$field_type <> 261)) '+
                           'where (r.rdb$relation_name = ''PRODUTO_GRUPO_IMPOSTOUF'')';
        AQuerX.Open;
        ACampos := AQuerX.FieldByName('campos').AsString;
        AQuerX.Close;
        AParametros := StringReplace(ACampos, ',' , ',:', [rfReplaceAll]);
        ACampos := '('+ACampos+')';
        AParametros := '(:'+AParametros+')';
        AQuerX.SQL.Text := 'insert into PRODUTO_GRUPO_IMPOSTOUF '+ACampos+sLineBreak+
                           'values '+AParametros;
        AQuerX.Prepare;
        for t := 0 to (ATab.Count - 1) do
        begin
          AReg := TJSONObject(ATab.Pairs[t].JsonValue);
          for i := 0 to (AReg.Count - 1) do
          begin
            AParam := AQuerX.Params.FindParam(AReg.Pairs[i].JsonString.Value);
            if AParam <> nil then
              AParam.AsString := AReg.Pairs[i].JsonValue.Value;
          end;
          AQuerX.ExecSQL;
        end;
      finally
        AQuerX.Free;
      end;
    end;
    //Cadastra o produto tipo. Aqui também tem repetição de código, e deve ser revisto.
    FConsultaBig.LblRodape.Caption := 'Cadastrando os tipos de produtos...';
    Application.ProcessMessages;
    ATab := TJSONObject(AJSTabelas.Values['TABELA.PRODUTO_TIPO']);
    if (ATab <> nil) and (ATab.Count > 0) then
    begin
      //todo - Procurar por produto tipo já cadastrado e usar o mesmo, evitando duplicidade.
      AQuerX := GeraFDQuery(TransaFD);
      try
        AQuerX.SQL.Text := 'select list(trim(r.rdb$field_name)) as campos '+
                           'from rdb$relation_fields r '+
                           'inner join rdb$fields f on ((f.rdb$field_name = r.rdb$field_source) and (r.rdb$field_name <> ''CODBANCODEDADOS'') and (f.rdb$field_type <> 261)) '+
                           'where (r.rdb$relation_name = ''PRODUTO_TIPO'')';
        AQuerX.Open;
        ACampos := AQuerX.FieldByName('campos').AsString;
        AQuerX.Close;
        AParametros := StringReplace(ACampos, ',' , ',:', [rfReplaceAll]);
        ACampos := '('+ACampos+')';
        AParametros := '(:'+AParametros+')';
        AQuerX.SQL.Text := 'insert into PRODUTO_TIPO '+ACampos+sLineBreak+
                           'values '+AParametros;
        AQuerX.Prepare;
        for t := 0 to (ATab.Count - 1) do
        begin
          AReg := TJSONObject(ATab.Pairs[t].JsonValue);
          for i := 0 to (AReg.Count - 1) do
          begin
            AParam := AQuerX.Params.FindParam(AReg.Pairs[i].JsonString.Value);
            if AParam <> nil then
              AParam.AsString := AReg.Pairs[i].JsonValue.Value;
          end;
          AQuerX.ExecSQL;
        end;
      finally
        AQuerX.Free;
      end;
    end;
  finally
    FConsultaBig.LblRodape.Caption := ACaption;
    Application.ProcessMessages;
  end;
end;

function TFrame_Produto_Mestre.Tamanho(Texto: String; QTD: Integer): String;
begin
  Texto := Copy(Texto, 1, QTD);
  while Length(Texto) < QTD do
    Texto := Texto + ' ';
  Result := Texto;
end;

procedure TFrame_Produto_Mestre.tcTabsItemDeactivateDetail(
  Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  inherited;
  // Este evento só chama se realmente clicar em uma Tag diferente da que está ativa.
  // Diferente do DeactivatingDetail que chama sempre que um tile for clicado.
  if Assigned(AItem.DetailOptions.DetailControl) then
    AItem.DetailOptions.DetailControl.Visible := False;
//  AItem.DetailOptions.DetailControl := nil;
end;

procedure TFrame_Produto_Mestre.TileActivateDetail(
  Sender: TdxTileControlItem);
begin
  inherited;
  // OBS: Este evento cuida da abertura!
  // O fechamento é gerenciado pelo evento tcTabsItemDeactivateDetail.
  // Tem que colocar este evento em cada Item senão não reconhece o click.
  if (Sender<> nil) and( Sender.DetailOptions.DetailControl = nil) then
  begin
    if Sender.Name = 'tiComposicao' then
      Sender.DetailOptions.DetailControl := FFrmFrameComposicao
    else
    if Sender = tiAtividade then
    begin
      TFrameHistorico.CarregaFrame(FFrameHistorico, Sender.DetailOptions.DetailControl, UCHist_Cadastro, nil );
      Sender.DetailOptions.DetailControl := FFrameHistorico;
    end
    else
    if Sender = tiDadosAdicionais then
      Sender.DetailOptions.DetailControl := PnlTabDadosAdicionais
    else
    if Sender = tiEstoque then
    begin
      TFrameCadProduto_Estoque.CarregaFrame(FFrameProduto_Estoque, pnlEstoque, DS);
      Sender.DetailOptions.DetailControl := pnlEstoque;
    end
    else
    if Sender = tiTributos then
      Sender.DetailOptions.DetailControl := PnlTabImpostos
    else
    if Sender = tiFormacaoPreco then
    begin
      TFrmFrameTabelaPreco.CarregaFrame(FFrameTabelaPreco, PnlFrameCustos, DS, DSClientes_Produto);
      Sender.DetailOptions.DetailControl := FFrameTabelaPreco;
    end
    else
    if Sender = tiAnexos then
    begin
      TFrameAnexosProduto.CarregaFrame1(FFrameAnexosProduto, PnlTabImagens, DS, UCHist_Cadastro);
      Sender.DetailOptions.DetailControl := PnlTabImagens;
    end
    else
    if Sender = tiCustos then
    begin
      TFrameCustos.CarregaFrame(FFrameCustos, PnlFrameCustos, WRCalc);
      Sender.DetailOptions.DetailControl := FFrameCustos;
    end else
    if Sender = tiSubUnidade then   // 10
    begin
      TFrame_ConsuProdutoSubUnidade.CarregaFrame1(FFrameProdutoSubUnidade, Sender, DS);
      Sender.DetailOptions.DetailControl := FFrameProdutoSubUnidade;
    end else
    if Sender = tiProducao then
    begin
      TFrmFrame_Producao_Fluxo_Produto.CarregaFrame1(FFrame_Producao_Fluxo, PnlFrameCustos, DS, Produto_Etapas, Produto_Prerequisito, Produto_Baixa_Automatica);
      Sender.DetailOptions.DetailControl := FFrame_Producao_Fluxo;
    end;
  end;
  if Sender = tiFormacaoPreco then
    VerificaSePrecisaAbrir(Produto_Tabela_Preco);
end;

procedure TFrame_Produto_Mestre.TrataExceptPostProduto(const AExcept: Exception);
begin
  //Tratamento de exceção para quando há restrição no campo CODFABRICA.
  //Por padrão este campo não tem restrição no sistema, mas em alguns clientes como a ProPhoto usam constraints no
  //banco. Para que o tratamento do erro dê certo, é necessário que a constraint tenha o nome "codfabrica" nela,
  //ex: UNQ1_PRODUTO_CODFABRICA
  if AnsiContainsText(AExcept.Message, 'CODFABRICA') then
  begin
    if AnsiContainsText(AExcept.Message, 'UNQ') then
      GeraExcecao('Este Código de Fábrica já está sendo utilizado por outro produto.')
    else if AnsiContainsText(AExcept.Message, 'Null') then
      GeraExcecao('O valor do campo Código de Fábrica não pode ser vazio.')
    else
      GeraExcecao('Valor inválido no campo Código de Fábrica. Verifique e tente novamente.');
  end;
end;

procedure TFrame_Produto_Mestre.TrocaCodigoProduto(ACodAntigo, ACodNovo: String);
var
  QuerX, QuerTabelas: TFDQuery;
  ListaValores: TStringList;
  i : Integer;
  AValores : TArray<string>;
begin
  QuerTabelas := GeraFDQuery;
  QuerX := GeraFDQuery(TransaFD);
  try
    //Faz um select que retorna todas as tabelas do banco que possuem o campo CODPRODUTO
    QuerTabelas.SQL.Text := 'select RDB$RELATION_NAME ' +
                            'from RDB$RELATION_FIELDS ' +
                            'where (RDB$FIELD_NAME = ''CODPRODUTO'')';
    QuerTabelas.Open;
    while not QuerTabelas.Eof do
    begin
      if Trim(QuerTabelas.Fields[0].AsString) = 'BALANCO_PRODUTOS' then
      begin
        ListaValores := TStringList.Create;
        try
          QuerX.SQL.Text := 'select CODBALANCO_TITULO, CODBALANCO, sum(QUANT) as QUANT_TOTAL ' +
                            'from BALANCO_PRODUTOS ' +
                            'where (CODPRODUTO = :CodProduto) ' +
                            '      or (CODPRODUTO = :CodProduto2) ' +
                            'group by CODBALANCO_TITULO, CODBALANCO';
          QuerX.ParamByName('CodProduto').AsString  := ACodAntigo;
          QuerX.ParamByName('CodProduto2').AsString := ACodNovo;
          QuerX.Open;
          while not QuerX.Eof do
          begin
            //Lista todos os somatórios de quantidades do produto anterior e do novo produto
            //Necessário apenas quando o novo cod ja seja um produto existente, fazendo a união de cadastros
            ListaValores.Add(QuerX.FieldByName('CODBALANCO_TITULO').AsString + ';' +
                             QuerX.FieldByName('CODBALANCO').AsString + ';' +
                             FormatFloat('0.00000', QuerX.FieldByName('QUANT_TOTAL').AsFloat));
            QuerX.Next;
          end;

          //Exclui os balancos referentes ao produto antigo
          QuerX.SQL.Text := 'delete from BALANCO_PRODUTOS ' +
                            'where (CODPRODUTO = :CodAntigo)';
          QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
          QuerX.ExecSQL;

          //Refaz o cadastro dos balanços contendo o somatório dos valores do produto antigo e do novo
          for I := 0 to ListaValores.Count - 1 do
          begin
            AValores := ListaValores[i].Split([';']);
            QuerX.SQL.Text := 'update or insert into BALANCO_PRODUTOS (CODBALANCO_TITULO, CODBALANCO, CODPRODUTO, QUANT) ' +
                              '                            values (:CODBALANCO_TITULO, :CODBALANCO, :CODPRODUTO, :QUANT)';
            QuerX.ParamByName('CODBALANCO_TITULO').AsString := AValores[0];
            QuerX.ParamByName('CODBALANCO').AsString        := AValores[1];
            QuerX.ParamByName('CODPRODUTO').AsString        := ACodNovo;
            QuerX.ParamByName('QUANT').AsFloat              := StrToFloat(AValores[2]);
            QuerX.ExecSQL;
          end;
        finally
          ListaValores.Free;
        end;
      end else
      begin
        QuerX.SQL.Text := 'update ' + Trim(QuerTabelas.Fields[0].AsString) + ' set CODPRODUTO = :CodNovo ' +
                          'where (CODPRODUTO = :CodAntigo)';
        QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
        QuerX.ParamByName('CodNovo').AsString   := ACodNovo;
        QuerX.ExecSQL;
      end;
      QuerTabelas.Next;
    end;
    //Update especial para a tabela PRODUTO_COMPOSICAO que possui o campo CODPRODUTO_COMPOSICAO que faz referência a
    //tabela PRODUTO
    QuerX.SQL.Text := 'update PRODUTO_COMPOSICAO set CODPRODUTO_COMPOSICAO = :CodNovo ' +
                      'where (CODPRODUTO_COMPOSICAO = :CodAntigo)';
    QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
    QuerX.ParamByName('CodNovo').AsString   := ACodNovo;
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'select CODIGO from PRODUTO where (upper(CODIGO) = :Cod)';
    QuerX.Params[0].AsString := ACodNovo;
    QuerX.Open;
    if ((DS.State = dsEdit) and (QuerX.RecordCount > 0))
       or ((DS.State = dsInsert) and (QuerX.RecordCount <> 0))
       or ((DS.State = dsBrowse) and (QuerX.RecordCount = 1)) then
    begin
      QuerX.SQL.Text := 'delete from PRODUTO_ESTOQUE ' +
                        'where (CODPRODUTO = :CodAntigo)';
      QuerX.ParamByName('CodAntigo').AsString := ACodAntigo;
//      QuerX.ParamByName('CodNovo').AsString   := ds.DataSet.FieldByName('CODIGO').AsString;
      QuerX.ExecSQL;

    end else
    begin
      VerificaSePodeAlteraDataSet(Cadastro);
      Cadastro.FieldByName('CODIGO').AsString := ACodNovo;
      Cadastro.Post;
    end;
  finally
    QuerX.Free;
    QuerTabelas.Free;
    Ds.DataSet.EnableControls;
  end;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)///////////////////'}
  ///   SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)


procedure TFrame_Produto_Mestre.WRCalcCalculaQuant(Sender: TObject; AUnidade: string; AComprimento, ALargura, AEspessura,
  AQtdadePeca: Double; var AQuant: Double);
begin
  inherited;     // evento   WRCalc e WRCalcMemoria
//  AQuant:= ProdutoCalculaQuant(AUnidade, AComprimento, ALargura, AEspessura, AQtdadePeca);
end;

procedure TFrame_Produto_Mestre.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddGenerator(edtCodigo);

      AddValorInicial(FNomeTabela , 'PODE_ALTERAR_ESTOQUE', chkPode_Alterar_Estoque, 'S');
      AddValorInicial(FNomeTabela , 'UNIDADE', cbxUnidade, 'UN');
      AddValorInicial(FNomeTabela , 'TEM_IPPT', cbxIPPT, 'T');
      AddValorInicial(FNomeTabela , 'TEM_IAT', cbxIAT, 'A');
//      AddValorInicial(FNomeTabela , 'TEM_COMPOSICAO', cbxComposicao, 'N');
      AddValorInicial(FNomeTabela , 'DT_CADASTRO', edtDT_Cadastro, '@DATA');
      AddValorInicial(FNomeTabela , 'MARGEM', edtMargem, '100');

      AddValorInicial(FNomeTabela , 'CALC_PMARGEM_CONTRIBUICAO', edtMargem, '100');
      AddValorInicial(FNomeTabela , 'TEM_TAREFA_PRODUCAO', chkCriaTarefaProducao, 'S');
      AddValorInicial(FNomeTabela , 'ORIGEM_MERCADORIA', edtOrigem_Mercadoria, '0');
      AddValorInicial(FNomeTabela , 'TEM_COMPOSICAO', nil, 'N');
//      AddValorInicial(FNomeTabela , 'TEM_IMPOSTO_ESPECIAL', TEM_IMPOSTO_ESPECIAL, 'N');

//      AddValorInicialFrame(FNomeTabela , 'QTDADEPECA_RENDIMENTO', 'edtQTDADePeca', '1');


      with FFrameProduto_Estoque do
      begin
        AddValorInicialFrame(FNomeTabela , 'ESTOQUE_MIN', 'edtEstoque_Min', '1');
        AddValorInicialFrame(FNomeTabela , 'ESTOQUE_MAX', 'edtEstoque_Max', '2');
        AddValorInicialFrame(FNomeTabela , 'PODE_RETORNAR_AO_ESTOQUE', 'chkPode_Retornar_Ao_Estoque', 'S');
        AddValorInicialFrame(FNomeTabela , 'TEM_LOTE', 'chkTem_Lote', 'N');
      end;
      with FFrmFrameComposicao do
      begin
        AddValorInicialFrame(FNomeTabela , 'QTDADEPECA', 'edtQTDADePeca', '1');
        AddValorInicialFrame(FNomeTabela , 'COMP', 'edtComp', '1');
        AddValorInicialFrame(FNomeTabela , 'LARG', 'edtLarg', '1');
        AddValorInicialFrame(FNomeTabela , 'ESPESSURA', 'edtEspessura', '1');
                                                                                                    // FAKE
        AddValorInicialFrame(FNomeTabela , 'QTDADEPECA_FORMULA', 'edtQTDADePecaFormula', '1');   //edtQTDADePecaFormula
        AddValorInicialFrame(FNomeTabela , 'COMP_FORMULA', 'edtCompFormula', '1');               //edtCompFormula
        AddValorInicialFrame(FNomeTabela , 'LARG_FORMULA', 'edtLargFormula', '1');               //edtLargFormula
        AddValorInicialFrame(FNomeTabela , 'ESPESSURA_FORMULA', 'edtEspessuraFormula', '1');     //edtEspessuraFormula

        AddValorInicialFrame(FNomeTabela , 'COMP_RENDIMENTO', 'edtComp_Rendimento', '1');
        AddValorInicialFrame(FNomeTabela , 'LARG_RENDIMENTO', 'edtLarg_Rendimento', '1');
        AddValorInicialFrame(FNomeTabela , 'ESPESSURA_RENDIMENTO', 'edtEspessura_Rendimento', '1');

      end;

      with FFrameCustos do
      begin
        AddValorInicialFrame(FNomeTabela , 'QTDADEPECA_RENDIMENTO', 'edtRendimento', '1');   // QTDADEPECA_RENDIMENTO
        AddValorInicialFrame(FNomeTabela , 'PODE_ATUALIZAR_MARKUP', 'chkPode_Atualizar_Markup', 'S');
        AddValorInicialFrame(FNomeTabela , 'PODE_SER_VENDIDO', 'chkPode_Ser_Vendido', 'S');
        AddValorInicialFrame(FNomeTabela , 'PODE_SER_COMPRADO', 'chkPode_Ser_Comprado', 'S');
        AddValorInicialFrame(FNomeTabela , 'TEM_MARGEM_FIXA_CONTIBUICAO', 'chkTem_Margem_Fixa_Contribuicao', 'S');
//        AddValorInicial(FNomeTabela , 'TEM_VMINIMO_VENDA_VALOR', TEM_VMINIMO_VENDA_VALOR, 'S');
      end;

      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'A Descrição não pode ficar vazia ou em branco.');
        AddObrigatorio(FNomeTabela, 'CODPRODUTO_TIPO', cbxCodProduto_Tipo, 'Informar o Tipo do Produto');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;
    end;
  end;
end;

procedure TFrame_Produto_Mestre.WREventosCadastroLayoutChange(Sender: TObject);
begin
  inherited;
  btnVisualizaEstoque.Visible    := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;
  dxLayoutControl13Item2.Visible := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;
  tiFormacaoPreco.Visible        := AWR_APP[TagAPP_Venda_Tabela_Preço].Ativo;
  tiAnexos.Visible               := AWR_APP[TagAPP_Anexo].Ativo;
  GrupoTopEstoque.Visible        := AWR_APP[TagAPP_Estoque].Ativo;
  tiEstoque.Visible              := AWR_APP[TagAPP_Estoque].Ativo;

  tiCustos.Visible               := GetPodeVerCustos;
  liedtCusto.Visible             := GetPodeVerCustos;
  liedtMargem.Visible            := GetPodeVerCustos;
  tiAtividade.Visible            := GetPodeVerCustos;

  UCControls1.AplicaDireito(btnExcluir,'Frame_Produto_Mestre.btnExcluir');
  UCControls1.AplicaDireito(edtValor,'Frame_Produto_Mestre.edtValor');
  UCControls1.AplicaDireito(btnAdicionarEstoque,'Frame_Produto_Mestre.btnAdicionarEstoque');
  UCControls1.AplicaDireito(btnVisualizaEstoque,'Frame_Produto_Mestre.btnVisualizaEstoque');



end;

procedure TFrame_Produto_Mestre.EdtTabelaPrecoDescontoPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtTabelaPrecoDesconto.Focused then
    EdtTabelaPrecoValor.Value := RdT(PercDesconto(Cadastro.FieldByName('VALOR').AsFloat, EdtTabelaPrecoDesconto.Value), -2);
end;

procedure TFrame_Produto_Mestre.EdtTabelaPrecoValorPropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtTabelaPrecoValor.Focused then
    EdtTabelaPrecoDesconto.Value := -1 * PercAplicado(EdtTabelaPrecoValor.Value, Cadastro.FieldByName('VALOR').AsFloat);
end;

procedure TFrame_Produto_Mestre.edtTempoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmEntradaTempo.SetTempoField(Cadastro.FieldByName('TEMPO'));
end;

procedure TFrame_Produto_Mestre.edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
//  WRCalc.ProdutoAlterarValor(DisplayValue);
  try
    Routes.Produto.AlteraValorProduto(TFDQuery(WRCalc.DBProduto).Transaction, WRCalc, DisplayValue, Produto_Preco, Produto_Preco_Filho);
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
//  if DisplayValue > -0.01 or  < 0.01 then
//  ShowMessage('Deseja lançar a diferença na Composição do Produto?');
end;

procedure TFrame_Produto_Mestre.edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarValor_Compra(DisplayValue);
end;

procedure TFrame_Produto_Mestre.EdtAjusteFamiliaReajustePropertiesChange(Sender: TObject);
var
  AReajuste: Double;  // Lixo apagar
begin
  try
    AReajuste := EdtAjusteFamiliaReajuste.EditValue;
  except
    Exit;
  end;
  if (AReajuste <> 0.0) then
  begin
    AReajuste := 1 + (AReajuste / 100);
    EdtAjusteFamiliaCustoLojaCalculado.Value := EdtAjusteFamiliaCustoLojaAtual.Value * AReajuste;
    EdtAjusteFamiliaVarejoCalculado.Value := EdtAjusteFamiliaVarejoAtual.Value * AReajuste;
  end;
end;

procedure TFrame_Produto_Mestre.EdtCalc_Qpeso_BrutoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('CALC_QPESO_BRUTO', DisplayValue);
end;

procedure TFrame_Produto_Mestre.EdtCodigoBarrasPropertiesChange(Sender: TObject);
begin
  inherited;
  if Length(EdtCodigoBarras.Text) >= 12 then
    LabelDigito.Caption := DigitoCodBarras(EdtCodigoBarras.Text);
  GrupoCodigoDeBarras.Visible := (Length(EdtCodigoBarras.Text) >= 12);
end;

procedure TFrame_Produto_Mestre.edtCodigoPropertiesChange(Sender: TObject);
begin
  inherited;
  // Chama que é macumba, la vem a thred
  // Verifica se ta carregando algo e cancela,
  // Starta o Novo donload
  TimerFotos.Enabled :=True;
end;

procedure TFrame_Produto_Mestre.edtCustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarCusto(DisplayValue);
end;

procedure TFrame_Produto_Mestre.edtDescricaoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  var
  A :integer;
begin
  inherited;
  A := 1;
end;

procedure TFrame_Produto_Mestre.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  if ds.State <> dsInsert then
//    TabComposicao.Visible:=True;
end;

procedure TFrame_Produto_Mestre.DSEstoque_ProdutoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if EmpresaAtiva <> Estoque_Produto.FieldByName('CODEMPRESA').AsString then
    Estoque_Produto.Locate('CODEMPRESA',EmpresaAtiva,[]); //Joga a Query para mostrar o estoque da empresa ativa
end;

procedure TFrame_Produto_Mestre.DSStateChange(Sender: TObject);
begin
  inherited;
  DSProduto_Centro_Trabalho.AutoEdit := (Cadastro.State in dsEditModes);
  DSProduto_Composicao.AutoEdit      := (Cadastro.State in dsEditModes);
  DSProdutoPreco.AutoEdit            := (Cadastro.State in dsEditModes);
  BtnMenu.Enabled                    := (Cadastro.State = dsBrowse);

end;

procedure TFrame_Produto_Mestre.DuplicarProduto1Click(Sender: TObject);
Var
  AProdutoClassificacaoSelecionado: string;
  AForm : TFrmBase;
  ATag, AProdutoTipoSelecionado, I: Integer;
  ACamposIgnoradosList: TStringList;
  ACamposIgnoradosArray: array of string;
  t: TProduto_TipoClassificacao;
begin
  inherited;
  PmComposicao.ProcuraProduto(Cadastro.FieldByName('Codigo').AsString, '', Empresa.FieldByName('CODIGO').AsInteger);
  // Aqui deveria fechar os clones, mais como sabe esta dentro da classe da memória sem acesso(Isso é uma merda)

  //  Cria a tela correspondente e aperta novo, copia e Show
  // De acordo com o retorno da telinha, deve trazer qual é a tag da tela correspondente pra abrir.
  if not TFrmProdutoTipoSelecao.GetProdutoTipo( ATag,
                                                AProdutoTipoSelecionado ) then
    Exit;

  AForm:= TFrmBase(TFormClass(FindClass(WREventosCadastro.FormClassCadastro)).Create(FrmPrincipal));
  AForm.ShowCadastroItem(ATag, null);
  AForm.FrameCadastro.btnNovo.Click;

  ACamposIgnoradosList := TStringList.Create;
  for t := Low(t) to High(t) do
  begin
    ACamposIgnoradosList.Add('TEM_' + Produto_TipoClassificacaoToStr(t));
  end;
  ACamposIgnoradosList.AddStrings(['DT_CADASTRO', 'CODIGO', 'ESTOQUE']);

  SetLength(ACamposIgnoradosArray, ACamposIgnoradosList.Count);

  for I := 0 to ACamposIgnoradosList.Count - 1 do
  begin
    ACamposIgnoradosArray[I] := ACamposIgnoradosList[I];
  end;


  DSCopiarCamposIguais( PmComposicao.Produto, AForm.FrameCadastro.Cadastro,
                        ACamposIgnoradosArray);
  AForm.FrameCadastro.Cadastro.FieldByName('CODPRODUTO_TIPO').AsInteger := AProdutoTipoSelecionado;
  PmComposicao.Composicao.First;
  try
    DataSetCopiaRecursivoCamposIguais(PmComposicao.Composicao, TFrame_Produto_Mestre(AForm.FrameCadastro).WRCalc.DBComposicao,
                          WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger, // ÚnicaDiferenca achar o novo parent mestre
                          ['CODIGO', 'CODPRODUTO_COMPOSICAO'],
                          PmComposicao.TreeListComposicao.GetTreeList);  // Isso ordena para passar uma única vez
  finally
  end;
  Application.ProcessMessages;
  TFrame_Produto_Mestre(AForm.FrameCadastro).WRCalc.DBComposicao.Refresh;   //<-- Necessário para os Left Joins
  TFrame_Produto_Mestre(AForm.FrameCadastro).WRCalc.CalcBuild;
  TFrame_Produto_Mestre(AForm.FrameCadastro).WRCalc.SuperCalc;
  ShowMessage('Produto Duplicado com sucesso....');


end;

//////////////////////////////////CUIDADO SQL FECHA E ABRE AS FINHAS NECESSÁRIAS //////////////////////////////////////

procedure TFrame_Produto_Mestre.Migrarimagens1Click(Sender: TObject);
begin
  inherited;
{  if ShowMessageWR('Utilize este recurso apenas se você atualizou seu sistema e teve algum problema ' +
                   'com as imagens dos produtos. Este procedimento irá transferir as imagens dos produtos ' +
                   'de versões anteriores do sistema que tenham sido perdidas após a atualização do mesmo. ' + #13#10 +
                   'Deseja prosseguir com a importação?', MB_ICONQUESTION) = mrYes then
  begin
    TFotos.ImportarModelo1;
    TFotos.ImportarModelo2;
    ShowMessage('Imagens importadas com sucesso.');
  end;     }
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoCalcFields(DataSet: TDataSet);
begin
  inherited;
  Produto_Composicao.FieldByName('Medidas').AsString  :=
       ProdutoGetMedidas(Produto_Composicao.FieldByName('UNIDADE').AsString,
                         Produto_Composicao.FieldByName('QTDADEPECA').AsFloat,
                         Produto_Composicao.FieldByName('COMP').AsFloat,
                         Produto_Composicao.FieldByName('LARG').AsFloat,
                         Produto_Composicao.FieldByName('ESPESSURA').AsFloat,
                         Produto_Composicao.FieldByName('QUANT').AsFloat).Medidas;
//  Produto_Composicao.FieldByName('TotalPeso').AsFloat := ProdutoCalcTotalPeso(Produto_Composicao);
end;

procedure TFrame_Produto_Mestre.Produto_PrecoCalcFields(DataSet: TDataSet);
begin
  inherited;
  Produto_Preco.FieldByName('Valor').AsFloat := PercDesconto(Cadastro.FieldByName('VALOR').AsFloat, Produto_Preco.FieldByName('PORCENTAGEM').AsFloat);
end;

procedure TFrame_Produto_Mestre.Produto_Preco_FilhoAfterOpen(DataSet: TDataSet);
var
  ABloqueiaValor, ABloqueiaDescricao: Boolean;
begin
  inherited;
  Produto_Preco_Filho.First;
  while not Produto_Preco_Filho.eof do
  begin
    SQLProduto_VariacaoPaiBloqueouFilhos(Produto_Preco_Filho.FieldByName('CODPRODUTO').AsString, ABloqueiaValor, ABloqueiaDescricao);

    edtDescricao.Enabled := not ABloqueiaDescricao;
    liedtValor.Enabled  :=  not ABloqueiaValor;
    liedtMargem.Enabled :=  not ABloqueiaValor;
    liedtCusto.Enabled  :=  not ABloqueiaValor;

    if not MainLayoutGroup7.Enabled then
      Exit;

    Produto_Preco_Filho.Next;
  end;
end;

procedure TFrame_Produto_Mestre.Produto_PrerequisitoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 3: EVENTOS DO FORM - Create, Show, Hide, Destroy, KeyDown /////////////////////////////////////////////'}
  ///   SEÇÃO 3: EVENTOS DO FORM - Load, Enter, Exit

procedure TFrame_Produto_Mestre.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  TFrmFrameComposicao.CarregaFrame(FFrmFrameComposicao, PnlTabComposicao, WRCalc, PmComposicao);
  InicializaSQLWhere(Produto_Tipo);
end;

procedure TFrame_Produto_Mestre.FcPrincipalCarregaDataSets(Sender: TObject);  /// Executa primeiro aqui depois o create
begin
  inherited;
  FcPrincipal.AdicionarDataSet(Cadastro, 'Produto');
  FcPrincipal.AdicionarDataSet(Produto_Composicao, 'Produto_Composicao');
  FcPrincipal.AdicionarDataSet(Produto_Grade, 'Produto_Grade');
  FcPrincipal.AdicionarDataSet(Produto_Preco, 'Produto_Preco');

  //Componentes Formatados
  FormatarEdit(DecimalFinanceiro, edtValor_Compra);
  FormatarEdit(DecimalFinanceiro, edtCusto);
  FormatarEdit(DecimalQuantidade, edtEstoque);
  FormatarEdit(DecimalFinanceiro, EdtTabelaPrecoValor);
end;

procedure TFrame_Produto_Mestre.FrameEnter(Sender: TObject);
begin
//  if not FrmPrincipal.Action_Produtos.Enabled then    // Gostaria dessa regra no principal, com o nome da acion
//  begin
//    ShowMessage('Não tem autorização para ver esse Cadastro. Libere nas permissões de Usuários.');
//    TForm(Owner).Close;
//    Abort;        // Menssagem de Não autorizado
//  end;
  if Not Assigned(FLayoutPadrao) then
  begin
    //Assert(LiValores.ActuallyVisible, 'Programador!! Coloque o Custo como o primeiro a ser mostrado ne tela ao abrir!');
    //Assert(Not GrupoLogAlteracoes.ActuallyVisible, 'Programador!! Coloque o Custo como o primeiro a ser mostrado ne tela ao abrir!');
  //  ViewFotos := nil;

    PreencheLookupTipoTabelaPreco(CbxTabelaPrecoTipo.Properties);
    PreencheLookupTipoTabelaPreco(TcxLookupComboBoxProperties(GridPrecosDBTableView2TIPO.Properties));
    PreencheComboBoxUnidade(cbxUnidade);

    btnNovo.Enabled := FrmPrincipal.Action_Cad_Produto.Enabled;    // NOVO

    PreencheLookupOrigemMercadoria(edtOrigem_Mercadoria.Properties);
  //  PreencheLookupTipoTabelaPreco(edtCest.Properties);

    CbxTabelaPrecoTipo.EditValue := TipoTabelaPrecoToStr(ttpAte);
    ProdutoControleUnidades.AtualizaCaptionsLayoutControl(liedtObservacao, '. Padrão');

    //Sempre 3
  //  LAjustaCompFixo(edtComp, Cadastro.FieldByName('COMPRIMENTO_FIXO').AsString);
  //  LAjustaCompFixo(edtLarg, Cadastro.FieldByName('LARGURA_FIXA').AsString);
  //  LAjustaCompFixo(edtEspessura,  Cadastro.FieldByName('ESPESSURA_FIXA').AsString);
  //  TabDadosAdicionais.MakeVisible;  // Isso ativa MainLayoutTabChanged

    LiValores.TabbedOptions.HideTabs     := True;

    DragAcceptFiles(Handle, True);
//    VerificaTipoDeCadastro;
  end;
  inherited;

  // Verifica As Permissões de acesso
  if Not Produto_Tipo.Active then
    Produto_Tipo.Open;    // Pode verificar se tem o registro aqui para saber se pode ver
  //////////////////////////////////////////CUIDADO/////////////////////////////////////////////////////////////////////
//  TabDadosAdicionais.MakeVisible;   // Aqui ativa a criação dos Frames (Avita no change da aba aberta)
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  {$IFNDEF DEBUG}
  lilblGrupoÎProduto_GrupoÎDESCRICAO.Visible := True;
  {$ENDIF}
end;

procedure TFrame_Produto_Mestre.FrameExit(Sender: TObject);
begin
  inherited;
  if FFrmFrameComposicao <> nil then
  begin
    if FFrmFrameComposicao.liFormulas.Visible = true then
      FFrmFrameComposicao.GrupoMateriais.MakeVisible;
  end;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 4: CONFIGURAÇÕES - Layout, Configuração, Ajuda, Impressões ////////////////////////////////////////////'}
  ///   SEÇÃO 4: CONFIGURAÇÕES - Layout, Configuração, Ajuda, Impressões

procedure TFrame_Produto_Mestre.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  MnuAplicarAjusteValorFamlia.Enabled := (not btnConfirmar.Enabled) and
                                         (edtDescricao.Text <> '') and
                                         (edtCusto.Enabled) and
                                         (EdtValor.Enabled) and
                                         GetPodeVerCustos;
  AtualizarCustos1.Enabled := GetPodeVerCustos;
  // Exporta para Banlança de peso de supermercado Lista dos Produtos com preço atualizado dos produtos
  PoupBalanaFiziola.Visible     := not ComunicacaoVisual;
  PoupBalanaUrano.Visible       := not ComunicacaoVisual;
  PoupBalanaToledo.Visible      := not ComunicacaoVisual;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen /////////////////////////////////'}
  ///   SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen


procedure TFrame_Produto_Mestre.BtnAlterarCodProdutoConfirmarClick(Sender: TObject);   // Verificar a rotina
var
  QuerX: TFDQuery;
  function ProdutoVerificaCodigo(const ADesc: string): Boolean;
  var
    I: Integer;
  begin
    Result := False;
    for I := 1 to Length(ADesc) do
    begin
      if CharInSet(ADesc[i], ['.', '*', ',']) then
        Exit;
    end;
    Result := True;
  end;
begin
  inherited;
  EdtAlterarCodProdutoCodigoÎProduto.Text := Trim(AnsiUpperCase(EdtAlterarCodProdutoCodigoÎProduto.Text));
  if EdtAlterarCodProdutoCodigoÎProduto.Text = '' then
    ShowMessage('Código Inválido');
  if not ProdutoVerificaCodigo(EdtAlterarCodProdutoCodigoÎProduto.Text) then
  begin
    ShowMessageWR('Não é permitido o uso de Ponto, Asterisco e Virgula ("." "*" ",") no código do produto.', MB_ICONWARNING);
    Exit;
  end;

  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select first 1 1 from PRODUTO where CODIGO = ' + QuotedStr(EdtAlterarCodProdutoCodigoÎProduto.Text);
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      if ShowMessageWR('Já existe um produto cadastrado com o Código: ' + EdtAlterarCodProdutoCodigoÎProduto.Text + sLineBreak +
                       'Deseja abrir o cadastro desse produto?', MB_ICONQUESTION) = mrYes then
      begin
        Ocultar(PnlAlterarCodProduto);
        CloseOpen_AbrirRegistro(EdtAlterarCodProdutoCodigoÎProduto.Text);
      end;
      Exit;
    end;
  finally
    QuerX.Free;
  end;
//  PermisaoAlterar;// Trava tudo
  if (edtCodigo.Text <> '') and (EdtAlterarCodProdutoCodigoÎProduto.Text <> edtCodigo.Text) then
  begin
    LblAlterarCodProdutoCodigoÎProdutoÎDescricao.Style.Font.Color := clWindowText;
    LblAlterarCodProdutoCodigoÎProdutoÎDescricao.Style.Font.Size  := 8;

    Ds.DataSet.DisableControls;
    if not (ds.State in dsEditModes) then
       btnAlterar.Click;
    if Cadastro.State = dsEdit then
    begin
      TrocaCodigoProduto(edtCodigo.Text, EdtAlterarCodProdutoCodigoÎProduto.Text);
      try
        if not (ds.State in dsEditModes) then
          btnAlterar.Click;
        Cadastro.Post;
        TransaFD.Commit;
      except
        TransaFD.Rollback;
      end;
    end else
    begin
      Cadastro.FieldByName('CODIGO').AsString:= EdtAlterarCodProdutoCodigoÎProduto.Text;
    end;
    if Cadastro.State = dsEdit then // Se tiver Inserindo da Problema
    Begin
      tcCadastro.Controller.FocusedItem:= btnNovo;
    End;
//    btnConfirmar.Click;
    Ds.DataSet.EnableControls;
    Ocultar(PnlAlterarCodProduto);
  end else
  begin
//    LblAlterarCodProdutoCodigoÎProdutoÎDescricao.Caption          := 'Informe um código diferênte do código atual.';
    LblAlterarCodProdutoCodigoÎProdutoÎDescricao.Style.Font.Color := clRed;
    LblAlterarCodProdutoCodigoÎProdutoÎDescricao.Style.Font.Size  := 10;
  end;
end;

procedure TFrame_Produto_Mestre.btnCancelarClick(Sender: TdxTileControlItem);
begin
  WRCalc.SprFechaMemTables;
  inherited;
end;

procedure TFrame_Produto_Mestre.BtnConfiguracoesClick(Sender: TdxTileControlItem);
begin
  inherited;
  PopUpMenu1.PopupOnMouse;
end;

procedure TFrame_Produto_Mestre.btnConfirmarClick(Sender: TdxTileControlItem);
var
  Inserindo : String;
begin
  if ds.State = dsInsert then
    Inserindo := Cadastro.FieldByName('CODIGO').AsString
  else
    Inserindo:='';
  WRCalc.NaoValida:=True;
//  if (edtGrupoÎProduto_Grupo.Text <> '') and (LblGrupoÎProduto_GrupoÎDESCRICAO.Caption = '') then
//  begin
//    ShowMessage('Grupo de produto não cadastrado');
//    tiTributos.Click;
//    liedtGrupoÎProduto_Grupo.MakeVisible;
//    edtGrupoÎProduto_Grupo.SetFocusWR;
//    Exit;
//  end;
{  if (FrameCadProduto_Estoque.EdtFornecedorÎPessoas.Text <> '') and (LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption = '') then
  begin
    ShowMessage('Fornecedor não cadastrado');
    LiFornecedores.MakeVisible;
    EdtFornecedorÎPessoas.SetFocusWR;
    Exit;
  end;   }
  //Aqui jaz uma rotina que verificava duplicidade no codigo de fabr. OBS: tem uma uniq querendo fazer isso.

  //Desativado a verificação do ponto e asterisco para aumentar a compatibilidade do sistema.
  //Isto afeta a venda e torna impossível digitar o ponto ou asterisco no momento da pesquisa do produto.
  {if not VerificaDesc(Produto.FieldByName('DESCRICAO').AsString) then
  begin
    MessageBox(0, 'Não é permitido o uso de Ponto e Asterisco (. *) na descrição do produto.', PWideChar(Sistema.Nome), MB_ICONWARNING or MB_OK);
    Exit;
  end;}

  if (Empresa.FieldByName('EMITE_NFE').AsString = 'S') {and (btnCriarGrade.Tag = 0) não sei oq ue isso faz ainda??????removido por foi feito o frame } then
  begin
    if ((Trim(Cadastro.FieldByName('CODNF_NCM').AsString) = '') or (Length(Trim(Cadastro.FieldByName('CODNF_NCM').AsString)) < 8)) and (cbxCodProduto_Tipo.Text <> 'SERVIÇO') then
    begin
      edtNCMÎNF_NCM.Hint := 'O campo NCM é obrigatório para emissão de NF-e.' + sLineBreak +
                            'O mesmo deve conter no mínimo 8 dígitos.'  + sLineBreak + sLineBreak +
                            'Em caso de dúvidas, entre em contato com o seu escritório' + sLineBreak +
                            'de contabilidade e informe-se.';
      edtNCMÎNF_NCM.ShowHint := true;
      liedtNCMÎNF_NCM.MakeVisible;
      edtNCMÎNF_NCM.SetFocusWR;
    end
    else if (Trim(Cadastro.FieldByName('CODNF_NCM').AsString) = '') and (cbxCodProduto_Tipo.Text = 'SERVIÇO') then
    begin
      edtNCMÎNF_NCM.Hint := 'O campo Tipo de Serviço é obrigatório para emissão de NFS-e.' + sLineBreak + sLineBreak +
                            'Em caso de dúvidas, entre em contato com o seu escritório' + sLineBreak +
                            'de contabilidade e informe-se.';
      edtNCMÎNF_NCM.ShowHint := true;
      liedtNCMÎNF_NCM.MakeVisible;
      edtNCMÎNF_NCM.SetFocusWR;
    end else
      EdtNCMÎNF_NCM.ShowHint := false;

    if (Trim(Cadastro.FieldByName('CODPRODUTO_GRUPO').AsString) = '') then
    begin
      edtGrupoÎProduto_Grupo.Hint := ('O Grupo de Produtos contém informações necessárias para emissão de NF-e.' + sLineBreak + sLineBreak +
                                      'Caso não informe no cadastro do produto, será necessário informar no' + sLineBreak +
                                      'itém da venda ao emitir a NFe.');
      edtGrupoÎProduto_Grupo.ShowHint := true;
      edtGrupoÎProduto_Grupo.SetFocusWR;
    end else
      edtGrupoÎProduto_Grupo.ShowHint := false;

    if (Trim(Cadastro.FieldByName('UNIDADE').AsString) = '') then
    begin
      cbxUnidade.Hint := ('Para a emissão de NF-e.' + sLineBreak +
                         'Será necessário informar a Unidade do produto');
      cbxUnidade.ShowHint := true;
      cbxUnidade.SetFocusWR;
    end else
      cbxUnidade.ShowHint := false;
  end;

  ///Verifica se o produto tem composição na hora de confirmar;
  if not Produto_Composicao.IsEmpty then
  begin
    Cadastro.FieldByName('TEM_COMPOSICAO').AsString    := 'S';
    Cadastro.FieldByName('PODE_SER_COMPRADO').AsString := 'N';
  end
  else
  begin
    Cadastro.FieldByName('TEM_COMPOSICAO').AsString    := 'N';
    Cadastro.FieldByName('PODE_SER_COMPRADO').AsString := 'S';
  end;

  if Cadastro.FieldByName('DT_CADASTRO').IsNull then
    Cadastro.FieldByName('DT_CADASTRO').AsDateTime := DataHoraSys;
  if WRCalc.DBComposicao.State in dsEditModes then
    WRCalc.DBComposicao.Post;

  try
    if (Inserindo ='') then
    begin
      WRCalc.CalcBuild;
      WRCalc.SuperCalc;   // << Soma no produto principal
      VerificaSePrecisaAbrir(Produto_Tabela_Preco);
      DM_Clientes_ProdutoAtualizar(Produto_Tabela_Preco, Cadastro.FieldByName('VALOR').AsFloat);  // Tabela de preço
    end;

    inherited;
    if not(Cadastro.State in dsEditModes)and(Inserindo<>'') then
    begin
      if Assigned(FConsulta) then
      begin
        Cadastro.Close;
        TConsuM(FConsulta).Consulta.Refresh;
        TConsuM(FConsulta).Consulta.Locate('CODIGO', Inserindo, []);
        Cadastro.Open;
      end else
        CloseOpen_AbrirRegistro(Inserindo);
    end;
  except
    on E:Exception do
    begin
      TrataExceptPostProduto(E);
      raise;
    end;
  end;
  WRCalc.NaoValida:=False;

end;

procedure TFrame_Produto_Mestre.CadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  WRCalc.CalcBuild;
end;

procedure TFrame_Produto_Mestre.CadastroAfterInsert(DataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := SQLProdutoMaxFamilia;
  try
    Cadastro.FieldByName('CODFAMILIA').AsInteger := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;

//  ProdutoEventoAfterInsert(Cadastro);
end;

procedure TFrame_Produto_Mestre.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Centro_Trabalho.Open;
  Produto_Composicao.Open;
  Produto_Preco.Open;
  Produto_Preco_Filho.Open;
  Produto_Custo_Adicional.Open;
  Estoque_Produto.Open; // é o campo estoque (edtEstoque) do topo não da para tirar daqui
  Produto_Etapas.Open;
  Produto_Prerequisito.Open;
  Produto_Baixa_Automatica.Open;

  if not tcTabs.Enabled then
    tcTabs.Enabled := True;

  if not tcCadastro.Enabled then
    tcCadastro.Enabled := True;

//  TileActivateDetail(tcTabs.Items[tcTabs.Tag]);

  if Assigned(tcTabs.ActiveDetail) then
    TileActivateDetail(tcTabs.ActiveDetail.TileItem)
  else
    TileActivateDetail(nil)

//  TileActivateDetail(tcTabs.ActiveDetail.TileItem);

//  WRCalc.CalcBuild;
//  // Abre as tabelas apenas as necessárias
//  MainLayoutTabChanged(Self); // Tabelas secundárias
end;

procedure TFrame_Produto_Mestre.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produto_Grade.Close;
  Estoque_Produto.Close;
  Produto_Tabela_Preco.Close;
  Produto_Composicao.Close;
  Produto_Centro_Trabalho.Close;
  Produto_Preco.Close;
  Produto_Custo_Adicional.Close;
  Produto_Etapas.Close;
  Produto_Prerequisito.Close;
  Produto_Baixa_Automatica.Close;
  WRCalc.SprFechaMemTables;
end;

procedure TFrame_Produto_Mestre.CadastroBeforeOpen(DataSet: TDataSet);
var
  ASqlFiltro: string;
begin
 { ASqlFiltro := GetSQLPermissaoTipo('PRODUTO_TIPO_NEGAR_USUARIO');      // Retirar isso Daqui
  if ASqlFiltro <> '' then
    Cadastro.SQL.Add('and not (CODPRODUTO_TIPO in (' + ASqlFiltro + '))');      }
  inherited;
end;

procedure TFrame_Produto_Mestre.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  DSPost(Produto_Tabela_Preco);
end;

class function TFrame_Produto_Mestre.IsCustoComposicaoDiferente(ARecord: TcxCustomGridRecord): Boolean;
  function LGetCusto(const AFieldName: string): Double;
  begin
    Result := VarToDoubleDef(ARecord.Values[TcxGridDBTableView(ARecord.GridView).GetColumnByFieldName(AFieldName).Index], 0);
  end;
begin
  Result := not SameValue(LGetCusto('CUSTO'), LGetCusto('CUSTO_ATUAL'));
end;

procedure TFrame_Produto_Mestre.LiValoresTabChanged(Sender: TObject);
begin
  inherited;
  if TabPrecoEspecial.ActuallyVisible then
  begin
    TFrmFrameTabelaPreco.CarregaFrame(FFrameTabelaPreco, PnlTabelaPreco, DS, DSClientes_Produto);
    VerificaSePrecisaAbrir(Produto_Tabela_Preco);
  end;
  if TabCentroCusto.ActuallyVisible then
  begin
    TFrmFrameCentroCustos.CarregaFrame(FFrameCentroCustos, pnlCentroCusto, DS);
    VerificaSePrecisaAbrir(Produto_Centro_Trabalho);
  end;
end;

{class function TFrmProduto.GetValorComposicaoDiferenca(const ARecord: TcxCustomGridRecord; const AProduto: TDataSet): TCadProdutoDiferencaValor;
  function LGetValor(const AFieldName: string): Double;
  begin
    Result := RdT(VarToDoubleDef(ARecord.Values[TcxGridDBTableView(ARecord.GridView).GetColumnByFieldName(AFieldName).Index], 0), -4);
  end;
var
  AValorDeveriaSer, AValorAtual, ACustoVenda, AValor: Double;
begin
  AValorAtual := LGetValor('VALOR_ATUAL');
  ACustoVenda := LGetValor('CUSTO_VENDA');
  AValor      := LGetValor('VALOR');

  if AProduto.FieldByName('MANTER_ATUAL_VALOR_COMPOSICAO').AsString = 'S' then
    AValorDeveriaSer := AValorAtual
  else
    AValorDeveriaSer := PercAdd(ACustoVenda, AProduto.FieldByName('MARGEM').AsFloat);

  AValorDeveriaSer := RdT(AValorDeveriaSer, -4);
  AValor           := RdT(AValor, -4);

  if AValor < ACustoVenda then
    Result := cpdvAbaixoDoCusto
  else if AValor < AValorAtual then
    Result := cpdvAbaixoDoValor
  else if AValor > AValorAtual then
    Result := cpdvAcimaDoValor
  else
    Result := cpdvIgual;
end;  }

class function TFrame_Produto_Mestre.GetValorCorComposicaoDiferenca(const ARecord: TcxCustomGridRecord; const AProduto: TDataSet;
  ACorAcimaValor, ACorAbaixoValor, ACorAbaixoCusto: TColor): TColor;
begin
  Result := clDefault;
{  case GetValorComposicaoDiferenca(ARecord, AProduto) of
    cpdvAbaixoDoValor: Result := ACorAbaixoValor;
    cpdvAbaixoDoCusto: Result := ACorAbaixoCusto;
    cpdvAcimaDoValor:  Result := ACorAcimaValor;
  end;    }
end;

class function TFrame_Produto_Mestre.GetValorHintComposicaoDiferenca(const ARecord: TcxCustomGridRecord;
  const AProduto: TDataSet): string;
//var
//  ADiferenca: TCadProdutoDiferencaValor;
begin
  inherited;
  Result := '';
{  ADiferenca := GetValorComposicaoDiferenca(ARecord, AProduto);
  case ADiferenca of
    cpdvAbaixoDoValor: Result := 'O valor deste produto está abaixo do cadastro.';
    cpdvAbaixoDoCusto: Result := 'O valor deste produto está abaixo do Custo.';
    cpdvAcimaDoValor:  Result := 'O valor deste produto está acima do cadastro.';
  end;
  if not (ADiferenca in [cpdvIgual, cpdvAcimaDoValor]) then
    Result := Result + ' Você precisa atualizar os custos/valores';   }
end;

procedure TFrame_Produto_Mestre.dbtxtCodigoEnter(Sender: TObject);
begin
  inherited;
  if Not DS.AutoEdit then
  begin
    ShowMessageWR('Esse registro não pode ser Modificado!'); // Regra não existe aqui nesse cadastro ainda, estava junto na execução da rotina
    Exit;                                                    // Regras de negócio, e execução das procedures, deve ficar em locais diferentes
  end;
  if Estoque_Produto.FieldByName('ESTOQUE').AsFloat > 0  then
  begin
    ShowMessageWR('Só é permitida a alteração de código dos produtos com estoque = Zero(0)!');
    Exit;
  end;
  Mostrar(PnlAlterarCodProduto);
  EdtAlterarCodProdutoCodigoÎProduto.Text := edtCodigo.Text;
  EdtAlterarCodProdutoCodigoÎProduto.SetFocusWR;
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoAfterClose(DataSet: TDataSet);
begin
  inherited;
  WRCalc.SprFechaMemTables;
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Produto_Composicao.FieldByName('CODIGO').AsInteger               := GetProximoCodigo('PRODUTO_COMPOSICAO', TransaFD);
  Produto_Composicao.FieldByName('CODPRODUTO_COMPOSICAO').AsString := Cadastro.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Composicao.ParambyName('CODEMPRESA').AsInteger := Empresa.FieldByName('CODIGO').AsInteger;    // Ok
end;

procedure TFrame_Produto_Mestre.Produto_ComposicaoBeforePost(DataSet: TDataSet);
begin
  inherited;
 { if WRCalc.TreeList.FocusedNode.Parent = WRCalc.TreeList.FocusedNode.Root then
    Produto_Composicao.FieldByName('SEQUENCIA').AsInteger := WRCalc.TreeList.FocusedNode.Index
  else
    Produto_Composicao.FieldByName('SEQUENCIA').Clear;  }
end;

procedure TFrame_Produto_Mestre.Produto_Custo_AdicionalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Produto_Custo_Adicional.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_CUSTO_ADICIONAL', Produto_Custo_Adicional.Transaction);
  Produto_Custo_Adicional.FieldByName('CODPRODUTO').AsString := Cadastro.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Produto_Mestre.Produto_EtapasBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Produto_Mestre.Produto_EtapasBeforePost(DataSet: TDataSet);
var
  ATempoMinutos: Integer;
begin
  inherited;
  ATempoMinutos := Produto_Etapas.FieldByName('TEMPO_MINUTOS').AsInteger;
  if ATempoMinutos >= 1440 then
    Produto_Etapas.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos/1440) + ' Dia(s)'
  else
  if Produto_Etapas.FieldByName('TEMPO_MINUTOS').AsInteger >= 60 then
    Produto_Etapas.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos/60) + ' Hora(s)'
  else
    Produto_Etapas.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos) + ' Minuto(s)'

end;

procedure TFrame_Produto_Mestre.Produto_Baixa_AutomaticaBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Produto_Mestre.Produto_Centro_TrabalhoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Produto_Centro_Trabalho.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_CENTRO_TRABALHO', TransaFD);
  Produto_Centro_Trabalho.FieldByName('CODPRODUTO').AsString := Cadastro.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Produto_Mestre.Produto_Centro_TrabalhoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PreRequisitoCentroTrabalho.Open;
end;

procedure TFrame_Produto_Mestre.Produto_Centro_TrabalhoBeforeClose(DataSet: TDataSet);
begin
  inherited;
  PreRequisitoCentroTrabalho.Close;
end;

procedure TFrame_Produto_Mestre.Produto_PrecoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Produto_Preco.FieldByName('CODIGO').AsInteger    := GetProximoCodigo('PRODUTO_PRECO', TransaFD);
  Produto_Preco.FieldByName('CODPRODUTO').AsString := Cadastro.FieldByName('CODIGO').AsString;
end;

procedure TFrame_Produto_Mestre.Produto_TipoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Tipo.DisableControls;
  Produto_Tipo.Last;
  Produto_Tipo.First;
  Produto_Tipo.EnableControls;
end;

procedure TFrame_Produto_Mestre.Produto_TipoBeforeOpen(DataSet: TDataSet);
var
  ASqlFiltro : string;
begin
  inherited;
  LimpaSQLWhere(Produto_Tipo);
  ASqlFiltro := GetSQLPermissaoTipo('PRODUTO_TIPO_NEGAR_USUARIO');  //TODO: Transformar em TConfig e fazer a migração
  if ASqlFiltro <> '' then
    Produto_Tipo.SQL.Add(' where not (CODIGO in (' + ASqlFiltro + ')) or (CODIGO = 1)');
    //O código 1 deve sempre ser exibido, senão fica impossível cadastrar um produto novo, o sistema coloca 1 no codigo
//  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

{$ENDREGION}

{$REGION 'SEÇÃO 7: Fotos são Pesadas quero separar as funções /////////////////////////////////////////////////////////'}
  ///   SEÇÃO 7: Fotos são Pesadas quero separar as funções ////////////////////////////////////////////////////////////

procedure TFrame_Produto_Mestre.RetornaImagem(const Picture: TPicture; ACodProduto : String );
begin
  try
    if Not Cadastro.Active then
      Exit;
    if ACodProduto = Cadastro.FieldByName('CODIGO').AsString then
      imgProduto.Picture.Assign(Picture);
  except end;
end;

procedure TFrame_Produto_Mestre.TimerFotosTimer(Sender: TObject);
begin
  inherited;
  try
    with TCarregaImagem.Create do
    begin
      Familia  := Cadastro.FieldByName('CODFAMILIA').AsString;
      Codigo   := Cadastro.FieldByName('CODIGO').AsString;
      Caminho  := GetCaminhoGED_Produto_Miniatura(Cadastro.FieldByName('CODIGO').AsString);
      Callback := RetornaImagem;
      FreeOnTerminate := True;
      Start;
    end;
  finally
    TimerFotos.Enabled := False;
  end;
end;

procedure TFrame_Produto_Mestre.TimerViewFotosTimer(Sender: TObject);
begin
  inherited;
  TimerViewFotos.Enabled := False;
//  AtualizaViewFotos;
end;

procedure TFrame_Produto_Mestre.imgProdutoPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
begin
  inherited;
  SalvaFotosProduto(Picture,Cadastro.FieldByName('CODIGO').asString);
end;

{$ENDREGION}

{$REGION 'SEÇÃO 8: CLICK Isso pode por que executa 1 unica vez ////////////////////////////////////////////////////////'}
  ///   SEÇÃO 8: CLICK Isso pode por que executa 1 unica vez

procedure TFrame_Produto_Mestre.Action_BtnCustosExecute(Sender: TObject);
begin
  inherited;
  TabCustos.MakeVisible;
end;

procedure TFrame_Produto_Mestre.Action_PrecoEspecialExecute(Sender: TObject);
begin
  inherited;
  TabPrecoEspecial.MakeVisible;//TabCentroCusto.MakeVisible;//
end;

procedure TFrame_Produto_Mestre.Action_TabelaDePrecoExecute(Sender: TObject);
begin
  inherited;
  TabTabelaPreco.MakeVisible;
end;

procedure TFrame_Produto_Mestre.btnAdicionarEstoqueClick(Sender: TObject);
var
  QuerX: TFDQuery;
  AQuant: Double;
  AMotivo, AJustificativa: string;
  ACodUsuarioAutorizacao, ACodProduto_Movimento: Integer;
begin
  inherited;
  //Botão Alterar Estoque
  VerificaSePodeAlteraDataSet; // Verifica se pode?
  if (Cadastro.State = dsInsert) or (Cadastro.FieldByName('CODIGO').AsString = '') then
  begin
    ShowMessage('É Necessario ter o Produto Cadastrado para inserir o estoque, Clique em Confirmar.');
    Exit;
  end;
  edtObservacaoEstoque.Clear;
  ComboLocaisEstoque.Clear;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select DESCRICAO from PRODUTO_ESTOQUE_LOCAL';
    QuerX.Open;
    ComboLocaisEstoque.Properties.Items.Clear;
    while not QuerX.Eof do
    begin
      ComboLocaisEstoque.Properties.Items.Add(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  if Cadastro.FieldByName('TEM_LOTE').AsString <> 'S' then
  begin
    dxLayoutItem36.Visible := False;
    dxLayoutItem35.Visible := False;
    EdtLoteÎProduto_Lote.Text := '0';
  end else
  begin
    dxLayoutItem36.Visible := True;
    dxLayoutItem35.Visible := True;
    EdtLoteÎProduto_Lote.Text := '';
  end;
  ComboLocaisEstoque.Text := 'PRINCIPAL';
  EdtLocalEstoqueQuant.Value := 0;
  if ShowPanelForm(PnlLocalEstoque, bsSingle, EdtLocalEstoqueQuant) = mrOk then
  begin
    if EdtLocalEstoqueQuant.Value = 0 then
      Exit;

  {  if not UsuarioSenha(True, True, ACodUsuarioAutorizacao, AJustificativa) then
      Exit;   }

    //Verifica o Lote
    if (Cadastro.FieldByName('TEM_LOTE').AsString = 'S') and ((EdtLoteÎProduto_Lote.Text = '') or (EdtLoteÎProduto_Lote.Text = '0')) then
    begin
      ShowMessage('Produto Movido a Lote, Favor Colocar Numero de Lote');
      Exit;
    end;

    //Verifica se é uma entrada ou saída
    if CbEntradaSaida.Text = 'S' then
      AQuant := -EdtLocalEstoqueQuant.Value
    else
      AQuant := EdtLocalEstoqueQuant.Value;

    //Registra a atividade
    AMotivo := 'Efetuou a ';
    if AQuant > 0 then
      AMotivo := AMotivo + 'entrada'
    else
      AMotivo := AMotivo + 'saída';
    AMotivo := AMotivo + ' de ' + FormatFloat(DECIMAL_8, AQuant) + ' no estoque pelo Cadastro de Produto';
    if (ACodUsuarioAutorizacao <> 0) and (ACodUsuarioAutorizacao <> Usuario.Codigo) then
    begin
      AMotivo := AMotivo + ' autorizado pelo usuário ' + Procura('USUARIO', 'USUARIO', ACodUsuarioAutorizacao);
      if AJustificativa <> '' then
        AMotivo := AMotivo + ': ' + AJustificativa;
    end;
    AMotivo := AMotivo + '.';

//    UCHist_Cadastro.HistoricoSecundarioFormOrigem(Cadastro, AMotivo, Self.ClassName, Cadastro.FieldByName('CODIGO').AsString, ACodUsuarioAutorizacao);

    //Efetua o movimento do estoque
    MovimentaEstoque(Cadastro.Transaction, Cadastro.FieldByName('CODIGO').AsString, Empresa.FieldByName('CODIGO').AsString, ComboLocaisEstoque.Text,
      '', DataHoraSys, 'Modificação Realizada na Tela de Cadastro de Produto: ' + edtObservacaoEstoque.Text, AQuant, StrToInt(EdtLoteÎProduto_Lote.Text),
      Usuario.Codigo, '', '', Cadastro.FieldByName('VALOR_COMPRA').AsFloat, Cadastro.FieldByName('CALC_VVENDA_CUSTO').AsFloat, Cadastro.FieldByName('VALOR').AsFloat, 'FrmProduto', 'Manual', 'Ajuste Manual', ACodProduto_Movimento);
    CloseOpenBookmark(Estoque_Produto);
    FechaPanelForm(PnlLocalEstoque);
  end;
end;

procedure TFrame_Produto_Mestre.btnVisualizaEstoqueClick(Sender: TObject);
begin
  inherited;
  Mostrar(DBGrid1);
  DBGrid1.SetFocusWR;
  QuerEmpresa.Open;
  DBGrid1.Columns.Clear;
  DBGrid1.Columns[1].Title.Caption; // FANTASIA
  DBGrid1.Columns[1].Width := 200;
  DBGrid1.Columns[2].Visible := False; //CODPRODUTO
  DBGrid1.Columns[3].Visible := False; //CODEMPRESA
  DBGrid1.Columns[4].Title.Caption := 'ESTOQUE TOTAL'; //ESTOQUE
  DBGrid1.Columns[5].Title.Caption; //PRINCIPAL
  DBGrid1.Columns[6].Visible := False; //DT_ALTERACAO
  DBGrid1.Columns[7].Title.Caption; //PRODUCAO


end;

procedure TFrame_Produto_Mestre.AtualizarCustos1Click(Sender: TObject);
Var
  AFrmAguarde : TFrmAguarde;
  QuerProduto : TFDQuery;
begin
  inherited;    // Pisca pisca, Sem erros kkk arumar
  if ShowMessageWR('Deseja atualizar os custos de todos os produtos?', MB_ICONQUESTION) <> mrYes then
    Exit;

  if Cadastro.State in dsEditModes then
  begin
    ShowMessageWR('Confirme ou cancele as alterações deste produto para continuar');
    Exit;
  end;
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Recalculando produtos...';

    QuerProduto := GeraFDQuery;
    QuerProduto.SQL.Text := 'select P.CODIGO from PRODUTO P ';

    // Usar BlockReadSize se funcionar
    Cadastro.BlockReadSize:=10;
    QuerProduto.Open;
    QuerProduto.FetchAll;
    AFrmAguarde.ProgressoMaximo := QuerProduto.RecordCount;
    Cadastro.MasterSource:= nil;
    Cadastro.BeforeOpen:= nil;
    while not QuerProduto.Eof do
    begin
      Cadastro.Close;
      Cadastro.Params[0].AsString := QuerProduto.FieldByName('CODIGO').AsString;
      Cadastro.Open;
      Cadastro.Edit;
      WRCalc.CalcBuild;
      WRCalc.SprCopiarFormula;
      Cadastro.Post;
      AFrmAguarde.AvancarProgresso;
      QuerProduto.Next;
    end;
    Cadastro.BeforeOpen:=CadastroBeforeOpen;
    if Assigned(FConsulta) then
      Cadastro.MasterSource:=TConsuM(FConsulta).DS;
  finally
    AFrmAguarde.Free;
    Cadastro.BlockReadSize:=0;
  end;
  Cadastro.Close;
  Cadastro.Open;
  ShowMessageWR('Concluído');
end;

procedure TFrame_Produto_Mestre.Consultarcadastrosprontos1Click(Sender: TObject);
begin
  inherited;
  if (FConsultaBig = nil) then
    FConsultaBig := TFrmConsultaProdutosBigData.Create(Self);
  FConsultaBig.InicializaModoPesquisa;
  if (not FConsultaBig.Visible) then
    FConsultaBig.Show;
  SetWindowPos(FConsultaBig.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  Application.ProcessMessages;
  if not edtDescricao.Focused then
  begin
    edtDescricao.SetFocusWR;
    edtDescricao.Perform(WM_KEYDOWN, VK_END, 0);
  end;
  Application.ProcessMessages;
  FConsultaBig.Pesquisar(edtDescricao.Text);
end;

procedure TFrame_Produto_Mestre.btnAdicionaCentroTrabalhoClick(Sender: TObject);
var
  ACod: Integer;
begin
  inherited;
  ACod := StrToIntDef(EdtCentro_TrabalhoÎCentro_Trabalho.Text, 0);
  if ACod = 0 then
  begin
    ShowMessageWR('Digite o código do Centro de Trabalho');
    EdtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
    Exit;
  end;
  if (ACod <> 0) and (LblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO.Caption = '') then
  begin
    ShowMessageWR('Item não cadastrado');
    EdtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  Produto_Centro_Trabalho.DisableControls;
  try
    try
      Produto_Centro_Trabalho.Insert;
      Produto_Centro_Trabalho.FieldByName('CODCENTRO_TRABALHO').AsInteger := ACod;
      Produto_Centro_Trabalho.FieldByName('DESCRICAO').AsString           := edtCentroTrabalhoDescricao.Text;
      Produto_Centro_Trabalho.FieldByName('TEMPO').AsFloat                := edtTempoEstimado.Time;

      Cadastro.FieldByname('TEMPO').AsFloat := Cadastro.FieldByname('TEMPO').AsFloat + Produto_Centro_Trabalho.FieldByName('TEMPO').AsFloat;

      Produto_Centro_Trabalho.FieldByName('CODPRODUTO_CT_PRE_REQUISITO').AsVariant := cbxCentroTrabalhoPreRequisito.EditValue;
      Produto_Centro_Trabalho.Post;
    except
      Produto_Centro_Trabalho.Cancel;
      raise;
    end;

    cbxCentroTrabalhoPreRequisito.EditValue := Null;
    Produto_Centro_Trabalho.Close;
    Produto_Centro_Trabalho.Open;
    EdtCentro_TrabalhoÎCentro_Trabalho.Clear;
    edtTempoEstimado.Time := 1;
    EdtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
  finally
    Produto_Centro_Trabalho.EnableControls;
  end;
  EdtCentroTrabalhoDescricao.Clear;
  EdtCentro_TrabalhoÎCentro_Trabalho.SetFocus;
end;

procedure TFrame_Produto_Mestre.btnRemoveCentroTrabalhoClick(Sender: TObject);
begin
  inherited;
  if Produto_Centro_Trabalho.IsEmpty then
    Exit;

  VerificaSePodeAlteraDataSet;   //TODO: Revisar entrar em edição
  try
    Produto_Centro_Trabalho.Delete;
  except
    on E:Exception do
    begin
      if ContainsText(E.Message, 'Foreign') then
        ShowMessageWR('Esta etapa do fluxo não pode ser removida pois é pré requisito para outra etapa.')
      else
        raise;
    end;
  end;
end;

procedure TFrame_Produto_Mestre.btnExcluirClick(Sender: TdxTileControlItem);
var
  QuerX: TFDQuery;
begin
  if not Cadastro.IsEmpty and (ShowMessageWR('Deseja excluir este Produto?', MB_ICONQUESTION) = mrYes) then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select first 1 1 from NF_ENTRADA_PRODUTOS where (CODPRODUTO = :Cod)';
      QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessage('Não é possível excluir este Produto.' + sLineBreak +
                    'Esse Produto já foi usado na Nota fiscal de entrada.');
        edtDescricao.SetFocusWR;
        Exit;
      end;
      QuerX.Close;
      QuerX.SQL.Text := 'select CODPRODUTO from PRODUTO_MOVIMENTO where (CODPRODUTO = ' + QuotedStr(edtCodigo.Text) + ')';
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessage('Não é possível excluir este Produto.' + sLineBreak +
                    'Esse Produto já foi usado no Movimento de estoque.');
        edtDescricao.SetFocusWR;
        Exit;
      end;
      QuerX.Close;
      QuerX.SQL.Text := 'select first 1 1 from VENDA V ' +
                        'left join VENDA_PRODUTO VP on V.CODIGO = VP.CODVENDA ' +
                        'where (VP.CODPRODUTO = :CODPRODUTO)' +
                        '  and (V.STATUS like ''ATIVO%'')';
      QuerX.ParamByName('CODPRODUTO').AsString := QuotedStr(edtCodigo.Text);
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessage('Não é possível excluir este Produto.' + sLineBreak +
                    'Esse Produto já foi usado na emissão de Venda/OS.');
        edtDescricao.SetFocusWR;
        Exit;
      end;
      if Motos then
      begin
        QuerX.Close;
        QuerX.SQL.Text := 'DELETE FROM VEICULOS WHERE (CODPRODUTO = ' + QuotedStr(Cadastro.FieldByName('Codigo').AsString) + ')';
        QuerX.ExecSQL;
      end;
      QuerX.Close;
      //QuerX.SQL.Text := 'DELETE FROM PRODUTO_COMPOSICAO WHERE (CODPRODUTO_COMPOSICAO = ' + QuotedStr(Produto.FieldByName('Codigo').AsString) + ')';
      //QuerX.ExecSQL;
      //QuerX.SQL.Text := 'DELETE FROM PRODUTO_ESTOQUE WHERE (CODPRODUTO = ' + QuotedStr(Produto.FieldByName('Codigo').AsString) + ')';
      //QuerX.ExecSQL;
      QuerX.SQL.Text := 'update PRODUTO P set P.ATIVO = :ATIVO where P.CODIGO = :CODPRODUTO';
      QuerX.ParamByName('CODPRODUTO').AsString := Cadastro.FieldByName('Codigo').AsString;
      QuerX.ParamByName('ATIVO').AsString      := 'N';
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
//    Produto.Delete;
//    Codigo := Cadastro.FieldByName('CODIGO').AsString;   // Isso aqui não funciona no evento de abrir conecta na Consulta
    TransaFD.Commit;
    Cadastro.Close;
    Cadastro.Open;  // Conecta na consulta
    tcCadastro.Controller.FocusedItem:= btnNovo;
  end;
end;

procedure TFrame_Produto_Mestre.BtnMenuClick(Sender: TObject);
begin
  inherited;
  PopUpMenu1.PopupOnMouse;
end;

procedure TFrame_Produto_Mestre.btnNavegacaoAnteriorClick(Sender: TdxTileControlItem);
begin
  inherited;
  WRCalc.CalcBuild;
end;

procedure TFrame_Produto_Mestre.btnNavegacaoProximoClick(Sender: TdxTileControlItem);
begin
  inherited;
  WRCalc.CalcBuild;
end;

procedure TFrame_Produto_Mestre.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  DataSource1.DataSet:= WRCalc.DBProdutoMemoria;
//  WREventosCadastro.Regra_ValorInicial(Cadastro, 'PRODUTO');    // Isso não deveria estar aqui, testar e remover
//  Cadastro.DataSource:=nil;
//  TabComposicao.Visible:=False;
//  WRCalc.SprFechaMemTables;
//  WRCalc.CalcBuild;
//  WRCalc.DBProdutoMemoria.Filtered:= False;
//  WRCalc.DBProdutoMemoria.Filter:= '(CODIGO = ' + QuotedStr(Ds.DataSet.FieldByName('CODIGO').AsString) + ') ';
//  WRCalc.DBProdutoMemoria.Filtered:= True;

  WRCalc.CalcBuild;
end;

procedure TFrame_Produto_Mestre.btnGerarCodigoBarrasClick(Sender: TObject);
begin
  inherited;
  EdtCodigoBarras.Text := Cadastro.FieldByName('CODIGOEAN').AsString;
  ShowPanelForm(PnlCodigoBarras, bsSingle, EdtCodigoBarras);
end;

procedure TFrame_Produto_Mestre.BtnAjusteFamiliaAplicarClick(Sender: TObject);
var
  AReajuste: Double;
  ACodProduto: string;
begin
  ShowMessageWR('Função desativada. Solicite reativar a mesma.');
  Exit;
  if btnConfirmar.Enabled or (edtDescricao.Text = '') then
  begin
    ShowMessageWR('O produto está em edição ou é inválido.');
    Exit;
  end;
  if (not ChkAjusteFamiliaCustoLoja.Checked) and (not ChkAjusteFamiliaVarejo.Checked) then
  begin
    ShowMessageWR('Escolha um campo a ter o valor reajustado.');
    Exit;
  end;
  {
  ACodProduto := ProdutoCODIGO.AsString;
  AReajuste   := EdtAjusteFamiliaReajuste.Value;
  if AReajuste <> 0.0 then
  begin
    AReajuste := 1 + (AReajuste / 100);
    Produto_Grade.DisableControls;
    try
      Produto_Grade.First;
      while not Produto_Grade.Eof do
      begin
        //Produto_Grade.Edit;
        AlteraDataSet(Produto_Grade);
        if ChkAjusteFamiliaCustoLoja.Checked then
          Produto_Grade.FieldByName('CUSTO_VENDA').AsFloat := RoundTo(Produto_Grade.FieldByName('CUSTO_VENDA').AsFloat * AReajuste, -2);
        if ChkAjusteFamiliaVarejo.Checked then
          Produto_Grade.FieldByName('VALOR').AsFloat := RoundTo(Produto_Grade.FieldByName('VALOR').AsFloat * AReajuste, -2);
        Produto_Grade.FieldByName('MARGEM').AsFloat := RoundTo(((Produto_Grade.FieldByName('VALOR').AsFloat / Produto_Grade.FieldByName('CUSTO_LOJA').AsFloat) - 1) * 100, -5);
        Produto_Grade.Post;
        Produto_Grade.Next;
      end;
    finally
      Produto_Grade.EnableControls;
    end;
    AbrirRegistro(ACodProduto);
//      Produto.Locate('CODIGO', ACodProduto, []);
    BtnAjusteFamiliaCancelar.Click;
  end else
    ShowMessageWR('Erro ao converter o reajuste ou taxa é zero.');        }
end;

procedure TFrame_Produto_Mestre.BtnAjusteFamiliaCancelarClick(Sender: TObject);
begin
  EdtAjusteFamiliaReajuste.Value := 0.0;
  FechaPanelForm(PnlAplicarAjusteValorNaFamilia);
end;

procedure TFrame_Produto_Mestre.cxButton1Click(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('CODIGOEAN').AsString := EdtCodigoBarras.Text;
  if Length(Cadastro.FieldByName('CODIGOEAN').AsString) = 12 then
    Cadastro.FieldByName('CODIGOEAN').AsString := Cadastro.FieldByName('CODIGOEAN').AsString + LabelDigito.Caption;
  FechaPanelForm(PnlCodigoBarras);
end;

procedure TFrame_Produto_Mestre.cxButton2Click(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlCodigoBarras);
end;

procedure TFrame_Produto_Mestre.cxButton3Click(Sender: TObject);
var
  ACodSemDigito: string;
begin
  inherited;
  if ShowMessageWR('Deseja gerar um novo Código de Barras para esse produto?', MB_ICONQUESTION) = mrYes then
  begin
    ACodSemDigito := OnlyNumberWR(LeftStr(TConfig.ReadString('CODBARRAS'), 12));
    if Trim(ACodSemDigito) = '' then
      ACodSemDigito := '780000000000';
    EdtCodigoBarras.Text := ACodSemDigito + DigitoCodBarras(ACodSemDigito);
    TConfig.SaveString('CODBARRAS', FloatToStr(StrToFloatDef(ACodSemDigito, 780000000000) + 1));
  end;
end;

procedure TFrame_Produto_Mestre.GridListComposicaoCODLOCALPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if (Cadastro.State in [dsEdit, dsInsert]) or btnAlterar.Enabled then
  begin
    VerificaSePodeAlteraDataSet;
    VerificaSePodeAlteraDataSet(Produto_Composicao);
    Produto_Composicao.FieldByName('CODLOCAL').AsString := ConsultaModalFiltro(TConsuLocal, '');
    Produto_Composicao.FieldByName('LOCAL').AsString    := Procura('DESCRICAO', 'LOCAL', Produto_Composicao.FieldByName('CODLOCAL').AsString);
  end;
end;

procedure TFrame_Produto_Mestre.Alterarocdigodoproduto1Click(Sender: TObject);
begin
  inherited;
  dbtxtCodigoEnter(Self);
end;

procedure TFrame_Produto_Mestre.MnuAplicarAjusteValorFamliaClick(Sender: TObject);
begin
  EdtAjusteFamiliaCustoLojaAtual.Value     := edtCusto.Value;
  EdtAjusteFamiliaCustoLojaCalculado.Value := edtCusto.Value;
  EdtAjusteFamiliaVarejoAtual.Value        := ds.DataSet.FieldByName('Valor').AsFloat;
  EdtAjusteFamiliaVarejoCalculado.Value    := ds.DataSet.FieldByName('Valor').AsFloat;
  ShowPanelForm(PnlAplicarAjusteValorNaFamilia, bsSingle, EdtAjusteFamiliaReajuste);
end;

function TFrame_Produto_Mestre.BuscaCodigoTipoPelaClassificacao(ATipo: string): integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT PT.CODIGO FROM PRODUTO_TIPO PT WHERE PT.CLASSIFICACAO = :Descricao' +
                      ' AND PT.ATIVO = ''S''';
    QuerX.ParamByName('Descricao').AsString := ATipo;
    QuerX.Open;

    Result := QuerX.FieldByName('CODIGO').AsInteger;
  finally
    QuerX.Free;
  end;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 9: EXIT Isso pode por que executa 1 unica vez /////////////////////////////////////////////////////////'}
  ///   SEÇÃO 9: EXIT Isso pode por que executa 1 unica vez

procedure TFrame_Produto_Mestre.EdtQuantTotalPropertiesChange(Sender: TObject);
begin
  inherited;
  LiQuantidadeTotal.Visible  := (Cadastro.FieldByName('QUANT').AsFloat <> 1)and(Cadastro.FieldByName('QUANT').AsFloat <> 0);
end;

procedure TFrame_Produto_Mestre.PnlAlterarCodProdutoExit(Sender: TObject);
begin
  inherited;
  Ocultar(PnlAlterarCodProduto);
end;

procedure TFrame_Produto_Mestre.edtCalc_Qpeso_LiquidoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('CALC_QPESO_LIQUIDO', DisplayValue);
end;

procedure TFrame_Produto_Mestre.edtCodFabricaExit(Sender: TObject);
begin
  inherited;
  //Aqui jaz uma rotina que verificava duplicidade no codigo de fabr. OBS: tem uma uniq querendo fazer isso.
end;

procedure TFrame_Produto_Mestre.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  QuerEmpresa.Close;
  Ocultar(DBGrid1);
end;

procedure TFrame_Produto_Mestre.edtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarMargem(DisplayValue);
end;

procedure TFrame_Produto_Mestre.edtNCMÎNF_NCMPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  PreencheLookupNF_CEST(cbxNF_CEST.Properties,edtNCMÎNF_NCM.Text);
end;

{$ENDREGION}

{$REGION 'SEÇÃO 9: KeyDown e MouseDown Pode causar problema se colocar SQL ////////////////////////////////////////////'}
  ///   SEÇÃO 9: KeyDown e MouseDown Pode causar problema se colocar SQL

procedure TFrame_Produto_Mestre.cbxIATKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN] then
    Key := 0;
  inherited;
end;

procedure TFrame_Produto_Mestre.cbxIPPTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN] then
    Key := 0;
  inherited;
end;

procedure TFrame_Produto_Mestre.chkPode_Alterar_EstoquePropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoTopEstoque.Visible := (Cadastro.FieldByName('PODE_ALTERAR_ESTOQUE').AsString = 'S');
end;

{$ENDREGION}

{$REGION 'SEÇÃO 10: Validate, CellText , GetContentStyle, GetCellHint, UpdateEdit, DrawCell , GetDisplayText///////////'}

  // Evento vinculado CUSTO_FABR, MARGEM, VALOR, CUSTO  Tambem esta no Componente edtTabelaVarejo na tabela de preço
  // TOTAL, QUANT não precisa pois isso nunca deve estar aparecendo no cadastro Campos visivel = False (facilita explicar para o cliente)

procedure TFrame_Produto_Mestre.GridListComposicaoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  inherited;
  Accept := True; //IsHitAtNode(TcxDBTreeList(Sender), X, Y);
end;

procedure TFrame_Produto_Mestre.GridPrecosDBTableView2Column1GetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if TipoTabelaPrecoStrToEnum(VarToStrDef(ARecord.Values[GridPrecosDBTableView2TIPO.Index], '')) = ttpAcimaDe then
    AText := '';
end;

procedure TFrame_Produto_Mestre.GridComposicaoDBTableView2VALORGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  AHintText := GetValorHintComposicaoDiferenca(ARecord, Cadastro);
  AHintTextRect.Offset(0, 25);
end;

procedure TFrame_Produto_Mestre.GridComposicaoDBTableView2CUSTO_VENDAGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  if IsCustoComposicaoDiferente(ARecord) then
  begin
    AHintTextRect.Offset(0, 25);
    AHintText := 'O custo deste produto está diferente do cadastro. Você precisa atualizar os custos/valores';
  end;
end;

{$ENDREGION}

initialization
  RegisterClass(TFrame_Produto_Mestre);

end.
