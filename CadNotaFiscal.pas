unit CadNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxGraphics, DB, cxGridCustomView,
  IBX.IBCustomDataSet, cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, cxMaskEdit,
  dxLayoutControl, Menus, StdCtrls, cxButtons, cxTextEdit, ExtCtrls, cxCheckBox, uOpenFolderDialog, pcnEnvEventoNFe,
  ACBrNFe, IBX.IBDatabase, IBX.IBStoredProc, ACBrNFeDANFEClass, ComObj, SHDocVw, ComCtrls, dxLayoutLookAndFeels, UrlMon,
  cxCalendar, cxDateProfileButton, ACBrNFSeX, StrUtils, cxContainer, cxEdit, cxDropDownEdit, IBX.IBQuery, cxLabel,
  cxStyles, OleCtrls, ImgList, cxDBLabel, ACBrNFeNotasFiscais, cxMemo, DataModuleImpressao, NFe,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  dxCore, cxDateUtils, frxClass, frxDBSet, cxClasses, System.ImageList, HTMLUn2, HtmlView, cxGridTableView,
  cxCurrencyEdit, dxSkinsCore, dxSkinscxPCPainter, ACBrNFeDANFeRLClass, FireDAC.Comp.Client, pcnConversao,
  Vcl.Imaging.pngimage, ACBrDFeException, FireDAC.Stan.Param, System.Actions, Vcl.ActnList, UCBase, wrConversao,
  dxDateRanges, WREventos, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  System.Generics.Collections, NFSe, uWRNotaFiscal, dxScrollbarAnnotations, Frame_CadVenda_Mestre, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TTotTrib = record
    FederalNacional : Currency;
    FederalImportacao : Currency;
    Estadual : Currency;
    Municipal : Currency;
    Total : Currency;
  end;

  TSituacaoNota = (snAutorizada, snNaoAutorizada, snCancelada, snDesconheciada, snDenegada);

  TTipoOperacaoNota = (onConsultaSituacaoLote, onConsultarLote, onCancelarNFSe, onRetornoCancelamentoNFe, onLinkNFSe,
                       onCartaCorrecao, onInutilizarNumeracao, onSalvarXMLRetorno, onSalvarNota, onImportacao,
                       onEnviarEmail);

  TTipoMenssagemException = (tmeCertificado, tmeCidade, tmeRetNFSe);

  TFrmNotaFiscal = class(TForm)
    DS: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    OpenFolderDialog1: TOpenFolderDialog;
    Transa: TIBTransaction;
    NotaFiscalXML: TIBDataSet;
    dxLayoutControl1Item12: TdxLayoutItem;
    PageControl: TPageControl;
    TabSheet5: TTabSheet;
    MemoResposta: TMemo;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespostaWeb: TMemo;
    Dados: TTabSheet;
    MemoDadosResposta: TMemo;
    MainMenu1: TMainMenu;
    ImgListMenuConfig: TImageList;
    ImgListBotoes16: TImageList;
    ImgListBotoes24: TImageList;
    LayoutItemGridNotas: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2CODVENDA: TcxGridDBColumn;
    cxGridDBTableView2NF_DT_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView2NF_NATUREZA_OPERACAO: TcxGridDBColumn;
    cxGridDBTableView2NF_NUMERO: TcxGridDBColumn;
    cxGridDBTableView2NF_CHAVE: TcxGridDBColumn;
    cxGridDBTableView2NF_TIPO: TcxGridDBColumn;
    cxGridDBTableView2NF_PROTOCOLO: TcxGridDBColumn;
    cxGridDBTableView2NF_PROTOCOLO_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_DT_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_STATUS: TcxGridDBColumn;
    cxGridDBTableView2MOTIVO_CANCELAMENTO: TcxGridDBColumn;
    cxGridDBTableView2NF_MOTIVO_STATUS: TcxGridDBColumn;
    NotaFiscalXMLAMBIENTE: TStringField;
    cxGridDBTableView2AMBIENTE: TcxGridDBColumn;
    CkExibirCancelada: TcxCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    NotaFiscal1: TMenuItem;
    EdtDtInicial: TcxDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    EdtDtFinal: TcxDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnPesquisar: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    GrupoCabecalho: TdxLayoutGroup;
    Label1: TLabel;
    CkExibirNFSe: TcxCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    BtnProfEmissao: TcxDateProfileButton;
    dxLayoutControl1Group2: TdxLayoutGroup;
    pnlConfirmaNFE: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    EdtCNPJ: TcxTextEdit;
    LayoutItemCNPJ: TdxLayoutItem;
    EdtNumeroProtocolo: TcxTextEdit;
    LayoutItemNumeroProtocoloCod: TdxLayoutItem;
    btnConfirma: TcxButton;
    dxLayoutControl2Item5: TdxLayoutItem;
    EdtIDCod: TcxTextEdit;
    LayoutItemIDCod: TdxLayoutItem;
    EdtChave: TcxTextEdit;
    LayoutItemChave: TdxLayoutItem;
    btnCancelar: TcxButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    EdtInscricaoMunicipal: TcxTextEdit;
    LayoutItemIncricaoMunicipal: TdxLayoutItem;
    GrupoXML: TdxLayoutGroup;
    CkExibirNFe: TcxCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    CkExibirConfirmada: TcxCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    Arquivo1: TMenuItem;
    EnviarEmail4: TMenuItem;
    ConsultarLote1: TMenuItem;
    LinkNFSe1: TMenuItem;
    Visualizar1: TMenuItem;
    GerarPDF1: TMenuItem;
    N1: TMenuItem;
    VizualizarXML1: TMenuItem;
    ValidarXML1: TMenuItem;
    RecuperarXMLpelachave1: TMenuItem;
    SalvarXMLdeRetorno1: TMenuItem;
    ConsultarcarregandoXML1: TMenuItem;
    N2: TMenuItem;
    StatusServio1: TMenuItem;
    CancelamentodaNFE1: TMenuItem;
    Inutilizarnumerao1: TMenuItem;
    CartadeCorreo1: TMenuItem;
    Outros1: TMenuItem;
    ConsultaCadastro1: TMenuItem;
    ConsultarReciboLote1: TMenuItem;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    GrupoDados: TdxLayoutGroup;
    CbEmpresa: TcxComboBox;
    dxLayoutControlSelectEmpresa: TdxLayoutItem;
    cxGridDBTableView2CodEmpresa: TcxGridDBColumn;
    dxLayoutControl2Group3: TdxLayoutGroup;
    ImportarXML1: TMenuItem;
    IBStoredProc1: TIBStoredProc;
    ForarBusca1: TMenuItem;
    CbAmbiente: TcxComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    Fechar1: TMenuItem;
    N3: TMenuItem;
    Configuraes1: TMenuItem;
    cxGridDBTableView2NF_SITUACAO: TcxGridDBColumn;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxLabel1: TcxDBLabel;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxLabel2: TcxDBLabel;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxLabel4: TcxDBLabel;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxLabel3: TcxDBLabel;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl2SeparatorItem1: TdxLayoutSeparatorItem;
    EdtNumero: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1LabeledItem1: TdxLayoutLabeledItem;
    OpenXml: TOpenDialog;
    EdtCodVenda: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    CkExibirDesconhecido: TcxCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleLetraPreta: TcxStyle;
    ExportarXML1: TMenuItem;
    SaveXml: TSaveDialog;
    MemoJustificativa: TcxMemo;
    LayoutItemJustificativa: TdxLayoutItem;
    cxGridDBTableView2NF_SEQUENCIA_EVENTO: TcxGridDBColumn;
    MenuImpressoes: TMenuItem;
    frxNotaFiscal: TfrxDBDataset;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl1Item20: TdxLayoutItem;
    GrupoEventos: TdxLayoutGroup;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    NotaFiscalXML_Evento: TIBDataSet;
    DSEvento: TDataSource;
    cxGrid2DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid2DBTableView1NF_DT_EMISSAO: TcxGridDBColumn;
    cxGrid2DBTableView1NF_NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1NF_DT_CANCELAMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1Ambiente: TcxGridDBColumn;
    cxGrid2DBTableView1NF_SEQUENCIA_EVENTO: TcxGridDBColumn;
    NotaFiscalXML_EventoCODIGO: TIntegerField;
    NotaFiscalXML_EventoCODEMPRESA: TIntegerField;
    NotaFiscalXML_EventoCODVENDA: TIBStringField;
    NotaFiscalXML_EventoNF_DT_EMISSAO: TDateTimeField;
    NotaFiscalXML_EventoNF_NATUREZA_OPERACAO: TIBStringField;
    NotaFiscalXML_EventoNF_CHAVE: TIBStringField;
    NotaFiscalXML_EventoNF_AMBIENTE: TIntegerField;
    NotaFiscalXML_EventoARQUIVO_XML: TBlobField;
    NotaFiscalXML_EventoNF_DT_CANCELAMENTO: TDateTimeField;
    NotaFiscalXML_EventoNF_CSTAT: TIntegerField;
    NotaFiscalXML_EventoMOTIVO_CANCELAMENTO: TWideMemoField;
    NotaFiscalXML_EventoNF_MOTIVO_STATUS: TWideMemoField;
    NotaFiscalXML_EventoTIPO: TIBStringField;
    NotaFiscalXML_EventoNF_RAZAOSOCIAL: TIBStringField;
    NotaFiscalXML_EventoNF_TIPO: TIntegerField;
    NotaFiscalXML_EventoNF_SITUACAO: TIBStringField;
    NotaFiscalXML_EventoAmbiente: TStringField;
    N4: TMenuItem;
    Evento1: TMenuItem;
    Visualizar_Evento1: TMenuItem;
    VisualizarXML_Evento1: TMenuItem;
    MenuPesquisar: TMenuItem;
    PopupMenuNFe: TPopupMenu;
    VisualizarDANFe1: TMenuItem;
    VizualizarXML2: TMenuItem;
    N6: TMenuItem;
    CartadeCorreo2: TMenuItem;
    CancelamentodaNFe2: TMenuItem;
    EnviarEmail1: TMenuItem;
    N7: TMenuItem;
    cxGridDBTableView2TIPO: TcxGridDBColumn;
    GrupoDetalhes: TdxLayoutGroup;
    N5: TMenuItem;
    SaveZip: TSaveDialog;
    S1: TMenuItem;
    MenuEventos: TPopupMenu;
    V1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    ConsultarNaSEFAZ1: TMenuItem;
    C1: TMenuItem;
    lblCartaCorrecao: TcxLabel;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    lblCartaCorrecaoI: TcxLabel;
    GrupoInformacoesCCe: TdxLayoutGroup;
    dxLayoutControl2Item9: TdxLayoutItem;
    lblCartaCorrecaoII: TcxLabel;
    dxLayoutControl2Item10: TdxLayoutItem;
    lblCartaCorrecaoIII: TcxLabel;
    GrupoQuantidades: TdxLayoutGroup;
    edtCartasdeCorrecaoRestantes: TcxCurrencyEdit;
    LayoutItemQtdCartasRestantes: TdxLayoutItem;
    EdtCaracteresRestantes: TcxCurrencyEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    cxGridDBTableView2NF_DIGEST_VALUE: TcxGridDBColumn;
    CkExibirNFCe: TcxCheckBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    NotaFiscalXML_EventoNF_CNPJCPF_DESTINO: TIBStringField;
    GrupoAvancado: TdxLayoutGroup;
    CkExibirInativos: TcxCheckBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxGridDBTableView2STATUS: TcxGridDBColumn;
    CkExibirDenegada: TcxCheckBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    CkExibirNaoAutorizada: TcxCheckBox;
    dxLayoutControl1Item24: TdxLayoutItem;
    N8: TMenuItem;
    ExportarXML2: TMenuItem;
    HTMLViewer1: THtmlViewer;
    ExportarXML_Evento: TMenuItem;
    NotaFiscalXML_EventoNF_NUMERO: TLargeintField;
    NotaFiscalXML_EventoNF_PROTOCOLO: TIBStringField;
    PnlInutilizadas: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl4Item1: TdxLayoutItem;
    NotaFiscalXML_Inutilizacao: TIBDataSet;
    NotaFiscalXML_InutilizacaoAmbiente: TStringField;
    DSInutilizacao: TDataSource;
    NotaFiscalXML_InutilizacaoNF_DT_INUTILIZACAO: TDateTimeField;
    NotaFiscalXML_InutilizacaoNF_NUM_INICIAL_INUTILIZACAO: TIntegerField;
    NotaFiscalXML_InutilizacaoNF_NUM_FINAL_INUTILIZACAO: TIntegerField;
    cxGrid3DBTableView1NF_MOTIVO_STATUS: TcxGridDBColumn;
    cxGrid3DBTableView1Ambiente: TcxGridDBColumn;
    cxGrid3DBTableView1NF_PROTOCOLO: TcxGridDBColumn;
    cxGrid3DBTableView1NF_DT_INUTILIZACAO: TcxGridDBColumn;
    cxGrid3DBTableView1NF_NUM_INICIAL_INUTILIZACAO: TcxGridDBColumn;
    cxGrid3DBTableView1NF_NUM_FINAL_INUTILIZACAO: TcxGridDBColumn;
    VisualizarInutilizadas1: TMenuItem;
    cxGrid3DBTableView1MOTIVO_INUTILIZACAO: TcxGridDBColumn;
    NotaFiscalXML_InutilizacaoNF_AMBIENTE: TIntegerField;
    N9: TMenuItem;
    Inutilizacao1: TMenuItem;
    btnFecharInutilizadas: TcxButton;
    dxLayoutControl4Item2: TdxLayoutItem;
    EdtEmailDestino: TcxComboBox;
    LayoutItemEmailDestino: TdxLayoutItem;
    LayoutItemNumeroInicial: TdxLayoutItem;
    edtNumeroInicial: TcxTextEdit;
    Deletar1: TMenuItem;
    NotaFiscalXML_EventoNF_SEQUENCIA_EVENTO: TIntegerField;
    NotaFiscalXML_EventoNF_DIGEST_VALUE: TIBStringField;
    NotaFiscalXML_EventoSTATUS: TIBStringField;
    NotaFiscalXML_EventoNF_DT_INUTILIZACAO: TDateTimeField;
    NotaFiscalXML_EventoNF_NUM_INICIAL_INUTILIZACAO: TIntegerField;
    NotaFiscalXML_EventoNF_NUM_FINAL_INUTILIZACAO: TIntegerField;
    NotaFiscalXML_EventoMOTIVO_INUTILIZACAO: TWideMemoField;
    NotaFiscalXML_EventoSERIE: TIBStringField;
    NotaFiscalXML_EventoARQUIVO_RPS: TIntegerField;
    NotaFiscalXML_EventoNF_MODELO: TIntegerField;
    NotaFiscalXML_EventoNF_CNPJ: TIBStringField;
    NotaFiscalXML_InutilizacaoCODIGO: TIntegerField;
    NotaFiscalXML_InutilizacaoNF_PROTOCOLO: TIBStringField;
    RgNFSeCodigoCancelamento: TRadioGroup;
    LiRgNFSeCodigoCancelamento: TdxLayoutItem;
    EnviarporEmail1: TMenuItem;
    GrupoContabilidade: TdxLayoutGroup;
    ChkFiltrosContabilidade: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    BtnContEnviar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    BtnContImprimir: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    BtnContSalvar: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    ConfiguraesNFSe1: TMenuItem;
    Outros2: TMenuItem;
    UCControls1: TUCControls;
    ActionList1: TActionList;
    ActVisualizarDANFeSemValidacao: TAction;
    dxLayoutItem5: TdxLayoutItem;
    CkExibirSAT: TcxCheckBox;
    Omitirnotasnoautorizadas1: TMenuItem;
    WREventosCadastro1: TWREventosCadastro;
    NotaFiscalInutilizada: TFDQuery;
    cxGridDBTableView2NF_VPIS: TcxGridDBColumn;
    cxGridDBTableView2NF_VCOFINS: TcxGridDBColumn;
    cxGridDBTableView2NF_VST: TcxGridDBColumn;
    cxGridDBTableView2TOTAL: TcxGridDBColumn;
    NotaFiscalXML_EventoTOTAL: TFloatField;
    NotaFiscalXML_EventoNF_VPIS: TFloatField;
    NotaFiscalXML_EventoNF_VCOFINS: TFloatField;
    NotaFiscalXML_EventoNF_VST: TFloatField;
    cxGridDBTableView2TOTAL_PRODUTOS: TcxGridDBColumn;
    cxGridDBTableView2TOTAL_SERVICOS: TcxGridDBColumn;
    cxGridDBTableView2NF_VALOR_ISS_RETIDO: TcxGridDBColumn;
    wrNotaFiscalLocal: TwrNotaFiscal;
    NF_ProvedorLocal: TFDQuery;
    ConsultaLteNFSe1: TMenuItem;
    ConsultarporRPS1: TMenuItem;
    ConsultartodasasNFSe1: TMenuItem;
    ConsultaNFe1: TMenuItem;
    PnlConsultaNFSe: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    edtNumeroInicialNFSe: TcxTextEdit;
    edtCNPJPrestador: TcxTextEdit;
    edtCNPJTomador: TcxTextEdit;
    btnConsultarNFSe: TcxButton;
    cxButton2: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    edtIMPrestador: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    LiedtNumInicialNFSe: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    LiedtNumFinalNFSe: TdxLayoutItem;
    edtNumeroFinalNFSe: TcxTextEdit;
    edtDataInicial: TcxDateEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    edtDataFinal: TcxDateEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    edtIMTomador: TcxTextEdit;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    edtNumLoteNFSe: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    edtSerieNFSe: TcxTextEdit;
    cxLabel6: TcxLabel;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    cxLabel7: TcxLabel;
    dxLayoutItem23: TdxLayoutItem;
    cxLabel8: TcxLabel;
    dxLayoutItem24: TdxLayoutItem;
    cxLabel9: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxGridDBTableView2RPS: TcxGridDBColumn;
    dxLayoutItem6: TdxLayoutItem;
    cxButton1: TcxButton;
    cxGridDBTableView2VDESC: TcxGridDBColumn;
    VincularVenda1: TMenuItem;
    cxGridDBTableView2Valor: TcxGridDBColumn;
    dxLayoutItem7: TdxLayoutItem;
    ckExibirEnviada: TcxCheckBox;
    ConsultarNFSe1: TMenuItem;
    ConsultarSituao1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure GerarPDF1Click(Sender: TObject);
    procedure CartadeCorreo1Click(Sender: TObject);
    procedure NotaFiscalXMLBeforeOpen(DataSet: TDataSet);
    procedure NotaFiscalXMLCalcFields(DataSet: TDataSet);
    procedure Vizualizar1Click(Sender: TObject);
    procedure RecuperarXMLpelachave1Click(Sender: TObject);
    procedure ConsultarcarregandoXML1Click(Sender: TObject);
    procedure SalvarXMLderetorno1Click(Sender: TObject);
    procedure Inutilizarnumerao1Click(Sender: TObject);
    procedure ValidarXML1Click(Sender: TObject);
    procedure ConsultarReciboLote1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StatusServio1Click(Sender: TObject);
    procedure ConsultaCadastro1Click(Sender: TObject);
    procedure VizualizarXML1Click(Sender: TObject);
    procedure ImportarXML1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure CbAmbientePropertiesChange(Sender: TObject);
    procedure NotaFiscalXMLAfterInsert(DataSet: TDataSet);
    procedure OpenXmlShow(Sender: TObject);
    procedure CbExibirNFePropertiesChange(Sender: TObject);
    procedure CbExibirNFSePropertiesChange(Sender: TObject);
    procedure CbExibirCanceladaPropertiesChange(Sender: TObject);
    procedure CbExibirConfirmadaPropertiesChange(Sender: TObject);
    procedure hange(Sender: TObject);
    procedure NotaFiscalXML_EventoCalcFields(DataSet: TDataSet);
    procedure Visualizar_Evento1Click(Sender: TObject);
    procedure VisualizarXML_Evento1Click(Sender: TObject);
    procedure MenuPesquisarClick(Sender: TObject);
    procedure PopupMenuNFePopup(Sender: TObject);
    procedure NotaFiscalXMLAfterScroll(DataSet: TDataSet);
    procedure GrupoDetalhesCollapsed(Sender: TObject);
    procedure GrupoDetalhesExpanded(Sender: TObject);
    procedure CancelamentodaNFE1Click(Sender: TObject);
    procedure NotaFiscalXMLBeforeClose(DataSet: TDataSet);
    procedure NotaFiscalXMLAfterOpen(DataSet: TDataSet);
    procedure Arquivo1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure CancelamentodaNFe2Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure NotaFiscalXML_EventoBeforeOpen(DataSet: TDataSet);
    procedure ConsultarNaSEFAZ1Click(Sender: TObject);
    procedure ConsutarNotaNaSefaz1Click(Sender: TObject);
    procedure MemoJustificativaPropertiesChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure BtnContEnviarClick(Sender: TObject);
    procedure BtnContSalvarClick(Sender: TObject);
    procedure BtnContImprimirClick(Sender: TObject);
    procedure CbEmpresaPropertiesChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView2NF_TIPOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: string);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure DSEventoDataChange(Sender: TObject; Field: TField);
    procedure EnviarEmail4Click(Sender: TObject);
    procedure ExportarXML1Click(Sender: TObject);
    procedure CkExibirInativosPropertiesChange(Sender: TObject);
    procedure ExportarXML_EventoClick(Sender: TObject);
    procedure VisualizarInutilizadas1Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure NotaFiscalXML_InutilizacaoCalcFields(DataSet: TDataSet);
    procedure NotaFiscalXML_InutilizacaoBeforeOpen(DataSet: TDataSet);
    procedure btnFecharInutilizadasClick(Sender: TObject);
    procedure EdtEmailDestinoPropertiesChange(Sender: TObject);
    procedure EdtCodVendaPropertiesChange(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure EnviarporEmail1Click(Sender: TObject);
    procedure ChkFiltrosContabilidadePropertiesChange(Sender: TObject);
    procedure ConfiguraesNFSe1Click(Sender: TObject);
    procedure cxGridDBTableView2NF_MOTIVO_STATUSGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure Omitirnotasnoautorizadas1Click(Sender: TObject);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
    procedure ConsultaLteNFSe1Click(Sender: TObject);
    procedure ConsultarporRPS1Click(Sender: TObject);
    procedure ConsultarSituao1Click(Sender: TObject);
    procedure ConsultartodasasNFSe1Click(Sender: TObject);
    procedure ConsultaNFe1Click(Sender: TObject);
    procedure btnConsultarNFSeClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure VincularVenda1Click(Sender: TObject);
    procedure cxExibirEnviadaPropertiesChange(Sender: TObject);
    procedure CkExibirDesconhecidoPropertiesChange(Sender: TObject);
    procedure WREventosCadastro1ImpressaoAfterPrint(Sender: TObject);
    procedure WREventosCadastro1ImpressaoBeforePrint(Sender: TObject;
      var APermiteImprimir: Boolean);
  private
    FUpdateCount: Integer;
    FCodVenda: string;
    FExclusivoDaVenda: Boolean;
    FVenda: TDataSet;
    FVenda_Produto: TDataSet;
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    function TipoNotaToTipoDanfe(const ATipoNota: string): string;
    procedure CancelarNFSeSelecionada(ANFSeX: TACBrNFSeX);
    procedure CancelamentoDeSAT;
    procedure GerarZipNotas(const ACaminhoArquivo: string);
    procedure AbrirNotaSelecionada(ATipoAbertura: TNotaFiscalTipoAbertura);
    function AbrirEventoSelecionado(ATiposAbertura: TNotaFiscalTipoAberturaSet; ASolicitarCaminhoPDF: Boolean = False): string;
    procedure AbrirInutilizacao(ACodigo: Integer);
    procedure ComitaTransacaoNF;
    procedure LayoutChanged;
  public
    FFrmNFe: TFrmNFe;
    FFrmNFSe : TFrmNFSe;
//    FFrmVenda : TFrmVenda;

    property CodVenda: string read FCodVenda write FCodVenda;
    property ExclusivoDaVenda: Boolean read FExclusivoDaVenda write FExclusivoDaVenda;
    property Venda: TDataSet read FVenda write FVenda;
    property Venda_Produto: TDataSet read FVenda_Produto write FVenda_Produto;

    procedure CarregaXMLDoBanco(AACBrNFe: TACBrNFe);
    function LayoutPnlConfirmaNFE(ATipoOperacaoNFe : TTipoOperacaoNota; AChaveNota : String = ''): TModalResult;
    procedure LimpaCamposPnlEventoNF;
    procedure CancelarNota;
    procedure CancelarNFeSelecionada;
    procedure CancelarNFePDV;
    procedure BeginUpdate;
    function ConsultaNotaSelecionadaNaSEFAZ(ASilent: Boolean = False): Boolean;
    procedure ConsultaNotaSelecionadaNaSEFAZPelaVenda(AMostrarErros: Boolean = True);
    procedure EndUpdate(AAtualizar: Boolean);
    function IsUpdating: Boolean;
    procedure Atualizar(AParent: TWinControl);
    procedure EnviarEmailXMLEvento(ACodigo: Integer; AEnviarDireto: Boolean);
    class procedure AtualizaNrNfNoFinanceiro(ANfNumero: Int64; const ACodVenda, ACodEmpresa, AVendaTipo: string; ATransaction: TComponent);
    class function GetTribNCM(AValorProduto: Double; ANCM, ATipoTabela: string; AImportacao: Boolean) : TTotTrib;
    class function AbrirEvento(ACodEvento: Integer; ATiposAbertura: TNotaFiscalTipoAberturaSet; ASolicitarCaminhoPDF: Boolean = False): string;
    class function GetTipoArquivoXML(AArquivo: string; AMostrarErro: Boolean = False): TNotaFiscalTipoXML;
  end;

  function NotaFiscalIsNFAutorizada(const ANotaFiscal: TDataSet): Boolean;
  function NotaFiscalEnviarEvento(const AACBrNFe: TACBrNFe): Boolean;
  function NotaFiscalAbrirEvento(const AXmlNota, AXmlEvento, ATipoEvento: string; ATiposAbertura: TNotaFiscalTipoAberturaSet; ASolicitarCaminhoPDF: Boolean): string;
  procedure NotaFiscalAbrirInutilizacao(const AXMLInutilizacao: string);
  procedure NotaFiscalConfiguraModeloDF(AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet);
  procedure NotaFiscalAtualizaVendaParaCancelada(ANotaFiscal, AVenda: TDataSet);
  function NotaFiscalGetNomePDF(ANFe: ACBrNFeNotasFiscais.NotaFiscal): string;
  procedure NotaFiscalSQLBuscaEmailDestinatario(const ACnpjDestinatario: string; AEnderecosEmailLocalizados: TStrings);
  procedure NotaFiscalEnviarEmail(AACBrNFe: TACBrNFe; AEnviarDireto: Boolean; const AEmailDestino, ACodVenda, APedidoCompra: string);
  procedure NotaFiscalVisualizarXML(ANotaFiscal: TDataSet);
  function NotaFiscalGetNomeArquivo(ANotaFiscal: TDataSet): string;

  function NotaFiscalCancelamentoDeNFe(const AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const ACNPJ, AProtocolo, AMotivo: string): Boolean;
  function NotaFiscalDoCancelarNFe(const AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const ACNPJ, AProtocolo, AMotivo: string): Boolean;

  function NotaFiscalCancelarNFSe(ANotaFiscal: TDataSet; AACBrNFSeX: TACBrNFSeX; ACodCancelamento: Integer; const AMotivo: string): Boolean;

  function NotaFiscalEmitirCCe(AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const AChaveNFe, ACNPJ, AMotivo: string): Boolean;
  function NotaFiscalDoEmitirCCe(AACBrNFe: TACBrNFe; const AChaveNFe, ACNPJ, AMotivo: string): Boolean;

  function NotaFiscalGerarZipNotas(ANotaFiscal, ANotaFiscalEventos, ANotasInutilizacao: TDataSet; const ACaminhoArquivo: string): Boolean;
  procedure NotaFiscalDoGerarZipNotas(ANotaFiscal, ANotaFiscalEventos, ANotasInutilizacao: TDataSet; const ACaminhoArquivo: string);

implementation

uses
  UnitFuncoes, Registry, ACBrUtil, DateUtils, Principal, uEmail, Math, pcnNFe, DataModule,
  Aguarde, Email, Zip, pcnConversaoNFe, ACBrNFeDANFeFR, wrFuncoes, System.IOUtils, DataModuleSAT,
  pcnSignature, pcnProcNFe, pcnEventoNFe, pcnRetEnvEventoNFe, Utils.Financeiro, CadVendaFrameNotaFiscal,
  ConfiguracoesM, wrForms, Validacoes, NFe_Status, ACBrNFSeXConversao, frFrameHistorico, Base, Tag.Form, Tag.Report;

{$R *.dfm}

procedure TFrmNotaFiscal.ConsutarNotaNaSefaz1Click(Sender: TObject);
begin
  ConsultaNotaSelecionadaNaSEFAZ;
end;

procedure TFrmNotaFiscal.CancelamentodaNFE1Click(Sender: TObject);
begin
  CancelarNota;
end;

procedure TFrmNotaFiscal.CancelamentodaNFe2Click(Sender: TObject);
begin
  CancelarNota;
end;

function NotaFiscalEnviarEvento(const AACBrNFe: TACBrNFe): Boolean;
var
  ARetorno: TRetEventoNFe;
begin
  Result := False;
  try
    AguardeBegin;
    try
      AguardeMensagem('Enviando Evento...');
      Result := AACBrNFe.EnviarEvento(AACBrNFe.EventoNFe.idLote);
      if not Result then
      begin
        ARetorno := AACBrNFe.WebServices.EnvEvento.EventoRetorno;
        GeraExcecao(
          'Ocorreram erros ao enviar o evento:' + sLineBreak +
          'Lote: ' + IntToStr(ARetorno.idLote) + sLineBreak +
          'Ambiente: ' + TpAmbToStr(ARetorno.tpAmb) + sLineBreak +
          'Orgao: ' + IntToStr(ARetorno.cOrgao) + sLineBreak +
          sLineBreak +
          'Status: ' + IntToStr(ARetorno.cStat) + sLineBreak +
          'Motivo: ' + ARetorno.xMotivo
        );
      end;
    finally
      AguardeEnd;
    end;
  except
    on E:Exception do
      ShowMessageWR(E.Message, MB_ICONWARNING);
  end;
end;

function NotaFiscalCancelamentoDeNFe(const AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const ACNPJ, AProtocolo, AMotivo: string): Boolean;
var
  QuerX: TFDQuery;
begin
  Result := False;
  if not NotaFiscalIsNFAutorizada(ANotaFiscal) then
  begin
    ShowMessageWR('Impossível fazer o processo selecionado, verifique o Tipo da NFE e o Status');
    Exit;
  end;

  if ANotaFiscal.FieldByName('NF_CHAVE').AsString = '' then
  begin
    ShowMessageWR('Chave da nota não informada', MB_ICONWARNING);
    Exit;
  end;

  QuerX := GeraFDQUery;
  try
    QuerX.SQL.Text := 'SELECT VFT.TEF_STATUS FROM VENDA_FINANCEIRO_TEF VFT  ' +
                      'WHERE VFT.CODVENDA = :Codvenda AND VFT.TEF_STATUS = ''Confirmada''';
    QuerX.ParamByName('Codvenda').AsString := ANotaFiscal.FieldByName('CODVENDA').AsString;
    QuerX.Open;

    if QuerX.RecordCount > 0 then
    begin
      ShowMessageWR('Existe pelo menos um NSU confirmado para esta nota.' + sLineBreak +
                    'Não é possível Cancelar pois é passível de multa.', MB_ICONWARNING);
    end
    else
      Result := NotaFiscalDoCancelarNFe(AACBrNFe, ANotaFiscal, ACNPJ, AProtocolo, AMotivo);
  finally
    QuerX.Free;
  end;
end;

function NotaFiscalDoCancelarNFe(const AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const ACNPJ, AProtocolo, AMotivo: string): Boolean;
var
  ANSeq: Integer;
  AEventoEnviado, ATentarNovamente: Boolean;
  ARetInfEvento: TRetInfEvento;
begin
  Result := False;
  AACBrNFe.NotasFiscais.Clear;
  AACBrNFe.NotasFiscais.LoadFromString(ANotaFiscal.FieldByName('ARQUIVO_XML').AsString);

  NotaFiscalConfiguraModeloDF(AACBrNFe, ANotaFiscal);
  TFrmNFe.ConfiguraFuso(AACBrNFe, 'Cancelamento');
  ANSeq := 1;
  repeat
    ATentarNovamente := False;
    AACBrNFe.EventoNFe.Evento.Clear;
    AACBrNFe.EventoNFe.idLote := 1;
    with AACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe           := ANotaFiscal.FieldByName('NF_CHAVE').AsString;
      infEvento.CNPJ            := ACNPJ;
      infEvento.dhEvento        := DataHoraSys;
      infEvento.tpEvento        := TpcnTpEvento.teCancelamento;
      infEvento.detEvento.nProt := AProtocolo;
      infEvento.detEvento.xJust := AMotivo;
      infEvento.nSeqEvento      := ANSeq;
    end;

    //Envia o Evento
    if not NotaFiscalEnviarEvento(AACBrNFe) then
      Exit;

    ARetInfEvento := AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento;
    Result := (ARetInfEvento.cStat = 135); //CStat = 135: Evento registrado e vinculado a NF-e
    if Result then
    begin
      ANotaFiscal.FieldByName('NF_SITUACAO').AsString          := 'Cancelada';
      ANotaFiscal.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := ARetInfEvento.dhRegEvento;
      ANotaFiscal.FieldByName('MOTIVO_CANCELAMENTO').AsString  := AMotivo;
    end else
    begin
      if ARetInfEvento.cStat = 573 then
      begin
        //CStat = 573: Duplicidade de Evento
        //Aqui incrementamos o código de sequência do evento e tentamos novamente
        Inc(ANSeq);
        if ANSeq > 100 then
          Abort; //Nunca deve acontecer, apenas evitamos looping infinito de tentativas
        ATentarNovamente := True;
        Continue;
      end;
      ShowMessageWR('Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica: ' + sLineBreak +
                    'Código: ' + IntToStr(ARetInfEvento.cStat) + sLineBreak +
                    'Motivo: ' + ARetInfEvento.xMotivo, MB_ICONWARNING);
    end;
  until not ATentarNovamente;

//NF_PIS_VPIS
//NF_COFINS_VCOFINS
//NF_VICMSST
end;

procedure TFrmNotaFiscal.CancelarNFSeSelecionada(ANFSeX: TACBrNFSeX);
var
  ACodCancelamento: Integer;
begin
  if LayoutPnlConfirmaNFE(onCancelarNFSe) <> mrOk then
    Exit;

  try
    ACodCancelamento := RgNFSeCodigoCancelamento.ItemIndex + 1;

    NotaFiscalXML.Edit;
    if NotaFiscalCancelarNFSe(NotaFiscalXML, ANFSeX, ACodCancelamento, MemoJustificativa.Lines.Text) then
    begin
      NotaFiscalXML.Post;
      ComitaTransacaoNF;
      TFrmNFSe.GravaRetornoCancelamentoNFSe(ANFSeX);
      NotaFiscalAtualizaVendaParaCancelada(NotaFiscalXML, Venda);
      ComitaTransacaoNF;
      if (FVenda <> nil) and not (FVenda.State in [dsEdit, dsInsert, dsInactive]) then
        FVenda.Refresh;
    end else
      NotaFiscalXML.Cancel;
  finally
//    ANFSeACBrNFSe.Free;
    LimpaCamposPnlEventoNF;
  end;
end;

function NotaFiscalCancelarNFSe(ANotaFiscal: TDataSet; AACBrNFSeX: TACBrNFSeX; ACodCancelamento: Integer; const AMotivo: string): Boolean;
begin
  {Contexto de cancelamento com o DataSet}
  Result := False;
  Assert(ANotaFiscal.State in dsEditModes, 'DataSet precisa estar em edição');

  if not NotaFiscalIsNFAutorizada(ANotaFiscal) then
  begin
    ShowMessageWR('Impossível fazer o processo selecionado, verifique o Tipo da NFSe e o Status', MB_ICONWARNING);
    Exit;
  end;

  AACBrNFSeX.NotasFiscais.Clear;
  AACBrNFSeX.NotasFiscais.LoadFromString(ANotaFiscal.FieldByName('ARQUIVO_XML').AsString, False);

  {Contexto de cancelamento do XML, envio ao WebService}
  AguardeBegin;
  try
    AguardeMensagem('Enviando Cancelamento...');     //TODO: Reativar
    try
    {  if AACBrNFSeX.CancelarNFSe(IntToStr(ACodCancelamento),                        // 'Cod'
                                ANotaFiscal.FieldByName('NF_NUMERO').AsString,     // 'Numero'
                                AMotivo,                                           // 'Motivo'
                                ANotaFiscal.FieldByName('NF_NUM_LOTE').AsString,   // 'NUmLote'
                                ANotaFiscal.FieldByName('NFSE_CODIGOVERIFICACAO').AsString,// 'CodVerificação'
                                ANotaFiscal.FieldByName('SERIE').AsString,         // 'Serie ',
                                ANotaFiscal.FieldByName('NFSE_RPS').AsString,      // 'NumeroRPS '
                                ANotaFiscal.FieldByName('NFSE_RPS_SERIE').AsString,// 'SerieRPS '
                                ANotaFiscal.FieldByName('VALOR').AsFloat) then     // 'ValorRPS '
      begin
        ANotaFiscal.FieldByName('NF_SITUACAO').AsString          := 'Cancelada';
        ANotaFiscal.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := AACBrNFSeX.WebServices.CancNFSe.RetCancNFSe.InfCanc.DataHora;
        ANotaFiscal.FieldByName('MOTIVO_CANCELAMENTO').AsString  := AMotivo;
      end;
      if not Result then
        GeraExcecao('Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
                    'Lote: ' + AACBrNFSeX.WebServices.CancNfse.NumeroLote);

      if AACBrNFSeX.WebServices.CancNFSe.RetCancNFSe.InfCanc.Confirmacao = '' then
      begin
        Result := False;
        GeraExcecao('Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
                    AACBrNFSeX.WebServices.CancNFSe.RetCancNFSe.InfCanc.MsgCanc);
      end;               }
    except
      on E:Exception do
        ShowMessageWR(E.Message);
    end;
  finally
    AguardeEnd;
  end;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

procedure NotaFiscalConfiguraModeloDF(AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet);
begin
  if ANotaFiscal.FieldByName('TIPO').AsString = 'NFCe' then
    AACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe
  else
    AACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
end;

procedure TFrmNotaFiscal.CancelamentoDeSAT;
begin
  TDMSat.CancelarVendaPelaNotaFiscal(NotaFiscalXML.FieldByName('CODIGO').AsInteger, NotaFiscalXML.FieldByName('CODVENDA').AsString);
  NotaFiscalXML.Close;
  NotaFiscalXML.Open;
end;

procedure TFrmNotaFiscal.CancelarNFeSelecionada;
var
  ACodEvento: Integer;
begin
  if LayoutPnlConfirmaNFE(onRetornoCancelamentoNFe, NotaFiscalXML.FieldByName('NF_CHAVE').AsString) <> mrOk then
    Exit;
  NotaFiscalXML.Edit;
  if NotaFiscalCancelamentoDeNFe(FFrmNFe.ACBrNFe1, NotaFiscalXML, EdtCNPJ.Text, EdtNumeroProtocolo.Text,
     MemoJustificativa.Lines.Text) then
  begin
    NotaFiscalXML.Post;
    ComitaTransacaoNF;
    ACodEvento := TFrmNFe.GravaRetornoCancelamentoNoBanco(FFrmNFe.ACBrNFe1, MemoJustificativa.Lines.Text);
    NotaFiscalAtualizaVendaParaCancelada(NotaFiscalXML, Venda);
    ConsultarNaSEFAZ1Click(nil);
    if (FVenda <> nil) and not (FVenda.State in [dsEdit, dsInsert, dsInactive]) then
      FVenda.Refresh;

    // Este IF está aqui pois estava dando erro ao cancelar NFCe porque ele não achava o evento para enviar.
    if MatchStr(NotaFiscalXML.FieldByName('TIPO').AsString, ['NFe', 'NFSe'])  then
      EnviarEmailXMLEvento(ACodEvento, False);
  end else
    NotaFiscalXML.Cancel;
  LimpaCamposPnlEventoNF;
end;

procedure TFrmNotaFiscal.CancelarNFePDV;
var
  ACodEvento: Integer;
begin
  NotaFiscalXML.Edit;
  if NotaFiscalCancelamentoDeNFe(FFrmNFe.ACBrNFe1, NotaFiscalXML, OnlyNumber(GetCnpjCpf(Copy(NotaFiscalXML.FieldByName('NF_CHAVE').AsString, 7, 14))), NotaFiscalXML.FieldByName('NF_PROTOCOLO').AsString,
     'Cancelamento por inconsistência no recebimento de TEF.') then
  begin
    NotaFiscalXML.Post;
    ComitaTransacaoNF;
    ACodEvento := TFrmNFe.GravaRetornoCancelamentoNoBanco(FFrmNFe.ACBrNFe1, 'Cancelamento por inconsistência no recebimento de TEF.');
    NotaFiscalAtualizaVendaParaCancelada(NotaFiscalXML, Venda);
    if (FVenda <> nil) and not (FVenda.State in [dsEdit, dsInsert, dsInactive]) then
      FVenda.Refresh;
//    EnviarEmailXMLEvento(ACodEvento, False);
  end else
    NotaFiscalXML.Cancel;
  LimpaCamposPnlEventoNF;
end;

procedure TFrmNotaFiscal.CancelarNota;
begin
  if MatchStr(NotaFiscalXML.FieldByName('TIPO').AsString, ['NFe', 'NFCe']) then
    CancelarNFeSelecionada
  else if NotaFiscalXML.FieldByName('TIPO').AsString = 'NFSe' then
  begin
    TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria
//    ShowMessage('Função desativada');
    CancelarNFSeSelecionada(FFrmNFSe.ACBrNFSeX1);
  end
  else if NotaFiscalXML.FieldByName('TIPO').AsString = 'CFeSAT' then
    CancelamentoDeSAT;
end;

function NotaFiscalGerarZipNotas(ANotaFiscal, ANotaFiscalEventos, ANotasInutilizacao: TDataSet; const ACaminhoArquivo: string): Boolean;
begin
  Result := False;
  if ANotaFiscal.IsEmpty and ANotasInutilizacao.IsEmpty then
  begin
    ShowMessageWR('Nenhuma nota encontrada no período.', MB_ICONWARNING);
    Exit;
  end;

  try
    NotaFiscalDoGerarZipNotas(ANotaFiscal, ANotaFiscalEventos, ANotasInutilizacao, ACaminhoArquivo);
    Result := True;
  except
    on E:Exception do
      ShowMessageWR(E.Message);
  end;
end;

procedure NotaFiscalDoGerarZipNotas(ANotaFiscal, ANotaFiscalEventos, ANotasInutilizacao: TDataSet; const ACaminhoArquivo: string);
var
  AZipFile: TZipFile;

  procedure LAddZip(const LDataSet: TDataSet; LFileName: string = '');
  var
    AXMLStream: TMemoryStream;
  begin
    AXMLStream := TMemoryStream.Create;
    try
      TBlobField(LDataSet.FieldByName('ARQUIVO_XML')).SaveToStream(AXMLStream);
      AXMLStream.Position := 0;
      if LFileName = '' then
        LFileName := LDataSet.FieldByName('NF_CHAVE').AsString + '-' + LDataSet.FieldByName('TIPO').AsString.ToLower + '.xml';
      AZipFile.Add(AXMLStream, LFileName);
    finally
      AXMLStream.Free;
    end;
  end;
begin
  AZipFile := TZipFile.Create;
  try
    AZipFile.Open(ACaminhoArquivo, zmWrite);

    //Adiciona XML da Nota
    ANotaFiscal.First;
    while not ANotaFiscal.Eof do
    begin
      LAddZip(ANotaFiscal);

      //Adiciona os XML de Eventos da nota atual
      ANotaFiscalEventos.First;
      while not ANotaFiscalEventos.Eof do
      begin
        LAddZip(ANotaFiscalEventos);
        ANotaFiscalEventos.Next;
      end;

      ANotaFiscal.Next;
    end;

    //Adiciona XML da Inutilização
    ANotasInutilizacao.First;
    while not ANotasInutilizacao.Eof do
    begin
      LAddZip(ANotasInutilizacao, 'Inutilização' + //Verificar, provavelmente usar a data de inutilização no nome não está certo
                                  FormatDateTime('DDMMYYYY', ANotasInutilizacao.FieldByName('NF_DT_INUTILIZACAO').AsDateTime) +
                                  '.xml');
      ANotasInutilizacao.Next;
    end;
  finally
    AZipFile.Free;
  end;
end;

procedure TFrmNotaFiscal.CarregaXMLDoBanco(AACBrNFe: TACBrNFe);
begin
  TFrmNFe.CarregaNota(NotaFiscalXML, AACBrNFe);
end;

procedure TFrmNotaFiscal.CartadeCorreo1Click(Sender: TObject);
var
  AChave: string;
  ACodEvento: Integer;
begin
  FFrmNFe.LerConfiguracao;
  if not NotaFiscalIsNFAutorizada(NotaFiscalXML) then
  begin
    ShowMessageWR('Não é possível emitir uma Carta de Correção para uma nota Não Autorizada ou Cancelada.');
    Exit;
  end;
  AChave := NotaFiscalXML.FieldByName('NF_CHAVE').AsString;
  if LayoutPnlConfirmaNFE(onCartaCorrecao, AChave) <> mrOk then
    Exit;

  if NotaFiscalEmitirCCe(FFrmNFe.ACBrNFe1, NotaFiscalXML, AChave, EdtCNPJ.Text, MemoJustificativa.Lines.Text) then
  begin
    ACodEvento := TFrmNFe.GravaRetornoCartaCorrecaoNoBanco(FFrmNFe.ACBrNFe1);

    AbrirEvento(ACodEvento, [anVisualizar, anSalvarPDF]);
    EnviarEmailXMLEvento(ACodEvento, False);
  end;
  LimpaCamposPnlEventoNF;
end;

function NotaFiscalEmitirCCe(AACBrNFe: TACBrNFe; ANotaFiscal: TDataSet; const AChaveNFe, ACNPJ, AMotivo: string): Boolean;
var
  ACodEvento: Integer;
begin
  Result := False;
  if not NotaFiscalIsNFAutorizada(ANotaFiscal) then
  begin
    ShowMessageWR('Não é possível emitir uma Carta de Correção para uma nota Não Autorizada ou Cancelada.', MB_ICONWARNING);
    Exit;
  end;
  if AChaveNFe = '' then
  begin
    ShowMessageWR('Chave da nota não informada', MB_ICONWARNING);
    Exit;
  end;

  Result := NotaFiscalDoEmitirCCe(AACBrNFe, AChaveNFe, ACNPJ, AMotivo);
end;

function NotaFiscalDoEmitirCCe(AACBrNFe: TACBrNFe; const AChaveNFe, ACNPJ, AMotivo: string): Boolean;
var
  ACodEvento: Integer;
  ANSeq: Integer;
  ATentarNovamente: Boolean;
  ARetInfEvento: TRetInfEvento;
begin
  AACBrNFe.NotasFiscais.Clear;
  AACBrNFe.EventoNFe.Evento.Clear;

  TFrmNFe.ConfiguraFuso(AACBrNFe, 'CCe');

  ANSeq := 1;
  repeat
    ATentarNovamente := False;
    AACBrNFe.EventoNFe.Evento.Clear;
    AACBrNFe.EventoNFe.idLote := 1;
    with AACBrNFe.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe               := AChaveNFe;
      infEvento.cOrgao              := UFtoCUF(AACBrNFe.Configuracoes.WebServices.UF);
      infEvento.CNPJ                := ACNPJ;
      infEvento.dhEvento            := Now;
      infEvento.tpEvento            := teCCe;
      infEvento.nSeqEvento          := ANSeq;
      infEvento.detEvento.xCorrecao := AMotivo;
    end;

    //Envia o Evento
    if not NotaFiscalEnviarEvento(AACBrNFe) then
      Exit;

    ARetInfEvento := AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento;
    Result := (ARetInfEvento.cStat = 135); //CStat = 135: Evento registrado e vinculado a NF-e
    if not Result then
    begin
      if ARetInfEvento.cStat = 573 then
      begin
        //CStat = 573: Duplicidade de Evento
        //Aqui incrementamos o código de sequência do evento e tentamos novamente
        Inc(ANSeq);
        if ANSeq > 100 then
          Abort; //Nunca deve acontecer, apenas evitamos looping infinito de tentativas
        ATentarNovamente := True;
        Continue;
      end;
      ShowMessageWR('Ocorreu o seguinte erro ao emitir a Carta de Correção Eletrônica: ' + sLineBreak +
                    'Código: ' + IntToStr(ARetInfEvento.cStat) + sLineBreak +
                    'Motivo: ' + ARetInfEvento.xMotivo, MB_ICONWARNING);
    end;
  until not ATentarNovamente;
end;

procedure TFrmNotaFiscal.CbAmbientePropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CbEmpresaPropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(Sender);
end;

procedure TFrmNotaFiscal.CbExibirCanceladaPropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CbExibirConfirmadaPropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CbExibirNFePropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CbExibirNFSePropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.ChkFiltrosContabilidadePropertiesChange(Sender: TObject);
begin
  BeginUpdate;
  try
    LayoutChanged;
    if ChkFiltrosContabilidade.Checked then
    begin
      EdtDtInicial.Date := StartOfTheMonth(IncMonth(Now, -1));
      EdtDtFinal.Date   := EndOfTheMonth(IncMonth(Now, -1));

      CkExibirNFe.Checked           := True;
      CkExibirNFSe.Checked          := False; //NFSe não se envia a contabilidade
      CkExibirNFCe.Checked          := True;
      CkExibirConfirmada.Checked    := True;
      CkExibirDenegada.Checked      := True;
      CkExibirCancelada.Checked     := True;
      CkExibirNaoAutorizada.Checked := False;
      CkExibirDesconhecido.Checked  := False;
      ckExibirEnviada.Checked       := False;
      CbAmbiente.ItemIndex          := 1;
      CkExibirInativos.Checked      := False;
      EdtNumero.Clear;
      EdtCodVenda.Clear;
    end else
      CbAmbiente.ItemIndex := 0;
  finally
    EndUpdate(True);
  end;
end;

procedure TFrmNotaFiscal.hange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CkExibirDesconhecidoPropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.CkExibirInativosPropertiesChange(Sender: TObject);
begin
  if CkExibirInativos.Checked then
    cxGridDBTableView2STATUS.Visible := True;
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GravarConfiguracao;
  if FormStyle = fsMDIChild then
    Action := caFree;
end;

procedure TFrmNotaFiscal.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  AMenuItem: TMenuItem;
begin
  BeginUpdate;
  try
    InicializaSQLWhere(NotaFiscalXML);
    InicializaSQLWhere(NotaFiscalXML_Evento);
    InicializaSQLWhere(NotaFiscalXML_Inutilizacao);
    FCodVenda := '';
    GrupoXML.Expanded := False;
  {Lento}FFrmNFe := TFrmNFe.Create(Self);
  //    FrmNFe.LerConfiguracao;
    LerConfiguracao;
    FFrmNFe.MemoRespostaNF   := MemoResposta;
    //FFrmNFe.MemoWBRespostaNF := WEBResposta;
    FFrmNFe.MemoLogNF        := memoLog;
    FFrmNFe.MemoNFe          := trvwNFe;
    FFrmNFe.MemoRespCompWS   := memoRespostaWeb;
    FFrmNFe.MemoDadosNF      := MemoDadosResposta;
    FFrmNFe.MemoHtmlResposta := HTMLViewer1;
    ConsultartodasasNFSe1.Enabled := (Empresa.FieldByName('EMITE_NFSE').AsString = 'S');

    QuerX := GeraQuery;
    try
      CbEmpresa.Properties.Items.Clear;

      QuerX.SQL.Text := 'select CODIGO, FANTASIA, CIDADE ' +
                        'from EMPRESA ' +
                        'where (coalesce(ATIVO, ''S'') <> ''N'')';
      QuerX.Open;
      CbEmpresa.Properties.Items.AddObject('TODOS', nil);
      while not QuerX.Eof do
      begin
        CbEmpresa.Properties.Items.AddObject(QuerX.FieldByName('FANTASIA').AsString + ' - ' + QuerX.FieldByName('CIDADE').AsString, TObject(QuerX.FieldByName('CODIGO').AsInteger));
        QuerX.Next;
      end;
      CbEmpresa.ItemIndex := CbEmpresa.Properties.Items.IndexOfObject(TObject(Empresa.FieldByName('CODIGO').AsInteger));
    finally
      QuerX.Free;
    end;

    DMImpressao.CarregaMenu(MenuImpressoes, Self);

    if FrmPrincipal.Action_Empresa_Ativa.Enabled then
      dxLayoutControlSelectEmpresa.Enabled := True;
  finally
    EndUpdate(False);
  end;
end;

procedure TFrmNotaFiscal.FormDestroy(Sender: TObject);
begin
  FFrmNFe.Free;
end;

procedure TFrmNotaFiscal.FormShow(Sender: TObject);
begin
  if FCodVenda = '' then
  begin
    EdtDtInicial.Date := StartOfTheMonth(Date);
    EdtDtFinal.Date   := EndOfTheMonth(Date);
  end else
  begin
    EdtDtInicial.Clear;
    EdtDtFinal.Clear;
  end;
  LayoutChanged;
  if (Owner = nil) or (Owner.ClassName <> 'TFrmVendaFrameNotaFiscal') then
    btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.GerarPDF1Click(Sender: TObject);
begin
  AbrirNotaSelecionada(anSalvarPDF);
end;

procedure TFrmNotaFiscal.GerarZipNotas(const ACaminhoArquivo: string);
begin
  NotaFiscalInutilizada.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDtInicial.Date);
  NotaFiscalInutilizada.ParamByName('DtFim').AsDateTime    := EndOfTheDay(EdtDtFinal.Date);
  NotaFiscalInutilizada.ParamByName('Ambiente').AsInteger  := CbAmbiente.ItemIndex;
  NotaFiscalInutilizada.Open;

  NotaFiscalGerarZipNotas(NotaFiscalXML, NotaFiscalXML_Evento, NotaFiscalInutilizada, ACaminhoArquivo);

  NotaFiscalInutilizada.Close;
end;

procedure TFrmNotaFiscal.GravarConfiguracao;
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\ConsuNFe\' + EmpresaAtiva, True) then
    begin
      Reg.WriteBool('NFe', CkExibirNFe.Checked);
      Reg.WriteBool('NFSe', CkExibirNFSe.Checked);
      Reg.WriteBool('NFCe', CkExibirNFCe.Checked);

      Reg.WriteBool('Autorizada', CkExibirConfirmada.Checked);
      Reg.WriteBool('Denegada', CkExibirDenegada.Checked);
      Reg.WriteBool('Cancelada', CkExibirCancelada.Checked);
      Reg.WriteBool('NaoAutorizada', CkExibirNaoAutorizada.Checked);
      Reg.WriteBool('Desconhecida', CkExibirDesconhecido.Checked);
      Reg.WriteBool('Enviada', ckExibirEnviada.Checked);

      Reg.WriteBool('GrupoAvancado', GrupoAvancado.Visible);
      Reg.WriteInteger('Ambiente', CbAmbiente.ItemIndex);
      Reg.WriteBool('Inativos', CkExibirInativos.Checked);
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFrmNotaFiscal.GrupoDetalhesCollapsed(Sender: TObject);
begin
  TForm(pnlConfirmaNFE.Parent).ClientHeight := dxLayoutControl2.OccupiedClientHeight;
end;

procedure TFrmNotaFiscal.GrupoDetalhesExpanded(Sender: TObject);
begin
  TForm(pnlConfirmaNFE.Parent).ClientHeight := dxLayoutControl2.OccupiedClientHeight;
end;

procedure TFrmNotaFiscal.ImportarXML1Click(Sender: TObject);
var
  ACodVenda, AMsg: string;
  AClassConVenda: TFormClass;
  ATipo: TNotaFiscalTipoXML;
  ANaoImportados: TStringList;
  I, ADummy: Integer;
  AFrmAguarde: TFrmAguarde;
begin
  if not OpenXml.Execute then
    Exit;
  ANaoImportados := TStringList.Create;
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AMsg := '';
    ACodVenda:= '';
    ConsultaTag_NormalModal(Self,Tag_Venda);
    if (Codigo <> '')and(Codigo <> '0') then
      ACodVenda  := Codigo;

    if ACodVenda = '' then
      ACodVenda := InputBox('Vincular Venda', 'Informe o código da venda para vincular as notas importadas', '');

    if ShowMessageWR('Confirmar importação de Notas Fiscais vinculando a venda de número ' + QuotedStr(ACodVenda) + '?', MB_ICONQUESTION) <> mrYes then
      Exit;
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Importando arquivos...';
    AFrmAguarde.ProgressoMaximo := OpenXml.Files.Count;
    TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);
    for I := 0 to OpenXml.Files.Count - 1 do
    begin
      if FFrmNFe.ACBrNFe1.NotasFiscais.LoadFromFile(OpenXml.Files[i]) then
      begin
        if not TFrmNFe.ImportarXML(OpenXml.Files[i], ACodVenda, ADummy) then
          ANaoImportados.Add(OpenXml.Files[i]);
      end
      else if FFrmNFSe.ACBrNFSeX1.NotasFiscais.LoadFromFile(OpenXml.Files[i]) then
      begin
        if not TFrmNFSe.ImportarXML(OpenXml.Files[i], ACodVenda, FFrmNFSe.ACBrNFSeX1) then
          ANaoImportados.Add(OpenXml.Files[i]);
      end
      else if FFrmNFe.ACBrNFe1.EventoNFe.LerXML(OpenXml.Files[i]) then
      begin
        if not TFrmNFe.ImportarEventoXML(OpenXml.Files[i]) then
          ANaoImportados.Add(OpenXml.Files[i]);
      end
      else
        ANaoImportados.Add(OpenXml.Files[i]);

      AFrmAguarde.AvancarProgresso;
    end;
    AFrmAguarde.Close;
    if ANaoImportados.Count = 0 then
      AMsg := 'Todos os arquivos foram importadas com sucesso.'
    else
      AMsg := 'Os seguintes arquivos não puderam ser importados:' + LineBreakWR(2) +
              ANaoImportados.Text;
    ShowMessageWR('Processo e importação concluído.' + sLineBreak + AMsg);
  finally
    ANaoImportados.Free;
    AFrmAguarde.Free;
  end;
end;

function NotaFiscalInutilizarNumeracao(AACBrNFe: TACBrNFe; const ACNPJ, AMotivo: string; AAno, AModelo, ASerie, ANumeroInicial,
  ANumeroFinal: Integer): Boolean;
begin
  Result := False;
  AguardeBegin;
  try
    AguardeMensagem('Enviando Inutilização de Numeração...');
    try
      TFrmNFe.ConfiguraFuso(AACBrNFe, 'Inutilizacao');
      AACBrNFe.WebServices.Inutiliza(ACNPJ, AMotivo, AAno, AModelo, ASerie, ANumeroInicial, ANumeroFinal);
      Result := (AACBrNFe.WebServices.Inutilizacao.cStat = 102);
    except
      on E:Exception do
        ShowMessageWR(E.Message);
    end;
  finally
    AguardeEnd;
  end;
end;

procedure TFrmNotaFiscal.Inutilizarnumerao1Click(Sender: TObject);
var
  AACBrNFe: TACBrNFe;
  ACodigo: Integer;
begin
  if LayoutPnlConfirmaNFE(onInutilizarNumeracao) <> mrOk then
    Exit;

  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    if NotaFiscalInutilizarNumeracao(AACBrNFe, Empresa.FieldByName('CNPJCPF').AsString,
                                     MemoJustificativa.Lines.Text,
                                     StrToInt(EdtIDCod.Text),
                                     StrToInt(EdtNumeroProtocolo.Text),
                                     StrToInt(EdtCNPJ.Text),
                                     StrToInt(edtNumeroInicial.Text),
                                     StrToInt(EdtInscricaoMunicipal.Text)) then
    begin
      ACodigo := TFrmNFe.GravaInutilizacaoNoBanco(AACBrNFe);
      AbrirInutilizacao(ACodigo);
    end;
    LimpaCamposPnlEventoNF;
  finally
    AACBrNFe.Free;
  end;
end;

function NotaFiscalIsNFAutorizada(const ANotaFiscal: TDataSet): Boolean;
var
  AOk: Boolean;
begin
  if ANotaFiscal.FieldByName('TIPO').AsString = 'NFSe' then
    Result := (StrToStatusRPS(AOk, ANotaFiscal.FieldByName('NF_CSTAT').AsString) = TStatusRPS.srNormal) and
              AnsiSameText(ANotaFiscal.FieldByName('NF_SITUACAO').AsString, 'Confirmada')
  else
    Result := (ANotaFiscal.FieldByName('NF_CSTAT').AsInteger in [100, 150]) and
              (ANotaFiscal.FieldByName('NF_SITUACAO').AsString = 'Autorizada');
end;

procedure TFrmNotaFiscal.LayoutChanged;
begin
  dxLayoutControl1.BeginUpdate;
  try
    CkExibirNFe.Enabled           := not ChkFiltrosContabilidade.Checked;
    CkExibirNFSe.Enabled          := not ChkFiltrosContabilidade.Checked;
    CkExibirNFCe.Enabled          := not ChkFiltrosContabilidade.Checked;
    CkExibirConfirmada.Enabled    := not ChkFiltrosContabilidade.Checked;
    CkExibirDenegada.Enabled      := not ChkFiltrosContabilidade.Checked;
    CkExibirCancelada.Enabled     := not ChkFiltrosContabilidade.Checked;
    CkExibirNaoAutorizada.Enabled := not ChkFiltrosContabilidade.Checked;
    CkExibirDesconhecido.Enabled  := not ChkFiltrosContabilidade.Checked;
    ckExibirEnviada.Enabled       := not ChkFiltrosContabilidade.Checked;
    CbAmbiente.Enabled            := not ChkFiltrosContabilidade.Checked;
    CkExibirInativos.Enabled      := not ChkFiltrosContabilidade.Checked;
    EdtNumero.Enabled             := not ChkFiltrosContabilidade.Checked;
    EdtCodVenda.Enabled           := not ChkFiltrosContabilidade.Checked;

    //A princípio será permitido clicar nestes botões mesmo quando não está sendo filtrado para a contabilidade.
    //Ajustar esta regra caso necessário
    //BtnContImprimir.Enabled  := ChkFiltrosContabilidade.Checked;
    //BtnContEnviar.Enabled    := ChkFiltrosContabilidade.Checked;
    //BtnContSalvar.Enabled    := ChkFiltrosContabilidade.Checked;
  finally
    dxLayoutControl1.EndUpdate(False);
  end;
end;

function TFrmNotaFiscal.LayoutPnlConfirmaNFE(ATipoOperacaoNFe : TTipoOperacaoNota; AChaveNota : String): TModalResult;
  function MaxSequenciaEvento : Integer;
  var
    QuerX : TIBQuery;
    I : Integer;
  begin
    QuerX := GeraQuery(Transa);
    try
      QuerX.SQL.Text := 'select NF.NF_SEQUENCIA_EVENTO as SEQ ' +
                        'from NOTA_FISCAL NF                      ' +
                        'where NF.NF_CHAVE = :CHAVE               ' +
                        '      and NF.TIPO = :TIPO                ' +
                        'order by NF.NF_SEQUENCIA_EVENTO asc';
      QuerX.ParamByName('CHAVE').Value := NotaFiscalXML.FieldByName('NF_CHAVE').Value;
      QuerX.ParamByName('TIPO').Value  := 'CCe';
      QuerX.Open;

      I := 1;
      while not QuerX.Eof do
      begin
        if QuerX.FieldbyName('SEQ').asInteger <> I then
        begin
          Break;
        end;
        inc(I);
        QuerX.Next;
      end;
      Result := I;
    finally
      QuerX.Free;
    end;
  end;

const
  QUANT_CARACTER_CANCELAMENTO = 255;
  QUANT_CARACTER_CCE = 1000;
var
  AChave, AEmail : string;
  AForm : TPanelForm;
  QuerX : TIBQuery;
begin
  LayoutItemChave.Visible    := False and (ATipoOperacaoNFe in [onCartaCorrecao, onRetornoCancelamentoNFe, onEnviarEmail]);
  //LayoutItemAbrir.Visible    := LayoutItemChave.Visible;
  LayoutItemIDCod.Visible    := (ATipoOperacaoNFe in [onCartaCorrecao , onConsultarLote , onLinkNFSe , onInutilizarNumeracao]);
  LayoutItemCNPJ.Visible     := (ATipoOperacaoNFe in [onRetornoCancelamentoNFe, onCartaCorrecao , onInutilizarNumeracao, onCancelarNFSe]);
  LayoutItemJustificativa.visible      := (ATipoOperacaoNFe in [onRetornoCancelamentoNFe, onCartaCorrecao , onInutilizarNumeracao]);
  LayoutItemNumeroProtocoloCod.Visible := (ATipoOperacaoNFe in [onRetornoCancelamentoNFe , onConsultaSituacaoLote ,onCartaCorrecao , onConsultarLote , onLinkNFSe , onInutilizarNumeracao]);
  LayoutItemIncricaoMunicipal.Visible  := (ATipoOperacaoNFe in [onLinkNFSe , onInutilizarNumeracao]);
  LayoutItemEmailDestino.Visible := (ATipoOperacaoNFe in [onEnviarEmail]);
  GrupoDetalhes.Visible := (ATipoOperacaoNFe <> onEnviarEmail);
  GrupoInformacoesCCe.Visible          := (ATipoOperacaoNFe = onCartaCorrecao);
  GrupoQuantidades.Visible             := (ATipoOperacaoNFe in [onRetornoCancelamentoNFe, onCartaCorrecao , onInutilizarNumeracao]);
  LayoutItemQtdCartasRestantes.Visible := (ATipoOperacaoNFe = onCartaCorrecao);
  LiRgNFSeCodigoCancelamento.Visible   := (ATipoOperacaoNFe = onCancelarNFSe);

  LayoutItemNumeroInicial.Visible      := (ATipoOperacaoNFe = onInutilizarNumeracao);

  case ATipoOperacaoNFe of
    onRetornoCancelamentoNFe :
      begin
        EdtCaracteresRestantes.Tag   := QUANT_CARACTER_CANCELAMENTO;
        EdtCaracteresRestantes.Value := QUANT_CARACTER_CANCELAMENTO;
        MemoJustificativa.Properties.MaxLength := QUANT_CARACTER_CANCELAMENTO;
        LayoutItemNumeroProtocoloCod.Caption := 'Número do Protocolo';
        LayoutItemJustificativa.Caption      := 'Justificativa';
        LayoutItemCNPJ.Caption               := 'CNPJ ou o CPF do autor do Evento';
        pnlConfirmaNFE.Caption               := 'Cancelamento';
        pnlConfirmaNFE.Tag                   := 1;
        AChave                               := AChaveNota;
        EdtChave.Text                        := AChave;
        EdtCNPJ.Text                         := OnlyNumber(GetCnpjCpf(Copy(AChave, 7, 14)));
        EdtNumeroProtocolo.Text              := NotaFiscalXML.FieldByName('NF_PROTOCOLO').AsString; //FFrmNFe.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      end;
    onCartaCorrecao :
      begin
        EdtCaracteresRestantes.Tag   := QUANT_CARACTER_CCE;
        EdtCaracteresRestantes.Value := QUANT_CARACTER_CCE;
        MemoJustificativa.Properties.MaxLength := QUANT_CARACTER_CCE;
        LayoutItemNumeroProtocoloCod.Caption := 'Sequencial do evento de mesmo tipo';
        LayoutItemJustificativa.Caption      := 'Correção a ser considerada';
        LayoutItemIDCod.Caption      := 'Identificador de controle do Lote de envio do Evento';
        LayoutItemCNPJ.Caption       := 'CNPJ ou o CPF do autor do Evento';
        pnlConfirmaNFE.Caption       := 'WebServices Carta de Correção';
        pnlConfirmaNFE.Tag           := 2;
        AChave                       := OnlyNumber(NotaFiscalXML.FieldByName('NF_CHAVE').AsString);
        EdtChave.Text                := AChave;
        EdtIDCod.Text                := '1';
//        EdtJustificativa.Lines.Text  := 'Digite as informações para serem corrigidas na Nota Fiscal.';
//        EdtJustificativa.Style.Color := clGradientInactiveCaption;
        EdtCNPJ.Text                 := copy(NotaFiscalXML.FieldByName('NF_CHAVE').AsString,7,14);
        EdtNumeroProtocolo.Text      := IntToStr(MaxSequenciaEvento);
        edtCartasdeCorrecaoRestantes.Value := 20 - StrToInt(EdtNumeroProtocolo.Text);
        if StrToInt(EdtNumeroProtocolo.Text) > 20 then
        begin
          ShowMessageWR('Excedeu o limite de evento de carta de correção para esta Nota Fiscal.' + sLineBreak +
                        'Máximo permitido: 20(vinte) eventos.', MB_ICONWARNING);
          Exit;
        end;
      end;
    onConsultaSituacaoLote :
      begin
        EdtNumeroProtocolo.Text              := NotaFiscalXML.FieldByName('NF_PROTOCOLO').AsString;
        LayoutItemNumeroProtocoloCod.Caption := 'Número do Protocolo';
        pnlConfirmaNFE.Caption               := 'Consulta Situação Lote';
      end;
    onConsultarLote :
      begin
        EdtNumeroProtocolo.Text              := NotaFiscalXML.FieldByName('NF_PROTOCOLO').AsString;
        LayoutItemIDCod.Caption              := 'Número do Lote';
        LayoutItemNumeroProtocoloCod.Caption := 'Número do Protocolo';
        pnlConfirmaNFE.Caption               := 'Consultar Lote';
      end;
    onCancelarNFSe :
      begin
        LayoutItemCNPJ.Caption  := 'Motivo do Cancelamento';
        pnlConfirmaNFE.Caption  := 'Cancelar NFSe';
      end;
    onLinkNFSe :
      begin
        LayoutItemIDCod.Caption              := 'Número da NFSe';
        LayoutItemNumeroProtocoloCod.Caption := 'Código de Verificação';
        LayoutItemIncricaoMunicipal.Caption  := 'Inscrição Municipal';
        pnlConfirmaNFE.Caption               := 'Gerar o Link da NFSe';
      end;
    onInutilizarNumeracao :
      begin
        EdtCaracteresRestantes.Tag           := QUANT_CARACTER_CANCELAMENTO;
        EdtCaracteresRestantes.Value         := QUANT_CARACTER_CANCELAMENTO;
        LayoutItemIDCod.Caption              := 'Ano';
        EdtIDCod.Text                        := YearOf(DataHoraSys).ToString;
        LayoutItemNumeroProtocoloCod.Caption := 'Modelo';
        EdtNumeroProtocolo.Text              := '55';
        LayoutItemJustificativa.Caption      := 'Justificativa';
        LayoutItemCNPJ.Caption               := 'Série';
        EdtCNPJ.Text                         := '1';
        LayoutItemIncricaoMunicipal.Caption  := 'Número Final';
        pnlConfirmaNFE.Caption               := 'WebServices Inutilização';
      end;
    onEnviarEmail :
      begin
        EdtEmailDestino.Properties.Items.Clear;
        NotaFiscalSQLBuscaEmailDestinatario(NotaFiscalXML.FieldByName('NF_CNPJCPF_DESTINO').AsString, EdtEmailDestino.Properties.Items);
        EdtEmailDestino.ItemIndex := 0;
        LayoutItemEmailDestino.Caption := 'Email de destino';
        pnlConfirmaNFE.Caption         := 'Enviar Email';
        pnlConfirmaNFE.Tag             := 3;
        EdtChave.Text                  := AChaveNota;
      end;
  end;

  AForm := TPanelForm.Create(pnlConfirmaNFE, bsSingle, nil);
  try
    AForm.Form.PopupParent := Self;
    Self.Enabled := False;
    AForm.Form.Show;
    AForm.Form.ClientHeight := dxLayoutControl2.OccupiedClientHeight;
    repeat
      try
        Application.HandleMessage;
      except
        Application.HandleException(nil);
      end;
    until not AForm.Form.Visible;
    Result := AForm.Form.ModalResult;
    Self.Enabled := True;
  finally
    AForm.Free;
  end;
end;

procedure NotaFiscalSQLBuscaEmailDestinatario(const ACnpjDestinatario: string; AEnderecosEmailLocalizados: TStrings);
var
  QuerX: TFDQuery;
  AEmail: string;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select * ' +
                      'from (select PC.CONTATO, PC.EMAIL, null as EMAIL_NFE ' +
                      '      from PESSOAS_CONTATO PC ' +
                      '      left join PESSOAS P on P.CODIGO = PC.CODPESSOA ' +
                      '      where (P.CNPJCPF = :CNPJCPF) ' +
                      '            or (P.CNPJCPF = :CNPJCPF2) ' +

                      '      union ' +

                      '      select P1.RAZAOSOCIAL as CONTATO, P1.EMAIL, P1.EMAIL_NFE ' +
                      '      from PESSOAS P1 ' +
                      '      where (P1.CNPJCPF = :CNPJCPF) ' +
                      '            or (P1.CNPJCPF = :CNPJCPF2)) ' +
                      'where (coalesce(EMAIL, '''') <> '''') ' +
                      'order by 1';
    QuerX.ParamByName('CNPJCPF').AsString  := GetCnpjCpf(ACnpjDestinatario);
    QuerX.ParamByName('CNPJCPF2').AsString := OnlyNumberWR(ACnpjDestinatario);
    QuerX.Open;
    while not QuerX.Eof do
    begin
//      AEmail := LeftStr(QuerX.FieldByName('CONTATO').AsString, 20);  //ESTA DANDO ERRO NO ENVIO
//      AEmail := PadRight(AEmail, 20, ' ');
      AEmail := (*AEmail + ' | ' + Trim*)(QuerX.FieldByName('EMAIL').AsString);
      if QuerX.FieldByName('EMAIL_NFE').AsString <> '' then
        AEmail := AEmail + '; ' + QuerX.FieldByName('EMAIL_NFE').AsString;
      AEnderecosEmailLocalizados.Add(AEmail);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNotaFiscal.LerConfiguracao;
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Sistema.RegPath + 'ConsuNFe\' + EmpresaAtiva, True) then
    begin
      CkExibirNFe.Checked           := Reg.ReadBoolWR('NFe', True);
      CkExibirNFSe.Checked          := Reg.ReadBoolWR('NFSe', True);
      CkExibirNFCe.Checked          := Reg.ReadBoolWR('NFCe', True);

      CkExibirConfirmada.Checked    := Reg.ReadBoolWR('Autorizada', True);
      CkExibirDenegada.Checked      := Reg.ReadBoolWR('Denegada', True);
      CkExibirCancelada.Checked     := Reg.ReadBoolWR('Cancelada', True);
      CkExibirNaoAutorizada.Checked := Reg.ReadBoolWR('NaoAutorizada', False);
      CkExibirDesconhecido.Checked  := Reg.ReadBoolWR('Desconhecida', False);
      ckExibirEnviada.Checked       := Reg.ReadBoolWR('Enviada', False);

      GrupoAvancado.Visible         := Reg.ReadBoolWR('GrupoAvancado', False);
//      CbAmbiente.ItemIndex          := Reg.ReadIntegerWR('Ambiente', 0);
      CkExibirInativos.Checked      := Reg.ReadBoolWR('Inativos', False);
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFrmNotaFiscal.LimpaCamposPnlEventoNF;
begin
  EdtInscricaoMunicipal.Clear;
  EdtNumeroProtocolo.Clear;
  MemoJustificativa.Clear;
  EdtEmailDestino.Properties.Items.Clear;
  EdtCNPJ.Clear;
  EdtIDCod.Clear;
  EdtChave.Clear;
end;

procedure TFrmNotaFiscal.NotaFiscal1Click(Sender: TObject);
var
  ANFe, ANFSe, ADisponivel: Boolean;
begin
  ANFe        := MatchStr(NotaFiscalXML.FieldByName('TIPO').AsString, ['NFe', 'NFCe']);
  ANFSe       := (NotaFiscalXML.FieldByName('TIPO').AsString = 'NFSe');
  ADisponivel := not NotaFiscalXML.IsEmpty;

  ConsultarLote1.Visible         := ANFSe;
  LinkNFSe1.Visible              := ANFSe;

  Visualizar1.Enabled            := ADisponivel;
  GerarPDF1.Enabled              := ADisponivel;
  EnviarEmail4.Enabled           := ADisponivel;
  VizualizarXML1.Enabled         := ADisponivel;
  SalvarXMLdeRetorno1.Enabled    := ADisponivel;
  Evento1.Enabled                := ADisponivel;

  c1.Visible                      := ANFe;
  ValidarXML1.Enabled             := ANFe;
  CartadeCorreo1.Enabled          := ANFe;
  RecuperarXMLpelachave1.Enabled  := ANFe;
  C1.Enabled                      := ANFe;
  SalvarXMLdeRetorno1.Enabled     := ANFe;
  ConsultarcarregandoXML1.Enabled := ANFe;
  Outros1.Enabled                 := ANFe;
end;

procedure TFrmNotaFiscal.NotaFiscalXMLAfterInsert(DataSet: TDataSet);
begin
  NotaFiscalXML.FieldByName('CODIGO').AsInteger := GetProximoCodigoSP('NOTA_FISCAL');
end;

procedure TFrmNotaFiscal.NotaFiscalXMLAfterOpen(DataSet: TDataSet);
begin
  NotaFiscalXML_Evento.Open;
end;

procedure TFrmNotaFiscal.NotaFiscalXMLAfterScroll(DataSet: TDataSet);
begin
  MemoResposta.Lines.Clear;
  HTMLViewer1.Clear;
 // WEBResposta.Navigate('about:blank');
end;

procedure TFrmNotaFiscal.NotaFiscalXMLBeforeClose(DataSet: TDataSet);
begin
//  WRLog('TFrmNotaFiscal.NotaFiscalXMLBeforeClose');
  NotaFiscalXML_Evento.Close;
  NotaFiscalXML_Inutilizacao.Close;
end;

procedure TFrmNotaFiscal.NotaFiscalXMLBeforeOpen(DataSet: TDataSet);
var
  ANumeroInicio, ANumeroFim: Integer;
  ANumeros: TArray<string>;
  ASQLWhere: TStringList;
  AOrderByNovo: string;
begin
  LimpaSQLWhere(NotaFiscalXML);

  ASQLWhere := TStringList.Create;
  try
    ASQLWhere.AddAnd('NF.TIPO not in (' + NotaFiscalTipoRegistroToSQL([nftrCCe, nftrNFeCancelamento, nftrNFSeCancelamento, nftrNFeInutilizacao, nftrSATCancelamento]) + ')');
    if FExclusivoDaVenda then
      ASQLWhere.AddAnd('CODVENDA = :CodVenda')
    else
    begin
      if CbAmbiente.ItemIndex > 0 then
        ASQLWhere.AddAnd('NF_AMBIENTE = :Amb');

      if not CkExibirConfirmada.Checked then
        ASQLWhere.AddAnd('not (upper(NF_SITUACAO) in (''CONFIRMADA'', ''AUTORIZADA''))');

      if not CkExibirDenegada.Checked then
        ASQLWhere.AddAnd('not (NF_SITUACAO = ''Denegada'')');

      if not CkExibirCancelada.Checked then
        ASQLWhere.AddAnd('not (NF_SITUACAO = ''Cancelada'')');

      if not CkExibirNaoAutorizada.Checked then
        ASQLWhere.AddAnd('not (NF_SITUACAO in (''Não Autorizada'', ''Duplicada''))');

      if not CkExibirDesconhecido.Checked then
        ASQLWhere.AddAnd('not (NF_SITUACAO = ''Desconhecida'')');

      if not ckExibirEnviada.Checked then
        ASQLWhere.AddAnd('not (NF_SITUACAO = ''Enviada'')');

     // if not CkExibirCartaCorrecao.Checked then
      //  NotaFiscalXML.SelectSQL.Add('and not (TIPO = ''CCe'')');

    //  if not CbExibirRetorno.Checked then
    //    NotaFiscalXML.SelectSQL.Add('and not (NF.TIPO = ''Aut./Retorno'')');

      if not CkExibirNFCe.Checked then
        ASQLWhere.AddAnd('not (TIPO = ''NFCe'')');

      if not CkExibirNFSe.Checked then
        ASQLWhere.AddAnd('not (TIPO = ''NFSe'')');

      if not CkExibirNFe.Checked then
        ASQLWhere.AddAnd('not (TIPO = ''NFe'')');

      if not CkExibirSAT.Checked then
        ASQLWhere.AddAnd('not (TIPO = ''CFeSAT'')');

      if ComboBoxGetObjetoSelecionado(CbEmpresa) <> nil  then
        ASQLWhere.AddAnd('CODEMPRESA = :Emp');

      if (EdtDtInicial.Date > 0) and (EdtDtFinal.Date > 0) then
        ASQLWhere.AddAnd('NF_DT_EMISSAO between :DtInicio and :DtFim');

      ANumeroInicio := 0;
      ANumeroFim    := 0;
      EdtNumero.Text := Trim(EdtNumero.Text);
      if EdtNumero.Text <> '' then
      begin
        ANumeros := string(EdtNumero.Text).Split(['-']);
        if High(ANumeros) >= 0 then
          ANumeroInicio := StrToIntDef(Trim(ANumeros[0]), 0);
        if High(ANumeros) >= 1 then
          ANumeroFim := StrToIntDef(Trim(ANumeros[1]), 0)
        else
          ANumeroFim := ANumeroInicio;
        ASQLWhere.AddAnd('NF_NUMERO between :NumInicio and :NumFim');
      end;

      if FCodVenda <> '' then
        ASQLWhere.AddAnd('CODVENDA = :CodVenda');

      if not CkExibirInativos.Checked then
        ASQLWhere.AddAnd('(not NF.STATUS like ''INATIVO%'') or (NF.STATUS is null)');
    end;

    AOrderByNovo := GetSQLOrderBy(cxGridDBTableView2);
    if AOrderByNovo <> '' then
      ASQLWhere.Add(AOrderByNovo)
    else
      ASQLWhere.Add('order by NF_NUMERO desc, NF_DT_EMISSAO desc');

    if ASQLWhere.Count > 0 then
    begin
      NotaFiscalXML.SelectSQL.Add('where');
      NotaFiscalXML.SelectSQL.AddStrings(ASQLWhere);
    end;

    //Preenchimento de Parâmetros
    if EdtDtInicial.Date > 0 then
      NotaFiscalXML.Params.PreencheParamWR('DtInicio', StartOfTheDay(EdtDtInicial.Date), ftDateTime);
    if EdtDtFinal.Date > 0 then
      NotaFiscalXML.Params.PreencheParamWR('DtFim', EndOfTheDay(EdtDtFinal.Date), ftDateTime);
    NotaFiscalXML.Params.PreencheParamWR('NumInicio', ANumeroInicio, ftInteger);
    NotaFiscalXML.Params.PreencheParamWR('NumFim', ANumeroFim, ftInteger);
    NotaFiscalXML.Params.PreencheParamWR('CodVenda', FCodVenda, ftString);
    NotaFiscalXML.Params.PreencheParamWR('Amb', CbAmbiente.ItemIndex, ftInteger);
    if ComboBoxGetObjetoSelecionado(CbEmpresa) <> nil then
      NotaFiscalXML.Params.PreencheParamWR('Emp', Integer(ComboBoxGetObjetoSelecionado(CbEmpresa)), ftInteger);
  finally
    ASQLWhere.Free;
  end;
end;

procedure TFrmNotaFiscal.NotaFiscalXMLCalcFields(DataSet: TDataSet);
begin
  if NotaFiscalXML.FieldByName('NF_AMBIENTE').AsInteger = 1 then
    NotaFiscalXML.FieldByName('Ambiente').AsString := 'Produção'
  else
    NotaFiscalXML.FieldByName('Ambiente').AsString := 'Homologação';
end;

procedure TFrmNotaFiscal.NotaFiscalXML_EventoBeforeOpen(DataSet: TDataSet);
begin
  LimpaSQLWhere(NotaFiscalXML_Evento);
end;

procedure TFrmNotaFiscal.NotaFiscalXML_EventoCalcFields(DataSet: TDataSet);
begin
  if NotaFiscalXML_EventoNF_AMBIENTE.AsInteger = 1 then
    NotaFiscalXML_EventoAmbiente.AsString := 'Produção'
  else
    NotaFiscalXML_EventoAmbiente.AsString := 'Homologação';
end;

procedure TFrmNotaFiscal.NotaFiscalXML_InutilizacaoBeforeOpen(DataSet: TDataSet);
begin
  LimpaSQLWhere(NotaFiscalXML_Inutilizacao);
  with NotaFiscalXML_Inutilizacao do
  begin
    if CbAmbiente.ItemIndex > 0 then
      SelectSQL.Add('and (NF_AMBIENTE = :Amb)');
    SelectSQL.Add('order by NF.NF_DT_INUTILIZACAO');
    Params.PreencheParamWR('Amb', CbAmbiente.ItemIndex, ftInteger);
  end;
end;

procedure TFrmNotaFiscal.NotaFiscalXML_InutilizacaoCalcFields(DataSet: TDataSet);
begin
  if NotaFiscalXML_InutilizacaoNF_AMBIENTE.AsInteger = 1 then
    NotaFiscalXML_InutilizacaoAmbiente.AsString := 'Produção'
  else
    NotaFiscalXML_InutilizacaoAmbiente.AsString := 'Homologação';
end;

procedure TFrmNotaFiscal.Omitirnotasnoautorizadas1Click(Sender: TObject);
begin
  Omitirnotasnoautorizadas1.Checked := not Omitirnotasnoautorizadas1.Checked;
end;

procedure TFrmNotaFiscal.OpenXmlShow(Sender: TObject);
begin
  if OpenXml.InitialDir = '' then
    OpenXml.InitialDir := FFrmNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
end;

procedure TFrmNotaFiscal.PopupMenuNFePopup(Sender: TObject);
begin
//  CartadeCorreo2.Visible := NotaFiscalXML.FieldByName('TIPO').AsString = 'NFe';
  ConsultarNaSEFAZ1.Visible := MatchStr(NotaFiscalXML.FieldByName('TIPO').AsString, ['NFe', 'NFCe']);
  VisualizarDANFe1.Caption := 'Visualizar ' + TipoNotaToTipoDanfe(NotaFiscalXML.FieldByName('TIPO').AsString);

  //Por enquanto o menu Outros só possui itens para NFe. Caso seja colocado mais itens nele que não seja
  //específico de NFe, tem que tratar o visible de cada item individualmente.
  Outros2.Visible := (NotaFiscalXML.FieldByName('TIPO').AsString = 'NFe');
end;

procedure TFrmNotaFiscal.MemoJustificativaPropertiesChange(Sender: TObject);
begin
  EdtCaracteresRestantes.Value := EdtCaracteresRestantes.Tag - Length(MemoJustificativa.Text);
end;

procedure TFrmNotaFiscal.MenuPesquisarClick(Sender: TObject);
begin
  GrupoCabecalho.Visible := not GrupoCabecalho.Visible;
end;

procedure TFrmNotaFiscal.RecuperarXMLpelachave1Click(Sender: TObject);
begin
  HlinkNavigateString(nil, 'http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
end;

procedure NotaFiscalAtualizaVendaParaCancelada(ANotaFiscal, AVenda: TDataSet);
var
  QuerX: TWRDataSet;
begin
  if AVenda <> nil then
  begin
    ValidaAlteraDataSet(AVenda);
    Assert(ANotaFiscal.FieldByName('CODVENDA').AsString = AVenda.FieldByName('CODIGO').AsString, 'Venda não confere com a nota!');
    AVenda.FieldByName('NF_STATUS').AsString   := 'Cancelada';
    AVenda.FieldByName('NOTAFISCAL').AsInteger := ANotaFiscal.FieldByName('NF_NUMERO').AsInteger;
  end else
  begin  //Gambiarra até que seja tudo transferido para a tela nova de nota fiscal
    QuerX := TWRDataSet.Create(ANotaFiscal);
    try
      QuerX.SQL.Text := 'update VENDA V '+
  //                        'set V.NOTAFISCAL = NULL '+
                        'set V.NF_STATUS = ''Cancelada'' '+
                        'where (V.CODIGO = :CODVENDA) '+
                        '  and (V.NOTAFISCAL = :NOTAFISCAL)';
      QuerX.ParamByName('CODVENDA').AsString    := ANotaFiscal.FieldByName('CODVENDA').AsString;
      QuerX.ParamByName('NOTAFISCAL').AsInteger := ANotaFiscal.FieldByName('NF_NUMERO').AsInteger;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TFrmNotaFiscal.S1Click(Sender: TObject);
begin
  AbrirNotaSelecionada(anSalvarPDF);
end;

procedure TFrmNotaFiscal.S2Click(Sender: TObject);
begin
  MemoResposta.Lines.Text := NotaFiscalXML_EventoARQUIVO_XML.AsString;
  HTMLViewer1.LoadFromString(NotaFiscalXML_EventoARQUIVO_XML.AsString);
  FFrmNFe.LoadXML(MemoResposta, nil);
  GrupoXML.Expanded := True;
  PageControl.TabIndex := 1;
end;

procedure TFrmNotaFiscal.S3Click(Sender: TObject);
begin
  AbrirEventoSelecionado([anSalvarPDF], True);
end;

procedure TFrmNotaFiscal.SalvarXMLderetorno1Click(Sender: TObject);
begin
  if ShowMessageWR('Deseja Salvar XML de retorno', MB_ICONQUESTION) = IDYES then
  begin
    ConsultarcarregandoXML1Click(Self);
    NotaFiscalXML.Edit;
    NotaFiscalXML.FieldByName('CODVENDA').AsString       := NotaFiscalXML.FieldByName('CODVENDA').AsString;
    NotaFiscalXML.FieldByName('NF_RAZAOSOCIAL').AsString := NotaFiscalXML.FieldByName('NF_RAZAOSOCIAL').AsString;
    NotaFiscalXML.Post;
    TFrmNFe.GravaRetornoConsultaNoBanco(FFrmNFe.ACBrNFe1,NotaFiscalXML.FieldByName('CODVENDA').AsString);
    btnPesquisarClick(Sender);
  end;
end;

procedure TFrmNotaFiscal.StatusServio1Click(Sender: TObject);
begin
  with FFrmNFe do
  begin
    ACBrNFe1.WebServices.StatusServico.Executar;
    MemoResposta.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
    memoRespostaWeb.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
    LoadXML(MemoResposta, nil);
    PageControl.ActivePageIndex := 1;
    MemoDadosResposta.Lines.Add('');
    MemoDadosResposta.Lines.Add('Status Serviço');
    MemoDadosResposta.Lines.Add('tpAmb: ' + TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
    MemoDadosResposta.Lines.Add('verAplic: ' + ACBrNFe1.WebServices.StatusServico.verAplic);
    MemoDadosResposta.Lines.Add('cStat: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
    MemoDadosResposta.Lines.Add('xMotivo: ' + ACBrNFe1.WebServices.StatusServico.xMotivo);
    MemoDadosResposta.Lines.Add('cUF: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
    MemoDadosResposta.Lines.Add('dhRecbto: ' + DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
    MemoDadosResposta.Lines.Add('tMed: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
    MemoDadosResposta.Lines.Add('dhRetorno: ' + DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
    MemoDadosResposta.Lines.Add('xObs: ' + ACBrNFe1.WebServices.StatusServico.xObs);
  end;
end;

function TFrmNotaFiscal.TipoNotaToTipoDanfe(const ATipoNota: string): string;
begin
  case NotaFiscalTipoRegistroStrToEnum(ATipoNota) of
    nftrNFSe: Result := 'DANFSe';
    nftrNFCe: Result := 'DANFCe';
    nftrSAT:  Result := 'SAT';
  else
    Result := 'DANFe';
  end;
end;

procedure TFrmNotaFiscal.V1Click(Sender: TObject);
begin
  AbrirEventoSelecionado([anVisualizar]);
end;

procedure TFrmNotaFiscal.ConsultarNaSEFAZ1Click(Sender: TObject);
begin
  if ExclusivoDaVenda then
    ConsultaNotaSelecionadaNaSEFAZPelaVenda
  else
    ConsultaNotaSelecionadaNaSEFAZ;
end;

procedure TFrmNotaFiscal.ConsultarporRPS1Click(Sender: TObject);
begin
  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

  FFrmNFSe.ConsultarNFSeporRps(NotaFiscalXML);
end;

procedure TFrmNotaFiscal.ValidarXML1Click(Sender: TObject);
begin
  with FFrmNFe do
  begin
    ACBrNFe1.NotasFiscais.Clear;
    CarregaXMLDoBanco(ACBrNFe1);
    ACBrNFe1.NotasFiscais.Validar;
    ShowMessageWR('Nota Fiscal Eletrônica validada com sucesso.');
  end;
end;

procedure TFrmNotaFiscal.VincularVenda1Click(Sender: TObject);
var
  ACodVenda, ACodVendaAnterior : String;
  ATemCodVendaAnterior : Boolean;
  AFrameVenda: TFrame_Venda_Mestre;
begin
  ACodVenda:= '';
  ACodVendaAnterior := NotaFiscalXML.FieldByName('CODVENDA').AsString;
  ATemCodVendaAnterior := not MatchStr(ACodVendaAnterior,['', 'VINCULAR']);
  ConsultaTag_NormalModal(self,Tag_Venda);
  if (Codigo <> '')and(Codigo <> '0') then
    ACodVenda  := Codigo;

  if ACodVenda = '' then
    Exit;

  if not (NotaFiscalXML.State in dsEditModes) then
    NotaFiscalXML.Edit;
  NotaFiscalXML.FieldByName('CODVENDA').AsString := ACodVenda;
  NotaFiscalXML.Post;
  ComitaTransacaoNF;

//  AFrmVenda := TFrmVenda(ConsultaForm(TFrmVenda));
//  AFrmVenda.CloseOpen_AbrirRegistro(ACodVenda);
  AFrameVenda := TFrame_Venda_Mestre(CadastroTag_Frame(Self, Tag_Venda));
  try
    AFrameVenda.Cadastro.Edit;
    AFrameVenda.Cadastro.FieldByName('NOTAFISCAL').AsString := NotaFiscalXML.FieldByName('NF_NUMERO').AsString;
    AFrameVenda.UCHist_Cadastro.MensagemHistorico.Add('Nota Fiscal Vinculada:' + ' ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString);
    if ATemCodVendaAnterior then
      AFrameVenda.UCHist_Cadastro.MensagemHistorico.Add('que foi desvinculada da venda ' + ACodVendaAnterior + '.');
    AFrameVenda.Cadastro.Post;
    AFrameVenda.TransaFD.Commit;

    // Desvincula Venda Original se tiver
    if ATemCodVendaAnterior then
    begin
      AFrameVenda.CloseOpen_AbrirRegistro(ACodVendaAnterior);
      AFrameVenda.Cadastro.Edit;
      AFrameVenda.Cadastro.FieldByName('NOTAFISCAL').AsString := '';
      AFrameVenda.UCHist_Cadastro.MensagemHistorico.Add('Desvinculada NF' + ' ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString + ', que foi vinculada na venda ' + ACodVenda + '.');
      AFrameVenda.Cadastro.Post;
      AFrameVenda.TransaFD.Commit;
    end;
  finally
    AFrameVenda.Free;
  end;
end;

procedure TFrmNotaFiscal.Visualizar1Click(Sender: TObject);
begin
  if MatchStr(NotaFiscalXML.FieldByName('TIPO').AsString, ['NFe', 'NFCe']) then
    AbrirNotaSelecionada(anVisualizar)
  else if NotaFiscalXML.FieldByName('TIPO').AsString = 'CFeSAT' then
    TDMSat.ImprimirNota(NotaFiscalXML.FieldByName('CODIGO').AsInteger)
  else
  begin
    TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

    FFrmNFSe.VisualizarNFSe(NotaFiscalXML);
  end;
end;

procedure TFrmNotaFiscal.VisualizarInutilizadas1Click(Sender: TObject);
begin
  NotaFiscalXML_Inutilizacao.Close;
  NotaFiscalXML_Inutilizacao.Open;
  ShowPanelForm(PnlInutilizadas, bsSingle);
end;

procedure TFrmNotaFiscal.VisualizarXML_Evento1Click(Sender: TObject);
Var
  ANome:String;
begin
  ANome := GetDirTemp + NotaFiscalXML_Evento.FieldByName('NF_CHAVE').AsString + NotaFiscalXML_Evento.FieldByName('TIPO').AsString + '.xml';
  TBlobField(NotaFiscalXML_Evento.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrmNotaFiscal.Visualizar_Evento1Click(Sender: TObject);
begin
  if NotaFiscalXML.FieldByName('TIPO').AsString <> 'NFSe' then
    AbrirEventoSelecionado([anVisualizar]);
end;

procedure TFrmNotaFiscal.Vizualizar1Click(Sender: TObject);
begin
  Visualizar1Click(Self);
end;

procedure TFrmNotaFiscal.VizualizarXML1Click(Sender: TObject);
Var
  ANome:String;
begin
  ANome := GetDirTemp + NotaFiscalXML_Evento.FieldByName('NF_CHAVE').AsString + NotaFiscalXML_Evento.FieldByName('TIPO').AsString + '.xml';
  TBlobField(NotaFiscalXML_Evento.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure TFrmNotaFiscal.WREventosCadastro1ImpressaoAfterPrint(Sender: TObject);
begin
  cxGrid1.Enabled := True;
end;

procedure TFrmNotaFiscal.WREventosCadastro1ImpressaoBeforePrint(Sender: TObject;
  var APermiteImprimir: Boolean);
begin
  cxGrid1.Enabled := False;
end;

procedure TFrmNotaFiscal.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
begin
  with WREventosCadastro1.Impressao.Report do
  begin
    Variables['CkExibirNFe']          := CkExibirNFe.Checked;
    Variables['CkExibirNFSe']         := CkExibirNFSe.Checked;
    Variables['CkExibirNFCe']         := CkExibirNFCe.Checked;
    Variables['CkExibirCancelada']    := CkExibirCancelada.Checked;
    Variables['CkExibirConfirmada']   := CkExibirConfirmada.Checked;
    Variables['CkExibirDesconhecido'] := CkExibirDesconhecido.Checked;
    Variables['ckExibirEnviada']      := ckExibirEnviada.Checked;
    Variables['NumeroNota']           := Fr3String(EdtNumero.Text);
    Variables['CodVenda']             := Fr3String(EdtCodVenda.Text);
    Variables['Ambiente']             := CbAmbiente.ItemIndex;
    Variables['DtInicio']             := Fr3Data(DateOf(EdtDtInicial.Date));
    Variables['DtFim']                := Fr3Data(DateOf(EdtDtFinal.Date));
    Variables['CodEmpresa']           := Integer(ComboBoxGetObjetoSelecionado(CbEmpresa));
  end;
end;

function TFrmNotaFiscal.AbrirEventoSelecionado(ATiposAbertura: TNotaFiscalTipoAberturaSet; ASolicitarCaminhoPDF: Boolean = False): string;
begin
  //Retorna o caminho do arquivo PDF quando este for solicitado no parâmetro ATiposAbertura
  Result := AbrirEvento(NotaFiscalXML_EventoCODIGO.AsInteger, ATiposAbertura, ASolicitarCaminhoPDF);
end;

class function TFrmNotaFiscal.AbrirEvento(ACodEvento: Integer; ATiposAbertura: TNotaFiscalTipoAberturaSet; ASolicitarCaminhoPDF: Boolean): string;
var
  QuerX: TIBQuery;
begin
  //Retorna o caminho do arquivo PDF quando este for solicitado no parâmetro ATiposAbertura
  Result := '';
  if ATiposAbertura = [] then
    Exit;

  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select NF.ARQUIVO_XML as XML_NOTA, EV.ARQUIVO_XML as XML_EVENTO, EV.TIPO ' +
                      'from NOTA_FISCAL EV ' +
                      'left join NOTA_FISCAL NF on (NF.NF_CHAVE = EV.NF_CHAVE) and (NF.TIPO in (''NFe'', ''NFSe'')) ' +
                      'where (EV.CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodEvento;
    QuerX.Open;

    Result := NotaFiscalAbrirEvento(QuerX.FieldByName('XML_NOTA').AsString, QuerX.FieldByName('XML_EVENTO').AsString,
      QuerX.FieldByName('TIPO').AsString, ATiposAbertura, ASolicitarCaminhoPDF);
  finally
    QuerX.Free;
  end;
end;

function NotaFiscalAbrirEvento(const AXmlNota, AXmlEvento, ATipoEvento: string; ATiposAbertura: TNotaFiscalTipoAberturaSet;
  ASolicitarCaminhoPDF: Boolean): string;
var
  AACBrNFe: TACBrNFe;
  AOpenDialog: TOpenFolderDialog;
begin
  //Retorna o caminho do arquivo PDF quando este for solicitado no parâmetro ATiposAbertura
  Result := '';
  AACBrNFe := TFrmNfe.CriaComponenteACBrNFe;
  try
    AACBrNFe.NotasFiscais.Clear;
    AACBrNFe.NotasFiscais.LoadFromString(AXmlNota);

    AACBrNFe.EventoNFe.Evento.Clear;
    AACBrNFe.EventoNFe.LerXMLFromString(AXmlEvento);

    TFrmNfe.ConfiguraDANFeEvento(AACBrNFe);

    if anVisualizar in ATiposAbertura then
      AACBrNFe.ImprimirEvento;

    //Gerar PDF
    if anSalvarPDF in ATiposAbertura then
    begin
      if ASolicitarCaminhoPDF then
      begin
        AOpenDialog := TOpenFolderDialog.Create(nil);
        try
          if not AOpenDialog.Execute then
            Exit;
          AACBrNFe.DANFE.PathPDF := AOpenDialog.FolderName;
        finally
          AOpenDialog.Free;
        end;
      end else
        AACBrNFe.DANFE.PathPDF := AACBrNFe.Configuracoes.Arquivos.PathEvento + 'PDF\' + ATipoEvento + '\';
      ForceDirectories(AACBrNFe.DANFE.PathPDF);
      AACBrNFe.ImprimirEventoPDF;
      Result := NotaFiscalGetNomePDF(AACBrNFe.NotasFiscais[0]); //Deve obrigatoriamente vir depois da impressão do PDF, senão o nome retorna vazio
    end;
  finally
    AACBrNFe.Free;
  end;
end;

procedure TFrmNotaFiscal.AbrirInutilizacao(ACodigo: Integer);
var
  QuerX: TIBQuery;
begin
  QuerX := GeraQuery(Transa);
  try
    QuerX.SQL.Text := 'select NF.ARQUIVO_XML ' +
                      'from NOTA_FISCAL NF ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.Open;
    if QuerX.IsEmpty then
      GeraExcecao('Arquivo de Inutilização não encontrado: ' + ACodigo.ToString);
    NotaFiscalAbrirInutilizacao(QuerX.Fields[0].AsString);
  finally
    QuerX.Free;
  end;
end;

procedure NotaFiscalAbrirInutilizacao(const AXMLInutilizacao: string);
var
  AACBrNFe: TACBrNFe;
  AFr3: string;
begin
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    AACBrNFe.InutNFe.LerXMLFromString(AXMLInutilizacao);
    TFrmNFe.ConfiguraDANFe(AACBrNFe);
    if (AACBrNFe.DANFE is TACBrNFeDANFEFR) and DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(tafr3INUTILIZACAO) ) then
      TACBrNFeDANFEFR(AACBrNFe.DANFE).FastFileInutilizacao := AFr3;
    AACBrNFe.ImprimirInutilizacao;
  finally
    AACBrNFe.Free;
  end;
end;

procedure TFrmNotaFiscal.AbrirNotaSelecionada(ATipoAbertura: TNotaFiscalTipoAbertura);
var
  AACBrNFe: TACBrNFe;
  ATipo: TNotaFiscalTipoRegistro;
begin
  ATipo := NotaFiscalTipoRegistroStrToEnum(NotaFiscalXML.FieldByName('TIPO').AsString);
  if ATipo in [nftrNFe, nftrNFCe] then
  begin
    AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
    try
      TFrmNFe.CarregaNota(NotaFiscalXML, AACBrNFe);
      if AACBrNFe.NotasFiscais.Count > 0 then
      begin
        if AACBrNFe.CstatCancelada(NotaFiscalXML.FieldByName('NF_CSTAT').AsInteger) and
           (ShowMessageWR('Deseja imprimir a Nota Fiscal cancelada? N: ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString, MB_ICONQUESTION) <> mrYes) then
          Exit
        else if AnsiSameText(NotaFiscalXML.FieldByName('NF_SITUACAO').AsString, 'Denegada') and
           (ShowMessageWR('Deseja imprimir a Nota Fiscal denegada? N: ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString, MB_ICONQUESTION) <> mrYes) then
          Exit;

        TFrmNFe.ImprimirNota(AACBrNFe, ATipoAbertura);
      end;
    finally
      AACBrNFe.Free;
    end;
  end
  else if ATipo = nftrSAT then
    TDMSat.ImprimirNota(NotaFiscalXML.FieldByName('CODIGO').AsInteger, anSalvarPDF);
end;

procedure TFrmNotaFiscal.Arquivo1Click(Sender: TObject);
begin
  ExportarXML1.Enabled := not NotaFiscalXML.IsEmpty;
end;

class procedure TFrmNotaFiscal.AtualizaNrNfNoFinanceiro(ANfNumero: Int64; const ACodVenda, ACodEmpresa, AVendaTipo: string;
  ATransaction: TComponent);

  function LGetSQLVendaTipo: string;
  begin
    if AVendaTipo = 'NOTA FISCAL' then
      Result := 'and (TIPO in (' + FinanceiroTipoToSQL([fitAPagar, fitPaga]) + '))'
    else
      Result := 'and (TIPO in (' + FinanceiroTipoToSQL([fitAReceber, fitRecebida]) + '))';
  end;

var
  QuerX: TWRDataSet;
begin
  if ANfNumero = 0 then
    Exit;

  try
    QuerX := TWRDataSet.Create(ATransaction);
    try
      QuerX.SQL.Text := 'select first 1 1 ' +
                        'from FINANCEIRO ' +
                        'where (CODPEDIDO = :CodPedido) ' +
                        '      and (CODEMPRESA = :CodEmpresa) ' +
                        '      and (STATUS like ''ATIVO%'') ' +
                        '      and not (NOTAFISCAL is null) ' +
                        '      and (NOTAFISCAL is distinct from :NF) ' +
                        LGetSQLVendaTipo;
      QuerX.ParamByName('NF').AsString         := IntToStr(ANfNumero);
      QuerX.ParamByName('CodPedido').AsString  := ACodVenda;
      QuerX.ParamByName('CodEmpresa').AsString := ACodEmpresa;
      QuerX.Open;
      if not QuerX.IsEmpty and
         (ShowMessageWR('Existe(m) lançamento(s) financeiro(s) na venda "' + ACodVenda + '" com número da nota fiscal ' +
           'preenchido, atualizar o número da nota fiscal para "' + IntToStr(ANfNumero) + '" no(s) lançamento(s)?', MB_ICONQUESTION) <> mrYes) then
        Exit;

      QuerX.Close;
      QuerX.SQL.Text := 'update FINANCEIRO set NOTAFISCAL = :NF ' +
                        'where (CODPEDIDO = :CodPedido) ' +
                        '      and (CODEMPRESA = :CodEmpresa) ' +
                        '      and (STATUS like ''ATIVO%'') ' +
                        LGetSQLVendaTipo;
      QuerX.ParamByName('NF').AsString         := IntToStr(ANfNumero);
      QuerX.ParamByName('CodPedido').AsString  := ACodVenda;
      QuerX.ParamByName('CodEmpresa').AsString := ACodEmpresa;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
  except
    on E:Exception do
    begin
      WRLog(E.Message + ' [TFrmNotaFiscal.AtualizaNrNfNoFinanceiro]');
      raise;
    end;
  end;
end;

procedure TFrmNotaFiscal.Atualizar(AParent: TWinControl);
begin
  BeginUpdate;
  try
    FFrmNFe.LerConfiguracao;
    Parent      := AParent;
    BorderStyle := bsNone;
    Align       := alClient;

    CkExibirNFe.Checked           := True;
    CkExibirNFSe.Checked          := True;
    CkExibirNFCe.Checked          := True;

    CkExibirConfirmada.Checked    := True;
    CkExibirDenegada.Checked      := True;
    CkExibirCancelada.Checked     := True;
    CkExibirNaoAutorizada.Checked := True;
    CkExibirDesconhecido.Checked  := True;
    CkExibirEnviada.Checked       := True;

    GrupoAvancado.Visible         := False;
    CbAmbiente.ItemIndex          := 0; //Todos os ambientes, inclusive notas em Homologação
    CkExibirInativos.Checked      := False;

    CbEmpresa.ItemIndex           := 0; //Todas as empresas
    EdtDtInicial.Clear;
    EdtDtFinal.Clear;

    GrupoCabecalho.Visible                := False;
    GrupoEventos.Visible                  := False;
    GrupoXML.Visible                      := False;
    dxLayoutControl1SplitterItem2.Visible := False;
    dxLayoutControl1SplitterItem1.Visible := False;

    cxGridDBTableView2.OptionsView.GroupByBox := False;

//    CbAmbiente.ItemIndex := IfThen(FFrmNFe.ACBrNFe1.Configuracoes.WebServices.Ambiente = taProducao, 1, 2);
    Visible := True;
  finally
    EndUpdate(True);
  end;
end;

procedure TFrmNotaFiscal.ComitaTransacaoNF;
var
  ACodNF: Integer;
begin
  if Transa.InTransaction then
  begin
    ACodNF := NotaFiscalXML.FieldByName('CODIGO').AsInteger;
    NotaFiscalXML.DisableControls;
    try
      Transa.Commit;
      NotaFiscalXML.Open;
    finally
      NotaFiscalXML.Locate('CODIGO', ACodNF, []);
      NotaFiscalXML.EnableControls;
    end;
  end;
end;

procedure TFrmNotaFiscal.Configuraes1Click(Sender: TObject);
begin
  FFrmNFe.ShowModal;
end;

procedure TFrmNotaFiscal.ConfiguraesNFSe1Click(Sender: TObject);
begin
  TFrmConfiguracoesM.MostrarConfiguracoes(Self);
end;

procedure TFrmNotaFiscal.ConsultaCadastro1Click(Sender: TObject);
var
  AUF , ADocumento : string;
begin
  // O consultar cadastro talvez não será colocado na tela nova de CADNOTAFISCAL
  with FFrmNFe do
  begin
    if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:', AUF)) then
      exit;
    if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)', ADocumento)) then
      exit;
    ADocumento := Trim(OnlyNumber(ADocumento));
    ACBrNFe1.WebServices.ConsultaCadastro.UF := AUF;
    if Length(ADocumento) > 11 then
      ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := ADocumento
    else
      ACBrNFe1.WebServices.ConsultaCadastro.CPF := ADocumento;
    ACBrNFe1.WebServices.ConsultaCadastro.Executar;
    MemoResposta.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetWS);
    memoRespostaWeb.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS);
    LoadXML(MemoResposta, nil);
    ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
    ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
  end;
end;

procedure TFrmNotaFiscal.ConsultaLteNFSe1Click(Sender: TObject);
begin
  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

  FFrmNFSe.ConsultarLoteRps(NotaFiscalXML);
end;

procedure TFrmNotaFiscal.ConsultaNFe1Click(Sender: TObject);
begin
  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

  edtDataInicial.EditValue := StartOfTheMonth(NotaFiscalXML.FieldByName('NF_DT_EMISSAO').AsDateTime);
  edtDataFinal.EditValue := EndOfTheMonth(NotaFiscalXML.FieldByName('NF_DT_EMISSAO').AsDateTime);
  edtNumeroInicialNFSe.EditValue := NotaFiscalXML.FieldByName('NF_NUMERO').AsString;
  edtNumeroFinalNFSe.EditValue := NotaFiscalXML.FieldByName('NF_NUMERO').AsString;
  edtNumLoteNFSe.EditValue := NotaFiscalXML.FieldByName('NF_NUM_LOTE').AsString;
  edtSerieNFSe.EditValue := NotaFiscalXML.FieldByName('SERIE').AsString;
  edtCNPJPrestador.EditValue :=  NotaFiscalXML.FieldByName('NF_CNPJCPF_DESTINO').AsString;
//  edtIMPrestador.EditValue :=
  edtCNPJTomador.EditValue := Empresa.FieldByName('CNPJCPF').AsString;
  edtIMTomador.EditValue := Empresa.FieldByName('IM').AsString;


  ShowPanelForm(PnlConsultaNFSe, bsSingle);
end;

function TFrmNotaFiscal.ConsultaNotaSelecionadaNaSEFAZ(ASilent: Boolean = False): Boolean;
var
  AACBrNFe: TACBrNFe;
  ACodigo: Variant;
begin
  {Chaves de teste para esta rotina:

   NFe Autorizada sem eventos: 42191108061860000147550010000000021015578357 (Homologação)
   NFe Cancelada em Produção:  35190811928901000164550010000020231761485422
   NFe Autorizada com CCe:     28191122515759000140550010000000811991128236
   NFe com CTe e MDFe:         35190811928901000164550010000019871455209482
                               35190703268385000160550010000272141189322800

   Chave que gera erro de duplicidade: 42191108061860000147550010000000021224893000
   Esta chave gera o erro com cStat 613 'Rejeicao: Codigo Numerico informado na Chave de Acesso difere
   do Codigo Numerico da NF-e [42191108061860000147550010000000021015578357]'

   Testes realizados com o certificado da WR Sistemas
   }
  Result := False;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    CarregaXMLDoBanco(AACBrNFe);
    try
      ACodigo := NotaFiscalXML.FieldByName('CODIGO').Value;
      TFrmNFe.ConsultaNotaSEFAZ(NotaFiscalXML, AACBrNFe);
      if NotaFiscalXML.State in dsEditModes then
        NotaFiscalXML.Post;
      ComitaTransacaoNF;
      Result := True;
    except
      on E:Exception do
      begin
        RollbackTransacao(Transa);
        NotaFiscalXML.Open;
        NotaFiscalXML.Locate('CODIGO', ACodigo, []);
        if not ASilent then
          ShowMessageWR('Não foi possível efetuar a consulta' + LineBreak + E.Message);
      end;
    end;
  finally
    AACBrNFe.Free;
  end;
end;

procedure TFrmNotaFiscal.ConsultaNotaSelecionadaNaSEFAZPelaVenda(AMostrarErros: Boolean = True);
var
  AACBrNFe: TACBrNFe;
  ACodigo: Variant;
  ANotaConfirmadaAntes: Boolean;
begin
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    CarregaXMLDoBanco(AACBrNFe);
    try
      if AACBrNFe.NotasFiscais.Count = 0 then
      begin
        ShowMessageWR('Não foi possível carregar esta nota. O XML da nota pode estar corrompido.');
        Exit;
      end;

      //Primeiro verifica a situação atual da nota
      ANotaConfirmadaAntes := AACBrNFe.CstatConfirmada(AACBrNFe.NotasFiscais[0].NFe.procNFe.cStat);

      //Consulta a nota na SEFAZ
      ACodigo := NotaFiscalXML.FieldByName('CODIGO').Value;
      TFrmNFe.ConsultaNotaSEFAZ(NotaFiscalXML, AACBrNFe);
      if NotaFiscalXML.State in dsEditModes then
        NotaFiscalXML.Post;

      //Garante que a nota esteja gravada corretamente no banco de dados
      ComitaTransacaoNF;

      //Caso a nota não estava confirmada e agora depois da consulta foi feita a confirmação, então atualizamos
      //a venda para conter os dados desta nota
      if not ANotaConfirmadaAntes and AACBrNFe.CstatConfirmada(AACBrNFe.NotasFiscais[0].NFe.procNFe.cStat) then
      begin
        AlteraDataSet(FVenda);

        TFrmVendaFrameNotaFiscal.AtualizarNotaNaVenda(FVenda, FVenda_Produto, AACBrNFe);
        FVenda.Post;
        ComitaTransacao(WRGetTransacao(FVenda));
        ShowMessageWR('A nota de número ' + IntToStr(AACBrNFe.NotasFiscais[0].NFe.Ide.nNF) + ' foi autorizada!');
        TFrmNFe.ImprimirNota(AACBrNFe);
      end;
    except
      on E:Exception do
      begin
        RollbackTransacao(Transa);
        NotaFiscalXML.Open;
        NotaFiscalXML.Locate('CODIGO', ACodigo, []);
        if AMostrarErros then
        begin
//          ShowMessageWR('Não foi possível efetuar a consulta' + LineBreak + E.Message);
          TFrmValidacoes.TrataErroNFe(Self, E.Message);
        end;

      end;
    end;
  finally
    AACBrNFe.Free;
  end;
end;

procedure TFrmNotaFiscal.ConsultarcarregandoXML1Click(Sender: TObject);
begin
  with FFrmNFe do
  begin
    ACBrNFe1.NotasFiscais.Clear;

    if (NotaFiscalXML.FieldByName('NF_TIPO').AsString <> 'Autorizada' ) then
    begin
      ShowMessageWR('Impossível fazer o processo selecionado, verifique o Tipo da NFE e o Status');
      Exit;
    end;
    CarregaXMLDoBanco(ACBrNFe1);

    ACBrNFe1.Consultar;
    ShowMessageWR(ACBrNFe1.WebServices.Consulta.Protocolo);
  end;
  MemoResposta.Lines.Text    := UTF8Encode(FFrmNFe.ACBrNFe1.WebServices.Consulta.RetWS);
  MemoRespostaWeb.Lines.Text := UTF8Encode(FFrmNFe.ACBrNFe1.WebServices.Consulta.RetornoWS);
  FFrmNFe.LoadXML(MemoResposta, nil);
  LimpaCamposPnlEventoNF;
end;

procedure TFrmNotaFiscal.ConsultarReciboLote1Click(Sender: TObject);
var
  aux : string;
begin
  // O enviar DPEC talvez não será colocado na tela nova de CADNOTAFISCAL
  with FFrmNFe do
  begin
    if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux)) then
      Exit;
    ACBrNFe1.WebServices.Recibo.Recibo := aux;
    ACBrNFe1.WebServices.Recibo.Executar;
    MemoResposta.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Recibo.RetWS);
    memoRespostaWeb.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Recibo.RetornoWS);
    LoadXML(MemoResposta, nil);
  end;
end;

procedure TFrmNotaFiscal.ConsultarSituao1Click(Sender: TObject);
begin
  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

  FFrmNFSe.ConsultarSituacao(NotaFiscalXML);
end;

procedure TFrmNotaFiscal.ConsultartodasasNFSe1Click(Sender: TObject);
var
  QuerX : TWRDataSet;
begin
  QuerX := TWRDataSet.Create(Transa);
  if ShowMessageWR('Atenção!' + sLineBreak + 'Este procedimento vai demorar!' +
                   sLineBreak + 'Tem certeza que deseja continuar?', MB_ICONWARNING or MB_YESNO) <> mrYes then
    Exit;

  TFrmNFSe.CarregaFrame(FFrmNFSe,wrNotaFiscalLocal);  // Se for nil Cria

  NotaFiscalXML.First;
  try
    while Not NotaFiscalXML.eof do
    begin
      if NotaFiscalXML.FieldByName('NF_PROTOCOLO').AsString = '' then
        FFrmNFSe.ConsultarNFSeporRps(NotaFiscalXML, False)
      else
        FFrmNFSe.ConsultarLoteRps(NotaFiscalXML, False); //False para não imprimir

      if NotaFiscalXML.FieldByName('NF_SITUACAO').AsString = 'Confirmada' then
      begin
//        QuerX.Close;
//        QuerX.SQL.Text := 'Update VENDA V set V.NOTAFISCAL = :nfnumero' +
//                          ' where V.CODIGO = :codvenda';
//        QuerX.ParamByName('nfnumero').AsLargeInt := NotaFiscalXML.FieldByName('NF_NUMERO').AsLargeInt;
//        QuerX.ParamByName('codvenda').AsString := NotaFiscalXML.FieldByName('CODVENDA').AsString;
//        QuerX.ExecSQL;
      end;

      NotaFiscalXML.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNotaFiscal.btnCancelarClick(Sender: TObject);
begin
  FechaPanelForm(pnlConfirmaNFE);
end;

procedure TFrmNotaFiscal.btnConfirmaClick(Sender: TObject);
begin
  if LayoutItemJustificativa.visible and (Length(MemoJustificativa.Text) < 15) then
  begin
    ShowMessageWR('Quantidade de caracteres da justificativa deve ser maior do que 15.' + sLineBreak + 'Verifique!');
    Exit;
  end;
  FechaPanelForm(pnlConfirmaNFE);
end;

procedure TFrmNotaFiscal.btnFecharInutilizadasClick(Sender: TObject);
begin
  FechaPanelForm(PnlInutilizadas);
  NotaFiscalXML_Inutilizacao.Close;
end;

procedure TFrmNotaFiscal.BtnContEnviarClick(Sender: TObject);
var
  AArquivoZip: string;
begin
  AArquivoZip := GetDirSistema + 'NFe\' + OnlyNumber(Empresa.FieldByName('CNPJCPF').AsString) + '\Notas Ficais XML ' + FormatDateTime('yyyy-mm', EdtDtInicial.Date) + '.zip';
  AArquivoZip := GetProximoNomeArquivo(AArquivoZip);
  if not ForceDirectories(ExtractFileDir(AArquivoZip)) then
  begin
    ShowMessageWR('Não foi possível criar o diretório: ' + AArquivoZip);
    Exit;
  end;
  GerarZipNotas(AArquivoZip);

  //Envia por email;
  if FileExists(AArquivoZip) then
  begin
    TFrmEMail.GerarEmail(Self, Empresa.FieldByName('CONTADOR_EMAIL').AsString, 'Notas Fiscais Referentes à ' +
                        PrimeirasMaiusculas(FormatDateTime('MMMM ''de'' YYYY', EdtDtInicial.Date)) + '.',
                        Empresa.FieldByName('RAZAOSOCIAL').AsString, AArquivoZip);
  end else
    ShowMessageWR('Arquivo Zip não encontrado.' + sLineBreak + 'Tente novamente!');
end;

procedure TFrmNotaFiscal.btnPesquisarClick(Sender: TObject);
begin
  if not IsUpdating or (Sender = btnPesquisar) then
  begin
    NotaFiscalXML.Close;
    NotaFiscalXML.Open;
  end;
end;

function NotaFiscalGetNomePDF(ANFe: ACBrNFeNotasFiscais.NotaFiscal): string;
begin
  with TACBrNFe(ACBrNFeNotasFiscais.TNotasFiscais(ANFe.Collection).ACBrNFe) do
  begin
    if DANFE is TACBrNFeDANFeRL then //Fortes
      Result := IncludeTrailingPathDelimiter(DANFE.PathPDF) + StringReplace(ANFe.NFe.infNFe.ID, 'NFe', '', [rfIgnoreCase]) + '-nfe.pdf'
    else if DANFE is TACBrNFeDANFEFR then //Fast
      Result := TACBrNFeDANFEFR(DANFE).ArquivoPDF;
  end;
end;

class function TFrmNotaFiscal.GetTipoArquivoXML(AArquivo: string; AMostrarErro: Boolean = False): TNotaFiscalTipoXML;
var
  ANFe: TACBrNFe;
begin

  ANFe  := TFrmNFe.CriaComponenteACBrNFe;

  try
    Result := nftxDesconhecido;
    try
      if ANFe.NotasFiscais.LoadFromFile(AArquivo) then
        Result := nftxNFe
//      else if FFrmNFSe.ACBrNFSeX1.NotasFiscais.LoadFromFile(AArquivo) then
//        Result := nftxNFSe
      else
      begin
        if ANFe.EventoNFe.LerXML(AArquivo) then
        begin
          if ANFe.EventoNFe.Evento[0].InfEvento.tpEvento = teCCe then
            Result := nftxCCe;
        end;
      end;
    except
      on E:Exception do
      begin
        if AMostrarErro then
          ShowMessage(E.message);
      end;
    end;
  finally
    ANFe.Free;
//    ANFSe.Free;
  end;
end;

class function TFrmNotaFiscal.GetTribNCM(AValorProduto: Double; ANCM, ATipoTabela: string; AImportacao: Boolean) : TTotTrib;
var
  QuerX : TIBQuery;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select N.* ' +
                      'from NF_NCM N ' +
                      'where (trim(N.CODIGO) = :Codigo) ' +
                      '      and (N.TIPO = :Tipo) ' +
                      '      and (N.EX_TIPI = 0)';
    QuerX.ParamByName('Codigo').AsString := Trim(ANCM);
    if ATipoTabela = 'SERVIÇO' then
      QuerX.ParamByName('Tipo').AsString := ATipoTabela
    else
      QuerX.ParamByName('Tipo').AsString := 'PRODUTO';
    QuerX.Open;

    Result.FederalNacional   := QuerX.FieldByName('ALIQ_NACIONAL').AsCurrency;
    Result.Municipal         := QuerX.FieldByName('ALIQ_MUNICIPAL').AsCurrency;
    Result.Estadual          := QuerX.FieldByName('ALIQ_ESTADUAL').AsCurrency;
    Result.FederalImportacao := QuerX.FieldByName('ALIQ_IMPORTACAO').AsCurrency;

    Result.FederalNacional   := RdT(AValorProduto * Perc(Result.FederalNacional), -2);
    Result.Municipal         := RdT(AValorProduto * Perc(Result.Municipal), -2);
    Result.Estadual          := RdT(AValorProduto * Perc(Result.Estadual), -2);
    Result.FederalImportacao := IfThen(AImportacao, RdT(AValorProduto * Perc(Result.FederalImportacao), -2), 0);

    Result.Total := Result.FederalNacional +
                    Result.FederalImportacao +
                    Result.Estadual +
                    Result.Municipal;
   { if AImportacao then
      Result := QuerX.FieldByName('ALIQ_IMPORTACAO').AsCurrency
    else
      Result := QuerX.FieldByName('ALIQ_NACIONAL').AsCurrency;
    Result := RdT(AValorProduto * Perc(Result), -2);  }
  finally
    QuerX.Free;
  end;
end;

procedure TFrmNotaFiscal.BtnContSalvarClick(Sender: TObject);
begin
  if not SaveZip.Execute then
    Exit;
  GerarZipNotas(SaveZip.FileName);
end;

procedure TFrmNotaFiscal.BtnContImprimirClick(Sender: TObject);
begin
//   if  CbAmbiente.ItemIndex > 0 then
//      ADMImpressao.Notas.SQL[7] := ' and (NF.NF_AMBIENTE = ' + CbAmbiente.ItemIndex.ToString + ')';
//    ADMImpressao.Notas.ParamByName('DTINI').AsDateTime := StartOfTheMonth(AData);
//    ADMImpressao.Notas.ParamByName('DTFIM').AsDateTime := EndOfTheMonth(AData);
//    ADMImpressao.Notas.ParamByName('CODEMPRESA').AsInteger  := Integer(CbEmpresaRelNF.GetObjetoSelecionado);
//    ADMImpressao.Notas.Open;
//    ADMImpressao.Notas.Filter := 'NF_SITUACAO = ''Autorizada''';
//    ADMImpressao.Notas.Filtered := True;

//  DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0013'));
  DMImpressao.ImprimirTag(Self, Tag_Report_Notas_Fiscais, cxGrid2DBTableView1);
end;

procedure TFrmNotaFiscal.btnConsultarNFSeClick(Sender: TObject);
var
  ADtInicial, ADtFinal: TDateTime;
  ACodVenda, ANumIniNFSe, ANumFinNFSe, ANumLote: String;
begin
  ACodVenda := NotaFiscalXML.FieldByName('CODVENDA').AsString;
  ADtInicial :=  edtDataInicial.EditValue;
  ADtFinal := edtDataFinal.EditValue;

  ANumIniNFSe :=  edtNumeroInicialNFSe.EditValue;
  ANumFinNFSe := edtNumeroFinalNFSe.EditValue;
  ANumLote := edtNumLoteNFSe.EditValue;

//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.SerieNFSe := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.CNPJInter := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.IMInter := '';

  FFrmNFSe.ConsultarNFSeManual(NotaFiscalXML,
                               ADtInicial,
                               ADtFinal,
                               ACodVenda,
                               ANumIniNFSe,
                               ANumFinNFSe,
                               ANumLote);
end;

procedure TFrmNotaFiscal.cxButton1Click(Sender: TObject);
begin
  edtDataInicial.EditValue := '';
  edtDataFinal.EditValue := '';
  edtNumeroInicialNFSe.EditValue := '';
  edtNumeroFinalNFSe.EditValue := '';
  edtNumLoteNFSe.EditValue := '';
  edtSerieNFSe.EditValue := '';
  edtCNPJPrestador.EditValue :=  '';
//  edtIMPrestador.EditValue :=
  edtCNPJTomador.EditValue := '';
  edtIMTomador.EditValue := '';
end;

procedure TFrmNotaFiscal.cxExibirEnviadaPropertiesChange(Sender: TObject);
begin
  btnPesquisarClick(nil);
end;

procedure TFrmNotaFiscal.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  //Não existe impressão de Evento para NFSe
  if NotaFiscalXML.FieldByName('TIPO').AsString <> 'NFSe' then
    AbrirEventoSelecionado([anVisualizar]);
//  VisualizarXML_Evento1Click(nil);
end;

procedure TFrmNotaFiscal.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  if not NotaFiscalXML_Inutilizacao.IsEmpty then
    AbrirInutilizacao(NotaFiscalXML_InutilizacaoCODIGO.AsInteger);
end;

procedure TFrmNotaFiscal.cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ATexto : string;
begin
  if AViewInfo.Item.Index = cxGridDBTableView2NF_SITUACAO.Index then
  begin
//    ACanvas.Font.Color := clWhite;
    ATexto := AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView2NF_SITUACAO.Index];
    if MatchStr(AnsiUpperCase(ATexto), ['CONFIRMADA', 'AUTORIZADA']) then
    begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color  := $FFFFFF;
    end
    else if ((ATexto) = 'Desconhecida') then
    begin
      ACanvas.Font.Color  := clBlack;
      ACanvas.Brush.Color := $0095FFFF;
    end
    else if ((ATexto) = 'Enviada') then
    begin
      ACanvas.Font.Color  := $701919;
      ACanvas.Brush.Color := clSkyBlue;
    end else
    begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color  := $B9DAFF;
    end;
  end;
end;

procedure TFrmNotaFiscal.cxGridDBTableView2DblClick(Sender: TObject);
begin
  Visualizar1Click(nil);
end;

procedure TFrmNotaFiscal.cxGridDBTableView2NF_MOTIVO_STATUSGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := VarToStrDef(ARecord.Values[cxGridDBTableView2NF_MOTIVO_STATUS.Index], '');
  AHintTextRect.Offset(0, 25);
end;

procedure TFrmNotaFiscal.cxGridDBTableView2NF_TIPOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: string);
begin
  if AText = '2' then
    AText := 'Entrada'
  else
    AText := 'Saída';
end;

procedure TFrmNotaFiscal.Deletar1Click(Sender: TObject);
var
  ASaveDialog: TSaveDialog;
  ACodVendaAnterior : String;
  ATemCodVendaAnterior : Boolean;
  AFrameVenda: TFrame_Venda_Mestre;
begin
  if ShowMessageWR('Atenção!' + sLineBreak + 'Você está prestes a EXCLUIR esta nota fiscal do sistema!' +
                   sLineBreak + 'Tem certeza que deseja continuar?', MB_ICONWARNING or MB_YESNO) = mrYes then
  begin
    if ShowMessageWR('Gostaria de fazer um BACKUP desta nota em um arquivo XML antes de excluir?', MB_ICONQUESTION) = mrYes then
    begin
      ASaveDialog := TSaveDialog.Create(Self);
      try
        ASaveDialog.Filter   := 'Arquivos XML|*.xml';
        ASaveDialog.FileName := NotaFiscalXML.FieldByName('TIPO').AsString + NotaFiscalXML.FieldByName('NF_CHAVE').AsString + '.xml';
        if ASaveDialog.Execute(Self.Handle) then
          TBlobField(NotaFiscalXML.FieldByName('ARQUIVO_XML')).SaveToFile(ASaveDialog.FileName)
        else
        begin
          ShowMessageWR('A Nota Fiscal NÃO foi excluída.');
          Exit;
        end;
      finally
        ASaveDialog.Free;
      end;
    end;
    ACodVendaAnterior := NotaFiscalXML.FieldByName('CODVENDA').AsString;
    ATemCodVendaAnterior := not MatchStr(ACodVendaAnterior,['', 'VINCULAR']);

    // Cria o histórico se houver venda anterior vinculada
    if Owner.Owner.ClassName = 'TFrmVenda' then
    begin
      with TFrame_Venda_Mestre(Owner.Owner) do
      begin
        if not (Cadastro.State = dsEdit) then
          Cadastro.Edit;
        UCHist_Cadastro.MensagemHistorico.Add('-> EXCLUÍDA a Nota Fiscal de n°' + ' ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString + ' com a situação "' + NotaFiscalXML.FieldByName('NF_SITUACAO').AsString + '".');
        UCHist_Cadastro.MensagemHistorico.Add('');
        btnConfirmar.Click;
      end;
    end
    else
    begin
      try
        AFrameVenda :=  TFrame_Venda_Mestre(CadastroTag_Frame(self, Tag_Venda));
        with AFrameVenda do
        begin
          if ATemCodVendaAnterior then
          begin
            CloseOpen_AbrirRegistro(ACodVendaAnterior);
            Cadastro.Edit;
            UCHist_Cadastro.MensagemHistorico.Add('-> EXCLUÍDA a Nota Fiscal de n°' + ' ' + NotaFiscalXML.FieldByName('NF_NUMERO').AsString + ' com a situação "' + NotaFiscalXML.FieldByName('NF_SITUACAO').AsString + '".');
            UCHist_Cadastro.MensagemHistorico.Add('');
            Cadastro.Post;
            TransaFD.Commit;
          end;
        end;
      finally
        AFrameVenda.Free;
      end;
    end;
    NotaFiscalXML.Delete;
    ComitaTransacaoNF;
  end;
end;

procedure TFrmNotaFiscal.DSDataChange(Sender: TObject; Field: TField);
begin
  if Field = nil then
    MemoResposta.Lines.Clear;
end;

procedure TFrmNotaFiscal.DSEventoDataChange(Sender: TObject; Field: TField);
var
  AMostrarEventos: Boolean;
begin
  if Field = nil then
  begin
    AMostrarEventos := not NotaFiscalXML_Evento.IsEmpty;
    if GrupoEventos.Visible <> AMostrarEventos then
    begin
      GrupoEventos.Visible                  := AMostrarEventos;
      dxLayoutControl1SplitterItem2.Visible := AMostrarEventos;
    end;
  end;
end;

procedure TFrmNotaFiscal.EdtCodVendaPropertiesChange(Sender: TObject);
begin
  FCodVenda := EdtCodVenda.Text;
end;

procedure TFrmNotaFiscal.EdtEmailDestinoPropertiesChange(Sender: TObject);
begin
  if Pos('|', EdtEmailDestino.Text) > 0 then
    EdtEmailDestino.Text := SplitString(EdtEmailDestino.Text, '|')[1].Trim;
end;

procedure TFrmNotaFiscal.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TFrmNotaFiscal.EndUpdate(AAtualizar: Boolean);
begin
  Dec(FUpdateCount);
  if FUpdateCount < 0 then
    FUpdateCount := 0;
  if AAtualizar and not IsUpdating then
    btnPesquisarClick(nil);
end;

function TFrmNotaFiscal.IsUpdating: Boolean;
begin
  Result := (FUpdateCount > 0);
end;

function NotaFiscalGetNomeArquivo(ANotaFiscal: TDataSet): string;
begin
  Result := ANotaFiscal.FieldByName('NF_CHAVE').AsString + ANotaFiscal.FieldByName('TIPO').AsString + '.xml';
end;

procedure NotaFiscalVisualizarXML(ANotaFiscal: TDataSet);
var
  ANome: string;
begin
  ANome := GetDirTemp + NotaFiscalGetNomeArquivo(ANotaFiscal);
  TBlobField(ANotaFiscal.FieldByName('ARQUIVO_XML')).SaveToFile(ANome);
  AbrirArquivo(ANome);
end;

procedure NotaFiscalEnviarEmail(AACBrNFe: TACBrNFe; AEnviarDireto: Boolean; const AEmailDestino, ACodVenda, APedidoCompra: string);
var
  AArquivo, AMensagem, AAssunto: string;
  AAnexos: TStringList;
  ANFe: TNFe;
begin
  Assert(AACBrNFe.NotasFiscais.Count > 0, 'Nenhuma nota para enviar por email');

  AAnexos := TStringList.Create;
  try
    ANFe := AACBrNFe.NotasFiscais[0].NFe;

    //Anexa o arquivo XML
    AArquivo := GetDirTemp + ANFe.infNFe.ID + '.xml';
    AACBrNFe.NotasFiscais.GravarXML(AArquivo);
    AAnexos.Add(AArquivo);

    //Gera e anexa o arquivo PDF
    TFrmNFe.ConfiguraDANFe(AACBrNFe);
    AACBrNFe.NotasFiscais.ImprimirPDF;
    AAnexos.Add(NotaFiscalGetNomePDF(AACBrNFe.NotasFiscais[0]));

    AMensagem := Empresa.FieldByName('NF_EMAIL_MENSAGEM').AsString;
    AAssunto := Empresa.FieldByName('NF_EMAIL_ASSUNTO').AsString;

    ReplaceTagsEmail(AMensagem, AAssunto, ACodVenda, IntToStr(ANFe.Ide.nNF), ANFe.Dest.xNome, ANFe.Emit.xNome, APedidoCompra);

    if AEnviarDireto then
      TFrmEmail.EnviarEmail3(AEmailDestino, '', AAssunto, AMensagem, AAnexos)
    else
      TFrmEmail.GerarEmail(FrmPrincipal, AEmailDestino, AAssunto, AMensagem, AAnexos);
  finally
    AAnexos.Free;
  end;
end;

procedure TFrmNotaFiscal.EnviarEmail4Click(Sender: TObject);
var
  AEnderecosEmail: TStringList;
  AEmail: string;
begin
  if NotaFiscalXML.IsEmpty then
  begin
    ShowMessageWR('Nenhuma nota selecionada para envio por email.', MB_ICONWARNING);
    Exit;
  end;

  AEnderecosEmail := TStringList.Create;
  try
    NotaFiscalSQLBuscaEmailDestinatario(NotaFiscalXML.FieldByName('NF_CNPJCPF_DESTINO').AsString, AEnderecosEmail);

    NotaFiscalConfiguraModeloDF(FFrmNFe.ACBrNFe1, NotaFiscalXML);
    FFrmNFe.ACBrNFe1.NotasFiscais.Clear;
    FFrmNFe.ACBrNFe1.NotasFiscais.LoadFromString(NotaFiscalXML.FieldByName('ARQUIVO_XML').AsString);

    NotaFiscalEnviarEmail(FFrmNFe.ACBrNFe1, False, AEnderecosEmail.Text, NotaFiscalXML.FieldByName('CODVENDA').AsString,
      Procura('PEDIDO_COMPRA', 'VENDA', NotaFiscalXML.FieldByName('CODVENDA').AsString));
  finally
    AEnderecosEmail.Free;
  end;
end;

procedure TFrmNotaFiscal.EnviarEmailXMLEvento(ACodigo: Integer; AEnviarDireto: Boolean);
var
  QuerX: TFDQuery;
  AAnexos: TStringList;
  AArquivo, AEmail, AAssunto: string;
begin
  QuerX := GeraFDQuery;
  AAnexos := TStringList.Create;
  try
    {O SQL a seguir busca o endereço de email do cliente com base no XML do EVENTO.
     O primeiro Left Join busca a nota relativa ao evento
     O segundo busca a venda vinculada a nota
     o terceiro busca o Email do cliente com base na Venda (Caso ela exista e esteja vinculada a nota)
     O quarto busca o Email do cliente com base no CNPJ de destino da nota, usado apenas caso o email anterior não seja encontrado}

    QuerX.SQL.Text := 'select first 1 iif(coalesce(P1.EMAIL_NFE, '''') <> '''', P1.EMAIL_NFE, P1.EMAIL) as EMAIL1, ' +
                      '               iif(coalesce(P2.EMAIL_NFE, '''') <> '''', P2.EMAIL_NFE, P2.EMAIL) as EMAIL2, ' +
                      '               EV.ARQUIVO_XML, EV.TIPO, NF.NF_NUMERO ' +
                      'from NOTA_FISCAL EV ' +
                      'left join NOTA_FISCAL NF on (NF.NF_CHAVE = EV.NF_CHAVE) and (NF.TIPO in (''NFe'', ''NFSe'')) ' +
                      'left join VENDA V on (NF.CODVENDA = V.CODIGO) ' +
                      'left join PESSOAS P1 on (V.PESSOA_RESPONSAVEL_CODIGO = P1.CODIGO) ' +
                      'left join PESSOAS P2 on (NF.NF_CNPJCPF_DESTINO = P2.CNPJCPF) ' +
                      'where (EV.CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.Open;
    if QuerX.IsEmpty then
      GeraExcecao('XML não encontrado para envio de email. Código ' + ACodigo.ToString);

    AArquivo := GetDirTemp + NotaFiscalXML.FieldByName('NF_CHAVE').AsString + '.xml';
    TBlobField(QuerX.FieldByName('ARQUIVO_XML')).SaveToFile(AArquivo);
    AAnexos.Add(AArquivo);

    AArquivo := AbrirEvento(ACodigo, [anSalvarPDF], False);
    if AArquivo <> '' then
      AAnexos.Add(AArquivo);

    if QuerX.FieldByName('EMAIL1').AsString <> '' then
      AEmail := QuerX.FieldByName('EMAIL1').AsString
    else
      AEmail := QuerX.FieldByName('EMAIL2').AsString;

    if AnsiSameText(QuerX.FieldByName('TIPO').AsString, 'CCE') then
      AAssunto := 'Carta de Correção'
    else if AnsiSameText(QuerX.FieldByName('TIPO').AsString, 'NFeCancel') then
      AAssunto := 'Cancelamento'
    else
      AAssunto := 'Documento Eletrônico';
    AAssunto := AAssunto + ' da nota ' + QuerX.FieldByName('NF_NUMERO').AsString;

    TFrmEmail.GerarEmail(Self, AEmail, AAssunto, '', AAnexos);
  finally
    AAnexos.Free;
    QuerX.Free;
  end;
end;

procedure TFrmNotaFiscal.EnviarporEmail1Click(Sender: TObject);
begin
  EnviarEmailXMLEvento(NotaFiscalXML_EventoCODIGO.AsInteger, False);
end;

procedure TFrmNotaFiscal.ExportarXML1Click(Sender: TObject);
begin
  if not NotaFiscalXML.IsEmpty then
  begin
    SaveXml.FileName := NotaFiscalXML.FieldByName('NF_CHAVE').AsString + '-' + AnsiLowerCase(NotaFiscalXML.FieldByName('TIPO').AsString) + '.xml';
    if SaveXml.Execute then
      TBlobField(NotaFiscalXML.FieldByName('ARQUIVO_XML')).SaveToFile(SaveXml.FileName);
  end;
end;

procedure TFrmNotaFiscal.ExportarXML_EventoClick(Sender: TObject);
begin
  if not NotaFiscalXML.IsEmpty then
  begin
    SaveXml.FileName := NotaFiscalXML_Evento.FieldByName('NF_CHAVE').AsString + '-' + AnsiLowerCase(NotaFiscalXML_Evento.FieldByName('TIPO').AsString) + '.xml';
    if SaveXml.Execute then
      TBlobField(NotaFiscalXML_Evento.FieldByName('ARQUIVO_XML')).SaveToFile(SaveXml.FileName);
  end;
end;

initialization
  RegisterClass(TFrmNotaFiscal);

end.

