unit Frame_ConNotaFiscalEntrada;

interface

  ///////////////////////////////////////////// DOCUMENTAÇÃO ///////////////////////////////////////////////////////////
  ///   SQL       - Rotinas com Acesso a Banco devem conter SQL no inicio da Função
  ///   CloseOpen - Rotinas que Fecham e Abre o DataSet principal devem iniciar com CloseOpen
  ///
  ///   SEÇÃO 1: FUNÇÕES DA TELA  -> 1.1 UTILS
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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, ACBrBase, ACBrDFe, ACBrNFe, ACBrCTe,pcnRetDistDFeInt, uButtonFlat, pcnConversao, cxCurrencyEdit,
  Classes.WR, wrConversao, dxDateRanges, IBX.IBDatabase, uWRCalculaConfiguracoes, dxPSRichEditControlLnk,
  UCHistDataset, frxClass, frxDBSet, cxGridViewLayoutContainer, dxTokenEdit, dxRibbonSkins, dxRibbonCustomizationForm,
  dxOfficeSearchBox, dxBar, cxBarEditItem, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  dxRibbon, dxRibbonStatusBar, dxServerModeData, dxServerModeFireDACDataSource,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxTL, cxDBLookupComboBox,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, dxRatingControl,
  cxCustomStatusKeeper, cxStatusKeeper, cxLookupEdit, cxDBLookupEdit,
  ACBrDFeReport, ACBrCTeDACTEClass, ACBrCTeDACTeRLClass, uWRFormataCamposDataSet,
  dxCustomTileControl, dxTileControl, dxTileBar, Vcl.OleCtrls, SHDocVw, FrmConsultaSefazWEB, System.Zip,
  Frame_Con, frFrameHistorico, cxRichEdit, dxRichEdit.Control, dxRichEdit.NativeApi,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuNota_Fiscal_Entrada = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_NUMERO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_AMBIENTE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_RAZAOSOCIAL_EMITENTE: TcxGridDBColumn;
    GridConsultaDBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_RECEBIMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1NF_TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1NF_SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1NSU: TcxGridDBColumn;
    ActConsultarSEFAZ: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    WRButtonFlat1: TWRButtonFlat;
    ActProcessarRegistros: TAction;
    ActManifestacaoDoDestinatario: TAction;
    PnlManifesto: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    BtnManOperNaoRealizada: TcxButton;
    libtnOpNaoRealizada: TdxLayoutItem;
    BtnManDesconhecimento: TcxButton;
    libtnDesconhecimento: TdxLayoutItem;
    BtnManCiencia: TcxButton;
    libtnCiencia: TdxLayoutItem;
    BtnManConfirmacao: TcxButton;
    libtnConfirmacao: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    LbManAjuda: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    lblTexto: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    EdtManChave: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    EdtManNome: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    BtnManCancelar: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    EdtManTotal: TcxCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    EdtManDtRecebimento: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    GridEventosDBTableView1: TcxGridDBTableView;
    GridEventosLevel1: TcxGridLevel;
    GridEventos: TcxGrid;
    LiGridEventos: TdxLayoutItem;
    GrupoEventos: TdxLayoutGroup;
    SplitterEventos: TdxLayoutSplitterItem;
    Eventos: TFDQuery;
    DSEventos: TDataSource;
    EventosCODIGO: TIntegerField;
    EventosNF_CHAVE: TStringField;
    EventosNF_CNPJCPF_EMITENTE: TStringField;
    EventosNF_MANIFESTO: TStringField;
    EventosNF_DT_EMISSAO: TSQLTimeStampField;
    EventosDT_RECEBIMENTO: TSQLTimeStampField;
    EventosSCHEMA: TStringField;
    GridEventosDBTableView1CODIGO: TcxGridDBColumn;
    GridEventosDBTableView1NF_CHAVE: TcxGridDBColumn;
    GridEventosDBTableView1NF_CNPJCPF_EMITENTE: TcxGridDBColumn;
    GridEventosDBTableView1NF_MANIFESTO: TcxGridDBColumn;
    GridEventosDBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    GridEventosDBTableView1DT_RECEBIMENTO: TcxGridDBColumn;
    GridEventosDBTableView1SCHEMA: TcxGridDBColumn;
    ActVisualizar: TAction;
    Visualizar1: TMenuItem;
    ActEventoVisualizar: TAction;
    MenuEventos: TPopupMenu;
    Visualizar2: TMenuItem;
    ManifestaodoDestinatrio1: TMenuItem;
    Visualizar3: TMenuItem;
    N1: TMenuItem;
    ActImportarNotas: TAction;
    ActBaixarNota: TAction;
    ActBaixarNota1: TMenuItem;
    GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem16: TdxLayoutItem;
    lblDataUltimaConsulta: TcxLabel;
    LiTreeListUsuarios: TdxLayoutItem;
    TreeListUsuarios: TcxDBTreeList;
    cxDBTreeListCODIGO: TcxDBTreeListColumn;
    cxDBTreeListPARENT: TcxDBTreeListColumn;
    cxDBTreeListDESCRICAO: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListTABELA: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListCHAVE_PK1: TcxDBTreeListColumn;
    TreeListUsuarioscxDBTreeListQUANT: TcxDBTreeListColumn;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    DSMemTreeList: TDataSource;
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
    dxLayoutGroup7: TdxLayoutGroup;
    LibtnCertificado: TdxLayoutItem;
    btnCertificado: TcxButton;
    LiAvisoCertificado: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    cxLabel2: TcxLabel;
    cxImageListTreeList: TcxImageList;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODNF_ENTRADA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_NOTA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_COMPRA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_CIENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_CONFIRMADA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_DESCONHECIDA: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_NAO_REALIZADA: TcxGridDBColumn;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    EventosARQUIVO_XML: TBlobField;
    GridEventosDBTableView1ARQUIVO_XML: TcxGridDBColumn;
    ActVisualizarXML: TAction;
    btnConsultaNota: TWRButtonFlat;
    libtnConsultaNota: TdxLayoutItem;
    ComboEmpresa: TcxLookupComboBox;
    cbxComboEmpresa: TdxLayoutItem;
    ACBrCTe1: TACBrCTe;
    ACBrCTeDACTeRL1: TACBrCTeDACTeRL;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    FcPrincipal: TWRFormataCamposDataSets;
    GridConsultaDBTableView1NF_REFERENCIA: TcxGridDBColumn;
    ConsultaNFe1: TMenuItem;
    ACBrNFe1: TACBrNFe;
    pnlEmpresa: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    tcMenuEmpresa: TdxTileControl;
    dxLayoutItem23: TdxLayoutItem;
    tiEmpresaCarregada: TdxTileControlItem;
    dxLayoutItem3: TdxLayoutItem;
    lblTitulo: TcxLabel;
    tcMenuEmpresaGroup1: TdxTileControlGroup;
    tiCarregarCertificado: TdxTileControlItem;
    tcMenuEmpresaGroup2: TdxTileControlGroup;
    GridConsultaDBTableView1TEM_FINALIZADO: TcxGridDBColumn;
    GridConsultaDBTableView1MOTIVO_FINALIZADO: TcxGridDBColumn;
    pnlMotivo: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutGroup8: TdxLayoutGroup;
    cbxMotivo: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    btnCancelar: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnConfirmar: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    edtObservacao: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    ConsultaCODIGO: TIntegerField;
    ConsultaCODEMPRESA: TIntegerField;
    ConsultaNF_NUMERO: TLargeintField;
    ConsultaNF_CHAVE: TStringField;
    ConsultaNF_CNPJCPF_EMITENTE: TStringField;
    ConsultaNF_AMBIENTE: TIntegerField;
    ConsultaNF_RAZAOSOCIAL_EMITENTE: TStringField;
    ConsultaNF_DT_EMISSAO: TSQLTimeStampField;
    ConsultaDT_RECEBIMENTO: TSQLTimeStampField;
    ConsultaNF_TOTAL: TFloatField;
    ConsultaNF_SITUACAO: TStringField;
    ConsultaNSU: TLargeintField;
    ConsultaATIVO: TStringField;
    ConsultaCODNF_ENTRADA: TStringField;
    ConsultaTEM_NOTA: TStringField;
    ConsultaTEM_COMPRA: TStringField;
    ConsultaTEM_CIENCIA: TStringField;
    ConsultaTEM_CONFIRMADA: TStringField;
    ConsultaTEM_DESCONHECIDA: TStringField;
    ConsultaTEM_NAO_REALIZADA: TStringField;
    ConsultaNF_REFERENCIA: TStringField;
    ConsultaTIPO: TStringField;
    ConsultaTEM_SOLICITADO_CIENCIA: TStringField;
    ConsultaTEM_FINALIZADO: TStringField;
    ConsultaMOTIVO_FINALIZADO: TStringField;
    ConsultaOBSERVACAO: TStringField;
    dxLayoutItem25: TdxLayoutItem;
    cxButton1: TcxButton;
    ReqManifesto: TFDQuery;
    UCHist_Requisicao: TUCHist_DataSet;
    TransaRequisicao: TFDTransaction;
    edtVerificaValidadeCertificado: TcxButtonEdit;
    dxLayoutItem18: TdxLayoutItem;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    ConsultaARQUIVO_XML: TBlobField;
    ConsultaSITUACAO: TStringField;
    dxLayoutItem19: TdxLayoutItem;
    edtProximaConsulta: TcxButtonEdit;
    TimerProximaConsulta: TTimer;
    ResumoEventosJaImportados: TFDQuery;
    IntegerField3: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    SQLTimeStampField5: TSQLTimeStampField;
    SQLTimeStampField6: TSQLTimeStampField;
    StringField12: TStringField;
    BlobField3: TBlobField;
    DS_ReqManifesto: TDataSource;
    lblMensagemAviso: TcxLabel;
    lilblAvisoPanel: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    tiAbreSefaz: TdxTileControlItem;
    tiCienciaOperacao: TdxTileControlItem;
    tiDesconhecimentoEmissao: TdxTileControlItem;
    tiImportarCompra: TdxTileControlItem;
    tiOperacaoNaoRealizada: TdxTileControlItem;
    tiArquivarVencidas: TdxTileControlItem;
    tiReativar: TdxTileControlItem;
    tiConfirmacaoOperacao: TdxTileControlItem;
    tiConsultaIndividual: TdxTileControlItem;
    tiConsultar: TdxTileControlItem;
    tiArquivar: TdxTileControlItem;
    dxLayoutGroup11: TdxLayoutGroup;
    cxLabel4: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    procedure ActConsultarSEFAZExecute(Sender: TObject);
    procedure ActProcessarRegistrosExecute(Sender: TObject);
    procedure ActManifestacaoDoDestinatarioExecute(Sender: TObject);
    procedure BtnManCienciaClick(Sender: TObject);
    procedure BtnManConfirmacaoClick(Sender: TObject);
    procedure BtnManOperNaoRealizadaClick(Sender: TObject);
    procedure BtnManDesconhecimentoClick(Sender: TObject);
    procedure EventosBeforeOpen(DataSet: TDataSet);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure DSEventosDataChange(Sender: TObject; Field: TField);
    procedure ActVisualizarExecute(Sender: TObject);
    procedure ActEventoVisualizarExecute(Sender: TObject);
    procedure GridEventosDBTableView1DblClick(Sender: TObject);
    procedure ActImportarNotasExecute(Sender: TObject);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure NFe1Click(Sender: TObject);
    procedure ActBaixarNotaExecute(Sender: TObject);
    procedure btnCertificadoClick(Sender: TObject);
    procedure TreeListUsuariosFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure btnArquivarClick(Sender: TObject);
    procedure BtnDesarquivarClick(Sender: TObject);
    procedure ActVisualizarXMLExecute(Sender: TObject);
    procedure ComboEmpresaPropertiesChange(Sender: TObject);

    procedure ConsultaNFe1Click(Sender: TObject);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridConsultaDBTableView1NF_DT_EMISSAOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure LerArquivoZip(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure FcPrincipalCarregaDataSets(Sender: TObject);
    procedure tiResetaTudoClick(Sender: TdxTileControlItem);
    procedure TileOperacoesClick(Sender: TdxTileControlItem);
    procedure edtVerificaValidadeCertificadoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridSubGridViewFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TimerProximaConsultaTimer(Sender: TObject);
    procedure edtProximaConsultaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DSDataChange(Sender: TObject; Field: TField);
  private
    Abrindo : Boolean;
    FACBrNFe: TACBrNFe;
    FListaErros: TStringList;
    FRequisicoes: TdxRichEditControl;
    FEditando: Boolean;
    FTentarNovamente: Boolean;
    procedure ExecutaManifesto(ATipo: TpcnTpEvento);
    procedure FiltroTela(AFiltroClique: String);
    procedure Manifestar(Sender: String);
    procedure TileOnClick(Sender: TdxTileControlItem);
    procedure CarregaCadastroEmpresa(Sender: TdxTileControlItem);
    procedure ArquivarVencidas;

    // NOVA IMPLANTAÇÃO
    procedure LeArquivoZipRetornoEImporta(ACodEmpresa:Integer; AZipCollection: TdocZipCollection);
    function TentaBaixarEImportar(AACBrNFe: TACBrNFe; ACodEmpresa: integer; ACNPJ: string): boolean;
    procedure ImportarCTEPorEmpresa(ASilent: Boolean = False);
    procedure ImportarNotasPorEmpresaClick;

    // Utils
    procedure EditaCampo(Campo, Resultado, Codigo: String);
    procedure VerificaDTUltimaConsultaNSU(ACodEmpresa: Integer; ASilent: boolean = True);
    procedure AtualizaComponenteDaTelaCertificado;
    procedure RefreshConsulta;
    function DefineUltimoNSU(AACBrNFe: TACBrNFe; AUltimoNSU: String): String;
    function GetUltimoNSU(AACBrNFe: TACBrNFe): String;
    function GetUFAutor: Integer;
    procedure VerificaAmbiente(AACBrNFe: TACBrNFe; ASilent: boolean = False);
    procedure AtualizaInterface;

    // Requisição
    function GeraRegistroRequisicaoManifesto(ACodEmpresa: integer; AMensagem: string; ADados: string = '';
          ARegistrosSucesso: integer = 0; ARegistrosErro: integer = 0; ARegistrosIgnorados: integer = 0): boolean;

  protected
    
  public
    { Public declarations }
    procedure AddTreeList(ACodigo, AParent, AImageIndex: Integer; ADescricao, AModulo: string;
          ATabela, AChave_PK1, AChave_PK2,AChave_PK3, AQuant : Variant);

  end;

var
  FTipoConsulta :String;
  FCodEmpresa :Integer;

implementation

{$R *.dfm}

uses
  NFe, UnitFuncoes, Aguarde, DateUtils, ACBrUtil, ACBrNFeDANFEFR, ACBrNFeDANFeRLClass, DataModule,
  DataModuleImpressao, System.IOUtils, StrUtils, NF_Entrada, wrConstantes, wrFuncoes,
  wrForms, ConNF_Entrada, Principal, System.Math, CadEmpresa, Base, Tag.Form;

{$REGION 'SEÇÃO 1: FUNÇÕES DA TELA/////////////////////////////////////////////////////////////////////////////////////'}

procedure TFrame_ConsuNota_Fiscal_Entrada.ActImportarNotasExecute(Sender: TObject);
var
  I, J, ACStat: Integer;
  ARecord: TcxCustomGridRecord;
  AChave, ACodEntrada: string;
  AEnviarManifesto: Boolean;
  AListaChavesSelecionadas: TStringList;
  AFormAguarde: TFrmAguarde;
  AACBrNFe: TACBrNFe;
  QuerX: TFDQuery;

//  AFrmNF_Entrada: TFrmNF_Entrada;

  AEsperaTelaFechar: Boolean;
begin
  inherited;

  //Primeiro verifica os itens selecionados
  AEnviarManifesto := False;
  AEsperaTelaFechar:= GridConsultaDBTableView1.Controller.SelectedRecordCount = 1;
  for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
  begin
    ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];
    if VarToStrDef(ARecord.Values[GridConsultaDBTableView1TEM_NOTA.Index],'') <> 'S' then
    begin
      if VarToStrDef(ARecord.Values[GridConsultaDBTableView1TEM_CIENCIA.Index],'') <> 'S' then
      begin
        if ShowMessageWR('Uma ou mais notas selecionadas possuem apenas informações resumidas. Para importar estas notas ' +
                      'é necessário enviar uma Manifestação do Destinatário para a SEFAZ para ter acesso aos ' +
                      'dados completos. Deseja enviar agora um manifesto de Ciência da Emissão?', MB_ICONQUESTION) = mrYes then
          AEnviarManifesto := True;
        Break;
      end;
    end;

    if VarToStrDef(ARecord.Values[GridConsultaDBTableView1NF_SITUACAO.Index],'') = 'Cancelado' then
    begin
      ShowMessage('Você está tentando importar uma ou mais notas canceladas. Por favor, verifique e arquive as notas canceladas');
      Exit;
    end;
  end;

  //Caso o usuário concorde em emitir o manifesto, envia o manifesto para todos os itens pendentes
  if AEnviarManifesto then
  begin
    AListaChavesSelecionadas := TStringList.Create;
    try
      for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];
        if VarToStrDef(ARecord.Values[GridConsultaDBTableView1TEM_NOTA.Index], '') <> 'S' then
        begin
          AChave := VarToStrDef(ARecord.Values[GridConsultaDBTableView1NF_CHAVE.Index], '');
          AListaChavesSelecionadas.Add(AChave);
          TFrmNFe.ManifestoDoDestinatario(AChave, teManifDestCiencia, ACStat);
        end;
      end;
      //Baixa novamente as notas da SEFAZ
      ActConsultarSEFAZ.Execute;

      GridConsultaDBTableView1.Controller.ClearSelection;
      for J := 0 to AListaChavesSelecionadas.Count - 1 do
      begin
        for I := 0 to GridConsultaDBTableView1.DataController.RecordCount - 1 do
        begin
          if AListaChavesSelecionadas[J] = GridConsultaDBTableView1.DataController.Values[i, GridConsultaDBTableView1NF_CHAVE.Index] then
            GridConsultaDBTableView1.DataController.SelectRows(i, i);
        end;
      end;
    finally
      AListaChavesSelecionadas.Free;
    end;
  end;

  if GridConsultaDBTableView1.Controller.SelectedRecordCount > 0 then
  begin
//    AFrmNF_Entrada := TFrmNF_Entrada.Create(Self);//(wrFormsRetornaCadastro(TConsuNF_Entrada, TFrmNF_Entrada));

    AFormAguarde := TFrmAguarde.Create(nil);
    try
      AFormAguarde.Show;
      AFormAguarde.Mensagem := 'Importando notas...';
      AFormAguarde.ProgressoMaximo := GridConsultaDBTableView1.Controller.SelectedRecordCount;

      for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[i];
        if VarToStrDef(ARecord.Values[GridConsultaDBTableView1NF_CHAVE.Index],'') <> '' then
        begin
          if VarToStrDef(ARecord.Values[GridConsultaDBTableView1TIPO.Index],'') = 'CTe' then
          begin
            QuerX := GeraFDQuery;
            try
              QuerX.SQL.Text := 'select ARQUIVO_XML ' +
                                'from NOTA_FISCAL_ENTRADA ' +
                                'where (NF_CHAVE = :Cod) and (SCHEMA = ''procCTe'')';
              QuerX.Params[0].Value := ARecord.Values[GridConsultaDBTableView1NF_CHAVE.Index];
              QuerX.Open;
              ACBrCTe1.Conhecimentos.Clear;
              ACBrCTe1.Conhecimentos.LoadFromString(QuerX.Fields[0].AsString);
              with TFrmNF_Entrada.Create(Self) do
              begin
                Enabled:=False;
                Show;
                MainLayout.EndUpdate;
                Application.ProcessMessages;
                Cadastro.Open;
                ACodEntrada := DM_NFEntradaImportarCTe(ACBrCTe1, ARecord.Values[GridConsultaDBTableView1CODIGO.Index]);
                Enabled:=True;
              end;
              if AEsperaTelaFechar then
              begin
                AFormAguarde.Close;
              end;
            finally
              QuerX.Free;
            end;
          end else
          begin
            QuerX := GeraFDQuery;
            AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
            try
              QuerX.SQL.Text := 'select ARQUIVO_XML ' +
                                'from NOTA_FISCAL_ENTRADA ' +
                                'where (NF_CHAVE = :Cod) and (SCHEMA = ''procNFe'')';
              QuerX.Params[0].Value := ARecord.Values[GridConsultaDBTableView1NF_CHAVE.Index];
              QuerX.Open;
              AACBrNFe.NotasFiscais.LoadFromString(QuerX.Fields[0].AsString);
              with TFrmNF_Entrada.Create(Self) do
              begin
                Enabled:=False;
                Show;
                MainLayout.EndUpdate;
                Application.ProcessMessages;
                Cadastro.Open;
                ACodEntrada := DM_NFEntradaImportarNota(AACBrNFe, ARecord.Values[GridConsultaDBTableView1CODIGO.Index]);
                Enabled:=True;
              end;
              if AEsperaTelaFechar then
              begin
                AFormAguarde.Close;
              end;
            finally
              AACBrNFe.Free;
              QuerX.Free;
            end;
          end;
          TransaDragAndDrop.StartTransaction;
          EditaCampo('TEM_COMPRA','S', VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index],''));
          EditaCampo('TEM_FINALIZADO','S', VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index],''));
          EditaCampo('SITUACAO','4. FINALIZADO', VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index],''));
          EditaCampo('MOTIVO_FINALIZADO','Nota Importada para Compra.', VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index],''));
          EditaCampo('CODNF_ENTRADA',ACodEntrada, VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODIGO.Index],''));
          try
            TransaDragAndDrop.Commit;
          except
            TransaDragAndDrop.Rollback;
          end;

          RefreshConsulta;
          AFormAguarde.AvancarProgresso;
        end;
      end;
    finally
//      AFrmNF_Entrada.Close;  // Deixa aberta
//      AFrmNF_Entrada.Free;   // destroy do sistema
      AFormAguarde.Free;
    end;
  end;
end;

// Aqui envia a manifestação para Sefaz
procedure TFrame_ConsuNota_Fiscal_Entrada.ExecutaManifesto(ATipo: TpcnTpEvento);
var
  ACStat: integer;
begin
//  if not VerificaAmbiente(AACBrNFe) then  //Aqui tem que achar uma forma de avisar que está em homologação
//    Exit;                                 //a melhor maneira seria no principal, mas não tem o componente
                                            //ACBR
  if ShowMessageWR('Confirma o envio da Manifestação do Destinatário como "' +
                   ManifestoDFeToCodigo(ATipo) + '"?', MB_ICONQUESTION) <> mrYes then
    Exit;
  if TFrmNFe.ManifestoDoDestinatario(EdtManChave.Text, ATipo, ACStat) then // Aqui executa a manifestçaão
  begin
    EditaCampo('TEM_SOLICITADO_CIENCIA','S', Consulta.FieldByName('CODIGO').AsString);
    EditaCampo('SITUACAO','2. AGUARDANDO SEFAZ', Consulta.FieldByName('CODIGO').AsString);
  end;
  FechaPanelForm(PnlManifesto);

  // Se for 596 quer dizer que já está vencida.
  if ACStat = 596 then
  begin
    ShowMessageWR('Consulte a nota pela Sefaz para Importar.');
    tiAbreSefaz.Click;
  end;
end;

// Visualizar o PDF da nota fiscal.
procedure TFrame_ConsuNota_Fiscal_Entrada.ActEventoVisualizarExecute(Sender: TObject);
begin
  inherited;
  if Eventos.IsEmpty then
    Exit;
  TFrmNFe.VisualizarNotaEntrada(Eventos.FieldByName('NF_CHAVE').AsString);
end;

// Arquivar todas as que estão vencidas.
procedure TFrame_ConsuNota_Fiscal_Entrada.ArquivarVencidas;
begin
  inherited;
  TransaDragAndDrop.StartTransaction;

  Consulta.First;
  while not Consulta.eof do
  begin
    if (MinutesBetween(Consulta.FieldByName('NF_DT_EMISSAO').AsDateTime, DataHoraSys) > 10 * 24 * 60) and
       (Consulta.FieldByName('TIPO').AsString = 'NFe') and
       (Consulta.FieldByName('TEM_NOTA').AsString <> 'S')
    then
    begin
      EditaCampo('TEM_FINALIZADO','S', Consulta.FieldByName('CODIGO').AsString);
      EditaCampo('SITUACAO','4. FINALIZADO', Consulta.FieldByName('CODIGO').AsString);
      EditaCampo('MOTIVO_FINALIZADO','Arquivado - Vencida para Manifestar', Consulta.FieldByName('CODIGO').AsString);
    end;
    Consulta.Next;
  end;

  try
    TransaDragAndDrop.Commit;
  except
    TransaDragAndDrop.Rollback;
  end;

  RefreshConsulta;
end;

// Importar notas por empresa.
procedure TFrame_ConsuNota_Fiscal_Entrada.ImportarNotasPorEmpresaClick; // Se clicou no botão, vai fazer nesta empresa. Se for automático, vai fazer em todas que o certificado é válido.
var
//  QuerEmpresa: TFDQuery;
//  QuerEmpresas: TFDQuery;
  AACBrNFe: TACBrNFe;
  AUltNSU, AMaxNSU: string;
  AOk: Boolean;
begin
  AACBrNFe := TACBrNFe.Create(nil);
  AOk := True;
  try
    // Aqui deve iniciar a requisição -------------
    // Precisa informar por onde este evento foi startado. Se foi Apertando o botão pelo usuário, ou foi automaticamente pelo sistema.
    TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe, Empresa); // Configura o componente para utilizar nas rotinas.

    try
      VerificaDTUltimaConsultaNSU(FCodEmpresa);
    except
      // Result = "CNPJ Bloqueado, você realmente quer fazer isso?';
      // Result = Cliente clicou no botão que queria realmente fazer isso, mesmo estando bloquado. -> Gera histórico
      if MessageDlg('CNPJ Bloqueado para Requisições. É necessário aguardar ' + VarToStr(MinutesBetween(DataHoraSys, TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', FCodEmpresa) + 60/1440)) + ' minutos' +
                    ' para fazer outra requisição.'
                    + sLineBreak + sLineBreak + 'Deseja continuar mesmo assim?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        AOk := True;
      end
      else
        AOk := False;
    end;

    // Todas as validações do certificado devem estar dentro deste try.
    try
      ValidaCertificadoACBrNFe(AACBrNFe);
    except
      on E:TExceptionCertificadoInvalido do
      begin
        ShowMessage('Certificado Digital Não Configurado. Configure para Continuar.');
        AOk := False;
      end;
      on E:TExceptionCertificadoVencido do
      begin
        ShowMessage('Certificado Digital Vencido. Configure um novo certificado para Continuar.');
        AOk := False;
      end;
    end;

    if not AOk then
    begin
      if MessageDlg('Existem informações que não foram validadas. É recomendável verificar antes de continuar.'
                    + sLineBreak + sLineBreak + 'Deseja continuar mesmo assim?', mtConfirmation, mbYesNo, 0) <> mrYes then
      begin
        ShowMessage('Operação Cancelada');
        Exit
      end;
    end;

    repeat                                                     // Pode ser alterado para um Local, mas tem que fazer drilling.
      AOk := TentaBaixarEImportar(AACBrNFe,
                                  Empresa.FieldByName('CODIGO').AsInteger,
                                  Empresa.FieldByName('CNPJCPF').AsString);

      if not AOk then
        break;

      AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', Empresa.FieldByName('CODIGO').AsInteger);
      AMaxNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_MAX_NSU', Empresa.FieldByName('CODIGO').AsInteger);

    until (AUltNSU = AMaxNSU) and not FTentarNovamente;
  finally
    AACBrNFe.Free;
  end;
  RefreshConsulta;
end;

function TFrame_ConsuNota_Fiscal_Entrada.TentaBaixarEImportar(AACBrNFe: TACBrNFe; ACodEmpresa: integer; ACNPJ: string): boolean;
var
  AUltNSU, ANSU, AMessage : string;

begin
  try
    Result := False;  // Já joga um false, só fica true se validar todos os passos.

    // Se já estiver baixando, não faz nada.
    // Não pode controlar desta forma, pois não é o padrão do mestre, o padrão do mestre é o EDIT.
    if TConfig.ReadIntegerEmpresa('NF_ENTRADA_CSTAT', ACodEmpresa) = 1 then
      Exit;

    TConfig.SaveIntegerEmpresa('NF_ENTRADA_CSTAT', 1, ACodEmpresa);
    try
      TConfig.SaveDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', 0, ACodEmpresa);
      TConfig.SaveDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ_LABEL', DataHoraSys, ACodEmpresa);

      AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', ACodEmpresa);
      ANSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', ACodEmpresa);
      //Log
//      GeraRegistroRequisicaoManifesto(ACodEmpresa, 'Consulta iniciada.');

      //Baixar
//      AACBrNFe.DistribuicaoDFePorUltNSU(GetUFAutor, ACNPJ, AUltNSU);
      AACBrNFe.DistribuicaoDFe(GetUFAutor, ACNPJ, AUltNSU, ANSU, '');


      // Importar
      LeArquivoZipRetornoEImporta(ACodEmpresa, AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip);

      TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU', AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU, ACodEmpresa);
      TConfig.SaveStringEmpresa('NF_ENTRADA_MAX_NSU', AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.maxNSU, ACodEmpresa);
      Result := True;
      FTentarNovamente := False;
    except
      on e:Exception do
      begin
        if AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.CSTAT = 656 then
        begin
          TConfig.SaveDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', DataHoraSys, ACodEmpresa);
          TConfig.SaveDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ_LABEL', DataHoraSys, ACodEmpresa);
          TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU', AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU, ACodEmpresa);
          TConfig.SaveStringEmpresa('NF_ENTRADA_MAX_NSU', AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.maxNSU, ACodEmpresa);
          Result := False;
          FTentarNovamente := False;
        end
        else
        begin
          tiResetaTudoClick(nil);
          FTentarNovamente := True;
          Exit;
        end;
        AMessage := 'Erro ao Tentar Baixar e Importar Notas: '+e.message;
        ShowMessage(AMessage);
        WRLog(AMessage);
        FTentarNovamente := False;
      end;
    end;
  finally
    TConfig.SaveIntegerEmpresa('NF_ENTRADA_CSTAT', 0, ACodEmpresa);
  end;
end;

function TFrame_ConsuNota_Fiscal_Entrada.GeraRegistroRequisicaoManifesto(ACodEmpresa: integer; AMensagem: string; ADados: string = '';
          ARegistrosSucesso: integer = 0; ARegistrosErro: integer = 0; ARegistrosIgnorados: integer = 0): boolean;
begin
  // Insere ou edita um log no banco de dados
  TransaRequisicao.StartTransaction;

  ReqManifesto.Insert;
  ReqManifesto.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_REQMANIFESTO'));
  ReqManifesto.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
  ReqManifesto.FieldByName('CODEMPRESA').AsInteger := Usuario.Codigo;
  ReqManifesto.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
  ReqManifesto.FieldByName('DT_CONSULTA').AsDateTime := DataHoraSys;
  ReqManifesto.FieldByName('DADOS').AsString := ADados;
  ReqManifesto.FieldByName('SUCESSO_REQUISICAO').AsString := 'N';
  ReqManifesto.FieldByName('LOG').AsString := AMensagem;
  ReqManifesto.FieldByName('QUANT_REGISTROS_SUCESSO').AsInteger := ARegistrosSucesso;
  ReqManifesto.FieldByName('QUANT_REGISTROS_ERRO').AsInteger := ARegistrosErro;
  ReqManifesto.FieldByName('QUANT_REGISTROS_IGNORADOS').AsInteger := ARegistrosIgnorados;

  ReqManifesto.Post;

  TransaRequisicao.Commit;

  // Deve salvar a requisição atual para que possa ser consultado depois
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.LeArquivoZipRetornoEImporta(ACodEmpresa:Integer; AZipCollection: TdocZipCollection);
var
  AZip: TdocZipCollectionItem;
  AXML: TStringList;
  AZipFile: TZipFile;
  AMessage, APasta, APathXML, APathZip, AFileName: string;
  QuerPai: TFDQuery;
  I : integer;
begin
  APasta := VarToStr(ACodEmpresa) + '-' + FormatDateTime('ddmmyyyy-hhnnss', DataHoraSys);
  APathXML :=  ExtractFilePath(Application.ExeName) + 'Temp\' + APasta;
  APathZip :=  ExtractFilePath(Application.ExeName) + 'DistribuiçãoNFe';
  AXML := TStringList.Create;  //Grava todas as notas recebidas
  AZipFile := TZipFile.Create;
  try
    try
      if not DirectoryExists(APathXML) then
        ForceDirectories(APathXML);

      if not DirectoryExists(APathZip) then
        ForceDirectories(APathZip);

      AZipFile.Open(APathZip + '\'+APasta+'.zip', zmWrite);
      for I := 0 to AZipCollection.Count - 1 do
      begin

        AFileName := AZipCollection.Items[I].NSU+'.xml';

        AXML.Clear;
        AXML.Text := AZipCollection.Items[I].XML;
        AXML.SaveToFile(APathXML+'\'+AFileName);

        AZipFile.Add(APathXML+'\'+AFileName);
      end;

    except
      on e:Exception do
      begin
        AMessage := 'Erro ao salvar arquivos na pasta "'+APathXML+'":'+e.message;
        ShowMessage(AMessage);
        WRLog(AMessage);
      end;
    end;
  finally
    AXML.Free;
    AZipFile.Free;
  end;
  try
    QuerPai := GeraFDQuery(TransaDragAndDrop);
    // Aqui faz um backup no doczip completo do FACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip
    for I := 0 to AZipCollection.Count - 1 do
    begin
      try
        AZip := AZipCollection[i];

        if AZip.resDFe.chDFe <> '' then  // Pode vir sem Chave, se vir sem chave é evento, não é pai
        begin
          QuerPai.Close;
          QuerPai.SQL.Text := 'SELECT 1 FROM NF_ENTRADA_MANIFESTO WHERE NF_CHAVE = :NF_CHAVE';
          QuerPai.ParamByName('NF_CHAVE').AsString := AZip.resDFe.chDFe;
          QuerPai.Open;

          if QuerPai.IsEmpty then
          begin
            TransaDragAndDrop.StartTransaction;
            QueryDragAndDrop.Insert;
            QueryDragAndDrop.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_ENTRADA'));
            QueryDragAndDrop.FieldByName('CODEMPRESA').AsInteger             := ACodEmpresa;
            QueryDragAndDrop.FieldByName('TIPO').AsString                    := 'NFe';
            QueryDragAndDrop.FieldByName('NSU').AsString                     := AZip.NSU;
            QueryDragAndDrop.FieldByName('DT_RECEBIMENTO').AsDateTime        := DataHoraSys;
            QueryDragAndDrop.FieldByName('NF_AMBIENTE').AsInteger            := 1;
            QueryDragAndDrop.FieldByName('ATIVO').AsString                   := 'S';
            QueryDragAndDrop.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := AZip.resDFe.CNPJCPF;
            QueryDragAndDrop.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := AZip.resDFe.xNome;
            QueryDragAndDrop.FieldByName('NF_CHAVE').AsString                := AZip.resDFe.chDFe;
            QueryDragAndDrop.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(AZip.resDFe.cSitDFe);
            QueryDragAndDrop.FieldByName('NF_DT_EMISSAO').AsDateTime         := AZip.resDFe.dhEmi;
            QueryDragAndDrop.FieldByName('NF_TOTAL').AsFloat                 := AZip.resDFe.vNF;
            QueryDragAndDrop.FieldByName('ARQUIVO_XML').AsString             := AZip.XML;
            QueryDragAndDrop.FieldByName('TEM_SOLICITADO_CIENCIA').AsString  := 'N';
            QueryDragAndDrop.FieldByName('SITUACAO').AsString                := '1. NOVO';
            if Length(AZip.resDFe.chDFe) = 44 then
              QueryDragAndDrop.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(AZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão

            QueryDragAndDrop.Post;
            TransaDragAndDrop.Commit;
          end;
        end;
        TFrmNFe.GravarXMLNotaEntradaNoBanco(ACodEmpresa, AZip);
      except
        // Se caiu aqui deve dizer qual erro foi
        on e:Exception do
        begin
          AMessage := 'Tentativa de importação da nota: ' + sLineBreak +
                      'Número: ' + Copy(AZip.resDFe.chDFe, 26, 9) + sLineBreak +
                      'Chave: ' + AZip.resDFe.chDFe + sLineBreak +
                      'Erro: ' + e.message + sLineBreak +
                      'Text:  Tentando inserir dados :' + AZip.resDFe.ToString;
          WRLog(AMessage);
          TFrameHistorico.AdicionaHistorico(nil, UCHist_Cadastro, AMessage);
          // Se deu problema deve mostrar na consulta aqui.
          // Historico - Tentativa de importação da nota, erro X, chave X
        end;

      end;
    end;
  finally
    QuerPai.Free;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActConsultarSEFAZExecute(Sender: TObject);
var
  AUltNSUCTe, AMaxNSUCTe: String;
  AFrmAguarde: TFrmAguarde;
  I: Integer;
  AZip: TdocZipCollectionItem;
  ATemErro: Boolean;
begin
  inherited;
  try
    AFrmAguarde := TFrmAguarde.Create(nil);
    AFrmAguarde.Mensagem := 'Consultando CTe na Sefaz.';
    AFrmAguarde.Show;
    Application.ProcessMessages;
    // CONSULTA CONHECIMENTO DE TRANSPORTE CTE ------------------------------

    TFrmNFe.CarregaConfiguracoesIniCTe(ACBrCTe1, Empresa, nil, ACBrCTeDACTeRL1);

    AUltNSUCTe := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU_CTE', Empresa.FieldByName('CODIGO').AsInteger);

    if VarToStr(AUltNSUCTe) = '' then
      AUltNSUCTe := '0';

    try
      repeat
        if ACBrCTe1.DistribuicaoDFePorUltNSU(GetUFAutor, Empresa.FieldByName('CNPJCPF').AsString, AUltNSUCTe) then
        begin
          TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU_CTE', ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.MaxNSU, Empresa.FieldByName('CODIGO').AsInteger);
          AMaxNSUCTe := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.MaxNSU;
          AUltNSUCte := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
        end;
        //      ACBrCTe1.DistribuicaoDFePorNSU(GetUFAutor, CNPJ, '');
        AFrmAguarde.Progresso := 0;
        AFrmAguarde.ProgressoMaximo := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count;
        for i := 0 to ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
        begin
          AFrmAguarde.Mensagem := 'Importando as CTe no Banco de Dados...';
          AZip := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
          TFrmNFe.GravarXMLCTeNoBanco(0, Empresa.FieldByName('CODIGO').AsInteger, ACBrCTe1, AZip);
          AFrmAguarde.AvancarProgresso;
        end;
      until AUltNSUCte = AMaxNSUCTe;
  //    ShowMessage('CTe Importados.');  Com a consulta automatica, isso estava "atrapalhando o processo"
    except
      on E:Exception do
      begin
        ShowMessageWR(E.Message + sLineBreak + 'Erro: ' + VarToStr(ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.CSTAT), MB_ICONWARNING);
        ATemErro := True;
      end;
    end;
  finally
//    ACBrCTe1.Free;
    AFrmAguarde.Free;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ImportarCTEPorEmpresa(ASilent: Boolean = False);
var
  AUltNSUCTe, AMaxNSUCTe: String;
  AFrmAguarde: TFrmAguarde;
  I: Integer;
  AZip: TdocZipCollectionItem;
  ATemErro, AOk: Boolean;
begin
  inherited;
  try
    AOk := True;
    if not ASilent then
    begin
      AFrmAguarde := TFrmAguarde.Create(nil);
      AFrmAguarde.Mensagem := 'Consultando CTe na Sefaz.';
      AFrmAguarde.Show;
      Application.ProcessMessages;
    end;

    // CONSULTA CONHECIMENTO DE TRANSPORTE CTE ------------------------------

    TFrmNFe.CarregaConfiguracoesIniCTe(ACBrCTe1, Empresa, nil, ACBrCTeDACTeRL1);

    if ASilent then
    begin
      try
        ValidaCertificadoACBrCTe(ACBrCTe1);
      except
        AOk := False;
      end;
    end;

    if AOk then
    begin
      AUltNSUCTe := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU_CTE', Empresa.FieldByName('CODIGO').AsInteger);

      if VarToStr(AUltNSUCTe) = '' then
        AUltNSUCTe := '0';

      try
        repeat
          if ACBrCTe1.DistribuicaoDFePorUltNSU(GetUFAutor, Empresa.FieldByName('CNPJCPF').AsString, AUltNSUCTe) then
          begin
            TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU_CTE', ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.MaxNSU, Empresa.FieldByName('CODIGO').AsInteger);
            AMaxNSUCTe := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.MaxNSU;
            AUltNSUCte := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
          end;
          //      ACBrCTe1.DistribuicaoDFePorNSU(GetUFAutor, CNPJ, '');
          if Assigned(AFrmAguarde) then
          begin
            AFrmAguarde.Progresso := 0;
            AFrmAguarde.ProgressoMaximo := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count;
            AFrmAguarde.Mensagem := 'Importando as CTe no Banco de Dados...';
          end;
          for i := 0 to ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
          begin
            AZip := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
            TFrmNFe.GravarXMLCTeNoBanco(0, Empresa.FieldByName('CODIGO').AsInteger, ACBrCTe1, AZip);

            if Assigned(AFrmAguarde) then
            begin
              AFrmAguarde.AvancarProgresso;
            end;
          end;
        until AUltNSUCte = AMaxNSUCTe;
    //    ShowMessage('CTe Importados.');  Com a consulta automatica, isso estava "atrapalhando o processo"
      except
        on E:Exception do
        begin
          ShowMessageWR(E.Message + sLineBreak + 'Erro: ' + VarToStr(ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.CSTAT), MB_ICONWARNING);
          ATemErro := True;
        end;
      end;
    end;
  finally
    if Assigned(AFrmAguarde) then
      AFrmAguarde.Free;
  end;

end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActVisualizarExecute(Sender: TObject);
begin
  inherited;
  if Consulta.IsEmpty then
    Exit;
  if Consulta.FieldByName('TEM_NOTA').AsString = 'S' then
    TFrmNFe.VisualizarNotaEntrada(Consulta.FieldByName('NF_CHAVE').AsString)
  else
  begin
    if ShowMessageWR('Esta nota ainda está resumida, deseja manifestar a ciência da operação para obter a nota completa?',MB_ICONQUESTION) = mrYes then
      ActManifestacaoDoDestinatario.Execute;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActBaixarNotaExecute(Sender: TObject);
var
  AACBrNFe: TACBrNFe;
  I: Integer;
  AZip: TdocZipCollectionItem;
begin
  inherited;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
//  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AACBrNFe.DistribuicaoDFePorNSU(GetUFAutor, Empresa.FieldByName('CNPJCPF').AsString, Consulta.FieldByName('NSU').AsString);
    for i := 0 to AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
    begin
      AZip := AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
      TFrmNFe.GravarXMLNotaEntradaNoBanco(Empresa.FieldByName('CODIGO').AsInteger, AZip);
    end;
  finally
    AACBrNFe.Free;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActManifestacaoDoDestinatarioExecute(Sender: TObject);
begin
  inherited;
  EdtManChave.Text         := Consulta.FieldByName('NF_CHAVE').AsString;
  EdtManNome.Text          := Consulta.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString;
  EdtManDtRecebimento.Text := FormatDateTime(DATA_HORA_NS, Consulta.FieldByName('NF_DT_EMISSAO').AsDateTime);
  EdtManTotal.Value        := Consulta.FieldByName('NF_TOTAL').AsFloat;
  ShowPanelForm(PnlManifesto, bsSingle);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.Manifestar(Sender :String);
begin
  EdtManChave.Text         := Consulta.FieldByName('NF_CHAVE').AsString;
  EdtManNome.Text          := Consulta.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString;
  EdtManDtRecebimento.Text := FormatDateTime(DATA_HORA_NS, Consulta.FieldByName('NF_DT_EMISSAO').AsDateTime);
  EdtManTotal.Value        := Consulta.FieldByName('NF_TOTAL').AsFloat;

  if Sender = 'tiCienciaOperacao' then
  begin
    lblTitulo.Caption := 'Ciencia da Operação';

    lblTexto.Caption := 'O evento de Ciência da operação  registra na NF-e a solicitação do destinatário para a obtenção do arquivo XML.' + #13#10 +
                        'Após o registro deste evento, é permitido que o destinatário efetue o download do arquivo XML.' + #13#10 +
                        '' + #13#10 +
                        'Ciência da operação não significa uma manifestação conclusiva sobre a operação.' + #13#10 +
                        '' + #13#10 +
                        'Uma vez que o destinatário tomou Ciência da operação é obrigatória a sua manifestação.' + #13#10 +
                        '' + #13#10 +
                        'Toda nota informada ao contribuinte tem que ter registrada a sua respectiva manifestação até um prazo máximo de 180 dias, contados da data da ciência.';

    libtnConfirmacao.Visible         := False;
    libtnDesconhecimento.Visible     := False;
    libtnOpNaoRealizada.Visible      := False;
    libtnCiencia.Visible             := True;
  end;

  if Sender = 'tiConfirmacaoOperacao' then
  begin
    lblTitulo.Caption := 'Confirmação da Operação';

    lblTexto.Caption := 'Permite você confirmar que a operação descrita na NF-e ocorreu. Também pode confirmar o recebimento da mercadoria( Para operações com circulação de mercadoria, aguardar chegar o produto físico).' + #13#10 +
                        'Após a confirmação da operação o emitente fica impedido de cancelar NFe.';

    libtnConfirmacao.Visible         := True;
    libtnDesconhecimento.Visible     := False;
    libtnOpNaoRealizada.Visible      := False;
    libtnCiencia.Visible             := False;
  end;

  if Sender = 'tiOperacaoNaoRealizada' then
  begin
    lblTitulo.Caption := 'Operacao Não Realizada';

    lblTexto.Caption := 'Este evento será utilizado em situações em que por algum motivo a operação não se realizou.' + #13#10 +
                       '(Ex.devolução da mercadoria sem entrada do produto físico no estabelecimento, sinistro no transporte, etc.)' + #13#10 +
                       '' + #13#10 +
                       'Quando não foi realizada a operação comercial, não cabendo neste caso a emissão de uma Nota Fiscal de devolução.';

    libtnConfirmacao.Visible         := False;
    libtnDesconhecimento.Visible     := False;
    libtnOpNaoRealizada.Visible      := True;
    libtnCiencia.Visible             := False;
  end;

  if Sender = 'tiDesconhecimentoEmissao' then
  begin
    lblTitulo.Caption := 'Desconhecimento da Emissão';

    lblTexto.Caption := 'Quando não existir conhecimento da determinada operação contra seu CNPJ/inscrição estadual.' + #13#10 +
                        'Este evento permite o destinatário evitar o uso fraudulento do seu CNPJ.';

    libtnConfirmacao.Visible         := False;
    libtnDesconhecimento.Visible     := True;
    libtnOpNaoRealizada.Visible      := False;
    libtnCiencia.Visible             := False;
  end;

  ShowPanelForm(PnlManifesto, bsSingle);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActProcessarRegistrosExecute(Sender: TObject);
var
  QuerX: TFDQuery;
  AACBrNFe, AACBrNFeChave: TACBrNFe;
  I, J: Integer;
  AZip: TdocZipCollectionItem;

  F: TSearchRec;
  Ret: Integer;
  TempNome, ADir: string;
begin
  inherited;
  {----Lixo e Testes---}

   Exit;

  {try
    TFrmNFe.ManifestoDoDestinatario('35190154369517000181550020002031831846404377', teManifDestCiencia);
  except
    on E:Exception do
    begin
      ShowMEssage(E.Message);
    end;
  end;
       }


  ADir := 'C:\WR Sistema\NFe\10609954000150\XML';
  QuerX := GeraFDQuery;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL_ENTRADA ' +
                      'where (NSU = :NSU)';
    Ret := FindFirst(ADir + '\*-dist-dfe.xml', faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Clear;
          AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.LerXMLFromFile(ADir + '\' + F.Name);
          for I := 0 to AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
          begin
            AZip := AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
            QuerX.Close;
            QuerX.Params[0].AsString := AZip.NSU;
            QuerX.Open;
            TFrmNFe.GravarXMLNotaEntradaNoBanco(FCodEmpresa, AZip);

            //Se o Zip que está sendo salvo é um evento de Confirmação ou Ciência da nota, então aproveita e já baixa o XML
            //completo pela chave
            if (AZip.schema = schprocEventoNFe) and
               (AZip.procEvento.tpEvento in [teManifDestConfirmacao, teManifDestCiencia]) then
            begin
              AACBrNFeChave := TFrmNFe.CriaComponenteACBrNFe;
              try
                try
                  AACBrNFeChave.DistribuicaoDFePorChaveNFe(GetUFAutor, Empresa.FieldByName('CNPJCPF').AsString, AZip.procEvento.chDFe);
                except
                  on E:Exception do
                  begin
                    ShowMessageWR('Falha ao tentar baixar o XML pela Chave');
                  end;
                end;
                for J := 0 to AACBrNFeChave.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
                begin
                  AZip := AACBrNFeChave.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
                  TFrmNFe.GravarXMLNotaEntradaNoBanco(Empresa.FieldByName('CODIGO').AsInteger, AZip);
                end;
              finally
                AACBrNFeChave.Free;
              end;
            end;
          end;
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
  finally
    QuerX.Free;
    AACBrNFe.Free;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ActVisualizarXMLExecute(Sender: TObject);
var
  ANome :String;
begin
  inherited;
  ANome := GetDirTemp + Eventos.FieldByName('NF_CHAVE').AsString + Eventos.FieldByName('SCHEMA').AsString + '.xml';
  TBlobField(Eventos.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.LerArquivoZip(Sender: TObject);
var
  AOpenDialog : TOpenDialog;
  AArquivoZip: string;
  APasta, APathXML, APathZip, ACodEmpresa : string;
  AZipFile: TZipFile;
  ASearchRec: TSearchRec;
  I: integer;
  AACBrNFe : TACBrNFe;
  QuerEmpresa: TFDQuery;
begin
  AOpenDialog := TOpenDialog.Create(nil);
  try
    AOpenDialog.Options := AOpenDialog.Options - [ofAllowMultiSelect];
    AOpenDialog.InitialDir := APathZip;
    AOpenDialog.Title      := 'Selecione o arquivo ZIP';
    AOpenDialog.DefaultExt := '*.zip';
    AOpenDialog.Filter     := 'Arquivos Zip(*.zip, *.rar)|*.zip;*.rar';

    if not AOpenDialog.Execute then
      Exit;

    AArquivoZip :=  AOpenDialog.FileName;
    ACodEmpresa := copy(AArquivoZip, pos('DistribuiçãoNFe',AArquivoZip)+16, 1);
    APathZip :=  ExtractFilePath(Application.ExeName) + 'DistribuiçãoNFe';
    APasta := VarToStr(ACodEmpresa) + '-' + FormatDateTime('ddmmyyyy-hhnnss', DataHoraSys);
    APathXML :=  APathZip + '\Temp\' + APasta;

    if not DirectoryExists(APathXML) then
      ForceDirectories(APathXML);

    AZipFile := TZipFile.Create;
    AZipFile.Open(AArquivoZip, zmRead);
    AZipFile.ExtractAll(APathXML);

    QuerEmpresa := GeraFDQuery;
    QuerEmpresa.SQL.Text := 'SELECT * FROM EMPRESA WHERE CODIGO = :CodEmpresa';
    QuerEmpresa.ParamByName('CodEmpresa').AsString := ACodEmpresa;
    QuerEmpresa.Open;

    try
      AACBrNFe := TACBrNFe.Create(nil);
      TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe, QuerEmpresa);
    finally
    end;

    I := FindFirst(APathXML+'\*.xml', 0, ASearchRec);
    while I = 0 do
    begin
      AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.LerXMLFromFile(APathXML + '\' + ASearchRec.Name);
      I := FindNext(ASearchRec);
    end;
  finally
    AOpenDialog.Free;
  end;

  LeArquivoZipRetornoEImporta(StrToInt(ACodEmpresa), AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip);
end;
{$ENDREGION}

{$REGION 'SEÇÃO 1.1: UTILS/////////////////////////////////////////////////////////////////////////////////////'}
procedure TFrame_ConsuNota_Fiscal_Entrada.VerificaDTUltimaConsultaNSU(ACodEmpresa: Integer; ASilent: boolean = True);
var
  AMessage: string;
begin
  if (MinutesBetween(DataHoraSys, TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', ACodEmpresa)) < 60) then
  begin
    AMessage := 'Você consultou em menos de uma hora. Você poderá realizar a próxima consulta em: X minutos. CNPJ bloqueado pela sefaz durante 1 hora(CSTAT 656)!! Você só poderá realizar a próxima consulta em: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', ACodEmpresa) + 60/1440) + '.';
    if not ASilent then
      ShowMessage(AMessage);
    raise Exception.Create(AMessage);
  end;
end;

function TFrame_ConsuNota_Fiscal_Entrada.GetUFAutor: Integer;
begin
  Result := EstadoToCodigoUF(EstadoUFToEnum(Empresa.FieldByName('UF').AsString));
end;

function TFrame_ConsuNota_Fiscal_Entrada.GetUltimoNSU(AACBrNFe: TACBrNFe): String;
begin
  case AACBrNFe.Configuracoes.WebServices.Ambiente of
    taProducao:    Result := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', FCodEmpresa);
    taHomologacao: Result := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU_H', FCodEmpresa);
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.EditaCampo(Campo, Resultado, Codigo: String);
begin
  QueryDragAndDrop.Close;
  if UCHist_Cadastro.CampoPK1 <>'' then
    QueryDragAndDrop.ParambyName(UCHist_Cadastro.CampoPK1).Value :=  StrToIntDef(Codigo,0);
  QueryDragAndDrop.Open;

  QueryDragAndDrop.Edit;
  QueryDragAndDrop.FieldByName(Campo).AsString := Resultado;
  QueryDragAndDrop.Post;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.edtProximaConsultaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ShowMessage('Sua empresa realizou uma consulta com retorno vazio ou seja, que não retornou nenhuma nota. ' + sLineBreak +
              'A Sefaz bloqueou seu CNPJ durante 1 hora para novas requisições ' +
              '(apenas para consulta de notas de entrada). ' + sLineBreak +
              'Você precisará aguardar o tempo informado para realizar a próxima consulta válida.'
              + sLineBreak + sLineBreak + 'PS: Durante este tempo você poderá EMITIR notas normalmente, pois não há interferência entre os serviços');
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.edtVerificaValidadeCertificadoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  CadastroModalMakeVisible(TFrmEmpresa, FCodEmpresa, 'Grupo_Certificado');
//        Empresa.Refresh;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.AtualizaComponenteDaTelaCertificado;
var
  AACBrNFe: TACBrNFe;
begin
  inherited;
//    Todas as validações do certificado devem estar dentro deste try.
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe, Empresa); // Configura o componente para utilizar nas rotinas.

    // Empresa tem certificado? // A data de vencimento é válida?
    ValidaCertificadoACBrNFe(AACBrNFe);

    // Fez Status Serviço
    AACBrNFe.WebServices.StatusServico.Executar;
    edtVerificaValidadeCertificado.Text := 'Válido';
    edtVerificaValidadeCertificado.Style.TextColor := clGreen;
    edtVerificaValidadeCertificado.Style.Color := $00C8FFC4 ; // Verde
    edtVerificaValidadeCertificado.Properties.Buttons[0].Visible := False;
  except
    on E:TExceptionCertificadoInvalido do
    begin
      edtVerificaValidadeCertificado.Text := 'Não Configurado';
      edtVerificaValidadeCertificado.Style.TextColor := clRed;
      edtVerificaValidadeCertificado.Style.Color := $00BBB9FF ; // Vermelho
      edtVerificaValidadeCertificado.Properties.Buttons[0].Visible := True;
    end;

    on E:TExceptionCertificadoVencido do
    begin
      edtVerificaValidadeCertificado.Text := 'Vencido';
      edtVerificaValidadeCertificado.Style.TextColor := clRed;
      edtVerificaValidadeCertificado.Style.Color := $00BBB9FF ; // Vermelho
      edtVerificaValidadeCertificado.Properties.Buttons[0].Visible := True;
      if E.message = 'Certificado não configurado.' then
    end;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.TileOnClick(Sender: TdxTileControlItem);
begin
  FCodEmpresa := Sender.tag;
  RefreshConsulta;
  FechaPanelForm(pnlEmpresa);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.CarregaCadastroEmpresa(Sender: TdxTileControlItem);
begin
  inherited;
  CadastroModalMakeVisible(TFrmEmpresa, Sender.tag, 'Grupo_Certificado');
  Empresa.Refresh;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.VerificaAmbiente(AACBrNFe: TACBrNFe; ASilent: boolean = False);
var
  AMessage: string;
begin
  if AACBrNFe.Configuracoes.WebServices.Ambiente = taHomologacao then
  begin
    AMessage := 'Suas Configurações estão definidas para o modo de HOMOLOGAÇÃO, troque para o ' +
                'modo de PRODUÇÃO para continuar (Tela de Venda > Aba de Nota Fiscal > Configurar)';

    if not ASilent then
      ShowMessageWR(AMessage, MB_ICONWARNING);

    raise Exception.Create(AMessage);
  end;
end;

function TFrame_ConsuNota_Fiscal_Entrada.DefineUltimoNSU(AACBrNFe: TACBrNFe; AUltimoNSU: String): String;
begin
  case AACBrNFe.Configuracoes.WebServices.Ambiente of
    taProducao:    TConfig.SaveString('NF_ENTRADA_ULTIMO_NSU', AUltimoNSU);
    taHomologacao: TConfig.SaveString('NF_ENTRADA_ULTIMO_NSU_H', AUltimoNSU);
  end;
  Result := AUltimoNSU;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 1.2: CLICKS/////////////////////////////////////////////////////////////////////////////////////'}
procedure TFrame_ConsuNota_Fiscal_Entrada.GridEventosDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ActVisualizarXML.Execute;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.GridSubGridViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if Assigned(AFocusedRecord) then
    FiltroTela(trim(VarAsType(Sender.DataController.Values[AFocusedRecord.Index,0],varString)));
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.NFe1Click(Sender: TObject);
begin
  inherited;
  TFrmNFe.Abrir;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.RefreshConsulta;
begin
  inherited;
  TimerProximaConsultaTimer(Self);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ConsultaNFe1Click(Sender: TObject);
var
  AQuantConsultada: Integer;
  ADtPrimeiraConsulta, ADtProximaConsulta: TDateTime;
  AACBrNFe: TACBrNFe;
  AZip: TdocZipCollectionItem;
  J: Integer;
begin
  AQuantConsultada := TConfig.ReadInteger('NF_ENTRADA_QUANT_CONSULTAS');
  ADtPrimeiraConsulta := TConfig.ReadDateTime('NF_ENTRADA_DT_PRIMEIRA_CONSULTA');

  // Teste necessário para não haver consumo indevido.
  if (AQuantConsultada >= 16) and
     (MinutesBetween(DataHoraSys,ADtPrimeiraConsulta) < 60)  then
  begin
    ADtProximaConsulta := IncMinute(ADtPrimeiraConsulta, 60);
    ShowMessageWR('Foram realizadas 20 consultas em menos de 1 hora. Favor aguardar até ' + VarToStrDef(ADtProximaConsulta, '') + ' e tente novamente.');
    Exit;
  end;

  // Se passou aqui e faz mais de 60 minutos da primeira consulta, atualiza a primeira consulta.
  if MinutesBetween(DataHoraSys,ADtPrimeiraConsulta) > 60 then
  begin
    TConfig.SaveDateTime('NF_ENTRADA_DT_PRIMEIRA_CONSULTA', DataHoraSys);
    TConfig.SaveInteger('NF_ENTRADA_QUANT_CONSULTAS', 0);
    AQuantConsultada :=  TConfig.ReadInteger('NF_ENTRADA_QUANT_CONSULTAS');
  end;

  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;

  VerificaAmbiente(AACBrNFe);       //Aqui tem que achar uma forma de avisar que está em homologação

  try
    try
    AACBrNFe.DistribuicaoDFePorChaveNFe(  GetUFAutor,
                                          Empresa.FieldByName('CNPJCPF').AsString,
                                          GridConsultaDBTableView1.Controller.SelectedRecords[0].Values[GridConsultaDBTableView1NF_CHAVE.Index] );
    except
      on E:Exception do
      begin
//        ShowMessageWR('Falha ao tentar baixar o XML pela Chave');
        if AACBrNFe.WebServices.DistribuicaoDFe.Msg = 'Rejeicao: Solicitacao fora de prazo, a NF-e nao esta mais disponivel para download' then
        begin
          ShowMessageWR('Rejeicao: Solicitacao fora de prazo, a NF-e nao esta mais disponivel para download');
          // Aqui deve marcar a nota como nunca mais excha o saco do suporte pergunta o porque essa bosta não da para baixar mais, vai reclamar com os merdas que fizeram isso
          Exit;
        end
        else
          ShowMessage(E.Message);
      end;

    end;

    TConfig.SaveInteger('NF_ENTRADA_QUANT_CONSULTAS', AQuantConsultada + 1);
    for J := 0 to AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
    begin
      AZip := AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[J];
      TFrmNFe.GravarXMLNotaEntradaNoBanco(Empresa.FieldByName('CODIGO').AsInteger, AZip);
      if AZip.schema = schprocNFe then
        ShowMessageWR('Nota importada com sucesso.')
      else
        ShowMessageWR('O XML da Nota ainda não está disponível para o seu CNPJ. Favor manifestar e aguardar de 5 a 15 minutos para consultar novamente.')
    end;
  finally
    AACBrNFe.Free;
  end;
  Consulta.Refresh;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.TileOperacoesClick(Sender: TdxTileControlItem);
begin
  inherited;
  if Sender = tiCienciaOperacao then Manifestar(Sender.Name);
  if Sender = tiConfirmacaoOperacao then Manifestar(Sender.Name);
  if Sender = tiDesconhecimentoEmissao then Manifestar(Sender.Name);
  if Sender = tiOperacaoNaoRealizada then Manifestar(Sender.Name);

  if Sender = tiImportarCompra then ActImportarNotas.Execute;
  if Sender = tiConsultaIndividual then ConsultaNFe1.Click;

  if Sender = tiArquivarVencidas then ArquivarVencidas;
  if Sender = tiReativar then BtnDesarquivarClick(nil);

  if Sender = tiConsultar then
  begin
//    ImportarCTEPorEmpresa; // Importa as CTe
    ImportarNotasPorEmpresaClick; // Importa as NFe
  end;

  if Sender = tiAbreSefaz then
  begin
    if Consulta.FieldByName('TIPO').AsString = 'NFe' then
      TFormConsultaSefazWEB.ConsultarNFe_Navegador(Consulta.FieldByName('NF_CHAVE').AsString)
    else if Consulta.FieldByName('TIPO').AsString = 'CTe' then
      TFormConsultaSefazWEB.ConsultarCTe_Navegador(Consulta.FieldByName('NF_CHAVE').AsString)
  end;

  if Sender = tiArquivar then
  begin
    ShowPanelForm(pnlMotivo, bsSingle);
    RefreshConsulta;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.btnConfirmarClick(Sender: TObject);
var
  I : Integer;
begin
  inherited;
  TransaDragAndDrop.StartTransaction;
  for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
  begin
//    AGridRecord :=
    GridConsultaDBTableView1.Controller.SelectedRows[I];
    EditaCampo('TEM_FINALIZADO','S', GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
    EditaCampo('SITUACAO','4. FINALIZADO', GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
    EditaCampo('MOTIVO_FINALIZADO','Arquivado - ' + cbxMotivo.EditText, GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
    EditaCampo('OBSERVACAO',edtObservacao.Text, GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
  end;

  try
    TransaDragAndDrop.Commit;
  except
    TransaDragAndDrop.Rollback;
  end;

  RefreshConsulta;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.btnCertificadoClick(Sender: TObject);
begin
  inherited;
  CadastroModalMakeVisible(TFrmEmpresa, Empresa.FieldByName('Codigo').AsString, 'Grupo_Certificado');
  Empresa.Refresh;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.tiResetaTudoClick(Sender: TdxTileControlItem);
begin
  inherited;
  TConfig.SaveDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', 0, FCodEmpresa);
  TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU_CTE', '0', FCodEmpresa);
  TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU', '0', FCodEmpresa);
  TConfig.SaveIntegerEmpresa('NF_ENTRADA_CSTAT', 0, FCodEmpresa);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.btnArquivarClick(Sender: TObject);
var
  I : Integer;
begin
  inherited;
  ShowPanelForm(pnlMotivo, bsSingle);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.BtnDesarquivarClick(Sender: TObject);
Var
  I : Integer;
begin
  inherited;
  TransaDragAndDrop.StartTransaction;
  EditaCampo('ATIVO','S', Consulta.FieldByName('CODIGO').AsString);
  try
    TransaDragAndDrop.Commit;
  except
    TransaDragAndDrop.Rollback;
  end;

  RefreshConsulta;
//  GridConsulta.Enabled:=False;
//  for i := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
//  begin
//    if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
//      Continue;
//
//    Consulta.Edit;
//    Consulta.FieldByName('ATIVO').AsString := 'S';
//    Consulta.Post;
//    Consulta.Refresh;
//  end;
//  GridConsulta.Enabled:=True;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.BtnManCienciaClick(Sender: TObject);
begin
  inherited;
  ExecutaManifesto(teManifDestCiencia);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.BtnManConfirmacaoClick(Sender: TObject);
begin
  inherited;
  ExecutaManifesto(teManifDestConfirmacao);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.BtnManDesconhecimentoClick(Sender: TObject);
begin
  inherited;
  ExecutaManifesto(teManifDestDesconhecimento);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.BtnManOperNaoRealizadaClick(Sender: TObject);
begin
  inherited;
  ExecutaManifesto(teManifDestOperNaoRealizada);
end;
{$ENDREGION}

{$REGION 'SEÇÃO 2: STATECHANGE, ONCHANGE, CALCFIELDS, (DATACHANGE e AFTERSCLROL deprecated não usar)///////////////////'}
procedure TFrame_ConsuNota_Fiscal_Entrada.DSDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cxLabel4.Caption := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', Empresa.FieldByName('CODIGO').AsInteger);
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.DSEventosDataChange(Sender: TObject; Field: TField);
var
  AMostrarEventos: Boolean;
begin
  if Field = nil then
  begin
    AMostrarEventos := not Eventos.IsEmpty;
    if GrupoEventos.Visible <> AMostrarEventos then
    begin
      dxLayoutControl1.BeginUpdate;
      try
//        GrupoEventos.Visible    := AMostrarEventos;
//        SplitterEventos.Visible := AMostrarEventos;
      finally
        dxLayoutControl1.EndUpdate;
      end;
    end;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ComboEmpresaPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if Visible then
  begin
//    RefreshConsulta;
  end;
  LiAvisoCertificado.Visible:=Not LiAvisoCertificado.Visible;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.TreeListUsuariosFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  inherited;
  if Abrindo then Exit;

  Consulta.DisableControls;
  if MatchStr(MemTreeList.FieldByName('DESCRICAO').AsString,
             ['Todas','Sem Manifestação',
             'Importar para Compra', 'Autorizada',
             'Cancelada', 'Ciência da operação',
             'Operação confirmada', 'Operação desconhecida',
             'Operação Não Realizada',
             'Autorizada', 'Cancelada','Compra'])then
  begin
//    Cosulta.Refresh;
    // Desvincula o histórico
    // e fecha o menssageiro
    RefreshConsulta;
  end;
//  ShowMessage(Consulta.SQL.Text);
  Consulta.EnableControls;
end;
{$ENDREGION}

{$REGION 'SEÇÃO 3: EVENTOS DO FORM - Create, Show, Hide, Destroy, KeyDown /////////////////////////////////////////////'}
procedure TFrame_ConsuNota_Fiscal_Entrada.FcPrincipalCarregaDataSets(Sender: TObject);
var
  AUsuario: string;
begin
  inherited;
  InicializaSQLWhere(Eventos);
  FCodEmpresa := Empresa.FieldByName('CODIGO').AsInteger;
  BtnManConfirmacao.Caption      := ManifestoDFeToDescricao(teManifDestConfirmacao);
  BtnManCiencia.Caption          := ManifestoDFeToDescricao(teManifDestCiencia);
  BtnManDesconhecimento.Caption  := ManifestoDFeToDescricao(teManifDestDesconhecimento);
  BtnManOperNaoRealizada.Caption := ManifestoDFeToDescricao(teManifDestOperNaoRealizada);
//  tcTitulo.Title.Text := '';
  FcPrincipal.AdicionarDataSet(Consulta, 'NF_ENTRADA_MANIFESTO');

  Abrindo:= True;
  MemTreeList.Locate('TABELA;CHAVE_PK1', varArrayOf(['USUARIO',USUARIO.Codigo]),[]);

  PreencheLookupEmpresa(ComboEmpresa.Properties);
//  FrmPrincipal.EmpresaLista.First;
//  while not FrmPrincipal.EmpresaLista.Eof do
//  begin
//    ComboEmpresa.Properties.Items.AddObject(FrmPrincipal.EmpresaLista.FieldByName('RAZAOSOCIAL').AsString,
//                                 TObject(FrmPrincipal.EmpresaLista.FieldByName('CODIGO').AsInteger));
//    FrmPrincipal.EmpresaLista.Next;
//  end;
  FEditando := SQL_VerificaSeTabelaPossuiRegistroEmEdicaoNaEmpresa('REQ_MANIFESTO', AUsuario);
  if FEditando then
  begin
    lblMensagemAviso.Caption := 'Esta tela está sendo utilizada pelo usuário ' + AUsuario +
                                ' no Computador Desktop-ZHCKS01. Para utilizá-la você deve' +
                                ' assumir o controle dela clicando neste painel.'
  end;
  AtualizaInterface;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.FrameEnter(Sender: TObject);
begin
  inherited;
  // Código abaixo estava no Show.
  ComboEmpresa.Text := Empresa.FieldByName('RAZAOSOCIAL').AsString;
  lblDataUltimaConsulta.Caption:= cxDateTimeToText(TConfig.ReadDateTime('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ_LABEL'));
  TimerProximaConsultaTimer(Self);
  AtualizaComponenteDaTelaCertificado;
  Abrindo:= False;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 5: DATASET - Edit, Post, Insert, Delete, Cancel, Desativar, CloseOpen /////////////////////////////////'}
procedure TFrame_ConsuNota_Fiscal_Entrada.EventosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Eventos);
//  Eventos.SQL.Add('and (SCHEMA in (' + SchemaDFeAsSQL([schresEvento, schprocEventoNFe]) + '))');
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Eventos.Open;
  QueryDragAndDrop.Open;
  ReqManifesto.Open;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Eventos.Close;
  QueryDragAndDrop.Close;
  ReqManifesto.Close;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 6: VIEW'}
procedure TFrame_ConsuNota_Fiscal_Entrada.FiltroTela(AFiltroClique :String);
begin
  tiCienciaOperacao.Visible        :=  AFiltroClique = '1. NOVO';
  tiConfirmacaoOperacao.Visible    :=  AFiltroClique = '1. NOVO';
  tiOperacaoNaoRealizada.Visible   :=  AFiltroClique = '1. NOVO';
  tiDesconhecimentoEmissao.Visible :=  AFiltroClique = '1. NOVO';
  tiImportarCompra.Visible         :=  AFiltroClique = '3. LANÇAR NA COMPRA';
//  tiConsultar.Visible             :=  AFiltroClique <>  '4. FINALIZADO';
  tiConsultaIndividual.Visible     :=  AFiltroClique = '2. AGUARDANDO SEFAZ';
  tiArquivar.Visible              :=  AFiltroClique <> '4. FINALIZADO';
  tiReativar.Visible               :=  AFiltroClique = '4. FINALIZADO';
  tiArquivarVencidas.Visible       :=  not MatchStr(AFiltroClique, ['4. FINALIZADO', '3. LANÇAR NA COMPRA']);

  FTipoConsulta := AFiltroClique;   //VARIAVEL GLOBAL SÓ PODE SER MEXIDO NESSA FUNÇAO
//  RefreshConsulta;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  // Aqui abre a SubGrid
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);

  // Para ver só as compras da empresa
  SQLWhere.AddAnd('CODEMPRESA = ' + VarToStr(FCodEmpresa));

  // Aqui agrupa no Grid principal a Situação e ordena pelo NF_DT_EMISSAO
  GridConsultaDBTableView1.DataController.BeginUpdate;
  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1SITUACAO.Index].GroupIndex := 0;
  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1NF_DT_EMISSAO.Index].SortOrder := TdxSortOrder.soDescending;
  GridConsultaDBTableView1.DataController.EndUpdate;

  // Aqui monta o subgrid de acordo com as colunas agrupadas no Grid principal
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
        ACampo_Codigo    := 'N.COD'+FieldName;

      ACampo_Sql       := ' N.'+ACampo_Codigo;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.AddTreeList(ACodigo, AParent, AImageIndex: Integer;
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
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.AtualizaInterface;
begin
  lilblAvisoPanel.Visible := FEditando;
  tcAcoes.Enabled := not FEditando;
end;

{$ENDREGION}

{$REGION 'SEÇÃO 10: Validate, CellText , GetContentStyle, GetCellHint, UpdateEdit, DrawCell , GetDisplayText'}
procedure TFrame_ConsuNota_Fiscal_Entrada.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //DEFAULT
  //Text: $00484848    Background: $00F8EFEF
//  ACanvas.Brush.Color := $00F8EFEF;
  ACanvas.Font.Color := $00484848;
  // Default
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := clGradientInactiveCaption // Vermelho mais escurinho
  else
    ACanvas.Brush.Color := $00F8EFEF; // Padrão

  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString)) = 'NFe') and
     (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_NOTA.Index], varString)) <> 'S') and
     (MinutesBetween(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1NF_DT_EMISSAO.Index], varDate), DataHoraSys) > 10 * 24 * 60)
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $009EA8FC // Vermelho mais escurinho
    else
      ACanvas.Brush.Color := $00BBB9FF ; // Vermelho

  end
  else
  // Se tem compra, fica azul
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_COMPRA.Index], varString)) = 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $FACE87  // Blue mais escuro
    else
      ACanvas.Brush.Color := $F0CAA6; // Blue
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString)) = 'CTe')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $ADDEFF  // Marrom
    else
      ACanvas.Brush.Color := $ADDEFF; // Bege
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_NOTA.Index], varString)) = 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $00A6FE9E //$00A9FEA5 // verde
    else
      ACanvas.Brush.Color := $00C8FFC4; //verde
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_NOTA.Index], varString)) <> 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := $0098FCFA //$0079FBF8 //amarelo
    else
      ACanvas.Brush.Color := $0098FCFA//$00B9F8FF; //amarelo
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_CIENCIA.Index], varString)) <> 'S')
  and (DaysBetween(VarToDateTime(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1NF_DT_EMISSAO.Index]), DataHoraSys) > 10)
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := clScrollBar // cinza mais escuro
    else
      ACanvas.Brush.Color := cl3DLight; // Cinzinha
  end
  else
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TEM_CIENCIA.Index], varString)) <> 'S')
  then
  begin
    if AViewInfo.Focused or AViewInfo.Selected then
      ACanvas.Brush.Color := clGradientInactiveCaption // azulzinho padrão
    else
      ACanvas.Brush.Color := $00F8EFEF; // azulzinho

  end;
end;

procedure TFrame_ConsuNota_Fiscal_Entrada.GridConsultaDBTableView1NF_DT_EMISSAOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if DaysBetween(AViewInfo.GridRecord.Values[GridConsultaDBTableView1NF_DT_EMISSAO.Index],DataHoraSys) > 10 then
    begin
      ACanvas.Font.Color := clRed;
    end
  end;
end;
{$ENDREGION}

procedure TFrame_ConsuNota_Fiscal_Entrada.TimerProximaConsultaTimer(Sender: TObject);
begin
  inherited;
  if MinutesBetween(DataHoraSys, TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', FCodEmpresa)) < 60 then
  begin
    edtProximaConsulta.Text := VarToStr(MinutesBetween(DataHoraSys, TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', FCodEmpresa) + 60/1440)) + ' minutos';
    edtProximaConsulta.Style.TextColor := clRed;
    edtProximaConsulta.Style.Color := $00BBB9FF ; // Vermelho
  end
  else
  begin
    edtProximaConsulta.Text := 'Consulta Disponível';
    edtProximaConsulta.Style.TextColor := clGreen;
    edtProximaConsulta.Style.Color := $00C8FFC4 ; // Verde
  end;
end;

  {$REGION 'Código não utilizado ainda'}

//// Entradas
//procedure TimerAcaoManifestacao;
//procedure BotaoIniciarAcao;
//procedure BotaoTentarNovamenteEvento(ACodEvento: integer);
//procedure BotaoTentarNovamenteManifestacao(ACodManifestacao: integer);
//
//procedure GravarDadosManifestacao(AACBrNFe: TACBrNFe);
//function PreRequisicao: Boolean;
//function PosRequisicao: Boolean;
//function BaixarDadosManifestacao: boolean;
//
//procedure BuscaEventosJaImportados(ACodEmpresa: integer; ATipo: string);
//procedure FazRequisiçãoParaBaixar;
//
//procedure ImportarNotasPorEmpresaAuto;
//
//procedure WRButtonFlat4Click(Sender: TObject);
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.TimerAcaoManifestacao;
//begin
////  seleciona todas as empresas com certificado válido
////  while empresas do
////  begin
//  //  inicializa ACBrNFe
//  //  AACBrNFe = BaixarDadosManifestacao(AACBrNFe);
//  //  GravarDadosManifestacao(AACBrNFe);
////  end
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.BotaoIniciarAcao;
//var
//  AOk : Boolean;
//  AQuantNotas: integer;
//  AUltNSU, AMaxNSU: string;
//begin
////  inicializa ACBrNFe
////  AACBrNFe = BaixarDadosManifestacao(AACBrNFe);
////  Fazer a pré validação antes de gravar dados.
////  GravarDadosManifestacao(AACBrNFe);
//  if not Assigned(FRequisicoes) then
//    FRequisicoes := TdxRichEditControl.Create(self)
//  else
//    FRequisicoes.Document.CreateNewDocument;
//
//  try
//    PreRequisicao;
//
//    repeat
//      AOk := BaixarDadosManifestacao;
//
//      if not AOk then
//        break;
//
//      // Se chegou aqui deu certinho
//      RichEdit_CriaHyperlink(FRequisicoes, '1 bem-sucedida', 'REQUISICAO:BEM-SUCEDIDA');
//
//      AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', Empresa.FieldByName('CODIGO').AsInteger);
//      AMaxNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_MAX_NSU', Empresa.FieldByName('CODIGO').AsInteger);
//
//    until AUltNSU = AMaxNSU;
//
//  except
//    on E:Exception do
//    begin
//      RichEdit_CriaHyperlink(FRequisicoes, '1 mal-sucedida', 'REQUISICAO:MAL-SUCEDIDA');
//      ShowMessage(E.Message);
//    end;
//  end;
//
//  PosRequisicao;
//
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.BotaoTentarNovamenteEvento(ACodEvento: integer);
//begin
//  // CloseOpen Eventos(ACodEvento);
//  // Carrega evento no ACBr
//  // GravarDadosManifestacao(AACbrNFe);
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.BotaoTentarNovamenteManifestacao(ACodManifestacao: integer);
//begin
//  // CloseOpen EventosManifestacao(ACodManifestacao)
//  // Carrega notas no ACBr
//  // GravarDadosManifestacao(AACbrNFe);
//end;
//
//// Aqui deve guardar os dados da manifestação dentro do banco de dados.
//procedure TFrame_ConsuNota_Fiscal_Entrada.GravarDadosManifestacao(AACBrNFe: TACBrNFe); // tentar passar o zip, o menor é melhor
//begin
//// Colocar o pai em edição para que não existe concorrência. - Encontrar o pai.
//// Garantir qie pai está em edição. para que outro infeliz não consiga roubar a prioridade.
//// while ACBrTemNotas do
////  begin
////    try
////      // Grava no banco (insert ou edit)
////    except
////      // Erro ao gravar
////    end;
////  end;
//end;
//
//function TFrame_ConsuNota_Fiscal_Entrada.PreRequisicao: Boolean;
//begin
//  // Aqui tem que ter algo para travar outra pessoa de fazer a consulta ao mesmo tempo
//  // Pai.Edit;
//  // Aqui tem que fazer um select no historico_editando.
//  // Se tiver algo editando, não deve deixar.
//  ReqManifesto.Insert;
//
//  if not Assigned(FListaErros) then
//    FListaErros := TStringList.Create
//  else
//    FListaErros.Clear;
//
//  if not Assigned(FACBrNFe) then
//    FACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
//
//  TFrmNFe.CarregaConfiguracoesIniNFe(FACBrNFe, Empresa); // Configura o componente para utilizar nas rotinas.
//
//  try
//    VerificaDTUltimaConsultaNSU(FCodEmpresa);
//  except
//    // Result = "CNPJ Bloqueado, você realmente quer fazer isso?';
//    // Result = Cliente clicou no botão que queria realmente fazer isso, mesmo estando bloquado. -> Gera histórico
////    if MessageDlg('CNPJ Bloqueado para Requisições. É necessário aguardar ' + VarToStr(MinutesBetween(DataHoraSys, TConfig.ReadDateTimeEmpresa('NF_ENTRADA_DT_ULTIMA_CONSULTA_SEFAZ', FCodEmpresa) + 60/1440)) + ' minutos' +
////                  ' para fazer outra requisição.'
////                  + sLineBreak + sLineBreak + 'Deseja continuar mesmo assim?', mtConfirmation, mbYesNo, 0) <> mrYes
////    then
//    FListaErros.Add('CNPJ Bloqueado para Requisições');
//  end;
//
//  // Todas as validações do certificado devem estar dentro deste try.
//  try
//    ValidaCertificadoACBrNFe(FACBrNFe);
//  except
//    on E:TExceptionCertificadoInvalido do
//    begin
//      FListaErros.Add('Certificado Digital Não Configurado.');
//    end;
//    on E:TExceptionCertificadoVencido do
//    begin
//      FListaErros.Add('Certificado Digital Vencido.');
//    end;
//  end;
//
//  Result := FListaErros.Count = 0;
//
//  if FListaErros.Count > 0 then
//    raise Exception.Create('Validação Mal Sucedida');
//end;
//
//function TFrame_ConsuNota_Fiscal_Entrada.PosRequisicao: Boolean;
//begin
//
//end;
//
//function TFrame_ConsuNota_Fiscal_Entrada.BaixarDadosManifestacao: boolean;
//var
//  AUltNSU : string;
//  I: integer;
//  ANotasCollection: TdocZipCollection;
//  ANota: TdocZipCollectionItem;
//begin
//  // Aqui deve baixar e inserir os dados brutos dentro do Banco de Dados
//  AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', Empresa.FieldByName('CODIGO').AsInteger);
//
//  // Esta é a rotina que baixa as notas e insere o zip dentro do FACBrNFe.
//  FACBrNFe.DistribuicaoDFePorUltNSU(GetUFAutor, Empresa.FieldByName('CNPJCPF').AsString, AUltNSU);
//
//  ANotasCollection := FACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip;
//
//  // Aqui deve testar se tem notas.
//  if ANotasCollection.Count > 0 then
//  begin
//    Result := False;
//    Exit;
//  end;
//
//  // Aqui abre uma query com o resumo de tudo o que já foi improtado pela empresa
//  // Para não duplicar
//  BuscaEventosJaImportados(Empresa.FieldByName('CODIGO').AsInteger, 'NFe');
//
//  // Se chegou aqui é porque tem notas. Então deve inserir na tabela de eventos.
//  for I := 0 to ANotasCollection.Count - 1 do
//  begin
//    ANota := ANotasCollection.Items[I];
//    try
//      // Aqui vai procurar na query de tela se existe o NSU que importou.
//      if not ResumoEventosJaImportados.Locate('NSU', ANota.NSU,[]) then
//        Eventos.Insert
//      else
//        Eventos.Edit;
//
//      // Precisa importar principalmente o XML
//      Eventos.FieldByName('CODEMPRESA').AsInteger := Empresa.FieldByName('CODIGO').AsInteger;
//      Eventos.FieldByName('NSU').AsString         := ANota.NSU;
//      Eventos.FieldByName('ARQUIVO_XML').AsString := ANota.XML;
//      Eventos.Post;
//    except
//      on E:Exception do
//      begin
//        Eventos.Cancel;
//        FListaErros.Add(E.Message);
//        raise Exception.Create('Erro ao fazer a primeira importação dos eventos');
//      end;
//    end;
//  end;
//
//  TConfig.SaveStringEmpresa('NF_ENTRADA_ULTIMO_NSU', FACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU, Empresa.FieldByName('CODIGO').AsInteger);
//  TConfig.SaveStringEmpresa('NF_ENTRADA_MAX_NSU', FACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.maxNSU, Empresa.FieldByName('CODIGO').AsInteger);
//  Result := True;
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.BuscaEventosJaImportados(ACodEmpresa: integer; ATipo: string);
//begin
//  ResumoEventosJaImportados.Close;
//  ResumoEventosJaImportados.ParamByName('tipo').AsString := ATipo;
//  ResumoEventosJaImportados.ParamByName('codempresa').AsInteger := ACodEmpresa;
//  ResumoEventosJaImportados.Open;
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.FazRequisiçãoParaBaixar;
//var
//  QuerEmpresa: TFDQuery;
//  AACBrNFe: TACBrNFe;
//  AOk: boolean;
//  AUltNSU, AMaxNSU: string;
//begin
//  QuerEmpresa := GeraFDQuery;
//  AACBrNFe := TACBrNFe.Create(nil);
//  try
//    //Carrega aqui tudo o que tiver da empresa selecionada
//    QuerEmpresa.Close;
//    QuerEmpresa.SQL.Text := 'SELECT * FROM EMPRESA WHERE CODIGO = :CodEmpresa';
//    QuerEmpresa.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
//    QuerEmpresa.Open;
//
//    // Aqui deve iniciar a requisição -------------
//    // Precisa informar por onde este evento foi startado. Se foi Apertando o botão pelo usuário, ou foi automaticamente pelo sistema.
//
//    TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe, QuerEmpresa); // Configura o componente para utilizar nas rotinas.
//    AOk := True;
//    //    Todas as validações do certificado devem estar dentro deste try.
//    try
//
//      // Empresa tem certificado? // A data de vencimento é válida?
//      ValidaCertificadoACBrNFe(AACBrNFe);
//
//      // Fez Status Serviço
//      AACBrNFe.WebServices.StatusServico.Executar;
//    except
//      on E:Exception do
//      begin
//        // Result = 'Empresa 1: Erro no certificado. Ex: Certificado não configurado'
//        if MessageDlg(E.message + sLineBreak + 'Deseja configurar o certificado?', mtConfirmation, mbYesNo, 0) = mrYes then
//        begin
//          CadastroModalMakeVisible(TFrmEmpresa, FCodEmpresa, 'Grupo_Certificado');
//          Empresa.Refresh;
//        end;
//
//        // Aqui deve abrir uma opção para configurar o certificado.
//        AOk := False;
//      end;
//    end;
//
//    try
//      VerificaAmbiente(AACBrNFe);
//    except
//      // Result = 'Empresa 1: Tentativa de consulta em Ambiente de Homologação'
//      on E:Exception do
//      begin
//        if MessageDlg(E.message + sLineBreak + 'Deseja configurar o ambiente?', mtConfirmation, mbYesNo, 0) = mrYes then
//        begin
//          with TFrmNFe.Create(Self) do
//          try
//            ShowModal;
//          finally
//            Free;
//          end;
//        end;
//        // Aqui deve abrir uma opção para alterar o ambiente.
//        AOk := False;
//      end;
//
//    end;
//
//    try
//      VerificaDTUltimaConsultaNSU(FCodEmpresa);
//    except
//      if MessageDlg('O CNPJ está bloqueado pela Sefaz durante 1 hora. Você deseja continuar mesmo assim?', mtConfirmation, mbYesNo, 0) = mrYes then
//      begin
//        CadastroModalMakeVisible(TFrmEmpresa, FCodEmpresa, 'Grupo_Certificado');
//        Empresa.Refresh;
//      end
//      else
//      // Result = "CNPJ Bloqueado, você realmente quer fazer isso?';
//      // Result = Cliente clicou no botão que queria realmente fazer isso, mesmo estando bloquado. -> Gera histórico
//        AOk := False;
//    end;
//
//    if not AOk then
//      Exit;
//    Exit;
//    repeat
//      AOk := TentaBaixarEImportar(AACBrNFe,
//                                  QuerEmpresa.FieldByName('CODIGO').AsInteger,
//                                  QuerEmpresa.FieldByName('CNPJCPF').AsString);
//
//      if not AOk then
//        break;
//
//      AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', QuerEmpresa.FieldByName('CODIGO').AsInteger);
//      AMaxNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_MAX_NSU', QuerEmpresa.FieldByName('CODIGO').AsInteger);
//
//    until (AUltNSU = AMaxNSU) and not FTentarNovamente;
//  finally
//    QuerEmpresa.Free;
//    AACBrNFe.Free;
//  end;
//end;
//
//// NÃO APAGAR
//procedure TFrame_ConsuNota_Fiscal_Entrada.WRButtonFlat4Click(Sender: TObject);
//  var
//  cUFAutor, CNPJ, ultNSU, ANSU: string;
//  AACBrNFe: TACBrNFe;
//  AZip: TdocZipCollectionItem;
//  i: Integer;
//begin
//(*
//  TFrmNFe.CarregaConfiguracoesIniCTe(ACBrCTe1, Empresa, nil, ACBrCTeDACTeRL1);
//  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
//  cUFAutor := Empresa.FieldByName('UF').AsString;
//  CNPJ := Empresa.FieldByName('CNPJCPF').AsString;
//  ultNSU := '0';
//  ANSU := '';
//   try
//    if ANSU = '' then
//      ACBrCTe1.DistribuicaoDFePorUltNSU(GetUFAutor, CNPJ, ultNSU)
//    else
//      ACBrCTe1.DistribuicaoDFePorNSU(GetUFAutor, CNPJ, ANSU);
//
//    for i := 0 to ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
//    begin
//      AZip := ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
//      TFrmNFe.GravarXMLCTeNoBanco(0, ACBrCTe1, AZip);
//	  end;
//
//    ShowMessage('CTe Importados.');
//  except
//    on E:Exception do
//        begin
//          ShowMessageWR(E.Message + sLineBreak + 'Erro: ' + VarToStr(ACBrCTe1.WebServices.DistribuicaoDFe.retDistDFeInt.CSTAT), MB_ICONWARNING);
//           Exit;
//        end;
//  end;       *)
//end;
//
//procedure TFrame_ConsuNota_Fiscal_Entrada.ImportarNotasPorEmpresaAuto;
//var
//  AACBrNFe: TACBrNFe;
//  AUltNSU, AMaxNSU: string;
//  AOk: Boolean;
//begin
//  AACBrNFe := TACBrNFe.Create(nil);
//  AOk := True;
//  try
//      // Aqui deve iniciar a requisição -------------
//      // Precisa informar por onde este evento foi startado. Se foi Apertando o botão pelo usuário, ou foi automaticamente pelo sistema.
//
//    TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe, Empresa); // Configura o componente para utilizar nas rotinas.
//
//    //    Todas as validações do certificado devem estar dentro deste try.
//    try
//      ValidaCertificadoACBrNFe(AACBrNFe);
//    except
//      // Result = 'Empresa 1: Erro no certificado. Ex: Certificado não configurado'
//      // Aqui deve abrir uma opção para configurar o certificado.
//      AOk := False;
//    end;
//
//    try
//      VerificaDTUltimaConsultaNSU(FCodEmpresa);
//    except
//      // Result = "CNPJ Bloqueado, você realmente quer fazer isso?';
//      // Result = Cliente clicou no botão que queria realmente fazer isso, mesmo estando bloquado. -> Gera histórico
//      AOk := False;
//    end;
//
//    if not AOk then
//      Exit;
//
//    repeat                                                     // Pode ser alterado para um Local, mas tem que fazer drilling.
//      AOk := TentaBaixarEImportar(AACBrNFe,
//                                  Empresa.FieldByName('CODIGO').AsInteger,
//                                  Empresa.FieldByName('CNPJCPF').AsString);
//
//      if not AOk then
//        break;
//
//      AUltNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_ULTIMO_NSU', Empresa.FieldByName('CODIGO').AsInteger);
//      AMaxNSU := TConfig.ReadStringEmpresa('NF_ENTRADA_MAX_NSU', Empresa.FieldByName('CODIGO').AsInteger);
//
//    until (AUltNSU = AMaxNSU) and not FTentarNovamente;
//
//    // Aqui deve finalizar a requisição -------------
//    // Aqui finaliza a função de importar. Se não foi automático.
//
//  finally
//    AACBrNFe.Free;
//  end;
//  RefreshConsulta;
//end;
{$ENDREGION}

initialization
  RegisterClass(TFrame_ConsuNota_Fiscal_Entrada);
  RegisterFrameCon(Tag_Manifestacao_NotaFiscalEntrada, TFrame_ConsuNota_Fiscal_Entrada);

end.
