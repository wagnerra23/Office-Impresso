unit Frame_CadProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxScreenTip, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf, FireDAC.Comp.Client, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, cxDBLabel, cxLabel, cxTextEdit, cxDBEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, Vcl.StdCtrls, cxButtons, Vcl.Imaging.pngimage, dxLayoutControl, dxStatusBar, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, FireDAC.Comp.DataSet, cxCurrencyEdit,
  cxButtonEdit, cxCalendar, cxMemo, FireDAC.Stan.Async, FireDAC.DApt, dxGDIPlusClasses, Vcl.DBCtrls,
  frFrameAnexosProducao, UCHistDataset, cxImage, UnitFuncoes, cxTimeEdit, cxSpinEdit, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxTrackBar, cxDBTrackBar, frxClass, frxDBSet,
  uOpenFolderDialog, Generics.Collections, cxImageList, wrConversao, uWRCalculaConfiguracoes, DataModule, CadM, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxImageComboBox, dxUIAdorners, fs_iinterpreter,
  dxTokenEdit, dxDBTokenEdit, dxRatingControl, uWRFormataCamposDataSet, cxCustomListBox, cxCheckListBox,
  cxDBCheckListBox, cxListBox, cxDBExtLookupComboBox, Vcl.Buttons, wrFuncoes_Office, CadProduto_Wizard,
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, dxSpreadSheet, cxBlobEdit,
  dxRangeTrackBar,   System.Generics.Collections, dxCoreGraphics,
  dxDBRatingControl, cxDateProfileButton, Excel, WRButtonsEditAdd, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Frame_Cad, dxCustomTileControl, dxTileControl, Frame_Cad_Pocket, Frame_CadRequisicao_Pocket;

type
  TFrame_Cad_Producao = class(TFrmCad_Frame_Pocket)
    edtCodProdutoÎPRODUTOÎDESCRICAO: TcxDBTextEdit;
    GrupoTabs: TdxLayoutGroup;
    TabInformacoes: TdxLayoutGroup;
    liedtCodProdutoÎPRODUTOÎDESCRICAO: TdxLayoutItem;
    TabCoisas: TdxLayoutGroup;
    edtQTDADePecas: TcxDBCurrencyEdit;
    liedtQTDADePecas: TdxLayoutItem;
    liedtLarg: TdxLayoutItem;
    edtLarg: TcxDBCurrencyEdit;
    liedtComp: TdxLayoutItem;
    edtComp: TcxDBCurrencyEdit;
    liedtEspessura: TdxLayoutItem;
    edtEspessura: TcxDBCurrencyEdit;
    liedtQuant: TdxLayoutItem;
    edtQuantProduzir: TcxDBCurrencyEdit;
    edtCodProdutoÎPRODUTOÎUNIDADE: TcxDBTextEdit;
    liedtCodProdutoÎPRODUTOÎUNIDADE: TdxLayoutItem;
    GrupoProducao: TdxLayoutGroup;
    edtDT_Prazo_Final: TcxDBDateEdit;
    liedtDT_Prazo_Final: TdxLayoutItem;
    liedtDT_Inicio: TdxLayoutItem;
    edtDT_Inicio: TcxDBDateEdit;
    DS_CentroTrabalho: TDataSource;
    DS_Composicao: TDataSource;
    dxLayoutGroup8: TdxLayoutGroup;
    TabAnexos: TdxLayoutItem;
    PnlFrameAnexos: TPanel;
    libtnFinalizaOS: TdxLayoutItem;
    btnFinalizaOS: TcxButton;
    imgImagem: TcxDBImage;
    LiimgImagem: TdxLayoutItem;
    lilblNumeroVenda: TdxLayoutItem;
    lblNumeroVenda: TcxDBLabel;
    liedtDT_Fim: TdxLayoutItem;
    edtDT_Fim: TcxDBDateEdit;
    edtTempoRegistrado: TcxTextEdit;
    liedtTempoRegistrado: TdxLayoutItem;
    lblRecursoDescricao: TcxLabel;
    DSProducao_OS_Recurso: TDataSource;
    ActionList1: TActionList;
    ActLiberarOS: TAction;
    GrupoTempos: TdxLayoutGroup;
    GrupoProduto: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    liedtTempoReal: TdxLayoutItem;
    edtTempoReal: TcxDBButtonEdit;
    chkReverso: TcxDBCheckBox;
    lichkReverso: TdxLayoutItem;
    lichkCom_Logo: TdxLayoutItem;
    chkCom_Logo: TcxDBCheckBox;
    dxLayoutGroup10: TdxLayoutGroup;
    edtCodProdutoÎPRODUTO: TcxDBButtonEdit;
    liedtCodProdutoÎPRODUTO: TdxLayoutItem;
    tbrPConclusao: TcxDBTrackBar;
    litbrPConclusao: TdxLayoutItem;
    frxProducao_OS: TfrxDBDataset;
    frxProducao_Composicao: TfrxDBDataset;
    frxProducao_OS_Recurso: TfrxDBDataset;
    frxProducao_Centro_Trabalho: TfrxDBDataset;
    edtPATH: TcxDBButtonEdit;
    liedtPATH: TdxLayoutItem;
    lblTempoTotalOPDisplay: TcxDBLabel;
    lilblTempoTotalOPDisplay: TdxLayoutItem;
    MenuComposicao: TPopupMenu;
    ActDesvincularMaterial: TAction;
    ActVincularMaterial: TAction;
    ActVincularMaterial1: TMenuItem;
    DesvincularMaterialdestaOS1: TMenuItem;
    DSProducao_OS_Calc: TDataSource;
    cxImageList1: TcxImageList;
    WRCalc: TWRCalculaConfiguracoes;
    CadastroCodTabela: TStringField;
    Producao_Centro_Trabalho: TFDQuery;
    Producao_Produto: TFDQuery;
    Producao_OS_Recurso: TFDQuery;
    Producao_OS_Tempo: TFDQuery;
    Producao_OS_Calc: TFDQuery;
    TreeListComposicao: TcxDBTreeList;
    dxLayoutItem8: TdxLayoutItem;
    cxDBTreeList1CODIGO: TcxDBTreeListColumn;
    cxDBTreeList1CODPRODUCAO: TcxDBTreeListColumn;
    cxDBTreeList1CODPRODUCAO_OS: TcxDBTreeListColumn;
    cxDBTreeList1CODVENDA: TcxDBTreeListColumn;
    cxDBTreeList1CODPRODUTO: TcxDBTreeListColumn;
    cxDBTreeList1DESCRICAO: TcxDBTreeListColumn;
    cxDBTreeList1QUANT: TcxDBTreeListColumn;
    cxDBTreeList1COMP: TcxDBTreeListColumn;
    cxDBTreeList1LARG: TcxDBTreeListColumn;
    cxDBTreeList1ESPESSURA: TcxDBTreeListColumn;
    cxDBTreeList1QTDADEPECA: TcxDBTreeListColumn;
    cxDBTreeList1MEDIDAS: TcxDBTreeListColumn;
    cxDBTreeList1ATIVO: TcxDBTreeListColumn;
    cxDBTreeList1DT_ALTERACAO: TcxDBTreeListColumn;
    cxDBTreeList1UNIDADE: TcxDBTreeListColumn;
    cxDBTreeList1CUSTO_VENDA: TcxDBTreeListColumn;
    cxDBTreeList1VALOR: TcxDBTreeListColumn;
    PmPrincipal: TwrProdutoMemoria;
    cbxSituacao: TcxDBLookupComboBox;
    licbxSituacao: TdxLayoutItem;
    tokProducao_Marcador: TdxDBTokenEdit;
    litokProducao_Marcador: TdxLayoutItem;
    litokUsuarios: TdxLayoutItem;
    tokUsuarios: TdxDBTokenEdit;
    cssSituacao: TcxDBLookupComboBox;
    licssSituacao: TdxLayoutItem;
    GrupoAssunto: TdxLayoutGroup;
    liedtCodPessoasÎPESSOAS: TdxLayoutItem;
    edtCodPessoasÎPESSOAS: TcxDBButtonEdit;
    Cliente: TdxLayoutGroup;
    rtcCodPessoasÎPESSOASÎESTRELA: TdxRatingControl;
    lirtcCodPessoasÎPESSOASÎESTRELA: TdxLayoutItem;
    lirctCodProdutoÎPRODUTOÎESTRELA: TdxLayoutItem;
    rctCodProdutoÎPRODUTOÎESTRELA: TdxRatingControl;
    liedtTempo_Estimado: TdxLayoutItem;
    edtTempo_Estimado: TcxDBButtonEdit;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    pnlEstoque: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    EdtOSEstoqueÎProducao_OS: TcxButtonEdit;
    cxButton2: TcxButton;
    LblOSEstoqueÎProducao_OSÎDESCRICAO: TcxLabel;
    EdtEstoqueQuant: TcxCurrencyEdit;
    EdtEstoquePeca: TcxCurrencyEdit;
    EdtEstoqueEspessura: TcxCurrencyEdit;
    EdtEstoqueLarg: TcxCurrencyEdit;
    EdtEstoqueComp: TcxCurrencyEdit;
    EdtEstoqueCodProduto: TcxTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    LiEdtEstoqueQuant: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    LiEdtEstoquePeca: TdxLayoutItem;
    LiEdtEstoqueEspessura: TdxLayoutItem;
    LiEdtEstoqueLarg: TdxLayoutItem;
    LiEdtEstoqueComp: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    LiEdtEstoqueCodProduto: TdxLayoutItem;
    GrupoOS: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    TreeListComposicaoDT_ESTOQUE_BAIXA: TcxDBTreeListColumn;
    TreeListComposicaoESTOQUE_BAIXADO: TcxDBTreeListColumn;
    TreeListComposicaoCODCENTRO_TRABALHO: TcxDBTreeListColumn;
    TreeListComposicaoCENTRO_TRABALHO: TcxDBTreeListColumn;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    edtObservacao: TcxDBMemo;
    liedtObservacao: TdxLayoutItem;
    QuerProducaoOSTempo: TFDQuery;
    LiedtCodPessoasÎPESSOASÎRAZAOSOCIAL: TdxLayoutItem;
    edtCodPessoasÎPESSOASÎRAZAOSOCIAL: TcxDBTextEdit;
    TreeListComposicaoTEMPO_ESTIMADO: TcxDBTreeListColumn;
    Produto: TFDQuery;
    DSProduto: TDataSource;
    BtnAdicionaTarefa: TcxButton;
    liBtnAdicionaTarefa: TdxLayoutItem;
    btnRemoverTarefa: TcxButton;
    libtnRemoverTarefa: TdxLayoutItem;
    TreeListComposicaocxTEM_PRODUCAO_FINALIZADA: TcxDBTreeListColumn;
    cxStyleRepositoryGrid: TcxStyleRepository;
    stUnreadStyle: TcxStyle;
    stDateOut: TcxStyle;
    stDateOutHighPriority: TcxStyle;
    stDeferred: TcxStyle;
    stDeferredHighPriority: TcxStyle;
    stWaiting: TcxStyle;
    stWaitingHighPriority: TcxStyle;
    stCompleted: TcxStyle;
    TreeListComposicaocxCALENDARIO_DT_INICIO: TcxDBTreeListColumn;
    licxbUsuario: TdxLayoutItem;
    cxbFuncionario: TcxDBLookupComboBox;
    dxLayoutGroup7: TdxLayoutGroup;
    GrupoProdutoQuantidade: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    GrupoAssuntoDescricao: TdxLayoutGroup;
    ransformaremProducao1: TMenuItem;
    ActTransformarEmProducao: TAction;
    Categoria: TFDQuery;
    DSCategoria: TDataSource;
    TreeListComposicaocxCATEGORIA: TcxDBTreeListColumn;
    EdtVendaÎVenda: TcxDBButtonEdit;
    liEdtVendaÎVenda: TdxLayoutItem;
    cxbCentroTrabalho: TcxDBImageComboBox;
    licxbCentroTrabalho: TdxLayoutItem;
    libtnAgendarProduçao: TdxLayoutItem;
    btnAgendarProduçao: TcxButton;
    Producao_Usuario: TFDQuery;
    edtTempo: TcxDBButtonEdit;
    dxLayoutItem10: TdxLayoutItem;
    TreeListComposicaocxCODUSUARIO: TcxDBTreeListColumn;
    dxLayoutItem11: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    PnlBaixaEstoque: TPanel;
    TreeListComposicaocxQUANT_PREVISTA: TcxDBTreeListColumn;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    DSUsuario: TDataSource;
    Usuarios: TFDQuery;
    StCanceled: TcxStyle;
    PmComposicao: TwrProdutoMemoria;
    libtnProduzir: TdxLayoutItem;
    btnProduzir: TcxButton;
    PnlProduzir: TPanel;
    lblDescricaoProduzido: TcxDBLabel;
    edtQuantProduzida: TcxCurrencyEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dxLayoutItem14: TdxLayoutItem;
    edtQuant: TcxDBCurrencyEdit;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    SprFormula: TdxSpreadSheet;
    dxLayoutGroup15: TdxLayoutGroup;
    pnlSprMemoria: TPanel;
    SprMemoria: TdxSpreadSheet;
    ProducaoEtapas: TFDQuery;
    DSProducaoEtapas: TDataSource;
    ProducaoEtapasCODIGO: TIntegerField;
    ProducaoEtapasCODPRODUCAO: TIntegerField;
    ProducaoEtapasCODCENTRO_TRABALHO: TIntegerField;
    ProducaoEtapasDESCRICAO: TStringField;
    ProducaoEtapasORDEM: TIntegerField;
    ProducaoEtapasCOLOR: TIntegerField;
    ProducaoEtapasPRIORIDADE: TIntegerField;
    ProducaoEtapasPCONCLUSAO: TIntegerField;
    ProducaoEtapasCODPRODUTO: TStringField;
    ProducaoEtapasPRODUTO: TStringField;
    ProducaoEtapasQUANT: TFloatField;
    ProducaoEtapasLARG: TFloatField;
    ProducaoEtapasCOMP: TFloatField;
    ProducaoEtapasESPESSURA: TFloatField;
    ProducaoEtapasQTDADEPECA: TFloatField;
    ProducaoEtapasUNIDADE: TStringField;
    ProducaoEtapasPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ProducaoEtapasPESSOA_FUNCIONARIO_TIPO: TStringField;
    ProducaoEtapasPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    ProducaoEtapasPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ProducaoEtapasPESSOA_RESPONSAVEL_TIPO: TStringField;
    ProducaoEtapasPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    ProducaoEtapasRAZAOSOCIAL: TStringField;
    ProducaoEtapasTEMPO_INICIO: TSQLTimeStampField;
    ProducaoEtapasTEMPO_FIM: TSQLTimeStampField;
    ProducaoEtapasDT_ALTERACAO: TSQLTimeStampField;
    ProducaoEtapasDT_EMISSAO: TSQLTimeStampField;
    ProducaoEtapasDT_FINALIZADO: TSQLTimeStampField;
    ProducaoEtapasDT_PRAZO_FINAL: TSQLTimeStampField;
    ProducaoEtapasPRE_REQUISITO_CENTRO_TRABALHO: TIntegerField;
    ProducaoEtapasOBS_PRODUCAO: TStringField;
    ProducaoEtapasSITUACAO: TStringField;
    ProducaoEtapasCALENDARIO_DT_INICIO: TSQLTimeStampField;
    ProducaoEtapasCALENDARIO_DT_FIM: TSQLTimeStampField;
    ProducaoEtapasCALENDARIO_ACTUAL_START: TIntegerField;
    ProducaoEtapasCALENDARIO_ACTUAL_FINISH: TIntegerField;
    ProducaoEtapasCALENDARIO_EVENT_TYPE: TIntegerField;
    ProducaoEtapasCALENDARIO_GROUP_ID: TIntegerField;
    ProducaoEtapasCALENDARIO_LOCATION: TStringField;
    ProducaoEtapasCALENDARIO_OPTIONS: TIntegerField;
    ProducaoEtapasCALENDARIO_PARENT_ID: TIntegerField;
    ProducaoEtapasCALENDARIO_RECURRENCE_INDEX: TIntegerField;
    ProducaoEtapasCALENDARIO_RECURRENCE_INFO: TBlobField;
    ProducaoEtapasCALENDARIO_REMINDER_DATE: TSQLTimeStampField;
    ProducaoEtapasCALENDARIO_REMINDER_MINUTES: TIntegerField;
    ProducaoEtapasCALENDARIO_REMINDER_RESOURCES: TBlobField;
    ProducaoEtapasCALENDARIO_STATE: TIntegerField;
    ProducaoEtapasCALENDARIO_TAREFA_COMPLETA: TIntegerField;
    ProducaoEtapasCALENDARIO_TASK_INDEX: TIntegerField;
    ProducaoEtapasCALENDARIO_TASK_LINKS: TBlobField;
    ProducaoEtapasCALENDARIO_TASK_STATUS: TIntegerField;
    ProducaoEtapasDURACAO_PLANEJADA: TIntegerField;
    ProducaoEtapasDURACAO: TIntegerField;
    ProducaoEtapasCODPRODUCAO_OS_PRE_REQUISITO: TIntegerField;
    ProducaoEtapasTEMPO_ESTIMADO: TFloatField;
    ProducaoEtapasTEMPO: TIntegerField;
    ProducaoEtapasCODUSUARIO: TIntegerField;
    ProducaoEtapasVALOR: TFloatField;
    ProducaoEtapasCUSTO_VENDA: TFloatField;
    ProducaoEtapasPROTOCOLO: TStringField;
    ProducaoEtapasSEQUENCIA_PROTOCOLO: TIntegerField;
    ProducaoEtapasCODVENDA: TStringField;
    ProducaoEtapasCODVENDA_PRODUTO: TIntegerField;
    ProducaoEtapasTOKEN_USUARIO: TStringField;
    ProducaoEtapasTOKEN_PRODUCAO_MARCADOR: TStringField;
    ProducaoEtapasIMAGEM: TBlobField;
    ProducaoEtapasEMAIL: TStringField;
    ProducaoEtapasTEM_MENSAGEM: TIntegerField;
    ProducaoEtapasTEM_ARQUIVADO: TStringField;
    ProducaoEtapasTEM_FRENTE_VERSO: TStringField;
    ProducaoEtapasTEM_REVERSO: TStringField;
    ProducaoEtapasTEM_LOGO: TStringField;
    ProducaoEtapasTEM_PLAY: TStringField;
    ProducaoEtapasTEM_ANEXO: TStringField;
    ProducaoEtapasPODE_ENCAMINHAR: TStringField;
    ProducaoEtapasPODE_CANCELAR: TStringField;
    ProducaoEtapasPODE_LIBERAR: TStringField;
    ProducaoEtapasATIVO: TStringField;
    ProducaoEtapasCUSTO_LOJA: TFloatField;
    ProducaoEtapasTEM_TRABALHANDO: TStringField;
    edtCodProjetoÎPROJETOÎDESCRICAO: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    edtCodProjetoÎPROJETO: TcxDBButtonEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUCAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUCAO_OS: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    cxGrid1DBTableView1COMP: TcxGridDBColumn;
    cxGrid1DBTableView1LARG: TcxGridDBColumn;
    cxGrid1DBTableView1ESPESSURA: TcxGridDBColumn;
    cxGrid1DBTableView1QTDADEPECA: TcxGridDBColumn;
    cxGrid1DBTableView1MEDIDAS: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_USO: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO_VENDA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1PESO: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO_VENDA_UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT: TcxGridDBColumn;
    cxGrid1DBTableView1ACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1APROVEITAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODACABAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCOR: TcxGridDBColumn;
    cxGrid1DBTableView1OBS_PRODUCAO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_PRODUCAO_FINALIZADA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_RELATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_RELATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1VDESC: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUE_BAIXADO: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPO_ESTIMADO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn;
    cxGrid1DBTableView1CATEGORIA: TcxGridDBColumn;
    cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1PODE_ALTERAR_ESTOQUE: TcxGridDBColumn;
    cxGrid1DBTableView1PROTOCOLO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    dxLayoutGroup16: TdxLayoutGroup;
    LitokProducao_Tag: TdxLayoutItem;
    tokProducao_Tag: TdxDBTokenEdit;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    btnTarefasCliente: TcxButton;
    LicbxEstagio: TdxLayoutItem;
    cbxEstagio: TcxDBLookupComboBox;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup30: TdxLayoutGroup;
    MenuOpcoes: TPopupMenu;
    OsdesseCliente1: TMenuItem;
    Abrircadastrodocliente1: TMenuItem;
    LicbxAcabamento: TdxLayoutItem;
    cbxAcabamento: TcxDBLookupComboBox;
    LicbxLocal: TdxLayoutItem;
    cbxLocal: TcxDBLookupComboBox;
    LicbxTipo_Impressao: TdxLayoutItem;
    cbxTipo_Impressao: TcxDBLookupComboBox;
    dxLayoutGroup31: TdxLayoutGroup;
    GrupoEquipe: TdxLayoutGroup;
    GrupoProcessos: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem22: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridDBColumn89: TcxGridDBColumn;
    cxGridDBColumn90: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Producao_Tempo: TFDQuery;
    RemoverBaixadoEstoque1: TMenuItem;
    TreeListComposicaoQUANT_FATURAR: TcxDBTreeListColumn;
    stDespesa: TcxStyle;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    lilblDescricaoProduto: TdxLayoutItem;
    lblDescricaoProduto: TcxDBLabel;
    liedtQuantConsumo: TdxLayoutItem;
    edtQuantConsumo: TcxCurrencyEdit;
    lilblConsumo: TdxLayoutItem;
    lblConsumo: TcxDBLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lilblQuant_Prevista: TdxLayoutItem;
    lblQuant_Prevista: TcxDBLabel;
    liedtObservacaoEstoque: TdxLayoutItem;
    edtObservacaoEstoque: TcxMemo;
    dxLayoutItem28: TdxLayoutItem;
    btnConfirmarBaixa: TBitBtn;
    dxLayoutItem29: TdxLayoutItem;
    btnCancelarBaixa: TBitBtn;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cbxTipoUsoProduto: TcxLookupComboBox;
    licbxTipoUsoProduto: TdxLayoutItem;
    licxbUsuarioProduto: TdxLayoutItem;
    cxbFuncionarioProduto: TcxLookupComboBox;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxbCentroTrabalhoProduto: TcxImageComboBox;
    licxbCentroTrabalhoProduto: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    TreeListComposicaocxDBTreeListEdit: TcxDBTreeListColumn;
    dxLayoutItem30: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    GrupoVinculo: TdxLayoutGroup;
    Producao_Vinculo: TFDQuery;
    DSProducao_Vinculo: TDataSource;
    Producao_VinculoPROTOCOLO: TStringField;
    Producao_VinculoRAZAOSOCIAL: TStringField;
    Producao_VinculoPRODUTO: TStringField;
    cxGridDBTableView3PROTOCOLO: TcxGridDBColumn;
    cxGridDBTableView3RAZAOSOCIAL: TcxGridDBColumn;
    cxGridDBTableView3PRODUTO: TcxGridDBColumn;
    cxGridDBTableView3QUANT: TcxGridDBColumn;
    Producao_VinculoCODIGO: TIntegerField;
    Producao_VinculoSITUACAO: TStringField;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3SITUACAO: TcxGridDBColumn;
    Producao_VinculoQUANT_PRODUZIR: TFloatField;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    Producao_Movimento: TFDQuery;
    DSProducao_Movimento: TDataSource;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    dxLayoutItem31: TdxLayoutItem;
    cxGrid5DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid5DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid5DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid5DBTableView1CENTRO_TRABALHO: TcxGridDBColumn;
    cxGrid5DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid5DBTableView1PRODUCAO_ESTAGIO: TcxGridDBColumn;
    cxGrid5DBTableView1PRODUCAO_MOTIVO: TcxGridDBColumn;
    cxGrid5DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid5DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    ActAdicionarReceita: TAction;
    cxGrid5DBTableView1TIPO_USO: TcxGridDBColumn;
    chkTransformaRendimento: TcxCheckBox;
    lichkTransformaRendimento: TdxLayoutItem;
    lilblFinalizado: TdxLayoutItem;
    lblFinalizado: TcxDBLabel;
    cxGrid5DBTableView1QUANT: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    TreeListServico: TcxDBTreeList;
    ProducaoProdutoServico: TFDQuery;
    DSProducaoProdutoServico: TDataSource;
    cxDBTreeList1DESCRICAO1: TcxDBTreeListColumn;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    liedtCodVendaProduto: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    stRendimento: TcxStyle;
    rtgProducao: TdxDBRatingControl;
    dxLayoutItem12: TdxLayoutItem;
    DSServico: TDataSource;
    Servico: TFDQuery;
    cxDBTreeList1USUARIO1: TcxDBTreeListColumn;
    cxDBTreeList1DT_ESTOQUE_BAIXA1: TcxDBTreeListColumn;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    dxLayoutGroup24: TdxLayoutGroup;
    ProducaoRastro: TFDQuery;
    DSProducaoRastro: TDataSource;
    ProducaoRastroPROTOCOLO: TStringField;
    ProducaoRastroTEM_DESPESA: TStringField;
    ProducaoRastroEQUIPE: TStringField;
    ProducaoRastroFUNCIONARIO: TStringField;
    ProducaoRastroCODUSUARIO: TIntegerField;
    cxGridDBTableView4PROTOCOLO: TcxGridDBColumn;
    cxGridDBTableView4TEM_DESPESA: TcxGridDBColumn;
    cxGridDBTableView4EQUIPE: TcxGridDBColumn;
    cxGridDBTableView4FUNCIONARIO: TcxGridDBColumn;
    cxGridDBTableView4CODUSUARIO: TcxGridDBColumn;
    ProducaoRastroDT_EMISSAO: TSQLTimeStampField;
    cxGridDBTableView4DT_EMISSAO: TcxGridDBColumn;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    cxButton5: TcxButton;
    cxDBTreeList1PROTOCOLOBAIXA: TcxDBTreeListColumn;
    TreeListComposicaoOrdenacao: TcxDBTreeListColumn;
    Producao_ProdutoOrdenacao: TIntegerField;
    TreeListComposicaoTIPO_USO: TcxDBTreeListColumn;
    liDT_Entrega: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    N3: TMenuItem;
    Arquivar1: TMenuItem;
    Arquivar2: TMenuItem;
    N4: TMenuItem;
    Concluir1: TMenuItem;
    Producao_Requisicao: TFDQuery;
    Duplicar1: TMenuItem;
    liDT_Emissao: TdxLayoutItem;
    edtDT_Emissao: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    procedure btnFinalizaOSClick(Sender: TObject);
    procedure lblNumeroVendaClick(Sender: TObject);
    procedure GridRecursosDBTableView1TIPOGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure EdtTempoRealGastoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdtTempoEstimadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure TbPercentualConclusaoPropertiesChange(Sender: TObject);
    procedure EdtCaminhoArquivoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure lblTempoTotalOPDisplayClick(Sender: TObject);
    procedure ActDesvincularMaterialExecute(Sender: TObject);
    procedure ActVincularMaterialExecute(Sender: TObject);
    procedure MenuComposicaoPopup(Sender: TObject);
    procedure Producao_ProdutoBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure QuerProducaoOSTempoCalcFields(DataSet: TDataSet);
    procedure TreeListComposicaoCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure cssSituacaoPropertiesEditValueChanged(Sender: TObject);
    procedure imgImagemDblClick(Sender: TObject);
    procedure Producao_ProdutoAfterInsert(DataSet: TDataSet);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure TreeListComposicaoTEMPO_ESTIMADOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAdicionaTarefaClick(Sender: TObject);
    procedure btnRemoverTarefaClick(Sender: TObject);
//   procedure TreeListComposicaocxDT_PREVISAO_ENTREGAValidateDrawValue(
//      Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
//      AData: TcxEditValidateInfo);
    procedure TreeListComposicaocxTEM_PRODUCAO_FINALIZADAPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure DS_ComposicaoStateChange(Sender: TObject);
    procedure ActTransformarEmProducaoExecute(Sender: TObject);
    procedure TreeListComposicaocxCATEGORIAPropertiesEditValueChanged(Sender: TObject);
    procedure TreeListComposicaoEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
    procedure edtTempoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tokUsuariosPropertiesTokenAdd(Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken;
      var AAllow: Boolean);
    procedure btnAgendarProduçaoClick(Sender: TObject);
    procedure GrupoTabsTabChanged(Sender: TObject);
    procedure cxDBTreeList1QUANTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnConfirmarBaixaClick(Sender: TObject);
    procedure btnCancelarBaixaClick(Sender: TObject);
    procedure cxDBTreeList1CODPRODUTOPropertiesEditValueChanged(
      Sender: TObject);
    procedure CadastroBeforeEdit(DataSet: TDataSet);
    procedure cxDBTreeList1CODPRODUTOSetStoredPropertyValue(Sender: TObject;
      const AName: string; const AValue: Variant);
    procedure cxDBTreeList1CODPRODUTOGetDisplayText(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; var Value: string);
    procedure edtCodProdutoÎPRODUTOPropertiesEditValueChanged(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnProduzirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure imgImagemPropertiesEditValueChanged(Sender: TObject);
    procedure btnTarefasClienteClick(Sender: TObject);
    procedure Abrircadastrodocliente1Click(Sender: TObject);
    procedure OsdesseCliente1Click(Sender: TObject);
    procedure cbxAcabamentoPropertiesEditValueChanged(Sender: TObject);
    procedure cbxLocalPropertiesEditValueChanged(Sender: TObject);
    procedure cbxTipo_ImpressaoPropertiesEditValueChanged(Sender: TObject);
    procedure Producao_TempoAfterInsert(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure RemoverBaixadoEstoque1Click(Sender: TObject);
    procedure cxbCentroTrabalhoPropertiesEditValueChanged(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure edtQuantConsumoPropertiesChange(Sender: TObject);
    procedure TreeListComposicaocxDBTreeListEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TreeListComposicaoDblClick(Sender: TObject);
    procedure cxGridDBTableView3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure ActAdicionarReceitaExecute(Sender: TObject);
    procedure ProducaoProdutoServicoAfterInsert(DataSet: TDataSet);
    procedure BtnAdicionaServicoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid5DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure edtCodPessoasÎPESSOASPropertiesEditValueChanged(Sender: TObject);
    procedure cxDBTreeList1CODSERVICOPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnRemoverServicoClick(Sender: TObject);
    procedure cxDBTreeList1CODSERVICO1GetDisplayText(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; var Value: string);
    procedure cxDBTreeList1CODSERVICO1SetStoredPropertyValue(Sender: TObject;
      const AName: string; const AValue: Variant);
    procedure cxDBTreeList1CODSERVICO1PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxbCentroTrabalhoProdutoPropertiesChange(Sender: TObject);
    procedure Producao_ProdutoCalcFields(DataSet: TDataSet);
    procedure Arquivar1Click(Sender: TObject);
    procedure Arquivar2Click(Sender: TObject);
    procedure Concluir1Click(Sender: TObject);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
    procedure dxTileControlItem17Click(Sender: TdxTileControlItem);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure FrameEnter(Sender: TObject);
  private
    AFrameAnexosProducao: TFrameAnexosProducao;
    FFrmProduto_Wizard : TFrmProduto_Wizard;
    procedure AdicionarReceita;
    procedure CalculaPrioridadeNaProducao;
  public
    FConsulta: TForm;
    class procedure PreencheDadosScheduler(ADataSet: TDataSet);      // Função inativa
    class procedure GeraProducaoMovimento(ATransa :TFDTransaction; AProducao_Produto :TDataSet; ACodProduto_Movimento :Integer);
    procedure FinalizaProducao(ASituacao :String = '');
    class procedure FinalizaProducaoProduto(ATransa: TFDTransaction; AProducaoProduto :TFDQuery; ACodCentro_Trabalho :Integer; UCHistorico :TUCHist_DataSet);

    function DuplicaProducao(ACodCentroTrabalho: Integer; ADataEquipe: TDateTime; ACodCentroTrabalhoOrigem: Integer = 0): Integer;
    procedure AdicionaTarefa(CodUsuario: Integer; Descricao: String);
    procedure PausaTarefa(ACodUsuario: Integer);
    procedure CancelaProducaoVenda;
    Procedure ReativarProducao;
    class function Produzir(ATransa :TFDTransaction; Quant :Double; Query: TFDQuery; AEntradaOuSaida: String):Double;
    class procedure RegistraProducao(ACodigo :Integer; ATransa :TFDTransaction; ATemDespesa :String);

    constructor Create(AOwner: TComponent); override;
  end;

//  procedure ProducaoCriaNovaProducao(const AVenda, AVenda_Produto: TDataSet;
//    AParentNode: TcxTreeListNode; ACodProducao: Integer; AParent: Variant);

implementation

{$R *.dfm}

uses
  Base, pcnConversao, Rotinas, Math, Principal, wrFuncoes, wrForms, wrPreencheLookup,
  ConUsuario, DateUtils, CadEncaminhar, cxSchedulerRecurrence, cxDateUtils,
  EntradaTempo, ConRecurso, CadRecurso, TextoObservacao, CadProduto_Movimento,
  Base_Produto, Classes.WR, frFrameHistorico, Frame_ConProducao_Mestre, Tag.APP, Tag.Form;


{$REGION 'Create\Destroy'}
procedure TFrame_Cad_Producao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  inherited;
  if DS.State in [dsEdit, dsInsert] then
    btnConfirmarClick(nil);
end;

constructor TFrame_Cad_Producao.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
//  LiPnlFrameLogAtividades.MakeVisible;     // Se fizer isso da Erro, so pode mostrar depois de abrir o Cadastro, faz o sistema abrir mais rápido

  PreencheLookupProducaoMaterialTipoUso(cbxTipoUsoProduto.Properties); //PAINEL
//  PreencheLookupProducaoMaterialTipoUso(cxDBTreeList1TIPO_USO.Properties as TcxLookupComboBoxProperties);
  PreencheLookupProducaoMaterialTipoUso(cxGrid5DBTableView1TIPO_USO.Properties as TcxLookupComboBoxProperties);
//  PreencheLookupPrioridade(cbxPrioridade.Properties);

//  CarregaConfigTreeList(TreeListComposicao, 'TreeListComposicao');    3 erros

  ProdutoControleUnidades.AtualizaCaptionsTreeView(TreeListComposicao);
  ProdutoControleUnidades.AtualizaCaptionsLayoutControl(MainLayout);

  PreencheLookupProducao_Estagio(cbxEstagio.Properties);
  PreencheLookupProducao_Estagio(cxGrid5DBTableView1PRODUCAO_ESTAGIO.Properties as TcxLookupComboBoxProperties);
  PreencheLookupProducao_Situacao(cbxSituacao.Properties);
  PreencheLookupProducao_Situacao(cxGrid5DBTableView1SITUACAO.Properties as TcxLookupComboBoxProperties);


  PreencheLookupAcabamento(cbxAcabamento.Properties);
  PreencheLookupLocal(cbxLocal.Properties);
  PreencheLookupTipo_Impressao(cbxTipo_Impressao.Properties);

 // PreencheLookupUsuarios(cxbUsuario.Properties);
//  PreencheLookupUsuarios(cxbFuncionarioProduto.Properties);//PAINEL
//  PreencheLookupUsuarios(cxLookupComboBox1.Properties);
  PreencheImgComboBoxCentroTrabalho(cxbCentroTrabalho.Properties, 'CODIGO');
  PreencheImgComboBoxCentroTrabalho(TcxImageComboBoxProperties(TreeListComposicaoCENTRO_TRABALHO.Properties),'CODIGO');
  PreencheImgComboBoxCentroTrabalho(cxbCentroTrabalhoProduto.Properties, 'CODIGO');//PAINEL
  PreencheLookupCentro_Trabalho(cxGrid5DBTableView1CENTRO_TRABALHO.Properties as TcxLookupComboBoxProperties);

  PreencheTokenUsuarios(tokUsuarios.Properties);
  PreencheTokenMarcadores(tokProducao_Marcador.Properties);
  cssSituacao.Properties.ListColumns[1].RepositoryItem:= FrmPrincipal.cxEditRepository1ColorEdit1;
  cxDBTreeList1CODPRODUTO.Properties.UseMouseWheel := False;
//  cxDBTreeList1CODSERVICO.Properties.UseMouseWheel := False;
end;

procedure TFrame_Cad_Producao.FormDestroy(Sender: TObject);
begin
  try
    inherited;       // Destruindo antes de salvar
    GravaConfigTreeList(TreeListComposicao, 'TreeListComposicao');   // Destruindo antes de salvar
  except end;
end;

procedure TFrame_Cad_Producao.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
 //  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);  // Pode Ser Removido
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      AddValorInicial(FNomeTabela,'DT_EMISSAO', edtDT_Emissao, '@DATA');
      AddGenerator(edtCodigo);
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'Informar a Descrição');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;
//      AddValorInicial(FNomeTabela , 'CODCENTRO_TRABALHO', cxbUsuario, 'S');
//      Componente('PRODUCAO', 'SITUACAO', 'cxbSituacao', '', 'N', 'N','TRANSFERIR', '', '' );

//      CamposAdicionais('PRODUCAO', 'CODCENTRO_TRABALHO', 'select U.codigo as CODUSUARIO, c.MENSAGEM_HISTORICO FROM centro_trabalho c left join USUARIO U ON u.codfuncionario = c.PESSOA_RESPONSAVEL_CODIGO WHERE (C.CODIGO= :Codigo)');
//      CamposAdicionais('PRODUCAO', 'SITUACAO', 'select TEM_TRABALHANDO, TEM_ARQUIVADO from PRODUCAO_SITUACAO where DESCRICAO = :Codigo');
    end;
  end;
end;

procedure TFrame_Cad_Producao.WREventosCadastroLayoutChange(Sender: TObject);
begin
  inherited;
  edtCodProdutoÎPRODUTO.Properties.Buttons[1].Visible := AWR_APP[TagAPP_Produto_Composicao].Ativo;
end;

procedure TFrame_Cad_Producao.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(Cadastro, 'PRODUCAO');
  WRFormataCamposDataSets1.AdicionarDataSet(Producao_Produto, 'PRODUCAO_PRODUTO');

  edtQTDADePecas.Properties.DisplayFormat     := DecimalQuantidade;
  edtComp.Properties.DisplayFormat            := DecimalQuantidade;
  edtLarg.Properties.DisplayFormat            := DecimalQuantidade;
  edtEspessura.Properties.DisplayFormat       := DecimalQuantidade;
  edtQuantProduzir.Properties.DisplayFormat   := DecimalQuantidade;
  edtQuant.Properties.DisplayFormat           := DecimalQuantidade;
end;

procedure TFrame_Cad_Producao.cbxAcabamentoPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  // aqui pegar o CODACABAMENTO
end;

procedure TFrame_Cad_Producao.cbxLocalPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  // Aqui pegar o CODLOCAL
end;

procedure TFrame_Cad_Producao.cbxTipo_ImpressaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  // Aqui pegar o CODTIPO_IMPRESSAO
end;

procedure TFrame_Cad_Producao.Concluir1Click(Sender: TObject);
begin
  inherited;
  btnAlterar.Click;
  Cadastro.FieldByName('SITUACAO').AsString:= 'Concluído';
  btnConfirmar.Click;
end;

procedure TFrame_Cad_Producao.cssSituacaoPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  // TODO: Localizar a Cor Do fundo do Componente
  cssSituacao.Style.Color:= cssSituacao.Properties.ListSource.DataSet.FieldByName('COR').AsInteger;
end;

{$ENDREGION}

{$REGION 'Abertura e Fechamento de Query'}
procedure TFrame_Cad_Producao.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString  := GeraProtocolo;
  Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(TransaFD, Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
  Cadastro.FieldByName('PROTOCOLO').AsString            := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString+'-'+Cadastro .FieldByName('SEQUENCIA_PROTOCOLO').AsString;
end;

procedure TFrame_Cad_Producao.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Producao_Produto.Open;
  DS_CentroTrabalho.Dataset.Open;
  Produto.Open;
  Servico.Open;
  Categoria.Open;
  Usuarios.Open;
  ProducaoProdutoServico.Open;
  Producao_Vinculo.Open;
  Producao_Movimento.Open;
  ProducaoProdutoServico.Open;
  ProducaoRastro.Open;
//  Producao_tempo.Open;
//  Producao_OS_Tempo.Open;
//  Producao_OS_Recurso.Open;
//  AtualizaTempoRegistrado;
end;

procedure TFrame_Cad_Producao.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Producao_Produto.Close;
  DS_CentroTrabalho.Dataset.Close;
  Produto.Close;
  Servico.Close;
  Categoria.Close;
  Usuarios.Close;
  ProducaoProdutoServico.Close;
  Producao_Vinculo.Close;
  Producao_Movimento.Close;
  ProducaoProdutoServico.Close;
  ProducaoRastro.Close;
//  Producao_tempo.Close;
//  Producao_OS_Tempo.Close;
//  Producao_OS_Recurso.Close;
end;

procedure TFrame_Cad_Producao.CadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFrame_Cad_Producao.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//   Cadastro.ParamByName('Codigo').AsInteger := FChavePrimaria;
end;

procedure TFrame_Cad_Producao.CadastroBeforePost(DataSet: TDataSet);
var
  AMudou: Variant;
  ATemDespesa: String;
begin
  inherited;
  ATemDespesa := 'N';
  AMudou := 'N';
  if Cadastro.FieldByName('CODCENTRO_TRABALHO').OldValue <> Cadastro.FieldByName('CODCENTRO_TRABALHO').Value then
    AMudou := 'S';

  if Cadastro.FieldByName('SITUACAO').OldValue <> Cadastro.FieldByName('SITUACAO').Value then
    AMudou := 'S';

  if Cadastro.FieldByName('PRODUCAO_ESTAGIO').OldValue <> Cadastro.FieldByName('PRODUCAO_ESTAGIO').Value then
    AMudou := 'S';

  if Cadastro.FieldByName('PRODUCAO_MOTIVO').OldValue <> Cadastro.FieldByName('PRODUCAO_MOTIVO').Value then
    AMudou := 'S';

  if Cadastro.FieldByName('CODUSUARIO').OldValue <> Cadastro.FieldByName('CODUSUARIO').Value then
    AMudou := 'S';

  if AMudou = 'S' then
  begin
    if Assigned(FConsulta) then
    begin
      with TFrame_ConsuProducao_Mestre(TFrmBase(FConsulta).FrameConsulta) do
        GeraProducaoEtapas(TransaFD,Cadastro);
    end;
  end;

  Producao_Movimento.First;
  while not Producao_Movimento.Eof do
  begin
    if Producao_Movimento.FieldByName('TIPO_USO').AsString = 'Despesa' then
      ATemDespesa := 'S';
    Producao_Movimento.Next;
  end;
  Cadastro.FieldByName('TEM_DESPESA').AsString := ATemDespesa;

//  if (AMudou = 'S') or (ATemDespesa = 'S') then
//    RegistraProducao(Cadastro.FieldByName('CODIGO').AsInteger, TransaFD, ATemDespesa);

end;

procedure TFrame_Cad_Producao.CadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
//  if Cadastro.FieldByName('CODVENDA').AsString <> '' then
//    Cadastro.FieldByName('CodTabela').AsString := Cadastro.FieldByName('CODVENDA').AsString + ';' + Cadastro.FieldByName('CODVENDA_PRODUTO').AsString
//  else
//    Cadastro.FieldByName('CodTabela').AsString := Cadastro.FieldByName('CODPRODUCAO').AsString;

//  Cadastro.FieldByName('CodTabela').AsString := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
//  Cadastro.FieldByName('TempoEstimadoStr').AsString := MinutosToHoras(Cadastro.FieldByName('TEMPO_ESTIMADO').AsInteger);
//  Cadastro.FieldByName('TempoStr').AsString         := MinutosToHoras(Cadastro.FieldByName('TEMPO').AsInteger);
end;

procedure TFrame_Cad_Producao.CalculaPrioridadeNaProducao;
var
  QuerX, QuerY: TFDQuery;
  APrioridadePessoa, APrioridadeProduto : Single;
begin
  inherited;
    try
      QuerX := GeraFDQuery;

      if edtCodPessoasÎPESSOAS.Text <> '' then
        begin
          QuerX.SQL.Text := 'select coalesce(p.prioridade_producao,0) as prioridade_producao from pessoas p ' +
                        ' where p.sequencia_' + edtCodPessoasÎPESSOAS.Properties.Buttons[0].Caption +
                        ' = :seqpessoa';
          QuerX.ParamByName('seqpessoa').Value := edtCodPessoasÎPESSOAS.EditValue;
          QuerX.Open;

          APrioridadePessoa := QuerX.FieldByName('prioridade_producao').AsFloat;
        end else
          APrioridadePessoa := 0;


      if edtCodProdutoÎPRODUTO.Text <> '' then
      begin
        QuerY := GeraFDQuery;
        QuerY.SQL.Text := 'select coalesce(p.prioridade_producao,0) as prioridade_producao from produto p ' +
                          ' where p.codigo = :codproduto';
        QuerY.ParamByName('codproduto').Value := edtCodProdutoÎPRODUTO.EditValue;
        QuerY.Open;

        APrioridadeProduto := QuerY.FieldByName('prioridade_producao').AsFloat;
      end else
        APrioridadeProduto := 0;

      Cadastro.FieldByName('prioridade_producao').AsFloat := (APrioridadePessoa + APrioridadeProduto)/2;

    finally
      QuerX.Free;
      QuerY.Free;
    end;
end;

procedure TFrame_Cad_Producao.DSStateChange(Sender: TObject);
Var
  PodeEditar: Boolean;
begin
  inherited;
  if Producao_Produto.State <> dsInactive then
  begin
    edtQuantProduzir.Properties.ReadOnly :=  not(Cadastro.FieldByName('CODVENDA').AsString = '');
    liEdtVendaÎVenda.Enabled      :=  (Cadastro.FieldByName('CODVENDA').AsString = '');
    liedtCodVendaProduto.Enabled  :=  (Cadastro.FieldByName('CODVENDA').AsString = '');
  end;
//  libtn2Cancelar.Visible        := btnCancelar.Enabled;
//  libtn2Confirmar.Visible       := btnConfirmar.Enabled;
//  libtn2Alterar.Visible         := btnAlterar.Enabled;
  lilblFinalizado.Visible       := not(Cadastro.FieldByname('DT_FIM').IsNull);

//  PodeEditar :=  not(Cadastro.FieldByname('DT_FIM').IsNull);
//
//  edtDescricao.Properties.ReadOnly                       := PodeEditar;
//  cxbUsuario.Properties.ReadOnly                         := PodeEditar;
//  cbxPrioridade.Properties.ReadOnly                      := PodeEditar;
//  cbxSituacao.Properties.ReadOnly                        := PodeEditar;
//  cbxEstagio.Properties.ReadOnly                         := PodeEditar;
//  cxbCentroTrabalho.Properties.ReadOnly                  := PodeEditar;
//  edtDT_Prazo_Final.Properties.ReadOnly                  := PodeEditar;
//  edtCodPessoasÎPESSOASÎRAZAOSOCIAL.Properties.ReadOnly  := PodeEditar;
//  edtCodPessoasÎPESSOAS.Properties.ReadOnly              := PodeEditar;
//  edtCodProdutoÎPRODUTOÎUNIDADE.Properties.ReadOnly      := PodeEditar;
//  edtCodProdutoÎPRODUTOÎDESCRICAO.Properties.ReadOnly    := PodeEditar;
//  edtCodProdutoÎPRODUTO.Properties.ReadOnly              := PodeEditar;
//  edtQuant.Properties.ReadOnly                           := PodeEditar;
//  edtQuantProduzir.Properties.ReadOnly                   := PodeEditar;
//  edtEspessura.Properties.ReadOnly                       := PodeEditar;
//  edtLarg.Properties.ReadOnly                            := PodeEditar;
//  edtComp.Properties.ReadOnly                            := PodeEditar;
//  edtQTDADePecas.Properties.ReadOnly                     := PodeEditar;
//  edtObservacao.Properties.ReadOnly                      := PodeEditar;
//  edtPATH.Properties.ReadOnly                            := PodeEditar;
//  libtnAdicionarReceita.Enabled                          := Cadastro.FieldByname('DT_FIM').IsNull;
//  libtnProduzir.Enabled                                  := Cadastro.FieldByname('DT_FIM').IsNull;
////  liBtnAdicionaTarefa.Enabled                            := Cadastro.FieldByname('DT_FIM').IsNull;
////  libtnRemoverTarefa.Enabled                             := Cadastro.FieldByname('DT_FIM').IsNull;
////  libtnAgendarProduçao.Enabled                           := Cadastro.FieldByname('DT_FIM').IsNull;
//
//
//
//
////  DS.AutoEdit                   := Cadastro.FieldByname('DT_VENDA_PRODUCAO').IsNull;
////  DS_Composicao.AutoEdit        := Cadastro.FieldByname('DT_FIM').IsNull;
//  DSProducao_Movimento.AutoEdit := Cadastro.FieldByname('DT_VENDA_PRODUCAO').IsNull;
end;

procedure TFrame_Cad_Producao.DS_ComposicaoStateChange(Sender: TObject);
begin
  inherited;
//  if Producao_Produto.State <> dsBrowse then
//    VerificaSePodeAlteraDataSet(Cadastro);
end;

procedure TFrame_Cad_Producao.ProducaoProdutoServicoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  //VerificaSePodeAlteraDataSet(Cadastro);
  DataSet.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_PRODUCAO_PRODUTO'));
  DataSet.FieldByName('ATIVO').AsString       := 'S';    {TODO -oFelipe -cRetirar o ATIVO daqui : Ativo}
  DataSet.FieldByName('CODPRODUCAO').Value    := Cadastro.FieldByName('CODIGO').Value;
 // DataSet.FieldByName('CODPRODUCAO_OS').Value := Cadastro.FieldByName('CODIGO').Value;
end;

procedure TFrame_Cad_Producao.Producao_ProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_PRODUCAO_PRODUTO'));
  DataSet.FieldByName('ATIVO').AsString       := 'S';    {TODO -oFelipe -cRetirar o ATIVO daqui : Ativo}
  DataSet.FieldByName('CODPRODUCAO').Value    := Cadastro.FieldByName('CODIGO').Value;
 // DataSet.FieldByName('CODPRODUCAO_OS').Value := Cadastro.FieldByName('CODIGO').Value;
end;

procedure TFrame_Cad_Producao.Producao_ProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
//  Producao_Produto.FieldByName('MEDIDAS').AsString := ProdutoGetMedidasDataSet(Producao_Produto).Medidas;
end;

procedure TFrame_Cad_Producao.Producao_ProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString = Cadastro.FieldByName('PROTOCOLO').AsString then
    Producao_Produto.FieldByName('Ordenacao').AsInteger := 1;

  if (Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString <> Cadastro.FieldByName('PROTOCOLO').AsString) and
     (VarToStr(Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString) <> '') then
    Producao_Produto.FieldByName('Ordenacao').AsInteger := -1;

  if (Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString <> Cadastro.FieldByName('PROTOCOLO').AsString) and
     (VarToStr(Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString) = '') then
    Producao_Produto.FieldByName('Ordenacao').AsInteger := 0;
end;

procedure TFrame_Cad_Producao.Producao_TempoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CODIGO').AsInteger := GetProximoCodigo('PRODUCAO_TEMPO',TransaFD);

end;

{$ENDREGION}

{$REGION 'TreeListGrid'}
procedure TFrame_Cad_Producao.TreeListComposicaoCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if VarSameValueWR(AViewInfo.Node.Values[cxDBTreeList1CODPRODUCAO_OS.ItemIndex], Cadastro.FieldByName('CODIGO').AsVariant) then
    ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
//  if not VarIs (AViewInfo.Node.Values[cxDBTreeList1DT_ESTOQUE_BAIXA1.ItemIndex]) then

  if VarToStr(AViewInfo.Node.Values[cxDBTreeList1PROTOCOLOBAIXA.ItemIndex]) <> '' then
  begin
    ACanvas.Font.Style := ACanvas.Font.Style + [fsStrikeOut];
    ACanvas.Font.Color := $009F9287; //Cinza
  end;

  if VarToStr(AViewInfo.Node.Values[cxDBTreeList1PROTOCOLOBAIXA.ItemIndex]) = Cadastro.FieldByName('PROTOCOLO').AsString then
  begin
    ACanvas.Font.Style := ACanvas.Font.Style + [fsBold];
    ACanvas.Font.Color := clWindowText; //Preto
  end;

end;

procedure TFrame_Cad_Producao.TreeListComposicaocxCATEGORIAPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Producao_Produto.FieldByName('CODPRODUTO_CATEGORIA').AsString := Categoria.FieldByName('CODIGO').AsString;
  Producao_Produto.FieldByName('CATEGORIA').AsString  := Categoria.FieldByName('DESCRICAO').AsString;
end;

procedure TFrame_Cad_Producao.TreeListComposicaocxDBTreeListEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ShowPanelForm(PnlBaixaEstoque, bsSingle, edtQuantConsumo);
end;

{rocedure TFrmProducao.TreeListComposicaocxDT_PREVISAO_ENTREGAValidateDrawValue(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
  AData: TcxEditValidateInfo);
begin
  inherited;
  if VarIsNull(AValue) then// and VarIsNull(ANode.Values[TreeListComposicaocxDT_PREVISAO_ENTREGA.Values])  then
  begin
    AData.ErrorType := eetWarning;
    AData.ErrorText := 'Coloque uma previsão de entrega';
  end
  else
  if (AValue < now) then// and VarIsNull(ANode.Values[TreeListComposicaocxDT_PREVISAO_ENTREGA.Values]) then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := 'Prazo Limite Atingido';
  end;
end;   }

procedure TFrame_Cad_Producao.TreeListComposicaocxTEM_PRODUCAO_FINALIZADAPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  FinalizaProducaoProduto;
  btnAgendarProduçao.Click;
end;

procedure TFrame_Cad_Producao.TreeListComposicaoDblClick(Sender: TObject);
begin
  inherited;
  edtQuantConsumo.value                 := 0;
  liedtQuantConsumo.Visible             := False;
  edtObservacaoEstoque.Text             := '';
  cxbCentroTrabalhoProduto.EditValue    := Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger;
//  cxbFuncionarioProduto.EditValue           := Usuario.Codigo;
  cbxTipoUsoProduto.Text                := '';
  licbxTipoUsoProduto.Enabled           := False;
  ShowPanelForm(PnlBaixaEstoque, bsSingle, edtQuantConsumo);
end;

procedure TFrame_Cad_Producao.TreeListComposicaoEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
  var Allow: Boolean);
begin
  inherited;
  try
    VerificaSePodeAlteraDataSet;
  except
    Allow := False;
  end;
end;

procedure TFrame_Cad_Producao.TreeListComposicaoTEMPO_ESTIMADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmEntradaTempo.SetTempoField(Producao_Produto.FieldByName('TEMPO_ESTIMADO'));
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODPRODUTOGetDisplayText(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; var Value: string);
begin
  inherited;
  Value := TreeListGetValorNodeString(ANode,'CODPRODUTO');
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODPRODUTOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull then
  begin
    if Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat = 0 then
    begin
      DSCopiarCamposIguais(Produto, Producao_Produto, ['QUANT', 'CODIGO']);
      Producao_Produto.FieldByName('CODPRODUTO').AsString    := Produto.FieldByName('CODIGO').AsString;
      Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat := 0;
      Producao_Produto.FieldByName('QUANT').AsFloat          := 0;
      Producao_Produto.FieldByName('PRODUTO_TIPO').AsString  := Produto.FieldByName('PRODUTO_TIPO').AsString;
      Producao_Produto.Post;
    end
    else
    begin
      ShowMessage('Não é possivel trocar um item que foi enviado pela venda.');
      Exit;
    end;
  end
  else
  begin
    ShowMessage('Não é possivel trocar de item quando a venda já foi para o faturamento.');
  end;
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODPRODUTOSetStoredPropertyValue(
  Sender: TObject; const AName: string; const AValue: Variant);
begin
  inherited;
//
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODSERVICO1GetDisplayText(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; var Value: string);
begin
  inherited;
  Value := TreeListGetValorNodeString(ANode,'CODPRODUTO');
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODSERVICO1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull then
  begin
    if ProducaoProdutoServico.FieldByName('QUANT_PREVISTA').AsFloat = 0 then
    begin
      DSCopiarCamposIguais(Produto, ProducaoProdutoServico, ['QUANT', 'CODIGO']);
      ProducaoProdutoServico.FieldByName('CODPRODUTO').AsString    := Servico.FieldByName('CODIGO').AsString;
      ProducaoProdutoServico.FieldByName('QUANT_PREVISTA').AsFloat := 0;
      ProducaoProdutoServico.FieldByName('QUANT').AsFloat          := 0;
      ProducaoProdutoServico.FieldByName('PRODUTO_TIPO').AsString  := Servico.FieldByName('PRODUTO_TIPO').AsString;
      ProducaoProdutoServico.Post;
    end
    else
    begin
      ShowMessage('Não é possivel trocar um item que foi enviado pela venda.');
      Exit;
    end;
  end
  else
  begin
    ShowMessage('Não é possivel trocar de item quando a venda já foi para o faturamento.');
  end;
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODSERVICO1SetStoredPropertyValue(
  Sender: TObject; const AName: string; const AValue: Variant);
begin
  inherited;
//
end;

procedure TFrame_Cad_Producao.cxDBTreeList1CODSERVICOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull then
  begin
    if ProducaoProdutoServico.FieldByName('QUANT_PREVISTA').AsFloat = 0 then
    begin
      DSCopiarCamposIguais(Produto, ProducaoProdutoServico, ['QUANT', 'CODIGO']);
      ProducaoProdutoServico.FieldByName('CODPRODUTO').AsString    := Servico.FieldByName('CODIGO').AsString;
      ProducaoProdutoServico.FieldByName('QUANT_PREVISTA').AsFloat := 0;
      ProducaoProdutoServico.FieldByName('QUANT').AsFloat          := 0;
      ProducaoProdutoServico.FieldByName('PRODUTO_TIPO').AsString  := Servico.FieldByName('PRODUTO_TIPO').AsString;
      ProducaoProdutoServico.Post;
    end
    else
    begin
      ShowMessage('Não é possivel trocar um item que foi enviado pela venda.');
      Exit;
    end;
  end
  else
  begin
    ShowMessage('Não é possivel trocar de item quando a venda já foi para o faturamento.');
  end;
end;

procedure TFrame_Cad_Producao.cxDBTreeList1QUANTPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;


// stackoverflow  TFrameHistorico.AdicionaHistorico(TransaFD, UCHist_Cadastro, 'PRODUCAO', 'Trocou a Quant do Item: '+Producao_Produto.FieldByName('DESCRICAO').AsString+ ' De ' + FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat)  + ' Para: ' + VarToStrDef(DisplayValue,'0'));
end;

procedure TFrame_Cad_Producao.cxGrid5DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;

  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
//    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if ARecord.Values[cxGrid5DBTableView1TIPO_USO.Index] = 'Rendimento' then
      StyleAssignToCanvas(stRendimento);
    if ARecord.Values[cxGrid5DBTableView1TIPO_USO.Index] = 'Despesa' then
      StyleAssignToCanvas(stDespesa);
  end;
end;

procedure TFrame_Cad_Producao.cxGridDBTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;

  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
//    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if ARecord.Values[cxGridDBTableView3SITUACAO.Index] = 'Cancelado' then
    begin
      StyleAssignToCanvas(StCanceled);
    end
  end;
end;

procedure TFrame_Cad_Producao.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
//  CadastroModalChave(TFrmProducao, Producao_Vinculo.FieldByName('CODIGO').Value); BARIR PELO NOVO ESLTILO
end;

{$ENDREGION}

{$REGION 'Finaliza\Cancela\Reativa\Duplica\Produz(Baixa de Estoque)'}

{$REGION 'FINALIZA ANTIGO'}
//EM DEMOLIÇÃO
procedure TFrame_Cad_Producao.FinalizaProducao(ASituacao :String = '');
//var
//  ATodasFinalizadas: Boolean;
//  ATempoTotal, ATempo, Quant, QuantFalta: Double;
//  APoint: TBookmark;
//  ADataAtual: TDateTime;
//  ALocalEstoque :String;
begin
///TODO: livraivos do luiz em velocidade da luz, vai ser Ajustado, mas foi para toque de caixa.
//  if Cadastro.State = dsInactive then
//    Cadastro.Open;
//
//  ADataAtual := DataHoraSys;
//  VerificaSePodeAlteraDataSet(Cadastro);
//  Producao_Produto.Edit;
//  APoint := Producao_Produto.GetBookmark;
//  Producao_Produto.DisableControls;
//  try
//    ATempoTotal := 0;
//    ATempo      := 0;
//    QuantFalta  := 0;
//    ATodasFinalizadas := True;
//
//    if ASituacao = 'Cancelado' then
//    begin
//      Cadastro.FieldByName('DT_FIM').AsDateTime := ADataAtual;
//
////      if not(Cadastro.FieldByName('CODVENDA').isNull) then
////        CancelaProducaoVenda;
//
//      ATodasFinalizadas := False;
//    end;

    //aqui ele verifica se todas estão finalizadas ou não e calcula pelo tempo a % de conclusão da producao em si
//    Producao_Produto.First;
//    while not Producao_Produto.Eof do
//    begin
//      ATempoTotal := ATempoTotal + Producao_Produto.FieldByName('TEMPO_ESTIMADO').AsFloat;
//      if Producao_Produto.FieldByName('TEM_PRODUCAO_FINALIZADA').AsString <> 'S' then
////        ATodasFinalizadas := False
//      else
//        ATempo := ATempo + Producao_Produto.FieldByName('TEMPO_ESTIMADO').AsFloat;
//      Producao_Produto.Next;
//    end;
////    Producao_Produto.Edit;
//    Cadastro.FieldByName('PCONCLUSAO').AsInteger := Trunc(PercRelativo(ATempo, ATempoTotal));

     //Caso a variavel continue intacta quer dizer que todas foram finalizadas e então aplica a finalização na produção tbm
//    if ATodasFinalizadas then
//    begin
//      Cadastro.FieldByName('DT_FIM').AsDateTime := ADataAtual;
////      Cadastro.FieldByName('SITUACAO').AsString := 'Finalizado';   Definido pela rotina AcaoSelecionado
//      Cadastro.FieldByName('PCONCLUSAO').AsInteger := 100;
//
//      if Cadastro.FieldByName('PODE_ALTERAR_ESTOQUE').AsString <> 'N' then
//      begin
//        //Aqui ele vai criar o produto para ser vendido posteriormente ou para suprir a baixa que a venda realizou.
//        QuantFalta := Cadastro.FieldByName('QUANT_PRODUZIR').AsFloat - Cadastro.FieldByName('QUANT').AsFloat;
//        if QuantFalta > 0 then
//        begin
//          if ShowMessageWR('DESEJA PRODUZIR ' + FloatToStr(QuantFalta) + ' ' + Cadastro.FieldByName('UNIDADE').AsString + ' DE ' + Cadastro.FieldByName('PRODUTO').AsString + ' RESTANTE(S)', MB_ICONQUESTION) = mrYes then
//            Cadastro.FieldByName('QUANT').AsFloat := Produzir(TransaFD, QuantFalta, Cadastro, 'E');
//        end;
//      end;
//    end;
//    Cadastro.Post;
//    btnConfirmar.Click;
//  finally
//    if Producao_Produto.BookmarkValid(APoint) then
//      Producao_Produto.GotoBookmark(APoint);
//    Producao_Produto.EnableControls;

//  end;
end;
{$ENDREGION}

function TFrame_Cad_Producao.DuplicaProducao(ACodCentroTrabalho: Integer; ADataEquipe: TDateTime; ACodCentroTrabalhoOrigem: Integer = 0): Integer;
var
  AMsg: TStringList;
  AMensagem: String;
  AMemTableCadastro: TFDMemTable;
begin
  try
    AMsg := TStringList.Create;
    AMemTableCadastro        := TFDMemTable.Create(nil);

    if AMemTableCadastro.Active then
      AMemTableCadastro.Close;

    AMemTableCadastro.Data   := Cadastro.Data;

    Cadastro.Insert;
    DSCopiarCamposIguais(AMemTableCadastro, Cadastro, ['CODIGO', 'CODPRODUCAO', 'DT_EMISSAO']);
    Cadastro.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUCAO'));
    Result:= Cadastro.FieldByName('CODIGO').AsInteger;
    Cadastro.FieldByName('CODPRODUCAO').AsInteger         := AMemTableCadastro.FieldByName('CODIGO').AsInteger;
    if ACodCentroTrabalho > 0 then
    begin
      Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger  := ACodCentroTrabalho;
      Cadastro.FieldByName('SITUACAO').AsString := 'Aguardando';
    end;
    if ACodCentroTrabalhoOrigem > 0 then
    begin
      Cadastro.FieldByName('CODCENTRO_TRABALHO_PREREQUISITO').AsInteger := ACodCentroTrabalhoOrigem;
    end;
    if ADataEquipe > 0 then
    begin
      Cadastro.FieldByName('DT_ENTREGA').AsDateTime := ADataEquipe;
    end;

    AMsg.Add('Duplicado do Protocolo: ' + Cadastro.FieldByName('PROTOCOLO').AsString + ' Responsável: '+ Usuario.Login);

    Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(TransaFD, Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
    Cadastro.FieldByName('PROTOCOLO').AsString            := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString+'-'+Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsString;
    Cadastro.FieldByName('DT_EMISSAO').AsDateTime         := DataHoraSys;

    UCHist_Cadastro.MensagemHistorico.Add(AMsg.Text);
    Cadastro.Post;

    Cadastro.transaction.Commit;
  finally
    AMemTableCadastro.Free;
  end;
end;

procedure TFrame_Cad_Producao.dxTileControlItem17Click(Sender: TdxTileControlItem);
begin
  inherited;     // olhar isso
  if Assigned(FConsulta) then
  begin
    with TFrame_ConsuProducao_Mestre(TFrmBase(FConsulta).FrameConsulta) do
    begin
      LipnlFlipRotate.Visible := False;
      splFlipRotate.Visible   := False;
      GrupoCabecalho.Visible  := True;
      GrupoAlterarView.Visible:=True;
    end;
  end else
    TForm(Owner).Close;
end;

class procedure TFrame_Cad_Producao.RegistraProducao(ACodigo :Integer; ATransa :TFDTransaction; ATemDespesa :String);
var
  AMsg: TStringList;
  AMemTableCadastro: TFDMemTable;
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'Select * from Producao where codigo = ' + IntToStr(ACodigo);
    QuerX.Open;
    AMsg := TStringList.Create;
    AMemTableCadastro        := TFDMemTable.Create(nil);
    AMemTableCadastro.Data   := QuerX.Data;

//  Cadastro.FieldByName('ATIVO').AsString = 'N';

    QuerX.Insert;
    DSCopiarCamposIguais(AMemTableCadastro, QuerX, ['CODIGO', 'CODPRODUCAO', 'DT_EMISSAO']);
    QuerX.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUCAO'));
    QuerX.FieldByName('CODPRODUCAO').AsInteger         := AMemTableCadastro.FieldByName('CODIGO').AsInteger;

    AMsg.Add('Rastro do Protocolo: ' + QuerX.FieldByName('PROTOCOLO').AsString + ' Responsável: '+ Usuario.Login);

    QuerX.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(ATransa, QuerX.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
    QuerX.FieldByName('PROTOCOLO').AsString            := QuerX.FieldByName('PROTOCOLO_PRINCIPAL').AsString+'-'+QuerX.FieldByName('SEQUENCIA_PROTOCOLO').AsString;
    QuerX.FieldByName('DT_EMISSAO').AsDateTime         := DataHoraSys;
    QuerX.FieldByName('TEM_DESPESA').AsString          := ATemDespesa;
//    UCHist_Cadastro.MensagemHistorico.Add(AMsg.Text);
    QuerX.Post;
  finally
    AMemTableCadastro.Free;
    QuerX.Free;
  end;
end;


class procedure TFrame_Cad_Producao.FinalizaProducaoProduto(ATransa: TFDTransaction; AProducaoProduto :TFDQuery; ACodCentro_Trabalho :Integer; UCHistorico :TUCHist_DataSet);
var
  Quant : Double;
begin
  if (AProducaoProduto.FieldByName('DT_ESTOQUE_BAIXA').IsNull) then
  begin
    AProducaoProduto.Edit; //Producao_Produto
    AProducaoProduto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime         := DataHoraSys;
    AProducaoProduto.FieldByName('TEM_PRODUCAO_FINALIZADA').AsString := 'S';
    AProducaoProduto.FieldByName('CODCENTRO_TRABALHO').AsInteger     := ACodCentro_Trabalho;
    AProducaoProduto.FieldByName('CODUSUARIO').AsInteger             := Usuario.Codigo;

    if AProducaoProduto.FieldByName('CODPRODUTO').IsNull then
      TFrameHistorico.AdicionaHistorico(ATransa, UCHistorico, 'Tarefa Finalizada:' + ' ' + AProducaoProduto.FieldByName('DESCRICAO').AsString)
    else
    begin
      if AProducaoProduto.FieldByName('QUANT').Value = 0 then
        Quant := AProducaoProduto.FieldByName('QUANT_PREVISTA').AsFloat
      else
        Quant := AProducaoProduto.FieldByName('QUANT').AsFloat;

      AProducaoProduto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime := now;
      Produzir(ATransa, Quant, AProducaoProduto, 'S');
    end;
  end
  else
  begin
    AProducaoProduto.Edit;
    //AProducaoProduto.FieldByName('DT_FINALIZADO').Clear;
    AProducaoProduto.FieldByName('TEM_PRODUCAO_FINALIZADA').AsString := 'N';
    if AProducaoProduto.FieldByName('CODPRODUTO').IsNull then
      TFrameHistorico.AdicionaHistorico(ATransa, UCHistorico, 'Tarefa Reativada:' + ' ' + AProducaoProduto.FieldByName('DESCRICAO').AsString);
  end;
end;

class function TFrame_Cad_Producao.Produzir(ATransa :TFDTransaction; Quant :Double; Query: TFDQuery; AEntradaOuSaida: String):Double;
var
  AFatorMultiplicador: Double;
  Field: String;
  ACodProduto_Movimento :Integer;
begin
  try
    if AEntradaOuSaida = 'E' then
    begin
      AFatorMultiplicador  := 1;
      AEntradaOuSaida := 'ENTRADA';
    end
    else
    if AEntradaOuSaida = 'S' then
    begin
      AFatorMultiplicador  := -1;
      AEntradaOuSaida := 'SAIDA';
    end
    else
      Abort;

   ////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\

    MovimentaEstoque(ATransa, Query.FieldByName('CODPRODUTO').AsString,
    StrCodigoToCodEmpresa(Query.FieldByName('CODVENDA').AsString).ToString,
    'PRINCIPAL', '',
    DataHoraSys,
    AEntradaOuSaida + ' O.P Nº ' + Query.FieldByName('CODIGO').AsString + ' - Venda Nº' + Query.FieldByName('CODVENDA').AsString,
    Quant * AFatorMultiplicador, 0,
    Usuario.Codigo, '','',0,0,0,'FrmProducao', Query.FieldByName('TIPO_USO').AsString, 'PRODUÇÃO', ACodProduto_Movimento );

    if (Query.Name = 'Producao_Produto') or (Query.Name = 'ProducaoProdutoServico') then
    begin
      Result := Quant;
      GeraProducaoMovimento(ATransa, Query, ACodProduto_Movimento);
    end
    else
      Result:= Query.FieldByName('QUANT').AsFloat + Quant;
//    TFrameHistorico.AdicionaHistorico(nil, UCHist_Cadastro, 'PRODUCAO', AEntradaOuSaida + ' DE '  +FloatToStr(Quant) + ' ' + Query.FieldByName('UNIDADE').AsString + ' DE ' + Query.FieldByName(Field).AsString);
  Except
    on E:Exception do
    begin
      RollbackTransacao(ATransa);
      ShowMessageWR('Há informações que não estão corretas, a operação será fechada para garantir a integridade do estoque' +
        sLineBreak + 'Erro: ' + E.Message, MB_ICONWARNING);
      Abort;
    end;
  end;
end;

Procedure TFrame_Cad_Producao.ReativarProducao;
begin
  Cadastro.Edit;
  Cadastro.FieldByName('DT_FIM').Clear;
  Cadastro.FieldByName('ATIVO').AsString := 'S';
  Cadastro.Post;
end;

procedure TFrame_Cad_Producao.RemoverBaixadoEstoque1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Está ação irá retornar o estoque de uma materia prima para o estoque. Deseja Continuar?', MB_ICONQUESTION) = mrYes then
  begin
    VerificaSePodeAlteraDataSet(Cadastro);
    Producao_Produto.Edit;
    Produzir(TransaFD, Producao_Produto.FieldByName('QUANT').AsFloat, Producao_Produto, 'E');
    UCHist_Cadastro.MensagemHistorico.Text := 'Cancelou a baixa de estoque de' +' '+ FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) +' '+ Producao_Produto.FieldByName('UNIDADE').AsString +' de '+  Producao_Produto.FieldByName('DESCRICAO').AsString;
    Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').Clear;
    Producao_Produto.FieldByName('QUANT').AsFloat := 0;
    Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat := 0;
    Producao_Produto.Post;
  end;
end;

procedure TFrame_Cad_Producao.CancelaProducaoVenda;   // AQUI TEM QUE COLOCAR UMA TRASAÇÃOOO DA ERRO DIRETO ISSO AQUI
var
  QuerVenda : TFDQuery;
begin                           //TODO: Criar retorno para abortar o cancelamento
//  QuerVenda := GeraFDQuery(TransaFD);
//  try                                                   //////TESTEEEEE////
//    QuerVenda.sql.text := 'update venda_produto vp set vp.TEM_PRODUCAO_ENVIADO = ''N'' where vp.codvenda = :Codvenda and vp.codigo = :Codigo';
//
//    QuerVenda.ParamByName('CODVENDA').Value := Cadastro.FieldByName('CODVENDA').Value;
//    QuerVenda.ParamByName('CODIGO').Value   := Cadastro.FieldByName('CODVENDA_PRODUTO').Value;
//    QuerVenda.ExecSQL;
//
//  except
//    ShowMessage('A Venda ou o Item Selecionado para o Cancelamento, está sendo utilizado no momento.');
//  end;
//  QuerVenda.Free;
end;

{$ENDREGION}

{$REGION 'Botões Click'}
procedure TFrame_Cad_Producao.btnAgendarProduçaoClick(Sender: TObject);
begin
  inherited;
  try
    if ShowMessageWR('Deseja enviar uma requisição desta mercadoria?', MB_ICONQUESTION) = mrYes then
    begin
      btnAlterar.Click;
      ShowMessage('Desabilitado');
//      TFrame_Requisicao_Pocket.SolicitaRequisicao(Producao_Produto, 'S');    // TO-DO
      btnConfirmar.Click;
    end;
//    TFrame_Requisicao_Pocket.CriaRequisicao('PRODUCAO',
//     Producao_Produto.FieldByName('CODPRODUTO').AsString,
//     Producao_Produto.FieldByName('DESCRICAO').AsString,
//     Producao_Produto.FieldByName('UNIDADE').AsString,
//     Producao_Produto.FieldByName('CODPRODUCAO').AsString,
//     Producao_Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//     '',
//     '',
//     'S',
//     Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat,
//     Producao_Produto.FieldByName('CUSTO').AsFloat,
//     Producao_Produto.FieldByName('VALOR').AsFloat,
//     0,
//     Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger,
//     principal.FrmPrincipal.Empresa.FieldByName('CODIGO').AsInteger,
//     usuario.codigo,
//     Producao_Requisicao,
//     0,
//     0,
//     0);

//    if not(Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull) or not(Cadastro.FieldByName('DT_FIM').IsNull) then
//    begin
//      cbxTipoUsoProduto.Text            := 'Despesa';
//      licbxTipoUsoProduto.Enabled       := False;
//    end;
//
//    chkTransformaRendimento.State         := cbsUnchecked;
//    lichkTransformaRendimento.Visible     := False;
//    edtQuantConsumo.value                 := 0;
//    liedtQuantConsumo.Visible             := True;
//    edtObservacaoEstoque.Text             := '';
//    cxbCentroTrabalhoProduto.EditValue    := Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger;
////    cxbFuncionarioProduto.EditValue           := Usuario.Codigo;
//    if cbxTipoUsoProduto.Text =  '' then
//    begin
//      cbxTipoUsoProduto.Text              := 'Fatura';
//      licbxTipoUsoProduto.Enabled         := True;
//    end;
//    ShowPanelForm(PnlBaixaEstoque, bsSingle, edtQuantConsumo);
  finally

  end;
end;

procedure TFrame_Cad_Producao.btnConfirmarBaixaClick(Sender: TObject);
var
  QuantTotal, QuantSobra : Double;
  Codigo : Integer;
  CodProduto, EntradaSaida: String;
  AProdutoMemoria: TFDMemTable;
  AMemTableCadastro: TFDMemTable;
  AMemTableCadastroNovo: TFDMemTable;
  QuerX, QuerY: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;

//  if cxbFuncionarioProduto.Text = '' then
//  begin
//    ShowMessage('Favor Colocar o Usuário Responsável');
//    Exit;
//  end;

  EntradaSaida := '';
//  if cbxTipoUsoProduto.Text = 'Reaproveitamento' then
//    EntradaSaida := 'E'
//  else
    EntradaSaida := 'S';
  QuantSobra := 0;
  if edtQuantConsumo.Value > 0 then
  begin
    Codigo :=  Producao_Produto.FieldByName('CODIGO').AsInteger;
    AlteraDataSet(Cadastro);
    QuantTotal := edtQuantConsumo.Value + Producao_Produto.FieldByName('QUANT').AsFloat;
    /////////QUANT USADA >(MAIOR) QUE A QUANT PREVISTA
    if QuantTotal > Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat then
    begin
      if edtObservacaoEstoque.Text = '' then
      begin
        ShowMessage('Quando a Quantidade é Maior que o Previsto é Necessario Informar a Observação');
        edtObservacaoEstoque.SetFocusWR;
        Exit;
      end;
    end;

    try
      QuerX.SQL.Text := 'Select * from Producao where codigo = ' + Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;
      AMemTableCadastro        := TFDMemTable.Create(nil);
      AMemTableCadastro.Data   := QuerX.Data;
      AProdutoMemoria := TFDMemTable.Create(nil);
      AProdutoMemoria.CopyDataSet(Producao_Produto, [coStructure]);

      QuantSobra := 0;
      if (edtQuantConsumo.Value <> Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat) and (Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat <> 0) then
      begin
        QuantSobra :=  Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat - edtQuantConsumo.Value;
        AProdutoMemoria.Insert;
        AProdutoMemoria.CopyRecord(Producao_Produto);
        AProdutoMemoria.Post;
      end;

      Producao_Produto.Edit;
      Producao_Produto.FieldByName('QUANT').AsFloat                 := edtQuantConsumo.Value;
      Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat         := Producao_Produto.FieldByName('QUANT').AsFloat;
      Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime   := DataHoraSys;
      Producao_Produto.FieldByName('ATIVO').AsString                := 'N';
      Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString      := GeraProtocolo;
      Producao_Produto.FieldByName('OBS_FATURAMENTO').AsString      := edtObservacaoEstoque.Text;
      Producao_Produto.FieldByName('TIPO_USO').AsString             := cbxTipoUsoProduto.Text;
      Producao_Produto.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString          := cxbFuncionarioProduto.EditValue;
      Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger  := cxbCentroTrabalhoProduto.EditValue;
      Producao_Produto.FieldByName('PODE_FATURAR').AsString         := 'S';
      Producao_Produto.post;
      Produzir(TransaFD, edtQuantConsumo.Value, Producao_Produto, EntradaSaida);

      AMemTableCadastroNovo    := TFDMemTable.Create(nil);
      AMemTableCadastroNovo.CopyDataSet(Cadastro, [coStructure]);
      AMemTableCadastroNovo.Insert;
      AMemTableCadastroNovo.FieldByName('CODIGO').AsInteger                       :=  Trunc(GetProximoCodigoGen('CR_PRODUCAO'));
      AMemTableCadastroNovo.FieldByName('CODCENTRO_TRABALHO').AsFloat             :=  cxbCentroTrabalhoProduto.EditValue;
      AMemTableCadastroNovo.FieldByName('DESCRICAO').AsString                     :=  Producao_Produto.FieldByName('DESCRICAO').AsString;
      AMemTableCadastroNovo.FieldByName('PRIORIDADE').AsInteger                   :=  0;
      AMemTableCadastroNovo.FieldByName('CODPRODUTO').AsString                    :=  Producao_Produto.FieldByName('CODPRODUTO').AsString;
      AMemTableCadastroNovo.FieldByName('PRODUTO').AsString                       :=  AMemTableCadastro.FieldByName('DESCRICAO').AsString;
      AMemTableCadastroNovo.FieldByName('QUANT').AsFloat                          :=  0;//AMemTableCadastro.FieldByName('QUANT').AsFloat;
      AMemTableCadastroNovo.FieldByName('LARG').AsFloat                           :=  AMemTableCadastro.FieldByName('LARG').AsFloat;
      AMemTableCadastroNovo.FieldByName('COMP').AsFloat                           :=  AMemTableCadastro.FieldByName('COMP').AsFloat;
      AMemTableCadastroNovo.FieldByName('ESPESSURA').AsFloat                      :=  AMemTableCadastro.FieldByName('ESPESSURA').AsFloat;
      AMemTableCadastroNovo.FieldByName('QTDADEPECA').AsFloat                     :=  AMemTableCadastro.FieldByName('QTDADEPECA').AsFloat;
      AMemTableCadastroNovo.FieldByName('UNIDADE').AsString                       :=  AMemTableCadastro.FieldByName('UNIDADE').AsString;
      AMemTableCadastroNovo.FieldByName('QUANT_PRODUZIR').AsFloat                 :=  AMemTableCadastro.FieldByName('QUANT_PRODUZIR').AsFloat;
      AMemTableCadastroNovo.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString     :=  cxbFuncionarioProduto.EditValue;
      AMemTableCadastroNovo.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     :=  AMemTableCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      AMemTableCadastroNovo.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       :=  AMemTableCadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
      AMemTableCadastroNovo.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger :=  AMemTableCadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
      AMemTableCadastroNovo.FieldByName('RAZAOSOCIAL').AsString                   :=  AMemTableCadastro.FieldByName('RAZAOSOCIAL').AsString;
      AMemTableCadastroNovo.FieldByName('DT_EMISSAO').AsDateTime                  :=  DataHoraSys;
      AMemTableCadastroNovo.FieldByName('SITUACAO').AsString                      :=  'Finalizado';
      AMemTableCadastroNovo.FieldByName('CODUSUARIO').AsInteger                   :=  0;     //verificar depois
      AMemTableCadastroNovo.FieldByName('VALOR').AsFloat                          :=  Producao_Produto.FieldByName('VALOR').AsFloat;
      AMemTableCadastroNovo.FieldByName('PROTOCOLO').AsString                     :=  Producao_Produto.FieldByName('PROTOCOLO_BAIXA').AsString;
      AMemTableCadastroNovo.FieldByName('PROTOCOLO_PRINCIPAL').AsString           :=  AMemTableCadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
      AMemTableCadastroNovo.FieldByName('CODVENDA_PRODUTO').AsString              :=  Producao_Produto.FieldByName('CODVENDA_PRODUTO').AsString;
      AMemTableCadastroNovo.FieldByName('TEM_ARQUIVADO').AsString                 :=  'S';
      AMemTableCadastroNovo.FieldByName('ATIVO').AsString                         :=  'N';
      AMemTableCadastroNovo.FieldByName('TIPO_USO').AsString                      :=  cbxTipoUsoProduto.Text;
      if cbxTipoUsoProduto.Text = 'Desperdício' then
      begin
        AMemTableCadastroNovo.FieldByName('TEM_DESPESA').AsString         := 'S';
        AMemTableCadastroNovo.FieldByName('TEM_APROVEITAMENTO').AsString  := 'N';
      end
      else
      if cbxTipoUsoProduto.Text = 'Aproveitamento' then
      begin
        AMemTableCadastroNovo.FieldByName('TEM_APROVEITAMENTO').AsString  := 'S';
        AMemTableCadastroNovo.FieldByName('TEM_DESPESA').AsString         := 'N';
      end;

      AMemTableCadastroNovo.Post;


  {$REGION 'Região do Felipe'}

      if QuantSobra <> 0 then
      begin
        Producao_Produto.Insert;
//        Producao_Produto.CopyRecord(AProdutoMemoria);
        DSCopiarCamposIguais(AProdutoMemoria,Producao_Produto,['CODIGO']);
        WREventosCadastro.Regra_ValorInicial(Producao_Produto, 'PRODUCAO_PRODUTO');


        if QuantSobra > 0 then   //Se o Resultado for Positivo Ainda tem Material para Baixar
        begin
          Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat      := QuantSobra;
          Producao_Produto.FieldByName('QUANT').AsFloat               := 0;
          Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat       := 0;
          if chkTransformaRendimento.State = cbsChecked then   //Se o Cliente definiu para gerar o restante como rendimento
          begin                                              //Não ha movimentação de ESTOQUE aqui
            Producao_Produto.FieldByName('TIPO_USO').AsString         := 'Rendimento';
            Producao_Produto.FieldByName('ATIVO').AsString            := 'N';
            Producao_Produto.Post;
            GeraProducaoMovimento(TransaFD, Producao_Produto, 0);
          end;

        end
        else
        if QuantSobra < 0 then   //Se o Resultado for Negativo Passou do Previsto e vai baixar novamente o restante
        begin
          Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat        := 0;
          Producao_Produto.FieldByName('QUANT').AsFloat                 := Abs(QuantSobra);
          Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat         := Abs(QuantSobra);
          Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime   := DataHoraSys;
          Producao_Produto.FieldByName('ATIVO').AsString                := 'N';
          Producao_Produto.FieldByName('OBS_FATURAMENTO').AsString      := edtObservacaoEstoque.Text;
          Producao_Produto.FieldByName('TIPO_USO').AsString             := cbxTipoUsoProduto.Text;
          Producao_Produto.Post;
          Produzir(TransaFD, Abs(QuantSobra), Producao_Produto, EntradaSaida);
        end;


      end;
    {$ENDREGION}

      //AQUI INICIA EDUARDO

      QuerY := GeraFDQuery(TransaFD);
      QuerY.SQL.Text := 'SELECT * FROM PRODUCAO WHERE CODIGO = 0';
      QuerY.Open;

      QuerY.Insert;
      QuerY.CopyRecord(AMemTableCadastroNovo);
      QuerY.Post;

    finally
      AProdutoMemoria.Free;
      AMemTableCadastroNovo.Free;
      AMemTableCadastro.Free;
      QuerX.Free;
      QuerY.Free;
    end;

    btnConfirmar.Click;
    Producao_Produto.Refresh;
    Producao_Movimento.Refresh;
    UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;

  end;


  {$REGION 'CODIGO ANTIGO'}
//        if Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat = 0 then
//        begin
//          Producao_Produto.Edit;
//          Producao_Produto.FieldByName('QUANT').AsFloat                := edtQuantConsumo.Value;
//          Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat        := Producao_Produto.FieldByName('QUANT').AsFloat;
//          Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime  := DataHoraSys;
//          Producao_Produto.FieldByName('OBS_FATURAMENTO').AsString     := edtObservacaoEstoque.Text;
//          Producao_Produto.FieldByName('TIPO_USO').AsString            := cbxTipoUsoProduto.Text;
//          Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//          Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//
//          if (Producao_Produto.FieldByName('TIPO_USO').AsString = 'Despesa') then
//            Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N'
//          else
//            Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'S';
//
//          Producao_Produto.Post;
//          Produzir(Producao_Produto.FieldByName('QUANT').AsFloat, Producao_Produto, EntradaSaida);
//          FechaPanelForm(PnlBaixaEstoque);
//          UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(edtQuantConsumo.Value) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;
//          exit;
//        end

//        else
//        begin
//          if Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').IsNull then
//          begin
//            Producao_Produto.Edit;
//            Produzir(Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat, Producao_Produto, EntradaSaida);
//            Producao_Produto.FieldByName('QUANT').AsFloat               := Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat;
//            QuantSobra :=  ABS(edtQuantConsumo.Value - Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat);
//            Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat        := 0;
//            Producao_Produto.FieldByName('TIPO_USO').AsString            := 'Uso Normal';
//            Producao_Produto.FieldByName('OBSERVACAO').AsString          := edtObservacaoEstoque.Text;
//            Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//            Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime  := DataHoraSys;
//            Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//            Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N';
//            Producao_Produto.Post;
//            UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;
//          end;
//        end;
//        AProdutoMemoria := TFDMemTable.Create(nil);
//        AProdutoMemoria.CopyDataSet(Producao_Produto, [coStructure]);
//        AProdutoMemoria.Insert;
//        AProdutoMemoria.CopyRecord(Producao_Produto);
//        AProdutoMemoria.Post;
//
//        Producao_Produto.Insert;
//        WREventosCadastro.Regra_ValorInicial(Producao_Produto, 'PRODUCAO_PRODUTO');
//        CodProduto := Producao_Produto.FieldByName('CODIGO').AsString;
//        Producao_Produto.CopyRecord(AProdutoMemoria);
//        Producao_Produto.FieldByName('CODIGO').AsString              := CodProduto;
//        Producao_Produto.FieldByName('CODVENDA').AsString            := Cadastro.FieldByName('CODVENDA').AsString;
//        Producao_Produto.FieldByName('PARENT').AsInteger             := Codigo;
//        Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat       := 0;
//        Producao_Produto.FieldByName('OBSERVACAO').AsString          := edtObservacaoEstoque.Text;
//
//        if QuantSobra > 0 then
//          Producao_Produto.FieldByName('QUANT').AsFloat              := QuantSobra
//        else
//          Producao_Produto.FieldByName('QUANT').AsFloat              := edtQuantConsumo.Value;
//
//        Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat        := Producao_Produto.FieldByName('QUANT').AsFloat;
//        Producao_Produto.FieldByName('TIPO_USO').AsString            := cbxTipoUsoProduto.Text;
//        Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//        Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//        Produzir(Producao_Produto.FieldByName('QUANT').AsFloat, Producao_Produto, EntradaSaida);
//        Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime  := DataHoraSys;
//
//        if (Producao_Produto.FieldByName('TIPO_USO').AsString = 'Despesa') then
//          Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N'
//        else
//          Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'S';
//
//        Producao_Produto.Post;
//        UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;
//      finally
//        AProdutoMemoria.Free;
//      end;
//    end
//    else
//    /////////QUANT USADA <(MENOR) QUE A QUANT PREVISTA
//    if QuantTotal < Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat then
//    begin
//      try
//        if Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').IsNull then
//        begin
//          Producao_Produto.Edit;
//          Produzir(edtQuantConsumo.Value, Producao_Produto, EntradaSaida);
//          Producao_Produto.FieldByName('QUANT').AsFloat                := edtQuantConsumo.Value;
//          Producao_Produto.FieldByName('QUANT_FATURAR').Clear;
//          Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime  := DataHoraSys;
//          Producao_Produto.FieldByName('TIPO_USO').AsString            := cbxTipoUsoProduto.Text;
//          Producao_Produto.FieldByName('OBSERVACAO').AsString          := edtObservacaoEstoque.Text;
//          Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//          Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//          Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N';
//          Producao_Produto.Post;
//          UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;
//        end;
//        AProdutoMemoria := TFDMemTable.Create(nil);
//        AProdutoMemoria.CopyDataSet(Producao_Produto, [coStructure]);
//        AProdutoMemoria.Insert;
//        AProdutoMemoria.CopyRecord(Producao_Produto);
//        AProdutoMemoria.Post;
//
//        Producao_Produto.Insert;
//        WREventosCadastro.Regra_ValorInicial(Producao_Produto, 'PRODUCAO_PRODUTO');
//        CodProduto := Producao_Produto.FieldByName('CODIGO').AsString;
//        Producao_Produto.CopyRecord(AProdutoMemoria);
//        Producao_Produto.FieldByName('CODIGO').AsString              := CodProduto;
//        Producao_Produto.FieldByName('PARENT').AsInteger             := Codigo;
//        Producao_Produto.FieldByName('CODVENDA').AsString            := Cadastro.FieldByName('CODVENDA').AsString;
//        Producao_Produto.FieldByName('QUANT').AsFloat                := 0;
//        Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat       := Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat - edtQuantConsumo.Value;
//        Producao_Produto.FieldByName('QUANT_FATURAR').Clear;
//        Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//        Producao_Produto.FieldByName('OBSERVACAO').AsString          := edtObservacaoEstoque.Text;
//        Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//        Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').Clear;
//        Producao_Produto.FieldByName('TIPO_USO').Clear;
//        Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N';
//        Producao_Produto.Post;
//      finally
//        AProdutoMemoria.Free;
//      end;
//    end
//    else
//    //////////QUANT USADA = QUANT PREVISTA
//    if QuantTotal = Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat then
//    begin
//
//      Producao_Produto.Edit;
//      Produzir(QuantTotal, Producao_Produto, EntradaSaida);
//      Producao_Produto.FieldByName('QUANT').AsFloat                 := QuantTotal;
//      Producao_Produto.FieldByName('QUANT_FATURAR').AsFloat         := 0;
//      Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime   := DataHoraSys;
//      Producao_Produto.FieldByName('OBSERVACAO').AsString           := edtObservacaoEstoque.Text;
//      Producao_Produto.FieldByName('TIPO_USO').AsString             := cbxTipoUsoProduto.Text;
//      Producao_Produto.FieldByName('CODUSUARIO').AsInteger          := cxbFuncionarioProduto.EditValue;
//      Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger  := cxbCentroTrabalhoProduto.EditValue;
//      Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N';
//
//      Producao_Produto.post;
//      UCHist_Cadastro.MensagemHistorico.Text := '['+cbxTipoUsoProduto.Text+'] ' +  FloatToStr(Producao_Produto.FieldByName('QUANT').AsFloat) + ' ' + Producao_Produto.FieldByName('UNIDADE').AsString + ' de ' + Producao_Produto.FieldByName('DESCRICAO').AsString + ' Obs: ' + edtObservacaoEstoque.Text;
//    end;
//  end
//  else
//  begin
//    Producao_Produto.Edit;
//    Producao_Produto.FieldByName('TIPO_USO').AsString            := cbxTipoUsoProduto.Text;
//    Producao_Produto.FieldByName('CODUSUARIO').AsInteger         := cxbFuncionarioProduto.EditValue;
//    Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger := cxbCentroTrabalhoProduto.EditValue;
//    if (Producao_Produto.FieldByName('TIPO_USO').AsString = 'Despesa') then
//      Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'N'
//    else
//      Producao_Produto.FieldByName('PODE_FATURAR').AsString := 'S';
//    Producao_Produto.post;
//  end;
{$ENDREGION}
  FechaPanelForm(PnlBaixaEstoque);
end;

class procedure TFrame_Cad_Producao.GeraProducaoMovimento(ATransa :TFDTransaction; AProducao_Produto:TDataSet; ACodProduto_Movimento :Integer);
var
  QuerProducao_Movimento :TFDQuery;
begin
  QuerProducao_Movimento := GeraFDQuery(ATransa);
  QuerProducao_Movimento.SQL.Text := 'Select PE.* From Producao_Movimento PE';
  QuerProducao_Movimento.Open;
  try
    QuerProducao_Movimento.Insert;
    DSCopiarCamposIguais(AProducao_produto, QuerProducao_Movimento, ['CODIGO', 'CODUSUARIO_RESPONSAVEL', 'DATA', 'PRODUCAO_ESTAGIO', 'PRODUCAO_MOTIVO']);
    QuerProducao_Movimento.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_PRODUCAO_ETAPAS'));
//    QuerProducao_Movimento.FieldByName('CODVENDA').AsString                := AProducao_produto.FieldByName('CODVENDA').AsString;
//    QuerProducao_Movimento.FieldByName('CODVENDA_PRODUTO').AsInteger       := AProducao_produto.FieldByName('CODVENDA_PRODUTO').AsInteger;
//    QuerProducao_Movimento.FieldByName('CODPRODUCAO').AsInteger            := AProducao_produto.FieldByName('CODPRODUCAO').AsInteger;
//    QuerProducao_Movimento.FieldByName('CODCENTRO_TRABALHO').AsInteger     := AProducao_produto.FieldByName('CODCENTRO_TRABALHO').AsInteger;
//    QuerProducao_Movimento.FieldByName('SITUACAO').Value                   := AProducao_produto.FieldByName('SITUACAO').AsString;
//    QuerProducao_Movimento.FieldByName('CODUSUARIO').Value                 := AProducao_produto.FieldByName('CODUSUARIO').AsInteger;

    if AProducao_produto.FieldByName('TIPO_USO').AsString = 'Rendimento' then
      QuerProducao_Movimento.FieldBYName('QUANT').AsFloat                  := AProducao_produto.FieldByName('QUANT_PREVISTA').AsFloat
    else
      QuerProducao_Movimento.FieldBYName('QUANT').AsFloat                  := AProducao_produto.FieldByName('QUANT').AsFloat;

    QuerProducao_Movimento.FieldBYName('CODPRODUCAO_PRODUTO').AsInteger    := AProducao_produto.FieldByName('CODIGO').AsInteger;
    QuerProducao_Movimento.FieldBYName('CODPRODUTO_MOVIMENTO').Value       := ACodProduto_Movimento;
//    QuerProducao_Movimento.FieldByName('PRODUCAO_ESTAGIO').Value           := AProducao.FieldByName('PRODUCAO_ESTAGIO').AsString;
//    QuerProducao_Movimento.FieldByName('PRODUCAO_MOTIVO').Value            := AProducao.FieldByName('PRODUCAO_MOTIVO').AsString;
    QuerProducao_Movimento.FieldByName('OBSERVACAO').Value                 := AProducao_produto.FieldByName('OBS_FATURAMENTO').AsString;
    QuerProducao_Movimento.FieldByName('CODUSUARIO_RESPONSAVEL').AsInteger := Usuario.Codigo;
    QuerProducao_Movimento.FieldByName('DT_ALTERACAO').Value               := DataHoraSys;
    QuerProducao_Movimento.Post;
  finally
    QuerProducao_Movimento.Free;
  end;
end;

procedure TFrame_Cad_Producao.cxbCentroTrabalhoProdutoPropertiesChange(
  Sender: TObject);
begin
  inherited;
//  PreencheLookUpFuncionarios(cxbFuncionarioProduto.Properties, Producao_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger);
  PreencheLookUpFuncionariosEquipe(cxbFuncionarioProduto.Properties, cxbCentroTrabalhoProduto.EditValue);
end;

procedure TFrame_Cad_Producao.cxbCentroTrabalhoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  PreencheLookUpFuncionarios(cxbUsuario.Properties, Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger);
//  if TcxLookupComboBoxProperties(cxbUsuario.Properties).ListSource <> nil then         //VALIDATE
    PreencheLookUpFuncionariosEquipe(cxbFuncionario.Properties, Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger);
end;

procedure TFrame_Cad_Producao.BtnAdicionaServicoClick(Sender: TObject);
begin
  inherited;
  if not(Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull) then
  begin
    ShowMessage('Não é possivel adicionar novos itens pois a venda já está em fase de faturamento');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  ProducaoProdutoServico.Insert;
  ProducaoProdutoServico.FieldByName('CODIGO').AsInteger     := GetProximoCodigo('PRODUCAO_PRODUTO', TransaFD);
  ProducaoProdutoServico.FieldByName('CODVENDA').AsString    := Cadastro.FieldByName('CODVENDA').AsString;
//  WREventosCadastro.Regra_ValorInicial(Producao_Produto, 'PRODUCAO_PRODUTO');
  ProducaoProdutoServico.FieldByName('PROTOCOLO').AsString   := Cadastro.FieldByName('PROTOCOLO').AsString;
end;

procedure TFrame_Cad_Producao.AdicionarReceita;
begin
  try
    WRCalcMemoria.SprFechaMemTables;
    if Not TFrmProduto_Wizard.ExecutaWizard(FFrmProduto_Wizard, edtCodProdutoÎPRODUTO.text, WRCalcMemoria, PmComposicao) then
      Exit;
    VerificaSePodeAlteraDataSet(Cadastro);
    Cadastro.FieldByName('QUANT_PRODUZIR').Value      := WRCalcmemoria.DBProduto.FieldByName('QUANT').Value;
    Cadastro.FieldByName('COMP').Value                := WRCalcmemoria.DBProduto.FieldByName('COMP').Value;
    Cadastro.FieldByName('LARG').Value                := WRCalcmemoria.DBProduto.FieldByName('LARG').Value;
    Cadastro.FieldByName('ESPESSURA').Value           := WRCalcmemoria.DBProduto.FieldByName('ESPESSURA').Value;
    Cadastro.FieldByName('QTDADEPECA').Value          := WRCalcmemoria.DBProduto.FieldByName('QTDADEPECA').Value;

    DataSetCopiaRecursivoCamposIguais(PmPrincipal.Composicao, Producao_Produto, Producao_Produto.FieldbyName('Codigo').AsInteger,
        ['CODIGO', 'ORDEM', 'CODVENDA', 'CODVENDA_PRODUTO'],PmPrincipal.TreeListComposicao.GetTreeList);


    WRCalc.SprFechaMemTables;  //CalculaProduto
    Producao_Produto.Refresh;  //<<<<<<< pRECISO DISSO
  //  WRCalc.CalcBuild;  //CalculaProduto
    //WRCalc.SuperCalc;  //CalculaProduto

  finally
    FFrmProduto_Wizard.Free;
    FFrmProduto_Wizard := nil;
  end;
end;

procedure TFrame_Cad_Producao.btnProduzirClick(Sender: TObject);
var
  QuantFalta : Double;
begin
  inherited;
//  VerificaSePodeAlteraDataSet(Cadastro);
  btnAlterar.Click;
  QuantFalta := Cadastro.FieldByName('QUANT_PRODUZIR').AsFloat - Cadastro.FieldByName('QUANT').AsFloat;
  if QuantFalta > 0 then
    edtQuantProduzida.value := QuantFalta
  else
    edtQuantProduzida.value := 0;
  ShowPanelForm(PnlProduzir, bsSingle, edtQuantProduzida);
end;

procedure TFrame_Cad_Producao.btnCancelarBaixaClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlBaixaEstoque);
end;

procedure TFrame_Cad_Producao.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  inherited;
  //Aqui tem que desabilitar fazer o locate na conulta, e fechar e abrir o cadastro.
  if Cadastro.MasterSource = Nil then
  begin
    if Assigned(FConsulta) then
      Cadastro.MasterSource := TFrame_ConsuProducao_Mestre(TFrmBase(FConsulta).FrameConsulta).DS;
  end;
//  TFrame_ConsuProducao_Mestre(FConsulta).AtualizarKanban;
//  TConsuProducao(FConsulta).Consulta.Refresh;
end;

procedure TFrame_Cad_Producao.lblNumeroVendaClick(Sender: TObject);
begin
  inherited;
  ProcuraPedido(Cadastro.FieldByName('CODVENDA').AsString);
end;

procedure TFrame_Cad_Producao.BtnAdicionaTarefaClick(Sender: TObject);
begin
  inherited;
  if not(Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull) then
  begin
    ShowMessage('Não é possivel adicionar novos itens pois a venda já está em fase de faturamento');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  Producao_Produto.Insert;
//  Producao_Produto.FieldByName('CODIGO').AsInteger     := GetProximoCodigo('PRODUCAO_PRODUTO', TransaFD);
  Producao_Produto.FieldByName('CODVENDA').AsString    := Cadastro.FieldByName('CODVENDA').AsString;
//  WREventosCadastro.Regra_ValorInicial(Producao_Produto, 'PRODUCAO_PRODUTO');
  Producao_Produto.FieldByName('PROTOCOLO_PRINCIPAL').AsString   := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString;
  Producao_Produto.FieldByName('PROTOCOLO').AsString             := Cadastro.FieldByName('PROTOCOLO').AsString;
  Producao_Produto.FieldByName('CODUSUARIO').AsInteger           := Usuario.Codigo;
  Producao_Produto.FieldByName('DT_EMISSAO').AsDateTime          := DataHoraSys;
//  Producao_Produto.FieldByName('').AsString :=
end;


procedure TFrame_Cad_Producao.AdicionaTarefa(CodUsuario: Integer; Descricao: String);
var
  QuerX, QuerServico :TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerServico := GeraFDQuery;
  try

    {
    QuerServico.SQL.Text := 'Select * from produto p where p.codigo = :CodProduto';

    QuerX.SQL.Text := 'select r.* from recurso r '+
                      'left join pessoas p on p.codigo = r.pessoa_responsavel_codigo '+
                      'left join usuario u on u.codfuncionario = p.codigo '+
                      'where u.codigo = :CodUsuario';
    QuerX.ParamByName('CodUsuario').Value := CodUsuario;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      //btnAlterar.Click;
      if not(QuerX.FieldByName('CODPRODUTO').IsNull) then
      begin
        ProducaoProdutoServico.First;
        while not ProducaoProdutoServico.Eof do
        begin
          if ProducaoProdutoServico.FieldByName('CODPRODUTO').AsString = QuerX.FieldByName('CODPRODUTO').AsString then
          begin
            if ProducaoProdutoServico.FieldByName('DT_FINALIZADO').IsNull then
            begin
              ProducaoProdutoServico.Edit;
              ProducaoProdutoServico.FieldByName('DT_PREVISAO_INICIO').AsDateTime := DataHoraSys;
              ProducaoProdutoServico.FieldByName('CODUSUARIO').AsInteger          := CodUsuario;
              ProducaoProdutoServico.FieldByName('USUARIO').AsString              := Usuario.Nome;
              ProducaoProdutoServico.FieldByName('TIPO_USO').AsString             := 'Fatura';
              ProducaoProdutoServico.Post;
              Exit;
            end;
          end;
          ProducaoProdutoServico.Next;
        end;

        QuerServico.ParamByName('CodProduto').AsString := QuerX.FieldByName('CODPRODUTO').AsString;
        QuerServico.Open;
        ProducaoProdutoServico.Insert;
        ProducaoProdutoServico.FieldByName('CODPRODUTO').AsString           := QuerServico.FieldByName('CODIGO').AsString;
        ProducaoProdutoServico.FieldByName('DESCRICAO').AsString            := QuerServico.FieldByName('DESCRICAO').AsString;
        ProducaoProdutoServico.FieldByName('CODVENDA_PRODUTO').AsString     := Cadastro.FieldByName('CODVENDA_PRODUTO').AsString;
        ProducaoProdutoServico.FieldByName('DT_PREVISAO_INICIO').AsDateTime := DataHoraSys;
        ProducaoProdutoServico.FieldByName('CODUSUARIO').AsInteger          := CodUsuario;
        ProducaoProdutoServico.FieldByName('PRODUTO_TIPO').AsString         := 'SERVICO';
        ProducaoProdutoServico.FieldByName('TIPO_USO').AsString             := 'Fatura';
        ProducaoProdutoServico.Post;
      end;
      //Aqui vai ter Verifica Serviço Equipe
      ProducaoProdutoServico.Refresh;
    //  btnConfirmar.Click;
    end else
    begin
      ShowMessage('O usuário atual não esta definido como recurso');
      //Perguntar se deseja cadastrar
      exit;
    end;}
  finally
    QuerX.Free;
    QuerServico.Free;
  end;
























//  QuerX := GeraFDQuery;
//  QuerX.SQL.Text := 'select * from Producao_Tempo';
//  QuerX.Open;
//  QuerX.Insert;
//  QuerX.FieldByName('CODPRODUCAO').AsInteger                  := Cadastro.FieldByName('CODIGO').AsInteger;
//  QuerX.FieldByName('CODCENTRO_TRABALHO').AsInteger           := Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger;
//  QuerX.FieldByName('CODUSUARIO').AsInteger                   := CodUsuario;
//  QuerX.FieldByName('PROTOCOLO').AsString                     := Cadastro.FieldByName('PROTOCOLO').AsString;
////  QuerX.FieldByName('CODPRODUCAO_OS').AsString              := 'SERVICO';
////  QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := 'SERVICO';
////  QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsString  := 'SERVICO';
////  QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := 'SERVICO';
//  QuerX.FieldByName('TEMPO_INICIO').AsDateTime                := DataHoraSys;
//  QuerX.Post;
//  QuerX.Transaction.Commit;
////  VerificaSePodeAlteraDataSet;
////  Producao_Produto.Insert;
////  Producao_Produto.FieldByName('CODUSUARIO').AsInteger := CodUsuario;
////  Producao_Produto.FieldByName('DESCRICAO').AsString := Descricao;
////  Producao_Produto.FieldByName('DT_EMISSAO').AsDateTime := DataHoraSys;
////  Producao_Produto.FieldByName('PRODUTO_TIPO').AsString  := 'SERVICO';
////  Producao_Produto.Refresh;


end;

procedure TFrame_Cad_Producao.Arquivar1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja arquivar a Produção?', MB_ICONQUESTION) = mrYes then
  begin
    btnAlterar.Click;
    Cadastro.FieldByName('ATIVO').AsString:= 'N';
    btnConfirmar.Click;
  end;
end;

procedure TFrame_Cad_Producao.Arquivar2Click(Sender: TObject);
begin
  inherited;
  btnAlterar.Click;
  Cadastro.FieldByName('SITUACAO').AsString:= 'Produzindo';
  btnConfirmar.Click;
end;

procedure TFrame_Cad_Producao.PausaTarefa(ACodUsuario: Integer);
Var
  Tempo :Double;
  QuerX :TFDQuery;
  AAchou :String;
begin
  AAchou := 'N';
  ProducaoProdutoServico.First;
  while not ProducaoProdutoServico.EoF do
  begin
    if ProducaoProdutoServico.FieldByName('CODUSUARIO').AsInteger = Usuario.Codigo then
    begin
      btnAlterar.Click;
//      if ProducaoProdutoServico.FieldByName('DT_FINALIZADO').IsNull then
//      begin
        ProducaoProdutoServico.Edit;
        AAchou := 'S';
        Cadastro.FieldByName('TEM_PARADO').AsString := 'S';
        Cadastro.FieldByName('TEM_TRABALHANDO').AsString := 'N';
//        ProducaoProdutoServico.FieldByName('DT_FINALIZADO').AsDateTime := DataHoraSys;
//        Tempo := MinutesBetween(ProducaoProdutoServico.FieldByName('DT_PREVISAO_INICIO').AsDateTime, ProducaoProdutoServico.FieldByName('DT_FINALIZADO').AsDateTime);
//        Tempo := Tempo/60;
//        ProducaoProdutoServico.FieldByName('QUANT').AsFloat := RoundTo(Tempo, -2);
        ProducaoProdutoServico.Post;
        Produzir(TransaFD, ProducaoProdutoServico.FieldByName('QUANT').AsFloat, ProducaoProdutoServico, 'S');
//      end;
      btnConfirmar.Click;
    end;
    ProducaoProdutoServico.Next;
  end;
  if AAchou = 'N' then
  begin
    ShowMessage('Não foi localizado nenhum serviço iniciado por: '+ Usuario.Nome);
    Exit;
  end;


//  QuerX := GeraFDQuery;
//  QuerX.SQL.Text := 'select * from Producao_Tempo';
//  QuerX.Open;
//  //  Aqui deve Estar a Funcão da Tela Planilha de Horário
//  //  Na Configuração da Planilha informar qual é o Serviço correspondente, Para esse usuário
//  // Se não tiver essa configuração não lança a despesa
//
////  VerificaSePodeAlteraDataSet;
//  while not QuerX.Eof do
//  begin
//    if QuerX.FieldByName('TEMPO_FIM').IsNull then
//    begin
//      if QuerX.FieldByName('CODUSUARIO').AsInteger = ACodUsuario then
//      begin
//        QuerX.Edit;
//        QuerX.FieldByName('TEMPO_FIM').AsDateTime := DataHoraSys;
//        QuerX.Post;
////        Tempo := SecondsBetween(Producao_Produto.FieldByName('DT_EMISSAO').AsDateTime,Producao_Produto.FieldByName('DT_FINALIZADO').AsDateTime);
////        if Tempo >= 60 then
////          Tempo := (Tempo/60);
////        producao_Produto.FieldByName('QUANT').AsFloat := Tempo;
////        Cadastro.FieldByName('TEMPO').AsFloat := Cadastro.FieldByName('TEMPO').AsFloat +  Tempo;
//      end;
//    end;
//    QuerX.next;
//  end;
//  QuerX.Transaction.Commit;



//  VerificaSePodeAlteraDataSet;
//  while not Producao_Produto.Eof do
//  begin
//    if Producao_Produto.FieldByName('DT_FINALIZADO').IsNull then
//    begin
//      if Producao_Produto.FieldByName('CODUSUARIO').AsInteger = ACodUsuario then
//      begin
//        Producao_Produto.Edit;
//        Producao_Produto.FieldByName('DT_FINALIZADO').AsDateTime := DataHoraSys;
//        Tempo := SecondsBetween(Producao_Produto.FieldByName('DT_EMISSAO').AsDateTime,Producao_Produto.FieldByName('DT_FINALIZADO').AsDateTime);
//        if Tempo >= 60 then
//          Tempo := (Tempo/60);
//        producao_Produto.FieldByName('QUANT').AsFloat := Tempo;
//        Cadastro.FieldByName('TEMPO').AsFloat := Cadastro.FieldByName('TEMPO').AsFloat +  Tempo;
//      end;
//    end;
//    Producao_Produto.next;
//  end;
//  Producao_Produto.Refresh;
end;

procedure TFrame_Cad_Producao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('PRODUZIR ' + FloatToStr(edtQuantProduzida.Value) + ' ' + Cadastro.FieldByName('UNIDADE').AsString + ' DE ' + Cadastro.FieldByName('PRODUTO').AsString, MB_ICONQUESTION) = mrYes then
  begin
    Cadastro.FieldByName('QUANT').AsFloat := Produzir(TransaFD, edtQuantProduzida.Value, Cadastro, 'E');
    FechaPanelForm(PnlProduzir);
    btnConfirmar.click;
//    if edtQuantProduzida.Value < Cadastro.FieldByName('QUANT_PRODUZIR').AsFloat then
  end;
end;

procedure TFrame_Cad_Producao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlProduzir);
end;

procedure TFrame_Cad_Producao.btnRemoverTarefaClick(Sender: TObject);
begin
  inherited;
  if not(Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull) or not(Cadastro.FieldByName('DT_FIM').IsNull) then
  begin
    ShowMessage('Não é possivel remover itens pois a produção foi finalizada ou a venda já está em fase de faturamento');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  if Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').IsNull then
  begin
    Producao_Produto.Edit;
    Producao_Produto.FieldByName('ATIVO').AsString := 'N';
    Producao_Produto.Post;
    UCHist_Cadastro.MensagemHistorico.Text := 'Removeu o Item: ' + Producao_Produto.FieldByName('DESCRICAO').AsString;
    Producao_Produto.Refresh;

  end else
    ShowMessage('Esse Item já foi baixado no estoque, não é possivel remover');
end;

procedure TFrame_Cad_Producao.btnTarefasClienteClick(Sender: TObject);
begin
  inherited;
//  TFrmExcel.Abrir(WRCalc, 'CalcProducao');

  MenuOpcoes.PopupOnMouse;
end;

procedure TFrame_Cad_Producao.imgImagemDblClick(Sender: TObject);
begin
  inherited;
  ShowImagem(imgImagem);
end;

procedure TFrame_Cad_Producao.imgImagemPropertiesEditValueChanged(Sender: TObject);
const
  cImageWidth  = 107;
  cImageHeight = 107;
var
  destBmp: TcxAlphaBitmap;
  png: TdxPNGImage;
begin
  inherited;
{  if not Assigned(TcxImage(Sender).Picture.Graphic) then
    Exit;
//  AFrameAnexos.       Tem que salvar Miniatura no HD, Nos anexos e tranferir para o driver
  TcxImage(Sender).Properties.OnEditValueChanged := nil;
  try
    destBmp := TcxAlphaBitmap.CreateSize(cImageWidth, cImageHeight);
    png := TdxPNGImage.Create;
    try
      if (TcxImage(Sender).Picture.Graphic is TBitmap) and (cxGetBitmapPixelFormat(TcxImage(Sender).Picture.Graphic as TBitmap) <> 32) then
      begin
        TcxImage(Sender).Picture.Bitmap.PixelFormat := pf32bit;
        cxSmoothResizeBitmap(cxGetAsBitmap(TcxImage(Sender).Picture.Graphic), destBmp, false)
      end
      else
        cxSmoothResizeBitmap(cxGetAsBitmap(TcxImage(Sender).Picture.Graphic), destBmp, false);
      png.SetBitmap(destBmp);
      TcxImage(Sender).Picture.Assign(png);
      TcxImage(Sender).Refresh;
    finally
      png.free;
      destBmp.Free;
    end;
  finally
    TcxImage(Sender).Properties.OnEditValueChanged := imgImagemPropertiesEditValueChanged;
  end;   }
end;

{$ENDREGION}

{$REGION 'Inutilizado'}
procedure TFrame_Cad_Producao.Abrircadastrodocliente1Click(Sender: TObject);
begin
  inherited;
  CadastroTag_NormalChave(Self, Tag_Pessoas, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value );
end;

procedure TFrame_Cad_Producao.ActDesvincularMaterialExecute(Sender: TObject);
var
  i: Integer;
  ALista: TList<Integer>;
  AMsg: string;
begin
  inherited;
  ALista := TList<Integer>.Create;
  try
    for I := 0 to TreeListComposicao.SelectionCount - 1 do
      ALista.Add(TcxTreeListNode(TreeListComposicao.SelectionList[i]).Values[cxDBTreeList1CODIGO.ItemIndex]);

    if ALista.Count = 0 then
      Exit;
    if ALista.Count > 1 then
      AMsg := 'Deseja Desvincular os Materiais selecionados desta OS?'
    else
      AMsg := 'Deseja Desvincular este Material desta OS?';
    if ShowMessageWR(AMsg, MB_ICONQUESTION) <> mrYes then
      Exit;

    VerificaSePodeAlteraDataSet;
    for I := 0 to ALista.Count - 1 do
    begin
      DSLocateWR(Producao_Produto, ALista[i]);
      if Producao_Produto.FieldByName('CODPRODUCAO_OS').AsInteger = Cadastro.FieldByName('CODPRODUCAO_OS').AsInteger then
      begin
        Producao_Produto.Edit;
        Producao_Produto.FieldByName('CODPRODUCAO_OS').Clear;
        Producao_Produto.Post;
      end;
    end;
  finally
    ALista.Free;
  end;
end;

procedure TFrame_Cad_Producao.ActAdicionarReceitaExecute(Sender: TObject);
begin
  inherited;
  AdicionarReceita;
end;

procedure TFrame_Cad_Producao.ActTransformarEmProducaoExecute(Sender: TObject);
var
  i: Integer;
  ALista: TList<Integer>;
  AMemTableCadastro: TFDMemTable;
  AMemTableProducaoProduto: TFDMemTable;
begin
  inherited;
  ALista := TList<Integer>.Create;
  try
    AMemTableProducaoProduto      := TFDMemTable.Create(nil);
    AMemTableCadastro             := TFDMemTable.Create(nil);

    AMemTableProducaoProduto.Data := Producao_Produto.Data;
    AMemTableCadastro.Data        := Cadastro.Data;

    Cadastro.insert;

//    ConfigCamposForm.PreencheValoresIniciaisDataSet(Cadastro);

    WREventosCadastro.Regra_ValorInicial(Cadastro, 'PRODUCAO');

    DSCopiarCamposIguais(AMemTableCadastro,Cadastro,['CODIGO']);
    Cadastro.Post;

    AMemTableProducaoProduto.First;
    while not AMemTableProducaoProduto.Eof do
    begin
      Producao_Produto.insert;
      DSCopiarCamposIguais(AMemTableProducaoProduto,Producao_Produto,['CODIGO', 'CODPRODUCAO'{, 'DT_FINALIZADO'}]);
    //  Producao_Produto.FieldByName('CODPRODUCAO').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
      Producao_Produto.Post;
      AMemTableProducaoProduto.Next;
    end;

    {for I := 0 to TreeListComposicao.SelectionCount - 1 do
       ALista.Add(TcxTreeListNode(TreeListComposicao.SelectionList[i]).Values[cxDBTreeList1CODIGO.ItemIndex]);


    AMemTableProducaoProduto.Data := Producao_Produto.Data;

    for I := 0 to ALista.Count - 1 do
    begin
      DSLocateWR(Producao_Produto, ALista[i]);

      DSLocateWR(AMemTableProducaoProduto, ALista[i]);
      Cadastro.insert;
      ConfigCamposForm.PreencheValoresIniciaisDataSet(Cadastro);
      DSCopiarCamposIguais(AMemTableProducaoProduto,Cadastro,['CODIGO']);
      Cadastro.Post;
    end;  }
    Cadastro.Transaction.Commit;
    Cadastro.Refresh;
  finally
    AMemTableCadastro.Free;
    AMemTableProducaoProduto.Free;
    ALista.Free;
  end;
end;

procedure TFrame_Cad_Producao.ActVincularMaterialExecute(Sender: TObject);
var
  i: Integer;
  ALista: TList<Integer>;
  AMsg: string;
begin
  inherited;
  ALista := TList<Integer>.Create;
  try
    for I := 0 to TreeListComposicao.SelectionCount - 1 do
      ALista.Add(TcxTreeListNode(TreeListComposicao.SelectionList[i]).Values[cxDBTreeList1CODIGO.ItemIndex]);

    if ALista.Count = 0 then
      Exit;
    if ALista.Count > 1 then
      AMsg := 'Deseja Vincular os Materiais selecionados nesta OS?'
    else
      AMsg := 'Deseja Vincular este Material nesta OS?';
    if ShowMessageWR(AMsg, MB_ICONQUESTION) <> mrYes then
      Exit;

    VerificaSePodeAlteraDataSet;
    for I := 0 to ALista.Count - 1 do
    begin
      DSLocateWR(Producao_Produto, ALista[i]);
      Producao_Produto.Edit;
      Producao_Produto.FieldByName('CODPRODUCAO_OS').Value := Cadastro.FieldByName('CODIGO').Value;
      Producao_Produto.Post;
    end;
  finally
    ALista.Free;
  end;
end;

procedure TFrame_Cad_Producao.btnFinalizaOSClick(Sender: TObject);
var
  AObservacao: string;
begin
  inherited;
  if not TFrmObservacao.GetObservacao('Observação para Finalizar a O.S.', 0, AObservacao) then
    Exit;

  VerificaSePodeAlteraDataSet;

 { if ProducaoFinalizarOS(Producao, Cadastro, AObservacao) then
    CloseOpen_AbrirRegistro(Cadastro.FieldByName('CODIGO').AsInteger)
  else
    ShowMessageWR('A O.S. não foi finalizada.', MB_ICONWARNING);   }
end;

procedure TFrame_Cad_Producao.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  Cadastro.FieldByName('CODPRODUCAO').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;//SQLProdcaoMaxCodProducao(TransaFD);

  Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString  := GeraProtocolo;
  Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsInteger := SQLProducaoMaxSequencia(TransaFD, Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString );
  Cadastro.FieldByName('PROTOCOLO').AsString            := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').AsString+'-'+Cadastro.FieldByName('SEQUENCIA_PROTOCOLO').AsString;

  Cadastro.FieldByName('CODANEXO').Value := Cadastro.FieldByName('PROTOCOLO_PRINCIPAL').Value;
  TabInformacoes.MakeVisible;
end;

procedure TFrame_Cad_Producao.lblTempoTotalOPDisplayClick(Sender: TObject);
begin
  inherited;
  FrmPrincipal.ActivateBalloonHint(lblTempoTotalOPDisplay, '', lblTempoTotalOPDisplay.Hint, mtInformation, 4000);
end;

procedure TFrame_Cad_Producao.MenuComposicaoPopup(Sender: TObject);
begin
  inherited;
  ActDesvincularMaterial.Visible := not Producao_Produto.FieldByName('CODPRODUCAO_OS').IsNull;
  ActVincularMaterial.Visible    := Producao_Produto.FieldByName('CODPRODUCAO_OS').IsNull;
  ransformaremProducao1.Enabled  := (Producao_Produto.RecordCount>0);
end;

procedure TFrame_Cad_Producao.OsdesseCliente1Click(Sender: TObject);
//Var
//  AForm: TConsuProducao;
begin
  inherited;
//  AForm:= TConsuProducao(ConsultaForm(TConsuProducao));
//  with AForm do
//  begin
//    Application.ProcessMessages;
//    GridConsultaDBTableView1.DataController.BeginUpdate;
//    edtRapidoAgrupar.Text := '-Agrupar Por-';
//    GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
//    FDashboardsFiltro := '(PO.ATIVO = ''S'')AND(P.PESSOA_RESPONSAVEL_CODIGO = '''+Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString +''')';
//    EdtPesquisa.Text := '';
//    edtRapidoFiltro.Text := '-Filtros Rápidos-';
//    GridConsultaDBTableView1.DataController.EndUpdate;
//    FormStyle:=fsMDIChild;
//    MemTreeList.Locate('TABELA', 'TODAS',[]);
//  end;
end;

procedure TFrame_Cad_Producao.btnRemoverServicoClick(Sender: TObject);
begin
  inherited;
  if not(Cadastro.FieldByName('DT_VENDA_PRODUCAO').IsNull) or not(Cadastro.FieldByName('DT_FIM').IsNull) then
  begin
    ShowMessage('Não é possivel remover itens pois a produção foi finalizada ou a venda já está em fase de faturamento');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  if ProducaoProdutoServico.FieldByName('DT_PREVISAO_INICIO').IsNull then
  begin
    ProducaoProdutoServico.Edit;
    ProducaoProdutoServico.FieldByName('ATIVO').AsString := 'N';
    ProducaoProdutoServico.Post;
    UCHist_Cadastro.MensagemHistorico.Text := 'Removeu o Item: ' + ProducaoProdutoServico.FieldByName('DESCRICAO').AsString;
    ProducaoProdutoServico.Refresh;

  end else
    ShowMessage('Esse Item já foi iniciado, não é possivel remover');
end;

procedure TFrame_Cad_Producao.EdtCaminhoArquivoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AFolder: TOpenFolderDialog;
begin
  inherited;
  AFolder := TOpenFolderDialog.Create(nil);
  try
    if AFolder.Execute then
    begin
      VerificaSePodeAlteraDataSet;
      Cadastro.FieldByName('PATH').AsString := AFolder.FolderName;
    end;
  finally
    AFolder.Free;
  end;
end;

procedure TFrame_Cad_Producao.EdtTempoEstimadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmEntradaTempo.SetTempoField(Cadastro.FieldByName('TEMPO_ESTIMADO'));
end;

procedure TFrame_Cad_Producao.edtTempoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmEntradaTempo.SetTempoField(Cadastro.FieldByName('TEMPO'));
end;

procedure TFrame_Cad_Producao.EdtTempoRealGastoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrmEntradaTempo.SetTempoField(Cadastro.FieldByName('TEMPO'));
end;

procedure TFrame_Cad_Producao.edtQuantConsumoPropertiesChange(Sender: TObject);
begin
  inherited;
  lichkTransformaRendimento.Visible := edtQuantConsumo.Value < Producao_Produto.FieldByName('QUANT_PREVISTA').AsFloat
end;

procedure TFrame_Cad_Producao.GridRecursosDBTableView1TIPOGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
//  AText := RecursoTipoStrToDescricao(VarToStrDef(ARecord.Values[GridRecursosDBTableView1TIPO.Index], ''));
end;

procedure TFrame_Cad_Producao.GrupoTabsTabChanged(Sender: TObject);
begin
  inherited;
  if TabAnexos.ActuallyVisible then
    TFrameAnexosProducao.CarregaFrame1(AFrameAnexosProducao, PnlFrameAnexos, DS, UCHist_Cadastro);
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, TransaFD);
//    FFrameHistorico.cxGrid1DBBandedTableView1.DataController.GotoLast;
  if Cadastro.State in dsEditModes then
    btnConfirmar.Click;  // Post importante para multiplos usuarios, não dar deadLook
end;

class procedure TFrame_Cad_Producao.PreencheDadosScheduler(ADataSet: TDataSet);
const
  ARecurrenceInfoData: TcxSchedulerCustomRecurrenceInfoData = (Count: -1;
    DayNumber: 1; DayType: cxdtDay; Finish: -1; OccurDays: [TDay.dMonday]; Periodicity: 1;
    Recurrence: cxreWeekly; Start: 0; YearPeriodicity: 1);//; Version: 1; DismissDate: 43471
begin
  {Preenche um DataSet com os campos necessários para o funcionamento do Scheduler
   Os campos GROUP_ID, LOCATION, CAPTION, PARENT_ID, REMINDER_RESOURCES, TASK_INDEX, TASK_LINKS, TASK_STATUS
   não precisam ser preenchidos
   Os campos DT_INICIO e DT_FIM já devem vir preenchidos!!!
   }

  //Aqui está sendo considerado que se o campo EVENT_TYPE estiver preenchido, indica que o evento já está
  //compatível com o Scheduler e não deve ser alterado.
  //Caso o dataset set um IBQuery, provavelmente este campo não vai vir preenchido, sendo necessário fazer esta verificação
  //antes de chamar a rotina
  if not ADataSet.FieldByName('EVENT_TYPE').IsNull then
    Exit;
  ADataSet.FieldByName('ACTUAL_START').Value     := Trunc(ADataSet.FieldByName('DT_INICIO').AsDateTime);
  ADataSet.FieldByName('ACTUAL_FINISH').Value    := Trunc(ADataSet.FieldByName('DT_FIM').AsDateTime);
  ADataSet.FieldByName('EVENT_TYPE').Value       := 0;
  ADataSet.FieldByName('OPTIONS').Value          := 2;
  ADataSet.FieldByName('RECURRENCE_INDEX').Value := -1;
  ADataSet.FieldByName('RECURRENCE_INFO').Value  := cxRecurrenceInfoDataToString(ARecurrenceInfoData);
  ADataSet.FieldByName('REMINDER_DATE').Value    := IncMinute(ADataSet.FieldByName('DT_FIM').AsDateTime, -5);
  ADataSet.FieldByName('REMINDER_MINUTES').Value := 15;
  ADataSet.FieldByName('COLOR').Value            := $20000000;
  ADataSet.FieldByName('STATE').Value            := 2;
  ADataSet.FieldByName('TASK_STATUS').Value      := 0; //tsNotStarted
end;

procedure TFrame_Cad_Producao.QuerProducaoOSTempoCalcFields(DataSet: TDataSet);
begin
  inherited;
//  QuerProducaoOSTempo.FieldByName('TempoTotalOPDisplay').AsString := MinutosToHoras(QuerProducaoOSTempo.FieldByName('TEMPO_TOTAL_OP').AsInteger);
end;

procedure TFrame_Cad_Producao.TbPercentualConclusaoPropertiesChange(Sender: TObject);
begin
  inherited;
  tbrPConclusao.Properties.SelectionEnd := tbrPConclusao.Position;
end;

procedure TFrame_Cad_Producao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  inherited;
end;

procedure TFrame_Cad_Producao.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
end;

procedure TFrame_Cad_Producao.FormShow(Sender: TObject);
begin
  inherited;
//  PreencheLookupCodVenda_produto(cxDBLookupComboBox5.Properties as TcxLookupComboBoxProperties, Cadastro.FieldByName('CODVENDA').AsString);
//  TabAnexos.Visible := AAPP[TagAPP_Anexo].Ativo;
end;

procedure TFrame_Cad_Producao.FrameEnter(Sender: TObject);
begin
  inherited;
  if TConfig.ReadString('NOME_DATA_LIMITE') <> '' then
  begin
    liedtDT_Prazo_Final.CaptionOptions.Text :=  TConfig.ReadString('NOME_DATA_LIMITE');
  end;
  if TConfig.ReadString('NOME_DATA_ENTREGA') <> '' then
  begin
    liDT_Entrega.CaptionOptions.Text  :=  TConfig.ReadString('NOME_DATA_ENTREGA');
  end;
  if TConfig.ReadString('NOME_DATA_ETAPA') <> '' then
  begin
    dxLayoutItem21.CaptionOptions.Text   :=  TConfig.ReadString('NOME_DATA_ETAPA');
  end;
end;

{$ENDREGION}

{$REGION 'Outros'}
procedure TFrame_Cad_Producao.edtCodPessoasÎPESSOASPropertiesEditValueChanged(
  Sender: TObject);
begin
  if Not (Cadastro.State IN dsEditModes) then
    Exit;

//  CalculaPrioridadeNaProducao;
end;

procedure TFrame_Cad_Producao.edtCodProdutoÎPRODUTOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Not (Cadastro.State IN dsEditModes) then
    Exit;

//  CalculaPrioridadeNaProducao;
//  WRCalcMemoria.SprFechaMemTables;
//  PmPrincipal.ProcuraProduto(edtCodProdutoÎPRODUTO.Text, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Empresa.FieldByName('CODIGO').AsInteger);
end;

procedure TFrame_Cad_Producao.tokUsuariosPropertiesTokenAdd(Sender: TObject; const ATokenText: string;
  AToken: TdxTokenEditToken; var AAllow: Boolean);
var
  ACodUsuario : Integer;
begin
  inherited;
  ACodUsuario := StrToIntDef(ProcuraField('CODIGO', 'USUARIO',['USUARIO'],[ATokenText]),0);
  AdicionaTarefa(ACodUsuario,'Serviço para ' + ATokenText);
end;

{$ENDREGION}

{$REGION 'Inativos'}

(*procedure TFrmProducao_OS.AlterarProduto;
var
  ACodProduto, ADescProduto: string;
  QuerX: TFDQuery;
begin
  {TODO: Desenvolver, ajustar para usar o ProdutoMemória}
//  ShowMessage('Função desativada');
//  Exit;

  if not Cadastro.FieldByName('CODVENDA').IsNull then   //   Poder pode, só tem que informar que é um erro e evidenciar isso
  begin
    ShowMessageWR('Esta OS foi originada de uma Venda e não pode ter seu produto alterado.');
    Exit;
  end;

  Producao_Composicao.DisableControls;
  try
    Producao_Composicao.First;
    while not Producao_Composicao.Eof do
    begin
      if Producao_Composicao.FieldByName('QUANT_CONSUMIDA').AsFloat > 0 then
      begin
        ShowMessageWR('Já houve movimentação de materiais. O produto não pode mais ser alterado.');
        Exit;
      end;
      Producao_Composicao.Next;
    end;
  finally
    Producao_Composicao.EnableControls;
  end;

  if not Cadastro.FieldByName('CODPRODUTO').IsNull then
  begin
    if ShowMessageWR('Esta OS já possui um Produto ou Materiais. Se você alterar o produto, os materiais serão ' +
      'atualizados de acordo com o novo produto. Deseja continuar?',
      MB_ICONWARNING or MB_YESNO) <> mrYes then
      Exit;
  end;

  ACodProduto := ControleFormsAbrirConsulta(TConsuProduto);
  if ACodProduto = '' then
    Exit;

  VerificaSePodeAlteraDataSet;
  try
    //Atualiza a Ordem de Produção
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select DESCRICAO, RETORNAR_ESTOQUE_AO_PRODUZIR ' +
                        'from PRODUTO ' +
                        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsString := ACodProduto;
      QuerX.Open;

      ADescProduto := QuerX.FieldByName('DESCRICAO').AsString;

    finally
      QuerX.Free;
    end;

    {Atualiza todas as OS's que pertencem a mesma Ordem de Produção. Aqui é importante que a OS aberta não seja
     atualizada! Isso é necessário pois a OS aberta está em outro dataset, então neste while atualizamos apenas
     as demais OS's}
    Producao_OS_Calc.First;
    while not Producao_OS_Calc.Eof do
    begin
      if Producao_OS_Calc.FieldByName('CODIGO').AsInteger <> Cadastro.FieldByName('CODIGO').AsInteger then
      begin
        Producao_OS_Calc.Edit;
        Producao_OS_Calc.FieldByName('CODPRODUTO').AsString := ACodProduto;
        Producao_OS_Calc.FieldByName('PRODUTO').AsString    := ADescProduto;
        Producao_OS_Calc.Post;
      end;
      Producao_OS_Calc.Next;
    end;

    //Aqui sim atualiza a OS aberta
    Cadastro.FieldByName('CODPRODUTO').AsString := ACodProduto;
    Cadastro.FieldByName('PRODUTO').AsString    := ADescProduto;

    //Atualiza a Composição
    QuerX := GeraFDQuery;
    try
      while not Producao_Composicao.IsEmpty do
        Producao_Composicao.Delete;

      QuerX.SQL.Text := 'select CODPRODUTO, DESCRICAO, QTDADEPECA, COMP, LARG, ESPESSURA, QUANT ' +
                        'from PRODUTO_COMPOSICAO ' +
                        'where (CODPRODUTO_COMPOSICAO = :Cod)';
      QuerX.Params[0].AsString := ACodProduto;
      QuerX.Open;
      while not QuerX.Eof do
      begin
       { TFrmProducao.AdicionaComposicao(TransaFD,
          Producao.FieldByName('CODIGO').AsInteger,
          0,
          QuerX.FieldByName('CODPRODUTO').AsString,
          QuerX.FieldByName('DESCRICAO').AsString,
          QuerX.FieldByName('QTDADEPECA').AsFloat,
          QuerX.FieldByName('COMP').AsFloat,
          QuerX.FieldByName('LARG').AsFloat,
          QuerX.FieldByName('ESPESSURA').AsFloat,
          QuerX.FieldByName('QUANT').AsFloat,
          pmtuUsoNormal);  }
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;
//    CloseOpenGridView(Producao_Composicao, GridComposicaoDBTableView2);

    TFrameHistorico.AdicionaHistorico(TransaFD, UCHist_Cadastro, 'PRODUCAO', 'Alterou o produto da Ordem de Produção.');
  except
    on E:Exception do
    begin
      RollbackTransacao(TransaFD);
      Cadastro.Open;
      raise;
    end;
  end;
end;     *)

 (*
procedure ProducaoCriaNovaProducao(const AVenda, AVenda_Produto: TDataSet;
 AParentNode: TcxTreeListNode; Treelist: TcxTreeList;  ACodProducao: Integer; AParent: Variant);
var
  ANode: TcxTreeListNode;
  I, ACodCentroTrabalho: Integer;
  AFrmProducao: TFrmProducao;
  AFormAguarde: TFrmAguarde;
begin
  AFrmProducao := TFrmProducao(wrFormsRetornaCadastro(TConsuProducao, TFrmProducao));
  AFormAguarde := TFrmAguarde.Create(nil);
  try
    AFormAguarde.Show;
    AFormAguarde.Mensagem := 'Enviando para Produção';
    AFormAguarde.ProgressoMaximo := AVenda_Produto.RecordCount;

//    DSCOPIAPARENT VENDA_produto > PRODUCAO_produto
//    producao_produto.filter :=  codvenda = AVenda_Produto.field'codvenda')
    while not producao_produto.eof  do
    begin
      if producao_produto.fieldbyname('cria tarefa') = 'S' then
      begin
        AFrmProducao.btnNovoClick(nil);
        DSCopiarCamposIguais(producao_produto, AFrmProducao.Cadastro, ['CODIGO']);
        gera_procolo
        for I := 0 to Treelist.Count -1 do
        begin
          if producao_produto.fieldbyname('cria tarefa') = 'S' then
            next(cria)
          else
            producao_produto.field('protocolo') :=  AFrmProducao.Cadastro.field('protocolo')

        end;





      end;


    end;


    for I := 0 to Treelist.Count -1 do
    begin
      Treelist.Items[I].Focused := True;



      AFrmProducao.btnNovoClick(nil);

      DSCopiarCamposIguais(AVenda, AFrmProducao.Cadastro, ['CODIGO']);
      DSCopiarCamposIguais(AVenda_Produto, AFrmProducao.Cadastro, ['CODIGO']);


      AFrmProducao.Cadastro.FieldByName('CODVENDA_PRODUTO').AsInteger   := AVenda_Produto.FieldByName('CODIGO').AsInteger;
      AFrmProducao.Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger := AVenda_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger;
      AFrmProducao.Cadastro.FieldByName('PRODUTO').AsString             := AVenda_Produto.FieldByName('DESCRICAO').AsString;


      for J := Treelist.Items[I].AbsoluteIndex to AFrmProducao.WRCalc.LDeepCount(Treelist.Items[I]) do
      begin
        Treelist.AbsoluteItems[J].Focused := True;

        DSCopiarCamposIguais(AVenda_Produto, AFrmProducao.Producao_Produto, ['CODIGO', 'PARENT', 'QUANT']);
        AFrmProducao.Producao_Produto.FieldByName('QUANT_PREVISTA').Value  := AWRCalcVenda.DBProduto.FieldByName('QUANT').value;

        if not(TConfig.ReadBoolean('ESTOQUE_DUPLO')) then //SE NAO USAR ESTOQUE DUPLO; COMO A VENDA JA DEU BAIXA, ELE JA CAI COM A BAIXA FEITA
        begin                                             //POIS ESSA QUANTIDADE NÃO PODE SER BAIXADA NOVAMENTE QUANDO FINALIZAR A PRODUCAO
           AFrmProducao.Producao_Produto.FieldByName('QUANT').Value                 := AWRCalcVenda.DBProduto.FieldByName('QUANT').value;
           AFrmProducao.Producao_Produto.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime := now;
        end;

        AFrmProducao.Producao_Produto.FieldByName('PARENT').Value          := AParent;
        AFrmProducao.Producao_Produto.FieldByName('CODPRODUCAO').AsInteger := ACodProducao;
        AFrmProducao.Producao_Produto.FieldByName('ATIVO').AsString        := 'S';
        AFrmProducao.Producao_Produto.Post;


      end;


      AFrmProducao.btnConfirmarClick(nil)


    end;

  finally
    AFrmProducao.Free;
    AFormAguarde.Free;
  end;






  ANode := AParentNode.getFirstChild;
  while ANode <> nil do
  begin
    DSLocateWR(AVenda_Produto, TreeListGetValorNode(ANode, 'CODIGO'));

//    if AProducaoProduto.FieldByName('PARENT').IsNull then
//      ACodProducao := 0;
    if AVenda_Produto.FieldByName('TEM_PRODUCAO_ENVIADO').Value <> 'S' then
    begin
      if (ACodProducao = 0) or (AVenda_Produto.FieldByName('TEM_TAREFA_PRODUCAO').AsString = 'S') then
      begin
        Cadastro.Insert;
        Regra_ValorInicial(Cadastro, Configuracao_Acao, 'PRODUCAO');
  //      ConfigCamposForm.PreencheValoresIniciaisDataSet(AProducao);

        //Quando não há o módulo de Ordem de Produção ativo, já cai como Liberado
       { if not pktOrdemProducao.Ativo or TConfig.ReadBoolean('VENDA_APROVAR_PRODUCAO') then
          AProducao.FieldByName('SITUACAO').AsString := ProducaoSituacaoToStr(psLiberado)
        else
          AProducao.FieldByName('SITUACAO').AsString := ProducaoSituacaoToStr(psAguardandoLiberacao);  }

        DSCopiarCamposIguais(AVenda, Cadastro, ['CODIGO']);
        DSCopiarCamposIguais(AVenda_Produto, Cadastro, ['CODIGO']);
                                                                                                    //EUUU SEI.... LOGO VOU MIGRAR ESSA MERDA DAQUI ¬¬'

        Cadastro.FieldByName('CODVENDA_PRODUTO').AsInteger   := AVenda_Produto.FieldByName('CODIGO').AsInteger;
        Cadastro.FieldByName('CODCENTRO_TRABALHO').AsInteger := AVenda_Produto.FieldByName('CODCENTRO_TRABALHO').AsInteger;
        Cadastro.FieldByName('PRODUTO').AsString             := AVenda_Produto.FieldByName('DESCRICAO').AsString;
        Cadastro.Post;
        ACodProducao := Cadastro.FieldByName('CODIGO').AsInteger;
        AParent      := Null;
      end;

      //Cria o Produto da Produção
      Producao_Produto.Insert;

  //    ConfigCamposForm.PreencheValoresIniciaisDataSet(AProducaoProduto);
      Regra_ValorInicial(Producao_Produto, Configuracao_Acao, 'PRODUTO');


      DSCopiarCamposIguais(AVenda_Produto, Producao_Produto, ['CODIGO', 'PARENT', 'QUANT']);
      Producao_Produto.FieldByName('QUANT_PREVISTA').Value  := AVenda_Produto.FieldByName('QUANT').value;
      Producao_Produto.FieldByName('PARENT').Value          := AParent;
      Producao_Produto.FieldByName('CODPRODUCAO').AsInteger := ACodProducao;
      Producao_Produto.FieldByName('ATIVO').AsString        := 'S';
      Producao_Produto.Post;

      AVenda_Produto.Edit;
      AVenda_Produto.FieldByName('TEM_PRODUCAO_ENVIADO').AsString  := 'S';
      AVenda_Produto.Post;

      ProducaoCriaNovaProducao(AVenda, AVenda_Produto, ANode, ACodProducao, AParent);

    end;
    ANode := ANode.getNextSibling;
  end;
end;    *)
{$ENDREGION}

initialization
  RegisterClass(TFrame_Cad_Producao);
  RegisterFrameCad(Tag_Producao, TFrame_Cad_Producao); //Tag_Agenda_Kanban

end.

