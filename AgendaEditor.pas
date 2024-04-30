unit AgendaEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxSchedulerEventEditor, Menus,
  cxContainer, cxEdit, cxCheckBox, cxTimeEdit, cxCalendar, cxImageComboBox, cxTextEdit, cxLabel, cxButtons, ExtCtrls,
  dxLayoutContainer, dxLayoutControl, cxButtonEdit, cxCurrencyEdit, DB, cxGridLevel, cxGridDBTableView, cxGrid,
  IBCustomDataSet, IBQuery, IBDatabase, UCBase, IBStoredProc, cxPropertiesStore, ACBrCEP, StdCtrls, cxDBLookupComboBox,
  ComCtrls, ImgList, OleCtrls, cxMemo, cxDropDownEdit, uControleWR, dxLayoutLookAndFeels, Htmlview,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxControls,
  dxCore, cxDateUtils, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, dxLayoutControlAdapters, dxLayoutcxEditAdapters, ACBrBase, ACBrSocket, cxLookupEdit, cxDBLookupEdit,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView, cxSpinEdit, cxCheckComboBox, cxMaskEdit,
  cxGroupBox, dxBevel, UnitFuncoes, AgendaEditorOutros,
  Agenda_PostAgenda, AgendaEventoAnexos, frFrameAnexos, System.ImageList, Agenda_Financeiro,
  cxDataControllerConditionalFormattingRulesManagerDialog, wrConversao, Classes.WR, dxDateRanges, wrFuncoes_Office,
  frFrameHistorico, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, frFrameAnexosAgenda, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmAgendaEditor = class(TcxSchedulerEventEditorForm)
    GrupoProcedimento: TdxLayoutGroup;
    GrupoEquipamento: TdxLayoutGroup;
    GrupoResponsavel: TdxLayoutGroup;
    liProtocolo: TdxLayoutItem;
    EdtProtocolo: TcxTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    EdtPedido: TcxTextEdit;
    GrupoCabecalho: TdxLayoutGroup;
    GrupoFaturamento: TdxLayoutGroup;
    Produto: TIBQuery;
    SPCad: TIBStoredProc;
    DSProduto: TDataSource;
    DSEquipamento: TDataSource;
    Equipamento: TIBQuery;
    UCControls1: TUCControls;
    Financeiro: TIBDataSet;
    Transa: TIBTransaction;
    PnlConsultaProduto: TPanel;
    PnlConsultaEquipamento: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    BtnProdutoIrConsulta: TcxButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    BtnProdutoIrCadastro: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    BtnProdutoSelecionar: TcxButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    GridProdProced: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Item5: TdxLayoutItem;
    BtnProdutoFechar: TcxButton;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    BtnEquipFechar: TcxButton;
    dxLayoutControl3Item2: TdxLayoutItem;
    BtnEquipIrConsulta: TcxButton;
    dxLayoutControl3Item3: TdxLayoutItem;
    BtnEquipIrCadastro: TcxButton;
    dxLayoutControl3Item4: TdxLayoutItem;
    BtnEquipSelecionar: TcxButton;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl3Group1: TdxLayoutGroup;
    BtnConsultar: TcxButton;
    GrupoPedidos: TdxLayoutGroup;
    GrupoInformacaes: TdxLayoutGroup;
    GrupoCliente: TdxLayoutGroup;
    LayoutEdtSolicitante: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    EdtSolicitante: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Pessoas1: TMenuItem;
    Pedido1: TMenuItem;
    Faturar1: TMenuItem;
    N1: TMenuItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdtCodResponsavel: TcxButtonEdit;
    GrupoFuncionario: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    EdtResponsavel: TcxTextEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    GrupoAgendaSetor: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    EdtSetorÎSetor: TcxButtonEdit;
    CbPrioridade: TcxImageComboBox;
    LayoutItemCbPrioridade: TdxLayoutItem;
    Repetir1: TMenuItem;
    ProdutoCODIGO: TIBStringField;
    ProdutoDESCRICAO: TIBStringField;
    ProdutoVALOR: TFloatField;
    LblSetorÎSetorÎDESCRICAO: TcxLabel;
    dxLayoutControl1Item14: TdxLayoutItem;
    Excluir1: TMenuItem;
    Histrico1: TMenuItem;
    Imprimir1: TMenuItem;
    N2: TMenuItem;
    BtnMenu: TcxButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    N3: TMenuItem;
    Cancelar1: TMenuItem;
    Confirmar1: TMenuItem;
    MenuGrupos: TPopupMenu;
    Procedimento1: TMenuItem;
    ConclusaoTarefa1: TMenuItem;
    Horarios1: TMenuItem;
    Equipamentos1: TMenuItem;
    TimerBotoes: TTimer;
    btnFechar: TcxButton;
    Responsavel1: TMenuItem;
    Faturamento2: TMenuItem;
    PlaceHolder1: TMenuItem;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView2VALOR: TcxGridDBColumn;
    InformaesdeCriaoeAlterao1: TMenuItem;
    GrupoDadosCliente: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    EdtEndereco: TcxTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    EdtNumero: TcxTextEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item20: TdxLayoutItem;
    EdtEmail: TcxTextEdit;
    Atribuidoa1: TMenuItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    EdtCEP: TcxTextEdit;
    dxLayoutControl1Group3: TdxLayoutGroup;
    ACBrCEP1: TACBrCEP;
    EdtCidadeÎCidades: TcxButtonEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    LblCidadeÎCidadesÎDESCRICAO: TcxLabel;
    dxLayoutControl1Item23: TdxLayoutItem;
    CadPessoas: TIBDataSet;
    SPClientes: TIBStoredProc;
    dxLayoutControl1Item19: TdxLayoutItem;
    EdtCondicaoAgePagtoÎCondicaoPagto: TcxButtonEdit;
    GrupoCondicaoPagto: TdxLayoutGroup;
    dxLayoutControl1Item24: TdxLayoutItem;
    LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO: TcxLabel;
    CondiodePagamento1: TMenuItem;
    BtnSalvarAlteracoesCliente: TcxButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item26: TdxLayoutItem;
    EdtTelefone: TcxTextEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    Situacao: TIBQuery;
    DSSituacao: TDataSource;
    SituacaoCODIGO: TIntegerField;
    SituacaoDESCRICAO: TIBStringField;
    SituacaoCOR: TIntegerField;
    CbSituacao: TcxLookupComboBox;
    dxLayoutControl1Item27: TdxLayoutItem;
    PopupMenuOK: TPopupMenu;
    EnviarEmail1: TMenuItem;
    ltimaMensagem1: TMenuItem;
    HistricoCompletodeMensagens1: TMenuItem;
    GerarContratoProposta1: TMenuItem;
    OpenDialog1: TOpenDialog;
    dxLayoutControl1Item29: TdxLayoutItem;
    EdtMensalidade: TcxCurrencyEdit;
    LbSituacao: TcxLabel;
    dxLayoutControl1Item28: TdxLayoutItem;
    Exibirhistrico1: TMenuItem;
    LayoutItemCodFinanceiro: TdxLayoutItem;
    EdtCodFinanceiro: TcxTextEdit;
    Paciente1: TMenuItem;
    LbUCResponsavel: TLabel;
    AlterarCliente1: TMenuItem;
    CBoxVisualiza: TcxComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    NovoEmail1: TMenuItem;
    Impressao: TMenuItem;
    CadPessoasCODIGO: TIBStringField;
    CadPessoasDATACADASTRO: TDateTimeField;
    CadPessoasCRT: TIBStringField;
    CadPessoasTIPO: TIBStringField;
    CadPessoasFANTASIA: TIBStringField;
    CadPessoasRAZAOSOCIAL: TIBStringField;
    CadPessoasENDERECO: TIBStringField;
    CadPessoasFONE1: TIBStringField;
    CadPessoasCEP: TIBStringField;
    CadPessoasCODCIDADE: TIntegerField;
    CadPessoasNUMERO: TIBStringField;
    CadPessoasEMAIL: TIBStringField;
    CadPessoasCONTATO: TIBStringField;
    CadPessoasATIVO: TIBStringField;
    dxLayoutControl1Item10: TdxLayoutItem;
    EdtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    EdtFuncionarioÎPessoas: TcxButtonEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    EdtEquipamentoÎEquipamento: TcxButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    EdtEquipamentoÎEquipamentoÎDESCRICAO: TcxTextEdit;
    dxLayoutControl1Item36: TdxLayoutItem;
    EdtDataFatura: TcxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    EdtProcedimentoÎProduto: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdtProcedimentoÎProdutoÎDESCRICAO: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    EdtProcedimentoÎProdutoÎVALOR: TcxCurrencyEdit;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    PnlOutros: TPanel;
    LayoutItemOutros: TdxLayoutItem;
    mnuVisualizarFinanceiroPessoa: TMenuItem;
    BtnPostAgenda: TcxButton;
    dxLayoutControl1Item43: TdxLayoutItem;
    dxLayoutControl1Item44: TdxLayoutItem;
    BtnFinanceiro: TcxButton;
    GrupoMensagem: TdxLayoutGroup;
    LayoutItemMensagem: TdxLayoutItem;
    dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutControl1SeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutControl1Item45: TdxLayoutItem;
    BtnMostraOcultaTodos: TcxButton;
    dxLayoutControl1Item46: TdxLayoutItem;
    BtnSetor: TcxButton;
    dxLayoutControl1Item47: TdxLayoutItem;
    BtnDadosDoCliente: TcxButton;
    dxLayoutControl1Item48: TdxLayoutItem;
    BtnInformacoesDeCriacaoAlteracao: TcxButton;
    dxLayoutControl1Item49: TdxLayoutItem;
    BtnCondicaoDePagamento: TcxButton;
    dxLayoutControl1Item50: TdxLayoutItem;
    BtnLembrete: TcxButton;
    dxLayoutControl1Item51: TdxLayoutItem;
    BtnFaturamento: TcxButton;
    dxLayoutControl1Item52: TdxLayoutItem;
    BtnAtribuido: TcxButton;
    dxLayoutControl1Item53: TdxLayoutItem;
    BtnResponsavel: TcxButton;
    dxLayoutControl1Item54: TdxLayoutItem;
    BtnEquipamentos: TcxButton;
    dxLayoutControl1Item55: TdxLayoutItem;
    BtnDatasDoAgendamento: TcxButton;
    dxLayoutControl1Item56: TdxLayoutItem;
    BtnConclusaoDaTarefa: TcxButton;
    dxLayoutControl1Item57: TdxLayoutItem;
    BtnProcedimento: TcxButton;
    dxLayoutControl1Item58: TdxLayoutItem;
    BtnContato: TcxButton;
    dxLayoutControl1Item59: TdxLayoutItem;
    BtnAnexosResponsavel: TcxButton;
    dxLayoutControl1Group8: TdxLayoutGroup;
    LblCidadeÎCidadesÎUF: TcxLabel;
    dxLayoutControl1Item60: TdxLayoutItem;
    F1: TMenuItem;
    PnlSeguidores: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl4Item2: TdxLayoutItem;
    LblSegUsuario: TcxLabel;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Item5: TdxLayoutItem;
    BtnAdicionarProduto: TcxButton;
    dxLayoutControl4Item6: TdxLayoutItem;
    BtnRemoverProduto: TcxButton;
    dxLayoutControl4SeparatorItem1: TdxLayoutSeparatorItem;
    Agenda_Seguidor: TIBDataSet;
    DSAgenda_Seguidor: TDataSource;
    Agenda_SeguidorCODAGENDA: TIBStringField;
    Agenda_SeguidorCODUSUARIO: TIntegerField;
    Agenda_SeguidorUSUARIO: TIBStringField;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    S1: TMenuItem;
    EdtSegCodUsuario: TcxButtonEdit;
    dxLayoutControl4Item7: TdxLayoutItem;
    GrupoFrameAnexos: TdxLayoutGroup;
    PnlFrameAnexos: TPanel;
    LayoutItemFrameAnexos: TdxLayoutItem;
    BtnAnexos: TcxButton;
    dxLayoutControl1Item61: TdxLayoutItem;
    liFinanceiro: TdxLayoutItem;
    PnlFinanceiro: TPanel;
    liPnlDadosMod: TdxLayoutItem;
    PnlDadosMod: TPanel;
    LbCriadoPor: TcxLabel;
    LbModificadoPor: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    EdtResponsavelÎPessoas: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    PnlPostAgenda: TPanel;
    dxLayoutItem12: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutSeparatorItem7: TdxLayoutSeparatorItem;
    LiPnlFrameHistorico: TdxLayoutItem;
    PnlFrameHistorico: TPanel;
    AgendaAnexo: TFDMemTable;
    AgendaAnexoCODIGO: TStringField;
    AgendaAnexoPESSOA_CLIENTE_CODIGO: TStringField;
    DSAgendaAnexo: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure EdtProtocoloKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtProcedimentoÎProdutoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PnlConsultaEquipamentoExit(Sender: TObject);
    procedure PnlConsultaProdutoExit(Sender: TObject);
    procedure BtnProdutoSelecionarClick(Sender: TObject);
    procedure BtnProdutoIrConsultaClick(Sender: TObject);
    procedure EdtCodClientePropertiesChange(Sender: TObject);
    procedure BtnProdutoFecharClick(Sender: TObject);
    procedure BtnEquipSelecionarClick(Sender: TObject);
    procedure BtnEquipFecharClick(Sender: TObject);
    procedure EdtCodEquipamentoPropertiesChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Pessoas1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Faturar1Click(Sender: TObject);
    procedure EdtCodFuncionarioPropertiesChange(Sender: TObject);
    procedure EdtCodResponsavelPropertiesChange(Sender: TObject);
    procedure EdtCodResponsavelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdtCodResponsavelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtCodAgendaSetorPropertiesChange(Sender: TObject);
    procedure EdtCodProdProcedPropertiesChange(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure TimerBotoesTimer(Sender: TObject);
    procedure EdtProdProcedPropertiesChange(Sender: TObject);
    procedure EdtFuncionarioPropertiesChange(Sender: TObject);
    procedure CbPrioridadePropertiesChange(Sender: TObject);
    procedure EdtEquipamentoPropertiesChange(Sender: TObject);
    procedure EdtResponsavelPropertiesChange(Sender: TObject);
    procedure EdtValorProdProcedPropertiesChange(Sender: TObject);
    procedure EdtSetorÎSetorKeyPress(Sender: TObject; var Key: Char);
    procedure Procedimento1Click(Sender: TObject);
    procedure ConclusaoTarefa1Click(Sender: TObject);
    procedure Horarios1Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure Responsavel1Click(Sender: TObject);
    procedure Faturamento2Click(Sender: TObject);
    procedure GrupoInformacaesButton0Click(Sender: TObject);
    procedure MenuGruposPopup(Sender: TObject);
    procedure GrupoInformacaesButton1Click(Sender: TObject);
    procedure PlaceHolder1Click(Sender: TObject);
    procedure InformaesdeCriaoeAlterao1Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure seTaskCompletePropertiesChange(Sender: TObject);
    procedure cbxTaskStatusPropertiesChange(Sender: TObject);
    procedure Atribuidoa1Click(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure EdtCodCidadePropertiesChange(Sender: TObject);
    procedure EdtCEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtCEPPropertiesChange(Sender: TObject);
    procedure EdtCodCondicaoPagtoPropertiesChange(Sender: TObject);
    procedure CondiodePagamento1Click(Sender: TObject);
    procedure BtnSalvarAlteracoesClienteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CbSituacaoPropertiesChange(Sender: TObject);
    procedure EnviarEmail1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure EdtCondicaoAgePagtoÎCondicaoPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtEquipamentoÎEquipamentoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodResponsavelKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCidadeÎCidadesKeyPress(Sender: TObject; var Key: Char);
    procedure GerarContratoProposta1Click(Sender: TObject);
    procedure EdtMensalidadePropertiesChange(Sender: TObject);
    procedure seTaskCompleteExit(Sender: TObject);
    procedure CadPessoasAfterInsert(DataSet: TDataSet);
    procedure Exibirhistrico1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Paciente1Click(Sender: TObject);
    procedure EdtResponsavelÎPessoasKeyPress(Sender: TObject; var Key: Char);
    procedure EdtResponsavelÎPessoasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AlterarCliente1Click(Sender: TObject);
    procedure CBoxVisualizaPropertiesChange(Sender: TObject);
    procedure NovoEmail1Click(Sender: TObject);
    procedure dxLayoutControl1Group13Expanding(Sender: TObject; var Allow: Boolean);
    procedure dxLayoutControl1Group13Collapsing(Sender: TObject; var Allow: Boolean);
    procedure EdtSetorÎSetorExit(Sender: TObject);
    procedure mnuVisualizarFinanceiroPessoaClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure teSubjectKeyPress(Sender: TObject; var Key: Char);
    procedure BotoesOutrosClick(Sender: TObject);
    procedure BtnMostraOcultaTodosClick(Sender: TObject);
    procedure BtnProcedimentoClick(Sender: TObject);
    procedure BtnDadosDoClienteClick(Sender: TObject);
    procedure BtnCondicaoDePagamentoClick(Sender: TObject);
    procedure BtnLembreteClick(Sender: TObject);
    procedure BtnConclusaoDaTarefaClick(Sender: TObject);
    procedure BtnDatasDoAgendamentoClick(Sender: TObject);
    procedure BtnSetorClick(Sender: TObject);
    procedure BtnEquipamentosClick(Sender: TObject);
    procedure BtnResponsavelClick(Sender: TObject);
    procedure BtnAtribuidoClick(Sender: TObject);
    procedure BtnFaturamentoClick(Sender: TObject);
    procedure BtnInformacoesDeCriacaoAlteracaoClick(Sender: TObject);
    procedure BtnContatoClick(Sender: TObject);
    procedure BtnAnexosResponsavelClick(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure BtnAdicionarProdutoClick(Sender: TObject);
    procedure Agenda_SeguidorAfterInsert(DataSet: TDataSet);
    procedure BtnRemoverProdutoClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure Agenda_SeguidorBeforeOpen(DataSet: TDataSet);
    procedure EdtCodUsuarioPropertiesChange(Sender: TObject);
    procedure EdtSegCodUsuarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EdtSegCodUsuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAnexosClick(Sender: TObject);
  private
    { Private declarations }
    FAtivo : String;
    FFlagCodCliente : Boolean;
    FAnexo : String; //Anexo de email
    FModified: Boolean;
    FControleWR : TControleWR;
    FCodigoProvisorio : string;
    FEventoTipo : TEventoTipo;
    FAgendaEditorOutros : TFrmAgendaEditorOutros;
    FFrmAgendaFinanceiro: TFrmAgendaFinanceiro;
    FFrmAgendaPostAgenda: TFrmAgendaPostAgenda;
    FFormAnexos : TFrmAgendaEventoAnexo;
    FFrameAnexos: TFrameAnexos;

    procedure CheckVisible; override;
    procedure CarregaPrioridades;
    procedure AbrePedido(ANaoExibirEFaturar: Boolean = False);
    function VerificaModificado: Boolean;
    procedure VerificaKeyPress(var Key: Char);
    procedure CadastraNovoCliente;
    function GetCodigoEvento: string;
    function GetHelperClass: TcxSchedulerEditorHelperClass; override;
    procedure VerificaPessoa(ACodPessoa: string);
    procedure MostraOculta(ABotao: TcxButton; AComp: TComponent; AVisible: Boolean);
    procedure MostraOcultaContato(ABotao: TcxButton; AComp: TComponent; AVisible: Boolean);

    procedure SetCampoPessoa(AComponente: TcxButtonEdit; ACampo: string);
  public
    { Public declarations }
    FFrameHistoricoEditor : TFrameHistorico;
    FFrameAnexosAgenda: TFrameAnexosAgenda;
    property Modificado : Boolean read FModified write FModified;
    property CodigoEvento: string read GetCodigoEvento;

    procedure LoadEventValuesIntoControls; override;
    procedure UpdateEventValuesFromControls; override;
  end;

  TcxSchedulerEventEditorFormHelperWR = class (TcxSchedulerEventEditorFormHelper)
  protected
    procedure Save(var AModalResult: TModalResult); override;
    procedure Cancel(var AModalResult: TModalResult); override;
  end;

var
  FrmAgendaEditor: TFrmAgendaEditor;

implementation

uses
  Base, Agenda, Base_Produto, ConUsuario, AgendaHistorico, DateUtils, Registry, ImpAgendaChamado, DataModuleImpressao,
  cxSchedulerStorage, StrUtils, Principal, ConCidades, ConCondicaoPagto,
  ConSetor, Email, ComObj, Math, wrFuncoes, wrForms, Frame_CadVenda_Mestre, Base_Venda, Tag.Form;

{$R *.dfm}


procedure TFrmAgendaEditor.Equipamentos1Click(Sender: TObject);
begin
  inherited;
  GrupoEquipamento.Visible := not GrupoEquipamento.Visible;
end;

procedure TFrmAgendaEditor.SetCampoPessoa(AComponente: TcxButtonEdit; ACampo: string);
var
  APessoa : TPessoaRetorno;
begin
  APessoa := FControleWR.FindComponente(AComponente).Pessoa;
  Event.SetCustomFieldValueByName('PESSOA_' + ACampo + '_CODIGO', APessoa.Codigo);
  if Assigned(APessoa.Tipo) then
    Event.SetCustomFieldValueByName('PESSOA_' + ACampo + '_TIPO', APessoa.Tipo.Codigo)
  else
    Event.SetCustomFieldValueByName('PESSOA_' + ACampo + '_TIPO', '');
  Event.SetCustomFieldValueByName('PESSOA_' + ACampo + '_SEQUENCIA', APessoa.Sequencia);
end;

procedure TFrmAgendaEditor.Excluir1Click(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  if EdtDataFatura.Date > 0 then
  begin
    ShowMessage('Você não tem permissão para apagar..'#13'Já foi Faturado.'#13'Primeiro cancele o Faturamento.');
    exit;
  end;
  if ShowMessageWR('Deseja excluir este agendamento?', MB_ICONQUESTION) <> mrYes then
    Exit;
  QuerX := GeraFDQuery(FrmAgenda.Transa);
  try
    QuerX.SQL.Text := 'update AGENDA set ATIVO = ''N'' where (CODIGO = :Cod)';
    QuerX.Params[0].Value := Event.ID;
    QuerX.ExecSQL;
    FrmAgenda.ComitaTransacao;
  finally
    QuerX.Free;
  end;
  Close;
end;

procedure TFrmAgendaEditor.Exibirhistrico1Click(Sender: TObject);
var
  Reg : TRegistry;
begin
  inherited;
  Exibirhistrico1.Checked := not Exibirhistrico1.Checked;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Sistema.RegPath + 'Agenda', True) then
      Reg.WriteBool('ExibirHistorico', Exibirhistrico1.Checked);
  finally
    Reg.Free;
  end;
end;

procedure TFrmAgendaEditor.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  QuerX : TIBQuery;
  ATransa : TIBTransaction;
  AEndereco : TACBrCEPEndereco;
begin
  inherited;
  if ACBrCEP1.Enderecos.Count > 0 then
  begin
    AEndereco        := ACBrCEP1.Enderecos[0];
    EdtEndereco.Text := AEndereco.Tipo_Logradouro + ' ' + AEndereco.Logradouro;
    if AEndereco.Municipio <> '' then
    begin
      ATransa := GeraTransacao;
      QuerX := GeraQuery(ATransa);
      try
        ATransa.StartTransaction;
        QuerX.Sql.Text := 'select * from CIDADES where (upper(DESCRICAO) = :Desc)';
        QuerX.Params[0].AsString := AnsiUpperCase(AEndereco.Municipio);
        QuerX.Open;
        if QuerX.IsEmpty and (AEndereco.IBGE_Municipio <> '') then
        begin
          QuerX.Close;
          QuerX.SQL.Text := 'insert into CIDADES (CODIGO, DESCRICAO, UF, PAIS) ' +
                            '             values (:CODIGO, :DESCRICAO, :UF, :PAIS)';
          QuerX.ParamByName('CODIGO').AsString    := AEndereco.IBGE_Municipio;
          QuerX.ParamByName('DESCRICAO').AsString := Copy(AEndereco.Municipio, 1, 50);
          QuerX.ParamByName('UF').AsString        := AEndereco.UF;
          QuerX.ParamByName('PAIS').AsInteger     := 1058;
          QuerX.ExecSQL;
          ATransa.Commit;
        end;
      finally
        QuerX.Free;
        ATransa.Free;
      end;
    end;
    EdtCidadeÎCidades.Text := AEndereco.IBGE_Municipio;
  end;
end;

procedure TFrmAgendaEditor.AlterarCliente1Click(Sender: TObject);
begin
  inherited;
  if not EdtResponsavelÎPessoas.Enabled then
    EdtResponsavelÎPessoas.Enabled := True;
end;

procedure TFrmAgendaEditor.Atribuidoa1Click(Sender: TObject);
begin
  inherited;
  GrupoFuncionario.Visible := not GrupoFuncionario.Visible;
end;

procedure TFrmAgendaEditor.BotoesOutrosClick(Sender: TObject);
var
  ACodPessoa: string;
begin
{  dxLayoutControl1.BeginUpdate;
  try
    if not GrupoOutros.Visible then
    begin
      if Self.Left > 150 then
        Self.Left := Self.Left - 150;
      if Self.Width < 710 then
        Self.Width := Self.Width + 300;
      GrupoOutros.Visible := True;
      SplitterOutros.Visible := True;
      GrupoFrameAnexos.Visible := False;
    end;
    ACodPessoa := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
    case TComponent(Sender).Name[4] of
      'P':  begin
              if (FFrmAgendaPostAgenda = nil) then
              begin
//                PnlPostAgenda.Align := alClient;
                FFrmAgendaPostAgenda := TFrmAgendaPostAgenda.Create(Self);
                FFrmAgendaPostAgenda.BorderStyle := bsNone;
                FFrmAgendaPostAgenda.Parent := Self.PnlPostAgenda;
                FFrmAgendaPostAgenda.Align := alClient;
                FFrmAgendaPostAgenda.FinanceiroLiberado := BtnFinanceiro.Enabled;
                FFrmAgendaPostAgenda.CodAgendaIgnorar := Self.CodigoEvento;
                FFrmAgendaPostAgenda.PessoaResponsavelCodigo := ACodPessoa;
                FFrmAgendaPostAgenda.TransaEditor := TransaEditor;
                FFrmAgendaPostAgenda.AfterInsertMessage := teSubject.Properties.OnChange;
                FFrmAgendaPostAgenda.Show;
                LayoutItemPostAgenda.Visible := True;
              end
              else
                LayoutItemPostAgenda.Visible := not LayoutItemPostAgenda.Visible;
            end;
      'F':  begin
              if (FFrmAgendaFinanceiro = nil) then
              begin
//                PnlFinanceiro.Align := alClient;
                FFrmAgendaFinanceiro := TFrmAgendaFinanceiro.Create(Self);
                FFrmAgendaFinanceiro.BorderStyle := bsNone;
                FFrmAgendaFinanceiro.Parent := Self.PnlFinanceiro;
                FFrmAgendaFinanceiro.Align := alClient;
                FFrmAgendaFinanceiro.PessoaResponsavelCodigo := ACodPessoa;
                FFrmAgendaFinanceiro.Show;
                LayoutItemFinanceiro.Visible := True;
              end
              else
                LayoutItemFinanceiro.Visible := not LayoutItemFinanceiro.Visible;
            end;
    end;
    SplitterOutrosHorz.Visible := LayoutItemPostAgenda.Visible and LayoutItemFinanceiro.Visible;
    if (not LayoutItemPostAgenda.Visible) and (not LayoutItemFinanceiro.Visible) then
    begin
      GrupoOutros.Visible := False;
      SplitterOutros.Visible := False;
    end;
  finally
    dxLayoutControl1.EndUpdate;
  end;  }
end;

procedure TFrmAgendaEditor.BtnConsultarClick(Sender: TObject);
var
  APanelForm : TPanelForm;
begin
  inherited;
  if Self.ReadOnly then
    Exit;
  if EdtProcedimentoÎProdutoÎDESCRICAO.Focused then
  begin
    Produto.Close;
    Produto.ParamByName('Desc').AsString := '%' + AnsiUpperCase(EdtProcedimentoÎProdutoÎDESCRICAO.Text) + '%';
    Produto.Open;
    PnlConsultaProduto.SetPosition(GetPosicaoControle(EdtProcedimentoÎProdutoÎDESCRICAO));
    Mostrar(PnlConsultaProduto);
    GridProdProced.SetFocus;
  end
  else if EdtEquipamentoÎEquipamentoÎDESCRICAO.Focused then
  begin
    Equipamento.Close;
    Equipamento.SQL[2] := 'where (DESCRICAO like ' + QuotedStr('%' + AnsiUpperCase(EdtEquipamentoÎEquipamentoÎDESCRICAO.Text) + '%') + ')';
    if EdtResponsavelÎPessoas.Text <> '' then
      Equipamento.SQL[2] := Equipamento.SQL[2] + ' and (PESSOA_CLIENTE_CODIGO = ' + QuotedStr(AnsiUpperCase(FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas))) + ')';
    Equipamento.Open;
    PnlConsultaEquipamento.SetPosition(GetPosicaoControle(EdtEquipamentoÎEquipamentoÎDESCRICAO));
    Mostrar(PnlConsultaEquipamento);
    cxGrid2.SetFocus;
  end;
{  if EditUsuario.Focused then
  begin
    Usuario.Close;
    Usuario.SQL[2] := ' Where (DESCRICAO like ''' + '%' + UpperCase(Edit_Resposta.Text) + '%'')';
    Usuario.Open;
    Panel6.Top:=Panel3.Top+Edit_Resposta.Top+Edit_Resposta.Height+1;
    Mostrar(Panel6);
    cxGrid2.SetFocus;
  end;  }
end;


procedure TFrmAgendaEditor.BtnContatoClick(Sender: TObject);
begin
  MostraOcultaContato(BtnContato, GrupoCliente, not GrupoCliente.Visible);
end;

procedure TFrmAgendaEditor.btnDeleteClick(Sender: TObject);
begin
  if EdtDataFatura.Date > 0 then
  begin
    ShowMessageWR('Você não tem permissão para apagar..'#13'Já foi Faturado.'#13'Primeiro cancele o Faturamento.');
    Exit;
  end;
  if ShowMessageWR('Tem certeza que deseja EXCLUIR este agendamento?', MB_ICONQUESTION) <> mrYes then
    Exit;
  inherited;
end;

procedure TFrmAgendaEditor.BtnEquipamentosClick(Sender: TObject);
begin
  MostraOculta(BtnEquipamentos, GrupoEquipamento, not GrupoEquipamento.Visible);
end;

procedure TFrmAgendaEditor.BtnEquipFecharClick(Sender: TObject);
begin
  Ocultar(PnlConsultaEquipamento);
end;

procedure TFrmAgendaEditor.BtnEquipSelecionarClick(Sender: TObject);
begin
  Ocultar(PnlConsultaEquipamento);
  EdtEquipamentoÎEquipamento.Text := Equipamento.FieldByName('CODIGO').AsString;
end;

procedure TFrmAgendaEditor.BtnFaturamentoClick(Sender: TObject);
begin
  MostraOculta(BtnFaturamento, GrupoInformacaes, not GrupoInformacaes.Visible);
//  MostraOculta(BtnFaturamento, GrupoPedidos, not GrupoPedidos.Visible);
end;

procedure TFrmAgendaEditor.BtnInformacoesDeCriacaoAlteracaoClick(Sender: TObject);
begin
  MostraOculta(BtnInformacoesDeCriacaoAlteracao, PnlDadosMod, not PnlDadosMod.Visible);
end;

procedure TFrmAgendaEditor.BtnLembreteClick(Sender: TObject);
begin
  MostraOculta(BtnLembrete, pnlPlaceHolder, not pnlPlaceHolder.Visible);
end;

procedure TFrmAgendaEditor.BtnProdutoFecharClick(Sender: TObject);
begin
  Ocultar(PnlConsultaProduto);
end;

procedure TFrmAgendaEditor.BtnProdutoIrConsultaClick(Sender: TObject);
begin
  EdtProcedimentoÎProduto.Properties.OnButtonClick(Sender, 0);
end;

procedure TFrmAgendaEditor.BtnProdutoSelecionarClick(Sender: TObject);
begin
  Ocultar(PnlConsultaProduto);
  EdtProcedimentoÎProduto.Text := ProdutoCODIGO.AsString;
  EdtProcedimentoÎProduto.SetFocus;
end;

procedure TFrmAgendaEditor.BtnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if not Agenda_Seguidor.IsEmpty then
  begin
    Agenda_Seguidor.Delete;
    Modified := True;
  end;
end;

procedure TFrmAgendaEditor.BtnResponsavelClick(Sender: TObject);
begin
  MostraOculta(BtnResponsavel, GrupoResponsavel, not GrupoResponsavel.Visible);
end;

procedure TFrmAgendaEditor.CadastraNovoCliente;
var
  QuerX : TIBQuery;
  ASequencia : Integer;
begin
  {FrmPessoas := TFrmPessoas.Create(nil);
  try
    FrmPessoas.btnNovoClick(nil);
    FrmPessoas.Pessoas.FieldByName('TIPO').AsString        := 'J';
    FrmPessoas.DBComboBox1Exit(nil);
    FrmPessoas.Pessoas.FieldByName('CNPJCPF').AsString     := GetCnpjCpf(Emit.CNPJCPF);
    FrmPessoas.Pessoas.FieldByName('INSCIDENT').AsString   := Emit.IE;
    FrmPessoas.Pessoas.FieldByName('RAZAOSOCIAL').AsString := AnsiUpperCase(LeftStr(Emit.xNome, 150));
    FrmPessoas.Pessoas.FieldByName('FANTASIA').AsString    := AnsiUpperCase(LeftStr(Emit.xFant, 150));
    if FrmPessoas.Pessoas.FieldByName('FANTASIA').AsString = '' then
      FrmPessoas.Pessoas.FieldByName('FANTASIA').AsString  := FrmPessoas.Pessoas.FieldByName('RAZAOSOCIAL').AsString;
    FrmPessoas.Pessoas.FieldByName('ENDERECO').AsString    := AnsiUpperCase(Emit.EnderEmit.xLgr);
    FrmPessoas.Pessoas.FieldByName('FONE1').AsString       := Emit.EnderEmit.fone;
    FrmPessoas.Pessoas.FieldByName('COMPLEMENTO').AsString := AnsiUpperCase(Emit.EnderEmit.xCpl);
    FrmPessoas.Pessoas.FieldByName('CEP').AsInteger        := Emit.EnderEmit.CEP;
    FrmPessoas.Pessoas.FieldByName('NUMERO').AsString      := Emit.EnderEmit.nro;
    FrmPessoas.Pessoas.FieldByName('CODCIDADE').AsInteger  := Emit.EnderEmit.cMun;
    FrmPessoas.Pessoas.FieldByName('UF').AsString          := Emit.EnderEmit.UF;
    FrmPessoas.Pessoas.FieldByName('BAIRRO').AsString      := AnsiUpperCase(Emit.EnderEmit.xBairro);
    FrmPessoas.Pessoas.FieldByName('IS_FOR').AsString      := 'S';

    Codigo := FrmPessoas.Pessoas.FieldByName('CODIGO').AsString;

    QuerX := GeraQuery(Transa);
    try
      QuerX.SQL.Text := 'select max(SEQUENCIA_FOR) from PESSOAS';
      QuerX.Open;
      ASequencia := QuerX.Fields[0].AsInteger + 1;
      FrmPessoas.Pessoas.FieldByName('SEQUENCIA_FOR').AsInteger := ASequencia;
    finally
      QuerX.Free;
    end;
    FrmPessoas.btnConfirmarClick(nil);
    APessoaFornecedor.Codigo    := Codigo;
    APessoaFornecedor.Tipo      := FListaPessoaTipo.GetTipo('FOR');
    APessoaFornecedor.Sequencia := ASequencia;
    Application.ProcessMessages;
  finally
    FreeAndNil(FrmPessoas);
  end; }
end;

procedure TFrmAgendaEditor.CadPessoasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CadPessoasATIVO.AsString := 'S';
end;

procedure TFrmAgendaEditor.CarregaPrioridades;
var
  APrioridade : TPrioridade;
begin
  CbPrioridade.Properties.Items.Clear;
  for APrioridade := High(TPrioridade) downto Low(TPrioridade) do
  begin
    with CbPrioridade.Properties.Items.Add do
    begin
      Description := PrioridadeToDescricao(APrioridade);
      ImageIndex  := 28 + PrioridadeToStr(APrioridade);
      Value       := PrioridadeToStr(APrioridade);
    end;
  end;
end;

procedure TFrmAgendaEditor.CBoxVisualizaPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.CbPrioridadePropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.CbSituacaoPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.cbxTaskStatusPropertiesChange(Sender: TObject);
begin
  inherited cbxTaskStatusChange(Sender);
  FModified := True;
  VerificaModificado;
end;

function TFrmAgendaEditor.VerificaModificado: Boolean;
var
  AModificado : Boolean;
begin
//  Result := inherited Helper.IsIntesectionValid;
  AModificado := FModified or
                 teSubject.EditModified or
                 teLocation.EditModified or
                 meMessage.EditModified or
                 cbAllDayEvent.EditModified or
                 icbShowTimeAs.EditModified or
                 (icbLabel.EditModified and (icbLabel.ItemIndex <> -1)) or
                 (pnlResource.Visible and cbResources.EditModified) or
                 (pnlReminder.Visible and (cbReminder.EditModified or cbReminderMinutesBeforeStart.EditModified));

  btnOk.Visible     := AModificado;
  btnCancel.Visible := AModificado;
  btnFechar.Visible := not AModificado;
  BtnSalvarAlteracoesCliente.Enabled := AModificado;
end;

procedure TFrmAgendaEditor.VerificaPessoa(ACodPessoa: string);
var
  QuerX: TFDQuery;
begin
  if ACodPessoa.IsEmpty then
    ACodPessoa := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);

  BtnPostAgenda.Enabled := (not ACodPessoa.IsEmpty);
  BtnFinanceiro.Enabled := (not ACodPessoa.IsEmpty) and
                           ((FrmPrincipal.GetPermissaoAction(FrmPrincipal.Action_Financeiro)) or
                            (FrmPrincipal.GetPermissaoAction(FrmPrincipal.ActionA_Receber)));

  if not ACodPessoa.IsEmpty then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select count(1) as TOTAL, min(VENCTO) as VENCTO '+
                        'from FINANCEIRO f '+
                        'where (f.PESSOA_RESPONSAVEL_CODIGO = :PESSOA_RESPONSAVEL_CODIGO) '+
                        '  and (f.TIPO = ''A RECEBER'') '+
                        '  and (f.STATUS like ''ATIVO%'') '+
                        '  and (f.VENCTO < current_date)';
      QuerX.Params[0].AsString := ACodPessoa;
      QuerX.Open;
      if (QuerX.FieldByName('TOTAL').AsInteger > 0) then
      begin
        BtnFinanceiro.PaintStyle := bpsCaption;
        BtnFinanceiro.Caption := QuerX.FieldByName('TOTAL').AsString;
      end
      else
      begin
        BtnFinanceiro.PaintStyle := bpsGlyph;
        BtnFinanceiro.Caption := '$';
      end;
      if QuerX.FieldByName('VENCTO').IsNull then
        BtnFinanceiro.Colors.Normal := clDefault
      else
      if ((Trunc(Now) - Trunc(QuerX.FieldByName('VENCTO').AsDateTime)) < 4) then
        BtnFinanceiro.Colors.Normal := clYellow
      else
        BtnFinanceiro.Colors.Normal := clRed;
    finally
      QuerX.Free;
    end;
  end;
  if (FFrmAgendaPostAgenda <> nil) then
  begin
    FFrmAgendaPostAgenda.FinanceiroLiberado := BtnFinanceiro.Enabled;
    FFrmAgendaPostAgenda.PessoaResponsavelCodigo := ACodPessoa;
  end;
  if (FFrmAgendaFinanceiro <> nil) then
    FFrmAgendaFinanceiro.PessoaResponsavelCodigo := ACodPessoa;
end;

procedure TFrmAgendaEditor.CheckVisible;
var
  ATimeVisible: Boolean;
begin
  if Helper.IsUpdating then
    Exit;
  pnlTaskComplete.Visible := ShowTaskComplete;
  pnlResource.Visible     := GetResourcesPanelVisible;
  ATimeVisible := (Event.EventType = etNone) or ((Event.EventType in [etOccurrence, etCustom]) and not ForceSeries);
  if ATimeVisible then
  begin
    pnlTime.Visible := True;
    pnlRecurrenceInfo.Visible := False;
  end
  else if Assigned(cxGetRecurrenceDescriptionStringProc) then
  begin
    RefreshRecurrenceInfo;
    pnlRecurrenceInfo.Visible := True;
    pnlTime.Visible := False;
  end;
  teStart.Time    := TimeOf(Event.Start);
  teEnd.Time      := TimeOf(Event.Finish);
  teStart.Visible := not cbAllDayEvent.Checked;
  teEnd.Visible   := not cbAllDayEvent.Checked;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.Pessoas1Click(Sender: TObject);
begin
  inherited;
  CadastroTag_NormalChave(Self, Tag_Pessoas, FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas));
end;

procedure TFrmAgendaEditor.BtnMenuClick(Sender: TObject);
var
  APosicao : TPoint;
begin
  APosicao := GetPosicaoMenu(BtnMenu);
  PopupMenu1.Popup(APosicao.X, APosicao.Y);
end;

procedure TFrmAgendaEditor.btnOkClick(Sender: TObject);
begin
  {if Trim(EdtCodResponsavel.Text) = '' then
  begin
    ShowMessageWR('Defina um Responsável para este evento.');
    Exit;
  end;
  if MemoMensagem.Lines.Text.Trim <> '' then
  begin
    AdicionaRegistro_Atividade(TransaEditor, CodigoEvento, MemoMensagem.Lines.Text);
    MemoMensagem.Lines.Clear;
    Modified := True;
  end;
  if TransaEditor.Active then
    TransaEditor.Commit; }
  if Trim(FFrameHistoricoEditor.MemoMensagem.Document.Text) <> '' then
    FFrameHistoricoEditor.BtnEnviar.Click;
  FrmAgenda.Scheduler.Storage.Reminders.UseReminderWindow := False;   //Desativa para não aparecer os lembretes ao fechar o editor.
  inherited;
  FrmAgenda.Scheduler.Storage.Reminders.UseReminderWindow := True;
end;

procedure TFrmAgendaEditor.EdtCEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (ShowMessageWR('Deseja pesquisar o CEP na Web?', MB_ICONQUESTION) = mrYes) then
  begin
    try
      ACBrCEP1.BuscarPorCEP(EdtCEP.Text);
    except
      ShowMessageWR('Nenhum endereço encontrado', MB_ICONINFORMATION);
    end;
  end;
end;

procedure TFrmAgendaEditor.EdtCEPPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.BtnSalvarAlteracoesClienteClick(Sender: TObject);
var
  APessoa : TPessoaRetorno;
  QuerX : TIBQuery;
begin
  inherited;
  if teSubject.EditModified or
     EdtEndereco.EditModified or
     EdtTelefone.EditModified or
     EdtCEP.EditModified or
     EdtCidadeÎCidades.EditModified or
     EdtNumero.EditModified or
     EdtEmail.EditModified then
  begin
    APessoa := TPessoaRetorno.Create;
    CadPessoas.Params[0].AsString := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
    CadPessoas.Open;
    if (EdtResponsavelÎPessoas.Text = '') or CadPessoas.IsEmpty then
    begin
      CadPessoas.Insert;
      SPClientes.ExecProc;
      CadPessoasCODIGO.AsString         := SPClientes.Params[0].AsString + '-' + EmpresaAtiva;
      CadPessoasDATACADASTRO.AsDateTime := DataHoraSys;
      CadPessoasCRT.AsString            := 'Simples Nacional';
      CadPessoasTIPO.AsString           := 'O';
      CadPessoasFANTASIA.AsString       := AnsiUpperCase(teSubject.Text);
      CadPessoasRAZAOSOCIAL.AsString    := AnsiUpperCase(teSubject.Text);
      APessoa.Codigo := CadPessoasCODIGO.AsString;
    end else
      CadPessoas.Edit;
    CadPessoasENDERECO.AsString  := EdtEndereco.Text;
    CadPessoasFONE1.AsString     := EdtTelefone.Text;
    CadPessoasCEP.AsString       := EdtCEP.Text;
    CadPessoasCODCIDADE.AsString := EdtCidadeÎCidades.Text;
    CadPessoasNUMERO.AsString    := EdtNumero.Text;
    CadPessoasEMAIL.AsString     := EdtEmail.Text;
    CadPessoasCONTATO.AsString   := teLocation.Text;
    CadPessoas.Post;
    if (APessoa.Codigo <> '') and BancoEstruturaTableByName('PESSOAS').ExisteCampo('SEQUENCIA_PDV') then
    begin
      //Com APessoa.Codigo preenchido, a pessoa foi cadastrada agora, é um novo cadastro
      QuerX := GeraQuery(Transa);
      try
        QuerX.SQL.Text := 'select max(SEQUENCIA_PDV) from PESSOAS';
        QuerX.Open;
        APessoa.Sequencia := QuerX.Fields[0].AsInteger + 1;
        QuerX.Close;

        QuerX.SQL.Text := 'update PESSOAS set SEQUENCIA_PDV = :SeqPessoa, IS_PDV = ''S'' ' +
                          'where (CODIGO = :CodPessoas)';
        QuerX.ParamByName('SeqPessoa').AsInteger := APessoa.Sequencia;
        QuerX.ParamByName('CodPessoas').AsString := APessoa.Codigo;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
    end;
    Transa.Commit;
    BtnSalvarAlteracoesCliente.Enabled := False;
    if APessoa.Codigo <> '' then
    begin
      Helper.BeginUpdate;
      try
        APessoa.Tipo := PessoaListaTipos.GetTipo('PDV');
        FControleWR.FindComponente(EdtResponsavelÎPessoas).ValorComponentePessoa := APessoa;
        teSubject.EditModified := True;
      finally
        Helper.EndUpdate;
      end;
    end;
  end;
end;

procedure TFrmAgendaEditor.BtnSetorClick(Sender: TObject);
begin
  MostraOculta(BtnSetor, GrupoAgendaSetor, not GrupoAgendaSetor.Visible);
end;

procedure TFrmAgendaEditor.BtnProcedimentoClick(Sender: TObject);
begin
  MostraOculta(BtnProcedimento, GrupoProcedimento, not GrupoProcedimento.Visible);
end;

procedure TFrmAgendaEditor.cxButton1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.PopupOnMouse;
end;

procedure TFrmAgendaEditor.cxButton2Click(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlSeguidores);
end;

procedure TFrmAgendaEditor.BtnAdicionarProdutoClick(Sender: TObject);
begin
  inherited;
  if VarIsNull(Event.ID) then
    raise EWRException.Create('Só é possível adicionar seguidores para agendamentos já feitos.');

  if not Agenda_Seguidor.Locate('CODUSUARIO', EdtSegCodUsuario.Text, []) then
  begin
    Agenda_Seguidor.Insert;
    Agenda_SeguidorCODUSUARIO.AsString := EdtSegCodUsuario.Text;
    Agenda_Seguidor.Post;
    EdtSegCodUsuario.Clear;
    Modified := True;

    Agenda_Seguidor.Close;
    Agenda_Seguidor.Open;
  end;
end;

procedure TFrmAgendaEditor.BtnAnexosClick(Sender: TObject);
begin
{  dxLayoutControl1.BeginUpdate;
  try
    if not GrupoFrameAnexos.Visible then
    begin
      if Self.Left > 150 then
        Self.Left := Self.Left - 150;
      if Self.Width < 710 then
        Self.Width := Self.Width + 300;
      GrupoFrameAnexos.Visible := True;
      SplitterOutros.Visible := True;
      LayoutItemPostAgenda.Visible := False;
      LayoutItemFinanceiro.Visible := False;
      GrupoOutros.Visible := False;
      TFrameAnexos.PegaAnexos(AFrameAnexos,'ANEXO_VENDA','PROTOCOLO', FrmAgenda.SchedulerDataSource,PnlFrameAnexos);
    end
    else
    begin
      GrupoFrameAnexos.Visible := False;
      SplitterOutros.Visible := False;
    end;
  finally
    dxLayoutControl1.EndUpdate;
  end;     }
end;

procedure TFrmAgendaEditor.BtnAnexosResponsavelClick(Sender: TObject);
begin
  inherited;
  SetCampoPessoa(EdtResponsavelÎPessoas, 'CLIENTE');
  if VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO'), '') = '' then
    raise EWRException.Create('Responsável não definido.');

  if VarToStrDef(Event.GetCustomFieldValueByName('PROTOCOLO'), '') = '' then
    raise EWRException.Create('Agendamento sem protocolo.');

  AgendaAnexo.Open;
  AgendaAnexo.EmptyDataSet;
  AgendaAnexo.Edit;
  AgendaAnexoPESSOA_CLIENTE_CODIGO.AsVariant := Event.GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO');
  AgendaAnexoCODIGO.AsVariant := Event.GetCustomFieldValueByName('PROTOCOLO');
  AgendaAnexo.Post;

  if FFormAnexos = nil then
    TFrmAgendaEventoAnexo.CarregaAnexosPeloAgendaEditor(DSAgendaAnexo, FrmAgenda.UCHist_Selecionado);

//
//  with FFormAnexos do
//  begin
//    TFrameAnexosAgenda.CarregaFrame1(FFrameAnexosAgenda, pnlAnexos, FrmAgenda.DS, FrmAgenda.UCHist_Selecionado);
//    Show;
//    Application.ProcessMessages;
//    Evento := Self.Event;
//  end;
  // Comentado pois foi migrado.
  {
  if FFormAnexos = nil then
  begin
    FFormAnexos := TFrmAgendaEventoAnexo.Create(Self);
    with FFormAnexos do
    begin
      Show;
      Application.ProcessMessages;
      Evento := Self.Event;
    end;
  end else
    FFormAnexos.Show;
  }
end;

procedure TFrmAgendaEditor.BtnMostraOcultaTodosClick(Sender: TObject);
var
  AVisible : Boolean;
begin
  lcMain.BeginUpdate;
  try
    AVisible := Boolean(BtnMostraOcultaTodos.Tag);
//    MostraOcultaContato(BtnContato, GrupoContato, AVisible);
    MostraOculta(BtnDadosDoCliente, GrupoDadosCliente, AVisible);
    MostraOculta(BtnProcedimento, GrupoProcedimento, AVisible);
    MostraOculta(BtnCondicaoDePagamento, GrupoCondicaoPagto, AVisible);
    MostraOculta(BtnLembrete, PnlPlaceHolder, AVisible);
    MostraOculta(BtnConclusaoDaTarefa, PnlTaskComplete, AVisible);
    MostraOculta(BtnDatasDoAgendamento, PnlTime, AVisible);
    MostraOculta(BtnSetor, GrupoAgendaSetor, AVisible);
    MostraOculta(BtnEquipamentos, GrupoEquipamento, AVisible);
    MostraOculta(BtnResponsavel, GrupoResponsavel, AVisible);
    MostraOculta(BtnAtribuido, GrupoFuncionario, AVisible);
    MostraOculta(BtnFaturamento, GrupoPedidos, AVisible);
    MostraOculta(BtnInformacoesDeCriacaoAlteracao, PnlDadosMod, AVisible);
    MostraOculta(BtnFaturamento, GrupoInformacaes, AVisible);
//    GrupoDadosCliente.Visible         := AVisible;
//    GrupoProcedimento.Visible         := AVisible;
//    GrupoCondicaoPagto.Visible        := AVisible;
//    LayoutItemPnlPlaceHolder.Visible  := AVisible;
//    LayoutItemPnlTaskComplete.Visible := AVisible;
//    LayoutItemPnlTime.Visible         := AVisible;
//    GrupoAgendaSetor.Visible          := AVisible;
//    GrupoEquipamento.Visible          := AVisible;
//    GrupoResponsavel.Visible          := AVisible;
//    GrupoFuncionario.Visible          := AVisible;
//    GrupoPedidos.Visible              := AVisible;
//    PnlDadosMod.Visible               := AVisible;
//    PnlDadosMod.Top                   := 0;
    BtnMostraOcultaTodos.Tag := Integer(not AVisible);
  finally
    lcMain.EndUpdate;
  end;
end;

procedure TFrmAgendaEditor.BtnDadosDoClienteClick(Sender: TObject);
begin
  MostraOculta(BtnDadosDoCliente, GrupoDadosCliente, not GrupoDadosCliente.Visible);
end;

procedure TFrmAgendaEditor.BtnDatasDoAgendamentoClick(Sender: TObject);
begin
  MostraOculta(BtnDatasDoAgendamento, pnlTime, not pnlTime.Visible);
end;

procedure TFrmAgendaEditor.BtnAtribuidoClick(Sender: TObject);
begin
  MostraOculta(BtnAtribuido, GrupoFuncionario, not GrupoFuncionario.Visible);
end;

procedure TFrmAgendaEditor.BtnConclusaoDaTarefaClick(Sender: TObject);
begin
  MostraOculta(BtnConclusaoDaTarefa, PnlTaskComplete, not PnlTaskComplete.Visible);
end;

procedure TFrmAgendaEditor.BtnCondicaoDePagamentoClick(Sender: TObject);
begin
  MostraOculta(BtnCondicaoDePagamento, GrupoCondicaoPagto, not GrupoCondicaoPagto.Visible);
end;

procedure TFrmAgendaEditor.dxLayoutControl1Group13Collapsing(Sender: TObject; var Allow: Boolean);
begin
  if (Self.Left > 0) and (Self.Top > 0) then
  begin
    Self.Width := Self.Width - 300;
    Self.Left := Self.Left + 150;
  end;
end;

procedure TFrmAgendaEditor.dxLayoutControl1Group13Expanding(Sender: TObject; var Allow: Boolean);
begin
  if (Self.Left > 0) and (Self.Top > 0) then
  begin
    Self.Width := Self.Width + 300;
    Self.Left := Self.Left - 150;
  end;
end;

procedure TFrmAgendaEditor.EdtProtocoloKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    teSubject.SetFocus;
    BtnConsultarClick(nil);
  end;
  inherited;
//  if Key = VK_F3 then
//    FControleWR.FindComponente(EdtResponsavelÎPessoas).ValorComponentePessoa := CadastroModalChave(TFrmPessoas, FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas));
end;

procedure TFrmAgendaEditor.EdtSetorÎSetorExit(Sender: TObject);
begin
//  if Assigned(FFrameHistoricoEditor) then
//    FFrameHistoricoEditor.CodCentroTrabalho := VarToIntDef(EdtSetorÎSetor.EditValue, 0);
end;

procedure TFrmAgendaEditor.EdtSetorÎSetorKeyPress(Sender: TObject; var Key: Char);
begin
  VerificaKeyPress(Key);
  inherited;
end;

procedure TFrmAgendaEditor.EdtCodUsuarioPropertiesChange(Sender: TObject);
begin
  inherited;
  LblSegUsuario.Caption := Procura('USUARIO', 'USUARIO', EdtSegCodUsuario.Text);
end;

procedure TFrmAgendaEditor.EdtCodAgendaSetorPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
  Situacao.Close;
  Situacao.ParamByName('CodSetor').AsInteger := StrToIntDef(EdtSetorÎSetor.Text, 0);
  Situacao.Open;
end;

procedure TFrmAgendaEditor.EdtCidadeÎCidadesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaKeyPress(Key);
end;

procedure TFrmAgendaEditor.EdtCodCidadePropertiesChange(Sender: TObject);
begin
  inherited;
  if not Helper.IsUpdating then
  begin
    FModified := True;
    VerificaModificado;
  end;
end;

procedure TFrmAgendaEditor.EdtCodClientePropertiesChange(Sender: TObject);
var
  QuerX : TIBQuery;
  ACodPessoa : string;
begin
  teSubject.Properties.ReadOnly := (EdtResponsavelÎPessoas.Text <> '');
  ACodPessoa := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select FANTASIA, RAZAOSOCIAL, FONE1, ENDERECO, CEP, CODCIDADE, NUMERO, EMAIL, CONTATO ' +
                      'from PESSOAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodPessoa;
    QuerX.Open;
    if TConfig.ReadBoolean('USAR_NOME_FANTASIA') then
      teSubject.Text    := QuerX.FieldByName('FANTASIA').AsString
    else
      teSubject.Text    := QuerX.FieldByName('RAZAOSOCIAL').AsString;
    teLocation.Text   := QuerX.FieldByName('CONTATO').AsString;
    EdtTelefone.Text  := QuerX.FieldByName('FONE1').AsString;
    EdtEndereco.Text  := QuerX.FieldByName('ENDERECO').AsString;
    EdtCEP.Text       := QuerX.FieldByName('CEP').AsString;
    EdtCidadeÎCidades.Text := QuerX.FieldByName('CODCIDADE').AsString;
    EdtNumero.Text    := QuerX.FieldByName('NUMERO').AsString;
    EdtEmail.Text     := QuerX.FieldByName('EMAIL').AsString;

    QuerX.Close;
    //Verifica se o cliente possui alguma pendência
    //Verificar mensalista...
    QuerX.SQL.Text := 'select first 1 1 ' +
                      'from FINANCEIRO F ' +
                      'where (F.PESSOA_RESPONSAVEL_CODIGO = :CodPessoa1) ' +
                      '      and (F.TIPO = ''A RECEBER'') ' +       //Pendência financeira
                      '      and (F.STATUS like ''ATIVO%'') ' +
                      '      and (F.VENCTO < current_timestamp) ' +

                      'union all ' +

                      'select first 1 1 ' +
                      'from PESSOAS C ' +                          //Bloqueio do cliente
                      'where (C.BLOQUEADO = ''S'') ' +
                      '      and (C.CODIGO = :CodPessoa2)';
    QuerX.ParamByName('CodPessoa1').AsString := ACodPessoa;
    QuerX.ParamByName('CodPessoa2').AsString := ACodPessoa;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      LbSituacao.Caption := 'Pendência em aberto';
      LbSituacao.Style.TextColor := clRed;
    end else
    begin
      LbSituacao.Caption := 'OK';
      LbSituacao.Style.TextColor := clGreen;
    end;
  finally
    QuerX.Free;
  end;
  if not Helper.IsUpdating then
  begin
    inherited OnChanged(Sender);
    FModified := True;
    VerificaModificado;
    teSubject.EditModified  := True;
    teLocation.EditModified := True;
  end;
//  if (FFrameHistoricoEditor <> nil) then
//    FFrameHistoricoEditor.CodPessoa := ACodPessoa;
  VerificaPessoa(ACodPessoa);
end;

procedure TFrmAgendaEditor.EdtCondicaoAgePagtoÎCondicaoPagtoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaKeyPress(Key);
end;

procedure TFrmAgendaEditor.EdtCodCondicaoPagtoPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
end;

procedure TFrmAgendaEditor.EdtEquipamentoÎEquipamentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaKeyPress(Key);
end;

procedure TFrmAgendaEditor.EdtCodEquipamentoPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtCodProdProcedPropertiesChange(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
  QuerX := GeraFDQuery;
  try
    //Trava a edição do valor quanto houver algum produto na composição
    QuerX.SQL.Text := 'select first 1 1 from PRODUTO_COMPOSICAO where (CODPRODUTO_COMPOSICAO = :Cod)';
    QuerX.Params[0].AsString := EdtProcedimentoÎProduto.Text;
    QuerX.Open;
    EdtProcedimentoÎProdutoÎVALOR.Properties.ReadOnly := not QuerX.IsEmpty;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgendaEditor.EdtCodFuncionarioPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtCodResponsavelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F2) and not EdtCodResponsavel.Properties.ReadOnly then
    EdtCodResponsavelPropertiesButtonClick(nil, 0);
end;

procedure TFrmAgendaEditor.EdtCodResponsavelKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  VerificaKeyPress(Key);
end;

procedure TFrmAgendaEditor.EdtCodResponsavelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  EdtCodResponsavel.Text := ConsultaChaveRedimenciona(TConsuUsuario, Self, EdtCodResponsavel.Text);
end;

procedure TFrmAgendaEditor.EdtCodResponsavelPropertiesChange(Sender: TObject);
var
  QuerX : TIBQuery;
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select USUARIO, CODFUNCIONARIO from USUARIO where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EdtCodResponsavel.Text;
    QuerX.Open;
    EdtResponsavel.Text := QuerX.FieldByName('USUARIO').AsString;
    if not Helper.IsUpdating then
      EdtFuncionarioÎPessoas.Text := QuerX.FieldByName('CODFUNCIONARIO').AsString;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgendaEditor.EdtEquipamentoÎEquipamentoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    EdtEquipamentoÎEquipamentoÎDESCRICAO.SetFocusWR;
    BtnConsultarClick(nil);
  end;
end;

procedure TFrmAgendaEditor.EdtEquipamentoPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtProcedimentoÎProdutoÎDESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    EdtProcedimentoÎProdutoÎDESCRICAO.SetFocusWR;
    BtnConsultarClick(nil);
  end;
end;

procedure TFrmAgendaEditor.EdtProdProcedPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtResponsavelPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtResponsavelÎPessoasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFrmAgendaEditor.EdtResponsavelÎPessoasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13)and Assigned(FFrameHistoricoEditor) then
    FFrameHistoricoEditor.MemoMensagem.SetFocus;
end;

procedure TFrmAgendaEditor.EdtSegCodUsuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    EdtSegCodUsuarioPropertiesButtonClick(nil, 0);
end;

procedure TFrmAgendaEditor.EdtSegCodUsuarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  EdtSegCodUsuario.Text := Consulta(TConsuUsuario, Self);
end;

procedure TFrmAgendaEditor.EdtValorProdProcedPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.Procedimento1Click(Sender: TObject);
begin
  inherited;
  GrupoProcedimento.Visible := not GrupoProcedimento.Visible;
end;

procedure TFrmAgendaEditor.EdtFuncionarioPropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.EdtMensalidadePropertiesChange(Sender: TObject);
begin
  inherited OnChanged(Sender);
  FModified := True;
  VerificaModificado;
end;

procedure TFrmAgendaEditor.ConclusaoTarefa1Click(Sender: TObject);
begin
  inherited;
  PnlTaskComplete.Visible := not PnlTaskComplete.Visible;
end;

procedure TFrmAgendaEditor.CondiodePagamento1Click(Sender: TObject);
begin
  inherited;
  GrupoCondicaoPagto.Visible := not GrupoCondicaoPagto.Visible;
end;

procedure TFrmAgendaEditor.F1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja realmente Finalizar este ticket?', MB_ICONQUESTION) <> mrYes then
    Exit;

  UpdateEventValuesFromControls;
  if FrmAgenda.FinalizarEvento(Event, False) then
    btnOkClick(btnOk);
end;

procedure TFrmAgendaEditor.Faturamento2Click(Sender: TObject);
begin
  inherited;
  GrupoPedidos.Visible := not GrupoPedidos.Visible;
end;

procedure TFrmAgendaEditor.Faturar1Click(Sender: TObject);
begin
  inherited;
  if (ShowMessageWR('Deseja FATURAR este Pedido?', MB_ICONQUESTION) = mrYes) then
  begin
    FModified := True;
    AbrePedido(True);
    ShowMessage('Pedido faturado.');
//    btnOk.Click;   dar ok via programação não estava salvando o agendamento.
  end;
end;

procedure TFrmAgendaEditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited; //Neste momento é executado o Post do evento no banco
  if (EdtEndereco.EditModified or
      EdtCEP.EditModified or
      EdtTelefone.EditModified or
      EdtNumero.EditModified or
      EdtEmail.EditModified) and BtnSalvarAlteracoesCliente.Enabled then
  begin
    if ShowMessageWR('Deseja salvar as alterações do cliente?', MB_ICONQUESTION) = mrYes then
      BtnSalvarAlteracoesClienteClick(nil);
  end;
end;

procedure TFrmAgendaEditor.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  Reg : TRegistry;
  i : integer;
  ATipoFiltro : TTipoFiltroAgendamento;
  AImageComboItem : TcxImageComboBoxItem;
begin
  lcMain.BeginUpdate;
  try
    inherited;
    {$IFNDEF NO_PESSOAS}
    FControleWR := TControleWR.Create;
    FControleWR.Inicializar(Self);
    {$ENDIF}
    PnlDadosMod.Top := 0;
    PnlRecurrenceInfo.CaptionOptions.Text := '';
    PnlPlaceHolder.CaptionOptions.Text    := '';
    PnlResource.CaptionOptions.Text       := '';
    PnlTaskComplete.CaptionOptions.Text   := '';
    pnlTime.CaptionOptions.Text           := '';
    Repetir1.OnClick      := btnRecurrence.OnClick;
    btnRecurrence.Visible := False;
    btnDelete.Visible     := False;
    Confirmar1.OnClick := btnOk.OnClick;
    Cancelar1.OnClick  := btnCancel.OnClick;
    pnlRecurrence.Width := 0;
    teSubject.Properties.MaxLength    := CadPessoasFANTASIA.Size;
    EdtEndereco.Properties.MaxLength  := CadPessoasENDERECO.Size;
    EdtTelefone.Properties.MaxLength  := CadPessoasFONE1.Size;
    EdtCEP.Properties.MaxLength       := CadPessoasCEP.Size;
    EdtCidadeÎCidades.Properties.MaxLength := CadPessoasCODCIDADE.Size;
    EdtNumero.Properties.MaxLength    := CadPessoasNUMERO.Size;
    EdtEmail.Properties.MaxLength     := CadPessoasEMAIL.Size;
    teLocation.Properties.MaxLength   := CadPessoasCONTATO.Size;
    if PnlDadosMod.Visible  then
    begin
      QuerX := GeraQuery;
      try
        if not VarIsNull(Event.ID) then
        begin
          QuerX.SQL.Text := 'select A.DT_EMISSAO, A.DT_ALTERACAO, U1.USUARIO as USUARIO_CRIADOR, ' +
                            '       U2.USUARIO as USUARIO_ALTERADO ' +
                            'from AGENDA A ' +
                            'left join USUARIO U1 on (A.CODUSUARIO_CRIADOR  = U1.CODIGO) ' +
                            'left join USUARIO U2 on (A.CODUSUARIO_ALTERADO = U2.CODIGO) ' +
                            'where (A.CODIGO = :Cod)';
          QuerX.Params[0].Value := Event.ID;
          QuerX.Open;
          LbCriadoPor.Caption     := 'Criado em ' + FormatDateTime('DD/MM/YYYY hh:mm', QuerX.FieldByName('DT_EMISSAO').AsDateTime) + ' por ' + QuerX.FieldByName('USUARIO_CRIADOR').AsString;
          LbModificadoPor.Caption := 'Modificado pela última vez em ' + FormatDateTime('DD/MM/YYYY hh:mm', QuerX.FieldByName('DT_ALTERACAO').AsDateTime) + ' por ' + QuerX.FieldByName('USUARIO_ALTERADO').AsString;
          QuerX.Close;
        end else
        begin
          PnlDadosMod.Visible := False;
          LbCriadoPor.Caption := '';
          LbModificadoPor.Caption := '';
        end;
      finally
        QuerX.Free;
      end;
    end;
    DMImpressao.CarregaMenu(Impressao, Self);
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(Sistema.RegPath + 'Agenda', True) then
        Exibirhistrico1.Checked := Reg.ReadBoolWR('ExibirHistorico');
    finally
      Reg.Free;
    end;
//    TFrameRegistro_Atividade.EditorAgenda(FFrameRegistro_Atividade, PnlFrameRegistro_Atividade, 'Agenda',
//      CodigoEvento, FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas));

    BtnAnexos.Enabled := not VarIsNull(Event.ID);
    if EdtResponsavelÎPessoas.Text <> '' then
      EdtResponsavelÎPessoas.Enabled := False;
    if EdtCodResponsavel.Text <> CodigoUsuario.ToString then
      CBoxVisualiza.Properties.ReadOnly := True;
    Self.Height := Min(Self.Height, Screen.WorkAreaHeight);
    Self.Top    := Max(Self.Top, 0);
    //Coloca o AgendaEditorOutros no painel. FAQ
    FAgendaEditorOutros := TFrmAgendaEditorOutros.Create(self);
    FAgendaEditorOutros.BorderStyle := bsNone;
    FAgendaEditorOutros.Parent := PnlOutros;
    FAgendaEditorOutros.Align := alClient;
//    FAgendaEditorOutros.dxLayoutControl1.LookAndFeel := dxLayoutSkinLookAndFeel1;
    FAgendaEditorOutros.AgendaPorProtocolo.ParamByName('PROTOCOLO').AsString := EdtProtocolo.Text;
    FAgendaEditorOutros.AgendaPorProtocolo.ParamByName('TIPO_AGENDAMENTO').AsInteger := EventoTipoToStr(etAgendamento);
    FAgendaEditorOutros.AgendaPorProtocolo.Open;
    Self.Width := 600 + FAgendaEditorOutros.Width;
//    FFrameRegistro_Atividade.Parent := PnlMensagem;
    FAgendaEditorOutros.Show;
    VerificaPessoa('');
  finally
    lcMain.EndUpdate;
  end;
end;

procedure TFrmAgendaEditor.FormDestroy(Sender: TObject);
var
  Reg: TRegistry;
begin
  inherited;
  FControleWR.Free;
  FAgendaEditorOutros.Release;
  if (FFrameHistoricoEditor <> nil) then
    FFrameHistoricoEditor.Parent := nil;
  if (FFrmAgendaFinanceiro <> nil) then
    FFrmAgendaFinanceiro.Release;
  if (FFrmAgendaPostAgenda <> nil) then
    FFrmAgendaPostAgenda.Release;
  if (FFrameAnexos <> nil) then
    FreeAndNil(FFrameAnexos);
end;

procedure TFrmAgendaEditor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    if PnlConsultaEquipamento.Visible then
    begin
      Ocultar(PnlConsultaEquipamento);
      EdtEquipamentoÎEquipamentoÎDESCRICAO.SetFocusWR;
      Key := 0;
    end;
    if PnlConsultaProduto.Visible then
    begin
      Ocultar(PnlConsultaProduto);
      EdtProcedimentoÎProdutoÎDESCRICAO.SetFocusWR;
      Key := 0;
    end;
  end;
  if (Key = VK_RETURN) and meMessage.Focused then
    Key := 0;
  inherited;
  if (Key = VK_RETURN) then
  begin
    if teSubject.Focused then
    begin
      BtnConsultarClick(nil);
      Exit;
    end;
    if PnlConsultaEquipamento.Visible then
    begin
      Ocultar(PnlConsultaEquipamento);
      EdtEquipamentoÎEquipamento.Text := Equipamento.FieldByName('CODIGO').AsString;
      EdtEquipamentoÎEquipamentoÎDESCRICAO.SetFocusWR;
      Key := 0;
    end;
    if PnlConsultaProduto.Visible then
    begin
      Ocultar(PnlConsultaProduto);
      EdtProcedimentoÎProduto.Text := Produto.FieldByName('CODIGO').AsString;
      EdtProcedimentoÎProdutoÎDESCRICAO.SetFocusWR;
      Key := 0;
    end;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
  case Key of
    VK_F1 : BtnConsultarClick(nil);
    VK_F4 : GrupoDadosCliente.Expanded := not GrupoDadosCliente.Expanded;
    VK_F5 : BtnSalvarAlteracoesClienteClick(nil);
  end;
end;

procedure TFrmAgendaEditor.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if EdtDataFatura.Date > 0 then
  begin
    EdtProcedimentoÎProduto.Enabled  := False;
    EdtProcedimentoÎProdutoÎDESCRICAO.Enabled     := False;
    EdtEquipamentoÎEquipamento.Enabled := False;
    EdtEquipamentoÎEquipamentoÎDESCRICAO.Enabled    := False;
    EdtCondicaoAgePagtoÎCondicaoPagto.Enabled := False;
    EdtProcedimentoÎProdutoÎVALOR.Enabled := False;
  end;
  inherited;
  if FrmAgenda.Bloqueado then
  begin
    GrupoCabecalho.Enabled    := False;
    GrupoProcedimento.Enabled := False;
    GrupoEquipamento.Enabled  := False;
    GrupoResponsavel.Enabled  := False;
    GrupoCliente.Enabled      := False;
    GrupoCondicaoPagto.Enabled:= False;
    GrupoFuncionario.Enabled  := False;
    GrupoPedidos.Enabled      := False;
    Faturar1.Enabled := False;
  end;
  cxPropertiesStore1.RestoreFrom;

  for I := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TcxTextEdit then
      TcxTextEdit(Components[i]).Properties.ReadOnly     := TcxTextEdit(Components[i]).Properties.ReadOnly or Self.ReadOnly
    else if Components[i] is TcxCurrencyEdit then
      TcxCurrencyEdit(Components[i]).Properties.ReadOnly := TcxCurrencyEdit(Components[i]).Properties.ReadOnly or Self.ReadOnly
    else if Components[i] is TcxButtonEdit then
    begin
      TcxButtonEdit(Components[i]).Properties.ReadOnly   := TcxButtonEdit(Components[i]).Properties.ReadOnly or Self.ReadOnly;
      TcxButtonEdit(Components[i]).Properties.Buttons[TcxButtonEdit(Components[i]).Properties.Buttons.Count - 1].Enabled := not Self.ReadOnly;
    end;
  end;

  CbPrioridade.Enabled := not Self.ReadOnly;
  icbShowTimeAs.Properties.ReadOnly := True; //Este item nunca pode ser alterado
  EdtProtocolo.Properties.ReadOnly  := True; //Este item nunca pode ser alterado
  teSubject.Properties.ReadOnly := (EdtResponsavelÎPessoas.Text <> '') or Self.ReadOnly;
  with EdtCodResponsavel.Properties do
  begin
    ReadOnly := not UCControls1.GetComponentRight(LbUCResponsavel).Enabled;
    Buttons[0].Enabled := not ReadOnly;
  end;
  EdtResponsavel.Properties.ReadOnly := EdtCodResponsavel.Properties.ReadOnly;
  if (teSubject.Text = '') and (EdtResponsavelÎPessoas.Text <> '') then
    EdtResponsavelÎPessoas.Properties.OnChange(nil);
  EdtResponsavelÎPessoas.SetFocusWR;  //*)

  Caption := Caption + ' - Protocolo: ' + EdtProtocolo.Text;
  if not VarIsNull(Event.ID) then
    FrmAgenda.SetLido(Event.ID, True);
end;

procedure TFrmAgendaEditor.GerarContratoProposta1Click(Sender: TObject);
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
var
  WinWord, Docs, Doc: Variant;
  QuerX : TIBQuery;
  ACaminhoAnexos, ANomeArquivo : String;
  i : Integer;
  ADocWord : TDocumentoWord;
begin
  inherited;
  ACaminhoAnexos := GetCaminhoGED_Agenda(VarToStrDef(Event.ID,''));
  ADocWord := TDocumentoWord.Create;
  try
    if OpenDialog1.Execute then
      ADocWord.Inicializar(OpenDialog1.FileName)
    else
      Exit;

    //Dados do responsável
    ADocWord.PreencheTag('CLI_RAZAO', teSubject.Text);
    ADocWord.PreencheTag('CLI_ENDERECO', EdtEndereco.Text);
    ADocWord.PreencheTag('CLI_NUMERO', EdtNumero.Text);
    ADocWord.PreencheTag('CLI_CIDADE', LblCidadeÎCidadesÎDESCRICAO.Caption);
    ADocWord.PreencheTag('CLI_CEP', EdtCEP.Text);
    ADocWord.PreencheTag('CLI_TELEFONE', EdtTelefone.Text);
    ADocWord.PreencheTag('CLI_EMAIL', EdtEmail.Text);

    //Dados do Agendamento
    ADocWord.PreencheTag('AGE_SETOR', LblSetorÎSetorÎDESCRICAO.Caption);
    ADocWord.PreencheTag('AGE_DATA_EXTENSO', FormatDateTime('dddddd', deStart.Date));
    ADocWord.PreencheTag('AGE_DATA', deStart.Text);
    ADocWord.PreencheTag('AGE_HORA', teStart.Text);
    ADocWord.PreencheTag('AGE_CONTATO', teLocation.Text);
    ADocWord.PreencheTag('AGE_EQUIPAMENTO', EdtEquipamentoÎEquipamentoÎDESCRICAO.Text);
    ADocWord.PreencheTag('AGE_RESPONSAVEL', EdtResponsavel.Text);
    ADocWord.PreencheTag('AGE_FUNCIONARIO', EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text);
    ADocWord.PreencheTag('AGE_FATURAMENTO', EdtDataFatura.Text);
    ADocWord.PreencheTag('AGE_PRIORIDADE', CbPrioridade.Text);
    ADocWord.PreencheTag('AGE_SITUACAO', CbSituacao.Text);
    ADocWord.PreencheTag('AGE_MENSALIDADE', EdtMensalidade.Text);
    ADocWord.PreencheTag('AGE_CONDICAOPAGTO', LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO.Caption);
    ADocWord.PreencheTag('AGE_VALOR', EdtProcedimentoÎProdutoÎVALOR.Text);

    //Salva o documento
    if (EdtResponsavelÎPessoas.Text <> '') and DirectoryExists(ACaminhoAnexos) then
    begin
      if not DirectoryExists(ACaminhoAnexos) then
        SysUtils.ForceDirectories(ACaminhoAnexos);
      if DirectoryExists(ACaminhoAnexos) then
      begin
        ANomeArquivo := ExtractFileName(OpenDialog1.FileName);
        I := 1;
        while FileExists(ACaminhoAnexos + ANomeArquivo) do
        begin
          ANomeArquivo := ExtractFileNameWithoutExt(OpenDialog1.FileName) + '-' + IntToStr(I) + ExtractFileExt(OpenDialog1.FileName);
          Inc(I);
        end;
        ADocWord.Salvar(ACaminhoAnexos + ANomeArquivo);
        if ShowMessageWR('Documento gerado com sucesso! O documento foi anexado a agenda.' + sLineBreak + 'Deseja enviar por email?', MB_ICONQUESTION) = mrYes then
        begin
          FAnexo := ACaminhoAnexos + ANomeArquivo;
          EnviarEmail1Click(nil);
        end;
      end else
      begin
        ShowMessageWR('Não foi possível salvar o documento gerado como anexo. Salve em outro local.');
        ADocWord.Abrir;
      end;
    end;
  finally
    ADocWord.Free;
  end;
end;

function TFrmAgendaEditor.GetCodigoEvento: string;
begin
  if VarIsNull(Event.ID) then
  begin
    if FCodigoProvisorio = '' then
    begin
      FCodigoProvisorio := TGUID.NewGuid.ToString;
      //Atribui o código provisório no campo PROTOCOLO para ser substituído no OnBeforePost
      Event.SetCustomFieldValueByName('PROTOCOLO', FCodigoProvisorio);
    end;
    Result := FCodigoProvisorio;
  end else
    Result := VarToStr(Event.ID);
end;

function TFrmAgendaEditor.GetHelperClass: TcxSchedulerEditorHelperClass;
begin
  Result := TcxSchedulerEventEditorFormHelperWR;
end;

procedure TFrmAgendaEditor.GrupoInformacaesButton0Click(Sender: TObject);
var
  AVisible : Boolean;
begin
//  dxLayoutControl1.BeginUpdate;
  try
    AVisible := Boolean(GrupoInformacaes.ButtonOptions.Buttons[0].Tag);
    GrupoProcedimento.Visible         := AVisible;
    PnlTaskComplete.Visible := AVisible;
    pnlTime.Visible         := AVisible;
    GrupoEquipamento.Visible          := AVisible;
    GrupoResponsavel.Visible          := AVisible;
    GrupoPedidos.Visible              := AVisible;
    PnlPlaceHolder.Visible  := AVisible;
    PnlDadosMod.Visible               := AVisible;
    GrupoFuncionario.Visible          := AVisible;
    GrupoCondicaoPagto.Visible        := AVisible;
    PnlDadosMod.Top                   := 0;
    GrupoInformacaes.ButtonOptions.Buttons[0].Tag := Integer(not AVisible);
  finally
//    dxLayoutControl1.EndUpdate;
  end;
end;

procedure TFrmAgendaEditor.GrupoInformacaesButton1Click(Sender: TObject);
begin
  inherited;
  MenuGrupos.PopupOnMouse;
end;

procedure TFrmAgendaEditor.Histrico1Click(Sender: TObject);
begin
  inherited;
  with TFrmAgendaHistorico.Create(nil) do
  try
    Agenda_Historico.Close;
    Agenda_Historico.SelectSQL[2] := 'where (A.CODIGO = ' + QuotedStr(Event.ID) + ') ';
    Agenda_Historico.Open;
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmAgendaEditor.Horarios1Click(Sender: TObject);
begin
  inherited;
  pnlTime.Visible := not pnlTime.Visible;
end;

procedure TFrmAgendaEditor.Agenda_SeguidorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Agenda_SeguidorCODAGENDA.AsString := CodigoEvento;
end;

procedure TFrmAgendaEditor.Agenda_SeguidorBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Agenda_Seguidor.ParamByName('CodAgenda').AsString := CodigoEvento;
end;

procedure TFrmAgendaEditor.Imprimir1Click(Sender: TObject);
begin
  inherited;
  FrmAgenda.Agenda.Locate('CODIGO', Event.ID, []);
  with TImpriAgendaChamado.Create(nil) do
  try
    Clientes.Open;
    QuickRep1.PreviewModal;
  finally
    Destroy;
  end;
end;

procedure TFrmAgendaEditor.InformaesdeCriaoeAlterao1Click(Sender: TObject);
begin
  inherited;
  PnlDadosMod.Visible := not PnlDadosMod.Visible;
  PnlDadosMod.Top     := 0;
end;

procedure TFrmAgendaEditor.LoadEventValuesIntoControls;
  procedure CarregaCampoPessoa(AComponente: TcxButtonEdit; ACampo: string);
  var
    APessoa : TPessoaRetorno;
  begin
    APessoa := TPessoaRetorno.Create;
    APessoa.Codigo    := VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_CODIGO'), '');
    APessoa.Tipo      := PessoaListaTipos.GetTipo(VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_TIPO'), ''));
    APessoa.Sequencia := StrToInt(VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_SEQUENCIA'), '0'));
    FControleWR.FindComponente(AComponente).ValorComponentePessoa := APessoa;
  end;
var
  QuerX : TIBQuery;
  ACodUsuario : Integer;
  APessoa : TPessoaRetorno;
  ATipoFiltro : TTipoFiltroAgendamento;
  AValue : Variant;
begin
  Helper.BeginUpdate;
  try
    if VarIsNull(Event.ID) then
    begin
      FrmAgenda.FCodAgendaEditorNovo:=  GetProximoCodigoSP(FrmAgenda.SPAgenda);
      FrmAgenda.AgendaEventoSelecionado.Open;
      FrmAgenda.AgendaEventoSelecionado.Edit;
      FrmAgenda.AgendaEventoSelecionadoCODIGO.AsVariant  := FrmAgenda.FCodAgendaEditorNovo;
      FrmAgenda.AgendaEventoSelecionado.Post;
      TFrameHistorico.CarregaFrame(FFrameHistoricoEditor, PnlFrameHistorico, FrmAgenda.UCHist_Selecionado, FrmAgenda.TransaHistoricoAux);//EditorAgendaInsercao(FFrameHistoricoEditor, PnlFrameHistorico)
    end
    else
      TFrameHistorico.CarregaFrame(FFrameHistoricoEditor, PnlFrameHistorico, FrmAgenda.UCHist_Selecionado, nil{FrmAgenda.Transa});
//      TFrameHistorico.carEditorAgendaEdicao(FrameHistorico, PnlFrameHistorico, FrmAgenda.DSAgendaEventoSelecionado);

    CBoxVisualiza.Properties.Items.Clear;
    for ATipoFiltro := Low(TTipoFiltroAgendamento) to High(TTipoFiltroAgendamento) do
      CBoxVisualiza.Properties.Items.Add(TipoFiltroAgendamentoToStr(ATipoFiltro));

    CarregaPrioridades;

    CarregaCampoPessoa(EdtResponsavelÎPessoas, 'CLIENTE');
    CarregaCampoPessoa(EdtFuncionarioÎPessoas, 'FUNCIONARIO');

    AValue := Event.GetCustomFieldValueByName('TIPO_AGENDAMENTO');
    if VarIsNull(AValue) then
      FEventoTipo := etAgendamento
    else
      FEventoTipo := EventoTipoStrToEnum(AValue);
    FAtivo                                                := VarToStr(Event.GetCustomFieldValueByName('ATIVO'));
    EdtSolicitante.EditValue                              := Event.GetCustomFieldValueByName('SOLICITANTE');
    EdtProcedimentoÎProduto.EditValue                     := Event.GetCustomFieldValueByName('CODPRODUTO');
    EdtProcedimentoÎProdutoÎDESCRICAO.EditValue           := Event.GetCustomFieldValueByName('PRODUTO');
    EdtEquipamentoÎEquipamentoÎDESCRICAO.EditValue        := Event.GetCustomFieldValueByName('EQUIPAMENTO');
    EdtEquipamentoÎEquipamento.EditValue                  := Event.GetCustomFieldValueByName('CODEQUIPAMENTO');
    EdtFuncionarioÎPessoasÎRAZAOSOCIAL.EditValue          := Event.GetCustomFieldValueByName('FUNCIONARIO');
    EdtProcedimentoÎProdutoÎVALOR.Value                   := StrToFloatDef(VarToStrDef(Event.GetCustomFieldValueByName('VALOR'), '0'), 0);
    EdtDataFatura.EditValue                               := Event.GetCustomFieldValueByName('DT_FATURAMENTO');
    EdtPedido.EditValue                                   := Event.GetCustomFieldValueByName('CODVENDA');
    case FrmAgenda.TipoVisualizacaoAgenda of
      vaUsuario : EdtCodResponsavel.EditValue             := Event.GetCustomFieldValueByName('CODUSUARIO_RESPONSAVEL');
       vaTitulo : EdtCodResponsavel.EditValue             := CodigoUsuario;
    end;
    EdtSetorÎSetor.EditValue                              := Event.GetCustomFieldValueByName('CODSETOR');
    EdtMensalidade.EditValue                              := Event.GetCustomFieldValueByName('MENSALIDADE');
    EdtCondicaoAgePagtoÎCondicaoPagto.EditValue           := Event.GetCustomFieldValueByName('CODCONDICAOPAGTO');
//    LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO.EditValue := Event.GetCustomFieldValueByName('CONDICAOPAGTO');
    if not VarIsNull(Event.GetCustomFieldValueByName('VISUALIZA')) then
    begin
      //CBoxVisualiza.EditValue := Integer(Event.GetCustomFieldValueByName('VISUALIZA'));
      CBoxVisualiza.ItemIndex := Event.GetCustomFieldValueByName('VISUALIZA');//StrToInt(CBoxVisualiza.EditValue);
    end else
      CBoxVisualiza.ItemIndex := 0;
    CbPrioridade.EditValue := VarToIntDef(cxFieldValueToVariant(Event.GetCustomFieldValueByName('PRIORIDADE')),0);// Event.GetCustomFieldValueByName('PRIORIDADE').AsInteger
    if not VarIsNull(Event.ID) then
    begin
      EdtProtocolo.Text := Event.GetCustomFieldValueByName('PROTOCOLO');
      CbSituacao.Text := Procura('DESCRICAO', 'STATUS', VarToStrDef(Event.GetCustomFieldValueByName('CODSTATUS'), ''));
//      Situacao.Locate('CODIGO', Event.GetCustomFieldValueByName('CODSTATUS'), []);
    end;
    inherited;
    if VarIsNull(Event.ID) then
    begin
      FEventoTipo := etAgendamento;
      if FrmAgenda.SchedulerDBStorage.ResourceCount > 0 then
        ACodUsuario := FrmAgenda.SchedulerDBStorage.ResourceIDs[0]
      else
        ACodUsuario := CodigoUsuario;
      if Trim(EdtCodResponsavel.Text) = '' then
        EdtCodResponsavel.Text := ACodUsuario.ToString;
      QuerX := GeraQuery;
      try
        //Dá prioridade para os setores em que o funcionário for responsável
        //Caso o funcionário não seja responsável por nenhum setor, pega o primeiro setor em que ele faz parte
        QuerX.SQL.Text := 'select U.CODFUNCIONARIO, min(coalesce(S2.CODIGO, SF.CODSETOR)) as CODSETOR ' +
                          'from USUARIO U ' +
                          'left join SETOR_FUNCIONARIO SF on (SF.CODFUNCIONARIO = U.CODFUNCIONARIO) ' +
                          'left join SETOR S2 on (S2.PESSOA_RESPONSAVEL_CODIGO = U.CODFUNCIONARIO) ' +
                          'left join SETOR S on (S.CODIGO = SF.CODSETOR) ' +
                          'where (U.CODIGO = :COD) ' +
                          '      and not(S.CODIGO is null) ' + //<-- evita pegar um setor que não existe por lixo no banco
                          'group by 1';
        QuerX.Params[0].AsInteger := ACodUsuario;
        QuerX.Open;
        FControleWR.SetCodigoPessoa(EdtFuncionarioÎPessoas, QuerX.FieldByName('CODFUNCIONARIO').AsString, 'FUN');
        if TConfig.ReadBoolean('AGENDA_PREENCHER_SETOR') then
        begin
          if (QuerX.FieldByName('CODSETOR').AsString <> '') and (EdtSetorÎSetor.Text = '') then
            EdtSetorÎSetor.Text := QuerX.FieldByName('CODSETOR').AsString;
        end;
      finally
        QuerX.Free;
      end;
    end;
  finally
    Helper.EndUpdate;
  end;
end;

procedure TFrmAgendaEditor.EnviarEmail1Click(Sender: TObject);
var
  AConteudo: string;
begin
  inherited;
  AConteudo := 'Protocolo: ' + EdtProtocolo.Text + sLineBreak +
               'Responsável/Assunto: ' + teSubject.Text + sLineBreak +
               'Contato: ' + teLocation.Text + sLineBreak +
               'Solicitante: ' + EdtSolicitante.Text + sLineBreak +
               'Título: ' + icbLabel.Text + sLineBreak +
               'Procedimento: ' + EdtProcedimentoÎProdutoÎDESCRICAO.Text + sLineBreak +
               'Valor do procedimento: ' + EdtProcedimentoÎProdutoÎVALOR.Text + sLineBreak +
               'Condição de Pagamento: ' + LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO.Caption + sLineBreak +
               'Mensalidade: ' + EdtMensalidade.Text + sLineBreak +
               'Data: ' + deStart.Text + ' ' + teStart.Text + sLineBreak +
               'Equipamento: ' + EdtEquipamentoÎEquipamentoÎDESCRICAO.Text;
  TFrmEmail.GerarEmail(Self, Procura('EMAIL', 'PESSOAS', FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas)),
                       'Histórico do Agendamento', AConteudo, FAnexo);
end;

procedure TFrmAgendaEditor.MenuGruposPopup(Sender: TObject);
begin
  inherited;
  Procedimento1.Checked    := GrupoProcedimento.Visible;
  ConclusaoTarefa1.Checked := PnlTaskComplete.Visible;
  Horarios1.Checked        := pnlTime.Visible;
  Equipamentos1.Checked    := GrupoEquipamento.Visible;
  Responsavel1.Checked     := GrupoResponsavel.Visible;
  Faturamento2.Checked     := GrupoPedidos.Visible;
  PlaceHolder1.Checked     := PnlPlaceHolder.Visible;
  InformaesdeCriaoeAlterao1.Checked := PnlDadosMod.Visible;
  Atribuidoa1.Checked      := GrupoFuncionario.Visible;
  CondiodePagamento1.Checked := GrupoCondicaoPagto.Visible;
end;

procedure TFrmAgendaEditor.mnuVisualizarFinanceiroPessoaClick(Sender: TObject);
begin
  with TFrmAgendaFinanceiro.Create(Self) do
  begin
    PessoaResponsavelCodigo := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
    Show;
  end;
end;

procedure TFrmAgendaEditor.MostraOculta(ABotao: TcxButton; AComp: TComponent; AVisible: Boolean);
begin
  if (AComp is TdxLayoutGroup) then
    TdxLayoutGroup(AComp).Visible := AVisible
  else
  if (AComp is TdxLayoutItem) then
    TdxLayoutItem(AComp).Visible := AVisible
  else
  if (AComp is TPanel) then
    TPanel(AComp).Visible := AVisible
  else
    raise EWRException.Create('Componente não tratado!');
  if AVisible then
    ABotao.LookAndFeel.Kind := lfUltraFlat
  else
    ABotao.LookAndFeel.Kind := lfStandard;
end;

procedure TFrmAgendaEditor.MostraOcultaContato(ABotao: TcxButton; AComp: TComponent; AVisible: Boolean);
begin
  MostraOculta(ABotao, AComp, AVisible);
  LayoutEdtSolicitante.Visible := AVisible;
end;

procedure TFrmAgendaEditor.NovoEmail1Click(Sender: TObject);
var
  ADataAtual: TDateTime;
begin
  inherited;
  TFrmEMail.GerarEmail(Self, Procura('EMAIL', 'PESSOAS', FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas)),
   'Contato', '', FAnexo);
end;

procedure TFrmAgendaEditor.AbrePedido(ANaoExibirEFaturar: Boolean = False);
var
  ATmpCod : String;
  QuerX : TIBQuery;
  ACodigo : TCodBarras;
  APessoa : TPessoaRetorno;
  AFrameVenda : TFrame_Venda_Mestre;
begin
  ATmpCod := '';
//  AFrameVenda := TFrmVenda.Create(self);
//  if Assigned(FrmVenda.OnShow) then
//    FrmVenda.OnShow(FrmVenda);


  AFrameVenda := TFrame_Venda_Mestre(CadastroTag_Frame(Self, Tag_Venda));
  with AFrameVenda do
  try
    if (EdtPedido.Text <> '') and (Procura('CODIGO', 'VENDA', EdtPedido.Text) <> '') then
    begin
      Cadastro.Close;
      Cadastro.SQL[1] := 'where (CODIGO = ' + QuotedStr(EdtPedido.Text) + ')';
      Cadastro.Open;
      ATmpCod := EdtPedido.Text;
      if ANaoExibirEFaturar and not (Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0) then
      BtnFaturamentoClick(nil);
//        FrmVenda.btn_FaturamentoClick(nil);
    end
    else if (EdtPedido.Text = '') or ((EdtPedido.Text <> '') and (ShowMessageWR('O pedido associado a este agendamento não foi encontrado. Deseja abrir um novo pedido?', MB_ICONQUESTION) = mrYes)) then
    begin
      if btnNovo.Enabled then
        btnNovo.Click
      else begin
        ShowMessageWR('Não foi possível criar um novo pedido. Verifique se você possui permissões para esta ação.', MB_ICONWARNING);
        Exit;
      end;
      ATmpCod := Cadastro.FieldByName('CODIGO').AsString;
      APessoa := Self.FControleWR.FindComponente(Self.EdtResponsavelÎPessoas).Pessoa;
      Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := IfThen(Assigned(APessoa.Tipo), APessoa.Tipo.Codigo, '');
      Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := APessoa.Codigo;
      Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoa.Sequencia;
      Cadastro.FieldByName('RAZAOSOCIAL').AsString                   := teSubject.Text;
      Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString     := FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas);
      QuerX := GeraQuery;
      try
        ACodigo := Barras_Trata(EdtProcedimentoÎProduto.Text);
        QuerX.SQL.Text := 'select * ' +
                          'from PRODUTO_COMPOSICAO ' +
                          'where (CODPRODUTO_COMPOSICAO = :Cod)';
        QuerX.Params[0].AsString := ACodigo.Codigo;
        QuerX.Open;
        //Se tiver composição, anexa os produtos da composição na venda
        if not QuerX.IsEmpty then
        begin
          while not QuerX.Eof do
          begin
//            FrmVenda.
            EdtCodProduto.Text         := QuerX.FieldByName('CODPRODUTO').AsString;
            EdtQuant.Value             := QuerX.FieldByName('QUANT').AsFloat * ACodigo.Quantidade;   // TODO: Erro não funciona mais assim
            BtnAdicionarProdutoClick(BtnAdicionarProduto);                                           // Usar função ValidaMedidas
            QuerX.Next;
          end;
        end else
        begin
          //Se não for composição, adiciona como produto/serviço, com o valor informado no agendamento
          if (ACodigo.Codigo <> '') or (EdtProcedimentoÎProdutoÎDESCRICAO.Text <> '') or (EdtProcedimentoÎProdutoÎVALOR.Value <> 0) then
          begin
            EdtCodProduto.Text            := ACodigo.Codigo;
            edtProdutoDescricao.Text      := EdtProcedimentoÎProdutoÎDESCRICAO.Text;
            EdtQuant.Value                := ACodigo.Quantidade;                    // TODO: Erro não funciona mais assim
            Self.SetFocusedControl(Self);                                           // Usar função ValidaMedidas
            EdtValor.Value                := EdtProcedimentoÎProdutoÎVALOR.Value / ACodigo.Quantidade;
            BtnAdicionarProdutoClick(BtnAdicionarProduto);
          end;
        end;
        EdtCondicaoPagtoîCondicaoPagto.EditValue := EdtCondicaoAgePagtoÎCondicaoPagto.EditValue;
        btnParcelasClick(nil);
        if ANaoExibirEFaturar then
        begin
          btnConfirmar.Click;
//          if btnFaturamento.Enabled and libtnFaturamento.Visible then
//            btnFaturamento.Click
//          else
          begin
            ShowMessageWR('Não foi possível faturar este pedido. Verifique se você possui permissões para esta ação.', MB_ICONWARNING);
            Exit;
          end;
        end;
      finally
        QuerX.Free;
      end;
    end;
    if not ANaoExibirEFaturar then
      Show;
    if WindowState = wsMinimized then
      WindowState := wsMaximized;
    repeat
      try
        Application.HandleMessage;
      except
        Application.HandleException(nil);
      end;
    until not Visible;
  finally
    if Codigo = '' then
      Codigo := '0';
  end;


//  with FrmVenda do
//  try
//    if (EdtPedido.Text <> '') and (Procura('CODIGO', 'VENDA', EdtPedido.Text) <> '') then
//    begin
//      Cadastro.Close;
//      Cadastro.SQL[1] := 'where (CODIGO = ' + QuotedStr(EdtPedido.Text) + ')';
//      Cadastro.Open;
//      ATmpCod := EdtPedido.Text;
//      if ANaoExibirEFaturar and not (Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0) then
//      BtnFaturamentoClick(nil);
////        FrmVenda.btn_FaturamentoClick(nil);
//    end
//    else if (EdtPedido.Text = '') or ((EdtPedido.Text <> '') and (ShowMessageWR('O pedido associado a este agendamento não foi encontrado. Deseja abrir um novo pedido?', MB_ICONQUESTION) = mrYes)) then
//    begin
//      if btnNovo.Enabled then
//        btnNovo.Click
//      else begin
//        ShowMessageWR('Não foi possível criar um novo pedido. Verifique se você possui permissões para esta ação.', MB_ICONWARNING);
//        Exit;
//      end;
//      ATmpCod := Cadastro.FieldByName('CODIGO').AsString;
//      APessoa := Self.FControleWR.FindComponente(Self.EdtResponsavelÎPessoas).Pessoa;
//      Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := IfThen(Assigned(APessoa.Tipo), APessoa.Tipo.Codigo, '');
//      Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := APessoa.Codigo;
//      Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoa.Sequencia;
//      Cadastro.FieldByName('RAZAOSOCIAL').AsString                   := teSubject.Text;
//      Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString     := FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas);
//      QuerX := GeraQuery;
//      try
//        ACodigo := Barras_Trata(EdtProcedimentoÎProduto.Text);
//        QuerX.SQL.Text := 'select * ' +
//                          'from PRODUTO_COMPOSICAO ' +
//                          'where (CODPRODUTO_COMPOSICAO = :Cod)';
//        QuerX.Params[0].AsString := ACodigo.Codigo;
//        QuerX.Open;
//        //Se tiver composição, anexa os produtos da composição na venda
//        if not QuerX.IsEmpty then
//        begin
//          while not QuerX.Eof do
//          begin
////            FrmVenda.
//            EdtCodProduto.Text         := QuerX.FieldByName('CODPRODUTO').AsString;
//            EdtQuant.Value             := QuerX.FieldByName('QUANT').AsFloat * ACodigo.Quantidade;   // TODO: Erro não funciona mais assim
//            BtnAdicionarProdutoClick(BtnAdicionarProduto);                                           // Usar função ValidaMedidas
//            QuerX.Next;
//          end;
//        end else
//        begin
//          //Se não for composição, adiciona como produto/serviço, com o valor informado no agendamento
//          if (ACodigo.Codigo <> '') or (EdtProcedimentoÎProdutoÎDESCRICAO.Text <> '') or (EdtProcedimentoÎProdutoÎVALOR.Value <> 0) then
//          begin
//            EdtCodProduto.Text            := ACodigo.Codigo;
//            edtProdutoDescricao.Text      := EdtProcedimentoÎProdutoÎDESCRICAO.Text;
//            EdtQuant.Value                := ACodigo.Quantidade;                    // TODO: Erro não funciona mais assim
//            Self.SetFocusedControl(Self);                                           // Usar função ValidaMedidas
//            EdtValor.Value                := EdtProcedimentoÎProdutoÎVALOR.Value / ACodigo.Quantidade;
//            BtnAdicionarProdutoClick(BtnAdicionarProduto);
//          end;
//        end;
//        FrmVenda.EdtCondicaoPagtoîCondicaoPagto.EditValue := EdtCondicaoAgePagtoÎCondicaoPagto.EditValue;
//        btnParcelasClick(nil);
//        if ANaoExibirEFaturar then
//        begin
//          btnConfirmar.Click;
////          if btnFaturamento.Enabled and libtnFaturamento.Visible then
////            btnFaturamento.Click
////          else
//          begin
//            ShowMessageWR('Não foi possível faturar este pedido. Verifique se você possui permissões para esta ação.', MB_ICONWARNING);
//            Exit;
//          end;
//        end;
//      finally
//        QuerX.Free;
//      end;
//    end;
//    if not ANaoExibirEFaturar then
//      Show;
//    if WindowState = wsMinimized then
//      WindowState := wsMaximized;
//    repeat
//      try
//        Application.HandleMessage;
//      except
//        Application.HandleException(nil);
//      end;
//    until not Visible;
//  finally
//    if Codigo = '' then
//      Codigo := '0';
//  end;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODIGO, PESSOA_RESPONSAVEL_CODIGO, PESSOA_RESPONSAVEL_TIPO, PESSOA_RESPONSAVEL_SEQUENCIA, ' +
                      '       DT_FATURAMENTO ' +
                      'from VENDA ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ATmpCod;
    QuerX.Open;
    if QuerX.FieldByName('CODIGO').AsString <> '' then
    begin
      FModified := True;
      EdtPedido.Text := ATmpCod;
      //Da forma abaixo, inclui a mensagem, mais como esta em uma transação diferente, não visualiza a mensagem, tem que fechar e abrir novamente.
      //AdicionaRegistro_Atividade(TransaEditor, CodigoEvento, 'Pedido gerado: '+ATmpCod, 0, TPermissaoMensagem.psmPublico);
      if MatchStr(Trim(EdtResponsavelÎPessoas.Text), ['', '0']) then
      begin
        APessoa := TPessoaRetorno.Create;
        APessoa.Codigo    := QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
        APessoa.Tipo      := PessoaListaTipos.GetTipo(QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString);
        APessoa.Sequencia := QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
        FControleWR.FindComponente(EdtResponsavelÎPessoas).ValorComponentePessoa := APessoa;
      end;
      if QuerX.FieldByName('DT_FATURAMENTO').AsDateTime > 0 then
        EdtDataFatura.Date := QuerX.FieldByName('DT_FATURAMENTO').AsDateTime
      else
        EdtDataFatura.Clear;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAgendaEditor.Paciente1Click(Sender: TObject);
var
  AKey : Word;
begin
  inherited;
  AKey := VK_F3;
  EdtResponsavelÎPessoas.onKeyDown(EdtResponsavelÎPessoas, AKey, []);
end;

procedure TFrmAgendaEditor.Pedido1Click(Sender: TObject);
begin
  inherited;
  AbrePedido;
end;

procedure TFrmAgendaEditor.PlaceHolder1Click(Sender: TObject);
begin
  inherited;
  PnlPlaceHolder.Visible := not PnlPlaceHolder.Visible;
end;

procedure TFrmAgendaEditor.PnlConsultaEquipamentoExit(Sender: TObject);
begin
  Ocultar(PnlConsultaEquipamento);
end;

procedure TFrmAgendaEditor.PnlConsultaProdutoExit(Sender: TObject);
begin
  Ocultar(PnlConsultaProduto);
end;

procedure TFrmAgendaEditor.PopupMenu1Popup(Sender: TObject);
begin
  mnuVisualizarFinanceiroPessoa.Enabled := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas) <> '';
  AlterarCliente1.Visible := UCControls1.GetComponentRight(LbUCResponsavel).Enabled;
end;

procedure TFrmAgendaEditor.Responsavel1Click(Sender: TObject);
begin
  inherited;
  GrupoResponsavel.Visible := not GrupoResponsavel.Visible;
end;

procedure TFrmAgendaEditor.S1Click(Sender: TObject);
begin
  inherited;
  Agenda_Seguidor.Open;
  ShowPanelForm(PnlSeguidores, bsSizeable);
end;

procedure TFrmAgendaEditor.seTaskCompleteExit(Sender: TObject);
begin
  inherited;
  seTaskComplete.Value := EnsureRange(seTaskComplete.Value, 0, 100);
end;

procedure TFrmAgendaEditor.seTaskCompletePropertiesChange(Sender: TObject);
begin
  if seTaskComplete.Text <> '' then
    seTaskComplete.Value := EnsureRange(seTaskComplete.Value, 0, 100);
  inherited seTaskCompleteChange(Sender);
  VerificaModificado;
end;

procedure TFrmAgendaEditor.teSubjectKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
//  if (key = #13) then
//    FFrameRegistro_Atividade.MemoMensagem.SetFocus;
end;

procedure TFrmAgendaEditor.TimerBotoesTimer(Sender: TObject);
var
  AModificado : Boolean;
begin
  AModificado := FModified or
                 teSubject.EditModified or
                 teLocation.EditModified or
                 meMessage.EditModified or
                 cbAllDayEvent.EditModified or
                 icbShowTimeAs.EditModified or
                 (icbLabel.EditModified and (icbLabel.ItemIndex <> -1)) or
                 (pnlResource.Visible and cbResources.EditModified) or
                 (pnlReminder.Visible and (cbReminder.EditModified or cbReminderMinutesBeforeStart.EditModified));

  btnOk.Visible     := AModificado;
  btnCancel.Visible := AModificado;
  btnFechar.Visible := not AModificado;
end;

procedure TFrmAgendaEditor.UpdateEventValuesFromControls;
  procedure SetValorNumero(ACampo: string; AValor: Variant);
  begin
    try
      if not VarIsNull(AValor) then
      begin
        if VarToStrDef(AValor, '') = '' then
          AValor := Null
        else
          AValor := VarAsType(AValor, varDouble);
      end;
      Event.SetCustomFieldValueByName(ACampo, AValor)
    except
      ShowMessageWR('Valor inválido "' + VarToStrDef(AValor, '') + '" para o campo ' + ACampo);
      Abort;
    end;
  end;
var
  QuerX : TIBQuery;
  ACodGrupo : String;
  ACodCondicaoPagto : Integer;
  APessoa : TPessoaRetorno;
begin
  SetCampoPessoa(EdtResponsavelÎPessoas, 'CLIENTE');
  SetCampoPessoa(EdtFuncionarioÎPessoas, 'FUNCIONARIO');

  if not(FrmAgenda.Scheduler.EventOperations.ReadOnly) then
  begin
    Event.SetCustomFieldValueByName('CODPRODUTO', EdtProcedimentoÎProduto.EditValue);
    Event.SetCustomFieldValueByName('PRODUTO', EdtProcedimentoÎProdutoÎDESCRICAO.Text);
    Event.SetCustomFieldValueByName('CODEQUIPAMENTO', EdtEquipamentoÎEquipamento.EditValue);
    Event.SetCustomFieldValueByName('EQUIPAMENTO', EdtEquipamentoÎEquipamentoÎDESCRICAO.Text);
    Event.SetCustomFieldValueByName('VALOR', EdtProcedimentoÎProdutoÎVALOR.Value);
    Event.SetCustomFieldValueByName('CONDICAOPAGTO', LblCondicaoAgePagtoÎCondicaoPagtoÎDESCRICAO.EditValue);
  end;
  Event.SetCustomFieldValueByName('SOLICITANTE', EdtSolicitante.Text);
  Event.SetCustomFieldValueByName('FUNCIONARIO', EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text);
//Event.SetCustomFieldValueByName('CODUSUARIO_ALTERADO', CodigoUsuario);
  Event.SetCustomFieldValueByName('CODVENDA', EdtPedido.Text);
  Event.SetCustomFieldValueByName('PRIORIDADE', Integer(CbPrioridade.EditValue));
  Event.SetCustomFieldValueByName('MENSALIDADE', EdtMensalidade.EditValue);
  Event.SetCustomFieldValueByName('VISUALIZA', CBoxVisualiza.ItemIndex);
  Event.SetCustomFieldValueByName('TIPO_AGENDAMENTO', EventoTipoToStr(FEventoTipo));

  SetValorNumero('CODCONDICAOPAGTO', EdtCondicaoAgePagtoÎCondicaoPagto.EditValue);
  SetValorNumero('CODUSUARIO_RESPONSAVEL', EdtCodResponsavel.EditValue);
  SetValorNumero('CODSETOR', EdtSetorÎSetor.EditValue);
  SetValorNumero('CODSTATUS', CbSituacao.EditValue);
  if FAtivo = '' then
    Event.SetCustomFieldValueByName('ATIVO', 'S');
//  if EdtDataFatura.Text <> '' then
    Event.SetCustomFieldValueByName('DT_FATURAMENTO', EdtDataFatura.Date);
//  else
//    Event.SetCustomFieldValueByName('DT_FATURAMENTO', StrToDate('00/00/0000'));

  {if (Event.GetCustomFieldValueByName('CODSETOR') = Null) and
     (Event.GetCustomFieldValueByName('CODPRODUTO_GRUPO_WORKFLOW') = Null) then
  begin
    QuerX := GeraQuery;
    try
      ACodGrupo := Procura('CODPRODUTO_GRUPO'
      QuerX.SQL.Text := 'select first 1 CODIGO, CODSETOR ' +
                        'from PRODUTO_GRUPO_WORKFLOW ' +
                        'where (CODPRODUTO_GRUPO = :GRUPO) ' +
                        '      and (PARENT is null) ' +
                        'order by ORDEM asc';
      QuerX.Params[0].AsString := Venda_Produto.FieldByName('CODPRODUTO_GRUPO').AsString;
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        //Se existir um workflow pra esse item, seleciona o primeiro
        Event.SetCustomFieldValueByName('CODSETOR', QuerX.FieldByName('CODSETOR').AsInteger);
        Event.SetCustomFieldValueByName('CODPRODUTO_GRUPO_WORKFLOW', QuerX.FieldByName('CODIGO').AsInteger);
      end;
    finally
      QuerX.Free;
    end;
  end;}
  inherited;
end;

procedure TFrmAgendaEditor.VerificaKeyPress(var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then //#8 = Backspace
    Key := #0;
end;

{ TcxSchedulerEventEditorFormHelperWR }

procedure TcxSchedulerEventEditorFormHelperWR.Cancel(
  var AModalResult: TModalResult);
var
  AFrmEditor : TFrmAgendaEditor;
begin
  AFrmEditor := TFrmAgendaEditor(Form);
  with AFrmEditor do
  begin
    if TFrmAgenda(AFrmEditor.Parent).TransaHistoricoAux.Active then
      TFrmAgenda(AFrmEditor.Parent).TransaHistoricoAux.Rollback;
  end;
  inherited;
end;

procedure TcxSchedulerEventEditorFormHelperWR.Save(var AModalResult: TModalResult);
var
  AFrmEditor : TFrmAgendaEditor;
begin
  AFrmEditor := TFrmAgendaEditor(Form);
  with AFrmEditor do
  begin
    if Trim(EdtCodResponsavel.Text) = '' then
    begin
      ShowMessageWR('Defina um Responsável para este evento.');
      Abort;
    end;
//    if Assigned(FFrameHistoricoEditor) then
//      FFrameHistoricoEditor.SalvarMensagemPendente;
    Event.SetCustomFieldValueByName('CODAGENDA_FAQ', null);
//    if TransaEditor.Active then
//      TransaEditor.Commit;
  end;
  inherited;
end;

initialization
  RegisterClass(TFrmAgendaEditor);

end.
