//
{$I ACBr.inc}
unit NFe;

interface

uses
  IniFiles, ShellAPI, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, Buttons, ComCtrls, SHDocVw, UrlMon, ACBrNFe, pcnConversao, ACBrUtil,
  OleCtrls, IdComponent, IdTCPClient, IdHTTP, blcksock, Aguarde, Vcl.Menus,
  Data.DB, ACBrNFeDANFEFR, IdBaseComponent, IdTCPConnection, ACBrNFeDANFEFRDM, ACBrBase, ACBrDFe, Htmlview,
  ACBrNFeDANFeRLClass, Vcl.ImgList, ACBrDANFCeFortesFrA4, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxButtons, ACBrDFeSSL, Principal, UnitFuncoes,
  pcnConversaoNFe, ACBrConvenio115, TypInfo, IBX.IBDatabase, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, Vcl.Samples.Spin, ACBrNFeNotasFiscais, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, pcnEventoNFe, ACBrNfeWebServices, frxClass,
  ACBrDFeReport, ACBrDFeDANFeReport, pcnEnvEventoNFe, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxClasses, dxLayoutControl, cxLabel, dxCore, dxCoreClasses,
  dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxBarBuiltInMenu, dxSpreadSheet,
  pcnRetConsCad, uSCConsultaCNPJ, pcnRetDistDFeInt, uOpenFolderDialog, pcnAuxiliar, ACBrDANFCeFortesFr, wrConversao,
  Classes.WR, wrFuncoes, frxExportBaseDialog, frxExportPDF, ACBrNFeDANFEClass, ACBrCTe, ACBrCTeDACTeFR, ACBrCTeDACTeRL,
  pcteConversaoCTe, ACBrCTeDACTeRLClass, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmNFe = class(TForm)
    Panel1: TPanel;
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TBitBtn;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    btnInutilizar: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    btnConsultarRecibo: TButton;
    btnImportarXML: TButton;
    btnCancelarChave: TButton;
    Button1: TButton;
    Button2: TButton;
    btnFecharConfig: TBitBtn;
    MenuCCe: TPopupMenu;
    Emitir1: TMenuItem;
    Reimprimir1: TMenuItem;
    Button5: TButton;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
    frxPDFExport1: TfrxPDFExport;
    ACBrNFeDANFCEFR1: TACBrNFeDANFCEFR;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    Label25: TLabel;
    rgTipoAmb: TRadioGroup;
    Button3: TButton;
    lblCertNome: TcxLabel;
    lblCertValidade: TcxLabel;
    lblCertStatus: TcxLabel;
    lblCertNumeroSerie: TcxLabel;
    TabSheet1: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    cbUF: TComboBox;
    seTimeOut: TSpinEdit;
    gbxRetornoEnvio: TGroupBox;
    Label5: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    lSSLLib1: TLabel;
    cbSSLType: TComboBox;
    btnAvancado: TButton;
    Button6: TButton;
    btnProximoNumero: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancNFClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CbDANFEClick(Sender: TObject);
    procedure btnFecharConfigClick(Sender: TObject);
    procedure Emitir1Click(Sender: TObject);
    procedure Reimprimir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ACBrNFe1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure CbFusoEmissaoPropertiesChange(Sender: TObject);
    procedure CbFusoCancelamentoPropertiesChange(Sender: TObject);
    procedure CbFusoCCePropertiesChange(Sender: TObject);
    procedure CbFusoInutilizacaoPropertiesChange(Sender: TObject);
    procedure btnAvancadoClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure btnProximoNumeroClick(Sender: TObject);
  private
    { Private declarations }
    FMemoResposta : TMemo;
    FMemoWBResposta : TWebBrowser;
    FMemoHtmlResposta : THTMLViewer;
    FMemoLog : TMemo;
    FMemoNFe : TTreeView;
    FMemoRespComp : TMemo;
    FMemoDados : TMemo;
    FrmAguarde : TFrmAguarde;

    function VersaoDF_IntToStr(ACodigo : Integer) : string;
    function VersaoDF_IntToVersaoDF(ACodigo : Integer) : TpcnVersaoDF;

//    procedure AtualizaEditsFuso(AComboBox: TcxComboBox; AEdit: TcxTextEdit);
//    procedure ValidaEditsFuso;

    class function IsCStatDuplicidade(const ACStat: Integer): Boolean;
    class function IsCStatDenegada(const ACStat: Integer): Boolean;
    class procedure PreencheDadosNF(ADataSetNotaFiscal: TDataSet; AACBrNFe: TACBrNFe; const ACodVenda: string);
    class procedure GravaXMLNFeToStream(const AACBrNFe: TACBrNFe; const AStream: TStream);

    class function GetEmpresaNFe(const AACBrNFe: TACBrNFe): Integer;

    //== Métodos secundários de gravação de XML
    class function GravaRetornoEventoNoBanco(AEvento: TRetInfEvento; AMotivoCancelamento: string): Integer;
    //==
  public
    { Public declarations }
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    class procedure CarregaConfiguracoesIniNFe(AACBrNFe: TACBrNFe; AEmpresa:TDataSet; AACBrDANFeFR: TACBrNFeDANFeFR = nil;
      AACBrDANFeRL: TACBrNFeDANFeRL = nil);
    class procedure CarregaConfiguracoesIniCTe(AACBrCTe: TACBrCTe; AEmpresa: TDataSet; AACBrDACTeFR: TACBrCTeDACTEFR = nil;
      AACBrCTeDACTeRL: TACBrCTeDACTeRL = nil);
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    procedure PreencheComponenteImpressaoDANFE;
    property MemoRespostaNF : TMemo read FMemoResposta write FMemoResposta;
    property MemoWBRespostaNF : TWebBrowser read FMemoWBResposta write FMemoWBResposta;
    property MemoLogNF : TMemo read FMemoLog write FMemoLog;
    property MemoNFe : TTreeView read FMemoNFe write FMemoNFe;
    property MemoRespCompWS : TMemo read FMemoRespComp write FMemoRespComp;
    property MemoDadosNF : TMemo read FMemoDados write FMemoDados;
    property MemoHtmlResposta : THTMLViewer read FMemoHtmlResposta write FMemoHtmlResposta;

    class procedure Abrir;
    class function BaixarXMLdaNFe(ANFChave: string; AGravarEmDisco: Boolean; AEmSilencio: Boolean; out ACaminho: string): string;
    class procedure AtualizarSchemasEInis;

    //Métodos da Tela de consulta de Notas
    class procedure VisualizarNotaEntrada(ACodigo: String);
    class function ManifestoDoDestinatario(ANFChave: string; ATipoManifesto: TpcnTpEvento; var ACStat: integer): boolean;

    //Métodos estáticos
    class function CriaComponenteACBrNFe: TACBrNFe;
    class procedure ConfiguraDANFe(const AACBrNFe: TACBrNFe);
    class procedure ConfiguraDANFeEvento(const AACBrNFe: TACBrNFe);
    class procedure CarregaNota(ADataSetNotaFiscal: TDataSet; const AACBrNFe: TACBrNFe);
    class procedure ImprimirNota(AACBrNFe: TACBrNFe; ATipoAbertura: TNotaFiscalTipoAbertura = anVisualizar);
    class function TrataChaveNF(const AChaveNF: string): string;
    class function GetCStatDescricao(ACStat: Integer): string;
    class function GetModeloDescricao(AModelo: Integer): string;
    class function GetCNPJEmitente(const ANFe: ACBrNFeNotasFiscais.NotaFiscal): string;
    class function ConsultaCadastro(cUF : string; nDocumento: string; nIE : string): TFSCConsultaCNPJResposta;
    class function ConsultaNotaSEFAZ(ADataSetNotaFiscal: TDataSet; const AACBrNFe: TACBrNFe): Boolean;
    class function BuscaNotaDuplicada(const AACBrNFe, ANotaEncontrada: TACBrNFe; const AChave: string): Boolean;
    class function ComparaNotasFiscais(const ANotaOriginal, ANotaTestada: TACBrNFe): Boolean;

    //Configuração do Fuso Horário
    class procedure ConfiguraFuso(AACBrNFe: TACBrNFe; const AFuso: string);
    class procedure ConfiguraFusoCTe(AACBrCTe: TACBrCTe; const AFuso: string);

    //== Gravação de XMLs no Banco ==
    class function GravaNFeNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
    class function InsereNovaNFeNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
    class function GravaRetornoConsultaNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
    class function GravaRetornoCancelamentoNoBanco(AACBrNFe: TACBrNFe; AMotivo: string): Integer;
    class function GravaRetornoCartaCorrecaoNoBanco(AACBrNFe: TACBrNFe): Integer;
    class function GravaInutilizacaoNoBanco(AACBrNFe: TACBrNFe): Integer;
    class function GravaEventoNoBanco(AProtocolo, AChaveNF, ACnpjDest, ACodVenda, AXML, AMotivoStatus,
      AMotivoCancelamento: string; AAmbiente: TpcnTipoAmbiente; ATipoEvento: TpcnTpEvento; ASequencia, ACStat: Integer;
      ADataEvento: TDateTime): Integer;
      class procedure GravarXMLNotaEntradaNoBanco(ACodEmpresa: Integer; ADocZip: TdocZipCollectionItem);
      class procedure GravarXMLCTeNoBanco(ACodigo: Integer; ACodEmpresa: Integer; AACBrCTe: TACBrCTe; ADocZip: TdocZipCollectionItem);
    class function ImportarXML(AArquivoXML, ACodVendaVincular: string; var ACodigo: Integer): Boolean; overload;
    class function ImportarEventoXML(AArquivoXML: string): Boolean;
    //===============================

    //Tratamento de Erros
    class function TrataTimeOut(const AACBrNFe: TACBrNFe; const ACodVenda: string): Boolean;
    class function BuscaChaveDuplicadaEmissao(AACBrNFe: TACBrNFe):String;
    class function BuscaChaveDuplicadaConsulta(AACBrNFe: TACBrNFe):String;
    class procedure BaixarTabelaErrosNF;
  end;

  function TipoNFeToDescricao(ATipoNFe: TpcnTipoNFe): string;
  function TimeZoneModoDeteccaoToCodigo(AModo: TTimeZoneModoDeteccao): Integer;
  function TimeZoneModoDeteccaoToDescricao(AModo: TTimeZoneModoDeteccao): string;
  function TimeZoneModoDeteccaoCodigoToEnum(ACodigo: Integer): TTimeZoneModoDeteccao;
  function TimeZoneModoDescricaoToEnum(ADescricao: String): TTimeZoneModoDeteccao;
  function TimeZoneModoDeteccaoComboToEnum(AComboBox: TcxComboBox): TTimeZoneModoDeteccao;
  procedure PreencheComboBoxTimeZoneModoDeteccao(AComboBox: TcxComboBoxProperties);
  function LerCertificado(pCaminho: string): AnsiString;

type
  TEventTransmitError = class
    class procedure TransmitErrorTempoExecucao(const HttpError, InternalError: Integer;
        const URL, DadosEnviados, SoapAction: string; var Retentar, Tratado: Boolean);
  end;


var
  FrmNFe: TFrmNFe;
  FrmNFeMsgExceptionEmail: string;

implementation

uses
  FileCtrl, pcnNFe, NFe_Status, DateUtils, Email, Registry, Math, StrUtils, IBX.IBQuery, uXmlToHtml, uEmail, Types, Zip,
  XMLDoc, IBX.IBStoredProc, DataModuleImpressao, Rotinas, uWeb, IOUtils, Generics.Collections, wrConstantes,
  PerguntaEstado, pcnRetEnvEventoNFe, CadVendaFrameNotaFiscal, synautil,
  synacode, CadEmpresa, wrForms, ProximoNumero;

{$R *.dfm}

function LerCertificado(pCaminho: string): AnsiString;
var
  vFile: TFileStream;
begin
  vFile := TFileStream.Create(pCaminho, fmOpenRead);
  try
    Result := EncodeBase64(ReadStrFromStream(vFile, vFile.Size));
  finally
    vFile.Free;
  end;
{
//ACBrNFe.Configuracoes.Certificados.DadosPFX := DecodeBase64(FDados_PFX);
//ACBrNFe.Configuracoes.Certificados.NumeroSerie := FSerie;
//ACBrNFe.Configuracoes.Certificados.Senha := FSenha;

Configurações para certificado A1 com OpenSSL:

ACBrNFe.Configuracoes.Geral.SSLLib := libOpenSSL;
ACBrNFe.Configuracoes.Geral.SSLCryptLib := cryOpenSSL;
ACBrNFe.Configuracoes.Geral.SSLHttpLib := httpOpenSSL;
ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;

Para certificado A1 e A3 com WinCrypt (Instalar todas as atualizações de segurança do Windows):

ACBrNFe.Configuracoes.Geral.SSLLib := libWinCrypt;
ACBrNFe.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
ACBrNFe.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
vACBrNFe.Configuracoes.WebServices.SSLType := LT_TLSv1_2; }
end;

function TipoNFeToDescricao(ATipoNFe: TpcnTipoNFe): string;
begin
  case ATipoNFe of
    tnEntrada: Result := 'Entrada';
      tnSaida: Result := 'Saída';
  end;
end;

function TimeZoneModoDeteccaoToCodigo(AModo: TTimeZoneModoDeteccao): Integer;
begin
  case AModo of
    tzSistema: Result := 0;
    tzPCN:     Result := 1;
    tzManual:  Result := 2;
  end;
end;

function TimeZoneModoDeteccaoToDescricao(AModo: TTimeZoneModoDeteccao): string;
begin
  case AModo of
    tzSistema: Result := 'Sistema';
    tzPCN:     Result := 'PCN';
    tzManual:  Result := 'Manual';
  end;
end;

function TimeZoneModoDeteccaoCodigoToEnum(ACodigo: Integer): TTimeZoneModoDeteccao;
begin
  for Result := Low(TTimeZoneModoDeteccao) to High(TTimeZoneModoDeteccao) do
  begin
    if TimeZoneModoDeteccaoToCodigo(Result) = ACodigo then
      Exit;
  end;
  Result := tzSistema;
end;

function TimeZoneModoDescricaoToEnum(ADescricao: String): TTimeZoneModoDeteccao;
begin
  for Result := Low(TTimeZoneModoDeteccao) to High(TTimeZoneModoDeteccao) do
  begin
    if TimeZoneModoDeteccaoToDescricao(Result) = ADescricao then
      Exit;
  end;
  Result := tzSistema;
end;

function TimeZoneModoDeteccaoComboToEnum(AComboBox: TcxComboBox): TTimeZoneModoDeteccao;
begin
  Result := TTimeZoneModoDeteccao(ComboBoxGetObjetoSelecionado(AComboBox));
end;

procedure PreencheComboBoxTimeZoneModoDeteccao(AComboBox: TcxComboBoxProperties);
var
  AEnum: TTimeZoneModoDeteccao;
begin
  AComboBox.BeginUpdate;
  try
    AComboBox.Items.Clear;
    for AEnum := Low(TTimeZoneModoDeteccao) to High(TTimeZoneModoDeteccao) do
      AComboBox.Items.AddObject(TimeZoneModoDeteccaoToDescricao(AEnum), TObject(AEnum));
//    AComboBox.ItemIndex := 0;
  finally
    AComboBox.EndUpdate(True);
  end;
end;

function TFrmNFe.VersaoDF_IntToStr(ACodigo: Integer): string;
begin
  case ACodigo of
    0 : Result := '2.00';
    1 : Result := '3.00';
    2 : Result := '3.10';
    3 : Result := '4.00';
  end;
end;

function TFrmNFe.VersaoDF_IntToVersaoDF(ACodigo: Integer): TpcnVersaoDF;
begin
  case ACodigo of
    0 : Result := pcnConversaoNFe.ve200;
    1 : Result := pcnConversaoNFe.ve300;
    2 : Result := pcnConversaoNFe.ve310;
    3 : Result := pcnConversaoNFe.ve400;
  end;
end;

class procedure TFrmNFe.Abrir;
var
  AFrm: TFrmNFe;
begin
  AFrm := TFrmNFe.Create(nil);
  try
    AFrm.ShowModal;
  finally
    AFrm.Free;
  end;
end;

class function TFrmNFe.IsCStatDenegada(const ACStat: Integer): Boolean;
begin
  {205: NF-e está denegada na base de dados da SEFAZ [nRec:999999999999999]
   233: Rejeição: IE do destinatário não cadastrada
   234: Rejeição: IE do destinatário não vinculada ao CNPJ
   301: Uso Denegado: Irregularidade fiscal do emitente
   302: Rejeição: Irregularidade fiscal do destinatário
   303: Uso Denegado: Destinatário não habilitado a operar na UF}
  case ACstat of
    110, 205, 233, 234, 301, 302, 303: Result := True;
  else
    Result := False;
  end;
end;

class function TFrmNFe.IsCStatDuplicidade(const ACStat: Integer): Boolean;
begin
   {
  204 Duplicidade de NF-e [nRec:999999999999999]
  561 Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e
  562 Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e [chNFe:99999999999999999999999999999999999999999999]
  613 Rejeição: Chave de Acesso difere da existente em BD
  635 Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento

  Aqui consideramos alguns cStats a mais como duplicidade pois sempre ocorrem quando há uma falha de duplicidade no sistema}

  Result := MatchInt(ACStat, [204, 561, 562, 613, 635]);
end;

class procedure TEventTransmitError.TransmitErrorTempoExecucao(const HttpError,
  InternalError: Integer; const URL, DadosEnviados, SoapAction: string;
  var Retentar, Tratado: Boolean);
begin
  // Aqui deve consultar, Para Saber Se Tem agum erro cadastrado, e ver o Campo
  // Retentar
  // Tratado
  WRLog(sLineBreak + sLineBreak +
        'Erro ACBrNFe: '  + sLineBreak +
        'HttpError: '     + VarToStr(HttpError) + sLineBreak +
        'InternalError: ' + VarToStr(InternalError) + sLineBreak +
        'URL: '           + URL + sLineBreak +
        'DadosEnviados: ' + DadosEnviados + sLineBreak +
        'SoapAction: '    + SoapAction + sLineBreak + sLineBreak);

  if InternalError = 12002 then
  begin
    Retentar:=True;
    Tratado :=True;
  end;
end;

class function TFrmNFe.TrataChaveNF(const AChaveNF: string): string;
begin
  Result := StringReplace(AChaveNF, 'NFe',  '', [rfIgnoreCase]);
  Result := StringReplace(Result,   'NFSe', '', [rfIgnoreCase]);
  Result := StringReplace(Result,   'NFCe', '', [rfIgnoreCase]);
  Result := StringReplace(Result,   'CFeSAT', '', [rfIgnoreCase]);
end;

class function TFrmNFe.GetModeloDescricao(AModelo: Integer): string;
begin
  case AModelo of
    55: Result := NotaFiscalTipoRegistroToStr(nftrNFe);
    65: Result := NotaFiscalTipoRegistroToStr(nftrNFCe);
  else
    Result := NotaFiscalTipoRegistroToStr(nftrOutro);
  end;
end;

class function TFrmNFe.GetCNPJEmitente(const ANFe: ACBrNFeNotasFiscais.NotaFiscal): string;
begin
  if ANFe.NFe.infNFe.ID <> '' then
    Result := Copy(TrataChaveNF(ANFe.NFe.infNFe.ID), 7, 14)
  else
    Result := OnlyNumberWR(ANFe.NFe.Emit.CNPJCPF);
end;

class function TFrmNFe.GetCStatDescricao(ACStat: Integer): string;
begin
  {Os cStats 561 e 562 indicam uma falha na chave, geralmente acontece por erro de duplicidade, então retorna como
   Duplicada para que o usuário tenha ciência da invalidade da nota e tenha que emitir outra

   100: Autorizado o uso da NF-e
   101: Cancelamento de NF-e homologado
   105: Lote em processamento
   150: Autorizado o uso da NF-e, autorização fora de prazo
   151: Cancelamento de NF-e homologado fora de prazo
   204: Duplicidade de NF-e [nRec:999999999999999]
   561: Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e
   562: Rejeição: Código Numérico informado na Chave de Acesso difere do
   613: Rejeição: Chave de Acesso difere da existente em BD
   635: Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento
   }
  case ACStat of
    100: Result := 'Autorizada';
    105: Result := 'Pendente';
    150: Result := 'Confirmada fora do prazo';
    101, 151, 155: Result := 'Cancelada';
  else
    if IsCStatDuplicidade(ACStat) then
      Result := 'Duplicada'
    else if IsCStatDenegada(ACStat) then
      Result := 'Denegada'
    else if ACStat > 200 then
      Result := 'Não Autorizada'
    else
      Result := 'Desconhecida';
  end;
end;

class procedure TFrmNFe.AtualizarSchemasEInis;
var
  ATempFile, ACaminho, AUrlRaiz: string;
  I: Integer;
  AFrmAguarde: TFrmAguarde;
  AIni: TIniFile;

  procedure BaixarArquivo(const AUrl: string);
  var
    AStream: TFileStream;
  begin
    AStream := TFileStream.Create(ATempFile, fmCreate);
    try
      HttpToStream(AUrl, AStream, AFrmAguarde);
    finally
      AStream.Free;
    end;
  end;

  procedure DescompactarSchemas(const AArquivoCompactado, ACaminhoDestino: string);
  var
    AZipFile: TZipFile;
  begin
    AZipFile := TZipFile.Create;
    try
      try
        AZipFile.ExtractZipFile(AArquivoCompactado, IncludeTrailingPathDelimiter(ACaminhoDestino));
      except
        on E:Exception do
        begin
          if E is EFOpenError then
            raise EWRException.Create('Arquivo não encontrado!')
          else
            raise;
        end;
      end;
    finally
      AZipFile.Free;
    end;
  end;

begin
  ACaminho := Empresa.FieldByName('NFE_PATH').AsString;
  if ACaminho = '' then
  begin
    ACaminho := GetDirSistema + 'NFe';
//      Aqui deveria colocar isso que esta embaixo, mais editar a empresa aqui não acho legal
//      AIni.WriteString(Empresa.FieldByName('CNPJCPF').AsString + 'Geral', 'PathSalvar', ACaminho);
  end;
  AUrlRaiz := 'http://microgrupo.com.br/wratualizacao/';
  try
    AFrmAguarde := TFrmAguarde.Create(nil);
    try
      AFrmAguarde.Show;
      {$REGION 'Atualiza Schemas'}
      AFrmAguarde.Mensagem := 'Aguarde, baixando Schemas...';
      if Trim(ACaminho) = '' then
        ACaminho := GetDirSistema + 'NFe\'
      else
        ACaminho := IncludeTrailingPathDelimiter(ACaminho);
      AtempFile := ACaminho + 'Schemas\Schemas2022.zip';

      if not DirectoryExists(ACaminho + 'Schemas\') then
        CreateDir(ACaminho + 'Schemas\');
      if FileExists(AtempFile) then
        DeleteFile(AtempFile);

      BaixarArquivo(AUrlRaiz + 'Schemas/Schemas2022.zip');

      AFrmAguarde.Mensagem := 'Descompactando Schemas...';

      DescompactarSchemas(AtempFile, ACaminho + 'Schemas\');
      DeleteFile(AtempFile);
      AFrmAguarde.Mensagem := 'Schemas Atualizados!';
      Sleep(1000);
      {$ENDREGION}

//      {$REGION 'Atualiza INI'}       // Ja faz tudo na rotina decima
//      AFrmAguarde.Mensagem := 'Aguarde, baixando INI...';
//      AtempFile := ACaminho + '\Schemas\NFSe\ArqINI.zip';
//      BaixarArquivo(AUrlRaiz + 'ArqINI/ArqINI.zip');
//      AFrmAguarde.Mensagem := 'Descompactando INI...';
//      DescompactarSchemas(AtempFile, ACaminho + '\Schemas\NFSe\');
//      DeleteFile(AtempFile);
//      AFrmAguarde.Mensagem := 'INI Atualizados!';
//      Sleep(1000);
      AFrmAguarde.Close;
//      {$ENDREGION}
    finally
      AFrmAguarde.Free;
    end;
  except
    on E:Exception do
    begin
      WRLog('Atualização de Schemas: ' + E.Message);
      ShowMessageWR('Houve um problema ao atualização: ' + E.Message);
    end;
  end;
end;

class function TFrmNFe.ManifestoDoDestinatario(ANFChave: string; ATipoManifesto: TpcnTpEvento; var ACStat: integer) :Boolean;
var
  AACBrNFe: TACBrNFe;
  AFrmAguarde: TFrmAguarde;
  AMsg: string;
begin
  if not (ATipoManifesto in [teManifDestConfirmacao, teManifDestCiencia, teManifDestDesconhecimento,
                           teManifDestOperNaoRealizada]) then
  begin
    ShowMessageWR('Tipo de Manifesto inválido');
    Exit;
  end;
  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Enviando Manifesto...';
    AACBrNFe.EventoNFe.Evento.Clear;
    with AACBrNFe.EventoNFe.Evento.Add do
    begin
      InfEvento.cOrgao   := 91;
      InfEvento.chNFe    := ANFChave;
      InfEvento.CNPJ     := Empresa.FieldByName('CNPJCPF').AsString;
      InfEvento.dhEvento := DataHoraSys;
      InfEvento.tpEvento := ATipoManifesto;
      if ATipoManifesto = teManifDestOperNaoRealizada then
      begin
        infEvento.detEvento.xJust := InputBox('Informe a Justificativa','Descricção com mínimo de 15 Letras','Operação não realizada' );
      end;
    end;
    Result := AACBrNFe.EnviarEvento(1);

    if (AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Count = 0) or
       (AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat >= 200) then
    begin
      AFrmAguarde.Close;
      AMsg := 'Não foi possível enviar o evento de ' + ManifestoDFeToDescricao(ATipoManifesto) + '.';
      if AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Count > 0 then
        AMsg := AMsg + sLineBreak + AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo
      else
        AMsg := AMsg + ' Nenhum retorno foi obtido do servidor da SEFAZ';
      ShowMessageWR(AMsg, MB_ICONWARNING);

      // Cospe o CStat pra fora. Se for 596, clica no ConNotaFiscalEntrada para consultar na Sefaz.
      ACStat := AACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat;

      if ACStat = 596 then
        Result := False;

    end
    else
    begin
      AFrmAguarde.Close;
      ShowMessageWR('Manifesto Enviado, Após a manifestação demora de 5 à 10 minutos para ter o retorno da SEFAZ, podendo demorar até 1 dia.');
    end;

  finally
    AACBrNFe.Free;
    AFrmAguarde.Free;
  end;
end;

class function TFrmNFe.GetEmpresaNFe(const AACBrNFe: TACBrNFe): Integer;
var
  QuerX: TFDQuery;
  ACNPJ: string;
begin
  if AACBrNFe.NotasFiscais.Count = 0 then
    Exit(0);

  ACNPJ := GetCNPJEmitente(AACBrNFe.NotasFiscais[0]);
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select first 1 CODIGO ' +
                      'from EMPRESA ' +
                      'where (CNPJCPF = :Cnpj1) ' +
                      '      or (CNPJCPF = :Cnpj2)';
    QuerX.ParamByName('Cnpj1').AsString := GetCnpjCpf(ACNPJ);
    QuerX.ParamByName('Cnpj2').AsString := OnlyNumberWR(ACNPJ);
    QuerX.Open;
    Result := QuerX.Fields[0].AsInteger;
  finally
    QuerX.Free;
  end;
end;

class procedure TFrmNFe.CarregaNota(ADataSetNotaFiscal: TDataSet; const AACBrNFe: TACBrNFe);
begin
  AACBrNFe.NotasFiscais.Clear;
  AACBrNFe.NotasFiscais.LoadFromString(ADataSetNotaFiscal.FieldByName('ARQUIVO_XML').AsString);
end;


{$REGION 'IMPORTANTE - Funções a Verificar'}

class procedure TFrmNFe.ConfiguraFuso(AACBrNFe: TACBrNFe; const AFuso: string);    // Errado Tem que vir do Banco, Empresa
var
  ACNPJCPF, AFusoSTR: string;

//  AIni: TIniFile;
begin
  ACNPJCPF := Empresa.FieldByName('CNPJCPF').AsString;
  if AFuso = 'Cancelamento' then
  begin
    AACBrNFe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_CANCELAMENTO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_CANCELAMENTO_STR').AsString;
  end;
  if AFuso = 'Emissao' then
  begin
    AACBrNFe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_EMISSAO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_EMISSAO_STR').AsString;
  end;
  if AFuso = 'CCe' then
  begin
    AACBrNFe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_CCE').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_CCE_STR').AsString;
  end;
  if AFuso = 'Inutilizacao' then
  begin
    AACBrNFe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_INUTILIZACAO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_INUTILIZACAO_STR').AsString;
  end;


//  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
//    if AIni.ReadString(ACNPJCPF + 'WebService', 'UF', '') = '' then
//      ACNPJCPF := '';

//     := TimeZoneModoDeteccaoCodigoToEnum(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Fuso' + AFuso, 0));
    try
//      AACBrNFe.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := AIni.ReadString(ACNPJCPF + 'WebService', 'Fuso' + AFuso + 'Str', '');
      AACBrNFe.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := AFusoSTR;
    except
      on E:Exception do
      begin
        ShowMessageWR('O formato do Fuso Horário está inválido: ' + E.Message);
      end;
    end;
  finally
//    AIni.Free;
  end;
end;

class procedure TFrmNFe.ConfiguraFusoCTe(AACBrCTe: TACBrCTe; const AFuso: string);    // Errado Tem que vir do Banco, Empresa
var
  ACNPJCPF, AFusoSTR: string;

//  AIni: TIniFile;
begin
  ACNPJCPF := Empresa.FieldByName('CNPJCPF').AsString;
  if AFuso = 'Cancelamento' then
  begin
    AACBrCTe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_CANCELAMENTO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_CANCELAMENTO_STR').AsString;
  end;
  if AFuso = 'Emissao' then
  begin
    AACBrCTe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_EMISSAO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_EMISSAO_STR').AsString;
  end;
  if AFuso = 'CCe' then
  begin
    AACBrCTe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_CCE').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_CCE_STR').AsString;
  end;
  if AFuso = 'Inutilizacao' then
  begin
    AACBrCTe.Configuracoes.WebServices.TimeZoneConf.ModoDeteccao:= TimeZoneModoDescricaoToEnum( Empresa.FieldByName('FUSO_INUTILIZACAO').AsString);
    AFusoSTR:=Empresa.FieldByName('FUSO_INUTILIZACAO_STR').AsString;
  end;


//  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
//    if AIni.ReadString(ACNPJCPF + 'WebService', 'UF', '') = '' then
//      ACNPJCPF := '';

//     := TimeZoneModoDeteccaoCodigoToEnum(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Fuso' + AFuso, 0));
    try
//      AACBrCTe.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := AIni.ReadString(ACNPJCPF + 'WebService', 'Fuso' + AFuso + 'Str', '');
      AACBrCTe.Configuracoes.WebServices.TimeZoneConf.TimeZoneStr := AFusoSTR;
    except
      on E:Exception do
      begin
        ShowMessageWR('O formato do Fuso Horário está inválido: ' + E.Message);
      end;
    end;
  finally
//    AIni.Free;
  end;
end;

class procedure TFrmNFe.CarregaConfiguracoesIniNFe(AACBrNFe: TACBrNFe; AEmpresa: TDataSet; AACBrDANFeFR: TACBrNFeDANFeFR = nil;
  AACBrDANFeRL: TACBrNFeDANFeRL = nil);
var
  APathSalvar, ACNPJCPF: string;
  AIni: TIniFile;
  AOk: Boolean;
begin
  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
    ACNPJCPF:=AEmpresa.FieldByName('CNPJCPF').AsString;
    if AIni.ReadString(AEmpresa.FieldByName('CNPJCPF').AsString + 'WebService', 'UF', '') = '' then
      ACNPJCPF := '';

    //Geral
    if AEmpresa.FieldByName('Tem_Certificado').AsString = 'S' then     // Aqui seria interessante ter os dados antes
    begin
      AACBrNFe.Configuracoes.Certificados.NumeroSerie:='';
      AACBrNFe.Configuracoes.Certificados.DadosPFX := DecodeBase64(AEmpresa.FieldByName('Certificado').AsString);
      AACBrNFe.Configuracoes.Certificados.Senha    := AEmpresa.FieldByName('Certificado_Senha').AsString;
    end else
    begin
      AACBrNFe.Configuracoes.Certificados.DadosPFX := '';
      AACBrNFe.Configuracoes.Certificados.Senha    := '';
      AACBrNFe.Configuracoes.Certificados.NumeroSerie := AEmpresa.FieldByName('NFe_NumSerie').AsString; //AIni.ReadString(ACNPJCPF + 'Certificado', 'NumSerie', '');
    end;

    AACBrNFe.Configuracoes.Geral.SSLLib        := libWinCrypt;
    AACBrNFe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
    AACBrNFe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
    AACBrNFe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
    AACBrNFe.Configuracoes.Geral.FormaEmissao  := StrToTpEmis(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'Geral', 'FormaEmissao', 0) + 1));

    AACBrNFe.Configuracoes.Geral.Salvar        := True; //Controla se vai salvar os arquivos de envio e retorno.
    AACBrNFe.Configuracoes.Geral.FormatoAlerta := '%TAGNIVEL%§%ID%§%TAG%§%DESCRICAO%§%MSG%';
    AACBrNFe.Configuracoes.Geral.VersaoDF      := TpcnVersaoDF.ve400;
    AACBrNFe.Configuracoes.Geral.VersaoQRCode  := veqr200;

    //WebServices
    AACBrNFe.Configuracoes.WebServices.Salvar              := True;
    AACBrNFe.Configuracoes.WebServices.Ambiente            := StrToTpAmb(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Ambiente', 0) + 1));
    AACBrNFe.Configuracoes.WebServices.ProxyHost           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Host', '');
    AACBrNFe.Configuracoes.WebServices.ProxyPort           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Porta', '');
    AACBrNFe.Configuracoes.WebServices.ProxyUser           := AIni.ReadString(ACNPJCPF + 'Proxy', 'User', '');
    AACBrNFe.Configuracoes.WebServices.ProxyPass           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Pass', '');
    AACBrNFe.Configuracoes.WebServices.Visualizar          := False;
    AACBrNFe.Configuracoes.WebServices.QuebradeLinha       := '|';
    AACBrNFe.Configuracoes.WebServices.SSLType             := TSSLType(AIni.ReadInteger('Certificado', 'SSLType', Integer(LT_all)));
    AACBrNFe.Configuracoes.WebServices.TimeOut             := AIni.ReadInteger(ACNPJCPF + 'WebService', 'TimeOut' , 5000);
    AACBrNFe.Configuracoes.WebServices.Tentativas          := AIni.ReadInteger(ACNPJCPF + 'WebService', 'Tentativas', 5);
    AACBrNFe.Configuracoes.WebServices.IntervaloTentativas := AIni.ReadInteger(ACNPJCPF + 'WebService', 'Intervalo', 0);
    AACBrNFe.Configuracoes.WebServices.AguardarConsultaRet := IfThen(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0) < 1000,
                                                                     AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0) * 1000,
                                                                     AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0));

    if AIni.ReadString(ACNPJCPF + 'WebService', 'UF', '') = '' then
      AACBrNFe.Configuracoes.WebServices.UF := Empresa.FieldByName('UF').AsString
    else
      AACBrNFe.Configuracoes.WebServices.UF := AIni.ReadString(ACNPJCPF + 'WebService', 'UF', 'AC');


    if AACBrNFe.Configuracoes.WebServices.Ambiente = taProducao then
    begin
      AACBrNFe.Configuracoes.Geral.IdCSC         := AEmpresa.FieldByName('NFCE_PRODUCAO_ID').AsString;//AIni.ReadString('Geral', 'IdToken', '');
      AACBrNFe.Configuracoes.Geral.CSC           := AEmpresa.FieldByName('NFCE_PRODUCAO_CSC').AsString;//AIni.ReadString('Geral', 'Token', '');
    end else
    begin
      AACBrNFe.Configuracoes.Geral.IdCSC         := AEmpresa.FieldByName('NFCE_HOMOLOGACAO_ID').AsString;//AIni.ReadString('Geral', 'IdToken', '');
      AACBrNFe.Configuracoes.Geral.CSC           := AEmpresa.FieldByName('NFCE_HOMOLOGACAO_CSC').AsString;//AIni.ReadString('Geral', 'Token', '');
    end;

    TFrmNFe.ConfiguraFuso(AACBrNFe, 'Emissao');
    //Arquivos
//    APathSalvar := IncludeTrailingPathDelimiter(AIni.ReadString(ACNPJCPF + 'Geral', 'PathSalvar', GetDirSistema + 'NFe'));
    if  AEmpresa.FieldByName('NFE_PATH').AsString = '' then
      APathSalvar :=  GetDirSistema + 'NFe'
    else
      APathSalvar :=  AEmpresa.FieldByName('NFE_PATH').AsString;
    APathSalvar:=IncludeTrailingPathDelimiter(APathSalvar);
    AACBrNFe.Configuracoes.Arquivos.Salvar         := AACBrNFe.Configuracoes.WebServices.Ambiente = taProducao;  //Controla se vai salvar os arquivos de fiscais.
    AACBrNFe.Configuracoes.Arquivos.SalvarEvento   := True; //Controla se vai salvar os arquivos de fiscais.
    AACBrNFe.Configuracoes.Arquivos.SepararPorCNPJ := False;
    AACBrNFe.Configuracoes.Arquivos.SepararPorMes  := True;
    AACBrNFe.Configuracoes.Arquivos.NormatizarMunicipios       := True;
    AACBrNFe.Configuracoes.Arquivos.SalvarApenasNFeProcessadas := True;
    AACBrNFe.Configuracoes.Arquivos.PathNFe        := APathSalvar + OnlyNumber(ACNPJCPF) + '\'; //O edtLogPath depende da estrutura deste caminho. Se alterar, verificar o edtLogPath
    AACBrNFe.Configuracoes.Arquivos.PathInu        := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'Inutilizadas\';
    AACBrNFe.Configuracoes.Arquivos.PathSalvar     := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'XML\';
    AACBrNFe.Configuracoes.Arquivos.PathEvento     := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'EVENTOS\';
    AACBrNFe.Configuracoes.Arquivos.PathSchemas    := GetDirSistema + 'NFe\Schemas\';
    AACBrNFe.Configuracoes.Arquivos.DownloadDFe.PathDownload := AACBrNFe.Configuracoes.Arquivos.PathSalvar;

    //DANFE
    if AACBrNFe.DANFE <> nil then
    begin                          //Aqui deu Merda, não sei o que é
      AACBrNFe.DANFE.TipoDANFE :=  tiRetrato ;  //StrToTpImp(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'Geral', 'DANFE', 0) + 1));
      AACBrNFe.DANFE.Sistema   := Sistema.Nome;
      if FileExists(AIni.ReadString(ACNPJCPF + 'Geral', 'LogoMarca', '')) then
        AACBrNFe.DANFE.Logo := AIni.ReadString(ACNPJCPF + 'Geral', 'LogoMarca', '')
      else
        AACBrNFe.DANFE.Logo := GetDirSistema + 'NFe\LogoNFe.bmp';
    end;

    //Configura os componentes de impressão caso sejam passados por parâmetro
    //FastReport
    if AACBrDANFeFR <> nil then
    begin
      AACBrDANFeFR.Logo    := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'LogoNFe.bmp';
      AACBrDANFeFR.PathPDF := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'PDF\';
    end;

    //RaveReport
    if AACBrDANFeRL <> nil then
    begin
      AACBrDANFeRL.Logo    := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'LogoNFe.bmp';
      AACBrDANFeRL.PathPDF := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'PDF\';
    end;
  finally
    AIni.Free;
  end;
end;

class procedure TFrmNFe.CarregaConfiguracoesIniCTe(AACBrCTe: TACBrCTe; AEmpresa: TDataSet; AACBrDACTeFR: TACBrCTeDACTEFR = nil;
      AACBrCTeDACTeRL: TACBrCTeDACTeRL = nil);
var
  APathSalvar, ACNPJCPF: string;
  AIni: TIniFile;
  AOk: Boolean;
begin
  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
    ACNPJCPF:=AEmpresa.FieldByName('CNPJCPF').AsString;
    if AIni.ReadString(AEmpresa.FieldByName('CNPJCPF').AsString + 'WebService', 'UF', '') = '' then
      ACNPJCPF := '';

    //Geral
    if AEmpresa.FieldByName('Tem_Certificado').AsString = 'S' then     // Aqui seria interessante ter os dados antes
    begin
      AACBrCTe.Configuracoes.Certificados.NumeroSerie:='';
      AACBrCTe.Configuracoes.Certificados.DadosPFX := DecodeBase64(AEmpresa.FieldByName('Certificado').AsString);
      AACBrCTe.Configuracoes.Certificados.Senha    := AEmpresa.FieldByName('Certificado_Senha').AsString;
    end else
    begin
      AACBrCTe.Configuracoes.Certificados.DadosPFX := '';
      AACBrCTe.Configuracoes.Certificados.Senha    := '';
      AACBrCTe.Configuracoes.Certificados.NumeroSerie := AEmpresa.FieldByName('NFe_NumSerie').AsString; //AIni.ReadString(ACNPJCPF + 'Certificado', 'NumSerie', '');
    end;

    AACBrCTe.Configuracoes.Geral.SSLLib        := libWinCrypt;
    AACBrCTe.Configuracoes.Geral.SSLCryptLib   := cryWinCrypt;
    AACBrCTe.Configuracoes.Geral.SSLHttpLib    := httpWinHttp;
    AACBrCTe.Configuracoes.Geral.SSLXmlSignLib := xsLibXml2;
    AACBrCTe.Configuracoes.Geral.FormaEmissao  := StrToTpEmis(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'Geral', 'FormaEmissao', 0) + 1));

    AACBrCTe.Configuracoes.Geral.Salvar        := True; //Controla se vai salvar os arquivos de envio e retorno.
    AACBrCTe.Configuracoes.Geral.FormatoAlerta := '%TAGNIVEL%§%ID%§%TAG%§%DESCRICAO%§%MSG%';
    AACBrCTe.Configuracoes.Geral.VersaoDF      := StrToVersaoCTe(AOk, '3.00');
//    AACBrCTe.Configuracoes.Geral.VersaoQRCode  := veqr200;

    //WebServices
    AACBrCTe.Configuracoes.WebServices.Salvar              := True;
    AACBrCTe.Configuracoes.WebServices.Ambiente            := StrToTpAmb(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Ambiente', 0) + 1));
    AACBrCTe.Configuracoes.WebServices.ProxyHost           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Host', '');
    AACBrCTe.Configuracoes.WebServices.ProxyPort           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Porta', '');
    AACBrCTe.Configuracoes.WebServices.ProxyUser           := AIni.ReadString(ACNPJCPF + 'Proxy', 'User', '');
    AACBrCTe.Configuracoes.WebServices.ProxyPass           := AIni.ReadString(ACNPJCPF + 'Proxy', 'Pass', '');
    AACBrCTe.Configuracoes.WebServices.Visualizar          := False;
    AACBrCTe.Configuracoes.WebServices.QuebradeLinha       := '|';
    AACBrCTe.Configuracoes.WebServices.SSLType             := TSSLType(AIni.ReadInteger('Certificado', 'SSLType', Integer(LT_all)));
    AACBrCTe.Configuracoes.WebServices.TimeOut             := AIni.ReadInteger(ACNPJCPF + 'WebService', 'TimeOut' , 5000);
    AACBrCTe.Configuracoes.WebServices.Tentativas          := AIni.ReadInteger(ACNPJCPF + 'WebService', 'Tentativas', 5);
    AACBrCTe.Configuracoes.WebServices.IntervaloTentativas := AIni.ReadInteger(ACNPJCPF + 'WebService', 'Intervalo', 0);
    AACBrCTe.Configuracoes.WebServices.AguardarConsultaRet := IfThen(AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0) < 1000,
                                                                     AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0) * 1000,
                                                                     AIni.ReadInteger(ACNPJCPF + 'WebService', 'Aguardar', 0));

    if AIni.ReadString(ACNPJCPF + 'WebService', 'UF', '') = '' then
      AACBrCTe.Configuracoes.WebServices.UF := Empresa.FieldByName('UF').AsString
    else
      AACBrCTe.Configuracoes.WebServices.UF := AIni.ReadString(ACNPJCPF + 'WebService', 'UF', 'AC');


//    if AACBrCTe.Configuracoes.WebServices.Ambiente = taProducao then
//    begin
//      AACBrCTe.Configuracoes.Geral.IdCSC         := AEmpresa.FieldByName('NFCE_PRODUCAO_ID').AsString;//AIni.ReadString('Geral', 'IdToken', '');
//      AACBrCTe.Configuracoes.Geral.CSC           := AEmpresa.FieldByName('NFCE_PRODUCAO_CSC').AsString;//AIni.ReadString('Geral', 'Token', '');
//    end else
//    begin
//      AACBrCTe.Configuracoes.Geral.IdCSC         := AEmpresa.FieldByName('NFCE_HOMOLOGACAO_ID').AsString;//AIni.ReadString('Geral', 'IdToken', '');
//      AACBrCTe.Configuracoes.Geral.CSC           := AEmpresa.FieldByName('NFCE_HOMOLOGACAO_CSC').AsString;//AIni.ReadString('Geral', 'Token', '');
//    end;

    TFrmNFe.ConfiguraFusoCTe(AACBrCTe, 'Emissao');
    //Arquivos
//    APathSalvar := IncludeTrailingPathDelimiter(AIni.ReadString(ACNPJCPF + 'Geral', 'PathSalvar', GetDirSistema + 'NFe'));
    if  AEmpresa.FieldByName('NFE_PATH').AsString = '' then
      APathSalvar :=  GetDirSistema + 'NFe'
    else
      APathSalvar :=  AEmpresa.FieldByName('NFE_PATH').AsString;
    APathSalvar:=IncludeTrailingPathDelimiter(APathSalvar);
    AACBrCTe.Configuracoes.Arquivos.Salvar         := AACBrCTe.Configuracoes.WebServices.Ambiente = taProducao;  //Controla se vai salvar os arquivos de fiscais.
//    AACBrCTe.Configuracoes.Arquivos.SalvarEvento   := True; //Controla se vai salvar os arquivos de fiscais.
    AACBrCTe.Configuracoes.Arquivos.SepararPorCNPJ := False;
    AACBrCTe.Configuracoes.Arquivos.SepararPorMes  := True;
    AACBrCTe.Configuracoes.Arquivos.NormatizarMunicipios       := True;
    AACBrCTe.Configuracoes.Arquivos.SalvarApenasCTeProcessados := True;
    AACBrCTe.Configuracoes.Arquivos.PathCTe        := APathSalvar + OnlyNumber(ACNPJCPF) + '\'; //O edtLogPath depende da estrutura deste caminho. Se alterar, verificar o edtLogPath
    AACBrCTe.Configuracoes.Arquivos.PathInu        := AACBrCTe.Configuracoes.Arquivos.PathCTe + 'Inutilizadas\';
    AACBrCTe.Configuracoes.Arquivos.PathSalvar     := AACBrCTe.Configuracoes.Arquivos.PathCTe + 'XML\';
    AACBrCTe.Configuracoes.Arquivos.PathEvento     := AACBrCTe.Configuracoes.Arquivos.PathCTe + 'EVENTOS\';
    AACBrCTe.Configuracoes.Arquivos.PathSchemas    := GetDirSistema + 'NFe\Schemas\CTe';
    AACBrCTe.Configuracoes.Arquivos.DownloadDFe.PathDownload := AACBrCTe.Configuracoes.Arquivos.PathSalvar;

    //DANFE
    if AACBrCTe.DACTE <> nil then
    begin                          //Aqui deu Merda, não sei o que é
      AACBrCTe.DACTE.TipoDACTE :=  tiRetrato ;  //StrToTpImp(AOk, IntToStr(AIni.ReadInteger(ACNPJCPF + 'Geral', 'DANFE', 0) + 1));
      AACBrCTe.DACTE.Sistema   := Sistema.Nome;
      if FileExists(AIni.ReadString(ACNPJCPF + 'Geral', 'LogoMarca', '')) then
        AACBrCTe.DACTE.Logo := AIni.ReadString(ACNPJCPF + 'Geral', 'LogoMarca', '')
      else
        AACBrCTe.DACTE.Logo := GetDirSistema + 'NFe\LogoNFe.bmp';
    end;

    //Configura os componentes de impressão caso sejam passados por parâmetro
    //FastReport
    if AACBrDACTeFR <> nil then
    begin
      AACBrDACTeFR.Logo    := AACBrCTe.Configuracoes.Arquivos.PathCTe + 'LogoNFe.bmp';
      AACBrDACTeFR.PathPDF := AACBrCTe.Configuracoes.Arquivos.PathCTe + 'PDF\';
    end;

    //RaveReport
    if AACBrCTeDACTeRL <> nil then
    begin
//      AACBrCTeDACTeRL.Logo    := AACBrCTe.Configuracoes.Arquivos.PathNFe + 'LogoNFe.bmp';
//      AACBrCTeDACTeRL.PathPDF := AACBrCTe.Configuracoes.Arquivos.PathNFe + 'PDF\';
    end;
  finally
    AIni.Free;
  end;
end;

{$ENDREGION}

{$REGION 'IMPORTAR XML'}
//////////////////////////////////////IMPORTAR XML ////////////////////////////////////////


class procedure TFrmNFe.PreencheDadosNF(ADataSetNotaFiscal: TDataSet; AACBrNFe: TACBrNFe; const ACodVenda: string);
var
  AStream: TStringStream;
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
  ANFe := AACBrNFe.NotasFiscais[0];

  ADataSetNotaFiscal.FieldByName('NF_CHAVE').AsString             := TrataChaveNF(ANFe.NFe.infNFe.ID);
  ADataSetNotaFiscal.FieldByName('NF_NUMERO').AsInteger           := ANFe.NFe.Ide.nNF;
  ADataSetNotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime      := ANFe.NFe.Ide.dEmi;
  ADataSetNotaFiscal.FieldByName('NF_MODELO').AsInteger           := ANFe.NFe.Ide.modelo;
  ADataSetNotaFiscal.FieldByName('NF_NATUREZA_OPERACAO').AsString := ANFe.NFe.Ide.natOp;
  ADataSetNotaFiscal.FieldByName('NF_AMBIENTE').AsString          := TpAmbToStr(ANFe.NFe.Ide.tpAmb);
  ADataSetNotaFiscal.FieldByName('NF_TIPO').AsString              := tpNFToStr(ANFe.NFe.Ide.tpNF);
  ADataSetNotaFiscal.FieldByName('NF_CNPJCPF_DESTINO').AsString   := GetCnpjCpf(ANFe.NFe.Dest.CNPJCPF);
  ADataSetNotaFiscal.FieldByName('NF_RAZAOSOCIAL').AsString       := ANFe.NFe.Dest.xNome;
  ADataSetNotaFiscal.FieldByName('NF_PROTOCOLO').AsString         := ANFe.NFe.procNFe.nProt;
  ADataSetNotaFiscal.FieldByName('NF_CSTAT').AsInteger            := ANFe.NFe.procNFe.cStat;
  ADataSetNotaFiscal.FieldByName('NF_MOTIVO_STATUS').AsString     := ANFe.NFe.procNFe.xMotivo;
  ADataSetNotaFiscal.FieldByName('NF_SITUACAO').AsString          := GetCStatDescricao(ANFe.NFe.procNFe.cStat);
  ADataSetNotaFiscal.FieldByName('NF_DIGEST_VALUE').AsString      := ANFe.NFe.signature.DigestValue;
  ADataSetNotaFiscal.FieldByName('NF_CNPJ').AsString              := GetCNPJEmitente(ANFe);
  ADataSetNotaFiscal.FieldByName('TIPO').AsString                 := GetModeloDescricao(ANFe.NFe.Ide.modelo);
  ADataSetNotaFiscal.FieldByName('SERIE').AsInteger               := ANFe.NFe.Ide.serie;
  ADataSetNotaFiscal.FieldByName('CODVENDA').AsString             := ACodVenda;
  ADataSetNotaFiscal.FieldByName('VOUTRO').AsFloat                := ANFe.NFe.Total.ICMSTot.vOutro;
//  ADataSetNotaFiscal.FieldByName('POUTRO').AsString
  ADataSetNotaFiscal.FieldByName('TOTAL_PRODUTOS').AsFloat        := ANFe.NFe.Total.ICMSTot.vProd;
  ADataSetNotaFiscal.FieldByName('TOTAL_SERVICOS').AsFloat        := ANFe.NFe.Total.ISSQNtot.vServ;
  ADataSetNotaFiscal.FieldByName('NF_VFRETE').AsFloat             := ANFe.NFe.Total.ICMSTot.vFrete;
//  ADataSetNotaFiscal.FieldByName('PDESC').AsString
  ADataSetNotaFiscal.FieldByName('VDESC').AsFloat                 := ANFe.NFe.Total.ICMSTot.vDesc;
  ADataSetNotaFiscal.FieldByName('TOTAL').AsFloat                 := ANFe.NFe.Total.ICMSTot.vNF;
  ADataSetNotaFiscal.FieldByName('NF_IPI_VIPI').AsFloat           := ANFe.NFe.Total.ICMSTot.vIPI;
  ADataSetNotaFiscal.FieldByName('NF_II_VII').AsFloat             := ANFe.NFe.Total.ICMSTot.vII;
  ADataSetNotaFiscal.FieldByName('NF_VPIS').AsFloat               := ANFe.NFe.Total.ICMSTot.vPIS;
  ADataSetNotaFiscal.FieldByName('NF_VCOFINS').AsFloat            := ANFe.NFe.Total.ICMSTot.vCOFINS;
  ADataSetNotaFiscal.FieldByName('NF_VBC').AsFloat                := ANFe.NFe.Total.ICMSTot.vBC;
  ADataSetNotaFiscal.FieldByName('NF_VICMS').AsFloat              := ANFe.NFe.Total.ICMSTot.vICMS;
  ADataSetNotaFiscal.FieldByName('NF_VBCST').AsFloat              := ANFe.NFe.Total.ICMSTot.vBCST;
  ADataSetNotaFiscal.FieldByName('NF_VST').AsFloat                := ANFe.NFe.Total.ICMSTot.vST;
  ADataSetNotaFiscal.FieldByName('NF_ISSQN_VBC').AsFloat          := ANFe.NFe.Total.ISSQNtot.vBC;
  ADataSetNotaFiscal.FieldByName('NF_ISSQN_VISSQN').AsFloat       := ANFe.NFe.Total.ISSQNtot.vISS;
  ADataSetNotaFiscal.FieldByName('NF_ISSQN_VISSRET').AsFloat      := ANFe.NFe.Total.ISSQNtot.vISSRet;



  //Busca o código da empresa relativo a nota
  if OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString) = GetCNPJEmitente(ANFe) then
    ADataSetNotaFiscal.FieldByName('CODEMPRESA').AsInteger := Empresa.FieldByName('CODIGO').AsInteger
  else
  begin
    ADataSetNotaFiscal.FieldByName('CODEMPRESA').AsInteger := GetEmpresaNFe(AACBrNFe);
    if ADataSetNotaFiscal.FieldByName('CODEMPRESA').AsInteger = 0 then
    begin
      {Quando o CNPJ do emitente da nota não for uma empresa cadastrada, então a nota foi emitida por terceiros.
       Neste caso vincula na empresa ativa}
      ADataSetNotaFiscal.FieldByName('CODEMPRESA').AsInteger := Empresa.FieldByName('CODIGO').AsInteger;
    end;
  end;

  //Carrega o arquivo XML
  AStream := TStringStream.Create;
  try
    GravaXMLNFeToStream(AACBrNFe, AStream);
    TBlobField(ADataSetNotaFiscal.FieldByName('ARQUIVO_XML')).LoadFromStream(AStream);
  finally
    AStream.Free;
  end;
end;

class procedure TFrmNFe.GravaXMLNFeToStream(const AACBrNFe: TACBrNFe; const AStream: TStream);
var
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
  ANFe := AACBrNFe.NotasFiscais[0];
  AStream.Size     := 0;
  AStream.Position := 0;
  if ANFe.XMLAssinado <> '' then
    WriteStrToStream(AStream, AnsiString(ANFe.XMLAssinado))
  else
    WriteStrToStream(AStream, AnsiString(ANFe.XMLOriginal));
end;

class function TFrmNFe.GravaRetornoCancelamentoNoBanco(AACBrNFe: TACBrNFe; AMotivo: string): Integer;
var
  i: Integer;
begin
  with AACBrNFe.WebServices.EnvEvento.EventoRetorno do
  begin
    for I := 0 to retEvento.Count - 1 do
    begin
      if retEvento[i].RetInfEvento.tpEvento = TpcnTpEvento.teCancelamento then
      begin
        Result := GravaRetornoEventoNoBanco(retEvento[i].RetInfEvento, AMotivo);
        Exit;
      end;
    end;
  end;
end;

class function TFrmNFe.ImportarEventoXML(AArquivoXML: string): Boolean;
var
  AACBrNFe: TACBrNFe;
  AEvento: TRetInfEvento;
begin
  Result := False;
  AACBrNFe := CriaComponenteACBrNFe;
  try
    if not AACBrNFe.EventoNFe.LerXML(AArquivoXML) then
      Exit;

    if AACBrNFe.EventoNFe.Evento.Count = 0 then
      Exit;

    AACBrNFe.EventoNFe.GerarXML;

    AEvento := AACBrNFe.EventoNFe.Evento[0].RetInfEvento;

    Result := (GravaEventoNoBanco(AEvento.nProt, AEvento.chNFe, AEvento.CNPJDest, '0',
      AACBrNFe.EventoNFe.Gerador.ArquivoFormatoXML, AEvento.xMotivo, '', AEvento.tpAmb, AEvento.tpEvento,
      AEvento.nSeqEvento, AEvento.cStat, AEvento.dhRegEvento) > 0);
  finally
    AACBrNFe.Free;
  end;
end;

class function TFrmNFe.ImportarXML(AArquivoXML, ACodVendaVincular: string; var ACodigo: Integer): Boolean;
var
  AACBrNFe: TACBrNFe;
  QuerVenda, QuerVendaProduto: TFDQuery;
  ATransa: TFDTransaction;
begin
  AACBrNFe := CriaComponenteACBrNFe;
  ATransa := GeraFDTransacao;
  QuerVenda := GeraFDQuery(ATransa);
  QuerVendaProduto := GeraFDQuery(ATransa);
  try
    Result := AACBrNFe.NotasFiscais.LoadFromFile(AArquivoXML);

    if AACBrNFe.NotasFiscais.Count = 0 then
    begin
      ShowMessageWR('XML não é de Nota Fiscal ou está corrompido.');
      Exit;
    end;

    //Grava no banco de dados
//    GravaNFeNoBanco(AACBrNFe, ACodVendaVincular);
    InsereNovaNFeNoBanco(AACBrNFe, ACodVendaVincular);

    //Caso a nota esteja Confirmada, altera o número da Nota Fiscal na Venda
    if (ACodVendaVincular <> '') and AACBrNFe.CstatConfirmada(AACBrNFe.NotasFiscais[0].NFe.procNFe.cStat) then
    begin
      QuerVenda.SQL.Text := 'select CODIGO, VENDA_TIPO, NOTAFISCAL, NF_DT_EMISSAO, NF_DT_SAIDAENTRADA, NF_NREF, ' +
                            '       STATUS, NF_STATUS ' +
                            'from VENDA ' +
                            'where (CODIGO = :Cod)';
      QuerVenda.Params[0].AsString := ACodVendaVincular;
      QuerVenda.Open;
      if not QuerVenda.IsEmpty then
      begin
        QuerVendaProduto.SQL.Text := 'select * ' +
                                     'from VENDA_PRODUTO ' +
                                     'where (CODVENDA = :Cod)';
        QuerVendaProduto.Params[0].AsString := QuerVenda.FieldByName('CODIGO').AsString;
        QuerVendaProduto.Open;

        if (QuerVenda.FieldByName('NOTAFISCAL').AsLargeInt = 0) or             // LargeInt Fora do Padrão
           (QuerVenda.FieldByName('NOTAFISCAL').AsLargeInt = AACBrNFe.NotasFiscais[0].NFe.Ide.nNF) or
           (ShowMessageWR('Atenção!' + sLineBreak + 'A Venda a qual esta nota está sendo vinculada já possui uma ' +
            'Nota Fiscal com numeração diferente!' + sLineBreak +
            'Deseja continuar e SUBSTITUIR a nota atual da venda por esta que está sendo importada?', MB_ICONWARNING or MB_YESNO) = mrYes) then
        begin
          QuerVenda.Edit;
          TFrmVendaFrameNotaFiscal.AtualizarNotaNaVenda(QuerVenda, QuerVendaProduto, AACBrNFe);
          QuerVenda.Post;
        end;
      end;
    end;
    ComitaTransacao(ATransa);
  finally
    AACBrNFe.Free;
    QuerVendaProduto.Free;
    QuerVenda.Free;
  end;
end;

class function TFrmNFe.InsereNovaNFeNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
  Result := 0;
  if (AACBrNFe.NotasFiscais.Count <= 0) or (AACBrNFe.NotasFiscais[0].NFe.Ide.nNF = 0) then
    Exit;
  ANFe := AACBrNFe.NotasFiscais[0];

  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL'));
    PreencheDadosNF(QuerX, AACBrNFe, ACodVenda);
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;


class function TFrmNFe.GravaEventoNoBanco(AProtocolo, AChaveNF, ACnpjDest, ACodVenda, AXML, AMotivoStatus,
  AMotivoCancelamento: string; AAmbiente: TpcnTipoAmbiente; ATipoEvento: TpcnTpEvento; ASequencia, ACStat: Integer;
  ADataEvento: TDateTime): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ATipoRegistro: TNotaFiscalTipoRegistro;
begin
  ATipoRegistro := NotaFiscalTipoRegistroTipoEventoToEnum(ATipoEvento);
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, ARQUIVO_XML, NF_PROTOCOLO, NF_DT_CANCELAMENTO, NF_CSTAT, NF_AMBIENTE, NF_CHAVE, ' +
                      '       NF_CNPJCPF_DESTINO, NF_SEQUENCIA_EVENTO, NF_MOTIVO_STATUS, TIPO, MOTIVO_CANCELAMENTO, ' +
                      '       CODEMPRESA, CODVENDA, NF_DT_EMISSAO ' +
                      'from NOTA_FISCAL ' +
                      'where (NF_PROTOCOLO = :Prot) ' +
                      '      and (NF_AMBIENTE = :Amb) ' +
                      '      and (TIPO = :Tipo) ' +
                      '      and (NF_SEQUENCIA_EVENTO = :Seq) ' +
                      '      and (NF_CHAVE = :Chave) ' +
                      '      and (NF_CNPJCPF_DESTINO = :Cnpj)';
    QuerX.ParamByName('Prot').AsString  := AProtocolo;
    QuerX.ParamByName('Amb').AsString   := TpAmbToStr(AAmbiente);
    QuerX.ParamByName('Chave').AsString := TrataChaveNF(AChaveNF);
    QuerX.ParamByName('Cnpj').AsString  := ACnpjDest;
    QuerX.ParamByName('Seq').AsInteger  := ASequencia;
    QuerX.ParamByName('Tipo').AsString  := NotaFiscalTipoRegistroToStr(ATipoRegistro);
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger              := GetProximoCodigoSP('NOTA_FISCAL');
      QuerX.FieldByName('CODEMPRESA').AsInteger          := StrToInt(EmpresaAtiva);
      QuerX.FieldByName('CODVENDA').AsString             := ACodVenda;
      QuerX.FieldByName('NF_PROTOCOLO').AsString         := AProtocolo;
      QuerX.FieldByName('NF_AMBIENTE').AsString          := TpAmbToStr(AAmbiente);
      QuerX.FieldByName('NF_CNPJCPF_DESTINO').AsString   := ACnpjDest;
      QuerX.FieldByName('NF_SEQUENCIA_EVENTO').AsInteger := ASequencia;
      QuerX.FieldByName('NF_CHAVE').AsString             := TrataChaveNF(AChaveNF);
      QuerX.FieldByName('TIPO').AsString                 := NotaFiscalTipoRegistroToStr(ATipoRegistro);
    end else
      QuerX.Edit;
    QuerX.FieldByName('ARQUIVO_XML').AsString      := AXML;
    QuerX.FieldByName('NF_CSTAT').AsInteger        := ACStat;
    QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := AMotivoStatus;

    {Registra apenas quando é cancelamento. Para outros tipos de evento como CCe, os dados ficam apenas no XML}
    if ATipoEvento = teCancelamento then
    begin
      QuerX.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := ADataEvento;
      QuerX.FieldByName('MOTIVO_CANCELAMENTO').AsString  := AMotivoCancelamento;
    end else
      QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime := ADataEvento;
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class function TFrmNFe.GravaRetornoEventoNoBanco(AEvento: TRetInfEvento; AMotivoCancelamento: string): Integer;
begin
  { Campos não salvos no banco:
    property Id: String                         read FId          write FId;
    property verAplic: String                   read FverAplic    write FverAplic;
    property cOrgao: Integer                    read FcOrgao      write FcOrgao;
    property xEvento: String                    read FxEvento     write FxEvento;
    property emailDest: String                  read FemailDest   write FemailDest;
    property cOrgaoAutor: Integer               read FcOrgaoAutor write FcOrgaoAutor;
    property chNFePend: TRetchNFePendCollection read FchNFePend   write FchNFePend;
  }
  Result := GravaEventoNoBanco(AEvento.nProt, AEvento.chNFe, AEvento.CNPJDest, '0', AEvento.XML, AEvento.xMotivo,
    AMotivoCancelamento, AEvento.tpAmb, AEvento.tpEvento, AEvento.nSeqEvento, AEvento.cStat, AEvento.dhRegEvento);
end;

class procedure TFrmNFe.GravarXMLNotaEntradaNoBanco(ACodEmpresa: Integer; ADocZip: TdocZipCollectionItem);
var
  QuerFilho, QuerPai, QuerEditaPai, QuerVerificaCompra: TFDQuery;
  ATransaPai: TFDTransaction;
  ATransa: TFDTransaction;
begin
  ATransaPai         := GeraFDTransacao;
  ATransa            := GeraFDTransacao;
  QuerPai            := GeraFDQuery(ATransaPai);
  QuerFilho          := GeraFDQuery(ATransa);
  QuerEditaPai       := GeraFDQuery(ATransa);
  QuerVerificaCompra := GeraFDQuery(ATransa);
  try
    ////////// Insert Pai \\\\\\\\\\\
//    QuerPai.SQL.Text := 'select * from NF_ENTRADA_MANIFESTO where NF_CHAVE = :Chave';
//    QuerPai.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
//    QuerPai.Open;
//
//    if QuerPai.IsEmpty then
//    begin
//      QuerPai.Insert;
//      QuerPai.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_ENTRADA'));
//      QuerPai.FieldByName('CODEMPRESA').AsInteger             := ACodEmpresa;
//      QuerPai.FieldByName('TIPO').AsString                    := 'NFe';
//      QuerPai.FieldByName('NSU').AsString                     := ADocZip.NSU;
//      QuerPai.FieldByName('DT_RECEBIMENTO').AsDateTime        := DataHoraSys;
////      QuerPai.FieldByName('NF_AMBIENTE').AsInteger            := StrToIntDef(TpAmbToStr(AACBrNFe.Configuracoes.WebServices.Ambiente), 1);
//      QuerPai.FieldByName('NF_AMBIENTE').AsInteger            := 1;
//      QuerPai.FieldByName('ATIVO').AsString                   := 'S';
//      QuerPai.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := ADocZip.resDFe.CNPJCPF;
//      QuerPai.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := ADocZip.resDFe.xNome;
//      QuerPai.FieldByName('NF_CHAVE').AsString                := ADocZip.resDFe.chDFe;
//      QuerPai.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(ADocZip.resDFe.cSitDFe);
//      QuerPai.FieldByName('NF_DT_EMISSAO').AsDateTime         := ADocZip.resDFe.dhEmi;
//      QuerPai.FieldByName('NF_TOTAL').AsFloat                 := ADocZip.resDFe.vNF;
//      QuerPai.FieldByName('TEM_SOLICITADO_CIENCIA').AsString  := 'N';
//      if Length(ADocZip.resDFe.chDFe) = 44 then
//        QuerPai.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(ADocZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão
//
//      QuerPai.Post;
//      ATransaPai.Commit;
//    end;

    ////////// Fim Insert Pai \\\\\\\\\\\






    ////////// Insert Filho \\\\\\\\\\\
    QuerFilho.SQL.Text := 'select CODIGO, CODEMPRESA, NF_NUMERO, NF_CHAVE, NF_CNPJCPF_EMITENTE, NF_AMBIENTE, SCHEMA, ' +
                      '       NF_RAZAOSOCIAL_EMITENTE, NF_DT_EMISSAO, DT_RECEBIMENTO, NF_TOTAL, NF_SITUACAO, NSU, ' +
                      '       ARQUIVO_XML, TIPO_OPERACAO, ATIVO, TEM_COMPRA, NF_MANIFESTO, TIPO, SITUACAO ' +
                      'from NOTA_FISCAL_ENTRADA ' +
                      'where (NSU = :nsu)'+
                      ' and (CODEMPRESA = :Cod)' +
                      ' and (TIPO = ''NFe'')';            // Aqui tem a Fitro da Emprea ainda, pois pode duplicar o NSU e Nota fiscal
    QuerFilho.ParamByName('Cod').AsInteger  := ACodEmpresa;       // Código Antigo Gera duplicidade
    QuerFilho.ParamByName('NSU').AsString   := ADocZip.NSU;   // Dever feita por NSU ADocZip.NSU
    QuerFilho.Open;
    if QuerFilho.IsEmpty then  // Se caiu aqui, quer dizer que importou
    begin
      QuerFilho.Insert;
      QuerFilho.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_ENTRADA'));
      QuerFilho.FieldByName('CODEMPRESA').AsInteger := ACodEmpresa;
//    end else
//      QuerFilho.Edit;
      QuerFilho.FieldByName('TIPO').AsString             := 'NFe';
      QuerFilho.FieldByName('ARQUIVO_XML').AsString      := ADocZip.XML;
      QuerFilho.FieldByName('NSU').AsString              := ADocZip.NSU;
      QuerFilho.FieldByName('SCHEMA').AsString           := SchemaDFeToCodigo(ADocZip.schema);
      QuerFilho.FieldByName('DT_RECEBIMENTO').AsDateTime := DataHoraSys;
//      QuerFilho.FieldByName('NF_AMBIENTE').AsInteger     := StrToIntDef(TpAmbToStr(AACBrNFe.Configuracoes.WebServices.Ambiente), 1);
      QuerFilho.FieldByName('NF_AMBIENTE').AsInteger     := 1;
      QuerFilho.FieldByName('ATIVO').AsString            := 'S';
      case ADocZip.schema of
        schresNFe:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := ADocZip.resDFe.CNPJCPF;
          QuerFilho.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := ADocZip.resDFe.xNome;
          QuerFilho.FieldByName('NF_CHAVE').AsString                := ADocZip.resDFe.chDFe;
          QuerFilho.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(ADocZip.resDFe.cSitDFe);
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime         := ADocZip.resDFe.dhEmi;
          QuerFilho.FieldByName('NF_TOTAL').AsFloat                 := ADocZip.resDFe.vNF;
          if Length(ADocZip.resDFe.chDFe) = 44 then
            QuerFilho.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(ADocZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão

          //\\ Chegou aqui, então veio a nota Resumida //\\
          QuerFilho.FieldByName('SITUACAO').AsString                := 'Nova Nota Resumida';
        end;
        schprocNFe:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := ADocZip.resDFe.CNPJCPF;
          QuerFilho.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := ADocZip.resDFe.xNome;
          QuerFilho.FieldByName('NF_CHAVE').AsString                := ADocZip.resDFe.chDFe;
          QuerFilho.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(ADocZip.resDFe.cSitDFe);
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime         := ADocZip.resDFe.dhEmi;
          QuerFilho.FieldByName('NF_TOTAL').AsFloat                 := ADocZip.resDFe.vNF;
          if Length(ADocZip.resDFe.chDFe) = 44 then
            QuerFilho.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(ADocZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão

          //\\ Chegou aqui, então veio a nota e está Pronta para Importar //\\
          QuerFilho.FieldByName('SITUACAO').AsString                := 'Pronta para Importar';
        end;
        schresEvento:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString := ADocZip.resEvento.CNPJCPF;
          QuerFilho.FieldByName('NF_CHAVE').AsString            := ADocZip.resEvento.chDFe;
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime     := ADocZip.resEvento.dhEvento;

          //\\ Chegou aqui, então veio o evento //\\
          QuerFilho.FieldByName('SITUACAO').AsString                := 'Pronta para Importar';
        end;
        schprocEventoNFe:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString := ADocZip.procEvento.CNPJ;
          QuerFilho.FieldByName('NF_CHAVE').AsString            := ADocZip.procEvento.chDFe;
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime     := ADocZip.procEvento.dhEvento;
          if ADocZip.procEvento.tpEvento in [teManifDestConfirmacao, teManifDestCiencia, teManifDestDesconhecimento,
            teManifDestOperNaoRealizada] then
            QuerFilho.FieldByName('NF_MANIFESTO').AsString := ManifestoDFeToCodigo(ADocZip.procEvento.tpEvento);

          //\\ Chegou aqui, Evento registrado e vinculado a NF-e //\\
          QuerFilho.FieldByName('SITUACAO').AsString                := 'Evento registrado e vinculado a NF-e';
          QuerFilho.FieldByName('EVENTO').AsString                := ManifestoDFeToDescricao(ADocZip.procEvento.tpEvento);

        end;

        ////////// Fim Insert Filho \\\\\\\\\\\
      end;



      ////////// Edit Pai \\\\\\\\\\\
      QuerEditaPai.SQL.Text := 'select * from NF_ENTRADA_MANIFESTO where NF_CHAVE = :Chave';
      QuerEditaPai.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
      QuerEditaPai.Open;



      if not(QuerEditaPai.IsEmpty) then
      begin
        QuerEditaPai.Edit;
        if QuerFilho.FieldByName('NF_MANIFESTO').AsString = 'Confirmacao' then
          QuerEditaPai.FieldByName('TEM_CONFIRMADA').AsString    := 'S'
        else
          QuerEditaPai.FieldByName('TEM_CONFIRMADA').AsString    := 'N';

        if QuerFilho.FieldByName('NF_MANIFESTO').AsString = 'Ciencia' then
          QuerEditaPai.FieldByName('TEM_CIENCIA').AsString       := 'S'
        else
          QuerEditaPai.FieldByName('TEM_CIENCIA').AsString       := 'N';

        if QuerFilho.FieldByName('NF_MANIFESTO').AsString = 'Desconhecimento' then
          QuerEditaPai.FieldByName('TEM_DESCONHECIDA').AsString  := 'S'
        else
          QuerEditaPai.FieldByName('TEM_DESCONHECIDA').AsString  := 'N';

        if QuerFilho.FieldByName('NF_MANIFESTO').AsString = 'OperNaoRealizada' then
          QuerEditaPai.FieldByName('TEM_NAO_REALIZADA').AsString := 'S'
        else
          QuerEditaPai.FieldByName('TEM_NAO_REALIZADA').AsString := 'N';

        if QuerFilho.FieldByName('SCHEMA').AsString = 'procNFe' then
        begin
          QuerEditaPai.FieldByName('TEM_NOTA').AsString := 'S';
          QuerEditaPai.FieldByName('SITUACAO').AsString := '3. LANÇAR NA COMPRA';
        end
        else
          QuerEditaPai.FieldByName('TEM_NOTA').AsString := 'N';

        QuerVerificaCompra.SQL.Text := 'select * from NF_ENTRADA where NF_CHAVE = :Chave';
        QuerVerificaCompra.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
        QuerVerificaCompra.Open;

        if QuerVerificaCompra.RecordCount > 0 then
        begin
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'S';
          QuerEditaPai.FieldByName('CODNF_ENTRADA').AsString := QuerVerificaCompra.FieldByName('CODIGO').AsString;
          QuerEditaPai.FieldByName('TEM_FINALIZADO').AsString := 'S';
          QuerEditaPai.FieldByName('SITUACAO').AsString := '4.FINALIZADO';
        end
        else
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'N';

        if QuerEditaPai.FieldByName('NF_SITUACAO').AsString <> QuerFilho.FieldByName('NF_SITUACAO').AsString then
          QuerEditaPai.FieldByName('NF_SITUACAO').AsString := QuerFilho.FieldByName('NF_SITUACAO').AsString;



        QuerEditaPai.Post;
      end;

        ////////// Fim Edit Pai \\\\\\\\\\\
      QuerFilho.Post;
    end
    else
    begin
      if (ADocZip.schema = schprocNFe) then
      begin
        QuerFilho.Edit;
        QuerFilho.FieldByName('ARQUIVO_XML').AsString  := ADocZip.XML;

        QuerEditaPai.SQL.Text := 'select * from NF_ENTRADA_MANIFESTO where NF_CHAVE = :Chave';
        QuerEditaPai.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
        QuerEditaPai.Open;

        QuerEditaPai.Edit;
        QuerEditaPai.FieldByName('TEM_NOTA').AsString := 'S';

        // Verifica se existe compra daquela nota importada.
        QuerVerificaCompra.SQL.Text := 'select * from NF_ENTRADA where NF_CHAVE = :Chave';
        QuerVerificaCompra.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
        QuerVerificaCompra.Open;

        if QuerVerificaCompra.RecordCount > 0 then
        begin
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'S';
          QuerEditaPai.FieldByName('CODNF_ENTRADA').AsString := QuerVerificaCompra.FieldByName('CODIGO').AsString;
          QuerEditaPai.FieldByName('TEM_FINALIZADO').AsString := 'S';
          QuerEditaPai.FieldByName('SITUACAO').AsString := '4.FINALIZADO';
        end
        else
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'N';

        QuerEditaPai.Post;
        QuerFilho.Post;
      end;
    end;

    ATransa.Commit;
  finally
    QuerPai.Free;
    QuerVerificaCompra.Free;
    QuerEditaPai.Free;
    QuerFilho.Free;
    ATransa.Free;
  end;
end;

class procedure TFrmNFe.GravarXMLCTeNoBanco(ACodigo, ACodEmpresa: Integer; AACBrCTe: TACBrCTe; ADocZip: TdocZipCollectionItem);
var
  QuerFilho, QuerPai, QuerEditaPai, QuerVerificaCompra: TFDQuery;
  ATransaPai: TFDTransaction;
  ATransa: TFDTransaction;
begin
  ATransaPai         := GeraFDTransacao;
  ATransa            := GeraFDTransacao;
  QuerPai            := GeraFDQuery(ATransaPai);
  QuerFilho          := GeraFDQuery(ATransa);
  QuerEditaPai       := GeraFDQuery(ATransa);
  QuerVerificaCompra := GeraFDQuery(ATransa);
  try
    ////////// Insert Pai \\\\\\\\\\\
    QuerPai.SQL.Text := 'select * from NF_ENTRADA_MANIFESTO where NF_CHAVE = :Chave';
    QuerPai.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
    QuerPai.Open;

    if QuerPai.IsEmpty then
    begin
      if ADocZip.schema = schprocCTe then
      begin
        QuerPai.Insert;
        QuerPai.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_ENTRADA'));
        QuerPai.FieldByName('CODEMPRESA').AsInteger             := ACodEmpresa;
        QuerPai.FieldByName('TIPO').AsString                    := 'CTe';
        QuerPai.FieldByName('NSU').AsString                     := ADocZip.NSU;
        QuerPai.FieldByName('DT_RECEBIMENTO').AsDateTime        := DataHoraSys;
        QuerPai.FieldByName('NF_AMBIENTE').AsInteger            := StrToIntDef(TpAmbToStr(AACBrCTe.Configuracoes.WebServices.Ambiente), 1);
        QuerPai.FieldByName('ATIVO').AsString                   := 'S';
        QuerPai.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := ADocZip.resDFe.CNPJCPF;
        QuerPai.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := ADocZip.resDFe.xNome;
        QuerPai.FieldByName('NF_CHAVE').AsString                := ADocZip.resDFe.chDFe;
        QuerPai.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(ADocZip.resDFe.cSitDFe);
        QuerPai.FieldByName('NF_DT_EMISSAO').AsDateTime         := ADocZip.resDFe.dhEmi;
        QuerPai.FieldByName('NF_TOTAL').AsFloat                 := ADocZip.resDFe.vNF;
        QuerPai.FieldByName('SITUACAO').AsString                 := '1. NOVO';
        if Length(ADocZip.resDFe.chDFe) = 44 then
          QuerPai.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(ADocZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão

        QuerPai.Post;
        ATransaPai.Commit;
      end;
    end;

    ////////// Fim Insert Pai \\\\\\\\\\\






    ////////// Insert Filho \\\\\\\\\\\
    QuerFilho.SQL.Text := 'select CODIGO, CODEMPRESA, NF_NUMERO, NF_CHAVE, NF_CNPJCPF_EMITENTE, NF_AMBIENTE, SCHEMA, ' +
                      '       NF_RAZAOSOCIAL_EMITENTE, NF_DT_EMISSAO, DT_RECEBIMENTO, NF_TOTAL, NF_SITUACAO, NSU, ' +
                      '       ARQUIVO_XML, TIPO_OPERACAO, ATIVO, TEM_COMPRA, NF_MANIFESTO, TIPO ' +
                      'from NOTA_FISCAL_ENTRADA ' +
                      'where (NSU = :nsu)'+
                      ' and (CODEMPRESA = :Cod)' +
                      ' and (TIPO = ''CTe'')';            // Aqui tem a Fitro da Emprea ainda, pois pode duplicar o NSU e Nota fiscal
    QuerFilho.ParamByName('Cod').AsInteger  := ACodEmpresa;       // Código Antigo Gera duplicidade
    QuerFilho.ParamByName('NSU').AsString   := ADocZip.NSU;   // Dever feita por NSU ADocZip.NSU
    QuerFilho.Open;
    if QuerFilho.IsEmpty then
    begin
      QuerFilho.Insert;
      QuerFilho.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_ENTRADA'));
      QuerFilho.FieldByName('CODEMPRESA').AsInteger := ACodEmpresa;
//    end else
//      QuerFilho.Edit;
      QuerFilho.FieldByName('TIPO').AsString             := 'CTe';
      QuerFilho.FieldByName('ARQUIVO_XML').AsString      := ADocZip.XML;
      QuerFilho.FieldByName('NSU').AsString              := ADocZip.NSU;
      QuerFilho.FieldByName('SCHEMA').AsString           := SchemaDFeToCodigo(ADocZip.schema);
      QuerFilho.FieldByName('DT_RECEBIMENTO').AsDateTime := DataHoraSys;
      QuerFilho.FieldByName('NF_AMBIENTE').AsInteger     := StrToIntDef(TpAmbToStr(AACBrCTe.Configuracoes.WebServices.Ambiente), 1);
      QuerFilho.FieldByName('ATIVO').AsString            := 'S';

      case ADocZip.schema of
        schresCTe, schprocCTe:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString     := ADocZip.resDFe.CNPJCPF;
          QuerFilho.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString := ADocZip.resDFe.xNome;
          QuerFilho.FieldByName('NF_CHAVE').AsString                := ADocZip.resDFe.chDFe;
          QuerFilho.FieldByName('NF_SITUACAO').AsString             := SituacaoDFeToCodigo(ADocZip.resDFe.cSitDFe);
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime         := ADocZip.resDFe.dhEmi;
          QuerFilho.FieldByName('NF_TOTAL').AsFloat                 := ADocZip.resDFe.vNF;
          if Length(ADocZip.resDFe.chDFe) = 44 then
            QuerFilho.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64(Copy(ADocZip.resDFe.chDFe, 26, 9));  // LargeInt Fora do Padrão
        end;
        schresEvento:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString := ADocZip.resEvento.CNPJCPF;
          QuerFilho.FieldByName('NF_CHAVE').AsString            := ADocZip.resEvento.chDFe;
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime     := ADocZip.resEvento.dhEvento;
        end;
        schprocEventoCTe:
        begin
          QuerFilho.FieldByName('NF_CNPJCPF_EMITENTE').AsString := ADocZip.procEvento.CNPJ;
          QuerFilho.FieldByName('NF_CHAVE').AsString            := ADocZip.procEvento.chDFe;
          QuerFilho.FieldByName('NF_DT_EMISSAO').AsDateTime     := ADocZip.procEvento.dhEvento;
          if ADocZip.procEvento.tpEvento in [teMDFeAutorizado2] then
            QuerFilho.FieldByName('NF_MANIFESTO').AsString := ManifestoDFeToCodigo(ADocZip.procEvento.tpEvento);

        end;

        ////////// Fim Insert Filho \\\\\\\\\\\
      end;



      ////////// Edit Pai \\\\\\\\\\\
      QuerEditaPai.SQL.Text := 'select * from NF_ENTRADA_MANIFESTO where NF_CHAVE = :Chave';
      QuerEditaPai.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
      QuerEditaPai.Open;



      if not(QuerEditaPai.IsEmpty) then
      begin
        QuerEditaPai.Edit;

        QuerVerificaCompra.SQL.Text := 'select * from NF_ENTRADA where NF_CHAVE = :Chave';
        QuerVerificaCompra.ParamByName('Chave').Value := ADocZip.resDFe.chDFe;
        QuerVerificaCompra.Open;

        if QuerVerificaCompra.RecordCount > 0 then
        begin
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'S';
          QuerEditaPai.FieldByName('CODNF_ENTRADA').AsString := QuerVerificaCompra.FieldByName('CODIGO').AsString;
          QuerEditaPai.FieldByName('SITUACAO').AsString := '4. FINALIZADO';
        end
        else
          QuerEditaPai.FieldByName('TEM_COMPRA').AsString    := 'N';

        if QuerEditaPai.FieldByName('NF_SITUACAO').AsString <> QuerFilho.FieldByName('NF_SITUACAO').AsString then
          QuerEditaPai.FieldByName('NF_SITUACAO').AsString := QuerFilho.FieldByName('NF_SITUACAO').AsString;

        if QuerFilho.FieldByName('SCHEMA').AsString = 'procCTe' then
        begin
          AACBrCTe.Conhecimentos.Clear;
          AACBrCTe.Conhecimentos.LoadFromString(ADocZip.XML);
          if AACBrCTe.Conhecimentos.items[0].CTe.infCTeNorm.infDoc.infNFe.count > 0 then
            QuerEditaPai.FieldByName('NF_REFERENCIA').AsString := AACBrCTe.Conhecimentos.items[0].CTe.infCTeNorm.infDoc.infNFe[0].chave;
          QuerEditaPai.FieldByName('TEM_NOTA').AsString := 'S';
          QuerEditaPai.FieldByName('SITUACAO').AsString := '3. LANÇAR NA COMPRA';
        end
        else
        begin
          QuerEditaPai.FieldByName('TEM_NOTA').AsString := 'N';
          QuerEditaPai.FieldByName('SITUACAO').AsString := '1. NOVO';
        end;


        QuerEditaPai.Post;
      end;
        ////////// Fim Edit Pai \\\\\\\\\\\
      QuerFilho.Post;
    end;

    ATransa.Commit;
  finally
    QuerPai.Free;
    QuerVerificaCompra.Free;
    QuerEditaPai.Free;
    QuerFilho.Free;
    ATransa.Free;
  end;
end;

class function TFrmNFe.GravaRetornoCartaCorrecaoNoBanco(AACBrNFe: TACBrNFe): Integer;
var
  i: Integer;
begin
  with AACBrNFe.WebServices.EnvEvento.EventoRetorno do
  begin
    for I := 0 to retEvento.Count - 1 do
    begin
      if retEvento[i].RetInfEvento.tpEvento = TpcnTpEvento.teCCe then
      begin
        Result := GravaRetornoEventoNoBanco(retEvento[i].RetInfEvento, '');
        Exit;
      end;
    end;
  end;
end;

class function TFrmNFe.GravaRetornoConsultaNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  {$REGION 'Campos não gravados da consulta'}
   { Campos não salvos no banco:
    property versao: String read Fversao;
    property verAplic: String read FverAplic;
    property cUF: integer read FcUF;
    property RetNFeDFe: String read FRetNFeDFe;

    property protNFe: TProcNFe read FprotNFe;
    property retCancNFe: TRetCancNFe read FretCancNFe;
    property procEventoNFe: TRetEventoNFeCollection read FprocEventoNFe;
    }
  {$ENDREGION}
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, ARQUIVO_XML, NF_PROTOCOLO, NF_DT_EMISSAO, NF_CSTAT, NF_AMBIENTE, NF_CHAVE, ' +
                      '       NF_MOTIVO_STATUS, CODEMPRESA, NF_SITUACAO ' +
                      'from NOTA_FISCAL ' +
                      'where (CODVENDA = :CodVenda)';
    QuerX.ParamByName('CODVENDA').AsString := ACodVenda;
    QuerX.Open;
    if QuerX.IsEmpty  then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger          := GetProximoCodigoSP('NOTA_FISCAL');
      QuerX.FieldByName('CODEMPRESA').AsInteger      := StrToInt(EmpresaAtiva);
    end
    else
      QuerX.Edit;
    with AACBrNFe.WebServices.Consulta do
    begin
      QuerX.FieldByName('ARQUIVO_XML').AsString      := ArqResp;
      QuerX.FieldByName('NF_PROTOCOLO').AsString     := Protocolo;
      QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime  := DhRecbto;
      QuerX.FieldByName('NF_CSTAT').AsInteger        := cStat;
      QuerX.FieldByName('NF_AMBIENTE').AsString      := TpAmbToStr(TpAmb);
      QuerX.FieldByName('NF_CHAVE').AsString         := TrataChaveNF(NFeChave);
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := XMotivo;
      QuerX.FieldByName('NF_SITUACAO').AsString      := GetCStatDescricao(cStat);
    end;
//    QuerX.FieldByName('CODVENDA').AsString           := ACodVenda;
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class function TFrmNFe.GravaInutilizacaoNoBanco(AACBrNFe: TACBrNFe): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  AInutilizacao: TNFeInutilizacao;
begin
  {$REGION 'Campos não gravados da consulta'}
    { Campos não salvos no banco:
    property ID: String read FID write FID;
    property CNPJ: String read FCNPJ write FCNPJ;
    property Ano: integer read FAno write FAno;
    property versao: String read Fversao;
    property verAplic: String read FverAplic;
    property cUF: integer read FcUF;
    property NomeArquivo: String
    }
  {$ENDREGION}
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, NF_MODELO, SERIE, NF_AMBIENTE, ARQUIVO_XML, NF_PROTOCOLO, NF_DT_INUTILIZACAO, ' +
                      '       NF_CSTAT, MOTIVO_INUTILIZACAO, NF_MOTIVO_STATUS, TIPO, NF_NUM_INICIAL_INUTILIZACAO, ' +
                      '       NF_NUM_FINAL_INUTILIZACAO, CODEMPRESA ' +
                      'from NOTA_FISCAL ' +
                      'where (CODIGO = 0)';
    QuerX.Open;
    QuerX.Insert;
    AInutilizacao := AACBrNFe.WebServices.Inutilizacao;
    QuerX.FieldByName('CODIGO').AsInteger                      := GetProximoCodigoSP('NOTA_FISCAL');
    QuerX.FieldByName('CODEMPRESA').AsInteger                  := StrToInt(EmpresaAtiva);
    QuerX.FieldByName('NF_MODELO').AsInteger                   := AInutilizacao.Modelo;
    QuerX.FieldByName('SERIE').AsInteger                       := AInutilizacao.Serie;
    QuerX.FieldByName('NF_AMBIENTE').AsString                  := TpAmbToStr(AInutilizacao.TpAmb);
    QuerX.FieldByName('ARQUIVO_XML').AsString                  := AInutilizacao.XML_ProcInutNFe;
    QuerX.FieldByName('NF_PROTOCOLO').AsString                 := AInutilizacao.Protocolo;
    QuerX.FieldByName('NF_DT_INUTILIZACAO').AsDateTime         := AInutilizacao.dhRecbto;
    QuerX.FieldByName('NF_CSTAT').AsInteger                    := AInutilizacao.cStat;
    QuerX.FieldByName('MOTIVO_INUTILIZACAO').AsString          := AInutilizacao.Justificativa;
    QuerX.FieldByName('NF_MOTIVO_STATUS').AsString             := AInutilizacao.xMotivo;
    QuerX.FieldByName('TIPO').AsString                         := NotaFiscalTipoRegistroToStr(nftrNFeInutilizacao);
    QuerX.FieldByName('NF_NUM_INICIAL_INUTILIZACAO').AsInteger := AInutilizacao.NumeroInicial;
    QuerX.FieldByName('NF_NUM_FINAL_INUTILIZACAO').AsInteger   := AInutilizacao.NumeroFinal;
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class function TFrmNFe.GravaNFeNoBanco(AACBrNFe: TACBrNFe; ACodVenda: string): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ANFe: ACBrNFeNotasFiscais.NotaFiscal;
begin
  Result := 0;
  if (AACBrNFe.NotasFiscais.Count <= 0) or (AACBrNFe.NotasFiscais[0].NFe.Ide.nNF = 0) then
    Exit;
  ANFe := AACBrNFe.NotasFiscais[0];

  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    //Caso a nota já exista no banco, ela deve ser apenas atualizada. Qualquer informação anterior dela deve
    //ser ignorada. Aqui considera-se que uma consulta foi feita ao sefaz e os dados contidos no XML correspondem
    //a atual situação da nota.
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL ' +
                      'where (NF_CHAVE = :Chave)' +
                      '      and (NF_MODELO = :Modelo)' +
                      '      and (NF_AMBIENTE = :Ambiente)';
    QuerX.ParamByName('Chave').AsString    := TrataChaveNF(ANFe.NFe.infNFe.ID);
    QuerX.ParamByName('Modelo').AsInteger  := ANFe.NFe.Ide.modelo;
    QuerX.ParamByName('Ambiente').AsString := TpAmbToStr(ANFe.NFe.Ide.tpAmb);

//    QuerX.ParamByName('Numero').AsInteger  := ANFe.NFe.Ide.nNF;
//    QuerX.ParamByName('Serie').AsInteger   := ANFe.NFe.Ide.serie;
//    QuerX.ParamByName('Modelo').AsInteger  := ANFe.NFe.Ide.modelo;
//    QuerX.ParamByName('CNPJ').AsString     := GetCNPJEmitente(ANFe);
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger := GetProximoCodigoSP('NOTA_FISCAL');
    end else
      QuerX.Edit;
    PreencheDadosNF(QuerX, AACBrNFe, ACodVenda);
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;


//////////////////////////////////////FIM IMPORTAR XML ////////////////////////////////////////
{$ENDREGION}

{$REGION 'IMPRIMIR NOTA'}
//////////////////////////////////////IMPRIMIR NOTA////////////////////////////////////////

procedure TFrmNFe.PreencheComponenteImpressaoDANFE;
var
  AStringStream : TStringStream;
  AFr3 : string;
begin
{  if ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
    case CbDANFE.ItemIndex of
      0 : begin  //Fast Report
            if not TDMImpressao.CarregaArquivoFR3NotaFiscal(AFr3, tafr3DANFE) then
              Abort;
            AStringStream := TStringStream.Create;
            try
              AStringStream.WriteString(TDMImpressao.CarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger));
              ForceDirectories(ExtractFilePath(ACBrNFeDANFEFR1.Logo));
              AStringStream.SaveToFile(ACBrNFeDANFEFR1.Logo);
            finally
              AStringStream.Free;
            end;
            ACBrNFeDANFEFR1.FastFile := AFr3;
          end;
      1 : begin  //Fortes Report
            ACBrNFeDANFeRL1.Logo := TDMImpressao.CarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger);
          end;
    end;
  end else
  begin
    case CbDANFE.ItemIndex of
      0 : begin  //Fast Report
            if not (TDMImpressao.CarregaArquivoFR3NotaFiscal(AFr3, tafr3DANFeNFCe)) then
              Abort;
            AStringStream := TStringStream.Create;
            try
              AStringStream.WriteString(TDMImpressao.CarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger));
              ForceDirectories(ExtractFilePath(ACBrNFeDANFEFR1.Logo));
              AStringStream.SaveToFile(ACBrNFeDANFEFR1.Logo);
            finally
              AStringStream.Free;
            end;
            ACBrNFeDANFEFR1.TipoDANFE := tiNFCe;
            ACBrNFeDANFEFR1.FastFile := AFr3;
          end;
      1 : begin  //Fortes Report
            ACBrNFe1.DANFE := ACBrNFeDANFCeFortesA41;
            ACBrNFeDANFCeFortesA41.ACBrNFe := ACBrNFe1;

            ACBrNFeDANFCeFortesA41.TipoDANFE := tiNFCe;
            ACBrNFeDANFCeFortesA41.Logo := TDMImpressao.CarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger);
          end;
    end;
  end;      }
end;

class procedure TFrmNFe.ImprimirNota(AACBrNFe: TACBrNFe; ATipoAbertura: TNotaFiscalTipoAbertura = anVisualizar);
var
  AOk: Boolean;
  AOldPath, AArquivo, AErro: string;
  AFolderDialog: TOpenFolderDialog;
begin
  Assert(AACBrNFe.NotasFiscais.Count > 0, 'É necessário ter a nota carregada');

  //Ajusta o Modelo da nota (NFe ou NFCe)
  AACBrNFe.Configuracoes.Geral.ModeloDF := StrToModeloDF(AOk, IntToStr(AACBrNFe.NotasFiscais[0].NFe.Ide.modelo));

  ConfiguraDANFe(AACBrNFe);
  AACBrNFe.DANFE.Cancelada := AACBrNFe.CstatCancelada(AACBrNFe.NotasFiscais[0].NFe.procNFe.cStat);

  //Verifica se a assinatura da nota é válida para evitar impressão de notas não assinadas sem que esta informação
  //esteja clara na impressão
  if {$IFNDEF DEBUG} (AACBrNFe.NotasFiscais[0].NFe.Ide.tpAmb = taProducao) and {$ENDIF}
     not AACBrNFe.NotasFiscais.VerificarAssinatura(AErro) then
  begin
    if AACBrNFe.DANFE is TACBrNFeDANFeFR then
      TACBrNFeDANFeFR(AACBrNFe.DANFE).MarcaDaguaMSG := 'Assinatura Inválida'
    else if AACBrNFe.DANFE is TACBrNFeDANFeRL then
      TACBrNFeDANFeRL(AACBrNFe.DANFE).MarcadAgua := 'Assinatura Inválida';
  end;

  case ATipoAbertura of
    anVisualizar: AACBrNFe.NotasFiscais.Imprimir;
    anSalvarPDF:
    begin
      AOldPath := AACBrNFe.DANFE.PathPDF;
      AFolderDialog := TOpenFolderDialog.Create(nil);
      try
        if not AFolderDialog.Execute then
          Exit;
        AACBrNFe.DANFE.PathPDF := AFolderDialog.FolderName;
        AACBrNFe.NotasFiscais.ImprimirPDF;
        AArquivo := AACBrNFe.DANFE.PathPDF +
                    StringReplace(AACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID, 'NFe', '', [rfIgnoreCase])
                    + '-nfe.pdf';
        if FilesExists(AArquivo) then
          ShowMessageWR('Arquivo PDF gerado no caminho: ' + sLineBreak + AArquivo);
      finally
        AACBrNFe.DANFE.PathPDF := AOldPath;
        AFolderDialog.Free;
      end;
    end;
  end;
end;

//////////////////////////////////////IMPRIMIR NOTA////////////////////////////////////////
{$ENDREGION}

{$REGION 'Funções tratamento de Erros'}


class function TFrmNFe.BuscaChaveDuplicadaEmissao(AACBrNFe: TACBrNFe): string;
begin
  Result := Copy(AACBrNFe.WebServices.Retorno.RetornoWS, Pos('na Chave de Acesso [chNFe:',AACBrNFe.WebServices.Retorno.RetornoWS)+26,44);
end;

class function TFrmNFe.BuscaChaveDuplicadaConsulta(AACBrNFe: TACBrNFe): string;
begin
  if AACBrNFe.WebServices.Consulta.cStat = 613 then
    Result := Copy(AACBrNFe.WebServices.Consulta.XMotivo, Pos('da NF-e [', AACBrNFe.WebServices.Consulta.XMotivo) + 9, 44)
end;

class procedure TFrmNFe.BaixarTabelaErrosNF;
var
  AFtp: TWRFtp;
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ALinha, ANovos, AAtualizados: Integer;
  AFrmAguarde: TFrmAguarde;
begin
 { AFtp := TWRFtp.Create;
  AArquivoINI := TMemoryStream.Create;
  ASpreadSheet := TdxSpreadSheet.Create(nil);
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Baixando lista de erros atualizada...';

    //Baixa o arquivo
    AFtp.Conectar;
    AFtp.IrParaPasta('Schemas');
    AFtp.BaixarArquivoParaStream('Erros_NF.ini', AArquivoINI);

    AFrmAguarde.Mensagem := 'Importando dados';
    //Carrega no SpreadSheet
    ASpreadSheet.LoadFromStream(AArquivoINI);
    ASheet := TdxSpreadSheetTableView(ASpreadSheet.Sheets[0]);

    //Importa os dados
    QuerX.SQL.Text := 'select CODIGO, ERRO, TIPO_DOCUMENTO, DESCRICAO, TELA, COMPONENTE, LINK, OBSERVACAO ' +
                      'from NF_ERROS ' +
                      'where (Codigo = :Codigo) ';
    AFrmAguarde.ProgressoMaximo := ASheet.Dimensions.Height;
    ANovos       := 0;
    AAtualizados := 0;
    for ALinha := 1 to ASheet.Dimensions.Height - 1 do
    begin
      if ASheet.Cells[ALinha, 1].AsInteger = 0 then
        Continue;

      QuerX.Close;
      QuerX.ParamByName('Codigo').AsInteger  := ASheet.Cells[ALinha, 0].AsInteger;
      QuerX.Open;
      if QuerX.IsEmpty then
      begin
        QuerX.Insert;
        QuerX.FieldByName('CODIGO').AsInteger        := ASheet.Cells[ALinha, 0].AsInteger;
        Inc(ANovos);
      end else
      begin
        QuerX.Edit;
        Inc(AAtualizados);
      end;
      QuerX.FieldByName('ERRO').AsInteger          := ASheet.Cells[ALinha, 1].AsInteger;
      QuerX.FieldByName('TIPO_DOCUMENTO').AsString := ASheet.Cells[ALinha, 2].AsString;
      QuerX.FieldByName('DESCRICAO').AsString := ASheet.Cells[ALinha, 3].AsString;
      QuerX.FieldByName('TELA').AsString      := ASheet.Cells[ALinha, 4].AsString;
      QuerX.FieldByName('COMPONENTE').AsString:= ASheet.Cells[ALinha, 5].AsString;
      QuerX.FieldByName('LINK').AsString      := ASheet.Cells[ALinha, 6].AsString;
      QuerX.FieldByName('OBSERVACAO').AsString:= ASheet.Cells[ALinha, 7].AsString;
      QuerX.Post;
      AFrmAguarde.AvancarProgresso;
    end;

    ComitaTransacao(ATransa);
    AFrmAguarde.Close;
    ShowMessageWR('Operação concluída com sucesso.' + sLineBreak +
                  IntToStr(ANovos) + ' itens novos inseridos.' + sLineBreak +
                  IntToStr(AAtualizados) + ' itens atualizados.');
  finally
    QuerX.Free;
    ATransa.Free;
    AFtp.Free;
    AArquivoXLS.Free;
    ASpreadSheet.Free;
    AFrmAguarde.Free;
  end;   }
end;

class function TFrmNFe.BuscaNotaDuplicada(const AACBrNFe, ANotaEncontrada: TACBrNFe; const AChave: string): Boolean;
var
  ANomeArquivo: string;
  QuerX: TFDQuery;
  AStrings: TStringList;
  I: Integer;

  function LAvaliaNota: Boolean;
  begin
    Result := False;
    if ANotaEncontrada.NotasFiscais.Count = 0 then
      Exit;
    Result := ComparaNotasFiscais(AACBrNFe, ANotaEncontrada);
    Result := Result and AACBrNFe.CstatConfirmada(ANotaEncontrada.NotasFiscais[0].NFe.procNFe.cStat);
    Result := Result and ANotaEncontrada.NotasFiscais[0].VerificarAssinatura;
  end;
begin
  {Quando a chave veio duplicada, deu merda!!! Tem que ter um jeito de encontrar onde está a verdadeira nota e
   comparar os dados para saber se esta nota atual é a mesma nota da chave duplicada
   1º: tentamos encontrar no próprio banco pra ver se essa chave existe
   2º: buscamos nos arquivos XML na pasta por essa chave

  204 Duplicidade de NF-e [nRec:999999999999999]
  561 Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e
  562 Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NF-e [chNFe:99999999999999999999999999999999999999999999]
  613 Rejeição: Chave de Acesso difere da existente em BD
  635 Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento
  }

  Assert(AACBrNFe.NotasFiscais.Count > 0, 'Deve ter alguma nota carregada para tratar a duplicidade!');
  Result := False;

  AStrings := TStringList.Create;
  try
    //Tentativa 1: Banco de Dados
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select ARQUIVO_XML, NF_CSTAT ' +
                        'from NOTA_FISCAL ' +
                        'where (NF_CHAVE = :Chave) ' +
                        '      and (TIPO = :Tipo) ' +
                        '      and (NF_AMBIENTE = :Ambiente)';
      QuerX.ParamByName('Chave').AsString     := AChave;
      QuerX.ParamByName('Tipo').AsString      := NotaFiscalTipoRegistroToStr(nftrNFe);
      QuerX.ParamByName('Ambiente').AsInteger := StrToInt(TpAmbToStr(AACBrNFe.NotasFiscais[0].NFe.Ide.tpAmb));
      QuerX.Open;
      while not QuerX.Eof do
      begin
        TFrmNFe.CarregaNota(QuerX, ANotaEncontrada);
        Result := LAvaliaNota;
        if Result then
          Exit;
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;

    if not Result then
    begin
      //Tentativa 2: Arquivos XML
      ListarArquivosDiretorio(AACBrNFe.Configuracoes.Arquivos.PathNFe, True, AStrings);
      for I := 0 to AStrings.Count - 1 do
      begin
        ANomeArquivo := ExtractFileName(AStrings[i]);
        if AnsiEndsText('.xml', ANomeArquivo) and AnsiContainsText(ANomeArquivo, AChave) then
        begin
          ANotaEncontrada.NotasFiscais.Clear;
          ANotaEncontrada.NotasFiscais.LoadFromFile(AStrings[i]);
          Result := LAvaliaNota;
          if Result then
            Exit;
        end;
      end;
    end;
  finally
    AStrings.Free;

    //Se não encontrou, limpa qualquer possível resultado no componente de retorno
    if not Result then
      ANotaEncontrada.NotasFiscais.Clear;
  end;
end;

class function TFrmNFe.TrataTimeOut(const AACBrNFe: TACBrNFe; const ACodVenda: string): Boolean;
var
  ANewNFe: TACBrNFe;
  i: Integer;
begin
  Result := False;
  ANewNFe := TFrmNFe.CriaComponenteACBrNFe;
  try
    ANewNFe.WebServices.Consulta.NFeChave := AACBrNFe.NotasFiscais[0].NumID;
    for I := 0 to 10 do
    begin
      try
        {Retorna True caso o cStat seja algum Processado, Confirmado ou Cancelado. Se der erro na consulta, é gerado
         uma exceção}
        Result := ANewNFe.WebServices.Consulta.Executar;
      except
      end;
      if Result then
      begin
        if ANewNFe.NotasFiscais.Count > 0 then
        begin
          TFrmNfe.GravaNFeNoBanco(ANewNFe, ACodVenda);

          //Caso retorne a nota na consulta, substitui a nota emitida no sistema pela nota retornada da sefaz
          AACBrNFe.NotasFiscais.Clear;
          AACBrNFe.NotasFiscais.Add.NFe.Assign(ANewNFe.NotasFiscais[0].NFe);
        end else
           // Se não tiver nota fiscal completa trouxe apenas a autorização de uso (CONSULTA)
          TFrmNFe.GravaRetornoConsultaNoBanco(ANewNFe, ACodVenda);
        Break;
      end;
    end;
  finally
    ANewNFe.Free;
  end;
end;
{$ENDREGION}

class function TFrmNFe.CriaComponenteACBrNFe: TACBrNFe;
begin
  try
    Result := TACBrNFe.Create(nil);
    Result.OnTransmitError := TEventTransmitError.TransmitErrorTempoExecucao;
    CarregaConfiguracoesIniNFe(Result, Empresa);
  finally
  end;
end;

class procedure TFrmNFe.VisualizarNotaEntrada(ACodigo: String);
var
  AACBrNFe: TACBrNFe;
  QuerX: TFDQuery;
  AOk: Boolean;
  ASchema: TSchemaDFe;
  I: Integer;
  ATmp, ADiretorio: string;
  AStringStream: TStringStream;
begin
  AACBrNFe := TACBrNFe.Create(nil);
  CarregaConfiguracoesIniNFe(AACBrNFe, Empresa);
  ConfiguraDANFe(AACBrNFe);
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select ARQUIVO_XML, SCHEMA, NF_CHAVE ' +
                      'from NOTA_FISCAL_ENTRADA ' +
                      'where (NF_CHAVE = :Chave) and (SCHEMA = ''procNFe'')';
    QuerX.Params[0].AsString := ACodigo;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      ShowMessageWR('Nota não localizada, pressione manifestar e envie a ciência da operação para liberar a nota', MB_ICONWARNING);
      Exit;
    end;

    ADiretorio := TDirectory.GetParent(ExcludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathNFe));

    ASchema := SchemaDFeFromCodigo(AOk, QuerX.FieldByName('SCHEMA').AsString);
    case ASchema of
      schprocNFe:
      begin
        if AACBrNFe.DANFE is TACBrNFeDANFEFR then
        begin  //Fast Report
          DMImpressaoCarregaArquivoFR3(ATmp, TipoArquivoFR3ToStr(tafr3DANFE));
          TACBrNFeDANFEFR(AACBrNFe.DANFE).FastFile := ATmp;
        end;

        AACBrNFe.NotasFiscais.LoadFromString(QuerX.FieldByName('ARQUIVO_XML').AsString);
        if AACBrNFe.NotasFiscais.Count = 0 then
        begin
          ShowMessageWR('Não foi possível carregar o XML desta nota', MB_ICONWARNING);
          Exit;
        end;
        for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
          AACBrNFe.NotasFiscais[i].Imprimir;
      end;
      schresNFe:
      begin
        ATmp := GetDirTemp + QuerX.FieldByName('NF_CHAVE').AsString + '-resNFe.xml';
        TBlobField(QuerX.FieldByName('ARQUIVO_XML')).SaveToFile(ATmp);
        RunCommand(ATmp);
      end;
      schresEvento, schprocEventoNFe:
      begin
        if (AACBrNFe.DANFE is TACBrNFeDANFEFR) and DMImpressaoCarregaArquivoFR3(ATmp, TipoArquivoFR3ToStr(tafr3EVENTOS)) then
        begin
          AStringStream := TStringStream.Create;
          try
            AStringStream.WriteString(ATmp);
            TACBrNFeDANFEFR(AACBrNFe.DANFE).FastFileEvento := AStringStream.DataString;
          finally
            AStringStream.Free;
          end;
        end;

        //Impressão do Evento
//        AACBrNFe.NotasFiscais.Clear;
//        AACBrNFe.NotasFiscais.LoadFromString(QuerX.FieldByName('XML_NOTA').AsString);

        AACBrNFe.EventoNFe.Evento.Clear;
        ATmp := QuerX.FieldByName('ARQUIVO_XML').AsString;
        if ASchema = schresEvento then
        begin
          ATmp := '<evento>' + ATmp + '</evento>';
          ATmp := ReplaceStr(ATmp, 'resEvento', 'infEvento');
        end;
        AACBrNFe.EventoNFe.LerXMLFromString(ATmp);
        AACBrNFe.ImprimirEvento;
      end;
    end;
  finally
    AACBrNFe.Free;
    QuerX.Free;
  end;
end;

class function TFrmNFe.BaixarXMLdaNFe(ANFChave: string; AGravarEmDisco, AEmSilencio: Boolean;
  out ACaminho: string): string;
var
  AXmlNFe: TStringStream;
  AEstado: TEstado;
  AACBrNFe: TACBrNFe;
  AFormAguarde: TFrmAguarde;
  I: Integer;
  AZip: TdocZipCollectionItem;
begin
  {$REGION 'Validações'}
  ANFChave := OnlyNumberWR(ANFChave);
  if ANFChave = '' then
  begin
    ShowMessageWR('A Chave deve ser informada.', MB_ICONWARNING);
    Exit;
  end;
  if not TFrmPerguntaEstado.PerguntaEstado('Selecione o Estado do autor da nota', AEstado) then
    Exit;
  {$ENDREGION}

  AACBrNFe := TFrmNFe.CriaComponenteACBrNFe;
  AFormAguarde := TFrmAguarde.Create(nil);
  try
    {$REGION 'Download'}
    AFormAguarde.Show;
    AFormAguarde.Mensagem := 'Consultando SEFAZ...';
    try
      //Caso 656 bloquar por 1 hora quando passar do limite de 20 consulta    and
      AACBrNFe.DistribuicaoDFePorChaveNFe(EstadoToCodigoUF(AEstado), Empresa.FieldByName('CNPJCPF').AsString, ANFChave);
    except
      on E:Exception do
      begin
        AFormAguarde.Close;
        if not AEmSilencio then
          ShowMessageWR('Não foi possível baixar o XML da Nota: ' + sLineBreak + E.Message, MB_ICONWARNING);
        Exit;
      end;
    end;
    AFormAguarde.Close;
    {$ENDREGION}

    for i := 0 to AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
    begin
      AZip := AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip[i];
      TFrmNFe.GravarXMLNotaEntradaNoBanco(Empresa.FieldByName('CODIGO').AsInteger, AZip);
//      TFrmNFe.ManifestoDoDestinatario
    end;

    if AACBrNFe.NotasFiscais.Count = 1 then
    begin
      AXmlNFe := TStringStream.Create;
      try
        GravaXMLNFeToStream(AACBrNFe, AXmlNFe);
        Result := AXmlNFe.DataString;
        if AGravarEmDisco then
        begin
          ACaminho := IncludeTrailingPathDelimiter(AACBrNFe.Configuracoes.Arquivos.PathSalvar) + ANFChave + '-nfe.XML';
          AXmlNFe.SaveToFile(ACaminho);
        end;
      finally
        AXmlNFe.Free;
      end;
      if not AEmSilencio then
        ShowMessageWR('Download efetuado com sucesso!');
    end
    else if not AEmSilencio then
      ShowMessageWR(AACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo);
  finally
    AACBrNFe.Free;
    AFormAguarde.Free;
  end;
end;

class function TFrmNFe.ConsultaCadastro(cUF, nDocumento, nIE: string): TFSCConsultaCNPJResposta;
var
  Documento: String;
  AConsultaNFe: TInfCadCollectionItem;
  AACBrNFe: TACBrNFe;
begin
  // Mostrar Panel Consultando
  // Solicitar CNPJ ou Estado quando não tiver
  // Falta aguns dados para preencher
  // Verificar Quais campos Estão em branco para não matar as informações digitadas

  // Depois de ajustar os retornos Colocar na consulta de pessoas para atualizar os selecionados
  // Se tiver certificado digital válido fazer essa rotina ser a principal

  Documento := Trim(OnlyNumber(nDocumento));
  AACBrNFe := CriaComponenteACBrNFe;
  try
    AACBrNFe.WebServices.ConsultaCadastro.UF := cUF;
    if Length(Documento) > 11 then
      AACBrNFe.WebServices.ConsultaCadastro.CNPJ := Documento
    else
      AACBrNFe.WebServices.ConsultaCadastro.CPF := Documento;

    AACBrNFe.WebServices.ConsultaCadastro.Executar;
    AConsultaNFe:= AACBrNFe.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0];
    Result.Sucesso            := False;
    if AConsultaNFe.xNome<>'' then
    begin
      Result.Sucesso            := True;
      Result.Erro               := AACBrNFe.WebServices.ConsultaCadastro.xMotivo;
      Result.CNPJ               := Documento;
      Result.EmpresaTipo        := AConsultaNFe.xRegApur;
      Result.RazaoSocial        := AConsultaNFe.xNome;
      Result.Fantasia           := AConsultaNFe.xFant;
      Result.CNAE1              := IntToStr(AConsultaNFe.CNAE);
      Result.Endereco           := AConsultaNFe.xLgr;
      Result.Numero             := AConsultaNFe.nro;
      Result.Complemento        := AConsultaNFe.xCpl;
      Result.CEP                := IntToStr(AConsultaNFe.CEP);
      Result.Bairro             := AConsultaNFe.xBairro;
      Result.Cidade             := AConsultaNFe.xMun;
      Result.UF                 := AConsultaNFe.UF;
      Result.IBGE_Municipio     := IntToStr(AConsultaNFe.cMun);
      Result.IBGE_UF            := AConsultaNFe.UF;

//      Result.EndEletronico      := AConsultaNFe.UF
//      Result.Telefone           := AConsultaNFe.UF
//      Result.EFR                := AConsultaNFe.UF;
      Result.Situacao           := IntToStr(AConsultaNFe.cSit);  // Situação do contribuinte: 0 - não habilitado; 1 - habilitado
      Result.NaturezaJuridica   := AConsultaNFe.xRegApur;
      Result.MotivoSituacaoCad  := AACBrNFe.WebServices.ConsultaCadastro.xMotivo;
      Result.DataSituacao       := AConsultaNFe.dUltSit;
      Result.Abertura           := AConsultaNFe.dIniAtiv;
      Result.dt_Baixa           := AConsultaNFe.dBaixa;
      Result.IE                 := AConsultaNFe.IE;

// ***    Result.FindCredNFe       := AConsultaNFe.FindCredNFe;
//        Indicador de contribuinte credenciado a emitir NF-e.
//        0 - Não credenciado para emissão da NF-e;
//        1 - Credenciado;
//        2 - Credenciado com obrigatoriedade para todas operações;3 - Credenciado com obrigatoriedade parcial; 4 – a SEFAZ não fornece a informação.
//        Este indicador significa apenas que o contribuinte é credenciado para emitir NF-e na SEFAZ consultada.

// ***     Result.FindCredCTe       := AConsultaNFe.FindCredCTe;
//        Indicador de contribuinte credenciado a emitir CT-e.
//        0 - Não credenciado para emissão da CT-e;
//        1 - Credenciado;
//        2 - Credenciado com obrigatoriedade para todas operações;3 - Credenciado com obrigatoriedade parcial; 4 – a SEFAZ não fornece a informação.
//        Este indicador significa apenas que o contribuinte é credenciado para emitir CT-e na SEFAZ consultada.

//      Result.IEUnica           := AConsultaNFe.IEUnica;   IE única, este campo será informado quando o contribuinte possuir IE única.    	2 a 14
//      Result.IEAtual           := AConsultaNFe.IEAtual;   IE atual (em caso de IE antiga consultada)       	2 a 14

    end;
  finally
    AACBrNFe.Free;
  end;
end;

class function TFrmNFe.ConsultaNotaSEFAZ(ADataSetNotaFiscal: TDataSet; const AACBrNFe: TACBrNFe): Boolean;
var
  I, J: Integer;
  AEvento: TRetInfEvento;
  ARetEvento: TRetEventoNFe;
  AChaveDuplicidade: string;
  ABusca: TACBrNFe;
  AFrmAguarde: TFrmAguarde;
  AXmlNFe: TStringStream;
begin
  Assert(AACBrNFe.NotasFiscais.Count > 0, 'Deve haver uma nota carregada no componente para consulta');

  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Consultando ' + GetModeloDescricao(AACBrNFe.NotasFiscais[0].NFe.Ide.modelo) + ' nº ' + IntToStr(AACBrNFe.NotasFiscais[0].NFe.Ide.nNF) + ' na SEFAZ';
    AACBrNFe.WebServices.Consulta.NFeChave := AACBrNFe.NotasFiscais[0].NumID;
    AACBrNFe.WebServices.Consulta.Executar;

    {Atualiza a situação atual da nota
     Aqui a consulta retorna apenas o status da nota, e este é atualizado ao final do XML na tag <procNFe>. O restante
     do arquivo XML é o mesmo gerado localmente, ele não é retornado na consulta.}
    AlteraDataSet(ADataSetNotaFiscal);
    AXmlNFe := TStringStream.Create;
    try
      GravaXMLNFeToStream(AACBrNFe, AXmlNFe);
      TBlobField(ADataSetNotaFiscal.FieldByName('ARQUIVO_XML')).LoadFromStream(AXmlNFe);
    finally
      AXmlNFe.Free;
    end;
    ADataSetNotaFiscal.FieldByName('NF_CSTAT').AsInteger        := AACBrNFe.WebServices.Consulta.cStat;
    ADataSetNotaFiscal.FieldByName('NF_SITUACAO').AsString      := GetCStatDescricao(AACBrNFe.WebServices.Consulta.cStat);
    ADataSetNotaFiscal.FieldByName('NF_PROTOCOLO').AsString     := AACBrNFe.WebServices.Consulta.Protocolo;
    ADataSetNotaFiscal.FieldByName('NF_MOTIVO_STATUS').AsString := AACBrNFe.WebServices.Consulta.xMotivo;
    ADataSetNotaFiscal.FieldByName('TOTAL').AsCurrency            := AACBrNFe.NotasFiscais[0].NFe.Total.ICMSTot.vNF;

    //Trata em caso de duplicidade
    if IsCStatDuplicidade(AACBrNFe.WebServices.Consulta.cStat) then
    begin
      {Quanto o cStat for 613, nós sabemos que a chave da nota duplicada vem no XMotivo em forma de texto, aqui tratamos o
       texto pra extrair a chave e buscar essa nota.
       !!! Colocar aqui o tratamento para obter a chave duplicada em cada cStat !!!}
      if AACBrNFe.WebServices.Consulta.cStat = 613 then
        AChaveDuplicidade := Copy(AACBrNFe.WebServices.Consulta.XMotivo, Pos('da NF-e [', AACBrNFe.WebServices.Consulta.XMotivo) + 9, 44)
      else
        Exit;

      ABusca := TFrmNFe.CriaComponenteACBrNFe;
      try
        if BuscaNotaDuplicada(AACBrNFe, ABusca, AChaveDuplicidade) then
        begin
          Assert(False);
          //TODO: Tratar a resposta positiva...
        end;
      finally
        ABusca.Free;
      end;
    end;

    //Grava os eventos vinculados a nota no banco
    for I := 0 to AACBrNFe.WebServices.Consulta.procEventoNFe.Count - 1 do
    begin
      ARetEvento := AACBrNFe.WebServices.Consulta.procEventoNFe[I].RetEventoNFe;
      for J := 0 to ARetEvento.retEvento.Count - 1 do
      begin
        AEvento := ARetEvento.retEvento[J].RetInfEvento;
        TFrmNFe.GravaEventoNoBanco(AEvento.nProt, AEvento.chNFe, ADataSetNotaFiscal.FieldByName('NF_CNPJCPF_DESTINO').AsString,
          ADataSetNotaFiscal.FieldByName('CODVENDA').AsString, ARetEvento.XML, AEvento.xMotivo, ARetEvento.InfEvento.DetEvento.xJust,
          AEvento.tpAmb, AEvento.tpEvento, AEvento.nSeqEvento, AEvento.cStat, AEvento.dhRegEvento);
      end;
    end;

    {Onde encontrar alguns dados na consulta da nota:

    Situação atual da nota:
    AACBrNFe.WebServices.Consulta.cStat
    AACBrNFe.WebServices.Consulta.xMotivo
    AACBrNFe.WebServices.Consulta....

    Lista de eventos vinculados a nota no formato em que foram emitidos/enviados a SEFAZ
    AACBrNFe.WebServices.Consulta.procEventoNFe[I].RetEventoNFe.retEvento[J].RetInfEvento

    Caso o evento seja de cancelamento, vc lê os dados do evento com o comando acima e a Justificativa fica em
    outro lugar:
    AACBrNFe.WebServices.Consulta.procEventoNFe[i].RetEventoNFe.InfEvento.DetEvento.xJust

    E os dados de retorno do cancelamento:
    AACBrNFe.WebServices.Consulta.RetCancNFe
    }
  finally
    AFrmAguarde.Free;
  end;
end;

class function TFrmNFe.ComparaNotasFiscais(const ANotaOriginal, ANotaTestada: TACBrNFe): Boolean;
var
  ANfOriginal, ANFTestada: ACBrNFeNotasFiscais.NotaFiscal;
begin
  Result := False;
  if (ANotaOriginal.NotasFiscais.Count = 0) or (ANotaTestada.NotasFiscais.Count = 0) then
    Exit;

  ANfOriginal := ANotaOriginal.NotasFiscais[0];
  ANFTestada  := ANotaTestada.NotasFiscais[0];

  Result := (ANFTestada.NFe.Ide.tpAmb = ANfOriginal.NFe.Ide.tpAmb) and
            SameValue(ANFTestada.NFe.Total.ICMSTot.vNF, ANfOriginal.NFe.Total.ICMSTot.vNF) and
            (ANFTestada.NFe.Dest.CNPJCPF = ANfOriginal.NFe.Dest.CNPJCPF);
end;

class procedure TFrmNFe.ConfiguraDANFe(const AACBrNFe: TACBrNFe);
var
  AStringStream: TStringStream;
  ATipoFr3: TTipoArquivoFR3;
  AFr3: string;
  AIni: TIniFile;
  ACodEmpresa: Integer;
begin
  AIni := TIniFile.Create(GetDirSistema + 'WR2.ini');
  try
    case AIni.ReadInteger(Empresa.FieldByName('CNPJCPF').AsString + 'Geral', 'DANFEComponente', 0) of
      0:
      begin
        case AACBrNFe.Configuracoes.Geral.ModeloDF of
          moNFe:  AACBrNFe.DANFE := TACBrNFeDANFEFR.Create(AACBrNFe);
          moNFCe: AACBrNFe.DANFE := TACBrNFeDANFCEFR.Create(AACBrNFe);
        end;
      end;
      1:
      begin
        case AACBrNFe.Configuracoes.Geral.ModeloDF of
          moNFe:  AACBrNFe.DANFE := TACBrNFeDANFeRL.Create(AACBrNFe);
          moNFCe: AACBrNFe.DANFE := TACBrNFeDANFCeFortes.Create(AACBrNFe);
        end;
      end;
    end;
    AACBrNFe.DANFE.ACBrNFe := AACBrNFe;
  finally
    AIni.Free;
  end;

  if AACBrNFe.Configuracoes.Geral.ModeloDF <> moNFe then
  begin
    AACBrNFe.DANFE.TipoDANFE := tiNFCe;
    ATipoFr3 := tafr3DANFeNFCe;
  end else
    ATipoFr3 := tafr3DANFE;

  AACBrNFe.DANFE.CasasDecimais.Formato    := tdetMascara;
  AACBrNFe.DANFE.CasasDecimais.MaskqCom   := DecimalQuantidade;
  AACBrNFe.DANFE.CasasDecimais.MaskvUnCom := DecimalFinanceiro;

  AACBrNFe.DANFE.Sistema := Sistema.Nome;
  AACBrNFe.DANFE.Logo    := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'LogoNFe.bmp';
  AACBrNFe.DANFE.PathPDF := AACBrNFe.Configuracoes.Arquivos.PathNFe + 'PDF\';
  AACBrNFe.DANFE.MostraSetup := True;

  ACodEmpresa := GetEmpresaNFe(AACBrNFe);

  if (AACBrNFe.DANFE is TACBrNFeDANFEFR) or (AACBrNFe.DANFE is TACBrNFeDANFCEFR) then
  begin
    //Carrega o arquivo do FastReport
    DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(ATipoFr3));
    if AACBrNFe.DANFE is TACBrNFeDANFEFR then
      TACBrNFeDANFEFR(AACBrNFe.DANFE).FastFile  := AFr3
    else
      TACBrNFeDANFCEFR(AACBrNFe.DANFE).FastFile := AFr3;

    //Carrega a Logo
    ForceDirectories(ExtractFilePath(AACBrNFe.DANFE.Logo));
    AStringStream := TStringStream.Create(DMImpressaoCarregaLogo_BlobToString(ACodEmpresa));
    try
      AStringStream.SaveToFile(AACBrNFe.DANFE.Logo);
    finally
      AStringStream.Free;
    end;
  end else
    AACBrNFe.DANFE.Logo := DMImpressaoCarregaLogo_BlobToString(ACodEmpresa);
end;

class procedure TFrmNFe.ConfiguraDANFeEvento(const AACBrNFe: TACBrNFe);
var
  AFr3: string;
begin
  ConfiguraDANFe(AACBrNFe);
  if (AACBrNFe.DANFE is TACBrNFeDANFEFR) and DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(tafr3EVENTOS)) then
    TACBrNFeDANFEFR(AACBrNFe.DANFE).FastFileEvento := AFr3;
end;


{$REGION 'Funções da Tela a Revisar'}

procedure TFrmNFe.GravarConfiguracao;
var
  IniFile: String;
  Ini: TIniFile;
  ACNPJCPF : String;
  StreamMemo: TMemoryStream;
begin
  ACNPJCPF := Empresa.FieldByName('CNPJCPF').AsString;
  IniFile := GetDirSistema + 'WR2.ini';
  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString(ACNPJCPF+'WebService',  'UF',         cbUF.Text);           //Rede - Serve Pro PCN, Saber o Fuso Horário

    Ini.WriteInteger('Certificado','SSLType' , cbSSLType.ItemIndex);            //Local
    Ini.WriteInteger(ACNPJCPF+'WebService', 'Ambiente',   rgTipoAmb.ItemIndex); //Local
    Ini.WriteInteger(ACNPJCPF + 'WebService', 'TimeOut', seTimeOut.Value);      //Local
    Ini.WriteBool(ACNPJCPF + 'WebService', 'AjustarAut', cbxAjustarAut.Checked);//Local
    Ini.WriteInteger(ACNPJCPF + 'WebService', 'Aguardar', StrToIntDef(edtAguardar.Text, 0));    //Local
    Ini.WriteInteger(ACNPJCPF + 'WebService', 'Tentativas', StrToIntDef(edtTentativas.Text, 5));//Local
    Ini.WriteInteger(ACNPJCPF + 'WebService', 'Intervalo', StrToIntDef(edtIntervalo.Text, 0));  //Local

    Ini.WriteString(ACNPJCPF+'Proxy', 'Host',  edtProxyHost.Text);              //Local     NÃO DEVERIA TER DISTINÇÃO DE EMPRESA
    Ini.WriteString(ACNPJCPF+'Proxy', 'Porta', edtProxyPorta.Text);             //Local
    Ini.WriteString(ACNPJCPF+'Proxy', 'User',  edtProxyUser.Text);              //Local
    Ini.WriteString(ACNPJCPF+'Proxy', 'Pass',  edtProxySenha.Text);             //Local


{$REGION 'Migrado Cadastro de Empresa'}
//    Ini.WriteString(ACNPJCPF+'Certificado', 'Caminho',  edtCaminho.Text);
//    Ini.WriteString(ACNPJCPF+'Certificado', 'Senha',    edtSenha.Text);
//    Ini.WriteString(ACNPJCPF+'Certificado', 'NumSerie', edtNumSerie.Text);

//    Ini.WriteInteger(ACNPJCPF+'Geral', 'DANFE', rgTipoDanfe.ItemIndex);          //Rede
//    Ini.WriteInteger(ACNPJCPF+'Geral', 'DANFEComponente',  CbDANFE.ItemIndex);   //Rede

    {TODO : Versão NFe - Fixado para a versão 3.10 - Alterar quando tiver nova versão da NFe}
//    Ini.WriteString( 'Geral',         'IdToken',      edtIdToken.Text) ;         //Rede
//    Ini.WriteString( 'Geral',         'Token',        edtToken.Text) ;           //Rede
//    Ini.WriteInteger(ACNPJCPF+'Geral', 'FormaEmissao', rgFormaEmissao.ItemIndex);
//    Ini.WriteString(ACNPJCPF+'Geral',  'LogoMarca',    edtLogoMarca.Text);      //Rede
//    Ini.WriteBool(ACNPJCPF+'Geral',    'Salvar',       ckSalvar.Checked);       //Rede
//    Ini.WriteString(ACNPJCPF+'Geral',  'PathSalvar',   edtPathLogs.Text);       //Rede
//    Ini.WriteString(ACNPJCPF+'WebService',  'UserWEB',    edtUserWEB.Text);     //Rede
//    Ini.WriteString(ACNPJCPF+'WebService', 'SenhaWEB',    edtSenhaWEB.Text);    //Rede

//    Ini.WriteString(CNPJCPF+'Email', 'Host', edtSmtpHost.Text);
//    Ini.WriteString(CNPJCPF+'Email', 'Port', edtSmtpPort.Text);
//    Ini.WriteString(CNPJCPF+'Email', 'User', edtSmtpUser.Text);
//    Ini.WriteString(CNPJCPF+'Email', 'Pass', edtSmtpPass.Text);

//    Ini.WriteInteger(ACNPJCPF + 'WebService', 'FusoEmissao', LGetFuso(CbFusoEmissao));   //Rede
//    Ini.WriteString(ACNPJCPF + 'WebService', 'FusoEmissaoStr', EdtFusoEmissao.Text);     //Rede

//    Ini.WriteInteger(ACNPJCPF + 'WebService', 'FusoCancelamento', LGetFuso(CbFusoCancelamento));    //Rede
//    Ini.WriteString(ACNPJCPF + 'WebService', 'FusoCancelamentoStr', EdtFusoCancelamento.Text);      //Rede

//    Ini.WriteInteger(ACNPJCPF + 'WebService', 'FusoCCe', LGetFuso(CbFusoCCe));                      //Rede
//    Ini.WriteString(ACNPJCPF + 'WebService', 'FusoCCeStr', EdtFusoCCe.Text);                        //Rede

//    Ini.WriteInteger(ACNPJCPF + 'WebService', 'FusoInutilizacao', LGetFuso(CbFusoInutilizacao));    //Rede
//    Ini.WriteString(ACNPJCPF + 'WebService', 'FusoInutilizacaoStr', EdtFusoInutilizacao.Text);      //Rede

//    Ini.WriteString(ACNPJCPF+'Email',  'Assunto', edtEmailAssunto.Text);                            //Rede
//    Ini.WriteBool(ACNPJCPF+'Email',    'SSL',     cbEmailSSL.Checked);                              //Rede
//    Ini.WriteInteger(ACNPJCPF+'Email', 'Enviar E-mail' , rgEnviarEmail.ItemIndex);                  //Rede

//    (Ini.ReadString(CNPJCPF + 'NFe', 'PathNFe', '') = '')
//    if ACBrNFe1.Configuracoes.Arquivos.IniServicos <> '' then


    {if (Ini.ReadString(CNPJCPF + 'NFe', 'PathNFe', '') = '') and (ACBrNFe1.Configuracoes.Arquivos.PathNFe <> (GetDirSistema + 'NFe\')) then
      Ini.WriteString(CNPJCPF + 'NFe', 'PathNFe', GetDirSistema + 'NFe\')
    else Ini.WriteString(CNPJCPF + 'NFe', 'PathNFe', ACBrNFe1.Configuracoes.Arquivos.PathNFe);}

//    StreamMemo := TMemoryStream.Create;
//    mmEmailMsg.Lines.SaveToStream(StreamMemo);
//    StreamMemo.Seek(0, soFromBeginning);
//    Ini.WriteBinaryStream(ACNPJCPF+'Email', 'Mensagem', StreamMemo);     //Rede
//    StreamMemo.Free;
{$ENDREGION}
  finally
    Ini.Free;
  end;
end;

procedure TFrmNFe.LerConfiguracao;
var
  AIniFile, ACNPJCPF: string;
  AIni: TIniFile;
  AOk: Boolean;
  AStreamMemo: TMemoryStream;
  ADadosFO: TSHFileOpStruct;
begin
  ACNPJCPF := Empresa.FieldByName('CNPJCPF').AsString;
  AIniFile := GetDirSistema + 'WR2.ini';

  CarregaConfiguracoesIniNFe(ACBrNFe1, Empresa, ACBrNFeDANFEFR1, ACBrNFeDANFeRL1);

  AIni := TIniFile.Create(AIniFile);
  try
    if AIni.ReadString(ACNPJCPF + 'WebService', 'UF', '') = '' then
      ACNPJCPF := '';
    cbSSLType.ItemIndex := AIni.ReadInteger('Certificado','SSLType' , 0);

    {$IFDEF ACBrNFeOpenSSL}
    edtCaminho.Text := ACBrNFe1.Configuracoes.Certificados.Certificado;
    Label25.Visible     := False;
    sbtnGetCert.Visible := False;
    {$ELSE}
    lblCertNumeroSerie.Caption := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;

    if lblCertNumeroSerie.Caption <> '' then
    begin
      try
        lblCertValidade.Caption    := FormatDateTime(DATA_SIMPLES, ACBrNFe1.SSL.CertDataVenc);
        lblCertNome.Caption        := ACBrNFe1.SSL.CertRazaoSocial;
      except  end;
    end
    else
    begin
      lblCertValidade.Caption    := '';
      lblCertNome.Caption        := '';
      lblCertStatus.Caption      := 'Inativo';
    end;

    {$ENDIF}
    cbUF.ItemIndex := cbUF.Items.IndexOf(ACBrNFe1.Configuracoes.WebServices.UF);
    if cbUF.ItemIndex < 0 then
      cbUF.ItemIndex := 0;

    rgTipoAmb.ItemIndex := Integer(ACBrNFe1.Configuracoes.WebServices.Ambiente);

    seTimeOut.Value  := ACBrNFe1.Configuracoes.WebServices.TimeOut;
    cbxAjustarAut.Checked  := AIni.ReadBool(ACNPJCPF + 'WebService', 'AjustarAut', False);
	  edtAguardar.Text       := IntToStr(ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet);
    edtTentativas.Text     := IntToStr(ACBrNFe1.Configuracoes.WebServices.Tentativas);
    edtIntervalo.Text      := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

    edtProxyHost.Text  := ACBrNFe1.Configuracoes.WebServices.ProxyHost;
    edtProxyPorta.Text := ACBrNFe1.Configuracoes.WebServices.ProxyPort;
    edtProxyUser.Text  := ACBrNFe1.Configuracoes.WebServices.ProxyUser;
    edtProxySenha.Text := ACBrNFe1.Configuracoes.WebServices.ProxyPass;

    if not SysUtils.DirectoryExists(GetDirSistema + 'NFe\Schemas') and SysUtils.DirectoryExists(ACBrNFe1.Configuracoes.Arquivos.PathNFe + 'Schemas\') then
    begin
      FillChar(ADadosFO,SizeOf(ADadosFO), 0);
      with ADadosFO do
      begin
        wFunc  := FO_MOVE;
        pFrom  := PChar(ACBrNFe1.Configuracoes.Arquivos.PathNFe + 'Schemas\');
        pTo    := PChar(GetDirSistema + 'NFe\Schemas');
        fFlags := FOF_ALLOWUNDO or FOF_SIMPLEPROGRESS or FOF_NOCONFIRMATION;
      end;
      SHFileOperation(ADadosFO);
    end;

{$REGION 'Antigo '}
    //edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
//    Label1.Caption := 'Informe o número de série do certificado'#13 + 'Disponível no Internet Explorer no menu'#13 +
//      'Ferramentas - Opções da Internet - Conteúdo '#13 + 'Certificados - Exibir - Detalhes - '#13 + 'Número do certificado';
//    Label2.Visible          := False;
//    edtCaminho.Visible      := False;
//    edtSenha.Visible        := False;
//    sbtnCaminhoCert.Visible := False;
//    rgFormaEmissao.ItemIndex := Integer(ACBrNFe1.Configuracoes.Geral.FormaEmissao);
//    ckSalvar.Checked := AIni.ReadBool(ACNPJCPF + 'Geral', 'Salvar', True);
//    edtPathLogs.Text := TDirectory.GetParent(ExcludeTrailingPathDelimiter(ACBrNFe1.Configuracoes.Arquivos.PathNFe));
//    edtIdToken.Text  := ACBrNFe1.Configuracoes.Geral.IdCSC;  // Ainda não foi feito, Isso tem que ser migrado
//    edtToken.Text    := ACBrNFe1.Configuracoes.Geral.CSC;    // Ainda não foi feito, Isso tem que ser migrado
//    chkUsarCertificadoPeloExplorer.Checked := (Empresa.FieldByName('Tem_Certificado').AsString = 'N');

//    edtUserWEB.Text  := AIni.ReadString(ACNPJCPF + 'WebService', 'UserWEB', '');
//    edtSenhaWEB.Text := AIni.ReadString(ACNPJCPF + 'WebService', 'SenhaWEB', '');

//    CbFusoEmissao.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'WebService', 'FusoEmissao', 0);

//    EdtFusoEmissao.Text     := AIni.ReadString(ACNPJCPF + 'WebService', 'FusoEmissaoStr', '');

//    CbFusoCancelamento.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'WebService', 'FusoCancelamento', 0);
//    EdtFusoCancelamento.Text     := AIni.ReadString(ACNPJCPF + 'WebService', 'FusoCancelamentoStr', '');

//    CbFusoCCe.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'WebService', 'FusoCCe', 0);
//    EdtFusoCCe.Text     := AIni.ReadString(ACNPJCPF + 'WebService', 'FusoCCeStr', '');

//    CbFusoInutilizacao.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'WebService', 'FusoInutilizacao', 0);
//    EdtFusoInutilizacao.Text     := AIni.ReadString(ACNPJCPF + 'WebService', 'FusoInutilizacaoStr', '');

    //Manter a leitura do ini para campos de Logo e Tipo do Danfe, pois o componente pode não estar vinculado e não salvar
//    rgTipoDanfe.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'Geral', 'DANFE', 0);
//    edtLogoMarca.Text     := AIni.ReadString(ACNPJCPF + 'Geral', 'LogoMarca', '');
//    CbDANFE.ItemIndex     := AIni.ReadInteger(ACNPJCPF + 'Geral', 'DANFEComponente', 0);
//    CbDANFE.ItemIndex     := IfThen(CbDANFE.ItemIndex > 1, 1, CbDANFE.ItemIndex);
//    CbDANFEClick(CbDANFE);


  {
    edtSmtpHost.Text := Ini.ReadString(CNPJCPF+'Email', 'Host', '');
    edtSmtpPort.Text := Ini.ReadString(CNPJCPF+'Email', 'Port', '');
    edtSmtpUser.Text := Ini.ReadString(CNPJCPF+'Email', 'User', '');
    edtSmtpPass.Text := Ini.ReadString(CNPJCPF+'Email', 'Pass', '');
    edtEmailAssunto.Text := AIni.ReadString(ACNPJCPF+'Email', 'Assunto', '');
    cbEmailSSL.Checked   := AIni.ReadBool(ACNPJCPF+'Email', 'SSL', False);
    AStreamMemo := TMemoryStream.Create;
    try
      AIni.ReadBinaryStream(ACNPJCPF + 'Email', 'Mensagem', AStreamMemo);
      rgEnviarEmail.ItemIndex := AIni.ReadInteger(ACNPJCPF + 'Email', 'Enviar E-mail', 1);
      mmEmailMsg.Lines.LoadFromStream(AStreamMemo);
    finally
      AStreamMemo.Free;
    end;   }
{$ENDREGION}
  finally
    AIni.Free;
  end;
end;

procedure TFrmNFe.CbDANFEClick(Sender: TObject);   //Para a nota de serviço esta disponível somente ACBrNFSeDANFSeQR1
begin                                              // que esta configurado direto no componente.
(*  case CbDANFE.ItemIndex of
   {0 : begin
          ACBrNFe1.DANFE := ACBrNFeDANFEQR1;
          ACBrNFeDANFEQR1.ACBrNFe := ACBrNFe1;
        end;  }
    0 : begin
          ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
          ACBrNFeDANFEFR1.ACBrNFe := ACBrNFe1;
        end;
    1 : begin
          ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
          ACBrNFeDANFeRL1.ACBrNFe := ACBrNFe1;
        end;
  end;    *)
end;

procedure TFrmNFe.CbFusoCancelamentoPropertiesChange(Sender: TObject);
begin
//  AtualizaEditsFuso(CbFusoCancelamento, EdtFusoCancelamento);
end;

procedure TFrmNFe.CbFusoCCePropertiesChange(Sender: TObject);
begin
//  AtualizaEditsFuso(CbFusoCCe, EdtFusoCCe);
end;

procedure TFrmNFe.CbFusoEmissaoPropertiesChange(Sender: TObject);
begin
//  AtualizaEditsFuso(CbFusoEmissao, EdtFusoEmissao);
end;

procedure TFrmNFe.CbFusoInutilizacaoPropertiesChange(Sender: TObject);
begin
//  AtualizaEditsFuso(CbFusoInutilizacao, EdtFusoInutilizacao);
end;

procedure TFrmNFe.Emitir1Click(Sender: TObject);
var
 Chave, AChave, ANota, idLote, codOrgao, CNPJ, nSeqEvento, Correcao, APathPDFold, AtempFile, AErro, AFr3 : string;
 AChave_list : TStringList;
 I, J : Integer;
 ATodos : Boolean;
 AArquivo_cce : TXMLDocument;
 AStream : TFileStream;
 QuerX, QuerUp : TIBQuery;
 ATransa: TIBTransaction;
 AStringStream : TStringStream;
begin
  OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  AChave_list := TStringList.Create;
  try
    if OpenDialog1.Execute then
    begin
      for I := 0 to OpenDialog1.Files.Count - 1 do
      begin
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.Files.Strings[i]);
        Chave := RemoveString('NFe', ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID);
        AChave_list.Add(Chave);
      end;
    end;

    if AChave_list.Count > 1 then
    begin
      for I := 0  to AChave_list.Count - 1 do
      begin
        ANota := copy(AChave_list[I], 26, 9);
        while ANota[1] = '0' do
        begin
          delete(ANota, 1, 1);
        end;

        if I = 0 then
          AChave := ANota + ', '
        else if I = (AChave_list.Count - 1) then
          AChave := AChave + ANota
        else
          AChave := AChave + ANota + ', ';
      end;

      if (ShowMessageWR('Notas Fiscais selecionadas: ' + IntToStr(AChave_list.Count) + sLineBreak +
                    'Deseja emitir a carta de correção para as seguintes Notas fiscais: ' + sLineBreak +
                     AChave + '?', MB_ICONQUESTION) <> mrYes) then
        Exit;
    end;

    ATodos := false;
    I := 0;
    for I := 0 to AChave_list.Count -1 do
    begin
      if not ATodos then
      begin
        if not(InputQuery('WebServices Carta de Correção', 'Chave da NF-e', Chave)) then
           exit;
        Chave := AChave_list[I];


    {  if not ValidarChave(Chave) then
       begin
         MessageDlg('Chave Inválida.',mtError,[mbok],0);
         exit;
       end;   }

        idLote := '1';
        if not(InputQuery('WebServices Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
           exit;
        codOrgao := copy(Chave,1,2);
        if not(InputQuery('WebServices Carta de Correção', 'Código do órgão de recepção do Evento', codOrgao)) then
           exit;
        CNPJ := copy(Chave,7,14);
        if not(InputQuery('WebServices Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
           exit;
        nSeqEvento := '1';
        if not(InputQuery('WebServices Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
           exit;
        Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
        if not(InputQuery('WebServices Carta de Correção', 'Correção a ser considerada', Correcao)) then
           exit;
        if True then

        if AChave_list.Count > 1 then
        begin
          if ShowMessageWR('Aplicar dados para todas as nota?', MB_ICONQUESTION) = mrYes then
          begin
            ATodos := true;
          end;
        end;
      end else
      begin
        Chave := AChave_list[I];
      end;

      FrmAguarde := TFrmAguarde.Create(Self);
      try
        FrmAguarde.Mensagem := 'Enviando Carta de Correção. Aguarde...';
        FrmAguarde.Show;
        TFrmNFe.ConfiguraFuso(ACBrNFe1, 'CCe');
        ACBrNFe1.CartaCorrecao.CCe.Evento.Clear;
        ACBrNFe1.CartaCorrecao.CCe.idLote := StrToInt(idLote) ;
        with ACBrNFe1.CartaCorrecao.CCe.Evento.Add do
         begin
           infEvento.chNFe := Chave;
           infEvento.cOrgao := StrToInt(codOrgao);
           infEvento.CNPJ   := CNPJ;
           infEvento.dhEvento := now;
           infEvento.tpEvento := teCCe;
           infEvento.nSeqEvento := StrToInt(nSeqEvento);
           infEvento.versaoEvento := '1.00';
           infEvento.detEvento.descEvento := 'Carta de Correção';
           infEvento.detEvento.xCorrecao := Correcao;
           infEvento.detEvento.xCondUso := ''; //Texto fixo conforme NT 2011.003 -  http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=tsiloeZ6vBw=
         end;
        ACBrNFe1.EnviarCartaCorrecao(StrToInt(idLote));
        FrmAguarde.Mensagem := 'Envio concluido!';
        Sleep(2000);
      finally
        FrmAguarde.Free;
      end;

      with ACBrNFe1.WebServices.EnvEvento do
      begin
        if Copy(EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo, 1, 8) = 'Rejeicao' then
        begin
          raise Exception.CreateFmt(
            'Ocorreu o seguinte erro ao corrigir a nota fiscal eletrônica:'  + sLineBreak +
            'Código:%d' + sLineBreak +
            'Motivo: %s', [
              EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
              EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
          ]);
        end;
      end;

      MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
      memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
      LoadXML(MemoResp, WBResposta);

      {===================================}
      {  Impressão da Carta de Correção   }
      {===================================}
      {  Utiliza o Fast Report  ou Fortes Report }
      if {(CbDANFE.ItemIndex = 0) and} DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(tafr3EVENTOS)) then
      begin
        AStringStream := TStringStream.Create;
        try
          AStringStream.WriteString(AFr3);
          ACBrNFeDANFEFR1.FastFileEvento := AStringStream.DataString;
        finally
          AStringStream.Free;
        end;
      end;
      {===================================}
      {  Impressão do Evento              }
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.Files.Strings[i]);
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.LerXMLFromString(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML);
      ACBrNFe1.ImprimirEvento;
      {===================================}
      {  Gerar PDF                        }
      ACBrNFe1.DANFE.PathPDF := ACBrNFe1.DANFE.PathPDF + '\CCE\';
      if not DirectoryExists(ACBrNFe1.DANFE.PathPDF) then
        CreateDir(ACBrNFe1.DANFE.PathPDF);
      ACBrNFe1.ImprimirEventoPDF;
      {===================================}

      {===================================}
      {  Gravar XML no Banco              }
      ATransa := GeraTransacao;
      QuerX  := GeraQuery(ATransa);
      try
        QuerX.SQL.Text := 'select * from NOTA_FISCAL where (NF_CHAVE = :Cod) and CODEMPRESA = :CodEmpresa';
        QuerX.ParamByName('Cod').Value        := Chave;
        QuerX.ParamByName('CodEmpresa').Value := EmpresaAtiva;
        QuerX.Open;
        if not QuerX.IsEmpty then
        begin
          QuerUp := GeraQuery(ATransa);
          try
            QuerUp.SQL.Text := 'insert into NOTA_FISCAL ' +
                               ' (CODIGO, CODVENDA, NF_DT_EMISSAO, NF_NATUREZA_OPERACAO, NF_NUMERO, NF_CHAVE, NF_PROTOCOLO, NF_AMBIENTE, NF_RAZAOSOCIAL, CODEMPRESA, ' +
                               ' ARQUIVO_XML, NF_CSTAT, NF_PROTOCOLO_CARTA_CORRECAO, NF_MOTIVO_STATUS, TIPO, NF_SEQUENCIA_EVENTO) ' +
                               ' values (:CODIGO, :CODVENDA, :NF_DT_EMISSAO, :NF_NATUREZA_OPERACAO, :NF_NUMERO, :NF_CHAVE, :NF_PROTOCOLO, :NF_AMBIENTE, :NF_RAZAOSOCIAL, ' +
                               ' :CODEMPRESA, :ARQUIVO_XML, :NF_CSTAT, :NF_PROTOCOLO_CARTA_CORRECAO, :NF_MOTIVO_STATUS, :TIPO, :NF_SEQUENCIA_EVENTO)';
            for J := 0 to QuerX.FieldCount - 1 do
            begin
              if MatchStr(QuerX.Fields[j].FieldName, ['CODVENDA', 'NF_DT_EMISSAO', 'NF_NATUREZA_OPERACAO', 'NF_NUMERO',
                 'NF_CHAVE', 'NF_PROTOCOLO', 'NF_AMBIENTE', 'NF_RAZAOSOCIAL', 'CODEMPRESA']) then
                QuerUp.ParamByName(QuerX.Fields[j].FieldName).Value := QuerX.Fields[j].Value;
            end;
            with ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
            begin
              QuerUp.ParamByName('ARQUIVO_XML').AsString                 := XML;
              QuerUp.ParamByName('NF_CSTAT').AsInteger                   := cStat;
              QuerUp.ParamByName('NF_PROTOCOLO_CARTA_CORRECAO').AsString := nProt;
              QuerUp.ParamByName('NF_MOTIVO_STATUS').AsString            := xMotivo;
              QuerUp.ParamByName('TIPO').AsString                        := NotaFiscalTipoRegistroToStr(nftrCCe);
              QuerUp.ParamByName('NF_SEQUENCIA_EVENTO').AsInteger        := nSeqEvento;
            end;
            with TIBStoredProc.Create(nil) do
            try
              Database    := TDefinicoesBancoIB.Banco;
              Transaction := TDefinicoesBancoIB.Banco.DefaultTransaction;
              StoredProcName := 'GENNOTA_FISCAL';
              ExecProc;
              QuerUp.ParamByName('CODIGO').AsInteger := Params[0].AsInteger;
            finally
              Free;
            end;
            QuerUp.ExecSQL;
            ATransa.Commit;
          finally
            QuerUp.Free;
          end;
        end;
      finally
        QuerX.Free;
      end;
      {===================================}
    end;
    OpenDialog1.Options := OpenDialog1.Options - [ofAllowMultiSelect];
  finally
    AChave_list.Free;
  end;
end;

procedure TFrmNFe.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFeStatusServico:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do serviço...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeRetRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeInutilizacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecibo:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCadastro:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    {stNFeEnvDPEC:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando DPEC...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeConsultaDPEC:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando DPEC...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end; }
    stNFeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;
end;

procedure TFrmNFe.Reimprimir1Click(Sender: TObject);
var
  AStringStream : TStringStream;
  AFr3 : string;
begin
  if{ (CbDANFE.ItemIndex = 0) and }DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(tafr3EVENTOS)) then
  begin
    AStringStream := TStringStream.Create;
    try
      AStringStream.WriteString(AFr3);
      ACBrNFeDANFEFR1.FastFileEvento := AStringStream.DataString;
    finally
      AStringStream.Free;
    end;
  end;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
//    OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathCCe;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    ACBrNFe1.ImprimirEvento;
  end;

  ACBrNFe1.DANFE.PathPDF := ACBrNFe1.DANFE.PathPDF + '\CCE\';
  if not DirectoryExists(ACBrNFe1.DANFE.PathPDF) then
    CreateDir(ACBrNFe1.DANFE.PathPDF);
  ACBrNFe1.ImprimirEventoPDF;
end;
{$ENDREGION}

{$REGION 'Funções da Tela Revisadas'}

procedure TFrmNFe.cbSSLTypeChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
     ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure TFrmNFe.Button5Click(Sender: TObject);
var
  AChave, ACaminho: string;
begin
  if InputQuery('Chave para download', 'Chave', AChave) then
    TFrmNFe.BaixarXMLdaNFe(AChave, True, False, ACaminho);
end;

procedure TFrmNFe.Button6Click(Sender: TObject);
begin
  CadastroModalMakeVisible(TFrmEmpresa, Empresa.FieldByName('Codigo').AsString, 'Grupo_Certificado');
  Empresa.Refresh;
  LerConfiguracao;
end;

procedure TFrmNFe.Button1Click(Sender: TObject);
var
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
//  LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
//  LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
end;

procedure TFrmNFe.Button2Click(Sender: TObject);
var
  APoint: TPoint;
begin
  APoint := GetScreenCoordinates(Button2);
  APoint.X := APoint.X + (Button2.Width - Trunc(Button2.Width * 0.9));
  APoint.Y := APoint.Y + (Button2.Height div 2);
  MenuCCe.Popup(APoint.X, APoint.Y);
end;

procedure TFrmNFe.btnStatusServClick(Sender: TObject);
begin
  try
    TFrmEmpresa.MigrarConfiguracaoNFe;
    ACBrNFe1.WebServices.StatusServico.Executar;
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    PageControl2.ActivePageIndex := 0;
    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Status Serviço');
    MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
    MemoDados.Lines.Add('verAplic: ' + ACBrNFe1.WebServices.StatusServico.verAplic);
    MemoDados.Lines.Add('cStat: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
    MemoDados.Lines.Add('xMotivo: ' + ACBrNFe1.WebServices.StatusServico.xMotivo);
    MemoDados.Lines.Add('cUF: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
    MemoDados.Lines.Add('dhRecbto: ' + DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
    MemoDados.Lines.Add('tMed: ' + IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
    MemoDados.Lines.Add('dhRetorno: ' + DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
    MemoDados.Lines.Add('xObs: ' + ACBrNFe1.WebServices.StatusServico.xObs);

    lblCertStatus.Caption:= ACBrNFe1.WebServices.StatusServico.xMotivo;
    lblCertNumeroSerie.Caption := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;

    lblCertValidade.Caption    := FormatDateTime(DATA_SIMPLES, ACBrNFe1.SSL.CertDataVenc);
    lblCertNome.Caption        := ACBrNFe1.SSL.CertRazaoSocial;

    //Aqui pode dar um erro ao ler os dados do certificado
  except
    on E:Exception do
    begin
      raise EWRException.Create(E.Message);
      //  DadosPFX, ArquivoPFX, URLPFX ou NumeroSerie não especificados !
    end;
  end;
end;

procedure TFrmNFe.btnConsultarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
    LoadXML(MemoResp, WBResposta);
  end;
end;

procedure TFrmNFe.btnAvancadoClick(Sender: TObject);
begin
  Width:= Panel1.Width+ PageControl3.Width;
end;

procedure TFrmNFe.btnCancNFClick(Sender: TObject);
var
  AChave, ACNPJ, nProtocolo, AJustificativa : string;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    AChave := RemoveString('NFe', ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID);

    if not InputQuery('Cancelamento', 'Justificativa', AJustificativa) then
      Exit;

    ACNPJ := GetCnpjCpf(Copy(AChave,7,14));
    if not InputQuery('Cancelamento', 'CNPJ ou o CPF do autor do Evento', ACNPJ) then
      Exit;

    ACNPJ := OnlyNumber(GetCnpjCpf(ACNPJ));
    if ACNPJ = '' then
    begin
      MessageBox(0, 'CNPJ Inválido', PWideChar(Sistema.Nome), MB_ICONINFORMATION or MB_OK);
      Exit;
    end;

    nProtocolo := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
    if not InputQuery('Cancelamento', 'Número do Protocolo', nProtocolo) then
      Exit;

    ConfiguraFuso(ACBrNFe1, 'Cancelamento');

    // Criar o cancelamento
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.idLote := 1;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe      := AChave;
      infEvento.CNPJ       := ACNPJ;
      infEvento.dhEvento   := DataHoraSys;
      infEvento.tpEvento   := teCancelamento;
      infEvento.detEvento.nProt := nProtocolo;
      infEvento.detEvento.xJust := AJustificativa;
    end;

    FrmAguarde := TFrmAguarde.Create(Self);
    try
      FrmAguarde.Mensagem := 'Enviando Cancelamento de NF-e. Aguarde...';
      FrmAguarde.Show;
    // Enviar o evento de cancelamento
      if ACBrNFe1.EnviarEvento(1) then
      begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
          begin
            raise EWRException.CreateFmt(
              'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
              'Código:%d' + sLineBreak +
              'Motivo: %s', [
                EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
            ]);
          end;

          // retornos
          MemoDados.Lines.Add('');
          MemoDados.Lines.Add('------- Cancelamento -------');
          MemoDados.Lines.Add('dhRegEvento: ' + DateTimeToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento));
          MemoDados.Lines.Add('nProt: '       + EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
          MemoDados.Lines.Add('cStat: '       + IntToStr(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat));
          MemoDados.Lines.Add('xMotivo: '     + EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
          MemoDados.Lines.Add('');
          MemoDados.Lines.Add('XML: '         + EventoRetorno.retEvento.Items[0].RetInfEvento.XML);
          PageControl2.ActivePage := Dados;
          MemoDados.SetFocusWR;
          MessageBox(0, 'Procedimento concluído.', PWideChar(Sistema.Nome), MB_ICONINFORMATION or MB_OK);
        end;
      end else
      begin
        with ACBrNFe1.WebServices.EnvEvento do
        begin
          raise EWRException.Create(
            'Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
            'Lote: ' + IntToStr(EventoRetorno.idLote) + sLineBreak +
            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
            'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
            sLineBreak +
            'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: ' + EventoRetorno.xMotivo
          );
        end;
      end;
      FrmAguarde.Mensagem := 'Envio concluido!';
      Sleep(2000);
    finally
      FrmAguarde.Free;
    end;

   // ACBrNFe1.NotasFiscais.Items[0].SaveToStream()
    //FConfiguracoes.Geral.Sav (NomeArq, wProc.Text, FConfiguracoes.Arquivos.GetPathCan)

    //Rotina antiga de cancelamento
    {ACBrNFe1.Cancelamento(vAux);
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS);
    memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetornoWS);
    LoadXML(MemoResp, WBResposta);
    ShowMessage(IntToStr(ACBrNFe1.WebServices.Cancelamento.cStat));
    ShowMessage(ACBrNFe1.WebServices.Cancelamento.Protocolo);}
  end;
end;

procedure TFrmNFe.btnValidarXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.NotasFiscais.Validar;
    ShowMessage('Nota Fiscal Eletrônica Valida');
  end;
end;

procedure TFrmNFe.btnImprimirClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    {if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
    begin
      ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      ACBrNFe1.WebServices.ConsultaDPEC.Executar;
//      ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC + ' ' + DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);
    end;  }

    PreencheComponenteImpressaoDANFE;

    ACBrNFe1.NotasFiscais.Imprimir;
    ACBrNFe1.NotasFiscais.GerarNFe;
  end;
end;

procedure TFrmNFe.btnInutilizarClick(Sender: TObject);
var
  Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa: String;
begin
  if not(InputQuery('WebServices Inutilização ', 'Ano', Ano)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Serie', Serie)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
  if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  TFrmNFe.ConfiguraFuso(ACBrNFe1, 'Inutilizacao');
  ACBrNFe1.WebServices.Inutiliza(Procura('CNPJCPF','EMPRESA',EmpresaAtiva),
                                 Justificativa,
                                 StrToInt(Ano),
                                 StrToInt(Modelo),
                                 StrToInt(Serie),
                                 StrToInt(NumeroInicial),
    StrToInt(NumeroFinal));
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  //pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Inutilização');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
  MemoDados.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
  MemoDados.Lines.Add('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
  MemoDados.Lines.Add('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
  MemoDados.Lines.Add('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
  MemoDados.Lines.Add('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);
end;

procedure TFrmNFe.btnProximoNumeroClick(Sender: TObject);
begin
  TFrmProximoNumero.Abrir;
end;

procedure TFrmNFe.ACBrNFe1GerarLog(const ALogLine: string; var Tratado: Boolean);
begin
  memoLog.Lines.Add(ALogLine);
end;

procedure TFrmNFe.FormCreate(Sender: TObject);
var
 ASSLType: TSSLType;
begin
  cbSSLType.Items.Clear;
  for ASSLType := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add(GetEnumName(TypeInfo(TSSLType), Integer(ASSLType)));
  cbSSLType.ItemIndex := 0;

  LerConfiguracao;
  MemoRespostaNF    := MemoResp;
  MemoWBRespostaNF  := WBResposta;
  MemoLogNF         := memoLog;
  MemoNFe           := trvwNFe;
  MemoRespCompWS    := memoRespWS;
  MemoDadosNF       := MemoDados;

  /// Evento padrão para tratamentos de erro do componente de NFe.
  ACBrNFe1.OnTransmitError := TEventTransmitError.TransmitErrorTempoExecucao;

//  if Pos('.', DecimalQuantidade) > 0 then
//    ACBrNFe1.DANFE.CasasDecimais.qCom   := copy(DecimalQuantidade, Pos('.', DecimalQuantidade)+1, Length(DecimalQuantidade)-1 ).Length;
//  if Pos('.', DecimalFinanceiro) > 0 then
//    ACBrNFe1.DANFE.CasasDecimais.vUnCom := copy(DecimalFinanceiro, Pos('.', DecimalFinanceiro)+1, Length(DecimalFinanceiro)-1 ).Length;
//
//    ACBrNFe1.DANFE.CasasDecimais.qCom   := 8;
//    ACBrNFe1.DANFE.CasasDecimais.vUnCom := 8;
end;

procedure TFrmNFe.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
  LerConfiguracao;
  Close;
end;

procedure TFrmNFe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
var
  AHTML: string;
  AXml: TXML2HTML;
begin
  AXml := TXML2HTML.Create;
  try
    if AXml.ParseXML(Trim(MyMemo.Lines.Text)) then
      AHTML := AXml.GetAsHTML
    else
      ShowMessageWR('Erro XML.' + sLineBreak + 'O XML de retorno está com formato inválido.', MB_ICONINFORMATION);
  finally
    AXml.Free;
  end;
  if MemoHtmlResposta <> nil then
    MemoHtmlResposta.LoadFromString(AHTML)
  else
    WB_LoadHTML(MyWebBrowser, AHTML);
end;

procedure TFrmNFe.btnConsCadClick(Sender: TObject);
var
  UF, Documento: String;
begin
  if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:', UF)) then
    exit;
  if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)', Documento)) then
    exit;
  Documento := Trim(OnlyNumber(Documento));

  ACBrNFe1.WebServices.ConsultaCadastro.UF := UF;
  if Length(Documento) > 11 then
    ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
    ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;
  ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS);
  LoadXML(MemoResp, WBResposta);

  ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  ShowMessage(ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].xNome);
end;

procedure TFrmNFe.btnGerarPDFClick(Sender: TObject);
begin
  OpenDialog1.Title      := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter     := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFe1.NotasFiscais.Clear;
  if not OpenDialog1.Execute then
    Exit;
  ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  PreencheComponenteImpressaoDANFE;
  FrmAguarde := TFrmAguarde.Create(Self);
  try
    FrmAguarde.Show;
    FrmAguarde.Mensagem := 'Gerando arquivo PDF. Aguarde...';
    ACBrNFe1.NotasFiscais.ImprimirPDF;
    FrmAguarde.Close;
    if ShowMessageWR('Deseja visualizar o arquivo gerado?', MB_ICONQUESTION) = mrYes then
      ShellExecute(Handle, 'open', PChar(ACBrNFe1.DANFE.ArquivoPDF), nil, nil, SW_SHOWNORMAL);
  finally
    FrmAguarde.Free;
  end;
end;

procedure TFrmNFe.btnEnviarEmailClick(Sender: TObject);
var
  APara, AAssunto, AMensagem, tmpstr: string;
  ACountTotal, ACount: integer;
  AAnexos: TStringList;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', APara)) then
    Exit;

  if not(InputQuery('Assunto', 'Assunto', AAssunto)) then
    Exit;

  if not(InputQuery('Mensagem', 'Mensagem', AMensagem)) then
    Exit;

  OpenDialog1.Title      := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter     := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  if not OpenDialog1.Execute then
    Exit;

  AAnexos := TStringList.Create;
  try
    AAnexos.Add(OpenDialog1.FileName);

    tmpstr := StringReplace(tmpstr, '-nfe.xml', '', [rfIgnoreCase]);
    ACountTotal := Length(tmpstr);
    ACount := ACountTotal - 44;
    tmpstr := Copy(tmpstr, ACount + 1, ACountTotal);
    tmpstr := PathWithDelim(ACBrNFe1.DANFE.PathPDF) + tmpstr +  '-nfe.pdf';  // NF-e 3.10
    if FileExists(tmpstr) then
      AAnexos.Add(tmpstr)
    else
    begin
      tmpstr := OpenDialog1.FileName;
      tmpstr := StringReplace(tmpstr, '-nfe.xml', '', [rfIgnoreCase]);
      ACountTotal := Length(tmpstr);
      ACount := ACountTotal - 44;
      tmpstr := Copy(tmpstr, ACount + 1, ACountTotal);
      tmpstr := PathWithDelim(ACBrNFe1.DANFE.PathPDF) + tmpstr +  '.pdf';  // NF-e 2.00
      if FileExists(tmpstr) then
        AAnexos.Add(tmpstr);
    end;
    TFrmEmail.EnviarEmail3(APara, '', AAssunto, AMensagem, AAnexos);
  finally
    AAnexos.Free;
  end;
end;

procedure TFrmNFe.btnFecharConfigClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNFe.btnConsultarReciboClick(Sender: TObject);
var
  aux: String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux)) then
    exit;
  ACBrNFe1.WebServices.Recibo.Recibo := aux; ;
  ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Recibo.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Recibo.RetornoWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFrmNFe.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n: integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    trvwNFe.Items.Clear;

    for n := 0 to ACBrNFe1.NotasFiscais.Count - 1 do
    begin
      with ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
        Nota := trvwNFe.Items.Add(nil, infNFe.ID);
        trvwNFe.Items.AddChild(Nota, 'ID= ' + infNFe.ID);
        Node := trvwNFe.Items.AddChild(Nota, 'procNFe');
        trvwNFe.Items.AddChild(Node, 'tpAmb= ' + TpAmbToStr(procNFe.tpAmb));
        trvwNFe.Items.AddChild(Node, 'verAplic= ' + procNFe.verAplic);
        trvwNFe.Items.AddChild(Node, 'chNFe= ' + procNFe.chNFe);
        trvwNFe.Items.AddChild(Node, 'dhRecbto= ' + DateTimeToStr(procNFe.dhRecbto));
        trvwNFe.Items.AddChild(Node, 'nProt= ' + procNFe.nProt);
        trvwNFe.Items.AddChild(Node, 'digVal= ' + procNFe.digVal);
        trvwNFe.Items.AddChild(Node, 'cStat= ' + IntToStr(procNFe.cStat));
        trvwNFe.Items.AddChild(Node, 'xMotivo= ' + procNFe.xMotivo);

        Node := trvwNFe.Items.AddChild(Nota, 'Ide');
        trvwNFe.Items.AddChild(Node, 'cNF= ' + IntToStr(Ide.cNF));
        trvwNFe.Items.AddChild(Node, 'natOp= ' + Ide.natOp);
        trvwNFe.Items.AddChild(Node, 'indPag= ' + IndpagToStr(Ide.indPag));
        trvwNFe.Items.AddChild(Node, 'modelo= ' + IntToStr(Ide.Modelo));
        trvwNFe.Items.AddChild(Node, 'serie= ' + IntToStr(Ide.Serie));
        trvwNFe.Items.AddChild(Node, 'nNF= ' + IntToStr(Ide.nNF));
        trvwNFe.Items.AddChild(Node, 'dEmi= ' + DateToStr(Ide.dEmi));
        trvwNFe.Items.AddChild(Node, 'dSaiEnt= ' + DateToStr(Ide.dSaiEnt));
        trvwNFe.Items.AddChild(Node, 'tpNF= ' + tpNFToStr(Ide.tpNF));
        trvwNFe.Items.AddChild(Node, 'finNFe= ' + FinNFeToStr(Ide.finNFe));
        trvwNFe.Items.AddChild(Node, 'verProc= ' + Ide.verProc);
        trvwNFe.Items.AddChild(Node, 'cUF= ' + IntToStr(Ide.cUF));
        trvwNFe.Items.AddChild(Node, 'cMunFG= ' + IntToStr(Ide.cMunFG));
        trvwNFe.Items.AddChild(Node, 'tpImp= ' + TpImpToStr(Ide.tpImp));
        trvwNFe.Items.AddChild(Node, 'tpEmis= ' + TpEmisToStr(Ide.tpEmis));
        trvwNFe.Items.AddChild(Node, 'cDV= ' + IntToStr(Ide.cDV));
        trvwNFe.Items.AddChild(Node, 'tpAmb= ' + TpAmbToStr(Ide.tpAmb));
        trvwNFe.Items.AddChild(Node, 'finNFe= ' + FinNFeToStr(Ide.finNFe));
        trvwNFe.Items.AddChild(Node, 'procEmi= ' + procEmiToStr(Ide.procEmi));
        trvwNFe.Items.AddChild(Node, 'verProc= ' + Ide.verProc);

        for i := 0 to Ide.NFref.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(Node, 'NFRef' + IntToStrZero(i + 1, 3));
          trvwNFe.Items.AddChild(Node, 'refNFe= ' + Ide.NFref.Items[i].refNFe);
          trvwNFe.Items.AddChild(Node, 'cUF= ' + IntToStr(Ide.NFref.Items[i].RefNF.cUF));
          trvwNFe.Items.AddChild(Node, 'AAMM= ' + Ide.NFref.Items[i].RefNF.AAMM);
          trvwNFe.Items.AddChild(Node, 'CNPJ= ' + Ide.NFref.Items[i].RefNF.CNPJ);
          trvwNFe.Items.AddChild(Node, 'modelo= ' + IntToStr(Ide.NFref.Items[i].RefNF.Modelo));
          trvwNFe.Items.AddChild(Node, 'serie= ' + IntToStr(Ide.NFref.Items[i].RefNF.Serie));
          trvwNFe.Items.AddChild(Node, 'nNF= ' + IntToStr(Ide.NFref.Items[i].RefNF.nNF));
        end;

        Node := trvwNFe.Items.AddChild(Nota, 'Emit');
        trvwNFe.Items.AddChild(Node, 'CNPJCPF= ' + Emit.CNPJCPF);
        trvwNFe.Items.AddChild(Node, 'IE=' + Emit.IE);
        trvwNFe.Items.AddChild(Node, 'xNome=' + Emit.xNome);
        trvwNFe.Items.AddChild(Node, 'xFant=' + Emit.xFant);
        trvwNFe.Items.AddChild(Node, 'IEST=' + Emit.IEST);
        trvwNFe.Items.AddChild(Node, 'IM=' + Emit.IM);
        trvwNFe.Items.AddChild(Node, 'CNAE=' + Emit.CNAE);

        Node := trvwNFe.Items.AddChild(Node, 'EnderEmit');
        trvwNFe.Items.AddChild(Node, 'Fone=' + Emit.EnderEmit.fone);
        trvwNFe.Items.AddChild(Node, 'CEP=' + IntToStr(Emit.EnderEmit.CEP));
        trvwNFe.Items.AddChild(Node, 'xLgr=' + Emit.EnderEmit.xLgr);
        trvwNFe.Items.AddChild(Node, 'nro=' + Emit.EnderEmit.nro);
        trvwNFe.Items.AddChild(Node, 'xCpl=' + Emit.EnderEmit.xCpl);
        trvwNFe.Items.AddChild(Node, 'xBairro=' + Emit.EnderEmit.xBairro);
        trvwNFe.Items.AddChild(Node, 'cMun=' + IntToStr(Emit.EnderEmit.cMun));
        trvwNFe.Items.AddChild(Node, 'xMun=' + Emit.EnderEmit.xMun);
        trvwNFe.Items.AddChild(Node, 'UF' + Emit.EnderEmit.UF);
        trvwNFe.Items.AddChild(Node, 'cPais=' + IntToStr(Emit.EnderEmit.cPais));
        trvwNFe.Items.AddChild(Node, 'xPais=' + Emit.EnderEmit.xPais);

        if Avulsa.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota, 'Avulsa');
          trvwNFe.Items.AddChild(Node, 'CNPJ=' + Avulsa.CNPJ);
          trvwNFe.Items.AddChild(Node, 'xOrgao=' + Avulsa.xOrgao);
          trvwNFe.Items.AddChild(Node, 'matr=' + Avulsa.matr);
          trvwNFe.Items.AddChild(Node, 'xAgente=' + Avulsa.xAgente);
          trvwNFe.Items.AddChild(Node, 'fone=' + Avulsa.fone);
          trvwNFe.Items.AddChild(Node, 'UF=' + Avulsa.UF);
          trvwNFe.Items.AddChild(Node, 'nDAR=' + Avulsa.nDAR);
          trvwNFe.Items.AddChild(Node, 'dEmi=' + DateToStr(Avulsa.dEmi));
          trvwNFe.Items.AddChild(Node, 'vDAR=' + FloatToStr(Avulsa.vDAR));
          trvwNFe.Items.AddChild(Node, 'repEmi=' + Avulsa.repEmi);
          trvwNFe.Items.AddChild(Node, 'dPag=' + DateToStr(Avulsa.dPag));
        end;
        Node := trvwNFe.Items.AddChild(Nota, 'Dest');
        trvwNFe.Items.AddChild(Node, 'CNPJCPF= ' + Dest.CNPJCPF);
        trvwNFe.Items.AddChild(Node, 'IE=' + Dest.IE);
        trvwNFe.Items.AddChild(Node, 'ISUF=' + Dest.ISUF);
        trvwNFe.Items.AddChild(Node, 'xNome=' + Dest.xNome);

        Node := trvwNFe.Items.AddChild(Node, 'EnderDest');
        trvwNFe.Items.AddChild(Node, 'Fone=' + Dest.EnderDest.fone);
        trvwNFe.Items.AddChild(Node, 'CEP=' + IntToStr(Dest.EnderDest.CEP));
        trvwNFe.Items.AddChild(Node, 'xLgr=' + Dest.EnderDest.xLgr);
        trvwNFe.Items.AddChild(Node, 'nro=' + Dest.EnderDest.nro);
        trvwNFe.Items.AddChild(Node, 'xCpl=' + Dest.EnderDest.xCpl);
        trvwNFe.Items.AddChild(Node, 'xBairro=' + Dest.EnderDest.xBairro);
        trvwNFe.Items.AddChild(Node, 'cMun=' + IntToStr(Dest.EnderDest.cMun));
        trvwNFe.Items.AddChild(Node, 'xMun=' + Dest.EnderDest.xMun);
        trvwNFe.Items.AddChild(Node, 'UF=' + Dest.EnderDest.UF);
        trvwNFe.Items.AddChild(Node, 'cPais=' + IntToStr(Dest.EnderDest.cPais));
        trvwNFe.Items.AddChild(Node, 'xPais=' + Dest.EnderDest.xPais);

        { if Retirada.CNPJ <> '' then
          begin
          Node := trvwNFe.Items.AddChild(Nota,'Retirada');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Retirada.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Retirada.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Retirada.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Retirada.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Retirada.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Retirada.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Retirada.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Retirada.UF);
          end;

          if Entrega.CNPJ <> '' then
          begin
          Node := trvwNFe.Items.AddChild(Nota,'Entrega');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Entrega.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Entrega.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Entrega.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Entrega.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Entrega.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Entrega.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Entrega.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Entrega.UF);
          end; }

        for i := 0 to Det.Count - 1 do
        begin
          with Det.Items[i] do
          begin
            NodeItem := trvwNFe.Items.AddChild(Nota, 'Produto' + IntToStrZero(i + 1, 3));
            trvwNFe.Items.AddChild(NodeItem, 'nItem=' + IntToStr(Prod.nItem));
            trvwNFe.Items.AddChild(NodeItem, 'cProd=' + Prod.cProd);
            trvwNFe.Items.AddChild(NodeItem, 'cEAN=' + Prod.cEAN);
            trvwNFe.Items.AddChild(NodeItem, 'xProd=' + Prod.xProd);
            trvwNFe.Items.AddChild(NodeItem, 'NCM=' + Prod.NCM);
            trvwNFe.Items.AddChild(NodeItem, 'EXTIPI=' + Prod.EXTIPI);
            // trvwNFe.Items.AddChild(NodeItem,'genero=' +IntToStr(Prod.genero));
            trvwNFe.Items.AddChild(NodeItem, 'CFOP=' + Prod.CFOP);
            trvwNFe.Items.AddChild(NodeItem, 'uCom=' + Prod.uCom);
            trvwNFe.Items.AddChild(NodeItem, 'qCom=' + FloatToStr(Prod.qCom));
            trvwNFe.Items.AddChild(NodeItem, 'vUnCom=' + FloatToStr(Prod.vUnCom));
            trvwNFe.Items.AddChild(NodeItem, 'vProd=' + FloatToStr(Prod.vProd));

            trvwNFe.Items.AddChild(NodeItem, 'cEANTrib=' + Prod.cEANTrib);
            trvwNFe.Items.AddChild(NodeItem, 'uTrib=' + Prod.uTrib);
            trvwNFe.Items.AddChild(NodeItem, 'qTrib=' + FloatToStr(Prod.qTrib));
            trvwNFe.Items.AddChild(NodeItem, 'vUnTrib=' + FloatToStr(Prod.vUnTrib));

            trvwNFe.Items.AddChild(NodeItem, 'vFrete=' + FloatToStr(Prod.vFrete));
            trvwNFe.Items.AddChild(NodeItem, 'vSeg=' + FloatToStr(Prod.vSeg));
            trvwNFe.Items.AddChild(NodeItem, 'vDesc=' + FloatToStr(Prod.vDesc));

            trvwNFe.Items.AddChild(NodeItem, 'infAdProd=' + infAdProd);

            for j := 0 to Prod.DI.Count - 1 do
            begin
              if Prod.DI.Items[j].nDi <> '' then
              begin
                with Prod.DI.Items[j] do
                begin
                  NodePai := trvwNFe.Items.AddChild(NodeItem, 'DI' + IntToStrZero(j + 1, 3));
                  trvwNFe.Items.AddChild(NodePai, 'nDi=' + nDi);
                  trvwNFe.Items.AddChild(NodePai, 'dDi=' + DateToStr(dDi));
                  trvwNFe.Items.AddChild(NodePai, 'xLocDesemb=' + xLocDesemb);
                  trvwNFe.Items.AddChild(NodePai, 'UFDesemb=' + UFDesemb);
                  trvwNFe.Items.AddChild(NodePai, 'dDesemb=' + DateToStr(dDesemb));
                  trvwNFe.Items.AddChild(NodePai, 'cExportador=' + cExportador); ;

                  for k := 0 to Adi.Count - 1 do
                  begin
                    with Adi.Items[k] do
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai, 'LADI' + IntToStrZero(k + 1, 3));
                      trvwNFe.Items.AddChild(Node, 'nAdicao=' + IntToStr(nAdicao));
                      trvwNFe.Items.AddChild(Node, 'nSeqAdi=' + IntToStr(nSeqAdi));
                      trvwNFe.Items.AddChild(Node, 'cFabricante=' + cFabricante);
                      trvwNFe.Items.AddChild(Node, 'vDescDI=' + FloatToStr(vDescDI));
                    end;
                  end;
                end;
              end
              else
                Break;
            end;

            if Prod.veicProd.chassi <> '' then
            begin
              Node := trvwNFe.Items.AddChild(NodeItem, 'Veiculo');
              with Prod.veicProd do
              begin
                trvwNFe.Items.AddChild(Node, 'tpOP=' + tpOPToStr(tpOP));
                trvwNFe.Items.AddChild(Node, 'chassi=' + chassi);
                trvwNFe.Items.AddChild(Node, 'cCor=' + cCor);
                trvwNFe.Items.AddChild(Node, 'xCor=' + xCor);
                trvwNFe.Items.AddChild(Node, 'pot=' + pot);
                trvwNFe.Items.AddChild(Node, 'Cilin=' + Cilin);
                trvwNFe.Items.AddChild(Node, 'pesoL=' + pesoL);
                trvwNFe.Items.AddChild(Node, 'pesoB=' + pesoB);
                trvwNFe.Items.AddChild(Node, 'nSerie=' + nSerie);
                trvwNFe.Items.AddChild(Node, 'tpComb=' + tpComb);
                trvwNFe.Items.AddChild(Node, 'nMotor=' + nMotor);
                trvwNFe.Items.AddChild(Node, 'CMT=' + CMT);
                trvwNFe.Items.AddChild(Node, 'dist=' + dist);
         //       trvwNFe.Items.AddChild(Node, 'RENAVAM=' + RENAVAM);
                trvwNFe.Items.AddChild(Node, 'anoMod=' + IntToStr(anoMod));
                trvwNFe.Items.AddChild(Node, 'anoFab=' + IntToStr(anoFab));
                trvwNFe.Items.AddChild(Node, 'tpPint=' + tpPint);
                trvwNFe.Items.AddChild(Node, 'tpVeic=' + IntToStr(tpVeic));
                trvwNFe.Items.AddChild(Node, 'espVeic=' + IntToStr(espVeic));
                trvwNFe.Items.AddChild(Node, 'VIN=' + VIN);
                trvwNFe.Items.AddChild(Node, 'condVeic=' + condVeicToStr(condVeic));
                trvwNFe.Items.AddChild(Node, 'cMod=' + cMod);
              end;
            end;

            for j := 0 to Prod.med.Count - 1 do
            begin
              Node := trvwNFe.Items.AddChild(NodeItem, 'Medicamento' + IntToStrZero(j + 1, 3));
              with Prod.med.Items[j] do
              begin
                trvwNFe.Items.AddChild(Node, 'nLote=' + nLote);
                trvwNFe.Items.AddChild(Node, 'qLote=' + FloatToStr(qLote));
                trvwNFe.Items.AddChild(Node, 'dFab=' + DateToStr(dFab));
                trvwNFe.Items.AddChild(Node, 'dVal=' + DateToStr(dVal));
                trvwNFe.Items.AddChild(Node, 'vPMC=' + FloatToStr(vPMC));
              end;
            end;

            for j := 0 to Prod.arma.Count - 1 do
            begin
              Node := trvwNFe.Items.AddChild(NodeItem, 'Arma' + IntToStrZero(j + 1, 3));
              with Prod.arma.Items[j] do
              begin
//                trvwNFe.Items.AddChild(Node, 'nSerie=' + IntToStr(nSerie));
//                trvwNFe.Items.AddChild(Node, 'tpArma=' + tpArmaToStr(tpArma));
//                trvwNFe.Items.AddChild(Node, 'nCano=' + IntToStr(nCano));
//                trvwNFe.Items.AddChild(Node, 'descr=' + descr);
              end;
            end;

            if (Prod.comb.cProdANP > 0) then
            begin
              NodePai := trvwNFe.Items.AddChild(NodeItem, 'Combustivel');
              with Prod.comb do
              begin
                trvwNFe.Items.AddChild(NodePai, 'cProdANP=' + IntToStr(cProdANP));
                trvwNFe.Items.AddChild(NodePai, 'CODIF=' + CODIF);
                trvwNFe.Items.AddChild(NodePai, 'qTemp=' + FloatToStr(qTemp));

                Node := trvwNFe.Items.AddChild(NodePai, 'CIDE' + IntToStrZero(i + 1, 3));
                trvwNFe.Items.AddChild(Node, 'qBCprod=' + FloatToStr(CIDE.qBCprod));
                trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(CIDE.vAliqProd));
                trvwNFe.Items.AddChild(Node, 'vCIDE=' + FloatToStr(CIDE.vCIDE));

                Node := trvwNFe.Items.AddChild(NodePai, 'ICMSComb' + IntToStrZero(i + 1, 3));
                trvwNFe.Items.AddChild(Node, 'vBCICMS=' + FloatToStr(ICMS.vBCICMS));
                trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                trvwNFe.Items.AddChild(Node, 'vBCICMSST=' + FloatToStr(ICMS.vBCICMSST));
                trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));

                if (ICMSInter.vBCICMSSTDest > 0) then
                begin
                  Node := trvwNFe.Items.AddChild(NodePai, 'ICMSInter' + IntToStrZero(i + 1, 3));
                  trvwNFe.Items.AddChild(Node, 'vBCICMSSTDest=' + FloatToStr(ICMSInter.vBCICMSSTDest));
                  trvwNFe.Items.AddChild(Node, 'vICMSSTDest=' + FloatToStr(ICMSInter.vICMSSTDest));
                end;

                if (ICMSCons.vBCICMSSTCons > 0) then
                begin
                  Node := trvwNFe.Items.AddChild(NodePai, 'ICMSCons' + IntToStrZero(i + 1, 3));
                  trvwNFe.Items.AddChild(Node, 'vBCICMSSTCons=' + FloatToStr(ICMSCons.vBCICMSSTCons));
                  trvwNFe.Items.AddChild(Node, 'vICMSSTCons=' + FloatToStr(ICMSCons.vICMSSTCons));
                  trvwNFe.Items.AddChild(Node, 'UFCons=' + ICMSCons.UFcons);
                end;
              end;
            end;

            with Imposto do
            begin
              NodePai := trvwNFe.Items.AddChild(NodeItem, 'Imposto');
              Node := trvwNFe.Items.AddChild(NodePai, 'ICMS');
              with ICMS do
              begin
                trvwNFe.Items.AddChild(Node, 'CST=' + CSTICMSToStr(CST));

                if CST = cst00 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                end
                else if CST = cst10 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                  trvwNFe.Items.AddChild(Node, 'modBCST=' + modBCSTToStr(ICMS.modBCST));
                  trvwNFe.Items.AddChild(Node, 'pMVAST=' + FloatToStr(ICMS.pMVAST));
                  trvwNFe.Items.AddChild(Node, 'pRedBCST=' + FloatToStr(ICMS.pRedBCST));
                  trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(ICMS.vBCST));
                  trvwNFe.Items.AddChild(Node, 'pICMSST=' + FloatToStr(ICMS.pICMSST));
                  trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));
                end
                else if CST = cst20 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'pRedBC=' + FloatToStr(ICMS.pRedBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                end
                else if CST = cst30 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBCST=' + modBCSTToStr(ICMS.modBCST));
                  trvwNFe.Items.AddChild(Node, 'pMVAST=' + FloatToStr(ICMS.pMVAST));
                  trvwNFe.Items.AddChild(Node, 'pRedBCST=' + FloatToStr(ICMS.pRedBCST));
                  trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(ICMS.vBCST));
                  trvwNFe.Items.AddChild(Node, 'pICMSST=' + FloatToStr(ICMS.pICMSST));
                  trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));
                end
                else if (CST = cst40) or (CST = cst41) or (CST = cst50) then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                end
                else if CST = cst51 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'pRedBC=' + FloatToStr(ICMS.pRedBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                end
                else if CST = cst60 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(ICMS.vBCST));
                  trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));
                end
                else if CST = cst70 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'pRedBC=' + FloatToStr(ICMS.pRedBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                  trvwNFe.Items.AddChild(Node, 'modBCST=' + modBCSTToStr(ICMS.modBCST));
                  trvwNFe.Items.AddChild(Node, 'pMVAST=' + FloatToStr(ICMS.pMVAST));
                  trvwNFe.Items.AddChild(Node, 'pRedBCST=' + FloatToStr(ICMS.pRedBCST));
                  trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(ICMS.vBCST));
                  trvwNFe.Items.AddChild(Node, 'pICMSST=' + FloatToStr(ICMS.pICMSST));
                  trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));
                end
                else if CST = cst90 then
                begin
                  trvwNFe.Items.AddChild(Node, 'orig=' + OrigToStr(ICMS.orig));
                  trvwNFe.Items.AddChild(Node, 'modBC=' + modBCToStr(ICMS.modBC));
                  trvwNFe.Items.AddChild(Node, 'pRedBC=' + FloatToStr(ICMS.pRedBC));
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(ICMS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pICMS=' + FloatToStr(ICMS.pICMS));
                  trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(ICMS.vICMS));
                  trvwNFe.Items.AddChild(Node, 'modBCST=' + modBCSTToStr(ICMS.modBCST));
                  trvwNFe.Items.AddChild(Node, 'pMVAST=' + FloatToStr(ICMS.pMVAST));
                  trvwNFe.Items.AddChild(Node, 'pRedBCST=' + FloatToStr(ICMS.pRedBCST));
                  trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(ICMS.vBCST));
                  trvwNFe.Items.AddChild(Node, 'pICMSST=' + FloatToStr(ICMS.pICMSST));
                  trvwNFe.Items.AddChild(Node, 'vICMSST=' + FloatToStr(ICMS.vICMSST));
                end;
              end;

              if (IPI.vBC > 0) then
              begin
                Node := trvwNFe.Items.AddChild(NodePai, 'IPI');
                with IPI do
                begin
                  trvwNFe.Items.AddChild(Node, 'CST=' + CSTIPIToStr(CST));
                  trvwNFe.Items.AddChild(Node, 'clEnq=' + clEnq);
                  trvwNFe.Items.AddChild(Node, 'CNPJProd=' + CNPJProd);
                  trvwNFe.Items.AddChild(Node, 'cSelo=' + cSelo);
                  trvwNFe.Items.AddChild(Node, 'qSelo=' + IntToStr(qSelo));
                  trvwNFe.Items.AddChild(Node, 'cEnq=' + cEnq);

                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node, 'qUnid=' + FloatToStr(qUnid));
                  trvwNFe.Items.AddChild(Node, 'vUnid=' + FloatToStr(vUnid));
                  trvwNFe.Items.AddChild(Node, 'pIPI=' + FloatToStr(pIPI));
                  trvwNFe.Items.AddChild(Node, 'vIPI=' + FloatToStr(vIPI));
                end;
              end;

              if (II.vBC > 0) then
              begin
                Node := trvwNFe.Items.AddChild(NodePai, 'II');
                with II do
                begin
                  trvwNFe.Items.AddChild(Node, 'vBc=' + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node, 'vDespAdu=' + FloatToStr(vDespAdu));
                  trvwNFe.Items.AddChild(Node, 'vII=' + FloatToStr(vII));
                  trvwNFe.Items.AddChild(Node, 'vIOF=' + FloatToStr(vIOF));
                end;
              end;

              Node := trvwNFe.Items.AddChild(NodePai, 'PIS');
              with PIS do
              begin
                trvwNFe.Items.AddChild(Node, 'CST=' + CSTPISToStr(CST));

                if (CST = pis01) or (CST = pis02) then
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(PIS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pPIS=' + FloatToStr(PIS.pPIS));
                  trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(PIS.vPIS));
                end
                else if CST = pis03 then
                begin
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(PIS.qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(PIS.vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(PIS.vPIS));
                end
                else if CST = pis99 then
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(PIS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pPIS=' + FloatToStr(PIS.pPIS));
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(PIS.qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(PIS.vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(PIS.vPIS));
                end;
              end;

              if (PISST.vBC > 0) then
              begin
                Node := trvwNFe.Items.AddChild(NodePai, 'PISST');
                with PISST do
                begin
                  trvwNFe.Items.AddChild(Node, 'vBc=' + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node, 'pPis=' + FloatToStr(pPIS));
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(vPIS));
                end;
              end;

              Node := trvwNFe.Items.AddChild(NodePai, 'COFINS');
              with COFINS do
              begin
                trvwNFe.Items.AddChild(Node, 'CST=' + CSTCOFINSToStr(CST));

                if (CST = cof01) or (CST = cof02) then
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(COFINS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pCOFINS=' + FloatToStr(COFINS.pCOFINS));
                  trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(COFINS.vCOFINS));
                end
                else if CST = cof03 then
                begin
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(COFINS.qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(COFINS.vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(COFINS.vCOFINS));
                end
                else if CST = cof99 then
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(COFINS.vBC));
                  trvwNFe.Items.AddChild(Node, 'pCOFINS=' + FloatToStr(COFINS.pCOFINS));
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(COFINS.qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(COFINS.vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(COFINS.vCOFINS));
                end;
              end;

              if (COFINSST.vBC > 0) then
              begin
                Node := trvwNFe.Items.AddChild(NodePai, 'COFINSST');
                with COFINSST do
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node, 'pCOFINS=' + FloatToStr(pCOFINS));
                  trvwNFe.Items.AddChild(Node, 'qBCProd=' + FloatToStr(qBCprod));
                  trvwNFe.Items.AddChild(Node, 'vAliqProd=' + FloatToStr(vAliqProd));
                  trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(vCOFINS));
                end;
              end;

              if (ISSQN.vBC > 0) then
              begin
                Node := trvwNFe.Items.AddChild(NodePai, 'ISSQN');
                with ISSQN do
                begin
                  trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node, 'vAliq=' + FloatToStr(vAliq));
                  trvwNFe.Items.AddChild(Node, 'vISSQN=' + FloatToStr(vISSQN));
                  trvwNFe.Items.AddChild(Node, 'cMunFG=' + IntToStr(cMunFG));
                  trvwNFe.Items.AddChild(Node, 'cListServ=' + cListServ);
                end;
              end;
            end;
          end;
        end;

        NodePai := trvwNFe.Items.AddChild(Nota, 'Total');
        Node := trvwNFe.Items.AddChild(NodePai, 'ICMSTot');
        trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(Total.ICMSTot.vBC));
        trvwNFe.Items.AddChild(Node, 'vICMS=' + FloatToStr(Total.ICMSTot.vICMS));
        trvwNFe.Items.AddChild(Node, 'vBCST=' + FloatToStr(Total.ICMSTot.vBCST));
        trvwNFe.Items.AddChild(Node, 'vST=' + FloatToStr(Total.ICMSTot.vST));
        trvwNFe.Items.AddChild(Node, 'vProd=' + FloatToStr(Total.ICMSTot.vProd));
        trvwNFe.Items.AddChild(Node, 'vFrete=' + FloatToStr(Total.ICMSTot.vFrete));
        trvwNFe.Items.AddChild(Node, 'vSeg=' + FloatToStr(Total.ICMSTot.vSeg));
        trvwNFe.Items.AddChild(Node, 'vDesc=' + FloatToStr(Total.ICMSTot.vDesc));
        trvwNFe.Items.AddChild(Node, 'vII=' + FloatToStr(Total.ICMSTot.vII));
        trvwNFe.Items.AddChild(Node, 'vIPI=' + FloatToStr(Total.ICMSTot.vIPI));
        trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(Total.ICMSTot.vPIS));
        trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(Total.ICMSTot.vCOFINS));
        trvwNFe.Items.AddChild(Node, 'vOutro=' + FloatToStr(Total.ICMSTot.vOutro));
        trvwNFe.Items.AddChild(Node, 'vNF=' + FloatToStr(Total.ICMSTot.vNF));

        if Total.ISSQNtot.vServ > 0 then
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'ISSQNtot');
          trvwNFe.Items.AddChild(Node, 'vServ=' + FloatToStr(Total.ISSQNtot.vServ));
          trvwNFe.Items.AddChild(Node, 'vBC=' + FloatToStr(Total.ISSQNtot.vBC));
          trvwNFe.Items.AddChild(Node, 'vISS=' + FloatToStr(Total.ISSQNtot.vISS));
          trvwNFe.Items.AddChild(Node, 'vPIS=' + FloatToStr(Total.ISSQNtot.vPIS));
          trvwNFe.Items.AddChild(Node, 'vCOFINS=' + FloatToStr(Total.ISSQNtot.vCOFINS));
        end;

        Node := trvwNFe.Items.AddChild(NodePai, 'retTrib');
        trvwNFe.Items.AddChild(Node, 'vRetPIS=' + FloatToStr(Total.retTrib.vRetPIS));
        trvwNFe.Items.AddChild(Node, 'vRetCOFINS=' + FloatToStr(Total.retTrib.vRetCOFINS));
        trvwNFe.Items.AddChild(Node, 'vRetCSLL=' + FloatToStr(Total.retTrib.vRetCSLL));
        trvwNFe.Items.AddChild(Node, 'vBCIRRF=' + FloatToStr(Total.retTrib.vBCIRRF));
        trvwNFe.Items.AddChild(Node, 'vIRRF=' + FloatToStr(Total.retTrib.vIRRF));
        trvwNFe.Items.AddChild(Node, 'vBCRetPrev=' + FloatToStr(Total.retTrib.vBCRetPrev));
        trvwNFe.Items.AddChild(Node, 'vRetPrev=' + FloatToStr(Total.retTrib.vRetPrev));

        NodePai := trvwNFe.Items.AddChild(Nota, 'Transp');
        Node := trvwNFe.Items.AddChild(NodePai, 'Transporta');
        trvwNFe.Items.AddChild(Node, 'modFrete=' + modFreteToStr(Transp.modFrete));
        trvwNFe.Items.AddChild(Node, 'CNPJCPF=' + Transp.Transporta.CNPJCPF);
        trvwNFe.Items.AddChild(Node, 'xNome=' + Transp.Transporta.xNome);
        trvwNFe.Items.AddChild(Node, 'IE=' + Transp.Transporta.IE);
        trvwNFe.Items.AddChild(Node, 'xEnder=' + Transp.Transporta.xEnder);
        trvwNFe.Items.AddChild(Node, 'xMun=' + Transp.Transporta.xMun);
        trvwNFe.Items.AddChild(Node, 'UF=' + Transp.Transporta.UF);

        Node := trvwNFe.Items.AddChild(NodePai, 'retTransp');
        trvwNFe.Items.AddChild(Node, 'vServ=' + FloatToStr(Transp.retTransp.vServ));
        trvwNFe.Items.AddChild(Node, 'vBCRet=' + FloatToStr(Transp.retTransp.vBCRet));
        trvwNFe.Items.AddChild(Node, 'pICMSRet=' + FloatToStr(Transp.retTransp.pICMSRet));
        trvwNFe.Items.AddChild(Node, 'vICMSRet=' + FloatToStr(Transp.retTransp.vICMSRet));
        trvwNFe.Items.AddChild(Node, 'CFOP=' + Transp.retTransp.CFOP);
        trvwNFe.Items.AddChild(Node, 'cMunFG=' + FloatToStr(Transp.retTransp.cMunFG));

        Node := trvwNFe.Items.AddChild(NodePai, 'veicTransp');
        trvwNFe.Items.AddChild(Node, 'placa=' + Transp.veicTransp.placa);
        trvwNFe.Items.AddChild(Node, 'UF=' + Transp.veicTransp.UF);
        trvwNFe.Items.AddChild(Node, 'RNTC=' + Transp.veicTransp.RNTC);

        for i := 0 to Transp.Reboque.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'Reboque' + IntToStrZero(i + 1, 3));
          with Transp.Reboque.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'placa=' + placa);
            trvwNFe.Items.AddChild(Node, 'UF=' + UF);
            trvwNFe.Items.AddChild(Node, 'RNTC=' + RNTC);
          end;
        end;

        for i := 0 to Transp.Vol.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'Volume' + IntToStrZero(i + 1, 3));
          with Transp.Vol.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'qVol=' + IntToStr(qVol));
            trvwNFe.Items.AddChild(Node, 'esp=' + esp);
            trvwNFe.Items.AddChild(Node, 'marca=' + marca);
            trvwNFe.Items.AddChild(Node, 'nVol=' + nVol);
            trvwNFe.Items.AddChild(Node, 'pesoL=' + FloatToStr(pesoL));
            trvwNFe.Items.AddChild(Node, 'pesoB' + FloatToStr(pesoB));

            for j := 0 to Lacres.Count - 1 do
            begin
              Node := trvwNFe.Items.AddChild(Node, 'Lacre' + IntToStrZero(i + 1, 3) + IntToStrZero(j + 1, 3));
              trvwNFe.Items.AddChild(Node, 'nLacre=' + Lacres.Items[j].nLacre);
            end;
          end;
        end;

        NodePai := trvwNFe.Items.AddChild(Nota, 'Cobr');
        Node := trvwNFe.Items.AddChild(NodePai, 'Fat');
        trvwNFe.Items.AddChild(Node, 'nFat=' + Cobr.Fat.nFat);
        trvwNFe.Items.AddChild(Node, 'vOrig=' + FloatToStr(Cobr.Fat.vOrig));
        trvwNFe.Items.AddChild(Node, 'vDesc=' + FloatToStr(Cobr.Fat.vDesc));
        trvwNFe.Items.AddChild(Node, 'vLiq=' + FloatToStr(Cobr.Fat.vLiq));

        for i := 0 to Cobr.Dup.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'Duplicata' + IntToStrZero(i + 1, 3));
          with Cobr.Dup.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'nDup=' + nDup);
            trvwNFe.Items.AddChild(Node, 'dVenc=' + DateToStr(dVenc));
            trvwNFe.Items.AddChild(Node, 'vDup=' + FloatToStr(vDup));
          end;
        end;

        NodePai := trvwNFe.Items.AddChild(Nota, 'InfAdic');
        trvwNFe.Items.AddChild(NodePai, 'infCpl=' + InfAdic.infCpl);
        trvwNFe.Items.AddChild(NodePai, 'infAdFisco=' + InfAdic.infAdFisco);

        for i := 0 to InfAdic.obsCont.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'obsCont' + IntToStrZero(i + 1, 3));
          with InfAdic.obsCont.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'xCampo=' + xCampo);
            trvwNFe.Items.AddChild(Node, 'xTexto=' + xTexto);
          end;
        end;

        for i := 0 to InfAdic.obsFisco.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'obsFisco' + IntToStrZero(i + 1, 3));
          with InfAdic.obsFisco.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'xCampo=' + xCampo);
            trvwNFe.Items.AddChild(Node, 'xTexto=' + xTexto);
          end;
        end;

        for i := 0 to InfAdic.procRef.Count - 1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai, 'procRef' + IntToStrZero(i + 1, 3));
          with InfAdic.procRef.Items[i] do
          begin
            trvwNFe.Items.AddChild(Node, 'nProc=' + nProc);
            trvwNFe.Items.AddChild(Node, 'indProc=' + indProcToStr(indProc));
          end;
        end;

        if (exporta.UFembarq <> '') then
        begin
          Node := trvwNFe.Items.AddChild(Nota, 'exporta');
          trvwNFe.Items.AddChild(Node, 'UFembarq=' + exporta.UFembarq);
          trvwNFe.Items.AddChild(Node, 'xLocEmbarq=' + exporta.xLocEmbarq);
        end;

        if (compra.xNEmp <> '') then
        begin
          Node := trvwNFe.Items.AddChild(Nota, 'compra');
          trvwNFe.Items.AddChild(Node, 'xNEmp=' + compra.xNEmp);
          trvwNFe.Items.AddChild(Node, 'xPed=' + compra.xPed);
          trvwNFe.Items.AddChild(Node, 'xCont=' + compra.xCont);
        end;
      end;
      PageControl2.ActivePageIndex := 3;
    end;

  end;
end;

{$ENDREGION}

end.






