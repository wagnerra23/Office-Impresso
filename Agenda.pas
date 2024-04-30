unit Agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, cxEdit, IBQuery,
  cxScheduler, cxSchedulerCustomControls, cxSchedulerDayView, cxSchedulerDateNavigator, DB, cxSchedulerStorage,
  cxSchedulerDBStorage, Menus, StdCtrls, ExtCtrls, ComCtrls, cxLabel, cxCurrencyEdit, cxSchedulerHolidays, cxCustomData,
  cxFilter, cxDBData, UCBase, IBDatabase, IBCustomDataSet, cxButtons, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DdeMan, cxTimeEdit, cxContainer, cxTextEdit, dxLayoutContainer,
  cxButtonEdit, dxLayoutControl, dxLayoutLookAndFeels, cxImageComboBox, cxTL, cxColorComboBox, UnitFuncoes,
  cxInplaceContainer, cxDBTL, cxPropertiesStore, cxCalendar, cxDropDownEdit, UCHist_WRGeral, cxControls,
  ImgList, cxSpinEdit, cxGridTableView, frxDBSet, cxSchedulerEventEditor, FireDAC.Stan.Param, Generics.Collections,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxStyles, cxData, cxDataStorage, cxNavigator, cxProgressBar, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxSchedulerCustomResourceView, cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser, dxSkinscxSchedulerPainter, cxMaskEdit, cxTLdxBarBuiltInMenu, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, cxTLData, cxClasses, cxDBLabel, cxSchedulercxGridConnection,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeCustomScale, dxGaugeDBScale, dxGaugeControl, cxImage,
  uControleWR, cxTrackBar, cxGridChartView, cxGridDBChartView, Datasnap.DBClient,
  System.ImageList, Email, cxDataControllerConditionalFormattingRulesManagerDialog, cxSchedulerAgendaView, dxBarBuiltInMenu,
  cxDBLookupComboBox, wrConstantes, wrConversao, wrFuncoes, Classes.WR, dxDateRanges,
  cxLookupEdit, cxDBLookupEdit, frFrameHistorico, UCHistDataset, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

const
  WM_VERIFICA_EVENTOS = WM_USER + 4523;

type
  TFiltroTipo = (tfNone, tfMinhaTarefa, tfPersonalizado, tfUsuario, tfSetor, tfPrioridade, tfStatusTarefa,
                 tfSetorUsuario, tfAgendaTitulo);
  TTipoVisualizacaoAgenda = (vaTitulo, vaUsuario, vaEstagio);
  TModoAgenda = (maAgenda, maPCP, maKanban);
  TTipoViewGantt = (vgPessoa, vgProduto);

  TEventoDataHistorico = record
    CodEvento: string;
    DataInicial: TDateTime;
    DataFinal: TDateTime;
    EventoPostado: Boolean;
    // Se a flag for False, o evento não foi postado e também não foi gerado histórico
    procedure Clear;
  end;

  TTipoAgendaCb = class
  private
    FCodigo: Variant;
    FTipo: TModoAgenda;
  public
    property Tipo: TModoAgenda read FTipo write FTipo;
    property Codigo: Variant read FCodigo write FCodigo;
  end;

  TFrmAgenda = class(TForm)
    Scheduler: TcxScheduler;
    pnlControls: TPanel;
    LBAgenda: TLabel;
    dxLayoutControl1: TdxLayoutControl;
    edtPesquisa: TcxButtonEdit;
    cxGridTarefas: TcxGrid;
    cxGridTarefasTableView1: TcxGridDBTableView;
    cxGridTarefasTableView1COLOR: TcxGridDBColumn;
    cxGridTarefasTableView1CODAGENDA_TITULO: TcxGridDBColumn;
    cxGridTarefasTableView1EVENTO_TIPO: TcxGridDBColumn;
    cxGridTarefasTableView1PRIORIDADE: TcxGridDBColumn;
    cxGridTarefasTableView1STATUS: TcxGridDBColumn;
    cxGridTarefasTableView1TAREFA_STATUS: TcxGridDBColumn;
    cxGridTarefasTableView1CODIGO: TcxGridDBColumn;
    cxGridTarefasTableView1DT_EMISSAO: TcxGridDBColumn;
    cxGridTarefasTableView1DT_INICIO: TcxGridDBColumn;
    cxGridTarefasTableView1CAPTION: TcxGridDBColumn;
    cxGridTarefasTableView1SOLICITANTE: TcxGridDBColumn;
    cxGridTarefasTableView1DT_FATURAMENTO: TcxGridDBColumn;
    cxGridTarefasTableView1FUNCIONARIO: TcxGridDBColumn;
    cxGridTarefasTableView1IMAGE: TcxGridDBColumn;
    cxGridTarefasTableView1TAREFA_COMPLETA: TcxGridDBColumn;
    cxGridTarefasTableView1LOCATION: TcxGridDBColumn;
    cxGridTarefasTableView1EQUIPAMENTO: TcxGridDBColumn;
    cxGridTarefasTableView1DT_FIM: TcxGridDBColumn;
    cxGridTarefasTableView1TELEFONE: TcxGridDBColumn;
    cxGridTarefasTableView1CODFINANCEIRO: TcxGridDBColumn;
    cxGridTarefasTableView1CODVENDA: TcxGridDBColumn;
    cxGridTarefasTableView1OCORRENCIA: TcxGridDBColumn;
    cxGridTarefasTableView1VALOR: TcxGridDBColumn;
    cxGridTarefasTableView1PRODUTO: TcxGridDBColumn;
    cxGridTarefasTableView1CODEQUIPAMENTO: TcxGridDBColumn;
    cxGridTarefasTableView1LIDO: TcxGridDBColumn;
    cxGridTarefasTableView1CODSETOR: TcxGridDBColumn;
    cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL: TcxGridDBColumn;
    cxGridTarefasTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGridTarefasTableView1CODUSUARIO_CRIADOR: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    scConfig: TcxButton;
    sbCronograma: TcxButton;
    sbTarefas: TcxButton;
    TreeListFiltros: TcxDBTreeList;
    TlFiltroscxDBTreeListColumn2: TcxDBTreeListColumn;
    TlFiltroscxDBTreeListColumn1: TcxDBTreeListColumn;
    TlFiltroscxDBTreeListColumn3: TcxDBTreeListColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1ItemGridTarefas: TdxLayoutItem;
    Layout_Barra: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    LayoutItemFiltrosTarefas: TdxLayoutItem;
    SchedulerDataSource: TDataSource;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    DSTarefas: TDataSource;
    DS: TDataSource;
    ImageList2: TImageList;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    UCControls1: TUCControls;
    PopupMenu1: TPopupMenu;
    Mostrar1: TMenuItem;
    menuFaturados: TMenuItem;
    menuEmAberto: TMenuItem;
    menuTodos: TMenuItem;
    Configuraes1: TMenuItem;
    Abrircomosistema1: TMenuItem;
    Permitirfaturamentoemdata1: TMenuItem;
    N3: TMenuItem;
    Cadastrarnovaagenda1: TMenuItem;
    N2: TMenuItem;
    Cronogramametas1: TMenuItem;
    Agendamento1: TMenuItem;
    N1: TMenuItem;
    Desbloquear1: TMenuItem;
    AgruparasTarefas1: TMenuItem;
    SalvarFiltroComo1: TMenuItem;
    Criarlistadeprospeco1: TMenuItem;
    ImgListMenuConfig: TImageList;
    DDEAgenda: TDdeServerItem;
    DSAgendaFiltro: TDataSource;
    MenuFiltros: TPopupMenu;
    SalvarFiltroComo2: TMenuItem;
    ExcluirFiltro1: TMenuItem;
    CDSAgendaFiltro: TClientDataSet;
    CDSAgendaFiltroCODIGO: TIntegerField;
    CDSAgendaFiltroDESCRICAO: TStringField;
    CDSAgendaFiltroPARENT: TIntegerField;
    CDSAgendaFiltroCODUSUARIO: TIntegerField;
    CDSAgendaFiltroCODEMPRESA: TIntegerField;
    CDSAgendaFiltroFILTRO: TBlobField;
    CDSAgendaFiltroIMAGEINDEX: TIntegerField;
    CDSAgendaFiltroCodItemFixo: TStringField;
    CDSAgendaFiltroDescExibicao: TStringField;
    CDSAgendaFiltroTIPO: TIntegerField;
    cxPropertiesStore1: TcxPropertiesStore;
    CDSAgendaUsuario: TClientDataSet;
    CDSAgendaUsuarioCODIGO: TIntegerField;
    CDSAgendaUsuarioDESCRICAO: TStringField;
    CDSAgendaUsuarioPARENT: TIntegerField;
    CDSAgendaUsuarioCODUSUARIO: TIntegerField;
    CDSAgendaUsuarioCODEMPRESA: TIntegerField;
    CDSAgendaUsuarioFILTRO: TBlobField;
    CDSAgendaUsuarioIMAGEINDEX: TIntegerField;
    CDSAgendaUsuarioCodItemFixo: TStringField;
    CDSAgendaUsuarioDescExibicao: TStringField;
    CDSAgendaUsuarioTIPO: TIntegerField;
    DSAgendaUsuario: TDataSource;
    dxLayoutControl1Item4: TdxLayoutItem;
    BtnAtualizarTarefas: TcxButton;
    MenuAgenda: TPopupMenu;
    Visualizartempogasto1: TMenuItem;
    Menunoutilizadoporenquanto1: TMenuItem;
    TransAgDtAtual: TMenuItem;
    Moverparadata1: TMenuItem;
    PnlSelecaoData: TPanel;
    EdtSelecaoData: TcxDateEdit;
    cxLabel1: TcxLabel;
    BtnSelecaoDataConfirmar: TcxButton;
    BtnSelecaoDataCancelar: TcxButton;
    Bevel1: TBevel;
    AlterarOpesdaAgenda1: TMenuItem;
    PnlOpcoesAgenda: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Group3: TdxLayoutGroup;
    CbAgendaCor: TcxColorComboBox;
    dxLayoutControl2Item8: TdxLayoutItem;
    CbAgendaMostrarHora: TcxComboBox;
    dxLayoutControl2Item5: TdxLayoutItem;
    EdtAgendaIntervalo: TcxCurrencyEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    EdtAgendaHoraInicial: TcxTimeEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    EdtAgendaHoraFinal: TcxTimeEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    CbAgendaUsuarios: TcxComboBox;
    dxLayoutControl2CbUsuarios: TdxLayoutItem;
    UCHistWRGeral1: TUCHistWRGeral;
    N4: TMenuItem;
    Ocultaragendamentosnogrid1: TMenuItem;
    Relatrio1: TMenuItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    Visualizaragendamentospor1: TMenuItem;
    VisualizarPorUsuario: TMenuItem;
    VisualizarPorTitulo: TMenuItem;
    ransferirpara1: TMenuItem;
    PnlTransferirResponsavel: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    BtnTransfConfirmar: TcxButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    BtnTransfCancelar: TcxButton;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    CbTransfResponsavel: TcxComboBox;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    CbTransfSetor: TcxComboBox;
    PopupMenu2: TPopupMenu;
    ransferirpara2: TMenuItem;
    ImageListRanking: TImageList;
    GerarContratosWR1: TMenuItem;
    DtaEdAgenda: TcxDateEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    SelecionarTodos1: TMenuItem;
    frxAgenda: TfrxDBDataset;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Agenda_Usuario: TFDQuery;
    Agenda: TFDQuery;
    Agenda_Tarefas: TFDQuery;
    Agenda_Filtro: TFDQuery;
    AgendaCODIGO: TStringField;
    AgendaPROTOCOLO: TStringField;
    AgendaSEQUENCIA: TIntegerField;
    AgendaCODAGENDA_TITULO: TIntegerField;
    AgendaCAPTION: TStringField;
    AgendaDT_INICIO: TSQLTimeStampField;
    AgendaDT_FIM: TSQLTimeStampField;
    AgendaIMAGEMINDEX: TIntegerField;
    AgendaCOLOR: TIntegerField;
    AgendaIMAGE: TIntegerField;
    AgendaTAREFA_COMPLETA: TIntegerField;
    AgendaTAREFA_INDEX: TIntegerField;
    AgendaSTATUS: TIntegerField;
    AgendaEVENTO_TIPO: TIntegerField;
    AgendaRECURRENCE_INDEX: TIntegerField;
    AgendaREMINDER_DATE: TSQLTimeStampField;
    AgendaOPTIONS: TIntegerField;
    AgendaLOCATION: TStringField;
    AgendaRECURRENCE_INFO: TBlobField;
    AgendaTELEFONE: TStringField;
    AgendaTAREFA_STATUS: TIntegerField;
    AgendaTAREFA_LINK: TBlobField;
    AgendaCODFINANCEIRO: TStringField;
    AgendaCODEMPRESA: TStringField;
    AgendaDT_FATURAMENTO: TSQLTimeStampField;
    AgendaBLOQUEIO: TStringField;
    AgendaFUNCIONARIO: TStringField;
    AgendaCODEQUIPAMENTO: TStringField;
    AgendaEQUIPAMENTO: TStringField;
    AgendaSOLICITANTE: TStringField;
    AgendaCODVENDA: TStringField;
    AgendaOCORRENCIA: TStringField;
    AgendaVALOR: TFloatField;
    AgendaDT_EMISSAO: TSQLTimeStampField;
    AgendaPRIORIDADE: TIntegerField;
    AgendaDT_ALTERACAO: TSQLTimeStampField;
    AgendaCODVENDA_PRODUTO: TIntegerField;
    AgendaATIVO: TStringField;
    AgendaCODSETOR: TIntegerField;
    AgendaCODUSUARIO_RESPONSAVEL: TIntegerField;
    AgendaCODPRODUTO: TStringField;
    AgendaPRODUTO: TStringField;
    AgendaCODUSUARIO_CRIADOR: TIntegerField;
    AgendaCODUSUARIO_ALTERADO: TIntegerField;
    AgendaPARENT_ID: TStringField;
    AgendaREMINDER_MINUTES: TIntegerField;
    AgendaGROUP_ID: TStringField;
    AgendaREMINDER_RESOURCES_DATA: TBlobField;
    AgendaCODAGENDA_COMPOSICAO: TStringField;
    AgendaCODSTATUS: TIntegerField;
    AgendaTIPO_AGENDAMENTO: TSmallintField;
    AgendaPESSOA_CLIENTE_CODIGO: TStringField;
    AgendaPESSOA_CLIENTE_TIPO: TStringField;
    AgendaPESSOA_CLIENTE_SEQUENCIA: TIntegerField;
    AgendaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    AgendaPESSOA_FUNCIONARIO_TIPO: TStringField;
    AgendaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    AgendaVISUALIZA: TIntegerField;
    AgendaORDENACAO: TFloatField;
    Agenda_UsuarioCODIGO: TIntegerField;
    Agenda_UsuarioDESCRICAO: TStringField;
    Agenda_UsuarioCOLOR: TIntegerField;
    Agenda_UsuarioIMAGEINDEX: TSmallintField;
    Agenda_UsuarioDT_INICIAL: TSQLTimeStampField;
    Agenda_UsuarioDT_FINAL: TSQLTimeStampField;
    Agenda_UsuarioMINUTOS: TIntegerField;
    AgendaACTUAL_START: TIntegerField;
    AgendaACTUAL_FINISH: TIntegerField;
    Agenda_Historico: TFDQuery;
    Transa: TFDTransaction;
    TransaFiltro: TFDTransaction;
    SPAgenda: TFDStoredProc;
    TimerF10: TTimer;
    AgendaSKYPE_ID: TStringField;
    S1: TMenuItem;
    P1: TMenuItem;
    R1: TMenuItem;
    C1: TMenuItem;
    FDUpdateSQL1: TFDUpdateSQL;
    cxGridTarefasTableView1PROTOCOLO: TcxGridDBColumn;
    AgendaMENSAGEM: TMemoField;
    TransaHistoricoAux: TFDTransaction;
    cxGridTarefasTableView2: TcxGridTableView;
    cxSchedulerGridConnection1: TcxSchedulerGridConnection;
    GrupoDados: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGridTarefasTableView1FANTASIA: TcxGridDBColumn;
    Agenda_UsuarioCODFUNCIONARIO: TStringField;
    AgendaGANTT_DT_INICIO: TSQLTimeStampField;
    AgendaGANTT_DT_FIM: TSQLTimeStampField;
    AgendaGANTT_ACTUAL_START: TIntegerField;
    AgendaGANTT_ACTUAL_FINISH: TIntegerField;
    BtnSkype: TcxButton;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    BtnTimeGrid: TcxButton;
    TbZoom: TcxTrackBar;
    LayoutItemTbZoom: TdxLayoutItem;
    cxGridTarefasTableView1GANTT_DT_INICIO: TcxGridDBColumn;
    cxGridTarefasTableView1GANTT_DT_FIM: TcxGridDBColumn;
    MenuTreeViewBrower: TPopupMenu;
    a2: TMenuItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    LayoutItemScheduler: TdxLayoutItem;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxButton8: TcxButton;
    G1: TMenuItem;
    LbTipoViewGantt: TcxLabel;
    LayoutItemLbTipoViewGantt: TdxLayoutItem;
    N5: TMenuItem;
    R2: TMenuItem;
    G2: TMenuItem;
    AgendaCODEMAIL: TIntegerField;
    AgendaCODEMAIL_CRM_DATABASE: TIntegerField;
    dxLayoutControl6Item2: TdxLayoutItem;
    cxTrackBar1: TcxTrackBar;
    Layout_Comandos: TdxLayoutGroup;
    C2: TMenuItem;
    LbQuantEventos: TcxLabel;
    dxLayoutControl6Item3: TdxLayoutItem;
    A4: TMenuItem;
    R3: TMenuItem;
    N11: TMenuItem;
    N51: TMenuItem;
    N31: TMenuItem;
    N12: TMenuItem;
    N41: TMenuItem;
    VisualizarPorEstagio: TMenuItem;
    AgendaKANBAN_DT_INICIO: TSQLTimeStampField;
    AgendaKANBAN_DT_FIM: TSQLTimeStampField;
    AgendaKANBAN_ACTUAL_START: TIntegerField;
    AgendaKANBAN_ACTUAL_FINISH: TIntegerField;
    dxLayoutControl6Item5: TdxLayoutItem;
    cxButton7: TcxButton;
    Btn3CX: TcxButton;
    dxLayoutControl6Item4: TdxLayoutItem;
    Timer3CX: TTimer;
    AgendaCODAGENDA_FAQ: TStringField;
    CbTipoAgenda: TcxComboBox;
    dxLayoutControl6Item6: TdxLayoutItem;
    F1: TMenuItem;
    cxGridTarefasTableView1CODLOTE: TcxGridDBColumn;
    TimerNaoLido: TTimer;
    cxGridTarefasTableView1USUARIO_RESPONSAVEL: TcxGridDBColumn;
    cxGridTarefasTableView1TEMPO_ESTIMADO: TcxGridDBColumn;
    cxGridTarefasTableView1DT_PROMETIDO_PARA: TcxGridDBColumn;
    V1: TMenuItem;
    GrupoRegistroAtividades: TdxLayoutGroup;
    PnlHistorico: TPanel;
    dxLayoutItem4: TdxLayoutItem;
    AgendaEventoSelecionado: TFDMemTable;
    DSAgendaEventoSelecionado: TDataSource;
    AgendaEventoSelecionadoCODIGO: TStringField;
    AgendaEventoSelecionadoPESSOA_CLIENTE_CODIGO: TStringField;
    AgendaCODCONDICAOPAGTO: TIntegerField;
    AgendaCONDICAOPAGTO: TStringField;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem5: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem11: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    edtCentro_Trabalho: TcxLookupComboBox;
    liedtCentro_Trabalho: TdxLayoutItem;
    LiedtFuncionario: TdxLayoutItem;
    edtFuncionario: TcxLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    btnMenu: TcxButton;
    LiedtTipo_Evento: TdxLayoutItem;
    cxLookupComboBox1: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    btnNovoCadastro: TcxButton;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem8: TdxLayoutItem;
    btnDashBoard: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    btnTabela: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    btnKanbam: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    N6: TMenuItem;
    Fechar1: TMenuItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    UCHist_Casdatro: TUCHist_DataSet;
    UCHist_Selecionado: TUCHist_DataSet;
    MensagensMemoria: TFDMemTable;
    MensagensMemoriaUSUARIO: TStringField;
    MensagensMemoriaMENSAGEM: TMemoField;
    MensagensMemoriaDATA: TDateTimeField;
    RespositorioEstilos: TcxStyleRepository;
    EstiloGridLinha1: TcxStyle;
    EstiloGridLinha2: TcxStyle;
    EstiloGridHeader: TcxStyle;
    EstiloSegoeSB14: TcxStyle;
    EstiloSegoe12: TcxStyle;
    EstiloSegoe18: TcxStyle;
    EstiloSegoe8: TcxStyle;
    EstiloRoxinhoFundo: TcxStyle;
    EstiloRoxinhoFonte: TcxStyle;
    EstiloAviso: TcxStyle;
    dxLayoutGroup3: TdxLayoutGroup;
    liCorpo: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    TreeListUsuarios: TcxDBTreeList;
    cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeListColumn3: TcxDBTreeListColumn;
    LiTopo: TdxLayoutGroup;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    procedure FormCreate(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure SchedulerGetEventDisplayText(Sender: TObject;
      AEvent: TcxSchedulerControlEvent; var AText: string);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure SchedulerClick(Sender: TObject);
    procedure cxGridTarefasTableView1DblClick(Sender: TObject);
    procedure cxGridTarefasTableView1CustomDrawCell
      (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtProtocoloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkTarefas_UsuariosClick(Sender: TObject);
    procedure Agendamento1Click(Sender: TObject);
    procedure Cronogramametas1Click(Sender: TObject);
    procedure Desbloquear1Click(Sender: TObject);
    procedure AgruparasTarefas1Click(Sender: TObject);
    procedure edtPesquisaFocusChanged(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure sbTarefasClick(Sender: TObject);
    procedure sbCronogramaClick(Sender: TObject);
    procedure menuMostrarEstadoClick(Sender: TObject);
    procedure DDEAgendaChange(Sender: TObject);
    procedure Agenda_FiltroBeforeOpen(DataSet: TDataSet);
    procedure SalvarFiltroComo1Click(Sender: TObject);
    procedure TreeListFiltrosClick(Sender: TObject);
    procedure ExcluirFiltro1Click(Sender: TObject);
    procedure Agenda_FiltroAfterOpen(DataSet: TDataSet);
    procedure Cadastrarnovaagenda1Click(Sender: TObject);
    procedure Abrircomosistema1Click(Sender: TObject);
    procedure MenuFiltrosPopup(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGridTarefasTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Agenda_FiltroBeforeClose(DataSet: TDataSet);
    procedure Criarlistadeprospeco1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure SchedulerDateNavigatorSelectionChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure AgendaAfterOpen(DataSet: TDataSet);
    procedure AgendaBeforeOpen(DataSet: TDataSet);
    procedure AgendaBeforePost(DataSet: TDataSet);
    procedure Agenda_TarefasBeforeOpen(DataSet: TDataSet);
    procedure Agenda_UsuarioAfterOpen(DataSet: TDataSet);
    procedure Agenda_UsuarioBeforeClose(DataSet: TDataSet);
    procedure AgendaAfterPost(DataSet: TDataSet);
    procedure TreeListUsuariosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SchedulerDBStorageRemindersAlertReminder
      (Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder;
      var AHandled: Boolean);
    procedure BtnAtualizarTarefasClick(Sender: TObject);
    procedure Visualizartempogasto1Click(Sender: TObject);
    procedure TransAgDtAtualClick(Sender: TObject);
    procedure SchedulerEventPopupMenuPopup(Sender: TcxSchedulerEventPopupMenu;
      ABuiltInMenu: TPopupMenu; var AHandled: Boolean);
    procedure BtnSelecaoDataConfirmarClick(Sender: TObject);
    procedure BtnSelecaoDataCancelarClick(Sender: TObject);
    procedure Moverparadata1Click(Sender: TObject);
    procedure AlterarOpesdaAgenda1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure CbAgendaUsuariosPropertiesChange(Sender: TObject);
    procedure Ocultaragendamentosnogrid1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure Agenda_FiltroBeforePost(DataSet: TDataSet);
    procedure VisualizarPorUsuarioClick(Sender: TObject);
    procedure Agenda_UsuarioBeforeOpen(DataSet: TDataSet);
    procedure SchedulerSelectionChanged(Sender: TObject);
    procedure ransferirpara1Click(Sender: TObject);
    procedure BtnTransfConfirmarClick(Sender: TObject);
    procedure BtnTransfCancelarClick(Sender: TObject);
    procedure CbTransfSetorPropertiesChange(Sender: TObject);
    procedure ransferirpara2Click(Sender: TObject);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure SchedulerDateNavigatorPeriodChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure TimerF10Timer(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure SchedulerBeforeEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
    procedure SchedulerGetEventHintText(Sender: TObject;
      AEvent: TcxSchedulerControlEvent; var AText: string);
    procedure AgendaAfterEdit(DataSet: TDataSet);
    procedure AgendaAfterCancel(DataSet: TDataSet);
    procedure AgendaAfterInsert(DataSet: TDataSet);
    procedure SchedulerAfterEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure BtnTimeGridClick(Sender: TObject);
    procedure a2Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure cxGrid3DBChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant;
      var ADisplayText: string);
    procedure R2Click(Sender: TObject);
    procedure G2Click(Sender: TObject);
    procedure TbZoomPropertiesChange(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure SchedulerViewDayCustomDrawTimeRuler(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerTimeRulerCellViewInfo; var ADone: Boolean);
    procedure AgendaCalcFields(DataSet: TDataSet);
    procedure cxButton7Click(Sender: TObject);
    procedure Btn3CXClick(Sender: TObject);
    procedure Timer3CXTimer(Sender: TObject);
    procedure CbTipoAgendaPropertiesChange(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure TimerNaoLidoTimer(Sender: TObject);
    procedure cxGridTarefasTableView1LIDOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: string);
    procedure V1Click(Sender: TObject);
    procedure Agenda_TarefasBeforeClose(DataSet: TDataSet);
    procedure Agenda_TarefasAfterOpen(DataSet: TDataSet);
    procedure edtFuncionarioPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCentro_TrabalhoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnNovoCadastroDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure btnKanbamDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure btnTabelaDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure Fechar1Click(Sender: TObject);
    procedure TreeListUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FControleWR: TControleWR;
    OldEventEditorClass: TcxSchedulerEventEditorClass;
    FFrameHistorico: TFrameHistorico;
    FListaNodesExpandidos: TList<Variant>;
    FEventoProdutividade: string;
    FAbrindoEvento: Boolean;
    FTipoVisualizacaoAgenda: TTipoVisualizacaoAgenda;
    FPreFiltro: TStringList; // Filtro adicional para o SQL da Agenda
    FPreFiltroGantt: TStringList;
    FEventoDataHistorico: TEventoDataHistorico;
    FInserindoEvento: Boolean;
    FAtualizandoDatasEventos: Boolean;
    FModo: TModoAgenda;
    FTipoViewGantt: TTipoViewGantt;
    FCodAgendaViewGanttProduto: string;
    FDataUltimoNaoLido : TDateTime;
    FAgenda_TarefasBookmark : string;
    FGridTarefasExpandedRecords : TList<Integer>; //Lista de Records do GridTarefas que estão como Grupos e expandidos

    procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND;

    procedure AddStr(var AStr: String; AParam: String);
    procedure AjustaResources;
    procedure AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string; AParent, AImageIndex: Integer;
      ATipo: TFiltroTipo; AFilter: TcxDBDataFilterCriteria); overload;
    procedure AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string; AParent, AImageIndex: Integer;
      ATipo: TFiltroTipo; AFiltroStream: TMemoryStream = nil); overload;
    procedure AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string; AParent, AImageIndex: Integer;
      ATipo: TFiltroTipo; ABlobField: TField); overload;
    procedure SetTipoVisualizacaoAgenda(const Value: TTipoVisualizacaoAgenda);
    procedure AddAgendaResource(ACodigo, AParent, AImageIndex: Integer; ADescricao: string; ACodItemFixo: Variant;
      ATipo: TFiltroTipo);
    procedure TransfAtualizarResponsaveis;
    procedure TransfAtualizarSetores;
    procedure GerarHistoricoAgenda(AAtualizar: Boolean);
    procedure AtualizaHorarioGanttHistorico;
    procedure CarregaConfigsAgenda;
    procedure AjustaHorariosEventosTimeline(ACodAgenda: string);
    procedure TreeBrowserOnDblClick(Sender: TObject);
    procedure SetTipoViewGantt(ATipoView: TTipoViewGantt; ACodEvento: string);
    procedure LancaTempoProdutividade(ACodAgenda: string);
    procedure CarregaTiposAgenda;
//    function ExecutaWizard: Boolean;

    // CRM
    procedure PreencheSetores(ACodItem, AParent: Integer);
    procedure MoveEventosAntigos(APrazoDefinido: Integer = 0);
    procedure VerificaEventosInsercao(var Message: TMessage); message WM_VERIFICA_EVENTOS;
    procedure SetModo(const Value: TModoAgenda);
  public
    { Public declarations }
    Bloqueado: Boolean;
    FCodAgendaEditorNovo :Variant;
    procedure ComitaTransacao;
    procedure AbreEvento(AID: string);
    function VerificaBloqueio: Boolean;
    property EventoProdutividade: String read FEventoProdutividade write FEventoProdutividade;
    property TipoVisualizacaoAgenda: TTipoVisualizacaoAgenda read FTipoVisualizacaoAgenda write SetTipoVisualizacaoAgenda;
    procedure InsereEventoEm(AEventoOriginal, AEventoInserir: TcxSchedulerEvent);
    procedure SetLido(ACodAgenda: string; ALido: Boolean; ACodUsuario: string = '');
    function FinalizarEvento(AEvent: TcxSchedulerControlEvent; AEfetuarPost: Boolean): Boolean;
    property Modo: TModoAgenda read FModo write SetModo;
    class procedure AbreFrame(Var AFrame :TFrmAgenda; AModo: TModoAgenda);
    class Function AbreFrameDetail(Var AFrame :TFrmAgenda; AModo: TModoAgenda):TForm;
  end;

  TcxSchedulerIDFieldDataProvider = class(TcxSchedulerTreeListBrowserColumnDataProvider)
  protected
    function GetCaption: string; override;
    function GetValue(const AEvent: TcxSchedulerEvent): Variant; override;
    procedure SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant); override;
  end;

  TcxSchedulerTempoFieldDataProvider = class(TcxSchedulerTreeListBrowserColumnDataProvider)
  protected
    function GetCaption: string; override;
    function GetValue(const AEvent: TcxSchedulerEvent): Variant; override;
    procedure SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant); override;
  end;

  TcxSchedulerEventFieldDataProvider = class(TcxSchedulerTreeListBrowserColumnDataProvider)
  protected
    function GetCaption: string; override;
    function GetValue(const AEvent: TcxSchedulerEvent): Variant; override;
    procedure SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant); override;
  end;

function CallBackDelHook(Code: Integer; wParam: wParam; lParam: lParam): LRESULT; stdcall;

var
  FrmAgenda: TFrmAgenda;
  FHookDeTeclado: HHook;

implementation

{$R *.dfm}

uses
  Registry, cxSchedulerDialogs, AgendaEditor, Principal, StrUtils, DateUtils, ImpAgenda,
  DataModuleImpressao, AgendaEditorRapido, dxGDIPlusClasses, Math,
  Aguarde, InspetorDeObjetos, cxGeometry, System.IOUtils, System.Types, ACBrUtil, CadSetor,
  CadAgenda_Titulo, Classes.PlanoContas, wrForms, Base, Tag.Form;

class procedure TFrmAgenda.AbreFrame(var AFrame: TFrmAgenda; AModo: TModoAgenda);
begin
  if ( AFrame = nil) then
    Application.CreateForm(TFrmAgenda, AFrame);
  AFrame.Modo := AModo;
  AFrame.Show;
  //Abre
  //Cria historico
end;

class function TFrmAgenda.AbreFrameDetail(var AFrame: TFrmAgenda; AModo: TModoAgenda):TForm;
begin
  if ( AFrame = nil) then
  begin
    Application.CreateForm(TFrmAgenda, AFrame);
    AFrame.Modo := AModo;
    AFrame.borderStyle:= bsNone;
    AFrame.FormStyle:= fsNormal;
  end;
  Result:= AFrame;
  if Not AFrame.Visible then AFrame.Show;

  //Abre
  //Cria historico
end;

procedure TFrmAgenda.AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string;
  AParent, AImageIndex: Integer; ATipo: TFiltroTipo; AFilter: TcxDBDataFilterCriteria);
var
  AMSFiltro: TMemoryStream;
begin
  if Assigned(AFilter) then
  begin
    AMSFiltro := TMemoryStream.Create;
    try
      AFilter.SaveToStream(AMSFiltro);
      AMSFiltro.Position := 0;
      AddAgendaFiltro(ACodigo, ACodItemFixo, ADescricao, AParent, AImageIndex, ATipo, AMSFiltro);
    finally
      FreeAndNil(AMSFiltro);
    end;
  end else
    AddAgendaFiltro(ACodigo, ACodItemFixo, ADescricao, AParent, AImageIndex, ATipo);
end;

procedure TFrmAgenda.AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string;
  AParent, AImageIndex: Integer; ATipo: TFiltroTipo; AFiltroStream: TMemoryStream = nil);
begin
  CDSAgendaFiltro.Append;
  CDSAgendaFiltro.FieldByName('CODIGO').AsInteger := ACodigo;
  if not VarIsNull(ACodItemFixo) then
    CDSAgendaFiltro.FieldByName('CodItemFixo').AsInteger := ACodItemFixo;
  CDSAgendaFiltro.FieldByName('DESCRICAO').AsString   := ADescricao;
  CDSAgendaFiltro.FieldByName('PARENT').AsInteger     := AParent;
  CDSAgendaFiltro.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;
  CDSAgendaFiltro.FieldByName('TIPO').AsInteger       := Integer(ATipo);
  if Assigned(AFiltroStream) then
    TBlobField(CDSAgendaFiltro.FieldByName('FILTRO')).LoadFromStream(AFiltroStream);
  CDSAgendaFiltro.Post;
end;

procedure TFrmAgenda.LancaTempoProdutividade(ACodAgenda: string);
var
  QuerX: TFDQuery;
  ATransa : TFDTransaction;
  ACodSetor: Integer;
begin
  // Quando o ticket é fechado, a data atual é colocada no histórico que foi gerado no AfterEdit
  if FInserindoEvento then
    Exit;
  FEventoDataHistorico.DataFinal := DataHoraSys;

  QuerX := GeraFDQuery(Agenda.Transaction);
  try
    QuerX.SQL.Text := 'select CODSETOR from AGENDA where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodAgenda;
    QuerX.Open;
    ACodSetor := QuerX.Fields[0].AsInteger;
  finally
    QuerX.Free;
  end;

  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  // O ajuste é comitado junto com a transação do evento.
  try
    QuerX.SQL.Text := 'insert into PRODUCAO_TEMPO (CODIGO, CODAGENDA, CODUSUARIO, DATA_INICIO, DATA_FIM, CODSETOR) ' +
                      '              values (:CODIGO, :CODAGENDA, :CODUSUARIO, :DATA_INICIO, :DATA_FIM, :CODSETOR)';
    QuerX.ParamByName('CODIGO').AsInteger       := GetProximoCodigo('PRODUCAO_TEMPO');
    QuerX.ParamByName('CODAGENDA').AsString     := ACodAgenda;
    QuerX.ParamByName('CODUSUARIO').AsInteger   := CodigoUsuario;
    QuerX.ParamByName('DATA_INICIO').AsDateTime := FEventoDataHistorico.DataInicial;
    QuerX.ParamByName('DATA_FIM').AsDateTime    := FEventoDataHistorico.DataFinal;
    QuerX.ParamByName('CODSETOR').AsInteger     := ACodSetor;
    QuerX.ExecSQL;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TFrmAgenda.AddAgendaFiltro(ACodigo: Integer; ACodItemFixo: Variant; ADescricao: string;
  AParent, AImageIndex: Integer; ATipo: TFiltroTipo; ABlobField: TField);
var
  AMSFiltro: TMemoryStream;
begin
  if Assigned(ABlobField) then
  begin
    AMSFiltro := TMemoryStream.Create;
    try
      TBlobField(ABlobField).SaveToStream(AMSFiltro);
      AMSFiltro.Position := 0;
      AddAgendaFiltro(ACodigo, ACodItemFixo, ADescricao, AParent, AImageIndex, ATipo, AMSFiltro);
    finally
      FreeAndNil(AMSFiltro);
    end;
  end else
    AddAgendaFiltro(ACodigo, ACodItemFixo, ADescricao, AParent, AImageIndex, ATipo);
end;

procedure TFrmAgenda.AddAgendaResource(ACodigo, AParent, AImageIndex: Integer; ADescricao: string; ACodItemFixo: Variant;
  ATipo: TFiltroTipo);
begin
  CDSAgendaUsuario.Append;
  CDSAgendaUsuario.FieldByName('CODIGO').AsInteger     := ACodigo;
  CDSAgendaUsuario.FieldByName('CodItemFixo').Value    := ACodItemFixo;
  CDSAgendaUsuario.FieldByName('DESCRICAO').AsString   := ADescricao;
  CDSAgendaUsuario.FieldByName('PARENT').AsInteger     := AParent;
  CDSAgendaUsuario.FieldByName('IMAGEINDEX').AsInteger := AImageIndex;
  CDSAgendaUsuario.FieldByName('TIPO').AsInteger       := Integer(ATipo);
  CDSAgendaUsuario.Post;
end;

procedure TFrmAgenda.AddStr(var AStr: String; AParam: String);
begin
  if AStr <> '' then
    AStr := AStr + ', ';
  AStr := AStr + AParam;
end;

procedure TFrmAgenda.a2Click(Sender: TObject);
var
  ATreeList : TcxSchedulerTreeListBrowser;
  ANode : TcxTreeListNode;
begin
  ATreeList := TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl);
  if ATreeList.DataController.TreeList.SelectionCount > 0 then
  begin
    ANode := ATreeList.DataController.TreeList.Selections[0];
    ATreeList.DataController.TreeList.Select(ANode.getNextSibling);
//    ANode.
//    ATreeList.Columns[0].d
    ANode.Values[1] := 100;
  end;
end;

procedure TFrmAgenda.AbreEvento(AID: string);
var
  i : Integer;
  AControlEvent: TcxSchedulerControlEvent;
  AEvent : TcxSchedulerEvent;
  QuerX : TFDQuery;
begin
  AEvent := SchedulerDBStorage.GetEventByID(AID);
//  try
//    AEvent.Caption;
//  except
//    AEvent := nil;
//  end;

  if (AEvent <> nil) then
  begin
    for i := 0 to Scheduler.VisibleEventCount - 1 do
    begin
      AControlEvent := Scheduler.VisibleEvents[i];
      if AControlEvent.Source = AEvent then
      begin
        if not SchedulerDBStorage.IsEventEditing(AControlEvent) then
          Scheduler.EditEventUsingDialog(AControlEvent);
        Break;
      end;
    end;
  end else
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select DT_INICIO, CODUSUARIO_RESPONSAVEL, CODSETOR, CODAGENDA_TITULO ' +
                        'from AGENDA ' +
                        'where (CODIGO = :Codigo)';
      QuerX.Params[0].AsString := AID;
      QuerX.Open;

      case TipoVisualizacaoAgenda of
         vaTitulo: CDSAgendaUsuario.Locate('TIPO;CodItemFixo', VarArrayOf([Integer(tfAgendaTitulo), QuerX.FieldByName('CODAGENDA_TITULO').AsInteger]), []);
        vaUsuario: CDSAgendaUsuario.Locate('TIPO;CodItemFixo', VarArrayOf([Integer(tfUsuario), QuerX.FieldByName('CODUSUARIO_RESPONSAVEL').AsInteger]), []);
        vaEstagio: CDSAgendaUsuario.Locate('TIPO;CodItemFixo', VarArrayOf([Integer(tfSetor), QuerX.FieldByName('CODSETOR').AsInteger]), []);
      end;

      TreeListUsuariosClick(TreeListUsuarios);

      Scheduler.DateNavigator.FirstDate := StartOfTheMonth(QuerX.FieldByName('DT_INICIO').AsDateTime);
      Scheduler.GoToDate(QuerX.FieldByName('DT_INICIO').AsDateTime);
      for i := 0 to Scheduler.VisibleEventCount - 1 do
      begin
        AControlEvent := Scheduler.VisibleEvents[i];
        if AControlEvent.ID = AID then
        begin
          if not SchedulerDBStorage.IsEventEditing(AControlEvent) then
          begin
            Scheduler.SelectEvent(AControlEvent);
            Scheduler.MakeEventVisible(AControlEvent);
            Scheduler.EditEventUsingDialog(AControlEvent);
          end;
          Break;
        end;
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TFrmAgenda.Abrircomosistema1Click(Sender: TObject);
var
  Reg: TRegistry;
begin
  TMenuItem(Sender).Checked := not TMenuItem(Sender).Checked;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True) then
      Reg.WriteBool('Agenda_Ativa', TMenuItem(Sender).Checked);
  finally
    Reg.Free;
  end;
end;

procedure TFrmAgenda.AgendaAfterCancel(DataSet: TDataSet);
begin
  AtualizaHorarioGanttHistorico;
end;

procedure TFrmAgenda.AgendaAfterEdit(DataSet: TDataSet);
begin
  GerarHistoricoAgenda(False);
end;

procedure TFrmAgenda.AgendaAfterInsert(DataSet: TDataSet);
begin
  // Essa rotina tem q estar no afterinsert?
  // GerarHistoricoAgenda(False);
end;

procedure TFrmAgenda.AgendaAfterOpen(DataSet: TDataSet);
var
  AStr: string;
begin
  if not Ocultaragendamentosnogrid1.Checked then
    Agenda_Tarefas.Open;
  SchedulerDBStorage.BeginUpdate;
  try
    if TipoVisualizacaoAgenda = vaEstagio then
      AStr := 'KANBAN_'
    else
      AStr := IfThen(Modo = maPCP, 'GANTT_', '');
    with SchedulerDBStorage.FieldNames do
    begin
      Start        := AStr + 'DT_INICIO';
      Finish       := AStr + 'DT_FIM';
      ActualStart  := AStr + 'ACTUAL_START';
      ActualFinish := AStr + 'ACTUAL_FINISH';
    end;
  finally
    SchedulerDBStorage.EndUpdate;
  end;
//  LbQuantEventos.Caption := Agenda.RecordCount.ToString;
  FrmPrincipal.StatusBar.Panels[3].Text := 'Registros: '+Agenda.RecordCount.ToString;
end;

procedure TFrmAgenda.AgendaAfterPost(DataSet: TDataSet);
var
  ACodAgenda : string;
  ACodResp : Integer;
begin
  if not FAtualizandoDatasEventos then
  begin
    AtualizaHorarioGanttHistorico;
    FEventoDataHistorico.EventoPostado := True;

    ACodAgenda := AgendaCODIGO.AsString;
    ACodResp   := AgendaCODUSUARIO_RESPONSAVEL.AsInteger;

    ComitaTransacao;
    SetLido(ACodAgenda, False);
    if ACodResp <> CodigoUsuario then
      SetLido(ACodAgenda, False, ACodResp.ToString);
  end;

  // Verifica se o evento que foi alterado é o evento que deveria estar sendo alterado, baseando-se no gantt.
//  if not FInserindoEvento then
//    PostMessage(self.Handle, WM_VERIFICA_EVENTOS, 0, 0);
  // Agenda.Close;
  // Agenda.Open;
  // Scheduler.FullRefresh;
end;

procedure TFrmAgenda.AgendaBeforeOpen(DataSet: TDataSet);
var
  I: Integer;
  AStr: string;
  ADtInicio: TDateTime;
begin
  Agenda.SQL.BeginUpdate;
  try
//    LimpaSQLWhere(Agenda);
    if FTipoViewGantt = vgProduto then
    begin
      Agenda.SQL.text := 'select A.CODIGO, A.PROTOCOLO, A.SEQUENCIA, A.CODAGENDA_TITULO, A.CAPTION, ' +
                         '       A.DT_INICIO, A.DT_FIM, ' +
                         '       A.IMAGEMINDEX, A.COLOR, A.IMAGE, ' +
                         '       A.TAREFA_COMPLETA, A.TAREFA_INDEX, A.STATUS, A.EVENTO_TIPO, ' +
                         '       A.RECURRENCE_INDEX, A.REMINDER_DATE, A.OPTIONS, A.LOCATION, ' +
                         '       A.RECURRENCE_INFO, A.TELEFONE, A.TAREFA_STATUS, A.TAREFA_LINK, ' +
                         '       A.CODFINANCEIRO, A.CODEMPRESA, A.DT_FATURAMENTO, A.BLOQUEIO, ' +
                         '       A.FUNCIONARIO, A.CODEQUIPAMENTO, A.EQUIPAMENTO, A.SOLICITANTE, ' +
                         '       A.CODVENDA, A.OCORRENCIA, A.VALOR, A.DT_EMISSAO, A.PRIORIDADE, ' +
                         '       A.DT_ALTERACAO, A.CODVENDA_PRODUTO, A.ATIVO, A.CODSETOR, ' +
                         '       A.CODUSUARIO_RESPONSAVEL, A.CODPRODUTO, A.PRODUTO, A.CODUSUARIO_CRIADOR, ' +
                         '       A.CODUSUARIO_ALTERADO, A.PARENT_ID, A.REMINDER_MINUTES, A.GROUP_ID, ' +
                         '       A.REMINDER_RESOURCES_DATA, A.CODAGENDA_COMPOSICAO, A.CODSTATUS, ' +
                         '       A.TIPO_AGENDAMENTO, A.PESSOA_CLIENTE_CODIGO, A.PESSOA_CLIENTE_TIPO, ' +
                         '       A.PESSOA_CLIENTE_SEQUENCIA, A.PESSOA_FUNCIONARIO_CODIGO, A.CODAGENDA_FAQ, ' +
                         '       A.PESSOA_FUNCIONARIO_TIPO, A.PESSOA_FUNCIONARIO_SEQUENCIA, A.VISUALIZA, ' +
                         '       A.ORDENACAO, A.ACTUAL_START, A.ACTUAL_FINISH, A.CODEMAIL, A.CODEMAIL_CRM_DATABASE, ' +
//                         '       A.GANTT_DT_INICIO, A.GANTT_DT_FIM, ' +
                         '       A.GANTT_ACTUAL_START, A.GANTT_ACTUAL_FINISH, rpad('''', 30) as SKYPE_ID, A.CODCONDICAOPAGTO, A.CONDICAOPAGTO,' +
                         '       (select first 1 AM.MENSAGEM ' +
                         '        from AGENDA_MENSAGEM AM ' +
                         '        where (AM.CODAGENDA = A.CODIGO) ' +
                         '        order by AM.DT_MENSAGEM desc)  '+
//                         ' ''0'' as MENSAGEM, '+
                         ' PT.DATA_INICIO as GANTT_DT_INICIO, PT.DATA_FIM as GANTT_DT_FIM ' +
                         'from AGENDA A ' +
                         'left join PRODUCAO_TEMPO PT on (PT.CODAGENDA = A.CODIGO)';
    end else
    begin
      Agenda.SQL.text := 'select A.CODIGO, A.PROTOCOLO, A.SEQUENCIA, A.CODAGENDA_TITULO, A.CAPTION, ' +
                         '       A.DT_INICIO, A.DT_FIM, A.IMAGEMINDEX, A.COLOR, A.IMAGE, ' +
                         '       A.TAREFA_COMPLETA, A.TAREFA_INDEX, A.STATUS, A.EVENTO_TIPO, ' +
                         '       A.RECURRENCE_INDEX, A.REMINDER_DATE, A.OPTIONS, A.LOCATION, ' +
                         '       A.RECURRENCE_INFO, A.TELEFONE, A.TAREFA_STATUS, A.TAREFA_LINK, ' +
                         '       A.CODFINANCEIRO, A.CODEMPRESA, A.DT_FATURAMENTO, A.BLOQUEIO, ' +
                         '       A.FUNCIONARIO, A.CODEQUIPAMENTO, A.EQUIPAMENTO, A.SOLICITANTE, ' +
                         '       A.CODVENDA, A.OCORRENCIA, A.VALOR, A.DT_EMISSAO, A.PRIORIDADE, ' +
                         '       A.DT_ALTERACAO, A.CODVENDA_PRODUTO, A.ATIVO, A.CODSETOR, ' +
                         '       A.CODUSUARIO_RESPONSAVEL, A.CODPRODUTO, A.PRODUTO, A.CODUSUARIO_CRIADOR, ' +
                         '       A.CODUSUARIO_ALTERADO, A.PARENT_ID, A.REMINDER_MINUTES, A.GROUP_ID, ' +
                         '       A.REMINDER_RESOURCES_DATA, A.CODAGENDA_COMPOSICAO, A.CODSTATUS, ' +
                         '       A.TIPO_AGENDAMENTO, A.PESSOA_CLIENTE_CODIGO, A.PESSOA_CLIENTE_TIPO, ' +
                         '       A.PESSOA_CLIENTE_SEQUENCIA, A.PESSOA_FUNCIONARIO_CODIGO, A.CODEMAIL, A.CODEMAIL_CRM_DATABASE, ' +
                         '       A.PESSOA_FUNCIONARIO_TIPO, A.PESSOA_FUNCIONARIO_SEQUENCIA, A.VISUALIZA, ' +
                         '       A.ORDENACAO, A.ACTUAL_START, A.ACTUAL_FINISH, A.GANTT_DT_INICIO, A.CODAGENDA_FAQ, ' +
                         '       A.KANBAN_DT_INICIO, A.KANBAN_DT_FIM, A.KANBAN_ACTUAL_START, A.KANBAN_ACTUAL_FINISH, ' +
                         '       A.GANTT_DT_FIM, A.GANTT_ACTUAL_START, A.GANTT_ACTUAL_FINISH, rpad('''', 30) as SKYPE_ID, A.CODCONDICAOPAGTO, A.CONDICAOPAGTO '+
                         '       ,(select first 1 AM.MENSAGEM ' +
                         '        from AGENDA_MENSAGEM AM ' +
                         '        where (AM.CODAGENDA = A.CODIGO) ' +
                         '        order by AM.DT_MENSAGEM desc)  '+
//                         ' ''0'' as MENSAGEM ' +
                         'from AGENDA A ';
    end;
    Agenda.SQL.Add('where ((A.ATIVO = ''S'')');
    if FTipoViewGantt = vgProduto then
      Agenda.SQL.Add('and (A.CODIGO = :CodAgenda)')
    else
      Agenda.SQL.Add('and (A.TIPO_AGENDAMENTO = ' + EventoTipoToStr(etAgendamento).ToString + ')');

    // Adiciona os PreFiltros
    if ContainsText(FPreFiltro.Text, 'CODSETOR') or ContainsText(FPreFiltro.Text, 'CODUSUARIO_RESPONSAVEL') then
      Agenda.SQL.AddStrings(FPreFiltro)
      // Este filtro é tratado nos clicks dos grids
    else
    begin
      case TipoVisualizacaoAgenda of
         vaTitulo: Agenda.SQL.Add('and (A.CODAGENDA_TITULO = :Codigo)');
        vaUsuario: Agenda.SQL.Add('and (A.CODUSUARIO_RESPONSAVEL = :Codigo)');
        vaEstagio: Agenda.SQL.Add('and (A.CODSETOR = :Codigo)');
      end;
    end;

    // Filtro de Datas
    if Modo = maPCP then
    begin
//       Agenda.SQL.Add('and (A.TIPO_AGENDAMENTO in (' + etAgendamento.Codigo.ToString + ', ' + etLogAlteracao.Codigo.ToString + '))');
       Agenda.SQL.Add('and not (A.TAREFA_STATUS in (' +
                      Integer(tsComplete).ToString + ', ' +
                      Integer(tsWaiting).ToString + ', ' +
                      Integer(tsDeferred).ToString + '))');
//       if FPreFiltroGantt.Count > 0 then
//         Agenda.SQL.AddStrings(FPreFiltroGantt);
//       with Scheduler.DateNavigator.SelectionList do
//         ADtInicio := Min(IfThen(Count > 0, Items[0], DateOf(Now)), DateOf(Now));
//       Agenda.SQL.Add('and (A.TIPO_AGENDAMENTO = ' + etAgendamento.Codigo.ToString + ')');
    end
    else if TipoVisualizacaoAgenda <> vaEstagio then
      Agenda.SQL.Add('and ((A.DT_INICIO between :DtInicio1 and :DtFim) or (:DtInicio2 between A.DT_INICIO and A.DT_FIM))');
    // Este SQL pega o primeiro ponto da intersecção entre a data do agendamento e o calendário visível

    // Controle de visualização do evento, ajustar e testar quando for implementado
    { Agenda.SQL.Add('and ((COALESCE(A.VISUALIZA,0) = 0) ' +
      '            or ((A.VISUALIZA = 1) and (A.CODUSUARIO_RESPONSAVEL = :CodUsuario1)) ' +
      '            or ((A.VISUALIZA = 2) and exists(select first 1 1 ' +
      '                                           from SETOR_FUNCIONARIO SF ' +
      '                                           left join USUARIO U on (SF.CODFUNCIONARIO = U.CODFUNCIONARIO) ' +
      '                                           where (U.CODIGO = :CodUsuario2) ' +
      '                                                  and (SF.CODSETOR = A.CODSETOR))))');

      Agenda.SQL.Add(')'); }

    if menuEmAberto.Checked then
      Agenda.SQL.Add('and (A.DT_FATURAMENTO is null)')
    else if menuFaturados.Checked then
      Agenda.SQL.Add('and not (A.DT_FATURAMENTO is null)');

    // Filtro adicional para evitar erros ao mover agendamentos
    AStr := '';
    for I := 0 to Scheduler.SelectedEventCount - 1 do
    begin
      if AStr <> '' then
        AStr := AStr + ',';
      AStr := AStr + QuotedStr(Scheduler.SelectedEvents[I].ID);
    end;
    Agenda.SQL.Add(')' + IfThen(not AStr.IsEmpty, 'or (A.CODIGO in (' + AStr + '))'));
    if Modo = maPCP then
      Agenda.SQL.Add('order by A.PRIORIDADE desc, A.SEQUENCIA asc')
    else
      Agenda.SQL.Add('order by A.DT_INICIO asc');
  finally
    Agenda.SQL.EndUpdate;
  end;
  if FTipoViewGantt = vgProduto then
    Agenda.ParamByName('CodAgenda').AsString := FCodAgendaViewGanttProduto;
    
  if Agenda.Params.Count > 1 then // 1 = :Codigo
  begin
    // Agenda.ParamByName('CodUsuario1').AsString := CodigoUsuario;
    // Agenda.ParamByName('CodUsuario2').AsString := CodigoUsuario;
    if Modo = maPCP then
    begin
//      Agenda.ParamByName('DtInicio').AsDateTime := ADtInicio;
//      Agenda.ParamByName('DtFim').AsDateTime    := IncDay(Now, 7);
    end else
    begin
      if TipoVisualizacaoAgenda <> vaEstagio then
      begin
        Agenda.ParamByName('DtInicio1').AsDateTime := StartOfTheDay(Scheduler.DateNavigator.RealFirstDate);
        Agenda.ParamByName('DtInicio2').AsDateTime := StartOfTheDay(Scheduler.DateNavigator.RealFirstDate);
        Agenda.ParamByName('DtFim').AsDateTime     := EndOfTheDay(Scheduler.DateNavigator.RealLastDate);
      end;
    end;
  end;
  {$IFDEF DEBUG}
  StringToFile('D:\SQL.sql', Agenda.SQL.Text + ' - DtInicio1: ' + Agenda.ParamByName('DtInicio1').AsString +
                                               ' - DtInicio2: ' + Agenda.ParamByName('DtInicio2').AsString +
                                               ' - DtIFIM: ' + Agenda.ParamByName('DtFim').AsString);
  {$ENDIF}
end;

procedure TFrmAgenda.AgendaBeforePost(DataSet: TDataSet);

  procedure PreencheSeVazio(AField: TField; AValue: Variant);
  begin
    if AField.AsString = '' then
      AField.Value := AValue;
  end;

  function GetDataFormatada(AData: TDateTime): string;
  begin
    Try
      if AData > IncDay(0) then
        Result := FormatDateTime('dd/mm/yyyy hh:mm', AData);
    except
      Result := 'Nenhum';
    end;
  end;

var
  ADataServidor: TDateTime;
  QuerX: TFDQuery;
//  ACodProvisorio: string;
  ACodSequencia: Integer;
  AMensagem : TStringList;
begin
  ADataServidor := DataHoraSys;
  if Agenda.State = dsInsert then
  begin
    if FCodAgendaEditorNovo <> null then
      AgendaCODIGO.AsInteger := FCodAgendaEditorNovo
    else
      AgendaCODIGO.AsInteger := GetProximoCodigoSP(SPAgenda);
    FCodAgendaEditorNovo:=null;
//    MensagensMemoria.DisableControls;
//    MensagensMemoria.First;
//    while not MensagensMemoria.Eof do
//    begin
//      TFrameHistorico.AdicionaHistorico(Transa, UCHist_Casdatro, MensagensMemoriaMENSAGEM.AsString, MensagensMemoriaDATA.AsDateTime);
//      MensagensMemoria.Next;
//    end;
//    MensagensMemoria.EmptyDataSet;
//    MensagensMemoria.EnableControls;
    if Assigned(FFrameHistorico) then
      FFrameHistorico.Atualizar;
    QuerX := GeraFDQuery(Transa);
    try
      AgendaDT_EMISSAO.AsDateTime := ADataServidor;

      // Quando é um novo evento, o campo PROTOCOLO vem preenchido com o código provisório gerado no evento
//      ACodProvisorio := AgendaPROTOCOLO.AsString;
      AgendaPROTOCOLO.AsString := NovoAgendaProtocoloInt(ACodSequencia);
      AgendaSEQUENCIA.AsInteger := ACodSequencia;

    {  // Depois que o código é criado e o protocolo assume seu valor correto, é feita uma atualização na tabela de mensagens
      // para setar o código correto para as mensagens que foram inseridas quanto o evento ainda não existia no banco
      QuerX.SQL.Text := 'update AGENDA_MENSAGEM set CODAGENDA = :NovoCod ' +
                        'where (CODAGENDA = :OldCod)';
      QuerX.ParamByName('OldCod').AsString := ACodProvisorio;
      QuerX.ParamByName('NovoCod').Value := AgendaCODIGO.AsString;
      QuerX.ExecSQL;}

      if AgendaORDENACAO.IsNull then
      begin
        QuerX.SQL.Text := 'select max(A.ORDENACAO) ' +
                          'from AGENDA A ' +
                          'where (A.DT_FATURAMENTO is null) ' +
                          '      and (A.ATIVO = ''S'') ' +
                          '      and (A.TIPO_AGENDAMENTO = ' + EventoTipoToStr(etAgendamento).ToString + ')';
        QuerX.Open;
        AgendaORDENACAO.AsFloat := QuerX.Fields[0].AsInteger + 1;
      end;
    finally
      QuerX.Free;
    end;
  end;
  if not(AgendaDT_FATURAMENTO.AsDateTime > 0) then
    AgendaDT_FATURAMENTO.Clear;
  PreencheSeVazio(AgendaCODUSUARIO_ALTERADO, CodigoUsuario);
  PreencheSeVazio(AgendaTAREFA_STATUS, 0);
  PreencheSeVazio(AgendaCODUSUARIO_CRIADOR, CodigoUsuario);
  PreencheSeVazio(AgendaGANTT_DT_INICIO, AgendaDT_INICIO.AsDateTime);
  PreencheSeVazio(AgendaGANTT_DT_FIM, AgendaDT_FIM.AsDateTime);
  PreencheSeVazio(AgendaGANTT_ACTUAL_START, AgendaACTUAL_START.AsInteger);
  PreencheSeVazio(AgendaGANTT_ACTUAL_FINISH, AgendaACTUAL_FINISH.AsInteger);
  AgendaDT_ALTERACAO.AsDateTime := ADataServidor;
  AMensagem := TStringList.Create;
  try
    if AgendaCODSETOR.OldValue <> AgendaCODSETOR.AsInteger then
    try
      AMensagem.Add('Encaminhado do Setor ' + QuotedStr(Procura('DESCRICAO', 'SETOR', VarToStrDef(AgendaCODSETOR.OldValue,'0'))) + ' para ' + QuotedStr(Procura('DESCRICAO', 'SETOR', AgendaCODSETOR.AsString)));
    except end;
    if AgendaPRIORIDADE.OldValue <> AgendaPRIORIDADE.AsInteger then
    try
      AMensagem.Add('Prioridade modificada: ' + PrioridadeStrToDescricao(VarToIntDef(AgendaPRIORIDADE.OldValue, 0)) +
                    ' -> ' + PrioridadeStrToDescricao(AgendaPRIORIDADE.AsInteger));
    except end;
    if AgendaTAREFA_STATUS.OldValue <> AgendaTAREFA_STATUS.AsInteger then
    begin
      try
        AMensagem.Add('Status modificado: ' + TarefaStatusIntToStr(VarToIntDef(AgendaTAREFA_STATUS.OldValue,0)) + ' -> ' + TarefaStatusIntToStr(AgendaTAREFA_STATUS.AsInteger));
  //      EnviaEmail('', GetTextoEmail(teStatus));
      except end;
    end;
    if AgendaTAREFA_STATUS.OldValue <> AgendaTAREFA_COMPLETA.AsInteger then
    try
      AMensagem.Add('Porcentagem de Conclusão: ' + IntToStr(AgendaTAREFA_STATUS.OldValue) + '% -> ' + AgendaTAREFA_COMPLETA.AsString + '%');
    except end;
    if AgendaDT_FIM.OldValue <> AgendaDT_FIM.AsDateTime then
    try
      AMensagem.Add('Previsão de Entrega: ' + GetDataFormatada(AgendaDT_FIM.OldValue) + ' -> ' + GetDataFormatada(AgendaDT_FIM.AsDateTime));
    except end;
    if AgendaDT_INICIO.OldValue <> AgendaDT_INICIO.AsDateTime then
    try
      AMensagem.Add('Data de Início: ' + GetDataFormatada(AgendaDT_INICIO.OldValue) + ' -> ' + GetDataFormatada(AgendaDT_INICIO.AsDateTime));
    except end;
//    if FLogAgenda.CodSituacao <> AgendaCODSTATUS.AsInteger then
//      EnviaEmail('', GetTextoEmail(teSituacao));
    if AMensagem.Count > 0 then
      UCHist_Casdatro.MensagemHistorico.Text :=AMensagem.Text;
//      TFrameHistorico.AdicionaHistorico(Transa, UCHist_Casdatro, 'Agenda', AMensagem.Text);   //AgendaPESSOA_CLIENTE_CODIGO.AsString
  finally
    AMensagem.Free;
  end;

  // Quando o histórico é feito para um novo evento, ele é criado no banco sem os dados,
  // por isso é necessário atualizar os dados do histórico no BeforePost.
  // if Agenda.State = dsInsert then
  // GerarHistoricoAgenda(True);
end;

procedure TFrmAgenda.AgendaCalcFields(DataSet: TDataSet);
begin
//  AgendaKanban_DT_INICIO.AsDateTime    := IncMinute(DateOf(Now), Agenda.RecNo * 60);
//  AgendaKanban_DT_FIM.AsDateTime       := IncMinute(AgendaKanban_DT_INICIO.AsDateTime, 60);
//  AgendaKanban_ACTUAL_START.AsInteger  := Trunc(AgendaKanban_DT_INICIO.AsDateTime);
//  AgendaKanban_ACTUAL_FINISH.AsInteger := Trunc(AgendaKanban_DT_FIM.AsDateTime);
end;

procedure TFrmAgenda.Agendamento1Click(Sender: TObject);
begin
  Scheduler.ViewDay.Active := True;
  cxGridLevel1.GridView := cxGridTarefasTableView1;
  Agenda.Close;
  Agenda.Open;
  Modo:=maAgenda;
end;

procedure TFrmAgenda.Agenda_FiltroAfterOpen(DataSet: TDataSet);
var
  AMSFiltro: TMemoryStream;
  ACod, I, j, ACodResource: Integer;
  APrioridade: TPrioridade;
  ATarefaStatus: TcxSchedulerEventTaskStatus;
  AItemList: TcxFilterCriteriaItemList;
  AColunaFiltro: TcxGridDBColumn;
begin
  if not(SchedulerDBStorage.ResourceCount > 0) then
    Exit;

  TreeListFiltros.BeginUpdate;
  cxGridTarefasTableView1.BeginUpdate;
  try
    CDSAgendaFiltro.EmptyDataSet;
    ACod := 10000;
    ACodResource := SchedulerDBStorage.ResourceIDs[0];
    // Pode ser CodUsuario ou CodTitulo
    case TipoVisualizacaoAgenda of
      vaTitulo:
        begin
          AddAgendaFiltro(5000, Null, SchedulerDBStorage.Resources.Items[0].Name, 0, 24, tfMinhaTarefa);
          AColunaFiltro := cxGridTarefasTableView1CODAGENDA_TITULO;
        end;
      vaUsuario:
        begin
          AddAgendaFiltro(5000, Null, 'Tarefas do Usuário: ' + SchedulerDBStorage.Resources.Items[0].Name, 0, 24, tfMinhaTarefa);
          AColunaFiltro := cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL;
        end;
    end;

    AddAgendaFiltro(3000, Null, 'Prioridades', 5000, 24, tfMinhaTarefa);
    for APrioridade := High(TPrioridade) downto Low(TPrioridade) do
      AddAgendaFiltro(3100 - PrioridadeToStr(APrioridade), PrioridadeToStr(APrioridade), PrioridadeToDescricao(APrioridade), 3000, 28 + PrioridadeToStr(APrioridade), tfPrioridade);
    AddAgendaFiltro(6000, Null, 'Status', 5000, 24, tfMinhaTarefa);

    cxGridTarefasTableView1.DataController.Filter.Root.Clear;
    AItemList := cxGridTarefasTableView1.DataController.Filter.Root.AddItemList(fboAnd);
    AItemList.AddItem(cxGridTarefasTableView1TAREFA_STATUS, foNotEqual, Integer(tsDeferred), TarefaStatusToStr(tsDeferred));
    AItemList.AddItem(AColunaFiltro, foEqual, ACodResource, IntToStr(ACodResource));
    AddAgendaFiltro(6001, Null, 'Pendentes', 6000, 39, tfPersonalizado, cxGridTarefasTableView1.DataController.Filter);
    Inc(ACod);

    for ATarefaStatus := Low(TcxSchedulerEventTaskStatus) to High(TcxSchedulerEventTaskStatus) do
      AddAgendaFiltro(6002 + Integer(ATarefaStatus), Integer(ATarefaStatus), TarefaStatusToStr(ATarefaStatus), 6000, 32 + Integer(ATarefaStatus), tfStatusTarefa);

    cxGridTarefasTableView1.DataController.Filter.Root.Clear;
    AItemList := cxGridTarefasTableView1.DataController.Filter.Root.AddItemList(fboAnd);
    AItemList.AddItem(cxGridTarefasTableView1DT_ALTERACAO, foToday, Null, DateTimeToStr(Now));
    AItemList.AddItem(AColunaFiltro, foEqual, ACodResource, IntToStr(ACodResource));
    AddAgendaFiltro(ACod, Null, 'Atualizadas Hoje', 5000, 23, tfPersonalizado, cxGridTarefasTableView1.DataController.Filter);
    Inc(ACod);

    cxGridTarefasTableView1.DataController.Filter.Root.Clear;
    AItemList := cxGridTarefasTableView1.DataController.Filter.Root.AddItemList(fboAnd);
    AItemList.AddItem(cxGridTarefasTableView1LIDO, foNotEqual, 1, '1');
    AItemList.AddItem(AColunaFiltro, foEqual, ACodResource, IntToStr(ACodResource));
    AddAgendaFiltro(ACod, Null, 'Não Lidas', 5000, 23, tfPersonalizado, cxGridTarefasTableView1.DataController.Filter);
    Inc(ACod);

    cxGridTarefasTableView1.DataController.Filter.Root.Clear;
    cxGridTarefasTableView1.DataController.Filter.Root.AddItem(cxGridTarefasTableView1CODUSUARIO_CRIADOR, foEqual, ACodResource, IntToStr(ACodResource));
    AddAgendaFiltro(ACod, Null, 'Criados Por Mim', 5000, 23, tfPersonalizado, cxGridTarefasTableView1.DataController.Filter);
    Inc(ACod);

    // Adiciona os Filtros Personalizados
    AddAgendaFiltro(4000, Null, 'Filtros Personalizados', 0, 24, tfNone);
    Agenda_Filtro.First;
    while not Agenda_Filtro.Eof do
    begin
      AddAgendaFiltro(Agenda_Filtro.FieldByName('CODIGO').AsInteger, Null, Agenda_Filtro.FieldByName('DESCRICAO').AsString, 4000, 23, tfPersonalizado, Agenda_Filtro.FieldByName('FILTRO'));
      Agenda_Filtro.Next;
    end;

    TreeListFiltros.FullCollapse;
    if FListaNodesExpandidos <> nil then
    begin
      for I := 0 to FListaNodesExpandidos.Count - 1 do
      begin
        for j := 0 to TreeListFiltros.Count - 1 do
        begin
          if TreeListFiltros.Items[j].Values[0] = FListaNodesExpandidos.Items[I] then
            TreeListFiltros.Items[j].Expand(False);
        end;
      end;
      FreeAndNil(FListaNodesExpandidos);
    end;
  finally
    TreeListFiltros.EndUpdate;
    cxGridTarefasTableView1.DataController.Filter.Root.Clear;
    cxGridTarefasTableView1.EndUpdate;
  end;
end;

procedure TFrmAgenda.Agenda_FiltroBeforeClose(DataSet: TDataSet);
var
  I: Integer;
begin
  FListaNodesExpandidos := TList<Variant>.Create;
  for I := 0 to TreeListFiltros.Count - 1 do
  begin
    if TreeListFiltros.Items[I].Expanded then
      FListaNodesExpandidos.Add(TreeListFiltros.Items[I].Values[0]);
  end;
end;

procedure TFrmAgenda.Agenda_FiltroBeforeOpen(DataSet: TDataSet);
begin
  Agenda_Filtro.ParamByName('Emp').AsString        := EmpresaAtiva;
  Agenda_Filtro.ParamByName('CodUsuario').AsInteger := CodigoUsuario;
end;

procedure TFrmAgenda.Agenda_FiltroBeforePost(DataSet: TDataSet);
begin
  AtualizaDtAlteracao(DataSet);
end;

procedure TFrmAgenda.Agenda_TarefasAfterOpen(DataSet: TDataSet);
var
  I : Integer;
begin
  if (FAgenda_TarefasBookmark <> '') and not Agenda_Tarefas.IsEmpty then
    Agenda_Tarefas.Locate('CODIGO', FAgenda_TarefasBookmark);

  if FGridTarefasExpandedRecords <> nil then
  begin
    for I := 0 to FGridTarefasExpandedRecords.Count - 1 do
      cxGridTarefasTableView1.ViewData.Records[FGridTarefasExpandedRecords[i]].Expanded := True;
  end;
end;

procedure TFrmAgenda.Agenda_TarefasBeforeClose(DataSet: TDataSet);
var
  i : Integer;
begin
  FAgenda_TarefasBookmark := Agenda_Tarefas.FieldByName('CODIGO').AsString;

  FGridTarefasExpandedRecords.Clear;
  for I := 0 to cxGridTarefasTableView1.ViewData.RecordCount - 1 do
  begin
    if cxGridTarefasTableView1.ViewData.Records[i].Expanded then
      FGridTarefasExpandedRecords.Add(i);
  end;
end;

procedure TFrmAgenda.Agenda_TarefasBeforeOpen(DataSet: TDataSet);
var
  ATextoPesquisa, ACodSetores: string;
  QuerX : TFDQuery;
begin
  Agenda_Tarefas.SQL.BeginUpdate;
  try
    LimpaSQLWhere(Agenda_Tarefas);
    ATextoPesquisa := AnsiUpperCase(QuotedStr('%' + Trim(edtPesquisa.Text) + '%'));
    if (edtPesquisa.Text <> '') and (AnsiUpperCase(edtPesquisa.Text) <> 'PESQUISAR') then
    begin
      Agenda_Tarefas.SQL.Add('and ((upper(A.CODIGO) like ' + ATextoPesquisa + ')' +
                             '  or (upper(A.CAPTION) like ' + ATextoPesquisa + ')' +
                             '  or (upper(A.LOCATION) like ' + ATextoPesquisa + ')' +
                             '  or (upper(A.SOLICITANTE) like ' + ATextoPesquisa + '))');
    end;
    if menuEmAberto.Checked then
      Agenda_Tarefas.SQL.Add('and (A.DT_FATURAMENTO is null)')
    else if menuFaturados.Checked then
      Agenda_Tarefas.SQL.Add('and not (A.DT_FATURAMENTO is null)');

    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'with recursive ARVORE_SETOR ' +
                        'as (select distinct S.CODIGO ' +
                        '    from SETOR S ' +
                        '    left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
                        '    where ((SF.CODFUNCIONARIO = :CodPessoa) or (S.PESSOA_RESPONSAVEL_CODIGO = :CodPessoa)) ' +

                        '    union all ' +

                        '    select S2.CODIGO ' +
                        '    from SETOR S2 ' +
                        '    join ARVORE_SETOR PA on (S2.PARENT = PA.CODIGO)) ' +

                        'select distinct AV.CODIGO ' +
                        'from ARVORE_SETOR AV';
      QuerX.ParamByName('CodPessoa').AsString := Usuario.CodigoFuncionario;
      QuerX.Open;
      ACodSetores := 'null';
      while not QuerX.Eof do
      begin
        ACodSetores := ACodSetores + ', ' + QuerX.Fields[0].AsString;
        QuerX.Next;
      end;
      Agenda_Tarefas.SQL.Add('and ((A.CODSETOR is null) or (A.CODSETOR in (' + ACodSetores + ')))');
    finally
      QuerX.Free;
    end;
  finally
    Agenda_Tarefas.SQL.EndUpdate;
  end;

  Agenda_Tarefas.ParamByName('TipoAgendamento').AsInteger := EventoTipoToStr(etAgendamento);
  Agenda_Tarefas.ParamByName('CodUsuario').AsInteger       := CodigoUsuario;
end;

procedure TFrmAgenda.Agenda_UsuarioAfterOpen(DataSet: TDataSet);
var
  QuerX: TIBQuery;
  ACod: Integer;
begin
  { TODO: Cliente web com site finalizado sendo atendido após a finalização. Determinar
    quais são os clientes, o tempo e o motivo }
  { TODO: Criar uma tela para o suporte, ao informar o cliente, mostrar a situação cadastral do cliente, para saber se
    o suporte pode ser prestado, quantos computadores o cliente possui, situação financeira, etc... }
  Agenda.EnableControls;
  QuerX := GeraQuery;
  TreeListUsuarios.BeginUpdate;
  try
    CDSAgendaUsuario.Open;
    while not CDSAgendaUsuario.IsEmpty do
      CDSAgendaUsuario.Delete;

    if TipoVisualizacaoAgenda = vaUsuario then
    begin
      ACod := 10000;
      AddAgendaResource(1, 0, 24, 'Setores', Null, tfNone);

//{$IFDEF DEBUG}
//      PreencheSetores(ACod, 1);
//      Inc(ACod, 1000);
//{$ELSE}
      QuerX.SQL.Text := 'select CODIGO, DESCRICAO  from SETOR where parent is null ' +
        'order by DESCRICAO';
      QuerX.Open;
      while not QuerX.Eof do
      begin
        AddAgendaResource(ACod + QuerX.FieldByName('CODIGO').AsInteger, 1, 38,
          QuerX.FieldByName('DESCRICAO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfSetor);
        QuerX.Next;
      end;
      Inc(ACod, 1000);

      // Adiciona os usuários aos setores
      QuerX.SQL.Text := 'select U.CODIGO, U.USUARIO, SF.CODSETOR ' +
        'from SETOR S ' +
        'left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
        'inner join USUARIO U on (U.CODFUNCIONARIO = SF.CODFUNCIONARIO) ' +
        'where (S.parent is null) and not (U.USUARIO is null) ' + '      and (U.INATIVO = 0)';
      QuerX.Open;
      while not QuerX.Eof do
      begin
        AddAgendaResource(ACod, QuerX.FieldByName('CODSETOR').AsInteger + 10000,
          37, QuerX.FieldByName('USUARIO').AsString, QuerX.FieldByName('CODIGO')
          .AsInteger, tfSetorUsuario);
        Inc(ACod);
        QuerX.Next;
      end;
//{$ENDIF}
      // Adiciona todos os usuários, sem divisão por setor
      AddAgendaResource(2, 0, 24, 'Usuários', Null, tfNone);

      QuerX.SQL.Text := 'select CODIGO, USUARIO from USUARIO where (INATIVO = 0) order by upper(USUARIO) asc';
      QuerX.Open;
      while not QuerX.Eof do
      begin
        AddAgendaResource(ACod, 2, 37, QuerX.FieldByName('USUARIO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfUsuario);
        Inc(ACod);
        QuerX.Next;
      end;
    end
    else if TipoVisualizacaoAgenda = vaTitulo then
    begin
      QuerX.SQL.Text := 'select CODIGO, DESCRICAO ' +
                        'from AGENDA_TITULO ' +
                        'order by DESCRICAO asc';
      QuerX.Open;
      while not QuerX.Eof do
      begin
        AddAgendaResource(QuerX.FieldByName('CODIGO').AsInteger, 0, 38, QuerX.FieldByName('DESCRICAO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfAgendaTitulo);
        QuerX.Next;
      end;
    end
    else if TipoVisualizacaoAgenda = vaEstagio then
    begin
      QuerX.SQL.Text := 'select CODIGO, DESCRICAO ' +
                        'from SETOR where parent is null ' +
                        'order by DESCRICAO asc';
      QuerX.Open;
      while not QuerX.Eof do
      begin
        AddAgendaResource(QuerX.FieldByName('CODIGO').AsInteger, 0, 39, QuerX.FieldByName('DESCRICAO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfSetor);
        QuerX.Next;
      end;
    end;
  finally
    QuerX.Free;
    TreeListUsuarios.EndUpdate;
  end;
{$IFDEF DEBUG}
//  PlanoContasFuncionario.Open;
//  FuncionarioHabilidades.Open;
{$ENDIF}
end;

procedure TFrmAgenda.Agenda_UsuarioBeforeClose(DataSet: TDataSet);
begin
  Agenda.DisableControls;
end;

procedure TFrmAgenda.Agenda_UsuarioBeforeOpen(DataSet: TDataSet);
begin
  Agenda_Usuario.SQL.BeginUpdate;
  try
    Agenda_Usuario.SQL.Clear;
    case TipoVisualizacaoAgenda of
      vaUsuario:
        begin
          Agenda_Usuario.SQL.Add('select CODIGO, USUARIO as DESCRICAO, COLOR, IMAGEINDEX, DT_INICIAL, DT_FINAL, MINUTOS, CODFUNCIONARIO');
          Agenda_Usuario.SQL.Add('from USUARIO');
          Agenda_Usuario.SQL.Add('where (INATIVO = 0)');
        end;
      vaTitulo:
        begin
          Agenda_Usuario.SQL.Add('select CODIGO, DESCRICAO, COLOR, IMAGEINDEX, DT_INICIAL, DT_FINAL, MINUTOS, null as CODFUNCIONARIO');
          Agenda_Usuario.SQL.Add('from AGENDA_TITULO');
        end;
      vaEstagio:
        begin
          Agenda_Usuario.SQL.Add('select CODIGO, DESCRICAO, 8454016 as COLOR, 0 as IMAGEINDEX, cast(''12/30/1899 00:00:00'' as timestamp) as DT_INICIAL, cast(''12/30/1899 23:59:59'' as timestamp) as DT_FINAL, 15 as MINUTOS, null as CODFUNCIONARIO');
          Agenda_Usuario.SQL.Add('from SETOR');
        end;
    end;
  finally
    Agenda_Usuario.SQL.EndUpdate;
  end;
end;

procedure TFrmAgenda.AgruparasTarefas1Click(Sender: TObject);
begin
  // agrupar as tarefas do mesmo pedido/ no cronograma não tem essa opção
end;

procedure TFrmAgenda.AtualizaHorarioGanttHistorico;
var
  QuerX: TFDQuery;
begin
  // Rotina para atualizar o horário do gantt.
  // Quando o ticket é fechado, a data atual é colocada no histórico que foi gerado no AfterEdit
  if FInserindoEvento then
    Exit;
  FEventoDataHistorico.DataFinal := DataHoraSys;

  QuerX := GeraFDQuery(Agenda.Transaction);
  // O ajuste é comitado junto com a transação do evento.
  try
    QuerX.SQL.Text := 'update AGENDA set ' +
                      '  GANTT_DT_INICIO = :DtInicio, ' +
                      '  GANTT_DT_FIM = :DtFim, ' +
                      '  GANTT_ACTUAL_START = :ActualStart, ' +
                      '  GANTT_ACTUAL_FINISH = :ActualFinish ' +
                      'where (CODIGO = :Cod)';
    QuerX.ParamByName('DtInicio').AsDateTime := FEventoDataHistorico.DataInicial;
    QuerX.ParamByName('DtFim').AsDateTime := FEventoDataHistorico.DataFinal;
    // O mesmo SQL de update é aproveitado para ajustar os campos ActualStart e ActualFinish
    QuerX.ParamByName('ActualStart').AsInteger := Trunc(FEventoDataHistorico.DataInicial);
    QuerX.ParamByName('ActualFinish').AsInteger := Trunc(FEventoDataHistorico.DataFinal);
    QuerX.ParamByName('Cod').AsString := FEventoDataHistorico.CodEvento;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgenda.TransfAtualizarResponsaveis;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(Agenda.Transaction);
  CbTransfResponsavel.Properties.Items.BeginUpdate;
  try
    CbTransfResponsavel.Properties.Items.Clear;
    QuerX.SQL.Text := 'select U.CODIGO, P.RAZAOSOCIAL ' + 'from PESSOAS P ' +
      'inner join USUARIO U on (U.CODFUNCIONARIO = P.CODIGO)';
    if CbTransfSetor.ItemIndex > 0 then
      QuerX.SQL.Add
        ('left join SETOR_FUNCIONARIO SF on (P.CODIGO = SF.CODFUNCIONARIO)');
    QuerX.SQL.Add('where (IS_FUN = ''S'') and (ATIVO = ''S'')');
    if CbTransfSetor.ItemIndex > 0 then
    begin
      QuerX.SQL.Add('and (SF.CODSETOR = :CodSetor)');
      QuerX.ParamByName('CodSetor').AsInteger :=
        Integer(CbTransfSetor.Properties.Items.Objects
        [CbTransfSetor.ItemIndex]);
    end;
    QuerX.SQL.Add('order by RAZAOSOCIAL asc');
    QuerX.Open;
    while not QuerX.Eof do
    begin
      CbTransfResponsavel.Properties.Items.AddObject(QuerX.FieldByName('RAZAOSOCIAL').AsString,
        TObject(QuerX.FieldByName('CODIGO').AsInteger));
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    CbTransfResponsavel.Properties.Items.EndUpdate;
  end;
end;

procedure TFrmAgenda.TransfAtualizarSetores;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(Agenda.Transaction);
  CbTransfSetor.Properties.Items.BeginUpdate;
  try
    CbTransfSetor.Properties.Items.Clear;
    CbTransfSetor.Properties.Items.Add('<Não Alterar>');
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO from SETOR order by DESCRICAO asc';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      CbTransfSetor.Properties.Items.AddObject(QuerX.FieldByName('DESCRICAO').AsString, TObject(QuerX.FieldByName('CODIGO').AsInteger));
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    CbTransfSetor.Properties.Items.EndUpdate;
  end;
  CbTransfSetor.ItemIndex := 0;
  TransfAtualizarResponsaveis;
end;

procedure TFrmAgenda.PreencheSetores(ACodItem, AParent: Integer);
  procedure AdicionaUsuarios(ACodSetor, AParent: Integer);
  var
    QuerX: TIBQuery;
  begin
    QuerX := GeraQuery;
    try
      // Adiciona os usuários do setor
      QuerX.SQL.Text := 'select U.CODIGO, U.USUARIO ' +
                        'from SETOR_FUNCIONARIO SF ' +
                        'inner join USUARIO U on (U.CODFUNCIONARIO = SF.CODFUNCIONARIO) ' +
                        'where (SF.CODSETOR = :Cod1) ' +

                        'union ' + // aplica um distinct

                        'select U.CODIGO, U.USUARIO ' +
                        'from SETOR S ' +
                        'inner join USUARIO u on (U.CODFUNCIONARIO = S.PESSOA_RESPONSAVEL_CODIGO) ' +
                        'where (S.CODIGO = :Cod2)';
      QuerX.ParamByName('Cod1').AsInteger := ACodSetor;
      QuerX.ParamByName('Cod2').AsInteger := ACodSetor;
      QuerX.Open;
      while not QuerX.Eof do
      begin
        Inc(ACodItem);
        AddAgendaResource(ACodItem, AParent, 37, QuerX.FieldByName('USUARIO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfSetorUsuario);
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;
  end;

  procedure AdicionaSetores(ACodSetor, AParent: Integer);
  var
    QuerX: TIBQuery;
  begin
    QuerX := GeraQuery;
    try
      // Busca os setores que fazem parte de um setor superior
      QuerX.SQL.Text := 'select S.CODIGO, S.DESCRICAO ' + 
                        'from SETOR S ' +
                        'where (S.PARENT = :Cod) ' +
                        '      and (S.TIPO = :Tipo)';
      QuerX.ParamByName('Cod').AsInteger := ACodSetor;
      QuerX.ParamByName('Tipo').AsString := tsSetor.ToStr;
      QuerX.Open;
      while not QuerX.Eof do
      begin
        Inc(ACodItem);
        AddAgendaResource(ACodItem, AParent, 38, QuerX.FieldByName('DESCRICAO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfSetor);
        // Para cada setor encontrado, adiciona os sub-setores
        AdicionaSetores(QuerX.FieldByName('CODIGO').AsInteger, ACodItem);
        QuerX.Next;
      end;
      AdicionaUsuarios(ACodSetor, AParent);
    finally
      QuerX.Free;
    end;
  end;

var
  QuerX: TIBQuery;
  ACodPessoa: string;
begin
  QuerX := GeraQuery;
  try
    // Busca o código da Pessoa do usuário logado
    QuerX.SQL.Text := 'select CODFUNCIONARIO from USUARIO where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := CodigoUsuario;
    QuerX.Open;
    ACodPessoa := QuerX.Fields[0].AsString;
    QuerX.Close;

    // Busca os setores que a pessoa faz parte ou é responsável
    QuerX.SQL.Text := 'with recursive ARVORE_SETOR ' +
                      'as (select distinct S.CODIGO, S.DESCRICAO, S.TIPO, S.PARENT ' +
                      '    from SETOR S ' +
                      '    left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
                      '    where ((SF.CODFUNCIONARIO = :Cod1) ' +
                      '               or (S.PESSOA_RESPONSAVEL_CODIGO = :Cod2)) ' +

                      '    union all ' +

                      '    select S2.CODIGO, S2.DESCRICAO, S2.TIPO, S2.PARENT ' +
                      '    from SETOR S2 ' +
                      '    join ARVORE_SETOR PA on (S2.PARENT = PA.CODIGO)) ' +

                      'select distinct AV.* ' +
                      'from ARVORE_SETOR AV ' ;
//                      'where (AV.PARENT = :Parent)';
    QuerX.ParamByName('Cod1').AsString := ACodPessoa;
    QuerX.ParamByName('Cod2').AsString := ACodPessoa;
//    QuerX.ParamByName('Parent').AsString := ACodPessoa;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      Inc(ACodItem);
      AddAgendaResource(ACodItem, QuerX.FieldByName('PARENT').AsInteger, 38, QuerX.FieldByName('DESCRICAO').AsString, QuerX.FieldByName('CODIGO').AsInteger, tfSetor);
      // Para cada setor, adiciona os sub-setores
      AdicionaSetores(QuerX.FieldByName('CODIGO').AsInteger, ACodItem);
//      AdicionaUsuarios(QuerX.FieldByName('CODIGO').AsInteger, ACodItem);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgenda.R1Click(Sender: TObject);
begin
  cxEventEditorClass := TFrmAgendaEditorRapido;
end;

procedure TFrmAgenda.R2Click(Sender: TObject);
begin
  MoveEventosAntigos;
end;

procedure TFrmAgenda.ransferirpara1Click(Sender: TObject);
begin
  TransfAtualizarSetores;
  PnlTransferirResponsavel.Tag := 0;
  ShowPanelForm(PnlTransferirResponsavel, bsSingle);
end;

procedure TFrmAgenda.ransferirpara2Click(Sender: TObject);
begin
  TransfAtualizarSetores;
  PnlTransferirResponsavel.Tag := 1;
  ShowPanelForm(PnlTransferirResponsavel, bsSingle);
end;

procedure TFrmAgenda.AjustaHorariosEventosTimeline(ACodAgenda: string);
var
  QuerX: TFDQuery;
begin
  (* QuerX := GeraFDQuery(Agenda.Transaction);
    try
    QuerX.SQL.Text := 'select * ' +
    'from AGENDA ' +
    'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodAgenda;
    QuerX.Open;

    QuerX.SQL.Text := 'select first 1 * ' +
    'from AGENDA ' +
    'where (GANTT_DT_INICIO >= :DtInicioGantt) ' +
    '      and (DT_INICIO >= :DtInicio) ' +
    '      and (CODUSUARIO_RESPONSAVEL = :CodUsuario) ' + {TODO: Ajustar para pegar quando o grid for visualizado por agendas cadastradas e não por usuários}
    '      and (TIPO_AGENDAMENTO = :Tipo) ' +
    'order by DT_INICIO desc';
    QuerX.ParamByName('DtInicioGantt').AsDateTime := AgendaDT_FIM.AsDateTime;
    QuerX.ParamByName('DtInicio').AsDateTime      := AgendaDT_FIM.AsDateTime;
    QuerX.ParamByName('CodUsuario').AsInteger     := AgendaCODUSUARIO_RESPONSAVEL.AsInteger;
    QuerX.ParamByName('Tipo').AsInteger           := etAgendamento.Codigo;
    QuerX.Open;

    if not QuerX.IsEmpty then
    begin
    QuerX.Edit;
    QuerX.FieldByName('GANTT_DT_INICIO').AsDateTime := ADiffData;
    QuerX.FieldByName('GANTT_DT_FIM').AsDateTime    := ADiffData;
    QuerX.Post;
    end;
    finally
    QuerX.Free;
    end; *)
end;

procedure TFrmAgenda.AjustaResources;
var
  I: Integer;
  AResource: TcxSchedulerStorageResourceItem;
begin
  Scheduler.BeginUpdate;
  try
    for I := 0 to SchedulerDBStorage.Resources.Items.Count - 1 do
    begin
      AResource := SchedulerDBStorage.Resources.Items[I];
      Agenda_Usuario.Locate('CODIGO', AResource.ResourceID, []);
      AResource.ImageIndex := Agenda_Usuario.FieldByName('IMAGEINDEX').AsInteger;
      AResource.Color      := Agenda_Usuario.FieldByName('COLOR').AsInteger;
      AResource.WorkStart  := Agenda_Usuario.FieldByName('DT_INICIAL').AsDateTime;
      AResource.WorkFinish := Agenda_Usuario.FieldByName('DT_FINAL').AsDateTime;
    end;
  finally
    Scheduler.EndUpdate;
  end;
end;

procedure TFrmAgenda.AlterarOpesdaAgenda1Click(Sender: TObject);
var
  I: Integer;
begin
  CbAgendaUsuarios.Properties.Items.Clear;
  for I := 0 to SchedulerDBStorage.ResourceCount - 1 do
    CbAgendaUsuarios.Properties.Items.Add(SchedulerDBStorage.ResourceNames[I]);
  CbAgendaUsuarios.ItemIndex := 0;
  dxLayoutControl2CbUsuarios.Visible := (SchedulerDBStorage.ResourceCount > 1);
  ShowPanelForm(PnlOpcoesAgenda, bsSingle);
end;

procedure TFrmAgenda.Btn3CXClick(Sender: TObject);
begin
  Timer3CX.Enabled := not Timer3CX.Enabled;
  if Timer3CX.Enabled then
    Btn3CX.Colors.Normal := clGreen
  else
    Btn3CX.Colors.Normal := clDefault;
end;


procedure SaveViewToStream(AView: TcxCustomGridView; AStream: TStream);
var
  I: Integer;
  APos: Integer;
  ANewPos: Integer;
  ANum: Integer;
  ARecInd: Integer;
begin
  if (AView = nil) or (AStream = nil) then
    Exit;
  AView.Tag := AStream.Position;
  APos := AStream.Position;
  ANum := 0;
  AStream.Write(APos, 4);
  if AView is TcxGridTableView then
  begin
    with TcxGridTableView(AView).ViewData do
    begin
      for I := 0 to RecordCount - 1 do
      begin
        if Records[I].Expanded then
        begin
          ARecInd := Records[I].RecordIndex;
          AStream.Write(ARecInd, 4);
          Inc(ANum);
        end;
      end;
    end;
    ANewPos := AStream.Position;
    AStream.Position := APos;
    AStream.Write(ANum, 4);
    AStream.Position := ANewPos;
  end;
end;

procedure LoadViewFromStream(AView: TcxCustomGridView; AStream: TStream);
var
  I: Integer;
  ACount: Integer;
  AInd: Integer;
begin
  if (AView = nil) or (AStream = nil) then
    Exit;
  AStream.Position := AView.Tag;
  AStream.Read(ACount, 4);
  for I := 0 to ACount - 1 do
  begin
    AStream.Read(AInd, 4);
    TcxGridTableView(AView).ViewData.Records[AInd].Expanded := True;
  end;
end;

procedure TFrmAgenda.BtnAtualizarTarefasClick(Sender: TObject);
begin
  if not Ocultaragendamentosnogrid1.Checked then
  begin
    Agenda_Tarefas.Close;
    Agenda_Tarefas.Open;
    FDataUltimoNaoLido := DataHoraSys;
  end;
end;

procedure TFrmAgenda.btnKanbamDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  TipoVisualizacaoAgenda := vaEstagio;
end;

procedure TFrmAgenda.btnNovoCadastroDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  Scheduler.CreateEventUsingDialog;
end;

procedure TFrmAgenda.C1Click(Sender: TObject);
begin
  cxEventEditorClass := TFrmAgendaEditor;
end;

procedure TFrmAgenda.C2Click(Sender: TObject);
var
  QuerX : TFDQuery;
  ATransa : TFDTransaction;
  I: Integer;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, GANTT_DT_INICIO, GANTT_DT_FIM, GANTT_ACTUAL_START, GANTT_ACTUAL_FINISH, DT_INICIO, DT_FIM ' +
                      'from AGENDA ' +
                      'where (DT_FATURAMENTO is null) ' +
                      '      and (TIPO_AGENDAMENTO = :Tipo) ' +
                      '      and (CODUSUARIO_RESPONSAVEL in (';
    for I := 0 to SchedulerDBStorage.ResourceCount - 1 do
    begin
      QuerX.SQL.Add(VarToStr(SchedulerDBStorage.ResourceIDs[i]));
      if I < SchedulerDBStorage.ResourceCount - 1 then
        QuerX.SQL.Add(',');
    end;
    QuerX.SQL.Add('))');
    QuerX.Params[0].AsInteger := EventoTipoToStr(etAgendamento);
    QuerX.Open;
    while not QuerX.Eof do
    begin
      QuerX.Edit;
      QuerX.FieldByName('GANTT_DT_INICIO').AsDateTime    := QuerX.FieldByName('DT_INICIO').AsDateTime;
      QuerX.FieldByName('GANTT_DT_FIM').AsDateTime       := QuerX.FieldByName('DT_FIM').AsDateTime;
      QuerX.FieldByName('GANTT_ACTUAL_START').AsInteger  := Trunc(QuerX.FieldByName('DT_INICIO').AsDateTime);
      QuerX.FieldByName('GANTT_ACTUAL_FINISH').AsInteger := Trunc(QuerX.FieldByName('DT_FIM').AsDateTime);
      QuerX.Post;
      QuerX.Next;
    end;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure TFrmAgenda.Cadastrarnovaagenda1Click(Sender: TObject);
begin
  CadastroMidChild(TFrmAgenda_Titulo); //ConsultaModalFiltro(TFrmAgenda_Titulo,'');
  Agenda_Usuario.Close;
  Agenda_Usuario.Open;
end;

procedure TFrmAgenda.CarregaConfigsAgenda;
var
  Reg: TRegistry;
  AStream: TMemoryStream;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\1' +
      self.Name, False) then
    begin
      Scheduler.RestoreFromRegistry('\Software\Rocha\' + ApplicationTitle
        + '\1' + self.Name, False);
      Reg.CloseKey;
      Reg.OpenKey(Sistema.RegPath, False);
      Reg.DeleteKey('1' + self.Name);
      Exit;
    end;
  finally
    Reg.Free;
  end;
  AStream := TMemoryStream.Create;
  try
    CarregaConfigGridStream(self.Name, 'Agenda', AStream);
    AStream.Position := 0;
    Scheduler.RestoreFromStream(AStream);
  finally
    AStream.Free;
  end;
end;

procedure TFrmAgenda.CarregaTiposAgenda;
var
  QuerX : TIBQuery;
  ACodPessoa : string;
  ATipo : TTipoAgendaCb;
begin
  CbTipoAgenda.Properties.Items.Clear;
  TStringList(CbTipoAgenda.Properties.Items).OwnsObjects := True;

  ATipo := TTipoAgendaCb.Create;
  ATipo.Tipo := maAgenda;
  CbTipoAgenda.Properties.Items.AddObject('Agenda', ATipo);

  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODFUNCIONARIO from USUARIO where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := CodigoUsuario;
    QuerX.Open;
    ACodPessoa := QuerX.Fields[0].AsString;
    QuerX.Close;

    QuerX.SQL.Text := 'with recursive ARVORE_SETOR ' +
                      'as (select distinct S.CODIGO, S.DESCRICAO, S.KANBAN, S.PARENT ' +
                      '    from SETOR S ' +
                      '    left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
                      '    where ((SF.CODFUNCIONARIO = :Cod2) ' +
                      '               or (S.PESSOA_RESPONSAVEL_CODIGO = :Cod1)) ' +

                      '    union all ' +

                      '    select S2.CODIGO, S2.DESCRICAO, S2.KANBAN, S2.PARENT ' +
                      '    from SETOR S2 ' +
                      '    join ARVORE_SETOR PA on (PA.PARENT = S2.CODIGO)) ' +

                      'select distinct AV.* ' +
                      'from ARVORE_SETOR AV ' +
                      'where (AV.KANBAN = ''S'')';
    QuerX.ParamByName('Cod1').AsString := ACodPessoa;
    QuerX.ParamByName('Cod2').AsString := ACodPessoa;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      ATipo := TTipoAgendaCb.Create;
      ATipo.Tipo   := maKanban;
      ATipo.Codigo := QuerX.FieldByName('CODIGO').AsInteger;
      CbTipoAgenda.Properties.Items.AddObject(QuerX.FieldByName('DESCRICAO').AsString, ATipo);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

type
  PKBDLLHOOKSTRUCT = ^TKBDLLHOOKSTRUCT;

  TKBDLLHOOKSTRUCT = record
    vkCode: cardinal;
    scanCode: cardinal;
    flags: cardinal;
    time: cardinal;
    dwExtraInfo: cardinal;
  end;

  PKeyboardLowLevelHookStruct = ^TKeyboardLowLevelHookStruct;
  TKeyboardLowLevelHookStruct = TKBDLLHOOKSTRUCT;

function CallBackDelHook(Code: Integer; wParam: wParam; lParam: lParam): LRESULT;
var
//  AStruct: PKeyboardLowLevelHookStruct;
  ANow: TDateTime;
begin
  Result := 0;
  if Code = HC_NOREMOVE then
    Exit;
  Result := CallNextHookEx(FHookDeTeclado, Code, wParam, lParam);
  if Code < 0 then
    Exit;
  // Result := CallNextHookEx(FHookDeTeclado, Code, wParam, lParam);
end;

procedure TFrmAgenda.CbAgendaUsuariosPropertiesChange(Sender: TObject);
begin
  if CbAgendaUsuarios.ItemIndex = -1 then
    Exit;
  Agenda_Usuario.Locate('DESCRICAO', CbAgendaUsuarios.Properties.Items[CbAgendaUsuarios.ItemIndex], [loCaseInsensitive]);
  EdtAgendaHoraFinal.time   := Agenda_UsuarioDT_FINAL.AsDateTime;
  EdtAgendaHoraInicial.time := Agenda_UsuarioDT_INICIAL.AsDateTime;
  EdtAgendaIntervalo.Value  := Agenda_UsuarioMINUTOS.AsInteger;
  CbAgendaCor.EditValue     := Agenda_UsuarioCOLOR.AsInteger;
  // CbAgendaMostrarHora.EditValue := Agenda_Usuario.FieldByName('-').AsDateTime;
end;

procedure TFrmAgenda.CbTipoAgendaPropertiesChange(Sender: TObject);
var
  ATipo : TTipoAgendaCb;
begin
  ATipo := TTipoAgendaCb(ComboBoxGetObjetoSelecionado(CbTipoAgenda));
  case ATipo.Tipo of
    maAgenda, maPCP:
      begin
        Modo := ATipo.Tipo;
        TipoVisualizacaoAgenda := vaUsuario;
      end;
    maKanban:
      begin
        TipoVisualizacaoAgenda := vaEstagio;
        CDSAgendaUsuario.Locate('CODIGO', ATipo.Codigo, []);
        TreeListUsuariosClick(nil);
//        TreeListUsuarios.fin
      end;
  end;
end;

procedure TFrmAgenda.CbTransfSetorPropertiesChange(Sender: TObject);
begin
  TransfAtualizarResponsaveis;
end;

procedure TFrmAgenda.btn2Click(Sender: TObject);
begin
  { with TAgenda_Bloqueada.Create(self) do
    try
    cxdata.Text := FormatDateTime('DD/MM/YYYY', Scheduler.DateNavigator.Date);
    cxTextEdit1.Text := Procura('USUARIO', 'USUARIO', CodigoUsuario);
    ShowModal;
    finally
    Agenda.Close;
    Agenda_Usuario.Close;
    Agenda_Usuario.Open;
    Agenda.Open;
    if not Bloquear then
    begin
    Scheduler.EventOperations.ReadOnly := not LBAgenda.Visible;
    SchedulerDBStorage.Resources.Items[0].Color := Agenda_Usuario.FieldByName('COLOR').AsInteger;
    end else
    begin
    Scheduler.EventOperations.ReadOnly := True;
    SchedulerDBStorage.Resources.Items[0].Color := clRed;
    end;
    Destroy;
    end; }
end;

procedure TFrmAgenda.DDEAgendaChange(Sender: TObject);
var
  AID: string;
  I: Integer;
  QuerX: TIBQuery;
begin
  if SplitString(DDEAgenda.Text, ':')[0] = 'Open' then
  begin
    QuerX := GeraQuery;
    try
      QuerX.SQL.Text := 'select first 1 1 from AGENDA where (CODIGO = :CodAgenda)';
      QuerX.ParamByName('CodAgenda').AsString := SplitString(DDEAgenda.Text, ':')[1];
      QuerX.Open;
      if QuerX.IsEmpty then
        Exit;
      AID := Agenda_Tarefas.FieldByName('CODIGO').AsString;
      Scheduler.DateNavigator.Date := Agenda_Tarefas.FieldByName('DT_INICIO').AsDateTime;
      Agenda_Usuario.Locate('CODIGO', Agenda_Tarefas.FieldByName('CODUSUARIO_RESPONSAVEL').AsInteger, []);
    finally
      QuerX.Free;
    end;
    Scheduler.GoToDate(Scheduler.DateNavigator.Date);
    Agenda.Close;
    Agenda.Open;
    for I := 0 to Scheduler.VisibleEventCount - 1 do
    begin
      if Scheduler.VisibleEvents[I].ID = AID then
      begin
        Scheduler.SelectEvent(Scheduler.VisibleEvents[I]);
        Scheduler.MakeEventVisible(Scheduler.VisibleEvents[I]);
        Scheduler.EditEventUsingDialog(Scheduler.VisibleEvents[I]);
        Break;
      end;
    end;
  end;
end;

procedure TFrmAgenda.Desbloquear1Click(Sender: TObject);
var
  QuerX: TIBQuery;
  ATransa: TIBTransaction;
begin
  if not Agenda_Tarefas.IsEmpty then
  begin
    SchedulerDBStorage.BeginUpdate;
    ATransa := GeraTransacao;
    QuerX := GeraQuery(ATransa);
    try
      QuerX.SQL.Text := 'update AGENDA set BLOQUEIO = ''N'' ' +
                        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsString := Agenda_Tarefas.FieldByName('CODIGO').AsString;
      QuerX.ExecSQL;
      ATransa.Commit;
    finally
      QuerX.Free;
      ATransa.Free;
      SchedulerDBStorage.EndUpdate;
    end;
  end;
end;

procedure TFrmAgenda.DSDataChange(Sender: TObject; Field: TField);
var
  QuerX: TFDQuery;
  ATempoTicket, ATempoTrabalho: Integer;
begin
  Scheduler.ViewDay.TimeScale := Agenda_UsuarioMINUTOS.AsInteger;
  VerificaBloqueio;
  {if Field = nil then
  begin
    ATempoTicket := 0;
    ATempoTrabalho := 0;
    QuerX := GeraFDQuery(Transa);
    try
      QuerX.SQL.Text := 'select A.TIPO_AGENDAMENTO, ' +
                        '       sum(datediff(second from A.GANTT_DT_INICIO to iif(A.GANTT_DT_FIM < current_timestamp, A.GANTT_DT_FIM, current_timestamp))) as TEMPO ' +
                        'from AGENDA A ' +
                        'where (A.CODUSUARIO_RESPONSAVEL = :Cod) ' +
                        '      and (A.GANTT_DT_INICIO < current_timestamp) ' +
                        'group by 1';
      QuerX.Params[0].AsString := Agenda_Usuario.FieldByName('CODIGO').AsString;
      QuerX.Open;
      if QuerX.Locate('TIPO_AGENDAMENTO', etAgendamento.Codigo, []) then
        ATempoTicket := QuerX.FieldByName('TEMPO').AsInteger;
      if QuerX.Locate('TIPO_AGENDAMENTO', etLogAlteracao.Codigo, []) then
        ATempoTrabalho := QuerX.FieldByName('TEMPO').AsInteger;
      if ATempoTrabalho + ATempoTicket > 0 then
        dxGaugeControl1DBCircularHalfScale1.Value := ATempoTrabalho * 100 / ATempoTicket
      else
        dxGaugeControl1DBCircularHalfScale1.Value := 0;
    finally
      QuerX.Free;
    end;
  end       }
end;

procedure TFrmAgenda.edtCentro_TrabalhoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  edtFuncionario.Text:='';
end;

procedure TFrmAgenda.edtFuncionarioPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  edtCentro_Trabalho.Text:='';
end;

procedure TFrmAgenda.edtPesquisaFocusChanged(Sender: TObject);
begin
  with edtPesquisa do
  begin
    if Focused then
    begin
      if UpperCase(Text) = 'PESQUISAR' then
      begin
        Text := '';
        Properties.CharCase := ecUpperCase;
      end;
      Style.Font.Color := clBlack;
      Style.Font.Style := [];
    end
    else
    begin
      if Text = '' then
      begin
        Properties.CharCase := ecNormal;
        Text := 'Pesquisar';
        Style.Font.Style := [fsItalic];
        Style.Font.Color := clMedGray;
      end;
    end;
  end;
end;

procedure TFrmAgenda.edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_F1] then
  begin
    edtPesquisaPropertiesButtonClick(nil, 0);
    if not Agenda_Tarefas.IsEmpty then
      cxGridTarefas.SetFocusWR;
    Key := 0;
  end;
end;

procedure TFrmAgenda.edtPesquisaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  ATextoPesquisa: String;
begin
  if not Ocultaragendamentosnogrid1.Checked then
  begin
    Agenda_Tarefas.Close;
    Agenda_Tarefas.Open;
  end;
end;

procedure TFrmAgenda.edtProtocoloKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    cxGridTarefasTableView1DblClick(Sender);
end;

procedure TFrmAgenda.ExcluirFiltro1Click(Sender: TObject);
var
  APoint: TBookMark;
begin
  if (TreeListFiltros.FocusedNode <> nil) and
    (Agenda_Filtro.Locate('CODIGO', TreeListFiltros.FocusedNode.Values[0], []))
  then
  begin
    Agenda_Filtro.Delete;
    Codigo := Agenda_Filtro.FieldByName('CODIGO').AsString;
    APoint := Agenda_Filtro.GetBookmark;
    Transa.Commit;
    Agenda_Filtro.Open;
    if not Agenda_Filtro.IsEmpty then
    begin
      if APoint <> nil then
        Agenda_Filtro.GotoBookmark(APoint);
      if (Agenda_Filtro.State = dsBrowse) and (Codigo <> Agenda_Filtro.FieldByName('CODIGO').AsString) then
        Agenda_Filtro.Locate('CODIGO', Codigo, []);
    end;
  end;
end;

procedure TFrmAgenda.chkTarefas_UsuariosClick(Sender: TObject);
begin
  Agenda.Close;
  Agenda.Open;
end;

procedure TFrmAgenda.ComitaTransacao;
var
  APoint: Pointer;
begin
  // Codigo := Agenda_Tarefas.FieldByName('CODIGO').AsString;
  // APoint := Agenda_Tarefas.GetBookmark;
  // Agenda_Tarefas.DisableControls;
  Agenda.DisableControls;
  try
    // Agenda_Tarefas.Close;
    Transa.Commit;
    Agenda.Close;
    Agenda.Open;
    // Scheduler.FullRefresh;
    // if not Agenda_Tarefas.IsEmpty then
    // begin
    // if APoint <> nil then
    // Agenda_Tarefas.GotoBookmark(APoint);
    // if (Agenda_Tarefas.State = dsBrowse) and (Codigo <> Agenda_Tarefas.FieldByName('CODIGO').AsString) then
    // Agenda_Tarefas.Locate('CODIGO', Codigo, []);
    // end;
  finally
    // Agenda_Tarefas.EnableControls;
    Agenda.EnableControls;
  end;
end;

procedure TFrmAgenda.Criarlistadeprospeco1Click(Sender: TObject);
begin
//  ConsultaModalFiltro(TConsuPessoas,'');
  ConsultaTag_Normal(Self, Tag_Pessoas);
end;

procedure TFrmAgenda.Cronogramametas1Click(Sender: TObject);
begin
  Modo:=maPCP;
  Agenda.Close;
  Agenda.Open;
end;

procedure TFrmAgenda.BtnSelecaoDataCancelarClick(Sender: TObject);
begin
  FechaPanelForm(PnlSelecaoData);
end;

procedure TFrmAgenda.BtnSelecaoDataConfirmarClick(Sender: TObject);
  function DateTimeToMilliseconds(const ADateTime: TDateTime): Int64;
  var
    LTimeStamp: TTimeStamp;
  begin
    LTimeStamp := DateTimeToTimeStamp(ADateTime);
    Result := LTimeStamp.Date;
    Result := (Result * MSecsPerDay) + LTimeStamp.time;
  end;

const
  CMillisPerDay = Int64(MSecsPerSec * SecsPerMin * MinsPerHour * HoursPerDay);
var
  I: Integer;
  QuerX: TFDQuery;
  AEvent: TcxSchedulerControlEvent;
  ADias: Integer;
begin
  if not(EdtSelecaoData.Date > 0) then
  begin
    ShowMessageWR('Data Inválida.');
    Exit;
  end;
  QuerX := GeraFDQuery(Agenda.Transaction);
  try
    QuerX.SQL.Text := 'update AGENDA set DT_INICIO = :DtInicio, ' +
                      '  DT_FIM = :DtFim, ' +
                      '  ACTUAL_START = :ActualStart, ' +
                      '  ACTUAL_FINISH = :ActualFinish, ' +
                      '  DT_ALTERACAO = current_timestamp ' +
                      'where (CODIGO = :Cod)';
    for I := 0 to Scheduler.SelectedEventCount - 1 do
    begin
      AEvent := Scheduler.SelectedEvents[I];
      if not AEvent.IsRecurring then
      begin
        ADias := (DateTimeToMilliseconds(DateOf(EdtSelecaoData.Date)) - DateTimeToMilliseconds(DateOf(AEvent.Start))) div CMillisPerDay;
        QuerX.ParamByName('Cod').Value              := AEvent.ID;
        QuerX.ParamByName('DtInicio').AsDateTime    := IncDay(AEvent.Start, ADias);
        QuerX.ParamByName('DtFim').AsDateTime       := IncDay(AEvent.Finish, ADias);
        QuerX.ParamByName('ActualStart').AsInteger  := Trunc(QuerX.ParamByName('DtInicio').AsDateTime);
        QuerX.ParamByName('ActualFinish').AsInteger := Trunc(QuerX.ParamByName('DtFim').AsDateTime);
        QuerX.ExecSQL;
      end else
        ShowMessageWR('Não é possível mover eventos com recorrência.');
    end;
    Agenda.Transaction.Commit;
    Agenda.Refresh;
  finally
    QuerX.Free;
  end;
  FechaPanelForm(PnlSelecaoData);
end;

procedure TFrmAgenda.btnTabelaDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  TipoVisualizacaoAgenda := vaUsuario;
end;

procedure TFrmAgenda.BtnTransfConfirmarClick(Sender: TObject);
var
  I: Integer;
  QuerX: TFDQuery;
  AEvent: TcxSchedulerControlEvent;
  AMsg, AQuery: string;
begin
  if (CbTransfResponsavel.ItemIndex = -1) then
  begin
    ShowMessageWR('Selecione um Responsável para efetuar a transferência.');
    CbTransfResponsavel.SetFocusWR;
    Exit;
  end;
  with TStringList.Create do
    try
      Add('O(s) evento(s) selecionado(s) serão transferidos para:');
      Add('');
      Add('Responsável: ' + CbTransfResponsavel.Properties.Items[CbTransfResponsavel.ItemIndex]);
      if CbTransfSetor.ItemIndex > 0 then
        Add('Setor: ' + CbTransfSetor.Properties.Items[CbTransfSetor.ItemIndex]);
      Add('');
      Add('Deseja efetuar esta transferência?');
      if ShowMessageWR(Text, MB_ICONQUESTION) <> mrYes then
        Exit;
    finally
      Free;
    end;
  QuerX := GeraFDQuery(Agenda.Transaction);
  try
    QuerX.SQL.Text := 'update AGENDA set ' +
                      '  CODUSUARIO_RESPONSAVEL = :CodUsuario';
    if CbTransfSetor.ItemIndex > 0 then
      QuerX.SQL.Add(', CODSETOR = :CodSetor');
    if DtaEdAgenda.Date > 0 then
      QuerX.SQL.Add(', DT_INICIO = :DtaIni, DT_FIM = :DtaFim, ACTUAL_START = :ActualStart, ACTUAL_FINISH = :ActualFinish');
    QuerX.SQL.Add(', DT_ALTERACAO = current_timestamp');
    QuerX.SQL.Add('where (CODIGO = :Cod)');

    QuerX.ParamByName('CodUsuario').AsInteger :=
      Integer(ComboBoxGetObjetoSelecionado(CbTransfResponsavel));
    if QuerX.FindParam('CodSetor') <> nil then
      QuerX.ParamByName('CodSetor').AsInteger := Integer(ComboBoxGetObjetoSelecionado(CbTransfSetor));

    // A tag controla de onde veio a requisição, se da agenda ou do grid
    if PnlTransferirResponsavel.Tag = 0 then
    begin
      for I := 0 to Scheduler.SelectedEventCount - 1 do
      begin
        AEvent := Scheduler.SelectedEvents[I];
        if not AEvent.IsRecurring then
        begin
          if DtaEdAgenda.Date > 0 then
          begin
            QuerX.ParamByName('DtaIni').AsDateTime      := DtaEdAgenda.Date + TimeOf(AEvent.Start);
            QuerX.ParamByName('DtaFim').AsDateTime      := IncMinute(QuerX.ParamByName('DtaIni').AsDateTime, MinutesBetween(AEvent.Start, AEvent.Finish));
            QuerX.ParamByName('ActualStart').AsInteger  := Trunc(QuerX.ParamByName('DtaIni').AsDateTime);
            QuerX.ParamByName('ActualFinish').AsInteger := Trunc(QuerX.ParamByName('DtaFim').AsDateTime);
          end;
          QuerX.ParamByName('Cod').Value := AEvent.ID;
          QuerX.ExecSQL;
        end else
          ShowMessageWR('Não é possível mover eventos com recorrência.');
      end;
    end else
    begin
      for I := 0 to cxGridTarefasTableView1.DataController.GetSelectedCount - 1 do
      begin
        QuerX.ParamByName('Cod').Value := cxGridTarefasTableView1.Controller.SelectedRecords[I].Values[cxGridTarefasTableView1CODIGO.Index];
        if DtaEdAgenda.Date > 0 then
        begin
          QuerX.ParamByName('DtaIni').AsDateTime := DtaEdAgenda.Date + TimeOf(cxGridTarefasTableView1.Controller.SelectedRecords[I].Values[cxGridTarefasTableView1DT_INICIO.Index]);
          QuerX.ParamByName('DtaFim').AsDateTime := IncMinute(QuerX.ParamByName('DtaIni').AsDateTime,
                                                              MinutesBetween(cxGridTarefasTableView1.Controller.SelectedRecords[I].Values[cxGridTarefasTableView1DT_INICIO.Index],
                                                                             cxGridTarefasTableView1.Controller.SelectedRecords[I].Values[cxGridTarefasTableView1DT_FIM.Index]));
          QuerX.ParamByName('ActualStart').AsInteger  := Trunc(QuerX.ParamByName('DtaIni').AsDateTime);
          QuerX.ParamByName('ActualFinish').AsInteger := Trunc(QuerX.ParamByName('DtaFim').AsDateTime);
        end;
        QuerX.ExecSQL;
      end;
    end;
    Agenda.Transaction.Commit;
    Agenda.Close;
    Agenda.Open;
    Agenda_Tarefas.Close;
    Agenda_Tarefas.Open;
  finally
    QuerX.Free;
  end;
  ShowMessageWR('Eventos transferidos com sucesso.');
  FechaPanelForm(PnlTransferirResponsavel);
  CbTransfResponsavel.ItemIndex := -1;
end;

procedure TFrmAgenda.cxButton1Click(Sender: TObject);
var
  I: Integer;
begin
  Agenda_Usuario.Edit;
  Agenda_UsuarioDT_INICIAL.AsDateTime := EdtAgendaHoraInicial.time;
  Agenda_UsuarioDT_FINAL.AsDateTime   := EdtAgendaHoraFinal.time;
  Agenda_UsuarioMINUTOS.AsInteger     := Trunc(EdtAgendaIntervalo.Value);
  Agenda_UsuarioCOLOR.AsInteger       := Trunc(CbAgendaCor.EditValue);
  Agenda_Usuario.Post;
  if Transa.Active then
    Transa.Commit;
  Agenda_Usuario.Open;
  for I := 0 to SchedulerDBStorage.ResourceCount - 1 do
  begin
    if SchedulerDBStorage.ResourceNames[I] = CbAgendaUsuarios.Properties.Items[CbAgendaUsuarios.ItemIndex] then
      SchedulerDBStorage.Resources.Items[I].Color := Trunc(CbAgendaCor.EditValue);
  end;
  FechaPanelForm(PnlOpcoesAgenda);
end;

procedure TFrmAgenda.cxButton2Click(Sender: TObject);
begin
  FechaPanelForm(PnlOpcoesAgenda);
end;

procedure TFrmAgenda.cxButton7Click(Sender: TObject);
begin
  Scheduler.ControlBox.Visible := not Scheduler.ControlBox.Visible;
end;

procedure TFrmAgenda.cxButton8Click(Sender: TObject);
begin
  MoveEventosAntigos;
end;

procedure TFrmAgenda.BtnTimeGridClick(Sender: TObject);
begin
  Scheduler.ViewTimeGrid.Active := True;
  cxGridLevel1.GridView := cxGridTarefasTableView2;
  cxSchedulerGridConnection1.Active := True;
end;

procedure TFrmAgenda.BtnTransfCancelarClick(Sender: TObject);
begin
  FechaPanelForm(PnlTransferirResponsavel);
end;

procedure TFrmAgenda.cxGrid3DBChartView1Series1GetValueDisplayText(Sender: TObject; const AValue: Variant;
  var ADisplayText: string);
begin
  ADisplayText := MinutosToHoras(AValue);
end;

procedure TFrmAgenda.cxGridTarefasTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  { ACanvas.Font.Color := clBlack;
    if AViewInfo.GridRecord.Index mod 2 = 0 then
    ACanvas.Brush.Color := clWhite
    else
    ACanvas.Brush.Color := $00F0F0F0; }
  if (AViewInfo.Item.Index = cxGridTarefasTableView1COLOR.Index) then
  begin
    if StrToIntDef(AViewInfo.GridRecord.DisplayTexts[cxGridTarefasTableView1COLOR.Index], 0) <> 536870912 then
      ACanvas.Brush.Color := StrToIntDef(AViewInfo.GridRecord.DisplayTexts[cxGridTarefasTableView1COLOR.Index], 0);
    ACanvas.Font.Color := ACanvas.Brush.Color;
  end;
  if AViewInfo.GridRecord.DisplayTexts[cxGridTarefasTableView1LIDO.Index] <> 'Sim' then
    ACanvas.Font.Style := [fsBold];
end;

procedure TFrmAgenda.cxGridTarefasTableView1DblClick(Sender: TObject);
begin
  FrmAgenda.Enabled := False;
  try
    AbreEvento(Agenda_Tarefas.FieldByName('CODIGO').AsString);
  finally
    FrmAgenda.Enabled := True;
  end;
end;

procedure TFrmAgenda.cxGridTarefasTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and not Agenda_Tarefas.IsEmpty then
    cxGridTarefasTableView1DblClick(nil);
end;

procedure TFrmAgenda.cxGridTarefasTableView1LIDOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: string);
begin
  AText := IfThen(AText = '1', 'Sim', 'Não');
end;

procedure TFrmAgenda.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  if Scheduler.ViewGantt.Active then
    Scheduler.ViewGantt.Scales.MinorUnitWidth := cxTrackBar1.Position
  else if Scheduler.ViewTimeGrid.Active then
    Scheduler.ViewTimeGrid.Scales.MinorUnitWidth := cxTrackBar1.Position;
end;

procedure TFrmAgenda.F1Click(Sender: TObject);
var
  I : Integer;
  ACodigos : TList<string>;
//  ALote : TLote;
  QuerX : TFDQuery;
begin
  ACodigos := TList<string>.Create;
  try
    for I := 0 to cxGridTarefasTableView1.DataController.GetSelectedCount - 1 do
    begin
      if not VarIsNull(cxGridTarefasTableView1.Controller.SelectedRecords[i].Values[cxGridTarefasTableView1CODLOTE.Index]) then
        raise EWRException.Create('Um ou mais agendamentos já fazem parte de um lote e não podem ser finalizados novamente.');
      ACodigos.Add(cxGridTarefasTableView1.Controller.SelectedRecords[i].Values[cxGridTarefasTableView1CODIGO.Index]);
    end;
    if (ACodigos.Count = 0) or (ShowMessageWR('Deseja fechar o lote para os agendamentos selecionados?', MB_ICONQUESTION) <> mrYes) then
      Exit;
{//    ALote := TLote.GerarLote(ltAgenda);
    QuerX := GeraFDQuery(Transa);
    try
      QuerX.SQL.Text := 'update AGENDA set CODLOTE = :CodLote ' +
                        'where (CODIGO = :Codigo)';
      for I := 0 to ACodigos.Count - 1 do
      begin
        QuerX.ParamByName('Codigo').AsString   := ACodigos[i];
        QuerX.ParamByName('CodLote').AsInteger := ALote.Codigo;
        QuerX.ExecSQL;
      end;
      ComitaTransacao;
      Agenda_Tarefas.Close;
      Agenda_Tarefas.Open;
      ShowMessageWR('Lote ' + ALote.Codigo.ToString + ' gerado com sucesso.');
    finally
      QuerX.Free;
    end;         }
  finally
    ACodigos.Free;
  end;
end;

procedure TFrmAgenda.Fechar1Click(Sender: TObject);
begin
  Close;
end;

type
  TcxSchedulerEditingEventInfoAccess = class(TcxSchedulerEditingEventInfo)
  end;

function TFrmAgenda.FinalizarEvento(AEvent: TcxSchedulerControlEvent; AEfetuarPost: Boolean): Boolean;
var
  AEditorForm : TForm;
  ADataAtual : TDateTime;
  ADiff : Integer;
begin
  Result := False;
  ADataAtual := DataHoraSys;

  if VarIsNull(AEvent.ID) then
  begin
    ShowMessageWR('Este ticket ainda não foi confirmado. Confirme este ticket primeiro antes de finalizá-lo.');
    Exit;
  end;

  if DateOf(AEvent.Start) < DateOf(ADataAtual) then
  begin
    if ShowMessageWR('Não é possível finalizar eventos fora do dia de hoje. Deseja mover este ticket para a data atual?', MB_ICONQUESTION) <> mrYes then
      Exit;
    ADiff := SecondsBetween(AEvent.Finish, AEvent.Start);
    AEvent.Start  := ADataAtual;
    AEvent.Finish := IncSecond(AEvent.Start, ADiff);
  end;

  AEvent.TaskStatus := tsDeferred;
  AEvent.SetCustomFieldValueByName('DT_FATURAMENTO', ADataAtual);

  //Se o evento estiver sendo editado, as informações alteradas do evento são copiadas para os controles do formulário
  //para que, ao finalizar o formulário, não sejam perdidas essas informações
  if SchedulerDBStorage.IsEventEditing(AEvent) then
  begin
    AEditorForm := TcxSchedulerEditingEventInfoAccess(SchedulerDBStorage.EditingEventInfoList.FindInfo(AEvent.Source.ID)).Editor;
    TFrmAgendaEditor(AEditorForm).LoadEventValuesIntoControls;
  end;
  TFrameHistorico.AdicionaHistorico(Transa, UCHist_Casdatro, 'Ticket finalizado');  //VarToStrDef(AEvent.GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO')
  if AEfetuarPost then
    AEvent.Post;
  Result := True;
end;

procedure TFrmAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then
  begin
    Action:=caFree;
    FrmAgenda:=Nil;
  end;
end;

procedure TFrmAgenda.FormCreate(Sender: TObject);

  procedure AddFieldAgenda(ACampo: string; ADataType: TFieldType; ASize: Integer);
  var
    AField: TField;
  begin
    case ADataType of
      ftString:
        begin
          AField := TIBStringField.Create(Agenda);
          TIBStringField(AField).Size := ASize;
        end;
       ftInteger: AField := TIntegerField.Create(Agenda);
      ftDateTime: AField := TDateTimeField.Create(Agenda);
    end;
    AField.FieldName     := ACampo;
    AField.DataSet       := Agenda;
    AField.ProviderFlags := [pfInUpdate];
    SchedulerDBStorage.CustomFields.Add.FieldName := ACampo;
  end;

var
  Reg: TRegistry;
  APrioridade: TPrioridade;
  AStatusTarefa: TcxSchedulerEventTaskStatus;
begin
  UCControls1.ApplyRights;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(self);
  FGridTarefasExpandedRecords := TList<Integer>.Create;
  FDataUltimoNaoLido := DataHoraSys;
  TcxSchedulerIDFieldDataProvider.Create(TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl), True);
  TcxSchedulerTempoFieldDataProvider.Create(TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl), True);
  TcxSchedulerEventFieldDataProvider.Create(TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl), True);
  Modo := maAgenda; //Não alterar essa linha. Para setar outros tipos, colocar onde a tela for instanciada, setando antes do show
  FHookDeTeclado := SetWindowsHookEx(WH_KEYBOARD_LL, @CallBackDelHook, 0, 0);

  OldEventEditorClass := cxEventEditorClass;
  cxEventEditorClass := TFrmAgendaEditor; //Completo

  dxLayoutControl1.BeginUpdate;
  try
    AgendaSKYPE_ID.ProviderFlags := [];
    // Este é um campo "calculado", usado para transmitir o ID do skype para o evento
    // ao criar um novo evento
    FPreFiltro := TStringList.Create;
    TipoVisualizacaoAgenda := vaUsuario;
    InicializaSQLWhere(Agenda);
    InicializaSQLWhere(Agenda_Tarefas);
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco',
        False) then
      begin
        Abrircomosistema1.Checked := Reg.ReadBoolWR('Agenda_Ativa');
        TransAgDtAtual.Checked := Reg.ReadBoolWR('AgendaTransfereDtAtual');
        Ocultaragendamentosnogrid1.Checked := Reg.ReadBoolWR('AgendaOcultarGridTarefas');
      end;
    finally
      Reg.Free;
    end;

    dxLayoutControl1ItemGridTarefas.Visible := not Ocultaragendamentosnogrid1.Checked;
    LayoutItemFiltrosTarefas.Visible := dxLayoutControl1ItemGridTarefas.Visible;
//    if not dxLayoutControl1ItemGridTarefas.Visible then
//      GrupoFiltros.AlignHorz := ahClient
//    else
//      GrupoFiltros.AlignHorz := ahLeft;
    Bloqueado := False;

    // Carrega as configurações da Agenda
    CarregaConfigsAgenda;
    CarregaConfigGrid(cxGridTarefasTableView1, 'GridTarefas');
    // cxGridTarefasTableView1.RestoreFromIniFile(GetDirSistema + 'AgendaGrid.ini', False, False, [gsoUseFilter]);
    Agenda_Usuario.Open;
    // Agenda.Open;
    Agenda_Filtro.Open;
    if TipoVisualizacaoAgenda = vaUsuario then
    begin
      CDSAgendaUsuario.Locate('CodItemFixo;PARENT', VarArrayOf([CodigoUsuario, 2]), []);
      TreeListUsuariosClick(nil);
    end else
      Agenda.Open;
    TreeListFiltros.FullCollapse;
    TreeListFiltros.FindNodeByKeyValue(4000).Expand(False); // Personalizados
    TreeListFiltros.FindNodeByKeyValue(5000).Expand(False);
    // Resource - CodUsuario ou CodTitulo
    TreeListFiltros.FindNodeByKeyValue(6000).Expand(False); // Minhas Tarefas

    TreeListUsuarios.FullCollapse;
    if TipoVisualizacaoAgenda = vaUsuario then
    begin
      TreeListUsuarios.FindNodeByKeyValue(1).Expand(False);
      TreeListUsuarios.FindNodeByKeyValue(2).Expand(False);
    end;
    Scheduler.EventOperations.ReadOnly := not LBAgenda.Visible;
    TcxImageComboBoxProperties(cxGridTarefasTableView1PRIORIDADE.Properties).Items.Clear;
    for APrioridade := Low(TPrioridade) to High(TPrioridade) do
    begin
      with TcxImageComboBoxProperties(cxGridTarefasTableView1PRIORIDADE.Properties).Items.Add do
      begin
        Description := PrioridadeToDescricao(APrioridade);
        ImageIndex := 28 + PrioridadeToStr(APrioridade);
        Value := PrioridadeToStr(APrioridade);
      end;
    end;

    TcxImageComboBoxProperties(cxGridTarefasTableView1TAREFA_STATUS.Properties).Items.Clear;
    for AStatusTarefa := Low(TcxSchedulerEventTaskStatus) to High(TcxSchedulerEventTaskStatus) do
    begin
      with TcxImageComboBoxProperties(cxGridTarefasTableView1TAREFA_STATUS.Properties).Items.Add do
      begin
        Description := TarefaStatusToStr(AStatusTarefa);
        ImageIndex := 32 + Integer(AStatusTarefa);
        Value := Integer(AStatusTarefa);
      end;
    end;
    VerificaBloqueio;
{$IFDEF WR2}
    GerarContratosWR1.Visible := True;
{$ELSE}
    GerarContratosWR1.Visible := False;
{$ENDIF}
    CarregaTiposAgenda;
  finally
    dxLayoutControl1.EndUpdate;
  end;
  CDSAgendaUsuario.Locate('CodItemFixo;PARENT', VarArrayOf([CodigoUsuario, 2]), []);

  PreencheLookupCentro_Trabalho(edtCentro_Trabalho.Properties);
  PreencheLookupUsuarios(edtFuncionario.Properties);
  FCodAgendaEditorNovo:=null;
end;

procedure TFrmAgenda.FormDestroy(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  UnhookWindowsHookEx(FHookDeTeclado);
  FControleWR.Free;
  FPreFiltro.Free;
  FreeAndNil(FGridTarefasExpandedRecords);
  if Modo = maAgenda then
    GravaConfigGrid(cxGridTarefasTableView1, 'GridTarefas');

  // Como há somente uma agenda no sistema, o GravaConfigGrid foi copiado aqui fazendo as adaptações necessárias
  AStream := TMemoryStream.Create;
  try
    Scheduler.StoreToStream(AStream, False);
    AStream.Position := 0;
    GravaConfigGridStream(self.Name, 'Agenda', AStream);
  finally
    AStream.Free;
  end;
//  FreeAndNil(TFrmAgendaEditor.FrameHistorico);
end;

procedure TFrmAgenda.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  AData: TDateTime;
begin
  if (Key = VK_F5) and not Bloqueado and LBAgenda.Visible then
  begin
    AData := Now;
    Scheduler.DateNavigator.Date := AData;
    Scheduler.GoToDate(AData);
    Scheduler.SelectTime(AData, AData, Scheduler.SelResource);
    Scheduler.CreateEventUsingDialog;
    { with SchedulerDBStorage.CreateEvent do
      begin
      ResourceID := StrToInt(CodigoUsuario);
      Caption := 'Birthday';
      Start := Now;
      Finish := IncMinute(Now, 30);
      State := 0;

      Post;
      end; }
  end;
  if (Key = VK_F11) then
  begin
    with TFrmEmail.Create(nil, Self.ClassName) do
    try
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TFrmAgenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['a' .. 'z', 'A' .. 'Z', #8]) and not edtPesquisa.Focused and (Assigned(FFrameHistorico) and not FFrameHistorico.MemoMensagem.Focused) then
  begin
    edtPesquisa.SetFocusWR;
    if Key <> #8 then
      edtPesquisa.Text := edtPesquisa.Text + Key;
    edtPesquisa.SelStart := Length(edtPesquisa.Text);
  end;
end;

procedure TFrmAgenda.FormShow(Sender: TObject);
var
  AOldTab : TObject;
begin
  if FormatDateTime('DDMM/YYYY', Scheduler.DateNavigator.Date) < FormatDateTime('DD/MM/YYYY', Now) then
    Scheduler.EventOperations.ReadOnly := True
  else if LBAgenda.Visible then
    Scheduler.EventOperations.ReadOnly := False;
end;

procedure TFrmAgenda.G1Click(Sender: TObject);
var
  ATreeList : TcxSchedulerTreeListBrowser;
  ANode : TcxTreeListNode;
begin
  ATreeList := TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl);
  if ATreeList.DataController.TreeList.SelectionCount > 0 then
  begin
    ANode := ATreeList.DataController.TreeList.Selections[0];
    ATreeList.DataController.TreeList.Select(ANode.getNextSibling);
//    ANode.
//    ATreeList.Columns[0].d
    TcxSchedulerEvent(Integer(ANode.Values[9])).IsGroup := True;
  end;
end;

procedure TFrmAgenda.G2Click(Sender: TObject);

  function GetPessoa(AEmail: string; out APessoaRetorno: TPessoaRetorno): Boolean;
  var
    QuerPessoa: TFDQuery;
  begin
    QuerPessoa := GeraFDQuery;
    try
      QuerPessoa.SQL.Text := 'select first 1 CODIGO ' +
                             'from PESSOAS P ' +
                             'where (upper(P.EMAIL) like :Email)';
      QuerPessoa.Params[0].AsString := AnsiUpperCase('%' + AEmail + '%');
      QuerPessoa.Open;
      Result := PessoaBusca(nil, QuerPessoa.Fields[0].AsString, APessoaRetorno, 'CLI');
    finally
      QuerPessoa.Free;
    end;
  end;
  
var
  QuerX : TFDQuery;
  APessoaRetorno : TPessoaRetorno;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select E.CODIGO, E.CODCRM_DATABASE, E.ASSUNTO, E.DATA, E.DE, E.PARA ' +
                      'from EMAIL E ' +
                      'left join AGENDA A on (E.CODIGO = A.CODEMAIL) and (E.CODCRM_DATABASE = A.CODEMAIL_CRM_DATABASE) ' +
                      'where (A.CODIGO is null)';
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      FAtualizandoDatasEventos := True; //usado essa variável para não comitar a cada post
      Agenda.DisableControls;
      FrmAguarde := TFrmAguarde.Create(Self);
      try
        FrmAguarde.Show;
        FrmAguarde.Mensagem := 'Calculando emails...';
        QuerX.Last;
        QuerX.First;
        FrmAguarde.ProgressoMaximo := QuerX.RecordCount;
        while not QuerX.Eof do
        begin
          FrmAguarde.Mensagem := 'Importando Emails (' + QuerX.RecNo.ToString + ' de ' + QuerX.RecordCount.ToString + ')';
          Agenda.Insert;
          APessoaRetorno := TPessoaRetorno.Create;
          try
            if GetPessoa(QuerX.FieldByName('DE').AsString, APessoaRetorno) then
            begin
              AgendaPESSOA_CLIENTE_CODIGO.AsString     := APessoaRetorno.Codigo;
              AgendaPESSOA_CLIENTE_TIPO.AsString       := APessoaRetorno.Tipo.Codigo;
              AgendaPESSOA_CLIENTE_SEQUENCIA.AsInteger := APessoaRetorno.Sequencia;
            end;
          finally
            APessoaRetorno.Free;
          end;
          AgendaCODEMAIL.AsInteger              := QuerX.FieldByName('CODIGO').AsInteger;
          AgendaCODEMAIL_CRM_DATABASE.AsInteger := QuerX.FieldByName('CODCRM_DATABASE').AsInteger;
          AgendaCAPTION.AsString                := QuerX.FieldByName('ASSUNTO').AsString;
          AgendaDT_INICIO.AsDateTime            := QuerX.FieldByName('DATA').AsDateTime;
          AgendaDT_FIM.AsDateTime               := QuerX.FieldByName('DATA').AsDateTime;
          AgendaACTUAL_START.AsInteger          := Trunc(QuerX.FieldByName('DATA').AsDateTime);
          AgendaACTUAL_FINISH.AsInteger         := Trunc(QuerX.FieldByName('DATA').AsDateTime);
          AgendaCODUSUARIO_RESPONSAVEL.AsString := '0';
          AgendaCODUSUARIO_CRIADOR.AsInteger    := CodigoUsuario;
          AgendaATIVO.AsString                  := 'S';
          AgendaTIPO_AGENDAMENTO.AsInteger      := EventoTipoToStr(etAgendamento);
          Agenda.Post;
          FrmAguarde.AvancarProgresso;
          QuerX.Next;
        end;
      finally
        FAtualizandoDatasEventos := False;
        Agenda.EnableControls;
        ComitaTransacao;
        FrmAguarde.Free;
      end;
      ShowMessageWR('Importação de emails concluída com sucesso!');
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgenda.GerarHistoricoAgenda(AAtualizar: Boolean);
var
  I: Integer;
  AField: TField;
begin
  if FInserindoEvento then
    Exit;

  // Grava os dados na tabela AGENDA e não na AGENDA_HISTORICO
  Agenda_Historico.Close;
  if AAtualizar then
  begin
    // atualização de um evento de histórico existente
    Agenda_Historico.ParamByName('Cod').AsString := FEventoDataHistorico.CodEvento;
    Agenda_Historico.Open;
    Assert(not Agenda_Historico.IsEmpty, 'Falha na atualização do histórico');
    Agenda_Historico.Edit;
    for I := 0 to Agenda.FieldCount - 1 do
    begin
      // Ignora os campos que já foram definidos anteriormente
      if MatchStr(Agenda.Fields[I].FieldName, ['CODIGO', 'TIPO_AGENDAMENTO']) then
        Continue;
      AField := Agenda_Historico.FindField(Agenda.Fields[I].FieldName);
      if AField <> nil then
        AField.Value := Agenda.Fields[I].Value;
    end;
  end else
  begin
    Agenda_Historico.Open;
    Agenda_Historico.Insert;
    for I := 0 to Agenda.FieldCount - 1 do
    begin
      AField := Agenda_Historico.FindField(Agenda.Fields[I].FieldName);
      if AField <> nil then
        AField.Value := Agenda.Fields[I].Value;
    end;
    if Agenda_Historico.FieldByName('CODUSUARIO_RESPONSAVEL').IsNull then
      Agenda_Historico.FieldByName('CODUSUARIO_RESPONSAVEL').AsInteger := CodigoUsuario;
    Agenda_Historico.FieldByName('TIPO_AGENDAMENTO').AsInteger := EventoTipoToStr(etLogAlteracao);
    Agenda_Historico.FieldByName('CODIGO').AsInteger           := GetProximoCodigoSP(SPAgenda);
    if Agenda_Historico.FieldByName('PROTOCOLO').AsString = '' then
      Agenda_Historico.FieldByName('PROTOCOLO').AsString := 'Novo';

    FEventoDataHistorico.CodEvento := Agenda_Historico.FieldByName('CODIGO').AsString;
  end;
  Agenda_Historico.Post;
end;

procedure TFrmAgenda.InsereEventoEm(AEventoOriginal, AEventoInserir: TcxSchedulerEvent);
var
  AField: TField;
  ADataAtual, ADataFinalEvento: TDateTime;
  AEventoOriginalContinuacao: TcxSchedulerEvent;
  AListaLinks: TList<TcxSchedulerEvent>;
  I, ACodEventoOcorrencia: Integer;
  AOk: Boolean;
begin
{.$IFNDEF DEBUG}
  Exit;
{.$ENDIF}
  { *******************************************
    Passos que devem ser executados quando há um desvio na execução dos tickets. Os tickets devem estar corretamente
    planejados dentro do Gantt. Durante a execução do projeto, podem ocorrer desvios de execução dos usuários fora do controle
    do gestor do projeto. Estes desvios devem ficar registrados no gráfico do planejamento de atividades.

    1 - Remover o link do evento atual para o proximo evento (vide passo 6)
    2 - Alterar a data final do evento atual para a data do início do evento da ocorrencia (vide passo 5)
    3 - Linkar o evento atual com a ocorrencia
    4 - Criar uma cópia do evento atual com a data inicial sendo a data atual e data final igual a data final do evento original do passo 3
    5 - Linkar a cópia no evento que era o originalmente linkado no passo 2
    6 - Linkar o evento de ocorrencia na cópia

    Adicional: Para cada novo evento de ocorrencia que acontecer antes de iniciar novamente o evento original,
    seguir os mesmos passos tendo como evento original sendo a ocorrencia anterior a ocorrencia atual
    ******************************************* }

{$REGION 'Passo 1 - Criar o evento de ocorrencia'}
   {AEventoOcorrencia := SchedulerDBStorage.createEvent;
    AEventoOcorrencia.Assign(AEvent);
    
    Agenda_Historico.Close;
    Agenda_Historico.UpdateTransaction := TransaHistoricoAux;
    try
    Agenda_Historico.Open;
    Agenda_Historico.Insert; //Grava os dados na tabela AGENDA e não na AGENDA_HISTORICO
    ACodEventoOcorrencia := GetProximoCodigoSP(SPAgenda);
    Agenda_Historico.FieldByName('CODIGO').AsInteger := ACodEventoOcorrencia;
    Agenda_Historico.FieldByName('ATIVO').AsString   := 'S';

    try
    AEvent.Caption; TODO: Pog, o AEvent vem com sujeira quando não tem objeto. Não vem nil. Ajustar
    except
    AEvent := nil;
    end;

    if AEvent <> nil then
    begin
    Agenda_Historico.FieldByName('CAPTION').AsString                := AEvent.Caption;
    Agenda_Historico.FieldByName('EVENTO_TIPO').Value               := AEvent.EditValues[1];
    Agenda_Historico.FieldByName('GROUP_ID').Value                  := AEvent.GroupID;
    Agenda_Historico.FieldByName('PROTOCOLO').AsString              := VarToStrDef(AEvent.ID, 'Novo');
    Agenda_Historico.FieldByName('COLOR').AsInteger                 := AEvent.LabelColor;
    Agenda_Historico.FieldByName('LOCATION').AsString               := AEvent.Location;
    //Agenda_Historico.FieldByName('OPTIONS').AsString                := AEvent.Caption;
    //    Agenda_Historico.FieldByName('PARENT_ID').Value                 := AEvent.ParentID;
    Agenda_Historico.FieldByName('RECURRENCE_INDEX').AsInteger      := AEvent.RecurrenceIndex;
    Agenda_Historico.FieldByName('RECURRENCE_INFO').Value           := AEvent.EditValues[9];
    Agenda_Historico.FieldByName('REMINDER_DATE').AsDateTime        := AEvent.ReminderDate;
    Agenda_Historico.FieldByName('REMINDER_MINUTES').AsInteger      := AEvent.ReminderMinutesBeforeStart;
    //Agenda_Historico.FieldByName('REMINDER_RESOURCES_DATA').AsString := AEvent.Caption;
    //    Agenda_Historico.FieldByName('CODUSUARIO_RESPONSAVEL').Value    := AEvent.ResourceID;
    Agenda_Historico.FieldByName('STATUS').AsInteger                := AEvent.State;
    Agenda_Historico.FieldByName('TAREFA_COMPLETA').AsInteger       := AEvent.TaskComplete;
    Agenda_Historico.FieldByName('TAREFA_INDEX').AsInteger          := AEvent.TaskIndex;
    //    Agenda_Historico.FieldByName('TAREFA_LINK').Value               := AEvent.EditValues[19];
    Agenda_Historico.FieldByName('TAREFA_STATUS').Value             := AEvent.EditValues[20];
    end else
    Agenda_Historico.FieldByName('PROTOCOLO').AsString              := 'Novo';

    //O campo DT_EMISSAO armazena a data da ação executada pelo usuário
    Agenda_Historico.FieldByName('DT_EMISSAO').AsDateTime := ADataAtual;

    //O campo OCORRENCIA armazena a ação executada pelo registro de produtividade
    Agenda_Historico.FieldByName('OCORRENCIA').AsString   := AEventoProdutividade.Codigo;

    //O campo CODUSUARIO_RESPONSAVEL armazena o usuário que executou o evento
    Agenda_Historico.FieldByName('CODUSUARIO_RESPONSAVEL').AsString := CodigoUsuario;

    //Data do evento é a data atual, o momento em que o evento ocorreu
    Agenda_Historico.FieldByName('DT_INICIO').AsDateTime    := ADataAtual;
    Agenda_Historico.FieldByName('DT_FIM').AsDateTime       := ADataAtual;
    Agenda_Historico.FieldByName('ACTUAL_FINISH').AsInteger := Trunc(ADataAtual);
    Agenda_Historico.FieldByName('ACTUAL_START').AsInteger  := Trunc(ADataAtual);

    //Tipo do evento realizado, Produtividade
    Agenda_Historico.FieldByName('TIPO_AGENDAMENTO').AsInteger := etProdutividade.Codigo;

    Agenda_Historico.Post;
    TransaHistoricoAux.Commit;
    finally
    Agenda_Historico.UpdateTransaction := Transa;
    end; }
{$ENDREGION}
  // Exit;

  FInserindoEvento := True;
  AListaLinks := TList<TcxSchedulerEvent>.Create;
  try
    Assert((AEventoOriginal <> nil) and (AEventoInserir <> nil),
      'Eventos nil na inserção');
    ADataAtual := DataHoraSys;

    // Faz um backup dos links atuais do evento
    for I := 0 to AEventoOriginal.TaskLinks.Count - 1 do
    begin
      if AEventoOriginal.TaskLinks[I].Link <> nil then
        AListaLinks.Add(AEventoOriginal.TaskLinks[I].Link);
    end;

    // Faz um backup da data final do evento
    ADataFinalEvento := AEventoOriginal.Finish;

    // OK Passo 2 - Remover os links do evento atual
    AEventoOriginal.TaskLinks.Clear;

    // OK Passo 3 - Altera a data final do evento
    AEventoOriginal.Finish := ADataAtual;

    // -- Passo 4 - Linkar o evento com a ocorrência
    AEventoOriginal.TaskLinks.Add(AEventoInserir, trFinishToStart);
    AEventoOriginal.Post;

    // OK Passo 5 - Criar uma cópia do evento atual
    AEventoOriginalContinuacao := SchedulerDBStorage.createEvent;
    AEventoOriginalContinuacao.Assign(AEventoOriginal);
    AEventoOriginalContinuacao.Start := AEventoInserir.Finish;
    AEventoOriginalContinuacao.Finish := ADataFinalEvento;
    AEventoOriginalContinuacao.Post;

    // OK Passo 6 - Linkar a cópia no evento que tinha linkado antes
    for I := 0 to AListaLinks.Count - 1 do
      AEventoOriginalContinuacao.TaskLinks.Add(AListaLinks[I], trFinishToStart);

    // -- Passo 7 - Linkar a ocorrência na cópia
    AEventoInserir.TaskLinks.Add(AEventoOriginalContinuacao, trFinishToStart);
    AEventoInserir.Post;
  finally
    AListaLinks.Free;
    FInserindoEvento := False;
  end;
end;

procedure TFrmAgenda.VerificaEventosInsercao;
var
  ADataAtual: TDateTime;
  I: Integer;
  AEvento: TcxSchedulerEvent;
begin
  SchedulerDBStorage.FullRefresh;
  ADataAtual := DataHoraSys;
  for I := 0 to SchedulerDBStorage.EventCount - 1 do
  begin
    AEvento := SchedulerDBStorage.Events[I];
    if (AEvento.Start < ADataAtual) and (AEvento.Finish > ADataAtual) and
      not VarSameValue(AEvento.ID, AgendaCODIGO.AsVariant) then
    begin
      // Evento encontrado...
      InsereEventoEm(AEvento, SchedulerDBStorage.GetEventByID(FEventoDataHistorico.CodEvento));
      ComitaTransacao;
      Break;
    end;
  end;
end;

function ComparaDatasSort(Item1, Item2: Pointer): Integer;
begin
  Result := Integer(CompareDate(TcxSchedulerEvent(Item1).Start, TcxSchedulerEvent(Item2).Start));
end;

procedure TFrmAgenda.MoveEventosAntigos(APrazoDefinido: Integer = 0);
var
  ADataAtual : TDateTime;
  I, J, APrazo: Integer;
  AEvent: TcxSchedulerEvent;
begin
  if TipoVisualizacaoAgenda = vaEstagio then
  begin
    if not ContainsText(SchedulerDBStorage.FieldNames.Start, 'KANBAN') then
      raise EWRException.Create('Selecione uma visualização por Estágios para efetuar este procedimento.');
  end
  else if not ContainsText(SchedulerDBStorage.FieldNames.Start, 'GANTT') then
    raise EWRException.Create('Selecione uma visualização de Gantt para efetuar este procedimento.');

  if (TipoVisualizacaoAgenda <> vaEstagio) and (Modo <> maPCP) then //Remover essa verificação quando for compatível com o eventos de agenda
    raise EWRException.Create('Evento suportado apenas no Modo PCP');
    
  if ShowMessageWR('Este procedimento irá recalcular todos os eventos. Deseja continuar?', MB_ICONQUESTION) <> mrYes then
    Exit;
    
  // Move os eventos antigos para o atual momento
//    SchedulerDBStorage.Resourc
  FrmAguarde := TFrmAguarde.Create(Self);
  FAtualizandoDatasEventos := True;
  SchedulerDBStorage.BeginUpdate;
  try
    FrmAguarde.Show;
    for J := 0 to SchedulerDBStorage.ResourceCount - 1 do
    begin
      FrmAguarde.Mensagem := 'Calculando tempos para "' + SchedulerDBStorage.ResourceNames[J] + '"';
      if TipoVisualizacaoAgenda = vaEstagio then
        ADataAtual := 0
      else
        ADataAtual := DataHoraSys;
      for I := 0 to SchedulerDBStorage.EventCount - 1 do
      begin
        AEvent := SchedulerDBStorage.Events[I];
        if not VarSameValue(AEvent.ResourceID, SchedulerDBStorage.ResourceIDs[J]) then
          Continue;

        if TipoVisualizacaoAgenda <> vaEstagio then
        begin
          if AEvent.Start = 0 then
            AEvent.Start := AEvent.GetCustomFieldValueByName('DT_INICIO');
          if AEvent.Finish = 0 then
            AEvent.Finish := AEvent.GetCustomFieldValueByName('DT_FIM');
        end;

        if APrazoDefinido > 0 then
          APrazo := APrazoDefinido * 60
        else
          APrazo := SecondsBetween(AEvent.Finish, AEvent.Start);
        AEvent.Start  := ADataAtual;
        AEvent.Finish := IncSecond(AEvent.Start, APrazo);
        ADataAtual    := IncMinute(AEvent.Finish, IfThen(TipoVisualizacaoAgenda = vaEstagio, 0, 5));
        if TipoVisualizacaoAgenda <> vaEstagio then
        begin
          if TimeOf(ADataAtual) < TimeOf(Scheduler.OptionsView.WorkStart) then
            ADataAtual := DateOf(ADataAtual) + TimeOf(Scheduler.OptionsView.WorkStart)
          else if TimeOf(ADataAtual) > TimeOf(Scheduler.OptionsView.WorkFinish) then
            ADataAtual := IncDay(DateOf(ADataAtual)) + TimeOf(Scheduler.OptionsView.WorkStart);
        end;
      end;
    end;
  finally
    FrmAguarde.Free;
    FAtualizandoDatasEventos := False;
    SchedulerDBStorage.EndUpdate;
  end;
  ComitaTransacao;

  {TODO: Emails
         Atualização de Tela automaticamente
         Avisos sobre alterações
         Velocidade
         Auto-organização da posição dos tickets
         Mostrar o responsável pelo ticket (implica no auto-ajuste da altura do ticket)
         Impedir ajuste manual da altura do ticket
         Subtarefas
         - Templo planejado e tempo gasto
         - Alterar a cor via menu
  }
end;

procedure TFrmAgenda.MenuFiltrosPopup(Sender: TObject);
begin
  ExcluirFiltro1.Enabled := (TreeListFiltros.FocusedNode <> nil) and
                            (TreeListFiltros.FocusedNode.Values[0] < 10000) and
                            (CDSAgendaFiltro.FieldByName('TIPO').Value = tfPersonalizado);
end;

procedure TFrmAgenda.menuMostrarEstadoClick(Sender: TObject);
begin
  menuFaturados.Checked := False;
  menuEmAberto.Checked := False;
  menuTodos.Checked := False;
  TMenuItem(Sender).Checked := True;
  if not Ocultaragendamentosnogrid1.Checked then
  begin
    Agenda_Tarefas.Close;
    Agenda_Tarefas.Open;
  end;
end;

procedure TFrmAgenda.Moverparadata1Click(Sender: TObject);
begin
  EdtSelecaoData.Date := DateOf(Now);
  ShowPanelForm(PnlSelecaoData, bsSingle);
end;

procedure TFrmAgenda.N51Click(Sender: TObject);
begin
  MoveEventosAntigos(TMenuItem(Sender).Tag);
end;

procedure TFrmAgenda.Ocultaragendamentosnogrid1Click(Sender: TObject);
var
  Reg: TRegistry;
begin
  Ocultaragendamentosnogrid1.Checked := not Ocultaragendamentosnogrid1.Checked;
  dxLayoutControl1ItemGridTarefas.Visible := not Ocultaragendamentosnogrid1.Checked;
  LayoutItemFiltrosTarefas.Visible := dxLayoutControl1ItemGridTarefas.Visible;
  if Ocultaragendamentosnogrid1.Checked then
    Agenda_Tarefas.Close;
//  if not dxLayoutControl1ItemGridTarefas.Visible then
//    GrupoFiltros.AlignHorz := ahClient
//  else
//    GrupoFiltros.AlignHorz := ahLeft;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True)
    then
      Reg.WriteBool('AgendaOcultarGridTarefas',
        Ocultaragendamentosnogrid1.Checked);
  finally
    Reg.Free;
  end;
end;

procedure TFrmAgenda.P1Click(Sender: TObject);
begin
  cxEventEditorClass := OldEventEditorClass;
end;

procedure TFrmAgenda.PopupMenu1Popup(Sender: TObject);
begin
  VisualizarPorUsuario.Checked := (TipoVisualizacaoAgenda = vaUsuario);
  VisualizarPorTitulo.Checked := (TipoVisualizacaoAgenda = vaTitulo);

  GerarContratosWR1.Visible := {$IFDEF WR2} True {$ELSE} False {$ENDIF};
  P1.Checked := (cxEventEditorClass = OldEventEditorClass);
  R1.Checked := (cxEventEditorClass = TFrmAgendaEditorRapido);
  C1.Checked := (cxEventEditorClass = TFrmAgendaEditor);
  V1.Checked := TConfig.ReadBoolean('AGENDA_PREENCHER_SETOR');
end;

procedure TFrmAgenda.Relatrio1Click(Sender: TObject);
begin
  ImpriAgenda := TImpriAgenda.Create(nil);
  try
    ImpriAgenda.ShowModal;
  finally
    FreeAndNil(ImpriAgenda);
  end;
end;

type
  TcxSchedulerAccess = class(TcxScheduler)
  end;

procedure TFrmAgenda.TbZoomPropertiesChange(Sender: TObject);
begin
  if Scheduler.ViewGantt.Active then
  begin
    case TbZoom.Position of
      0: Scheduler.ViewGantt.Scales.MajorUnit := suDay;
      1: Scheduler.ViewGantt.Scales.MajorUnit := suWeek;
      2: Scheduler.ViewGantt.Scales.MajorUnit := suMonth;
      3:
        begin
          Scheduler.ViewGantt.Scales.MajorUnit := suYear;
          Scheduler.ViewGantt.Scales.MinorUnit := suMonth;
        end;
    end;
  end
  else if Scheduler.ViewTimeGrid.Active then
  begin
    case TbZoom.Position of
      0: Scheduler.ViewTimeGrid.Scales.MajorUnit := suDay;
      1: Scheduler.ViewTimeGrid.Scales.MajorUnit := suWeek;
      2: Scheduler.ViewTimeGrid.Scales.MajorUnit := suMonth;
      3:
        begin
          Scheduler.ViewTimeGrid.Scales.MajorUnit := suYear;
          Scheduler.ViewTimeGrid.Scales.MinorUnit := suMonth;
        end;
    end;
  end;
end;

procedure TFrmAgenda.Timer3CXTimer(Sender: TObject);
var
  TrasX: TFDTransaction;

  function _LocalizaPessoaContato: string;
  var
    _QuerX: TFDQuery;
  begin
    _QuerX := GeraFDQuery(TrasX);
    try
      _QuerX.SQL.Text := 'select CODIGO '+
                         'from PESSOAS '+
                         'where replace(replace(replace(replace(fone1, '' '', ''''), ''-'', ''''), ''('', ''''), '')'', '''')';
    finally
      _QuerX.Free;
    end;
  end;

var
  APathHistoricoChamadas, ARamal: string;
  AFiles: TStringDynArray;
  ALinha: TArray<string>;
  AFormatSettings: TFormatSettings;
  AArqLog: TStringList;
  QuerX: TFDQuery;
  AFile: TFileStream;
  i, l: Integer;
begin
  TrasX := GeraFDTransacao;
  QuerX := GeraFDQuery(TrasX);
  AArqLog := TStringList.Create;
  Timer3CX.Enabled := False;
  try
    APathHistoricoChamadas := IncludeTrailingPathDelimiter(System.IOUtils.TPath.GetCachePath) + '3CX VoIP Phone\History';
    SysUtils.ForceDirectories(APathHistoricoChamadas + '\WR2\');

    QuerX.SQL.Text := 'select * from HISTORICO_CHAMADAS where ramal is null';
    QuerX.Open;
    AFiles := TDirectory.GetFiles(APathHistoricoChamadas);
    AFormatSettings := TFormatSettings.Create;
    AFormatSettings.ShortDateFormat := 'yyyy/mm/dd';
    for i := 0 to High(AFiles) do
    begin
      if StartsText('callHistory', ExtractFileName(AFiles[i])) then
      begin
        ARamal := MidBStr(ExtractFileName(AFiles[i]), 12, 4);
        if (Pos('@', ARamal) > 0) then
          ARamal := LeftBStr(ARamal, (Pos('@', ARamal) - 1));

        AFile := TFileStream.Create(AFiles[i], fmShareDenyNone);
        try
          AArqLog.LoadFromStream(AFile);
        finally
          AFile.Free;
        end;
        for l := 0 to (AArqLog.Count - 1) do
        begin
          ALinha := AArqLog[l].Split([char(vk_tab)]);
          if (High(ALinha) = 5) then
          begin
            QuerX.Insert;
            QuerX.FieldByName('ramal').AsInteger := ARamal.ToInteger;
            QuerX.FieldByName('tipo').AsInteger := ALinha[0].ToInteger;
            QuerX.FieldByName('telefone').AsString := ALinha[1];
            QuerX.FieldByName('datahora').AsDateTime := StrToDateTime(ALinha[2], AFormatSettings);
            QuerX.FieldByName('tempo').AsInteger := ALinha[3].ToInteger;
            QuerX.FieldByName('gravada').AsString := IfThen(ALinha[4].ToInteger = 1, 'S', 'N');
            QuerX.FieldByName('desviada').AsString :=  IfThen(ALinha[5].ToInteger = 1, 'S', 'N');
            try
              //Quando o erro for violação de chave, ignora e continua.
              QuerX.Post;
            except
              on E: EFDDBEngineException do
              begin
                if E.Kind = ekUKViolated then
                  QuerX.Cancel
                else
                  raise;
              end;
              on E:Exception do
                raise;
            end;
          end;
        end;
        if TrasX.Active then
          TrasX.Commit;
        if (AArqLog.Count > 0) then
          AArqLog.SaveToFile(GetProximoNomeArquivo(APathHistoricoChamadas + '\WR2\' + ExtractFileName(AFiles[i])));
        try
          TryDeleteFile(AFiles[i], 1000);
        except end;
      end;
    end;
  finally
    QuerX.Free;
    TrasX.Free;
    AArqLog.Free;
    Timer3CX.Interval := 60000;
    Timer3CX.Enabled := True;
  end;
end;

procedure TFrmAgenda.TimerF10Timer(Sender: TObject);
var
  ANow: TDateTime;
  AEvent: TcxSchedulerControlEvent;
  AModified: Boolean;
  APessoa: TPessoaRetorno;
begin
  TimerF10.Enabled := False;
  if not Bloqueado and LBAgenda.Visible then
  begin
    ANow := Now;
    Scheduler.DateNavigator.Date := ANow;
    Scheduler.GoToDate(ANow);
    Scheduler.SelectTime(ANow, ANow, Scheduler.SelResource);
    // Scheduler.CreateEventUsingDialog;

    // A procedure CreateEventUsingDialog foi substituída pelo código abaixo, que faz exatamente a mesma coisa mas permite
    // inicializar o evento já com algumas informações preenchidas. O código é uma cópia da procedure com as adaptações
    // necessárias para que funcinasse fora da classe original
    if not TcxSchedulerAccess(Scheduler).StorageActive then
      Exit;
    AEvent := TcxSchedulerAccess(Scheduler).EventList.createEvent(False);
    TcxSchedulerAccess(Scheduler).EditController.Focused := True;
    try
      // InitEventBySelection(AEvent, AllDay, ARecurrence, False); <-- código original
      if Scheduler.SelResource <> nil then
        AEvent.ResourceID := Scheduler.SelResource.ResourceID;
      AEvent.Start := Scheduler.SelStart;
      AEvent.AllDayEvent := False;
      AEvent.Finish := Scheduler.SelFinish;
      AEvent.State := tlsFree;

      TcxSchedulerAccess(Scheduler).EventList.ValidateTimeBias(AEvent);

      // InitEventBySelection(AEvent, AllDay, ARecurrence, False); <-- código original
      if Scheduler.SelResource <> nil then
        AEvent.ResourceID := Scheduler.SelResource.ResourceID;
      AEvent.Start := Scheduler.SelStart;
      AEvent.AllDayEvent := False;
      AEvent.Finish := Scheduler.SelFinish;
      AEvent.State := tlsFree;

      // ----
      if TcxSchedulerAccess(Scheduler).DoBeforeEditing(AEvent, False) then
      begin
        TcxSchedulerAccess(Scheduler).EventList.BeforeEditing(AEvent, False);
        cxShowEventEditorEx(TcxSchedulerAccess(Scheduler).GetEventEditInfo(AEvent, False), AModified);
      end
    finally
      TcxSchedulerAccess(Scheduler).EditController.Focused := False;
      AEvent.Free;
    end;
  end;
end;

procedure TFrmAgenda.TimerNaoLidoTimer(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  TimerNaoLido.Enabled := False;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select count(1) as QUANT, current_timestamp as HORA ' +
                      'from AGENDA_LIDO ' +
                      'where (CODUSUARIO = :Cod) ' +
                      '      and (DT_LIDO > :Data)';
    QuerX.ParamByName('Cod').AsInteger   := CodigoUsuario;
    QuerX.ParamByName('Data').AsDateTime := FDataUltimoNaoLido;
    QuerX.Open;
    if QuerX.Fields[0].AsInteger > 0 then
    begin
      BtnAtualizarTarefas.Caption        := QuerX.FieldByName('QUANT').AsString;
      BtnAtualizarTarefas.Colors.Default := clRed;
    end else
    begin
      BtnAtualizarTarefas.Caption        := '';
      BtnAtualizarTarefas.Colors.Default := clDefault;
    end;
  finally
    QuerX.Free;
    TimerNaoLido.Enabled := True;
  end;
end;

procedure TFrmAgenda.TransAgDtAtualClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  TransAgDtAtual.Checked := not TransAgDtAtual.Checked;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True)
    then
      Reg.WriteBool('AgendaTransfereDtAtual', TransAgDtAtual.Checked);
  finally
    Reg.Free;
  end;
end;

procedure TFrmAgenda.SalvarFiltroComo1Click(Sender: TObject);
var
  QuerX: TIBQuery;
  ACod: Integer;
  ANome: string;
  AFiltro: TMemoryStream;
  APoint: TBookMark;
begin
  AFiltro := TMemoryStream.Create;
  try
    cxGridTarefasTableView1.DataController.Filter.SaveToStream(AFiltro);
    AFiltro.Position := 0;
    ANome := InputBox('Salvar Filtro Como...', 'Nome do novo filtro:', '');
    if Trim(ANome) = '' then
      Exit;
    QuerX := GeraQuery;
    try
      QuerX.SQL.Text := 'select max(CODIGO) from AGENDA_FILTRO';
      QuerX.Open;
      ACod := QuerX.Fields[0].AsInteger + 1;
    finally
      QuerX.Free;
    end;
    Agenda_Filtro.Insert;
    Agenda_Filtro.FieldByName('CODIGO').AsInteger := ACod;
    Agenda_Filtro.FieldByName('DESCRICAO').AsString := ANome;
    Agenda_Filtro.FieldByName('PARENT').AsInteger := 4000;
    Agenda_Filtro.FieldByName('CODUSUARIO').AsInteger := CodigoUsuario;
    Agenda_Filtro.FieldByName('CODEMPRESA').AsString := EmpresaAtiva;
    TBlobField(Agenda_Filtro.FieldByName('FILTRO')).LoadFromStream(AFiltro);
    Agenda_Filtro.Post;
    Codigo := Agenda_Filtro.FieldByName('CODIGO').AsString;
    APoint := Agenda_Filtro.GetBookmark;
    TransaFiltro.Commit;
    Agenda_Filtro.Open;
    if not Agenda_Filtro.IsEmpty then
    begin
      if APoint <> nil then
        Agenda_Filtro.GotoBookmark(APoint);
      if (Agenda_Filtro.State = dsBrowse) and (Codigo <> Agenda_Filtro.FieldByName('CODIGO').AsString) then
      try
        Agenda_Filtro.Locate('CODIGO', Codigo, []);
      except end;
    end;
  finally
    AFiltro.Free;
  end;
end;

procedure TFrmAgenda.SchedulerAfterEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
{$IFDEF DEBUG}
  // É disparado depois do Post do evento
  if FEventoDataHistorico.EventoPostado then
    Exit;
  try
    AEvent.Caption;
  except
    AEvent := nil;
  end;
  // Este código só é executado quando a janela do evento é aberta e fechada sem ser feita qualquer alteração.
  // Assim, é registrado somente o log da operação
  if AEvent <> nil then
  begin
    LancaTempoProdutividade(AEvent.ID);
    if not Agenda.Locate('CODIGO', AEvent.ID, []) then
      raise EWRException.Create('Evento não encontrado para log de alteração.');
  end;
  GerarHistoricoAgenda(False);
//  AtualizaHorarioGanttHistorico;
  ComitaTransacao;
{$ENDIF}
end;

procedure TFrmAgenda.SchedulerBeforeEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent;
  AInplace: Boolean; var Allow: Boolean);
begin
  // if not SchedulerDBStorage.EditingEventInfoList.IsEventEditing(AEvent, False) then
  // GerarProdutividade(AEvent, epEventoAberto);

  // Ao abrir um evento, pega a data inicial. Como pode ser um evento novo e não ter o código,
  // o código é pego somente no BeforePost
  FEventoDataHistorico.Clear;
  FEventoDataHistorico.DataInicial := DataHoraSys;
end;

procedure TFrmAgenda.SchedulerClick(Sender: TObject);
begin
  VerificaBloqueio;
  GrupoRegistroAtividades.Enabled:= Not(AgendaEventoSelecionadoCODIGO.IsNull);
end;

procedure TFrmAgenda.SchedulerDateNavigatorPeriodChanged(Sender: TObject; const AStart, AFinish: TDateTime);
begin
{$IFNDEF DEBUG}
  // ShowMessageWR('Inicio: ' + DateToStr(AStart) + ' - Fim: '  + DateToStr(AFinish));
  if Assigned(Agenda) and Agenda.Active (* and ((Agenda.Params.Count <= 1) or
    (AStart > Agenda.ParamByName('DtInicio1').AsDateTime) or
    (AFinish < Agenda.ParamByName('DtFim').AsDateTime)) *) then
  begin
    Agenda.Close;
    Agenda.Open;
    VerificaBloqueio;
  end;
{$ENDIF}
end;

procedure TFrmAgenda.SchedulerDateNavigatorSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
begin
  (*
    {$REGION 'Comentado'}
    //showmessage(FormatDateTime('DD/MM/YYYY 00:00:00',Scheduler.ViewDay.FirstVisibleDate)+#13+'   ate   '+#13+FormatDateTime('DD/MM/YYYY 29:59:59',Scheduler.ViewDay.LastVisibleDate));
    //  if not(Bloquear_Dias.Visible) then
    {if  FormatDateTime('DDMM/YYYY',Scheduler.DateNavigator.Date) < FormatDateTime('DD/MM/YYYY',Now) then
    Scheduler.EventOperations.ReadOnly:=true
    else
    if LBAgenda.Visible then  Scheduler.EventOperations.ReadOnly:=false;   }
    {$ENDREGION}
    if Assigned(Agenda) and Agenda.Active and ((Agenda.Params.Count <= 1) or
    (AStart > Agenda.ParamByName('DtInicio1').AsDateTime) or
    (AFinish < Agenda.ParamByName('DtFim').AsDateTime)) then
    begin
    Agenda.Close;
    Agenda.Open;
    VerificaBloqueio;
    end; *)
{$IFDEF DEBUG}
  if Agenda.Active and (Modo <> maPCP) then
  begin
    Agenda.DisableControls;
    try
      Agenda.Close;
      Agenda.Open;
    finally
      Agenda.EnableControls;
    end;
  end;
{$ENDIF}
end;

procedure TFrmAgenda.SchedulerDBStorageRemindersAlertReminder(Sender: TcxSchedulerReminders;
  AReminder: TcxSchedulerReminder; var AHandled: Boolean);
begin
  case TipoVisualizacaoAgenda of
     vaTitulo: AHandled := not(Scheduler.Storage.ResourceIDs[0] = CodigoUsuario);
    vaUsuario: AHandled := not(Scheduler.Storage.ResourceIDs[0] = CodigoUsuario);
  end;
end;

procedure TFrmAgenda.SchedulerEventPopupMenuPopup(Sender: TcxSchedulerEventPopupMenu; ABuiltInMenu: TPopupMenu;
  var AHandled: Boolean);
var
  AMenu: TMenuItem;
begin
  AMenu := TMenuItem.Create(self);
  AMenu.Caption := Visualizartempogasto1.Caption;
  AMenu.OnClick := Visualizartempogasto1.OnClick;
  ABuiltInMenu.Items.Add(AMenu);

  AMenu := TMenuItem.Create(self);
  AMenu.Caption := Moverparadata1.Caption;
  AMenu.OnClick := Moverparadata1.OnClick;
  ABuiltInMenu.Items.Add(AMenu);
end;

procedure TFrmAgenda.SchedulerGetEventDisplayText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: string);
var
  AValue: Variant;
begin
  if TipoVisualizacaoAgenda = vaEstagio then
  begin
    AText := AEvent.Caption;
  end else
  begin
    AValue := AEvent.GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO');
    if not VarIsNull(AValue) then
      AText := '| ' + VarToStrDef(AEvent.GetCustomFieldValueByName('PROTOCOLO'), '') + ' | ' + VarToStrDef(AValue, '') + '_' + AText
    else
      AText := '| ' + VarToStrDef(AEvent.GetCustomFieldValueByName('PROTOCOLO'), '') + FormatFloat(' | 000_', 0) + AText;

    AValue := AEvent.GetCustomFieldValueByName('MENSAGEM');
    if not VarIsNull(AValue) then
      AText := AText + '  | ' + VarToStrDef(AValue, '');
  end;
end;

procedure TFrmAgenda.SchedulerGetEventHintText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: string);
var
  AValue: Variant;
  AProdutividade: TEventoProdutividade;
begin
  inherited;
  AValue := AEvent.GetCustomFieldValueByName('TIPO_AGENDAMENTO');
  if not VarIsNull(AValue) and (AValue = EventoTipoToStr(etProdutividade)) then
  begin
    AProdutividade := EventoProdutividadeStrToEnum(VarToStrDef(AEvent.GetCustomFieldValueByName('OCORRENCIA'), ''));
    AText := 'Evento de Produtividade' + sLineBreak + sLineBreak +
             IfThen(AProdutividade <> epOutro, EventoProdutividadeToDescricao(AProdutividade) + sLineBreak) + AText;
  end;
end;

procedure TFrmAgenda.SchedulerSelectionChanged(Sender: TObject);
// var
// I : Integer;
begin
  Scheduler.EventOperations.ReadOnly := not LBAgenda.Visible;
  AgendaEventoSelecionado.DisableControls;
  try
    AgendaEventoSelecionado.Open;
    AgendaEventoSelecionado.EmptyDataSet;
    if Scheduler.SelectedEventCount = 1 then
    begin
      AgendaEventoSelecionado.Edit;
      AgendaEventoSelecionadoCODIGO.AsVariant                := Scheduler.SelectedEvents[0].ID;
      AgendaEventoSelecionadoPESSOA_CLIENTE_CODIGO.AsVariant := Scheduler.SelectedEvents[0].GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO');
      AgendaEventoSelecionado.Post;
      TFrameHistorico.CarregaFrame(FFrameHistorico, PnlHistorico, UCHist_Selecionado, nil );
//      GrupoRegistroAtividades.Enabled:= Not(AgendaEventoSelecionadoCODIGO.IsNull);
    end;
  finally
    AgendaEventoSelecionado.EnableControls;
  end;

  // for I := 0 to Scheduler.SelectedEventCount - 1 do
  // Scheduler.EventOperations.ReadOnly := Scheduler.EventOperations.ReadOnly or (Scheduler.SelectedEvents[i].State <> 0);
end;

procedure TFrmAgenda.SchedulerViewDayCustomDrawTimeRuler(Sender: TObject; ACanvas: TcxCanvas;
  AViewInfo: TcxSchedulerTimeRulerCellViewInfo; var ADone: Boolean);
begin
//  ADone := (TipoVisualizacaoAgenda = vaEstagio);
end;

procedure TFrmAgenda.SelecionarTodos1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Scheduler.VisibleEventCount - 1 do
    Scheduler.SelectEvent(Scheduler.VisibleEvents[I], [ssShift]);
end;

procedure TFrmAgenda.SetLido(ACodAgenda: string; ALido: Boolean; ACodUsuario: string = '');
var
  QuerX, QuerUsr : TFDQuery;
  ATransa : TFDTransaction;

  procedure InsereLido(ACodUsuarioInt: string);
  begin
    QuerX.SQL.Text := 'update or insert into AGENDA_LIDO (CODAGENDA, CODUSUARIO, DT_LIDO) ' +
                      '               values (:CODAGENDA, :CODUSUARIO, current_timestamp) ' +
                      'matching (CODAGENDA, CODUSUARIO)';
    QuerX.ParamByName('CODAGENDA').AsString  := ACodAgenda;
    QuerX.ParamByName('CODUSUARIO').AsString := ACodUsuarioInt;
    try
      QuerX.ExecSQL;
    except end;
  end;
begin
  //O ACodUsuario indica qual usuário receberá ou removerá o lido, não fazendo busca por usuários

  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  QuerUsr := GeraFDQuery;
  try
    if not ALido then
    begin
      if ACodUsuario = '' then
        ACodUsuario := CodigoUsuario.ToString
      else if ACodUsuario.ToInteger <> CodigoUsuario then
        InsereLido(ACodUsuario); //Se o usuário de destino não for o usuário logado, então o usuário de destino também deve ser avisado

      //Avisa a todos os usuários de que há um registro novo, ignorando o usuário atual (deixa o registro como lido para o usuário)
      QuerUsr.SQL.Text := 'with recursive ARVORE_SETOR ' +
                          'as (select distinct S.CODIGO, S.PESSOA_RESPONSAVEL_CODIGO, S.PARENT ' +
                          '    from SETOR S ' +
                          '    left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
                          '    where ((SF.CODFUNCIONARIO = :CodPessoa) or (S.PESSOA_RESPONSAVEL_CODIGO = :CodPessoa)) ' +

                          '    union all ' +

                          '    select S2.CODIGO, S2.PESSOA_RESPONSAVEL_CODIGO, S2.PARENT ' +
                          '    from SETOR S2 ' +
                          '    join ARVORE_SETOR PA on (PA.PARENT = S2.CODIGO)) ' +

                          'select distinct U.CODIGO ' +
                          'from ARVORE_SETOR AV ' +
                          'inner join USUARIO U on (U.CODFUNCIONARIO = AV.PESSOA_RESPONSAVEL_CODIGO) ' +
                          '      and (U.CODIGO <> :CodUsuario) ' +

                          'union ' +

                          'select ASG.CODUSUARIO ' +
                          'from AGENDA_SEGUIDOR ASG ' +
                          'where (ASG.CODAGENDA = :CodAgenda)';
      QuerUsr.ParamByName('CodPessoa').AsString  := Procura('CODFUNCIONARIO', 'USUARIO', ACodUsuario);
      QuerUsr.ParamByName('CodUsuario').AsString := ACodUsuario; //Ignora o usuário passado por parâmetro
      QuerUsr.ParamByName('CodAgenda').AsString  := ACodAgenda;
      QuerUsr.Open;
      while not QuerUsr.Eof do
      begin
        //Não avisa a eu mesmo sobre a alteração do ticket
        if QuerUsr.Fields[0].AsInteger <> CodigoUsuario then
          InsereLido(QuerUsr.Fields[0].AsString);
        QuerUsr.Next;
      end;

      if ATransa.Active then
        ATransa.Commit;
    end else
    begin
      if ACodUsuario = '' then
        ACodUsuario := CodigoUsuario.ToString;

      //Marca o registro como Lido, excluindo a referência da tabela
      QuerX.SQL.Text := 'delete from AGENDA_LIDO ' +
                        'where (CODAGENDA = :CodAgenda) ' +
                        '      and (CODUSUARIO = :CodUsuario)';
      QuerX.ParamByName('CodAgenda').AsString  := ACodAgenda;
      QuerX.ParamByName('CodUsuario').AsString := ACodUsuario;
      QuerX.ExecSQL;
      ATransa.Commit;
    end;
  finally
    QuerX.Free;
    QuerUsr.Free;
    ATransa.Free;
  end;
end;

procedure TFrmAgenda.SetModo(const Value: TModoAgenda);
begin
//  if (FModo <> Value) or not Self.Visible then
  begin
    FModo := Value;
    LockWindowUpdate(Handle);
    dxLayoutControl1.BeginUpdate;
    try
//      GrupoTarefas.LayoutDirection := ldVertical;
//      GrupoModoAgenda.Visible      := False;
      case FModo of
        maAgenda:
          begin
            Scheduler.OptionsView.ViewPosition := vpLeft;
            Scheduler.DateNavigator.Visible    := True;
            Scheduler.ControlBox.Visible       := True;      // Aqui desaparece
            Scheduler.ViewDay.Active           := True;
//            GrupoModoAgenda.Visible            := True;
//            cxGridLevel1.GridView              := cxGridTarefasTableView1;
            LayoutItemLbTipoViewGantt.Visible  := False;
            LayoutItemTbZoom.Visible           := False;
          end;
        maPCP:
          begin
            Scheduler.OptionsView.ViewPosition := vpRight;
            Scheduler.DateNavigator.Visible    := False;
            Scheduler.ControlBox.Visible       := False;
            Scheduler.ViewGantt.Active         := True;
//            cxGridLevel1.GridView              := cxGridTarefasTableView2;
//            cxSchedulerGridConnection1.Active  := True;
            LayoutItemLbTipoViewGantt.Visible  := True;
            LayoutItemTbZoom.Visible           := True;
//            LayoutItemSelecaoAgenda.Control    := nil;
            with Scheduler do
            begin
              with OptionsView do
              begin
                GroupingKind := gkByDate;
                ResourceHeaders.ImagePosition := ipTop;
                ResourceHeaders.MultilineCaptions := True;
                ResourceHeaders.RotateCaptions := True;
              end;

            end;
          end;
      end;
    finally
      dxLayoutControl1.EndUpdate;
      LockWindowUpdate(0);

//      ShowMessage(Scheduler.ViewGantt.TreeBrowser.InnerControl.ClassName);
      TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).PopupMenu := MenuTreeViewBrower;
      TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).OnDblClick := TreeBrowserOnDblClick;
      TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).Columns[0].Options.Editing := False;
      TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).Columns[7].Options.Editing := False;
      TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).Columns[8].Options.Editing := False;
//      if TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).PopupMenu <> nil then
//        ShowMessage(TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl).PopupMenu.Name);
    end;
  end;
end;

procedure TFrmAgenda.SetTipoViewGantt(ATipoView: TTipoViewGantt; ACodEvento: string);
begin
  FTipoViewGantt := ATipoView;
  FCodAgendaViewGanttProduto := ACodEvento;
  LbTipoViewGantt.Caption := IfThen(ATipoView = vgPessoa, 'Pessoa', 'Produto ' + ACodEvento);
  Agenda.Close;
  Agenda.Open;
end;

procedure TFrmAgenda.SetTipoVisualizacaoAgenda(const Value: TTipoVisualizacaoAgenda);
var
  AOldActive: Boolean;
begin
  AOldActive := Agenda_Usuario.Active;
  try
    Agenda_Usuario.Close;
//    Agenda.Close;
    SchedulerDBStorage.BeginUpdate;
    try
      case Value of
         vaTitulo: SchedulerDBStorage.FieldNames.ResourceID := 'CODAGENDA_TITULO';
        vaUsuario: SchedulerDBStorage.FieldNames.ResourceID := 'CODUSUARIO_RESPONSAVEL';
        vaEstagio: SchedulerDBStorage.FieldNames.ResourceID := 'CODSETOR';
      end;
      if Value = vaEstagio then
      begin
        Scheduler.OptionsView.ShowNavigationButtons := False;
        Scheduler.DateNavigator.Visible := False;
        Scheduler.GoToDate(0);
        GrupoDados.Visible := False;
        LayoutItemFiltrosTarefas.Visible := False;
        Scheduler.ControlBox.Visible := False;
        Scheduler.ViewDay.AlwaysShowEventTime := False;
        Scheduler.ViewDay.DayHeaderArea := False;
      end else
      begin
        Scheduler.OptionsView.ShowNavigationButtons := True;
        Scheduler.DateNavigator.Visible := True;
        Scheduler.GoToDate(Now);
        GrupoDados.Visible := True;
        LayoutItemFiltrosTarefas.Visible := True;
        Scheduler.ControlBox.Visible := True;
        Scheduler.ViewDay.AlwaysShowEventTime := True;
        Scheduler.ViewDay.DayHeaderArea := True;
      end;
    finally
      SchedulerDBStorage.EndUpdate;
    end;
    FTipoVisualizacaoAgenda := Value;
  finally
    if AOldActive then
      Agenda_Usuario.Open;
  end;
end;

procedure TFrmAgenda.TreeBrowserOnDblClick(Sender: TObject);
var
  ATreeList : TcxSchedulerTreeListBrowser;
  ANode : TcxTreeListNode;
begin
  ATreeList := TcxSchedulerTreeListBrowser(Scheduler.ViewGantt.TreeBrowser.InnerControl);
  if ATreeList.DataController.TreeList.SelectionCount > 0 then
  begin
    ANode := ATreeList.DataController.TreeList.Selections[0];
    Scheduler.EditEventUsingDialog(TcxSchedulerControlEvent(Integer(ANode.Values[9])));
//    AbreEvento(ANode.Values[7]);
//    ATreeList.DataController.TreeList.Select(ANode.getNextSibling);
//    ANode.
//    ATreeList.Columns[0].d
//    ANode.Values[1] := 100;
//    ShowMessage(TObject(ANode.Data).ClassName);
//    ANode.re
  end;
end;

procedure TFrmAgenda.TreeListFiltrosClick(Sender: TObject);
var
  AFiltroMS: TMemoryStream;
  AFilter: TcxDBDataFilterCriteria;
  AFiltroTipo: TFiltroTipo;
  ACodResource: Integer; // Pode ser o CodUsuario ou CodTitulo
  AItemList: TcxFilterCriteriaItemList;
begin
  if (TreeListFiltros.FocusedNode <> nil) and
    (SchedulerDBStorage.ResourceCount > 0) then
  begin
    AFiltroTipo := TFiltroTipo(CDSAgendaFiltroTIPO.AsInteger);
    AFilter := cxGridTarefasTableView1.DataController.Filter;
    ACodResource := SchedulerDBStorage.ResourceIDs[0];
    cxGridTarefasTableView1.DataController.BeginUpdate;
    try
      AFilter.Root.Clear;
      case AFiltroTipo of
        tfSetor:
          AFilter.Root.AddItem(cxGridTarefasTableView1CODSETOR, foEqual,
            CDSAgendaFiltroCodItemFixo.AsInteger,
            CDSAgendaFiltroCodItemFixo.AsString);
        tfUsuario:
          AFilter.Root.AddItem(cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL,
            foEqual, CDSAgendaFiltroCodItemFixo.AsInteger,
            CDSAgendaFiltroCodItemFixo.AsString);
        tfPersonalizado:
          begin
            AFiltroMS := TMemoryStream.Create;
            try
              CDSAgendaFiltroFILTRO.SaveToStream(AFiltroMS);
              AFiltroMS.Position := 0;
              if AFiltroMS.Size > 0 then
                AFilter.LoadFromStream(AFiltroMS)
              else
                AFilter.Active := False;
            finally
              AFiltroMS.Free;
            end;
          end;
        tfPrioridade:
          begin
            AItemList := AFilter.Root.AddItemList(fboAnd);
            AItemList.AddItem(cxGridTarefasTableView1PRIORIDADE, foEqual,
              CDSAgendaFiltroCodItemFixo.AsInteger,
              PrioridadeStrToDescricao(CDSAgendaFiltroCodItemFixo.AsInteger));
            AItemList.AddItem(cxGridTarefasTableView1TAREFA_STATUS, foNotEqual,
              Integer(tsDeferred), TarefaStatusToStr(tsDeferred));
          end;
        tfStatusTarefa:
          begin
            AItemList := AFilter.Root.AddItemList(fboAnd);
            AItemList.AddItem(cxGridTarefasTableView1TAREFA_STATUS, foEqual,
              CDSAgendaFiltroCodItemFixo.AsInteger,
              TarefaStatusToStr(TcxSchedulerEventTaskStatus
              (CDSAgendaFiltroCodItemFixo.AsInteger)));
          end;
        tfMinhaTarefa:
          AFilter.Root.AddItem(cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL,
            foEqual, ACodResource, IntToStr(ACodResource));
        tfAgendaTitulo:
          AFilter.Root.AddItem(cxGridTarefasTableView1CODAGENDA_TITULO, foEqual,
            CDSAgendaFiltroCodItemFixo.AsInteger,
            CDSAgendaFiltroCodItemFixo.AsString);
        // tfFuncionario : AFilter.Root.AddItem(cxGridTarefasTableView1CODFUNCIONARIO, foEqual, CDSAgendaFiltroCodItemFixo.AsString, CDSAgendaFiltro.FieldByName('DESCRICAO').AsString);
      end;
      if AFiltroTipo in [tfPrioridade, tfStatusTarefa] then
      begin
        case TipoVisualizacaoAgenda of
           vaTitulo: AItemList.AddItem(cxGridTarefasTableView1CODAGENDA_TITULO, foEqual, ACodResource, IntToStr(ACodResource));
          vaUsuario: AItemList.AddItem(cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL, foEqual, ACodResource, IntToStr(ACodResource));
        end;
      end;
    finally
      cxGridTarefasTableView1.DataController.EndUpdate;
    end;
    AFilter.Active := (AFiltroTipo <> tfNone);
  end;
end;

procedure TFrmAgenda.TreeListUsuariosClick(Sender: TObject);
var
  QuerX: TIBQuery;
  ACodigos: String;
  APointCod: Integer;
  AFiltroTipo: TFiltroTipo;
begin
  if TreeListUsuarios.FocusedNode <> nil then
  begin
    FPreFiltro.Clear;
    AFiltroTipo := TFiltroTipo(CDSAgendaUsuarioTIPO.AsInteger);
    case AFiltroTipo of
      tfUsuario, tfSetorUsuario:
        begin
          Agenda_Usuario.DisableControls;
          Agenda.Close;
          Scheduler.BeginUpdate;
          try
            Scheduler.OptionsView.ResourcesPerPage := 1;
            Agenda_Usuario.Locate('CODIGO', CDSAgendaUsuarioCodItemFixo.AsInteger, []);
            SchedulerDBStorage.Resources.Items.Clear;
            with SchedulerDBStorage.Resources.Items.Add do
            begin
              Name := Agenda_UsuarioDESCRICAO.AsString;
              ResourceID := Agenda_UsuarioCODIGO.AsInteger;
            end;
//            TFotos.CarregaFotoPessoa(ImgFuncionario, Agenda_UsuarioCODFUNCIONARIO.AsString);
          finally
            Agenda_Usuario.EnableControls;
            Agenda.Open;
            Scheduler.EndUpdate;
          end;
        end;
      tfSetor:
        begin
          Agenda.Close;
          Scheduler.BeginUpdate;
          QuerX := GeraQuery;
          try
            if TipoVisualizacaoAgenda = vaEstagio then
            begin
              QuerX.SQL.Text := 'select S.CODIGO, S.DESCRICAO ' +
                                'from SETOR S ' +
                                'where (S.CODIGO = :Codigo) ' +

                                'union ' +

                                'select S.CODIGO, S.DESCRICAO ' +
                                'from SETOR S ' +
                                'where (S.PARENT = :CodSetor) ' +
                                '      and (S.TIPO = ''ESTAGIO'') ';
              QuerX.Params[0].AsInteger := CDSAgendaUsuarioCodItemFixo.AsInteger;
              QuerX.Params[1].AsInteger := CDSAgendaUsuarioCodItemFixo.AsInteger;
              QuerX.Open;
              QuerX.Last;
              QuerX.First;
              AddStr(ACodigos, '999999');
              Scheduler.OptionsView.ResourcesPerPage := QuerX.RecordCount;
              SchedulerDBStorage.Resources.Items.Clear;
              while not QuerX.Eof do
              begin
                with SchedulerDBStorage.Resources.Items.Add do
                begin
                  Name := QuerX.FieldByName('DESCRICAO').AsString;
                  ResourceID := QuerX.FieldByName('CODIGO').AsInteger;
                end;
                AddStr(ACodigos, QuerX.Fields[0].AsString);
                QuerX.Next;
              end;
              if ACodigos <> '' then
                FPreFiltro.Add('and (CODSETOR in (' + ACodigos + '))');
            end else
            begin
              QuerX.SQL.Text := 'select distinct U.CODIGO, U.USUARIO ' +
                                'from SETOR S ' +
                                'left join SETOR_FUNCIONARIO SF on (S.CODIGO = SF.CODSETOR) ' +
                                'inner join USUARIO U on (U.CODFUNCIONARIO = SF.CODFUNCIONARIO) or (U.CODFUNCIONARIO = S.PESSOA_RESPONSAVEL_CODIGO) '
                                + 'where (SF.CODSETOR = :CodSetor) ' +
                                '      and (U.INATIVO = 0)';
              QuerX.Params[0].AsInteger := CDSAgendaUsuarioCodItemFixo.AsInteger;
              QuerX.Open;
              AddStr(ACodigos, 'null');
              Scheduler.OptionsView.ResourcesPerPage := TreeListUsuarios.FocusedNode.Count;
              SchedulerDBStorage.Resources.Items.Clear;
              while not QuerX.Eof do
              begin
                with SchedulerDBStorage.Resources.Items.Add do
                begin
                  Name := QuerX.FieldByName('USUARIO').AsString;
                  ResourceID := QuerX.FieldByName('CODIGO').AsInteger;
                end;
                AddStr(ACodigos, QuerX.Fields[0].AsString);
                QuerX.Next;
              end;
              FPreFiltro.Add('and (CODUSUARIO_RESPONSAVEL in (' + ACodigos + '))');
              if Modo = maAgenda then
                FPreFiltro.Add('and (CODSETOR = ' + CDSAgendaUsuarioCodItemFixo.AsString + ')');
            end;
          finally
            QuerX.Free;
            Agenda.Open;
            Scheduler.EndUpdate;
          end;
        end;
      tfAgendaTitulo:
        begin
          Agenda_Usuario.DisableControls;
          Agenda.Close;
          Scheduler.BeginUpdate;
          try
            Scheduler.OptionsView.ResourcesPerPage := 1;
            Agenda_Usuario.Locate('CODIGO', CDSAgendaUsuario.FieldByName('CodItemFixo').AsInteger, []);
            SchedulerDBStorage.Resources.Items.Clear;
            with SchedulerDBStorage.Resources.Items.Add do
            begin
              Name := Agenda_Usuario.FieldByName('DESCRICAO').AsString;
              ResourceID := Agenda_Usuario.FieldByName('CODIGO').AsInteger;
            end;
          finally
            Agenda_Usuario.EnableControls;
            Agenda.Open;
            Scheduler.EndUpdate;
          end;
        end;
    end;
    AjustaResources;
    TreeListFiltros.BeginUpdate;
    CDSAgendaFiltro.DisableControls;
    try
      APointCod := CDSAgendaFiltro.FieldByName('CODIGO').AsInteger;
      Agenda_Filtro.Close;
      Agenda_Filtro.Open;
      CDSAgendaFiltro.Locate('CODIGO', APointCod, []);
    finally
      TreeListFiltros.EndUpdate;
      CDSAgendaFiltro.EnableControls;
    end;
    if Sender <> nil then
    // Usado para determinar se a procedure foi chamada diretamente pelo código ou pelo componente
      TreeListFiltros.Select(TreeListFiltros.FindNodeByKeyValue(6001))
    else
      TreeListFiltros.Select(TreeListFiltros.FindNodeByKeyValue(APointCod));
    TreeListFiltrosClick(nil);
    if AFiltroTipo in [tfSetor, tfSetorUsuario] then
    begin
      if cxGridTarefasTableView1.DataController.Filter.FindItemByItemLink(cxGridTarefasTableView1CODSETOR) <> nil then
        cxGridTarefasTableView1.DataController.Filter.RemoveItemByItemLink(cxGridTarefasTableView1CODSETOR);
      case AFiltroTipo of
        tfSetor: cxGridTarefasTableView1.DataController.Filter.Root.AddItem(cxGridTarefasTableView1CODSETOR, foEqual,
            CDSAgendaUsuario.FieldByName('CodItemFixo').AsInteger, CDSAgendaUsuario.FieldByName('CodItemFixo').AsString);
        tfSetorUsuario: cxGridTarefasTableView1.DataController.Filter.Root.AddItem(cxGridTarefasTableView1CODSETOR, foEqual,
            CDSAgendaUsuario.FieldByName('PARENT').AsInteger - 10000, IntToStr(CDSAgendaUsuario.FieldByName('PARENT').AsInteger - 10000));
      end;
    end;
  end;
end;

procedure TFrmAgenda.TreeListUsuariosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  // Se cair aqui salva na tabela do setor
end;

procedure TFrmAgenda.VisualizarPorUsuarioClick(Sender: TObject);
begin
  if Sender = VisualizarPorUsuario then
    TipoVisualizacaoAgenda := vaUsuario
  else if Sender = VisualizarPorTitulo then
    TipoVisualizacaoAgenda := vaTitulo
  else
    TipoVisualizacaoAgenda := vaEstagio;
end;

procedure TFrmAgenda.sbTarefasClick(Sender: TObject);
begin
  Agendamento1Click(nil);
end;

procedure TFrmAgenda.sbCronogramaClick(Sender: TObject);
begin
  Cronogramametas1Click(self);
end;

procedure TFrmAgenda.V1Click(Sender: TObject);
begin
  TConfig.SaveBoolean('AGENDA_PREENCHER_SETOR', not TConfig.ReadBoolean('AGENDA_PREENCHER_SETOR'));
end;

function TFrmAgenda.VerificaBloqueio: Boolean;
begin
  // Verifica se a data está em um período que foi bloqueado para agendamento
  { CriaSql;
    Quer.SQL.Text := 'SELECT * FROM AGENDA_BLOQUEIO WHERE (DATABLOQUEIO = '''+FormatDateTime('MM/DD/YYYY',Scheduler.SelStart)+''')AND (STATUS = ''ATIVO'')';
    Quer.Open;
    if Quer.RecordCount > 0 then
    begin
    Bloqueado:=True;
    Scheduler.EventOperations.ReadOnly := True;
    SchedulerDBStorage.Resources.Items[0].Color:=clRed;
    Result :=True;
    end else
    begin
    Try
    Bloqueado:=False;
    SchedulerDBStorage.Resources.Items[0].Color:=Agenda_Titulo.FieldByName('COLOR').AsInteger;
    //    Scheduler.EventOperations.ReadOnly := not LBAgenda.Enabled;
    Result :=False;
    Except
    Agenda_Titulo.Open;
    End;
    end;
    Quer.Free; }
end;

procedure TFrmAgenda.Visualizartempogasto1Click(Sender: TObject);
var
  QuerX: TIBQuery;
  HitTest: TcxSchedulerViewHitTest;
  ADiffHoras: Integer;
begin
  ADiffHoras := 0;
  QuerX := GeraQuery;
  try
    HitTest := Scheduler.CurrentView.HitTest;
    if not Assigned(HitTest.Event) then
      Exit;
    QuerX.SQL.Text := 'select DT_INICIO, DT_FIM from AGENDA where (STATUS = 3) and (PROTOCOLO = :Prot)';
    QuerX.Params[0].AsString := Procura('PROTOCOLO', 'AGENDA', HitTest.Event.ID);
    QuerX.Open;
    while not QuerX.Eof do
    begin
      if (QuerX.FieldByName('DT_FIM').AsFloat > 0) and (QuerX.FieldByName('DT_INICIO').AsFloat > 0) then
        ADiffHoras := ADiffHoras + SecondsBetween(QuerX.FieldByName('DT_FIM').AsDateTime, QuerX.FieldByName('DT_INICIO').AsDateTime);
      QuerX.Next;
    end;
    ShowMessageWR('Total de tempo gasto neste agendamento: ' + SegundosToHoras(ADiffHoras));
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgenda.WMSysCommand(var Message: TMessage);
begin
  if Message.WParam = SC_CLOSE then
  begin
    FrmAgenda := nil;
    Destroy;
  end else
    inherited;
end;

{ TEventoDataHistorico }

procedure TEventoDataHistorico.Clear;
begin
  self.CodEvento     := '';
  self.DataInicial   := 0;
  self.DataFinal     := 0;
  self.EventoPostado := False;
end;

{ TcxSchedulerIDFieldDataProvider }

function TcxSchedulerIDFieldDataProvider.GetCaption: string;
begin
  Result := 'Código';
end;

function TcxSchedulerIDFieldDataProvider.GetValue(const AEvent: TcxSchedulerEvent): Variant;
begin
  Result := AEvent.ID;
end;

procedure TcxSchedulerIDFieldDataProvider.SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant);
begin
  AEvent.ID := AValue;
end;

{ TcxSchedulerTempoFieldDataProvider }

function TcxSchedulerTempoFieldDataProvider.GetCaption: string;
begin
  Result := 'Tempo';
end;

function TcxSchedulerTempoFieldDataProvider.GetValue(const AEvent: TcxSchedulerEvent): Variant;
begin
  Result := MinutosToHoras(MinutesBetween(AEvent.Start, AEvent.Finish));
end;

procedure TcxSchedulerTempoFieldDataProvider.SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant);
begin
//  inherited;
  //Não faz nada... ReadOnly
end;

{ TcxSchedulerEventFieldDataProvider }

function TcxSchedulerEventFieldDataProvider.GetCaption: string;
begin

end;

function TcxSchedulerEventFieldDataProvider.GetValue(const AEvent: TcxSchedulerEvent): Variant;
begin
  Result := Integer(AEvent);
end;

procedure TcxSchedulerEventFieldDataProvider.SetValue(const AEvent: TcxSchedulerEvent; const AValue: Variant);
begin
//  inherited;

end;

initialization
  RegisterClass(TFrmAgenda);

end.
