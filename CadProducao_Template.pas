unit CadProducao_Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxImage, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, dxRatingControl, dxToggleSwitch, cxLabel, cxProgressBar, cxCurrencyEdit,
  cxGridLevel, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxColorEdit,
  cxGridWinExplorerView, cxDBExtLookupComboBox, System.Generics.Collections;

type
  TFrmProducao_Template = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroMODELO_GRID: TBlobField;
    CadastroATIVO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroOBSERVACAO: TStringField;
    CadastroIMAGEM: TBlobField;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem1: TdxLayoutItem;
    cxDBImage1: TcxDBImage;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    GridConsulta: TcxGrid;
    GridConsultaDBTableView1: TcxGridDBTableView;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_LOGO: TcxGridDBColumn;
    GridConsultaDBTableView1PRIORIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_PLAY: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUCAO: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1CENTROTRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_PRAZO_FINAL: TcxGridDBColumn;
    GridConsultaDBTableView1PRAZOENTREGA: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1ORDENACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1EMISSAO_OP: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FINALIZADO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO_ESTIMADO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1PCONCLUSAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1LARG: TcxGridDBColumn;
    GridConsultaDBTableView1COMP: TcxGridDBColumn;
    GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn;
    GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn;
    GridConsultaDBTableView1PATH: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1ARQUIVADO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO_INICIADO: TcxGridDBColumn;
    GridConsultaDBTableView1PROTOCOLO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_OS_EM_ANDAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_PREVISAO_ENTREGA: TcxGridDBColumn;
    GridConsultaDBTableView1PODE_ENCAMINHAR: TcxGridDBColumn;
    GridConsultaDBTableView1PODE_CANCELAR: TcxGridDBColumn;
    GridConsultaDBTableView1PODE_LIBERAR: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL_DESPERDICIO: TcxGridDBColumn;
    GridConsultaDBTableView1COLOR: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FUNCIONARIO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FUNCIONARIO_SEQUENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1FRENTE_VERSO: TcxGridDBColumn;
    GridConsultaDBTableView1CODTIPO_IMPRESSAO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_IMPRESSAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODACABAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1ACABAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1PRE_REQUISITO_CENTRO_TRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1OBS_PRODUCAO: TcxGridDBColumn;
    GridConsultaDBTableView1ACTUAL_START: TcxGridDBColumn;
    GridConsultaDBTableView1ACTUAL_FINISH: TcxGridDBColumn;
    GridConsultaDBTableView1EVENT_TYPE: TcxGridDBColumn;
    GridConsultaDBTableView1GROUP_ID: TcxGridDBColumn;
    GridConsultaDBTableView1LOCATION: TcxGridDBColumn;
    GridConsultaDBTableView1OPTIONS: TcxGridDBColumn;
    GridConsultaDBTableView1PARENT_ID: TcxGridDBColumn;
    GridConsultaDBTableView1RECURRENCE_INDEX: TcxGridDBColumn;
    GridConsultaDBTableView1RECURRENCE_INFO: TcxGridDBColumn;
    GridConsultaDBTableView1REMINDER_DATE: TcxGridDBColumn;
    GridConsultaDBTableView1REMINDER_MINUTES: TcxGridDBColumn;
    GridConsultaDBTableView1REMINDER_RESOURCES: TcxGridDBColumn;
    GridConsultaDBTableView1STATE: TcxGridDBColumn;
    GridConsultaDBTableView1TASK_INDEX: TcxGridDBColumn;
    GridConsultaDBTableView1TASK_LINKS: TcxGridDBColumn;
    GridConsultaDBTableView1TASK_STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1DURACAO_ORCADA: TcxGridDBColumn;
    GridConsultaDBTableView1DURACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUCAO_OS_PRE_REQUISITO: TcxGridDBColumn;
    GridConsultaDBTableView1TEMPO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_REVERSO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1CODLOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO_VENDA: TcxGridDBColumn;
    GridConsultaDBTableView1SEQUENCIA_PROTOCOLO: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_TRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1CODEQUIPAMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1EQUIPAMENTO: TcxGridDBColumn;
    GridConsultaDBLayoutView1: TcxGridDBLayoutView;
    GridConsultaDBLayoutView1DESCRICAO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup;
    GridConsultaDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    cxGridLevel1: TcxGridLevel;
    Consulta: TFDQuery;
    ConsultaCODIGO: TIntegerField;
    ConsultaCODPRODUCAO: TIntegerField;
    ConsultaCODCENTRO_TRABALHO: TIntegerField;
    ConsultaORDENACAO: TFloatField;
    ConsultaDESCRICAO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaDT_INICIO: TSQLTimeStampField;
    ConsultaDT_FIM: TSQLTimeStampField;
    ConsultaDT_FINALIZADO: TSQLTimeStampField;
    ConsultaDT_PREVISAO_ENTREGA: TSQLTimeStampField;
    ConsultaCOLOR: TIntegerField;
    ConsultaPRIORIDADE: TIntegerField;
    ConsultaPCONCLUSAO: TIntegerField;
    ConsultaATIVO: TStringField;
    ConsultaCODPRODUTO: TStringField;
    ConsultaPRODUTO: TStringField;
    ConsultaQUANT: TFloatField;
    ConsultaLARG: TFloatField;
    ConsultaCOMP: TFloatField;
    ConsultaESPESSURA: TFloatField;
    ConsultaQTDADEPECA: TFloatField;
    ConsultaPATH: TStringField;
    ConsultaLOCAL: TStringField;
    ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ConsultaPESSOA_FUNCIONARIO_TIPO: TStringField;
    ConsultaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField;
    ConsultaFRENTE_VERSO: TStringField;
    ConsultaCODTIPO_IMPRESSAO: TIntegerField;
    ConsultaTIPO_IMPRESSAO: TStringField;
    ConsultaCODACABAMENTO: TIntegerField;
    ConsultaACABAMENTO: TStringField;
    ConsultaTEMPO_INICIO: TSQLTimeStampField;
    ConsultaTEMPO_FIM: TSQLTimeStampField;
    ConsultaUNIDADE: TStringField;
    ConsultaPRE_REQUISITO_CENTRO_TRABALHO: TIntegerField;
    ConsultaOBS_PRODUCAO: TStringField;
    ConsultaSITUACAO: TStringField;
    ConsultaACTUAL_START: TIntegerField;
    ConsultaACTUAL_FINISH: TIntegerField;
    ConsultaEVENT_TYPE: TIntegerField;
    ConsultaGROUP_ID: TIntegerField;
    ConsultaLOCATION: TStringField;
    ConsultaOPTIONS: TIntegerField;
    ConsultaPARENT_ID: TIntegerField;
    ConsultaRECURRENCE_INDEX: TIntegerField;
    ConsultaRECURRENCE_INFO: TBlobField;
    ConsultaREMINDER_DATE: TSQLTimeStampField;
    ConsultaREMINDER_MINUTES: TIntegerField;
    ConsultaREMINDER_RESOURCES: TBlobField;
    ConsultaSTATE: TIntegerField;
    ConsultaTASK_INDEX: TIntegerField;
    ConsultaTASK_LINKS: TBlobField;
    ConsultaTASK_STATUS: TIntegerField;
    ConsultaDURACAO_ORCADA: TIntegerField;
    ConsultaDURACAO: TIntegerField;
    ConsultaCODPRODUCAO_OS_PRE_REQUISITO: TIntegerField;
    ConsultaTEMPO_ESTIMADO: TIntegerField;
    ConsultaTEMPO: TIntegerField;
    ConsultaARQUIVADO: TStringField;
    ConsultaTEM_REVERSO: TStringField;
    ConsultaTEM_LOGO: TStringField;
    ConsultaCODUSUARIO: TIntegerField;
    ConsultaVALOR: TFloatField;
    ConsultaCODLOCAL: TIntegerField;
    ConsultaCUSTO_VENDA: TFloatField;
    ConsultaSEQUENCIA_PROTOCOLO: TIntegerField;
    ConsultaPROTOCOLO: TStringField;
    ConsultaCENTRO_TRABALHO: TStringField;
    ConsultaPODE_ENCAMINHAR: TStringField;
    ConsultaPODE_CANCELAR: TStringField;
    ConsultaPODE_LIBERAR: TStringField;
    ConsultaCODEQUIPAMENTO: TIntegerField;
    ConsultaEQUIPAMENTO: TStringField;
    ConsultaTEM_PLAY: TStringField;
    ConsultaTEM_MENSAGEM: TIntegerField;
    ConsultaEMISSAO_OP: TSQLTimeStampField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaCODVENDA: TStringField;
    ConsultaCENTROTRABALHO: TStringField;
    ConsultaPRAZOENTREGA: TSQLTimeStampField;
    ConsultaMinData: TAggregateField;
    ConsultaMaxData: TAggregateField;
    DSTemplate: TDataSource;
    dxLayoutItem4: TdxLayoutItem;
    btnWizard: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    GridConsultaWinExplorerView1: TcxGridWinExplorerView;
    GridConsultaDBLayoutView1LayoutItem12: TcxGridLayoutItem;
    GridConsultaDBLayoutView1COLOR: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem13: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PRIORIDADE: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem17: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PRODUTO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem18: TcxGridLayoutItem;
    GridConsultaDBLayoutView1QUANT: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem19: TcxGridLayoutItem;
    GridConsultaDBLayoutView1LARG: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem20: TcxGridLayoutItem;
    GridConsultaDBLayoutView1COMP: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem21: TcxGridLayoutItem;
    GridConsultaDBLayoutView1ESPESSURA: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem22: TcxGridLayoutItem;
    GridConsultaDBLayoutView1QTDADEPECA: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem23: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PATH: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem24: TcxGridLayoutItem;
    GridConsultaDBLayoutView1LOCAL: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem25: TcxGridLayoutItem;
    GridConsultaDBLayoutView1PESSOA_FUNCIONARIO_CODIGO: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1LayoutItem78: TcxGridLayoutItem;
    GridConsultaDBLayoutView1RAZAOSOCIAL: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1Group3: TdxLayoutGroup;
    GridConsultaDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducao_Template: TFrmProducao_Template;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmProducao_Template);

end.
