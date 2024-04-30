unit NFSe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxClasses, cxDropDownEdit, cxGroupBox, cxRadioGroup,
  cxLabel, cxTextEdit, cxCurrencyEdit, cxMaskEdit, cxSpinEdit, cxCheckBox,
  dxLayoutControl, Vcl.ExtCtrls, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, ACBrBase, ACBrDFe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uWRNotaFiscal,
  dxLayoutLookAndFeels, ACBrDFeReport,
  ACBrNFSeXDANFSeClass, ACBrNFSeXDANFSeRLClass, ACBrNFSeX, ACBrNFSeXConversao,
  ACBrNFSeXClass, cxMemo, Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls,
  ACBrNFSeDANFSeClass, ACBrNFSeXDANFSeFR, ACBrNFSeXProviderBase, cxDateUtils,
  ACBrXmlBase, ACBrNFSeXWebservicesResponse, ACBrXmlDocument, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Aguarde;

type
  TFrmNFSe = class(TForm)
    LctProvedor: TdxLayoutControl;
    chkVisualizar: TcxCheckBox;
    seTimeOut: TcxSpinEdit;
    cbxAjustarAut: TcxCheckBox;
    edtIntervalo: TcxCurrencyEdit;
    edtTentativas: TcxCurrencyEdit;
    edtAguardar: TcxCurrencyEdit;
    edtProxyHost: TcxTextEdit;
    edtProxyPorta: TcxTextEdit;
    edtProxyUser: TcxTextEdit;
    edtProxySenha: TcxTextEdit;
    lblProvedor: TcxLabel;
    rgTipoAmb: TcxRadioGroup;
    cbSSLType: TcxComboBox;
    cxLabel27: TcxLabel;
    chxPossuiHomologacao: TcxCheckBox;
    LctProvedorGroup_Root: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    GrupoBasico: TdxLayoutGroup;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutItem144: TdxLayoutItem;
    dxLayoutItem166: TdxLayoutItem;
    dxLayoutItem201: TdxLayoutItem;
    dxLayoutItem203: TdxLayoutItem;
    dxLayoutItem141: TdxLayoutItem;
    GrupoAvancado: TdxLayoutGroup;
    dxLayoutItem143: TdxLayoutItem;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutItem146: TdxLayoutItem;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem150: TdxLayoutItem;
    dxLayoutItem145: TdxLayoutItem;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutItem149: TdxLayoutItem;
    dxLayoutItem148: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem151: TdxLayoutItem;
    dxLayoutItem152: TdxLayoutItem;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutItem153: TdxLayoutItem;
    dxLayoutItem154: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    btnConfirmar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    btnCancelar: TcxButton;
    LibtnProvedor: TdxLayoutItem;
    btnProvedor: TcxButton;
    LibtnCidade: TdxLayoutItem;
    btnCidade: TcxButton;
    LibtnEmpresa: TdxLayoutItem;
    btnEmpresa: TcxButton;
    LibtnAvancado: TdxLayoutItem;
    btnAvancado: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    liCidade: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    liEmpresa: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    LibtnProximoNumero: TdxLayoutItem;
    btnProximoNumero: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    lblProximoNumero: TcxLabel;
    NF_Erros: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    TransaErros: TFDTransaction;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    ACBrNFSeX1: TACBrNFSeX;
    ACBrNFSeXDANFSeRL1: TACBrNFSeXDANFSeRL;
    pnlChecaResposta: TPanel;
    pgRespostas: TPageControl;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    WBXmlEnvio: TWebBrowser;
    TabSheet6: TTabSheet;
    WBXmlRetorno: TWebBrowser;
    TabSheet5: TTabSheet;
    WBXmlNotas: TWebBrowser;
    ACBrNFSeXDANFSeFR1: TACBrNFSeXDANFSeFR;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rgTipoAmbPropertiesChange(Sender: TObject);
    procedure btnProvedorClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnEmpresaClick(Sender: TObject);
    procedure btnAvancadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chxPossuiHomologacaoPropertiesChange(Sender: TObject);
    procedure btnProximoNumeroClick(Sender: TObject);
    procedure ACBrNFSe1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
    procedure ACBrNFSe1TransmitError(const HttpError, InternalError: Integer;
      const URL, DadosEnviados, SoapAction: string; var Retentar,
      Tratado: Boolean);
    procedure ACBrNFSeX1GerarLog(const ALogLine: string; var Tratado: Boolean);
    procedure ACBrNFSeX1TransmitError(const HttpError, InternalError: Integer;
      const URL, DadosEnviados, SoapAction: string; var Retentar,
      Tratado: Boolean);
    procedure ACBrNFSeX1AntesDeAssinar(var ConteudoXML: string;
      const docElement, infElement, SignatureNode, SelectionNamespaces,
      IdSignature: string);
  private

    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir;
    class procedure CarregaFrame(Var AFrmNFSe : TFrmNFSe; AwrNotaFiscal : TwrNotaFiscal);
    class procedure EnviarEmailNFSe(AEnderecoDestino: string; ADataSet: TDataSet; AACBrNFSeX: TACBrNFSeX);

    procedure InternalCarregaXMLNFSe(const ANotaFiscal: TDataSet);

    //Operações da Nota
    procedure VisualizarNFSe(ANotaFiscal: TDataSet);
    procedure VisualizarNFSeIni(ANotaFiscal: TDataSet);
    procedure ConsultarNFSe(ANotaFiscal: TDataSet);
    procedure ConsultarNFSeManual(ANotaFiscal: TDataSet; ADtInicial, ADtFinal: TDateTime; ACodVenda, ANumIniNFSe, ANumFinNFSe, ANumLote: String);
    procedure ConsultarSituacao(ANotaFiscal : TDataSet);
    procedure ConsultarNFSeporRps(ANotaFiscal: TDataSet; AImprimir: Boolean = True);
    procedure ConsultarLoteRps(ANotaFiscal : TDataSet; AImprimir : Boolean = True);
    procedure LimpaRetornos;

    procedure GravarConfiguracao;

    class procedure DeleteNFSe(ACodNotaFiscal: string);
    class procedure CarregarConfiguracoesPadrao(ADataSetVenda: TDataSet);
    class procedure CarregarObservacaoServicoPadrao(ADataSetVenda, ADataSetFinanceiro: TDataSet);

    procedure GravaEventoChecarResposta(ATipo, ALote, AProtocolo, ALog,
      AXMLEnvio, AXMLRetorno, AModoEnvio, AErro, ACodErro, ACorrecao : String);

    //XML
    class procedure GravaNotaFiscalInsert(AACBrNFSeX: TACBrNFSeX; const ACodVenda: string);
    class procedure GravaNotaFiscalEdit(AACBrNFSeX: TACBrNFSeX; AXMLEnvio, ACodErro, AErro : String);
    class procedure GravarXLMNFSe(AACBrNFSeX: TACBrNFSeX; const ACodVenda: string; ACodigoDestino: Integer = 0);
    class procedure GravarXMLFormatoWRToStream(AACBrNFSeX: TACBrNFSeX; AStream: TStream);
    class function LerXMLFormatoWRFromStream(AACBrNFSeX: TACBrNFSeX; AStream: TStream): TNFSe;
    class function ImportarXML( AArquivosXML, ACodVendaVincular: string; AACBrNFSeX : TACBrNFSeX): Boolean;
    class function GravaRetornoCancelamentoNFSe(AACBrNFSeX: TACBrNFSeX): Integer;
    Class Function LerXMLRetorno(AACBrNFSeX: TACBrNFSeX; AStream: TStream; var ECodigo, EMensagem, ECorrecao :String): TNFSe;

    //Provedor IssDsf
    procedure PreencheDadosPrestador(AACBrNFSeX: TACBrNFSeX);
    procedure ConfiguraACBrNFSe(AwrNotaFiscal : TwrNotaFiscal);
    function ChecarResposta(aMetodo: TMetodo; ACodVenda:String ): Boolean;
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser;
      NomeArq: string = 'temp.xml');
    function ValidaCertificado:Boolean;
    function ValidaEmpresa:Boolean;
    function ValidaNFSePessoas(ADataSet : TDataSet):Boolean;
    function ValidaNFSeShemas(ADataSet : TDataSet): Boolean;
    procedure MigrarNotasParaINI;
//    class procedure PreencheTagsFaltantesConsultando(const AOrigem, ADestino: TACBrNFSe; ACodVenda: string);
//    class procedure GravarXMLFormatoWRToArquivo(AACBrNFSe: TACBrNFSe; const ACaminho: string);
//    class procedure LerXMLFormatoWRFromArquivo(AACBrNFSe: TACBrNFSe; const ACaminho: string);
//    class procedure CarregaXMLNFSePeloCodigo(const AACBrNFSe: TACBrNFSe; const ACodigo: Integer);
//    class procedure CarregaXMLNFSePeloNumNota(const AACBrNFSe: TACBrNFSe; const ANumNota: Int64);
//    class procedure CarregaXMLNFSeFormatoWRPeloCodigo(const AACBrNFSeX: TACBrNFSeX; const ACodigo: Integer);
//    class function ImportarXML(AArquivoXML, ACodVendaVincular: string): Boolean;
//    class function GetConfigsPadroesDaCidade(AACBrNFSe: TACBrNFSe): TObjectList<TNFSeCidadeConfigPadrao>;
//    class function CriaComponenteACBrNFSe: TACBrNFSe;
  end;

 { TACBrNFSeThreadEvents = class(TComponent)
  strict private type
    TInnerAguardeEstado = (aeNormal, aeMinimizado);
  strict private
    FFormVenda: TForm;
    FFormAguarde: TFrmAguarde;
    FFormAguardeEstado: TInnerAguardeEstado;
    procedure ACBrNFSeStatusChange(Sender: TObject);
    procedure SetAguardeMensagem(const AMensagem: string);
    procedure AguardeMudaEstado(ANovoEstado: TInnerAguardeEstado);
    procedure AguardeOnCustomButtonClick(Sender: TObject);
  public
    constructor Create(AACBrNFSe: TACBrNFSe; AFormVenda: TForm; AFrmAguarde: TFrmAguarde);
  end; }

var
  FNomedoarquivo: String;
  FArquivo: TextFile;

implementation

{$R *.dfm}
Uses
  Classes.WR, blcksock, IniFiles, FileCtrl, UnitFuncoes, TypInfo, ACBrDFeUtil,
  pcnConversao, XMLIntf, DataModuleImpressao, XMLDoc, ACBrNFSeXNotasFiscais,
  StrUtils, wrFuncoes, wrConstantes, ACBrDFeSSL, wrConversao,
  DateUtils, Math, pnfsLerListaNFSe, Principal, synacode, Validacoes,
  ACBrUtil, wrForms, CadEmpresa, CadCidades, CadNF_Provedor, Email,
  ProximoNumero, NFe_Status, uWeb, NFe, Senha;

class procedure TFrmNFSe.CarregaFrame(Var AFrmNFSe : TFrmNFSe; AwrNotaFiscal : TwrNotaFiscal);
begin
  if Not Assigned(AFrmNFSe) then
  begin
    AFrmNFSe := TFrmNFSe.Create(nil);
    AFrmNFSe.ConfiguraACBrNFSe(AwrNotaFiscal);
  end;
end;

class procedure TFrmNFSe.Abrir;
var
  AFrm: TFrmNFSe;
begin
  AFrm := TFrmNFSe.Create(nil);
  try
    AFrm.ShowModal;
  finally
    AFrm.Free;
  end;
end;
   (*
procedure TFrmNFSe.AtualizarCidades;
var
 IniCidades: TMemIniFile;
 Cidades: TStringList;
 I: Integer;
 sNome, sCod, sUF: String;
begin
  IniCidades := TMemIniFile.Create('');
  Cidades := TStringList.Create;
  ACBrNFSeX1.LerCidades;
  IniCidades.SetStrings(ACBrNFSeX1.Configuracoes.WebServices.Params);
  try
    IniCidades.ReadSections(Cidades);
    cbCidades.Items.Clear;
    for I := 0 to Pred(Cidades.Count) do
    begin
      if (StrToIntdef(Cidades[I], 0) > 0) then
      begin
        //Exemplo: Alfenas/3101607/MG
        sCod := Cidades[I];
        sNome := IniCidades.ReadString(sCod, 'Nome', '');
        sUF := IniCidades.ReadString(sCod, 'UF', '');
        cbCidades.Items.Add(Format('%s/%s/%s', [sNome, sCod, sUF]));
     end;
   end;
   //Sort
    cbCidades.Sorted := false;
    cbCidades.Sorted := true;
    edtTotalCidades.Text := IntToStr(cbCidades.Items.Count);
  finally
    FreeAndNil(Cidades);
    IniCidades.Free;
  end;
end;    *)

procedure TFrmNFSe.ConfiguraACBrNFSe(AwrNotaFiscal : TwrNotaFiscal);   //ConfigurarComponente
var
  APathMensal: string;
  AOk: Boolean;
  AAguardar: Cardinal;
  AFr3: string;
begin
  if Empresa.FieldByName('EMITE_NFSE').AsString <> 'S' then
    Exit;

  WRLog('Inicia configuração do componente ACBrNFSe');
  if Empresa.FieldByName('Tem_Certificado').AsString = 'S' then     // Aqui seria interessante ter os dados antes
  begin
    ACBrNFSeX1.Configuracoes.Certificados.NumeroSerie:='';
    ACBrNFSeX1.Configuracoes.Certificados.DadosPFX := DecodeBase64(Empresa.FieldByName('Certificado').AsString);
    ACBrNFSeX1.Configuracoes.Certificados.Senha    := Empresa.FieldByName('Certificado_Senha').AsString;
  end else
  begin
    ACBrNFSeX1.Configuracoes.Certificados.DadosPFX := '';
    ACBrNFSeX1.Configuracoes.Certificados.Senha    := '';
    ACBrNFSeX1.Configuracoes.Certificados.NumeroSerie := Empresa.FieldByName('NFe_NumSerie').AsString; //AIni.ReadString(ACNPJCPF + 'Certificado', 'NumSerie', '');
  end;


  ACBrNFSeX1.Configuracoes.Arquivos.IniServicos := ExtractFilePath(Application.ExeName) + '\ACBrNFSeXServicos.ini';
  ACBrNFSeX1.SSL.DescarregarCertificado;
  ACBrNFSeX1.LerCidades;
  with ACBrNFSeX1.Configuracoes.Geral do
  begin
    SSLLib        := libWinCrypt;
    SSLCryptLib   := cryWinCrypt;
    SSLHttpLib    := httpWinHttp;
    SSLXmlSignLib := xsLibXml2;
    if TConfig.ReadString('NFSE_WEBSERVICE_SSL_TYPE') = '' then
      ACBrNFSeX1.SSL.SSLType := LT_all
    else
      ACBrNFSeX1.SSL.SSLType := TSSLType(TConfig.ReadInteger('NFSE_WEBSERVICE_SSL_TYPE'));

    Salvar                := True;
    RetirarEspacos        := False;
    RetirarAcentos        := True;

//    ExibirErroSchema := cbxExibirErroSchema.Checked;     ??
//    FormatoAlerta    := edtFormatoAlerta.Text;           ??
//    FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ??
//    MontarPathSchema := chkMontarPathSchemas.Checked;
//
//    CNPJPrefeitura := edtCNPJPrefeitura.Text;

    Emitente.CNPJ         := OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString);
    Emitente.InscMun      := OnlyNumberWR(Empresa.FieldByName('IM').AsString);
    Emitente.RazSocial    := RemoveAcento(Empresa.FieldByName('RAZAOSOCIAL').AsString);
    Emitente.WSUser       := Empresa.FieldByName('NFSE_USUARIO').AsString;      //TConfig.ReadString('NFSE_WEBSERVICE_USUARIO');
    Emitente.WSSenha      := Empresa.FieldByName('NFSE_SENHA').AsString;        //TConfig.ReadString('NFSE_WEBSERVICE_SENHA');
    Emitente.WSFraseSecr  := Empresa.FieldByName('NFSE_WEBFRASESECR').AsString; //TConfig.ReadString('NFSE_WEBSERVICE_FRASE_SECRETA');
//    Emitente.WSChaveAcesso  := edtChaveAcessoWeb.Text;   não tem ainda no sistema
//    Emitente.WSChaveAutoriz := edtChaveAutorizWeb.Text;  não tem ainda no sistema
    {
      Para o provedor ADM, utilizar as seguintes propriedades de configurações:
      WSChaveAcesso  para o Key
      WSChaveAutoriz para o Auth
      WSUser         para o RequestId

      Essas 3 propriedades são geradas pelo provedor quando o emitente se cadastra
    }
  end;



  with  ACBrNFSeX1.Configuracoes.Arquivos do
  begin
    Salvar           := True;
    AdicionarLiteral := True;
    EmissaoPathNFSe  := True;
    SepararPorMes    := True;
    SepararPorCNPJ   := True;
    NomeLongoNFSe    := False;

    PathGer          := Empresa.FieldByName('NFE_PATH').AsString;
    try
      PathSchemas  := Empresa.FieldByName('NFE_PATH').AsString + 'Schemas\NFSe\';
      {Quando o tipo do SSL não for compatível, o ACBr não consegue retornar o path e gera uma exceção. Aqui apenas não
       modificamos o Path que já está no componente caso algum erro ocorra}
      APathMensal := GetPathGer(0);
      PathCan    := APathMensal;
      PathSalvar := APathMensal;
    except end;
  end;

{$REGION 'Nativo ACBR'}
  {
  with ACBrNFSeX1.Configuracoes.WebServices do
  begin
    Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
    Visualizar := cbxVisualizar.Checked;
    Salvar     := cbxSalvarSOAP.Checked;
    UF         := edtEmitUF.Text;

    AjustaAguardaConsultaRet := cbxAjustarAut.Checked;

    if NaoEstaVazio(edtAguardar.Text)then
      AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text) < 1000, StrToInt(edtAguardar.Text) * 1000, StrToInt(edtAguardar.Text))
    else
      edtAguardar.Text := IntToStr(AguardarConsultaRet);

    if NaoEstaVazio(edtTentativas.Text) then
      Tentativas := StrToInt(edtTentativas.Text)
    else
      edtTentativas.Text := IntToStr(Tentativas);

    if NaoEstaVazio(edtIntervalo.Text) then
      IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text) < 1000, StrToInt(edtIntervalo.Text) * 1000, StrToInt(edtIntervalo.Text))
    else
      edtIntervalo.Text := IntToStr(ACBrNFSeX1.Configuracoes.WebServices.IntervaloTentativas);

    TimeOut   := seTimeOut.Value;
    ProxyHost := edtProxyHost.Text;
    ProxyPort := edtProxyPorta.Text;
    ProxyUser := edtProxyUser.Text;
    ProxyPass := edtProxySenha.Text;
  end;

  ACBrNFSeX1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);

  with ACBrNFSeX1.Configuracoes.Arquivos do
  begin
    NomeLongoNFSe    := True;
    Salvar           := cbxSalvarArqs.Checked;
    SepararPorMes    := cbxPastaMensal.Checked;
    AdicionarLiteral := cbxAdicionaLiteral.Checked;
    EmissaoPathNFSe  := cbxEmissaoPathNFSe.Checked;
    SepararPorCNPJ   := cbxSepararPorCNPJ.Checked;
    PathSchemas      := edtPathSchemas.Text;
    PathGer          := edtPathLogs.Text;
    PathMensal       := GetPathGer(0);
    PathSalvar       := PathMensal;
    PathCan          := PathMensal;
  end;

  if ACBrNFSeX1.DANFSe <> nil then
  begin
    // TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
    ACBrNFSeX1.DANFSe.TipoDANFSE := tpPadrao;
    ACBrNFSeX1.DANFSe.Logo       := edtLogoMarca.Text;
    ACBrNFSeX1.DANFSe.Prefeitura := edtPrefeitura.Text;
    ACBrNFSeX1.DANFSe.PathPDF    := edtPathPDF.Text;

    ACBrNFSeX1.DANFSe.Prestador.Logo := edtPrestLogo.Text;

    ACBrNFSeX1.DANFSe.MargemDireita  := 5;
    ACBrNFSeX1.DANFSe.MargemEsquerda := 5;
    ACBrNFSeX1.DANFSe.MargemSuperior := 5;
    ACBrNFSeX1.DANFSe.MargemInferior := 5;
  end;

  with ACBrNFSeX1.MAIL do
  begin
    Host      := edtSmtpHost.Text;
    Port      := edtSmtpPort.Text;
    Username  := edtSmtpUser.Text;
    Password  := edtSmtpPass.Text;
    From      := edtEmailRemetente.Text;
    FromName  := edtEmitRazao.Text;
    SetTLS    := cbEmailTLS.Checked;
    SetSSL    := cbEmailSSL.Checked;
    UseThread := False;

    ReadingConfirmation := False;
  end;

  // A propriedade CodigoMunicipio tem que ser a ultima a receber o seu valor
  // Pois ela se utiliza das demais configurações
  with ACBrNFSeX1.Configuracoes.Geral do
  begin
    CodigoMunicipio := StrToIntDef(edtCodCidade.Text, 0);

    // Exemplos de valores para WSChaveAcesso para alguns provedores.

    if Provedor in [proAgili, proElotech] then
      Emitente.WSChaveAcesso := '0aA1bB2cC3dD4eE5fF6aA7bB8cC9dDEF';

    if Provedor = proISSNet then
      Emitente.WSChaveAcesso := 'A001.B0001.C0001-1';

    if Provedor = proSigep then
      Emitente.WSChaveAcesso := 'A001.B0001.C0001';

    if Provedor = proiiBrasil then
      Emitente.WSChaveAcesso := 'TLXX4JN38KXTRNSEAJYYEA==';
  end;

  lblSchemas.Caption := ACBrNFSeX1.Configuracoes.Geral.xProvedor;
  lblVersaoSchemas.Caption := VersaoNFSeToStr(ACBrNFSeX1.Configuracoes.Geral.Versao); }
{$ENDREGION}

  try
    ACBrNFSeX1.Configuracoes.Geral.CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsInteger;
    if ACBrNFSeX1.Configuracoes.Geral.CodigoMunicipio = 3158953 then //Lote Sincrono para Santana do Paraiso
      ACBrNFSeX1.Provider.ConfigGeral.ModoEnvio :=  meLoteSincrono;  //Aqui precisa pegar os dados do Cidade para não precisar
//    if ACBrNFSeX1.Configuracoes.Geral.CodigoMunicipio = x then     //mais do ini, mas alguns parametros são readonly
//      ACBrNFSeX1.Configuracoes.Geral.Versao := ve203;
//    ACBrNFSeX1.Configuracoes.Geral.Provedor := ProActcon;
//    ACBrNFSeX1.Configuracoes.Geral.xProvedor := 'ActCon'; //ready only
//    ACBrNFSeX1.Configuracoes.Geral.Versao := ve202;
//    ACBrNFSeX1.Configuracoes.Geral.xMunicipio := 'Santana do Paraiso'; //ready only
//    ACBrNFSeX1.Configuracoes.Geral.xUF := 'MG';  //ready only




// Aqui deve comparar o Arquivo gerado com o Arquivo do NF_Provedor
// Baixar shemas atualizada
//  TODO:
// Checa Emprea????
// Checa Cliente e seus campos obrigatórios??
// Checa Serviço esta cadastrado na prefeitura.
// Checa Certificado Digital valido, com senha, dentro do prazo de validade e Informa que vai vencer em 5 dias
// Checa senha do site da prefeitura
// Shemas e Versão caso não tenha a pasta e versão baixar do site e desconpactar
// Checa nova Cidades.INI se tem algo diferente do padrão, verifica a versão do arquivo enviado se for igual ao softavare não faz nada, se form diferente carrega a versão do CidadesX.ini

  except
    on E:Exception do
    begin
      if AnsiContainsText(E.Message, 'Arquivo de Parâmetro não encontrado') then
      begin
        if ShowMessageWR(E.Message + sLineBreak + sLineBreak + 'O sistema irá baixar e instalar os arquivos padrões de ' +
          'configuração (Ini''s e Schemas). Qualquer aquivo de configuração existente será substituído. ' + sLineBreak +
          'Deseja continuar?', MB_ICONQUESTION) = mrYes then
        begin
          TFrmNFe.AtualizarSchemasEInis;
          ConfiguraACBrNFSe(AwrNotaFiscal);
          Exit;
        end;
      end;
    end;
  end;
  with  ACBrNFSeX1.Configuracoes.WebServices do
  begin
    Salvar          := True;
  //  Deveria Vir Tudo RegEdit
    Ambiente        := StrToTpAmb(AOk, IntToStr(TConfig.ReadInteger('NFSE_WEBSERVICE_AMBIENTE') + 1));
    Visualizar      := TConfig.ReadBoolean('NFSE_WEBSERVICE_VISUALIZAR_MENSAGENS');
    ProxyHost       := TConfig.ReadString('NFSE_PROXY_HOST');
    ProxyPort       := TConfig.ReadString('NFSE_PROXY_PORTA');
    ProxyUser       := TConfig.ReadString('NFSE_PROXY_USUARIO');
    ProxyPass       := TConfig.ReadString('NFSE_PROXY_SENHA');
    UF              := Empresa.FieldByName('UF').AsString;     // Correto

    if TConfig.ReadString('NFSE_WEBSERVICE_TIMEOUT') = '' then
      TimeOut := 5000
    else
      TimeOut := TConfig.ReadInteger('NFSE_WEBSERVICE_TIMEOUT');

    AAguardar := TConfig.ReadInteger('NFSE_WEBSERVICE_AGUARDAR');
    if AAguardar < 1000 then
      AAguardar := AAguardar * 1000;
    if AAguardar = 0 then
      AAguardar := 1000;
    AguardarConsultaRet := AAguardar;

    if TConfig.ReadString('NFSE_WEBSERVICE_TENTATIVAS') = '' then
      Tentativas := 5
    else
      Tentativas := TConfig.ReadInteger('NFSE_WEBSERVICE_TENTATIVAS');
    IntervaloTentativas := TConfig.ReadInteger('NFSE_WEBSERVICE_INTERVALO');

    {Esta flag AjustaAguardaConsultaRet não é usada pelo ACBrNFSe. Ela depende do retorno de uma tag do webservice
     chamada TMed que representa o tempo médio de resposta, e os webservices de NFSe não implementam esta tag no retorno,
     apenas outros webservices como NFe, MDFe, dentre outros... Verificar se realmente não é necessária e remover}
    AjustaAguardaConsultaRet := TConfig.ReadBoolean('NFSE_WEBSERVICE_AJUSTAR_AGUARDE_AUTOMATICO');

  end;
  with ACBrNFSeX1.DANFSE do
  begin
   if Empresa.FieldByName('NFSE_DANFE').AsString = 'Fortes Report' then
      ACBrNFSeX1.DANFSE := ACBrNFSeXDANFSeRL1
    else
      ACBrNFSeX1.DANFSE := ACBrNFSeXDANFSeFR1;

    if ACBrNFSeX1.DANFSE is TACBrNFSeXDANFSeFR then
    begin
      if not DMImpressaoCarregaArquivoFR3(AFr3, TipoArquivoFR3ToStr(tafr3DANFSeX)) then
        Abort;
      TACBrNFSeXDANFSeFR(ACBrNFSeX1.DANFSE).FastFile := AFr3;
    end;

    ImprimeCanhoto := TConfig.ReadBoolean('NFSe_IMPRIME_CANHOTO');    // Deveria Vir do CadEmpresa
    Sistema        := 'Office Impresso';
    Site           := 'http://officeimpresso.com.br/';
    Prefeitura     := 'SECRETARIA DO MUNICIPIO DE '+UpperCase(Empresa.FieldByName('CIDADE').AsString + '/' + Empresa.FieldByName('UF').AsString);
    Logo           := DMImpressaoCarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger, tplPrefeitura);
    Prestador.Logo := DMImpressaoCarregaLogo_BlobToString(Empresa.FieldByName('CODIGO').AsInteger);
    PathPDF        := ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar;
    //Depende do Servidor, Aqui deve escolhar qual melor meio para Imprimir
    ACBrNFSeX1.DANFSe.TipoDANFSE     := TTipoDANFSE.tpPadrao; //TTipoDANFSE = (tpPadrao, tpIssDSF, tpFiorilli, tpAdm)
  end;

  //Configurações gerais do componente
  AwrNotaFiscal.ACBrNFSeX          := ACBrNFSeX1;
  //AwrNotaFiscal.ImprimirXPedNPed  := TConfig.ReadBoolean('NF_NFE_IMPRIMIR_XPED_NTEMPED');
  AwrNotaFiscal.ComunicacaoVisual := ComunicacaoVisual;
  AwrNotaFiscal.VersaoSistema     := Sistema.Versao;
  AwrNotaFiscal.PafNFe            := PAFNFE;
  if Assigned(AwrNotaFiscal.Transportadora)  then
    AwrNotaFiscal.Transportadora.Open;

  WRLog('Configurações gerais do componente');
//  TFDQuery(AwrNotaFiscal.NF_Provedor).ParamByName('Descricao').AsString:=Procura('NFSE_PROVEDOR', 'CIDADES', Empresa.FieldByName('CodCidade').AsString);
//
//  AwrNotaFiscal.NF_Provedor.Open;
//  ACBrNFSeX1.Configuracoes.Arquivos.PathSchemas  := Empresa.FieldByName('NFE_PATH').AsString + 'Schemas\NFSe\';// + AwrNotaFiscal.NF_Provedor.FieldByName('DESCRICAO').AsString + '\';
      //Configurações específicas para NFSe                                      METODO_ENVIO
//    AwrNotaFiscal.NF_Provedor.Metodo_Envio              := AwrNotaFiscal.NF_Provedor.FieldByName('METODO_ENVIO').AsString;// 'SINCRONO';//PNF_Provedor.FieldByName('NFSE_METODO_ENVIO').AsString;// TConfig.ReadString('NFSE_METODO_ENVIO');
//    AwrNotaFiscal.NF_Provedor.Tipo_RPS                  := StrToTipoRPS(AOk, AQueryNF_Provedor.FieldByName('TIPO_RPS').AsString );// TConfig.ReadString('TIPO_RPS'));
 {   AwrNotaFiscal.NF_Provedor.Serie                     := TConfig.ReadString('SERIE_NFSE');
    AwrNotaFiscal.NF_Provedor.ImpressaoBethaFlyNota     := TConfig.ReadBoolean('IMPRESSAO_BETHA_FLYNOTA_NFSE');
    AwrNotaFiscal.NF_Provedor.VendaSimplificaServico    := TConfig.ReadBoolean('VENDA_SIMPLIFICA_SERVICO');
    AwrNotaFiscal.NF_Provedor.NaoPreencheIEMesmoMun     := TConfig.ReadBoolean('NAO_PREENCHE_IE_MESMO_MUNICIPIO');
    AwrNotaFiscal.NF_Provedor.UsaMultiplosServicos      := TConfig.ReadBoolean('NFSE_USA_MULTIPLOS_SERVICOS');  }
  //  AwrNotaFiscal.ConfigNFSe.MunicipioPrestacaoServico := TConfig.ReadBoolean('MUNICIPIO_PRESTACAO_SERVICO');
end;

procedure TFrmNFSe.GravarConfiguracao;
var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
//  IniFile := ChangeFileExt(Application.ExeName, '.ini');
//
//  Ini := TIniFile.Create(IniFile);
//  try
//    Ini.WriteInteger('Certificado', 'SSLLib',     cbSSLLib.ItemIndex);
//    Ini.WriteInteger('Certificado', 'CryptLib',   cbCryptLib.ItemIndex);
//    Ini.WriteInteger('Certificado', 'HttpLib',    cbHttpLib.ItemIndex);
//    Ini.WriteInteger('Certificado', 'XmlSignLib', cbXmlSignLib.ItemIndex);
//    Ini.WriteString( 'Certificado', 'Caminho',    edtCaminho.Text);
//    Ini.WriteString( 'Certificado', 'Senha',      edtSenha.Text);
//    Ini.WriteString( 'Certificado', 'NumSerie',   edtNumSerie.Text);
//
//    Ini.WriteBool(   'Geral', 'AtualizarXML',     cbxAtualizarXML.Checked);
//    Ini.WriteBool(   'Geral', 'ExibirErroSchema', cbxExibirErroSchema.Checked);
//    Ini.WriteString( 'Geral', 'FormatoAlerta',    edtFormatoAlerta.Text);
//    Ini.WriteInteger('Geral', 'FormaEmissao',     cbFormaEmissao.ItemIndex);
//    Ini.WriteBool(   'Geral', 'RetirarAcentos',   cbxRetirarAcentos.Checked);
//    Ini.WriteBool(   'Geral', 'Salvar',           ckSalvar.Checked);
//    Ini.WriteString( 'Geral', 'PathSalvar',       edtPathLogs.Text);
//    Ini.WriteString( 'Geral', 'PathSchemas',      edtPathSchemas.Text);
//    Ini.WriteString( 'Geral', 'LogoMarca',        edtLogoMarca.Text);
//    Ini.WriteString( 'Geral', 'PrestLogo',        edtPrestLogo.Text);
//    Ini.WriteString( 'Geral', 'Prefeitura',       edtPrefeitura.Text);
//
//    Ini.WriteBool(   'Geral', 'ConsultaAposEnvio',    chkConsultaLoteAposEnvio.Checked);
//    Ini.WriteBool(   'Geral', 'ConsultaAposCancelar', chkConsultaAposCancelar.Checked);
//    Ini.WriteBool(   'Geral', 'MontarPathSchemas',    chkMontarPathSchemas.Checked);
//
//    Ini.WriteInteger('WebService', 'Ambiente',     rgTipoAmb.ItemIndex);
//    Ini.WriteBool(   'WebService', 'Visualizar',   cbxVisualizar.Checked);
//    Ini.WriteBool(   'WebService', 'SalvarSOAP',   cbxSalvarSOAP.Checked);
//    Ini.WriteBool(   'WebService', 'AjustarAut',   cbxAjustarAut.Checked);
//    Ini.WriteString( 'WebService', 'Aguardar',     edtAguardar.Text);
//    Ini.WriteString( 'WebService', 'Tentativas',   edtTentativas.Text);
//    Ini.WriteString( 'WebService', 'Intervalo',    edtIntervalo.Text);
//    Ini.WriteInteger('WebService', 'TimeOut',      seTimeOut.Value);
//    Ini.WriteInteger('WebService', 'SSLType',      cbSSLType.ItemIndex);
//    Ini.WriteString( 'WebService', 'SenhaWeb',     edtSenhaWeb.Text);
//    Ini.WriteString( 'WebService', 'UserWeb',      edtUserWeb.Text);
//    Ini.WriteString( 'WebService', 'FraseSecWeb',  edtFraseSecWeb.Text);
//    Ini.WriteString( 'WebService', 'ChAcessoWeb',  edtChaveAcessoWeb.Text);
//    Ini.WriteString( 'WebService', 'ChAutorizWeb', edtChaveAutorizWeb.Text);
//
//    Ini.WriteString('Proxy', 'Host', TConfig.ReadString('NFSE_PROXY_HOST');
//    Ini.WriteString('Proxy', 'Porta', TConfig.ReadString('NFSE_PROXY_PORTA');
//    Ini.WriteString('Proxy', 'User', TConfig.ReadString('NFSE_PROXY_USUARIO');
//    Ini.WriteString('Proxy', 'Pass', TConfig.ReadString('NFSE_PROXY_SENHA');
//
//
//    Ini.WriteBool(  'Arquivos', 'Salvar',          cbxSalvarArqs.Checked);
//    Ini.WriteBool(  'Arquivos', 'PastaMensal',     cbxPastaMensal.Checked);
//    Ini.WriteBool(  'Arquivos', 'AddLiteral',      cbxAdicionaLiteral.Checked);
//    Ini.WriteBool(  'Arquivos', 'EmissaoPathNFSe', cbxEmissaoPathNFSe.Checked);
//    Ini.WriteBool(  'Arquivos', 'SepararPorCNPJ',  cbxSepararPorCNPJ.Checked);
//    Ini.WriteString('Arquivos', 'PathNFSe',        edtPathNFSe.Text);
//
//    Ini.WriteString('Emitente', 'CNPJ',        edtEmitCNPJ.Text);
//    Ini.WriteString('Emitente', 'IM',          edtEmitIM.Text);
//    Ini.WriteString('Emitente', 'RazaoSocial', edtEmitRazao.Text);
//    Ini.WriteString('Emitente', 'Fantasia',    edtEmitFantasia.Text);
//    Ini.WriteString('Emitente', 'Fone',        edtEmitFone.Text);
//    Ini.WriteString('Emitente', 'CEP',         edtEmitCEP.Text);
//    Ini.WriteString('Emitente', 'Logradouro',  edtEmitLogradouro.Text);
//    Ini.WriteString('Emitente', 'Numero',      edtEmitNumero.Text);
//    Ini.WriteString('Emitente', 'Complemento', edtEmitComp.Text);
//    Ini.WriteString('Emitente', 'Bairro',      edtEmitBairro.Text);
//    Ini.WriteString('Emitente', 'CodCidade',   edtCodCidade.Text);
//    Ini.WriteString('Emitente', 'Cidade',      edtEmitCidade.Text);
//    Ini.WriteString('Emitente', 'UF',          edtEmitUF.Text);
//    Ini.WriteString('Emitente', 'CNPJPref',    edtCNPJPrefeitura.Text);
//
//    Ini.WriteString('Email', 'Host',    edtSmtpHost.Text);
//    Ini.WriteString('Email', 'Port',    edtSmtpPort.Text);
//    Ini.WriteString('Email', 'User',    edtSmtpUser.Text);
//    Ini.WriteString('Email', 'Pass',    edtSmtpPass.Text);
//    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
//    Ini.WriteBool(  'Email', 'SSL',     cbEmailSSL.Checked );
//
//    StreamMemo := TMemoryStream.Create;
//    mmEmailMsg.Lines.SaveToStream(StreamMemo);
//    StreamMemo.Seek(0,soFromBeginning);
//
//    Ini.WriteBinaryStream('Email', 'Mensagem', StreamMemo);
//
//    StreamMemo.Free;
//
//    if edtPathPDF.Text = '' then
//      edtPathPDF.Text := edtPathNFSe.Text;
//
//    Ini.WriteInteger('DANFSE', 'Tipo',      rgTipoDANFSE.ItemIndex);
//    Ini.WriteString( 'DANFSE', 'LogoMarca', edtLogoMarca.Text);
//    Ini.WriteString( 'DANFSE', 'PathPDF',   edtPathPDF.Text);
//
//    ConfigurarComponente;
//  finally
//    Ini.Free;
//  end;
end;


class procedure TFrmNFSe. CarregarConfiguracoesPadrao(ADataSetVenda: TDataSet);
var
  AOk: Boolean;
  AConfig{, AISSRetidoPessoa }: string;
begin

  ADataSetVenda.FieldByName('SERVICO_NATUREZA_OPERACAO').AsString      := TConfig.ReadString('EDTNATOP');
  ADataSetVenda.FieldByName('SERVICO_REGIME_ESPECIAL_TRIBUT').AsString := TConfig.ReadString('EDTREGTRIBUTACAO');

  //Aqui estamos usando por enquanto o PCredSN mas não é o campo correto. Deveria ter um campo específico para essa alíquota no cadastro de empresa
  ADataSetVenda.FieldByName('NF_PALIQ_SN').AsFloat := Empresa.FieldByName('PCREDSN').AsFloat;

  AConfig := TConfig.ReadString('EDTINCENTIVADOR');
  if AConfig = 'Sim' then
    ADataSetVenda.FieldByName('SERVICO_INCENTIVADOR_CULTURAL').AsString := '1'
  else
    ADataSetVenda.FieldByName('SERVICO_INCENTIVADOR_CULTURAL').AsString := '2';
 {
  AISSRetidoPessoa := Procura('ISS_RETIDO', 'PESSOAS', ADataSetVenda.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
  if AISSRetidoPessoa = '' then //if MatchStr(AISSRetidoPessoa, ['', 'Padrão']) then
  begin
    AConfig := TConfig.ReadString('EDTRETIDO');
    if AConfig = '1 - Sim' then
      ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger := 0
    else if AConfig = '3 - Substituição' then
      ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger := 2
    else
      ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger := 1;
  end else
   ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger :=  StrToIntDef(AISSRetidoPessoa,1); //Integer(IssRetidoCadPessoasToEnum(AISSRetidoPessoa));
                                                                    }
//  ADataSetVenda.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat  := Empresa.FieldByName('NFSe_ALIQ_ISS').AsFloat;

 ////////////////////////////////q
  ADataSetVenda.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat := 0;
//  wrNotaFiscal.WRCalc.SuperCalc;

  // Isso deve  serpreenchdo antes de calcular o iss retido, é usado ali embaixo
  ADataSetVenda.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat  := Empresa.FieldByName('NFSe_ALIQ_ISS').AsFloat;


  if ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsFloat = 0 then //Caso vazio fica o padrão de não reter o iss;
    ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsFloat  := 2;

  if ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 1 then
  begin
    ADataSetVenda.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat   := ADataSetVenda.FieldByName('TOTAL').AsFloat*Perc(ADataSetVenda.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat);
    ADataSetVenda.FieldByName('NF_VALOR_ISS').AsFloat          := 0;
  end;

  if ADataSetVenda.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 2 then
  begin
    ADataSetVenda.FieldByName('NF_VALOR_ISS').AsFloat          := ADataSetVenda.FieldByName('TOTAL').AsFloat*Perc(ADataSetVenda.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat);
    ADataSetVenda.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat   := 0;
  end;
 //////////////////////////////////////////////

  ADataSetVenda.FieldByName('SERVICO_CODNF_NCM').AsString := TConfig.ReadString('EDTlISTASERVICO');
  ADataSetVenda.FieldByName('SERVICO_NF_NCM').AsString    := TConfig.ReadString('EDTDesclISTASERVICO');
  ADataSetVenda.FieldByName('NF_TRIBUTACAO').AsString     := TConfig.ReadString('PADRAO_NFSE_TRIBUTACAO');
  ADataSetVenda.FieldByName('NF_CNAE').AsString           := TConfig.ReadString('EDTCNAE');
end;

class procedure TFrmNFSe.CarregarObservacaoServicoPadrao(ADataSetVenda, ADataSetFinanceiro: TDataSet);
var
  AObs: TStringList;

  function GetDescricaoIBPT: string;           // Isso deve ir para o Calc, junto com outra
    procedure LAddValor(const ACaption, AField: string); // Como quero tirar nota em tres lugares vou levar tudo para o CALC.
    var
      AValor: Currency;
    begin
      AValor := ADataSetVenda.FieldByName(AField).AsCurrency;
      if not IsZero(AValor) then
      begin
        if Result <> '' then
          Result := Result + ' |';
        Result := ' ' + Result + ACaption +
                  ' R$ ' + FormatFloat(DECIMAL_2, AValor) +
                  ' (' + FormatFloat(DECIMAL_2P, PercRelativo(AValor, ADataSetVenda.FieldByName('TOTAL').AsCurrency)) + ') ';
      end;
    end;
  begin
    Result := '';
    LAddValor('Nacional',   'TOTALALIQ_NACIONAL');
    LAddValor('Importação', 'TOTALALIQ_IMPORTACAO');
    LAddValor('Estadual',   'TOTALALIQ_ESTADUAL');
    LAddValor('Municipal',  'TOTALALIQ_MUNICIPAL');
    if Result <> '' then
      Result := '.:Val Aprox Tributos:' + Result + '.:"Fonte: IBPT"';
  end;

begin
  AObs := TStringList.Create;
  try
//    if Empresa.FieldByName('TEM_NFSE_USO_MULTIPLOS_SERVICO').AsString = 'S' then   //TConfig.ReadBoolean('VENDA_SIMPLIFICA_SERVICO')
//    begin
//      AObs.Add(Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString);
      AObs.Add(GetDescricaoIBPT);
      AObs.Add('');
//      AObs.Add('');
      AObs.Add('Observação:');
      AObs.Add(TConfig.ReadString('EDTNF_OBSERVACAO_SERVICO')); // TConfig.ReadString('EDTNF_OBSERVACAO_SERVICO')  ou Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString

      if MatchStr(ADataSetVenda.FieldbyName('STATUS').AsString, ['ATIVO AGRUPADO', 'ATIVO NOTA', 'ATIVO CRIADO']) then
        AObs.Add(ADataSetVenda.FieldbyName('OBSERVACAO').AsString)
      else
        AObs.Add('Pedido(s): ' + ADataSetVenda.FieldbyName('CODIGO').AsString);
//    end else
//      AObs.Text := Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString;// TConfig.ReadString('EDTNF_OBSERVACAO_SERVICO');

//    substitui tags
    ReplaceTagsNFSEObservacao(AObs, ADataSetVenda, ADataSetFinanceiro );

    ADataSetVenda.FieldbyName('NF_OBSERVACAO_SERVICO').AsString := AObs.Text;
  finally
    AObs.Free;
  end;
end;

procedure TFrmNFSe.InternalCarregaXMLNFSe(const ANotaFiscal: TDataSet);
var
  AStream: TStringStream;
begin
  ACBrNFSeX1.NotasFiscais.Clear;
  if ANotaFiscal.IsEmpty then
    Exit;
  AStream := TStringStream.Create;
  try
    TBlobField(ANotaFiscal.FieldByName('ARQUIVO_XML')).SaveToStream(AStream);
    AStream.Position := 0;
    try
     ACBrNFSeX1.NotasFiscais.LoadFromStream(AStream, True);
    except
      on E:Exception do
      begin
        ShowMessageWR(E.Message, MB_ICONWARNING);
        Abort;
      end;
    end;

    {É comum não ter a informação de qual ambiente a nota foi emitida. Sendo assim, carregamos esta informação do banco
     de dados. Isso é necessário para poder gravar novamente no banco após a atualização dos dados da nota no componente.}
    if ACBrNFSeX1.NotasFiscais.Count > 0 then
    begin
      if ANotaFiscal.FieldByName('NF_AMBIENTE').AsString = '2' then
        ACBrNFSeX1.NotasFiscais[0].NFSe.Producao := snNao
      else
        ACBrNFSeX1.NotasFiscais[0].NFSe.Producao := snSim;

      if AnsiSameText(ANotaFiscal.FieldByName('NF_SITUACAO').AsString, 'Confirmada') then
        ACBrNFSeX1.NotasFiscais[0].Confirmada := True;
    end;
  finally
    AStream.Free;
  end;
end;

function TFrmNFSe.ValidaCertificado: Boolean;
Var TemCertificadoConfigurado: Boolean;
begin
  Result:=True;
  if (ACBrNFSeX1.Configuracoes.Certificados.NumeroSerie <> '') or
     (ACBrNFSeX1.Configuracoes.Certificados.DadosPFX <> '') or
     (ACBrNFSeX1.Configuracoes.Certificados.ArquivoPFX <> '') then
  begin
    try
      if (ACBrNFSeX1.SSL.CertDataVenc < Now) then
      begin
        ShowMessage('Data de Validade do Certificado já expirou: '+ FormatDateTimeBr(ACBrNFSeX1.SSL.CertDataVenc)+ sLineBreak +
                    'Acesse:  Empresa-> Sua empresa-> Certificado digital');
        Result:=False;
      end;
    except
      on E:Exception do
      begin
        Result:=False;
        if (Copy(E.Message , 1, 27) = 'PFXDataToCertContextWinApi:') then
          ShowMessage(Copy(E.Message , 29, Length(E.Message)-27)+sLineBreak +
                    'Acesse:  Empresa-> Sua empresa-> Certificado')
        else
          ShowMessage(E.Message);
      end;

    end;
  end;
end;

function TFrmNFSe.ValidaEmpresa: Boolean;
Var
 Text:String;
begin
  Text:='';
  Result:=True;
  if Empresa.FieldByName('CNPJCPF').AsString = '' then
    Text:= Text+'O CNPJ ou CPF não pode estar vazio.'+LineBreak;
  if Empresa.FieldByName('INSCIDENT').AsString = '' then
    Text:= Text+'A Inscrição Estadual ou Identidade não pode ser vazio.'+LineBreak;
  if Empresa.FieldByName('RazaoSocial').AsString = '' then
    Text:= Text+'A Razão Social da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('Fantasia').AsString = '' then
    Text:= Text+'A Fantazia da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('Fone1').AsString = '' then
    Text:= Text+'O telefone da Empresa não pode estar vazio.'+LineBreak;

  if Empresa.FieldByName('CEP').AsString = '' then
    Text:= Text+'A CEP da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('Endereco').AsString = '' then
    Text:= Text+'A Endereço da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('NUMERO').AsString = '' then
    Text:= Text+'A Número da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('BAIRRO').AsString = '' then
    Text:= Text+'A Bairro da empresa não pode ficar vazio.'+LineBreak;

  if Empresa.FieldByName('CodPais').AsString = '' then
    Text:= Text+'A Código do País da empresa não pode ficar vazio.(Brasil = 1058)'+LineBreak;
  if Empresa.FieldByName('Pais').AsString = '' then
    Text:= Text+'A País da empresa não pode ficar vazio.'+LineBreak;

  if Empresa.FieldByName('CodCidade').AsString = '' then
    Text:= Text+'A Código do IBGE da Cidade da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('Cidade').AsString = '' then
    Text:= Text+'A Cidade da empresa não pode ficar vazio.'+LineBreak;
  if Empresa.FieldByName('UF').AsString = '' then
    Text:= Text+'A UF da empresa não pode ficar vazio.'+LineBreak;
  Result:=(Text='');

end;

function TFrmNFSe.ValidaNFSePessoas(ADataSet : TDataSet): Boolean;
Var
 Text:String;
begin
//  Result:=False;
//  if not(ACBrNFSeX1.Configuracoes.Geral.Provedor in [proISSRio, proBHISS]) then
//  begin
    Text:='';
    Result:=True;
    if ADataSet.FieldByName('RESPONSAVEL_CNPJCPF').AsString = '' then
      Text:= Text+'O CNPJ ou CPF não pode estar vazio.'+LineBreak;
  //  if ADataSet.FieldByName('RESPONSAVEL_INSCIDENT').AsString = '' then
  //    Text:= Text+'A Inscrição Estadual ou Identidade não pode ser vazio.'+LineBreak;
    if ADataSet.FieldByName('RazaoSocial').AsString = '' then
      Text:= Text+'A Razão Social do Tomador não pode ficar vazio.'+LineBreak;
  //  if ADataSet.FieldByName('Fantasia').AsString = '' then
  //    Text:= Text+'A Fantazia da empresa não pode ficar vazio.'+LineBreak;
//    if ADataSet.FieldByName('TELEFONE').AsString = '' then
//      Text:= Text+'O telefone do Tomador não pode estar vazio.'+LineBreak;

    if ADataSet.FieldByName('RESPONSAVEL_CEP').AsString = '' then
      Text:= Text+'A CEP do Tomador não pode ficar vazio.'+LineBreak;
    if ADataSet.FieldByName('RESPONSAVEL_Endereco').AsString = '' then
      Text:= Text+'A Endereço do Tomador não pode ficar vazio.'+LineBreak;
    if ADataSet.FieldByName('RESPONSAVEL_NUMERO').AsString = '' then
      Text:= Text+'A Número do Tomador não pode ficar vazio.'+LineBreak;
    if ADataSet.FieldByName('RESPONSAVEL_BAIRRO').AsString = '' then
      Text:= Text+'A Bairro do Tomador não pode ficar vazio.'+LineBreak;

    if ADataSet.FieldByName('SERVICO_CODPAIS').AsString = '' then    //RESPONSAVEL_CodPais
      Text:= Text+'A Código do País do Tomador não pode ficar vazio.(Brasil = 1058)'+LineBreak;

  {
    if ADataSet.FieldByName('RESPONSAVEL_Pais').AsString = '' then
      Text:= Text+'A País da empresa não pode ficar vazio.'+LineBreak;     }

    if ADataSet.FieldByName('RESPONSAVEL_CodCidade').AsString = '' then
      Text:= Text+'A Código do IBGE da cidade do Tomador não pode ficar vazio.'+LineBreak;
    if ADataSet.FieldByName('RESPONSAVEL_Cidade').AsString = '' then
      Text:= Text+'A cidade do Tomador não pode ficar vazio.'+LineBreak;
    if ADataSet.FieldByName('RESPONSAVEL_UF').AsString = '' then
      Text:= Text+'A UF do Tomador não pode ficar vazio.'+LineBreak;

    Result:=(Text='');
    if Not Result then
      ShowMessage(Text);
//  end;
end;

function TFrmNFSe.ValidaNFSeShemas(ADataSet : TDataSet): Boolean;
Var
  AOk :boolean;
  Text, ARespCNPJCPF, ARespRazaoSocial, ARespFantasia, ARespTelefone, ARespCEP, ARespEnder, ARespNum, ARespBairro, ARespComplemento, ARespCodPais,
  ARespCodCidade, ARespCidade, ARespUF, ARespEmail,
  ASerRegTrib, ANumNota, ARPS, ARPSSerie, ANFObservacao, ACNAE:String;

begin
  Text:='';
  ARespCNPJCPF:='';
  ARespRazaoSocial:='';
  ARespFantasia:='';
  ARespTelefone:='';
  ARespCEP:='';
  ARespEnder:='';
  ARespNum:='';
  ARespBairro:='';
  ARespComplemento:='';
  ARespCodPais:='';
  ARespCodCidade:='';
  ARespCidade:='';
  ARespUF:='';
  ARespEmail:='';
  ASerRegTrib:='';
  ANumNota:='';
  ARPS:='';
  ARPSSerie:='';
  ANFObservacao:='';
  ACNAE:='';

  Result:=True;
  if not(ACBrNFSeX1.Configuracoes.Geral.Provedor in [proISSRio, proBHISS]) then
  begin
    if ADataSet.FieldByName('RESPONSAVEL_CNPJCPF').AsString = '' then
      ARespCNPJCPF := 'O CNPJ ou CPF não pode estar vazio.';

  //  if ADataSet.FieldByName('RESPONSAVEL_INSCIDENT').AsString = '' then
  //    Text:= Text+'A Inscrição Estadual ou Identidade não pode ser vazio.';

    if ADataSet.FieldByName('RazaoSocial').AsString = '' then
      ARespRazaoSocial := 'A Razão Social do Tomador não pode ficar vazio.';
    
  //  if ADataSet.FieldByName('Fantasia').AsString = '' then
  //    Text:= Text+'A Fantazia da empresa não pode ficar vazio.';

//    if ADataSet.FieldByName('TELEFONE').AsString = '' then
//      ARespTelefone := 'O telefone do Tomador não pode estar vazio.';

    if ADataSet.FieldByName('RESPONSAVEL_CEP').AsString = '' then
      ARespCEP := 'O CEP do Tomador não pode ficar vazio.';

    if ADataSet.FieldByName('RESPONSAVEL_Endereco').AsString = '' then
      ARespEnder := 'O Endereço do Tomador não pode ficar vazio.';

    if ADataSet.FieldByName('RESPONSAVEL_NUMERO').AsString = '' then
      ARespNum := 'O Número do Tomador não pode ficar vazio.';
    
    if ADataSet.FieldByName('RESPONSAVEL_BAIRRO').AsString = '' then
      ARespBairro := 'O Bairro do Tomador não pode ficar vazio.';
    
  //  if ADataSet.FieldByName('COMPLEMENTO').AsString = '' then
  //    ARespComplemento := 'O Complemento não pode ficar vazio.';

    if ADataSet.FieldByName('SERVICO_CODPAIS').AsString = '' then    //RESPONSAVEL_CodPais
      ARespCodPais := 'A Código do País do Tomador não pode ficar vazio.(Brasil = 1058)';

//  if (ADataSet.FieldByName('RESPONSAVEL_EMAIL').AsString = '') and (ADataSet.FieldByName('RESPONSAVEL_EMAIL_NFE').AsString = '') then
//    ARespEmail  := 'O Email do Tomador não pode ficar vazio.';

  //  if ADataSet.FieldByName('RESPONSAVEL_Pais').AsString = '' then
//    Text:= Text+'A País da empresa não pode ficar vazio.';

    if ADataSet.FieldByName('RESPONSAVEL_CodCidade').AsString = '' then
      ARespCodCidade := 'A Código do IBGE da cidade do Tomador não pode ficar vazio.';

    if ADataSet.FieldByName('RESPONSAVEL_Cidade').AsString = '' then
      ARespCidade:= 'A cidade do Tomador não pode ficar vazio.';
    
    if ADataSet.FieldByName('RESPONSAVEL_UF').AsString = '' then
      ARespUF:= 'A UF do Tomador não pode ficar vazio.';
  end;

    
  if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proISSe] then
  begin
    if (ADataSet.FieldByName('RESPONSAVEL_CNPJCPF').AsString.Length) > 14 then
      ARespCNPJCPF := 'O tamanho máximo para o CNPJ ou CPF do Tomador é 14';

    if (ADataSet.FieldByName('RESPONSAVEL_ENDERECO').AsString.Length < 1) or (ADataSet.FieldByName('RESPONSAVEL_ENDERECO').AsString.Length > 125) then
      ARespEnder  := 'O tamanho mínimo para endereco do Tomador é 1 e o máximo é 125, Atual: ' + ADataSet.FieldByName('ENDERECO').AsString.Length.ToString;

    if (ADataSet.FieldByName('RESPONSAVEL_NUMERO').AsString.Length < 1) or (ADataSet.FieldByName('RESPONSAVEL_NUMERO').AsString.Length > 10) then
      ARespNum   := 'O tamanho mínimo para numero do endereço do Tomador é 1 e o máximo é 10, Atual: ' + ADataSet.FieldByName('NUMERO').AsString.Length.ToString;

    if (ADataSet.FieldByName('RESPONSAVEL_COMPLEMENTO').AsString.Length < 1) or (ADataSet.FieldByName('RESPONSAVEL_COMPLEMENTO').AsString.Length > 10) then
      ARespComplemento := 'O tamanho mínimo para complemento do Tomador é 1 e o máximo é 60, Atual: ' + ADataSet.FieldByName('RESPONSAVEL_COMPLEMENTO').AsString.Length.ToString;

    if (ADataSet.FieldByName('RESPONSAVEL_BAIRRO').AsString.Length < 1) or (ADataSet.FieldByName('RESPONSAVEL_BAIRRO').AsString.Length > 60) then
      ARespBairro := 'O tamanho mínimo para bairro do Tomador é 1 e o máximo é 60, Atual: ' + ADataSet.FieldByName('RESPONSAVEL_BAIRRO').AsString.Length.ToString;
    
    if (ADataSet.FieldByName('RESPONSAVEL_UF').AsString.Length > 2) then
      ARespUF := 'O tamanho máximo para UF do Tomador é 2, Atual: ' + ADataSet.FieldByName('RESPONSAVEL_UF').AsString.Length.ToString;

    if ADataSet.FieldByName('RESPONSAVEL_CODPAIS').AsString.Length > 4 then
      ARespCodPais := 'O tamanho máximo para código do país do Tomador é 4, Atual: ' + ADataSet.FieldByName('SERVICO_CODPAIS').AsString;
     
    if ADataSet.FieldByName('RESPONSAVEL_CEP').AsString.Length > 8 then
      ARespUF := 'O tamanho máximo para CEP do Tomador é 8, Atual: ' + ADataSet.FieldByName('RESPONSAVEL_CEP').AsString.Length.ToString;

    if (ADataSet.FieldByName('RESPONSAVEL_EMAIL').AsString.Length < 1) or (ADataSet.FieldByName('RESPONSAVEL_EMAIL').AsString.Length > 60) then
      ARespEmail := 'O tamanho mínimo para Email do Tomador é 1 e o máximo é 80, Atual: ' + ADataSet.FieldByName('RESPONSAVEL_EMAIL').AsString.Length.ToString;;
         
    if (ADataSet.FieldByName('TELEFONE').AsString.Length < 1) or (ADataSet.FieldByName('TELEFONE').AsString.Length > 20) then
      ARespTelefone := 'O tamanho mínimo para Telefone do Tomador é 1 e o máximo é 20, Atual: ' + ADataSet.FieldByName('TELEFONE').AsString.Length.ToString;;

    if ADataSet.FieldByName('RESPONSAVEL_CODCIDADE').AsString.Length > 7 then
      ARespCodCidade := 'O tamanho máximo para Código do IBGE da cidade do Tomador é 7, Atual: ' + ADataSet.FieldByName('CODCIDADE').AsString.Length.ToString; 

    if (ADataSet.FieldByName('RAZAOSOCIAL').AsString.Length < 1) or (ADataSet.FieldByName('RAZAOSOCIAL').AsString.Length > 150) then
      ARespFantasia := 'O tamanho mínimo para Razao Social do Tomador é 1 e o Máximo é 150, Atual: ' + ADataSet.FieldByName('RAZAOSOCIAL').AsString.Length.ToString;

//    if (ADataSet.FieldByName('FANTASIA').AsString.Length < 1) or (ADataSet.FieldByName('FANTASIA').AsString.Length > 60) then
//      ARespFantasia := 'O tamanho mínimo para Fantasia do Tomador é 1 e o Máximo é 60, Atual: ' + ADataSet.FieldByName('FANTASIA').AsString.Length.ToString;;
      
  end;
 ///Fim Pessoas

 ///Nota Fiscal///

  if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proISSe] then
  begin

    if ADataSet.FieldByName('SERVICO_REGIME_ESPECIAL_TRIBUT').AsString.Length > 6 then
      ASerRegTrib := 'O regime de tributação é de 1 até 6.'+LineBreak;

    if ADataSet.FieldByName('NOTAFISCAL').AsString.Length > 15 then
      ANumNota := 'Tamanho máximo do numero da NF é 15.'+LineBreak;

    if ADataSet.FieldByName('NFSE_RPS').AsString.Length > 15 then
      ARPS := 'Tamanho máximo do numero do RPS é 15.'+LineBreak;

    if (ADataSet.FieldByName('NFSE_RPS_SERIE').AsString.Length > 5) or (ADataSet.FieldByName('NFSE_RPS_SERIE').AsString.Length < 1)  then
      ARPSSerie := 'Tamanho Minimo da serie do RPS é 1 e o máximo é 5, serie Atual: ' + ADataSet.FieldByName('NFSE_RPS_SERIE').AsString +LineBreak;

    if (ADataSet.FieldByName('NF_OBSERVACAO_SERVICO').AsString.Length < 1) or (ADataSet.FieldByName('NF_OBSERVACAO_SERVICO').AsString.Length > 255) then
      ANFObservacao := 'Tamanho mínimo da Observação é 1 e o Máximo é 255.'+LineBreak;

    if (ADataSet.FieldByName('NF_CNAE').AsString.Length) > 7 then
      ACNAE := 'Tamanho máximo do CNAE é 7.'+LineBreak;
  end;

  ///FIM NOTA FISCAL


  ///MONTA TEXTO
    if ARespRazaoSocial <> '' then
      Text := Text + ARespRazaoSocial +LineBreak;

    if ARespFantasia <> '' then
      Text := Text + ARespFantasia +LineBreak;

    if ARespTelefone <> '' then
      Text := Text + ARespTelefone +LineBreak;

    if ARespCEP <> '' then
      Text := Text + ARespCEP +LineBreak; 

    if ARespEnder <> '' then
      Text := Text + ARespEnder +LineBreak;
        
    if ARespNum <> '' then
      Text := Text + ARespNum +LineBreak;
        
    if ARespBairro <> '' then
      Text := Text + ARespBairro +LineBreak;
        
    if ARespComplemento <> '' then
      Text := Text + ARespComplemento +LineBreak;
        
    if ARespCodPais <> '' then
      Text := Text + ARespCodPais +LineBreak;
        
    if ARespCodCidade <> '' then
      Text := Text + ARespCodCidade +LineBreak;
        
    if ARespCidade <> '' then
      Text := Text + ARespCidade +LineBreak;
        
    if ARespUF <> '' then
      Text := Text + ARespUF +LineBreak;
        
    if ARespEmail <> '' then
      Text := Text + ARespEmail +LineBreak;
        
    if ARespFantasia <> '' then
      Text := Text + ARespFantasia +LineBreak;                                                                                               
    

    if ASerRegTrib <> '' then
      Text := Text + ASerRegTrib +LineBreak; 
          
    if ANumNota <> '' then
      Text := Text + ANumNota +LineBreak; 
          
    if ARPS <> '' then
      Text := Text + ARPS +LineBreak;
           
    if ARPSSerie <> '' then
      Text := Text + ARPSSerie +LineBreak;
           
    if ANFObservacao <> '' then
      Text := Text + ANFObservacao +LineBreak;
         
    if ACNAE <> '' then
      Text := Text + ACNAE +LineBreak;

    if text <> '' then
      ShowMessage(Text);

  ///FIM MONTA TEXTO
 



//  StrToTipoRPS(AOk, FNF_Provedor.FieldByName('TIPO_RPS').AsString );
//  if Not AOk then
//    Text:= Text+'Não foi possível determinar o tipo do RPS.'+LineBreak;

//  StrToSituacaoTrib(AOk, WRCalc.DBVendaOuCompra.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString)
//  if Not AOk then
//    Text:= Text+'Não foi possível determinar a sitação tributaria.'+LineBreak;

//  if (WRCalc.DBVendaOuCompra.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString='') then
//    Text:= Text+'Sitação tributaria não pode ser vazia.'+LineBreak;

 (* if Serie = '' then  //Nova Lima-MG  Serie := 'A';tp
    Serie := 'UNICA';
  Situacao     := 1;//StrToSituacaoTrib(Booleana, WRCalc.DBVendaOuCompra.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString);
  NaturezaOperacao         := StrToNaturezaOperacao(FOk, WRCalc.DBVendaOuCompra.FieldByName('SERVICO_NATUREZA_OPERACAO').AsString);
  RegimeEspecialTributacao := TnfseRegimeEspecialTributacao(WRCalc.DBVendaOuCompra.FieldByName('SERVICO_REGIME_ESPECIAL_TRIBUT').AsInteger);
  IncentivadorCultural     := StrToSimNao(FOk, ifThen(WRCalc.DBVendaOuCompra.FieldByName('SERVICO_INCENTIVADOR_CULTURAL').AsString = 'S', '1', '2'));
  Status                   := srNormal; // TnfssRPS = ( srNormal, srCancelado );eStatu
  OptanteSimplesNacional   := StrToSimNao(FOk, ifThen(UpperCase(Empresa.FieldByName('CRT').AsString) <> 'REGIME NORMAL', '1', '2'));

    with Servico do
    begin
      CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;
//        SERVICO_MUNICIPIO_INCIDENCIA    //                                                                                       Tributada No Prestador = tp /Tributada No Tomador = tt
      if (WRCalc.DBVendaOuCompra.FieldByName('NFSE_SITUACAO_TRIBUTACAO').AsString = 'tt') then
        CodigoMunicipio := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CODCIDADE').AsString;
//        if not (Configuracoes.Geral.Provedor in [proFriburgo, pro4R]) then    // proFriburgo, pro4R
      if FNF_Provedor.FieldByName('Tem_CodPais').AsString = 'S' then
        CodigoPais := WRCalc.DBVendaOuCompra.FieldByName('SERVICO_CODPAIS').AsInteger;
      MunicipioIncidencia := WRCalc.DBVendaOuCompra.FieldByName('SERVICO_MUNICIPIO_INCIDENCIA').AsInteger;

      ExigibilidadeISS    := exiExigivel;
      Tributacao := StrToTributacao(Booleana, WRCalc.DBVendaOuCompra.FieldByName('NF_TRIBUTACAO').AsString);
//          if not TConfig.ReadBoolean('ISS_LC_116_2003') then
      CodigoTributacaoMunicipio := Empresa.FieldByName('NFSE_CODIGOTRIBUTACAOMUNICIPIO').AsString;

       //     <<<--- deveria ser isso
//        CodigoTributacaoMunicipio := WRCalc.DBVendaOuCompra.FieldByName('SERVICO_REGIME_ESPECIAL_TRIBUT').AsString;

      ItemListaServico    := WRCalc.DBVendaOuCompra.FieldByName('SERVICO_CODNF_NCM').AsString.Trim;
      xItemListaServico   := WRCalc.DBVendaOuCompra.FieldByName('SERVICO_NF_NCM').AsString;

      if WRCalc.DBVendaOuCompra.FieldByName('NF_CNAE').AsString.Trim <>'' then
        CodigoCnae := WRCalc.DBVendaOuCompra.FieldByName('NF_CNAE').AsString;

      {$IFDEF wrConversao_ACBr}
      //Provedor IssDsf
      Tributacao := NFSeTributacaoStrToEnum(WRCalc.DBVendaOuCompra.FieldByName('NF_TRIBUTACAO').AsString);
      //----
      {$ENDIF}

      {$REGION 'Totais dos Valores'}
      with Valores do
      begin
        ValorServicos          := WRCalc.DBVendaOuCompra.FieldByName('SUB_TOTAL').AsFloat + WRCalc.DBVendaOuCompra.FieldByName('VOUTRO').AsCurrency;

        IssRetido := stNormal;
//          IssRetido              := TnfseSituacaoTributaria(WRCalc.DBVendaOuCompra.FieldByName('SERVICO_ISS_RETIDO').AsInteger);
        OutrasRetencoes        := 0;
        DescontoIncondicionado := WRCalc.DBVendaOuCompra.FieldByName('VDESC').AsCurrency;
        DescontoCondicionado   := 0.00;

//          MunicipioPrestacaoServico
        if UpperCase(FNF_Provedor.FieldByName('ALIQUOTA_NO_XML').AsString) = UpperCase('Divide por 100') then
          Aliquota := WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat / 100
        else if UpperCase(FNF_Provedor.FieldByName('ALIQUOTA_NO_XML').AsString) = UpperCase('Multiplica por 100') then
          Aliquota := WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat * 100
        else
          Aliquota := WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat;

        ValorIss       := WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS').AsFloat; //
        ValorISSRetido := WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat;

        BaseCalculo    := ValorServicos - ValorDeducoes - DescontoIncondicionado;
//          BaseCalculo    := WRCalc.DBVendaOuCompra.FieldByName('NF_ISS_VBC').AsFloat; //<-- BC sendo preenchida de novo, matou o valor anterior...

        ValorLiquidoNfse := WRCalc.DBVendaOuCompra.FieldByName('TOTAL').AsFloat;
        AliquotaSN := WRCalc.DBVendaOuCompra.FieldByName('NF_PALIQ_SN').AsFloat;
      end;
      {$ENDREGION}

      {$REGION 'Discriminação da NFSe'}
      ADisc := '';
      WRCalc.DBProduto.First;
      while not WRCalc.DBProduto.Eof do
      begin
        if WRCalc.DBProduto.FieldByName('PARENT').AsInteger = 0 then
        begin
          if WRCalc.DBVendaOuCompra.FieldByName('NFE_IMPRIMIR_QTDEPECA').AsString = 'S' then
          begin
            AValorUnitario := WRCalc.DBProduto.FieldByName('Total').AsFloat / WRCalc.DBProduto.FieldByName('QTDADEPECA').AsFloat; ;//WRCalc.DBProduto.FieldByName('ValorPorPeca').AsFloat;
            AValorTotal    := WRCalc.DBProduto.FieldByName('Total').AsFloat;
            AQuant         := WRCalc.DBProduto.FieldByName('QTDADEPECA').AsFloat;
          end else
          begin
            AValorUnitario := WRCalc.DBProduto.FieldByName('VALOR').AsFloat;
            AValorTotal    := WRCalc.DBProduto.FieldByName('Total').AsFloat;
            AQuant         := WRCalc.DBProduto.FieldByName('QUANT').AsFloat;
          end;

//           FNF_Provedor.ImpressaoBethaFlyNota;
          if (FNF_Provedor.FieldByName('TEM_IMPRESSAOBETAFLYNOTA').AsString = 'S') then //para impressao no site da betha
          begin
            Discriminacao := Discriminacao +
            '{[[Descricao='            + WRCalc.DBProduto.FieldByName('DESCRICAO').AsString + ']' +
            '[Quantidade='             + FloatToStr(AQuant) + ']' +
            '[ValorUnitario='          + ReplaceStr(FormatFloat('0.00', AValorUnitario), ',', '.') + ']' +
            '[Aliquota='               + WRCalc.DBVendaOuCompra.FieldByName('NF_VALOR_ISS_ALIQ').AsString + ']' +
            '[Deducoes=0]'             +
            '[DescontoCondicionado=0]' +
            '[DescontoIncondicionado=' + WRCalc.DBProduto.FieldByName('VDESC').AsString + ']]}'; //}
          end else
          begin
//            FNF_Provedor.UsaMultiplosServicos;    Se provedor tem, e a Empresa Quer Usar?????
            if (Empresa.FieldByName('TEM_NFSE_USO_MULTIPLOS_SERVICO').AsString = 'S')  then
            begin
              with ItemServico.New do
              begin
                Descricao     := WRCalc.DBProduto.FieldByName('DESCRICAO').AsString;
                Quantidade    := AQuant;
                ValorUnitario := AValorUnitario;
                ValorTotal    := AValorTotal;
                if Empresa.FieldByName('CODCIDADE').AsInteger = 3144805 then   // nova lima ??
                  Aliquota    := WRCalc.DBProduto.FieldByName('ISSQN_VALIQ').AsFloat;      // Que Bosta isso Aqui
              end;
            end else
            begin
              ADisc := ADisc +
                       PadRight(WRCalc.DBProduto.FieldByName('DESCRICAO').AsString, 65) +
                       PadRight(FormatFloat('R$######0.00', AValorUnitario), 18) +
                       PadRight(FormatFloat('0.00', AQuant), 10) +
                       PadRight(FormatFloat('R$######0.00', AValorTotal), 18) + sLineBreak;

              Discriminacao := PadRight('Discriminação',65) +
                               PadRight('Valor Unitário',18) +
                               PadRight('Qtd.',10) +
                               PadRight('Valor',18) +
                               sLineBreak +
                               ADisc;
            end;
          end;
        end;
        WRCalc.DBProduto.Next;
      end;
      {Opção utilizada pela TechPress, caso esteja marcada, ela substitui a descrição dos serviços pela
       descrição definida nesta configuração}

//          FNF_Provedor.VendaSimplificaServico;
      if Empresa.FieldByName('TEM_NFSE_SERVICO_PADRAO').AsString = 'S' then
      begin
//          FNF_Provedor.ServicoProdutoPadrao  ;
        if Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString <> '' then
        begin
//           FNF_Provedor.ServicoProdutoPadrao  FNF_Provedor.FieldByName('Discriminacao').AsString
          Discriminacao := Empresa.FieldByName('NFSE_SERVICO_PADRAO').AsString;
        end;
      end;

      if WRCalc.DBVendaOuCompra.FieldByName('NF_OBSERVACAO_SERVICO').AsString <> '' then
        Discriminacao := Discriminacao + sLineBreak + WRCalc.DBVendaOuCompra.FieldByName('NF_OBSERVACAO_SERVICO').AsString;


//        Troca a tags {DT_Parcelas}
      {$ENDREGION}
    end;
    {$ENDREGION}

    {$REGION 'Identificacao Prestador/Tomador'}
    with Prestador do
    begin
      with IdentificacaoPrestador do
      begin
        Cnpj               := OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString);
        InscricaoMunicipal := OnlyNumberWR(Empresa.FieldByName('IM').AsString);
        InscricaoEstadual  := Empresa.FieldByName('INSCIDENT').AsString;
      end;
//        with Contato do
//        begin
//           Telefone  := Empresa.FieldByName('FONE1').AsString;
//        end;
//        FraseSecreta       := Empresa.FieldByName('NFSE_WEBFRASESECR').AsString;

      // Isso aqui só deve ser preenchido se precisar, Juaeiro/BA é texto e não precisa
   {   try
        if StrToFloatDef(Empresa.FieldByName('NFSE_USUARIO').AsString,0) <> 0 then
          Usuario          := Empresa.FieldByName('NFSE_USUARIO').AsLargeInt;     // Aqui tem Jogo, se For Múltiplas empresas
      except  end;// Marilia, target  }
//        Senha              := Empresa.FieldByName('NFSE_SENHA').AsString;
      cUF                := EstadoToCodigoUF(EstadoUFToEnum(Empresa.FieldByName('UF').AsString));
      RazaoSocial        := RemoveAcento( Empresa.FieldByName('RAZAOSOCIAL').AsString);
//        Fantasia           := Empresa.FieldByName('FANTASIA').AsString;

//        Email              := Empresa.FieldByName('EMAIL').AsString;
      with Endereco do
      begin
        //EnderecoInformado := True;
        Endereco        := RemoveAcento(Empresa.FieldByName('ENDERECO').AsString);
        Numero          := RemoveAcento(Empresa.FieldByName('NUMERO').AsString);
        Complemento     := RemoveAcento(Empresa.FieldByName('COMPLEMENTO').AsString);
        Bairro          := RemoveAcento(Empresa.FieldByName('BAIRRO').AsString);
        CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;
        UF              := Empresa.FieldByName('UF').AsString;
        CEP             := Empresa.FieldByName('CEP').AsString;
        xMunicipio      := RemoveAcento(Empresa.FieldByName('CIDADE').AsString);

        CodigoPais      := Empresa.FieldByName('CODPAIS').AsInteger;
        xPais           := 'Brasil';
      end;
    end;

    {$REGION 'Prestador do Serviço'}
  {  with PrestadorServico do
    begin
      with IdentificacaoPrestador do
      begin
        Cnpj               := Empresa.FieldByName('CNPJCPF').AsString;
        InscricaoMunicipal := OnlyNumberWR(Empresa.FieldByName('IM').AsString);
        cUF                := EstadoToCodigoUF(EstadoUFToEnum(Empresa.FieldByName('UF').AsString));
        InscricaoEstadual  := Empresa.FieldByName('INSCIDENT').AsString;
        RazaoSocial        := Empresa.FieldByName('RAZAOSOCIAL').AsString;
        Fantasia           := Empresa.FieldByName('FANTASIA').AsString;
        Telefone           := Empresa.FieldByName('FONE1').AsString;
        Email              := Empresa.FieldByName('EMAIL').AsString;
        with Endereco do
        begin
          //EnderecoInformado := True;
          Endereco        := Empresa.FieldByName('ENDERECO').AsString;
          Numero          := Empresa.FieldByName('NUMERO').AsString;
          Complemento     := Empresa.FieldByName('COMPLEMENTO').AsString;
          Bairro          := Empresa.FieldByName('BAIRRO').AsString;
          CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;
          UF              := Empresa.FieldByName('UF').AsString;
          CEP             := Empresa.FieldByName('CEP').AsString;
          xMunicipio      := Empresa.FieldByName('CIDADE').AsString;
          CodigoPais      := Empresa.FieldByName('CODPAIS').AsInteger;
          xPais           := 'Brasil';
        end;
      end;
      RazaoSocial      := Empresa.FieldByName('RAZAOSOCIAL').AsString;
      NomeFantasia     := Empresa.FieldByName('FANTASIA').AsString;
      Contato.Telefone := Empresa.FieldByName('FONE1').AsString;
      Contato.Email    := Empresa.FieldByName('EMAIL').AsString;
      with Endereco do
      begin
        Endereco        := Empresa.FieldByName('ENDERECO').AsString;
        Numero          := Empresa.FieldByName('NUMERO').AsString;
        Complemento     := Empresa.FieldByName('COMPLEMENTO').AsString;
        Bairro          := Empresa.FieldByName('BAIRRO').AsString;

        //Regra do sevidor de goiania
        if Empresa.FieldByName('COD_CIDADE_PROPRIO').AsString <> '' then        // Isso parece errado deveria pegar do cadastro da cidade
          CodigoMunicipio := Empresa.FieldByName('COD_CIDADE_PROPRIO').AsString
        else
          CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;

        UF              := Empresa.FieldByName('UF').AsString;
        CEP             := Empresa.FieldByName('CEP').AsString;
        xMunicipio      := Empresa.FieldByName('CIDADE').AsString;
        CodigoPais      := Empresa.FieldByName('CODPAIS').AsInteger;
        xPais           := 'Brasil';
      end;
    end;  }
    {$ENDREGION}

    {$REGION 'Tomador'}
    Tomador.RazaoSocial := RemoveAcento(WRCalc.DBVendaOuCompra.FieldByName('RAZAOSOCIAL').AsString);
    if WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_TIPO').AsString <> 'O' then   //PARA TOMADOR NÃO IDENTIFICADO [LUCAS]
    with Tomador do
    begin
      RazaoSocial := RemoveAcento( WRCalc.DBVendaOuCompra.FieldByName('RAZAOSOCIAL').AsString);
      with IdentificacaoTomador do
      begin
        CpfCnpj            := OnlyNumberWR(WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CNPJCPF').AsString);
        InscricaoMunicipal := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_INSC_MUNICIPAL').AsString;

//        FNF_Provedor.NaoPreencheIEMesmoMun  ;
        if (FNF_Provedor.FieldByName('PODE_PREECHER_IE_Mesmo_Mun').AsString = 'S')
           and (Empresa.FieldByName('CODCIDADE').AsString <> WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CODCIDADE').AsString) then
          InscricaoEstadual := OnlyNumberWR(WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_INSCIDENT').AsString);

      {$REGION 'Antigo, Informações importante.'}
        //O componente do ACBr já preenche a tag "Tipo" de acordo com o CNPJ e algumas outras validações. Aqui não é
        //realmente necessário, mas pode ser interessante caso o ACBr não acerte o tipo correto. Mantido aqui comentado

      {$ENDREGION}
      end;
      with Endereco do
      begin
        Endereco    := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_ENDERECO').AsString;
        Numero      := FloatToStr(StrToFloatDef(WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_NUMERO').AsString,0));
        Complemento := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_COMPLEMENTO').AsString;
        Bairro      := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_BAIRRO').AsString;

        //Configuracoes.Geral.Provedor = proGoiania,
        if WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_COD_CIDADE_PROPRIO').AsString <> '' then
          CodigoMunicipio := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_COD_CIDADE_PROPRIO').AsString
        else
          CodigoMunicipio := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CODCIDADE').AsString;

        UF         := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_UF').AsString;
    // if (GetProvedor <> pro4R) then  //Não informar o CEP não pergunta Por que regra idiota(Quando a prestação de serviço for exterior)
        CEP        := OnlyNumber(WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CEP').AsString);
        xMunicipio := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CIDADE').AsString;

//        FNF_Provedor.FieldByName('TEM_CODPAIS').AsString = 'S'   ???
       { if (Configuracoes.Geral.Provedor <> pro4R)
           and ((Configuracoes.Geral.Provedor <> proFriburgo) or (CodigoMunicipio = '9999999')) then
        begin
          CodigoPais := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_CODPAIS').AsInteger;
          xPais      := 'Brasil';
        end;   }
      end;
      with Contato do
      begin
        Telefone := OnlyNumber(WRCalc.DBVendaOuCompra.FieldByName('TELEFONE').AsString);
        Email    := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_EMAIL_NFE').AsString;
        if Trim(Email) = '' then
          Email := WRCalc.DBVendaOuCompra.FieldByName('RESPONSAVEL_EMAIL').AsString;
      end;
    end;
    {$ENDREGION}

    {$ENDREGION}

    OutrasInformacoes := StringReplace(WRCalc.DBVendaOuCompra.FieldByName('NF_OBSERVACAO_SERVICO').AsString, '#13#10',
                                       Configuracoes.WebServices.QuebradeLinha,[rfReplaceAll, rfIgnoreCase]);
  end;   *)
end;

procedure TFrmNFSe.VisualizarNFSe(ANotaFiscal: TDataSet);
var
  AStream: TMemoryStream;
  ANFSe :TNFSe;
  ATpXML : TtpXML;
  QuerX: TFDQuery;
  AIni: string;
  ANotaTratada:String;
begin
  ATpXML := txmlNFSe;
  ANFSe := ACBrNFSeX1.NotasFiscais.New.NFSe;

  ACBrNFSeX1.Provider.LerXml(ANotaFiscal.FieldByName('ARQUIVO_XML_RETORNO').AsString, ANFSe, ATpXML, ANotaTratada);

  if ANFSe.Numero = '' then
    ACBrNFSeX1.NotasFiscais.Items[0].LerArqIni(ANotaFiscal.FieldByName('ARQUIVO_INI').AsString);// := ACBrNFSeX1.NotasFiscais.Items[0].GerarNFSeIni;

  if ANFSe.Numero = '' then
    ANFSe.Numero := ANotaFiscal.FieldByName('NF_NUMERO').AsString;

  if ANFSe.ChaveAcesso = '' then
    ANFSe.ChaveAcesso := ANotaFiscal.FieldByName('NF_CHAVE').AsString;

  if ANFSe.IdentificacaoRps.Serie = '' then
    ANFSe.IdentificacaoRps.Serie := ANotaFiscal.FieldByName('SERIE').AsString;

  if ANFSe.IdentificacaoRps.Numero = '' then
    ANFSe.IdentificacaoRps.Numero := ANotaFiscal.FieldByName('NFSE_RPS').AsString;

  if ANFSe.CodigoVerificacao = '' then
    ANFSe.CodigoVerificacao := ANotaFiscal.FieldByName('NF_CODVERIFICACAO').AsString;

  if ANFSe.DataEmissao = 0 then
    ANFSe.DataEmissao := ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime;

  if ANFSe.Competencia = 0 then
    ANFSe.Competencia := ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime;

  if ANFSe.Prestador.RazaoSocial = '' then
    ANFSe.Prestador.RazaoSocial := Empresa.FieldByName('RAZAOSOCIAL').AsString;

  if ANFSe.Prestador.Endereco.Endereco = '' then
    ANFSe.Prestador.Endereco.Endereco := Empresa.FieldByName('ENDERECO').AsString;

  if ANFSe.Prestador.Contato.Telefone = '' then
    ANFSe.Prestador.Contato.Telefone := Empresa.FieldByName('FONE1').AsString;

  if ANFSe.Prestador.Endereco.Numero = '' then
    ANFSe.Prestador.Endereco.Numero := Empresa.FieldByName('NUMERO').AsString;

  if ANFSe.Prestador.Endereco.Bairro = '' then
    ANFSe.Prestador.Endereco.Bairro := Empresa.FieldByName('BAIRRO').AsString;

  if ANFSe.Prestador.Endereco.CodigoMunicipio = '' then
    ANFSe.Prestador.Endereco.CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;

  if ANFSe.Prestador.Endereco.UF = '' then
    ANFSe.Prestador.Endereco.UF := Empresa.FieldByName('UF').AsString;

  if ANFSe.Prestador.Endereco.CEP = '' then
    ANFSe.Prestador.Endereco.CEP := Empresa.FieldByName('CEP').AsString;

  if ANFSe.Prestador.Endereco.xMunicipio = '' then
    ANFSe.Prestador.Endereco.xMunicipio := Empresa.FieldByName('CIDADE').AsString;

  if ANFSe.Prestador.Endereco.xPais = '' then
    ANFSe.Prestador.Endereco.xPais := Empresa.FieldByName('PAIS').AsString;

  if ANFSe.Prestador.IdentificacaoPrestador.CpfCnpj = '' then
    ANFSe.Prestador.IdentificacaoPrestador.CpfCnpj := Empresa.FieldByName('CNPJCPF').AsString
    ;
  if ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal = '' then
    ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal := Empresa.FieldByName('IM').AsString;

  if ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual = '' then
    ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual := Empresa.FieldByName('INSCIDENT').AsString;

  if ANFSe.OutrasInformacoes = ''  then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'SELECT V.NF_OBSERVACAO_SERVICO FROM NOTA_FISCAL NF ' +
                        'LEFT JOIN VENDA V ON V.CODIGO = NF.CODVENDA ' +
                        'WHERE NF.NF_NUMERO = :numeroNF';
      QuerX.ParamByName('numeroNF').AsString := ANFSe.Numero;
      QuerX.Open;

      ACBrNFSeX1.NotasFiscais[0].NFSe.OutrasInformacoes := QuerX.FieldByName('NF_OBSERVACAO_SERVICO').AsString;

    finally
      QuerX.Free;
    end;
  end;

//   ANFSe.Servico.ItemListaServico Servico.ItemListaServico

//  InternalCarregaXMLNFSe(ANotaFiscal);
//  if TConfig.ReadBoolean('NFSE_IMPRIMIR_PELO_XML_WR') then
//  begin
//    AStream := TMemoryStream.Create;
//    try
//      TBlobField(ANotaFiscal.FieldByName('ARQUIVO_XML_FORMATO_WR')).SaveToStream(AStream);
//      TFrmNFSe.LerXMLFormatoWRFromStream(ACBrNFSeX1, AStream);
//    finally
//      AStream.Free;
//    end;
//  end
//  else
//  begin
//    try  // Siat i ISSDfs
//      PreencheDadosPrestador(ACBrNFSeX1);
//    ANumeroNF :=                                       ANotaFiscal.FieldByName('NF_NUMERO').AsLargeInt;
//    ANF.NFSe.IdentificacaoRps.Serie:=                   ANotaFiscal.FieldByName('SERIE').Value;
//    TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo):=      ANotaFiscal.FieldByName('NF_TIPO').Value;
//    AAmbiente:=                                         ANotaFiscal.FieldByName('NF_AMBIENTE').AsString;
//    NotaFiscalTipoRegistroToStr(nftrNFSe):=             ANotaFiscal.FieldByName('TIPO').AsString;
//    ACodVenda:=                                        ANotaFiscal.FieldByName('CODVENDA').AsString;
//    EmpresaAtiva:=                                      ANotaFiscal.FieldByName('CODEMPRESA').AsString;
//    ANF.NFSe.DataEmissao:=                              ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime;
//    ANF.NFSe.ChaveAcesso:=                              ANotaFiscal.FieldByName('NF_CHAVE').AsString;
//    ANF.NFSe.NumeroLote:=                               ANotaFiscal.FieldByName('NF_NUM_LOTE').AsString;
//        PreencheTagsFaltantesConsultando(AACBrNFSe, AACBrNFSe, ACodNotaFiscal);
//    except end;
//  end;
  if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
    PreencheDadosPrestador(ACBrNFSeX1);
  try
    ACBrNFSeX1.NotasFiscais.Imprimir;
  except

  end;
  ACBrNFSeX1.NotasFiscais.ImprimirPDF;
  ACBrNFSeX1.NotasFiscais.Clear;
end;

procedure TFrmNFSe.VisualizarNFSeIni(ANotaFiscal: TDataSet);
var
  AStream: TMemoryStream;
  ANFSe :TNFSe;
  ATpXML : TtpXML;
  QuerX: TFDQuery;
  AIni: string;
  ANotaTratada:String;
begin
  ATpXML := txmlNFSe;
  ACBrNFSeX1.NotasFiscais.Clear;
  ANFSe := ACBrNFSeX1.NotasFiscais.New.NFSe;

  ACBrNFSeX1.NotasFiscais.Items[0].LerArqIni(ANotaFiscal.FieldByName('ARQUIVO_INI').AsString);// := ACBrNFSeX1.NotasFiscais.Items[0].GerarNFSeIni;
  QuerX := GeraFDQuery;
  try
    if ANFSe.OutrasInformacoes = ''  then
    begin
      QuerX.SQL.Text := 'SELECT V.NF_OBSERVACAO_SERVICO FROM NOTA_FISCAL NF ' +
                        'LEFT JOIN VENDA V ON V.CODIGO = NF.CODVENDA ' +
                        'WHERE NF.NF_NUMERO = :numeroNF';
      QuerX.ParamByName('numeroNF').AsString := ANFSe.Numero;
      QuerX.Open;

      ACBrNFSeX1.NotasFiscais[0].NFSe.OutrasInformacoes := QuerX.FieldByName('NF_OBSERVACAO_SERVICO').AsString;
    end;

    if ANFSe.Servico.xItemListaServico = ''  then
    begin
      QuerX.SQL.Text := 'SELECT NCM.DESCRICAO FROM VENDA V ' +
                        'LEFT JOIN NF_NCM NCM ON NCM.codigo = V.servico_codnf_ncm AND NCM.tipo = ''SERVIÇO'' ' +
                        'WHERE V.CODIGO = :CodVenda';
      QuerX.ParamByName('CodVenda').AsString := ANotaFiscal.FieldByName('CODVENDA').AsString;
      QuerX.Open;

      ANFSe.Servico.xItemListaServico := QuerX.FieldByName('DESCRICAO').AsString;
    end;
  finally
    QuerX.Free;
  end;

  if ANFSe.CodigoVerificacao = '' then
    ANFSe.CodigoVerificacao := ANotaFiscal.FieldByName('NF_CODVERIFICACAO').AsString;

  ANFSe.Servico.Discriminacao := ANotaFiscal.FieldByName('NF_DISCRIMINACAO_SERVICO').AsString;

  if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
    PreencheDadosPrestador(ACBrNFSeX1);
  try
    ACBrNFSeX1.NotasFiscais.Imprimir;
  except

  end;
  ACBrNFSeX1.NotasFiscais.ImprimirPDF;
  ACBrNFSeX1.NotasFiscais.Clear;
end;

procedure TFrmNFSe.ConsultarNFSeporRps(ANotaFiscal: TDataSet; AImprimir: Boolean = True);
var
  i : integer;
begin
  if Not ValidaCertificado then Exit;  
  try
    LimpaRetornos;
    InternalCarregaXMLNFSe(ANotaFiscal);
    ACBrNFSeX1.ConsultarNFSeporRps(
      ifThen(ANotaFiscal.FieldByName('NFSE_RPS').AsString = '',
             ANotaFiscal.FieldByName('NF_NUMERO').AsString,
             ANotaFiscal.FieldByName('NFSE_RPS').AsString),
      ANotaFiscal.FieldByName('SERIE').AsString,
      ANotaFiscal.FieldByName('NF_TIPO').AsString,
      ANotaFiscal.FieldByName('NFSE_CODIGOVERIFICACAO').AsString); // Faltou o CodMunicipio do Tomador

//    ACBrNFSeX1.WebServices.ConsNFSeRps.NumeroLote;
//    ACBrNFSeX1.WebServices.ConsNFSeRps.NumeroRps;
 {   ShowMessage(
    ACBrNFSeX1.WebServices.ConsNFSeRps.IDLote+ ' '+
    ACBrNFSeX1.WebServices.ConsNFSeRps.NumeroLote+ ' '+
    ACBrNFSeX1.WebServices.ConsNFSeRps.NumeroRps);    }
    ChecarResposta(tmConsultarNFSePorRps, ANotaFiscal.FieldByName('CODVENDA').AsString);
//    TrataRetornoConsultaNFSe(ANotaFiscal);
     if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
      PreencheDadosPrestador(ACBrNFSeX1);
    for i := 0 to ACBrNFSeX1.NotasFiscais.Count-1 do    // Depois de consultar de qualquer lugar deve imprimir
    begin
      if (ACBrNFSeX1.NotasFiscais.Items[i].Confirmada) and (AImprimir) then
      begin
        ACBrNFSeX1.NotasFiscais.Items[i].Imprimir;
        ACBrNFSeX1.NotasFiscais.Items[i].ImprimirPDF;
      end;
    end;
  except
    on E:Exception do
    begin
      if TFrmValidacoes.TrataErroNFe(TForm(ANotaFiscal.Owner), E.Message) = mrOK then
        ConsultarNFSeporRps(ANotaFiscal);
    end;
  end;
  ANotaFiscal.Refresh;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

procedure TFrmNFSe.MigrarNotasParaINI;
var
  QuerNotas, QuerListaServico: TFDQuery;
  ATransa: TFDCustomTransaction;
  ANFSe :TNFSe;
  ATpXML : TtpXML;
  ANotaTratada, AMensagem:String;
  AOk: boolean;
  AAguarde: TFrmAguarde;
begin
  AOk := False;
  AAguarde := TFrmAguarde.Create(Self);
  ATpXML := txmlNFSe;
  ATransa := GeraFDTransacao;
  QuerNotas := GeraFDQuery(ATransa);
  QuerListaServico := GeraFDQuery(ATransa);
  QuerNotas.SQL.Text := 'SELECT * FROM NOTA_FISCAL WHERE ARQUIVO_XML_RETORNO IS NOT NULL AND NF_SITUACAO = ''Confirmada'' AND TIPO = ''NFSe''';
  QuerListaServico.SQL.Text := 'SELECT V.SERVICO_CODNF_NCM FROM VENDA V WHERE V.CODIGO = :CodVenda';
  try
    AAguarde.Mensagem := 'Buscando Notas. Este processo pode demorar um pouco.';
    AAguarde.Show;
    Application.ProcessMessages;
    QuerNotas.Open;
    QuerNotas.FetchAll;
    AAguarde.Mensagem := 'Migrando Notas';
    AAguarde.ProgressoMaximo := QuerNotas.RecordCount;
    AAguarde.Progresso       := 0;
    Application.ProcessMessages;
    QuerNotas.First;
    while not QuerNotas.eof do
    begin
      AAguarde.Progresso := AAguarde.Progresso + 1;
      ACBrNFSeX1.NotasFiscais.Clear;
      ANFSe := ACBrNFSeX1.NotasFiscais.New.NFSe;
      ACBrNFSeX1.Provider.LerXml(QuerNotas.FieldByName('ARQUIVO_XML_RETORNO').AsString, ANFSe, ATpXML, ANotaTratada);
      QuerNotas.Edit;
      if ANFSe.Numero = '' then
        ANFSe.Numero := QuerNotas.FieldByName('NF_NUMERO').AsString;

      if ANFSe.ChaveAcesso = '' then
        ANFSe.ChaveAcesso := QuerNotas.FieldByName('NF_CHAVE').AsString;

      if ANFSe.IdentificacaoRps.Serie = '' then
        ANFSe.IdentificacaoRps.Serie := QuerNotas.FieldByName('SERIE').AsString;

      if ANFSe.IdentificacaoRps.Numero = '' then
        ANFSe.IdentificacaoRps.Numero := QuerNotas.FieldByName('NFSE_RPS').AsString;

      if ANFSe.CodigoVerificacao = '' then
        ANFSe.CodigoVerificacao := QuerNotas.FieldByName('NF_CODVERIFICACAO').AsString;

      if ANFSe.DataEmissao = 0 then
        ANFSe.DataEmissao := QuerNotas.FieldByName('NF_DT_EMISSAO').AsDateTime;

      if ANFSe.Competencia = 0 then
        ANFSe.Competencia := QuerNotas.FieldByName('NF_DT_EMISSAO').AsDateTime;

      if ANFSe.Prestador.RazaoSocial = '' then
        ANFSe.Prestador.RazaoSocial := Empresa.FieldByName('RAZAOSOCIAL').AsString;

      if ANFSe.Prestador.Endereco.Endereco = '' then
        ANFSe.Prestador.Endereco.Endereco := Empresa.FieldByName('ENDERECO').AsString;

      if ANFSe.Prestador.Contato.Telefone = '' then
        ANFSe.Prestador.Contato.Telefone := Empresa.FieldByName('FONE1').AsString;

      if ANFSe.Prestador.Endereco.Numero = '' then
        ANFSe.Prestador.Endereco.Numero := Empresa.FieldByName('NUMERO').AsString;

      if ANFSe.Prestador.Endereco.Bairro = '' then
        ANFSe.Prestador.Endereco.Bairro := Empresa.FieldByName('BAIRRO').AsString;

      if ANFSe.Prestador.Endereco.CodigoMunicipio = '' then
        ANFSe.Prestador.Endereco.CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;

      if ANFSe.Prestador.Endereco.UF = '' then
        ANFSe.Prestador.Endereco.UF := Empresa.FieldByName('UF').AsString;

      if ANFSe.Prestador.Endereco.CEP = '' then
        ANFSe.Prestador.Endereco.CEP := Empresa.FieldByName('CEP').AsString;

      if ANFSe.Prestador.Endereco.xMunicipio = '' then
        ANFSe.Prestador.Endereco.xMunicipio := Empresa.FieldByName('CIDADE').AsString;

      if ANFSe.Prestador.Endereco.xPais = '' then
        ANFSe.Prestador.Endereco.xPais := Empresa.FieldByName('PAIS').AsString;

      if ANFSe.Prestador.IdentificacaoPrestador.CpfCnpj = '' then
        ANFSe.Prestador.IdentificacaoPrestador.CpfCnpj := Empresa.FieldByName('CNPJCPF').AsString;

      if ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal = '' then
        ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal := Empresa.FieldByName('IM').AsString;

      if ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual = '' then
        ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual := Empresa.FieldByName('INSCIDENT').AsString;

      if ANFSe.Servico.ItemListaServico = '' then
      begin
        QuerListaServico.Close;
        QuerListaServico.ParamByName('CodVenda').AsString := QuerNotas.FieldByName('CODVENDA').AsString;
        QuerListaServico.Open;

        ANFSe.Servico.ItemListaServico := QuerListaServico.FieldByName('SERVICO_CODNF_NCM').AsString;
      end;

      QuerNotas.FieldByName('ARQUIVO_INI').AsString := ACBrNFSeX1.NotasFiscais[0].GerarNFSeIni;
      QuerNotas.Post;
      QuerNotas.Next;
    end;
    try
      ATransa.Commit;
      AOk := True;
    except
      ATransa.Rollback;
    end;
  finally
    ShowMessage(ifthen(AOk, 'Sucesso', 'Falha ao migrar'));
    ATransa.Free;
    QuerNotas.Free;
    AAguarde.Free;
  end;
end;

procedure TFrmNFSe.ConsultarSituacao(ANotaFiscal : TDataSet);
begin
  if Not ValidaCertificado then Exit;
  try
    ACBrNFSeX1.NotasFiscais.Clear;
    ACBrNFSeX1.ConsultarSituacao(ANotaFiscal.FieldByName('NF_PROTOCOLO').AsString,
                                ANotaFiscal.FieldByName('NF_NUM_LOTE').AsString);

  {  ShowMessage(
    ACBrNFSeX1.WebServices.ConsSitLoteRPS.Situacao+ ' '+
    ACBrNFSeX1.WebServices.ConsSitLoteRPS.NumeroLote);}
    ChecarResposta(tmConsultarSituacao, ANotaFiscal.FieldByName('CODVENDA').AsString);
//    TrataRetornoConsultaNFSe(ANotaFiscal);
     if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
      PreencheDadosPrestador(ACBrNFSeX1);
    ACBrNFSeX1.DANFSE.ImprimirDANFSe;         // Aqui não imprimiu,
  except
    on E:Exception do
    begin
      if TFrmValidacoes.TrataErroNFe(TForm(ANotaFiscal.Owner), E.Message) = mrOK then
        ConsultarSituacao(ANotaFiscal);
    end;
  end;
  ANotaFiscal.Refresh;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

procedure TFrmNFSe.ConsultarLoteRps(ANotaFiscal : TDataSet; AImprimir : Boolean = True);
Var i : Integer;
begin
  if Not ValidaCertificado then Exit;
  LimpaRetornos;
  ACBrNFSeX1.NotasFiscais.Clear;
  ACBrNFSeX1.ConsultarLoteRps(ANotaFiscal.FieldByName('NF_PROTOCOLO').AsString,
                              ANotaFiscal.FieldByName('NF_NUM_LOTE').AsString);

//  ACBrNFSeX1.SSL.Validar(); // Isso faz validar o Shemas

//  Colocar aqui todas as consultas

// Verificar o Certificado Digital;
// Conferir os dados do cliente
// Conferir os dados do Cliente
// Conferir a Configuração Padrão da Nota Fiscal
// Achar a Melhor consulta para o Servidor
// Depois de Consultar Guardar o Retorno da Nota Fiscal de Envio e Retorno
// Verificar como deve ser Tratado o Retorno, cada provedor deve ter sua ´própria rotina de tratamento

  if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = prosiat) then
    ACBrNFSeX1.NotasFiscais.LoadFromString(ANotaFiscal.FieldByName('ARQUIVO_XML').AsString);


  ChecarResposta(tmConsultarLote, ANotaFiscal.FieldByName('CODVENDA').AsString); //tmConsultarNFSePorRps

  for i := 0 to ACBrNFSeX1.NotasFiscais.Count-1 do    // Depois de consultar de qualquer lugar deve imprimir
  begin
    if (ACBrNFSeX1.NotasFiscais.Items[i].Confirmada) and (AImprimir) then
    begin
       if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
        PreencheDadosPrestador(ACBrNFSeX1);
      ACBrNFSeX1.NotasFiscais.Items[i].Imprimir;
      ACBrNFSeX1.NotasFiscais.Items[i].ImprimirPDF;
    end;
  end;

  ANotaFiscal.Refresh;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

procedure TFrmNFSe.ConsultarNFSe(ANotaFiscal: TDataSet);
begin
  if Not ValidaCertificado then Exit;
  try
    InternalCarregaXMLNFSe(ANotaFiscal);
    LimpaRetornos;
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.CNPJInter := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.IMInter := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroIniNFSe :=  ANotaFiscal.FieldByName('NF_NUMERO').AsString;
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroFinNFSe := ANotaFiscal.FieldByName('NF_NUMERO').AsString;
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataInicial := StartOfTheMonth(ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime);
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataFinal := EndOfTheMonth(ANotaFiscal.FieldByName('NF_DT_EMISSAO').AsDateTime);
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.SerieNFSe := '';

    //    ACBrNFSeX1.ConsultarNFSe;
      ACBrNFSeX1.ConsultarNFSe;
    {$REGION 'Antigo'}
    //    ACBrNFSeX1.WebServices.ConsNFSe.Protocolo;
    //    ACBrNFSeX1.WebServices.ConsNFSe.NumeroNFSe;
    //    ACBrNFSeX1.WebServices.ConsNFSe.NumeroLote;
                                     {
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.CodigoVerificacao;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.dhRecebimento;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.Numero;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.DataEmissao;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.DataEmissaoRps;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.Competencia;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.NumeroLote;}
    // TrataRetornoConsultaNFSe(ANotaFiscal);
    {$ENDREGION}
    if ChecarResposta(tmConsultarNFSe, ANotaFiscal.FieldByName('CODVENDA').AsString) then
    begin
       if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
        PreencheDadosPrestador(ACBrNFSeX1);
      ACBrNFSeX1.DANFSE.ImprimirDANFSe;
    end;
  except
    on E:Exception do
    begin
      if TFrmValidacoes.TrataErroNFe(TForm(ANotaFiscal.Owner), E.Message) = mrOK then
        ConsultarNFSe(ANotaFiscal);
    end;
  end;
  ANotaFiscal.Refresh;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

procedure TFrmNFSe.ConsultarNFSeManual(ANotaFiscal: TDataSet; ADtInicial, ADtFinal: TDateTime; ACodVenda, ANumIniNFSe, ANumFinNFSe, ANumLote: String);
begin
  if Not ValidaCertificado then Exit;
  try
    LimpaRetornos;

    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroIniNFSe :=  ANumIniNFSe;
    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroFinNFSe := ANumFinNFSe;
    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataInicial := ADtInicial;
    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataFinal := ADtFinal;
    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroLote  := ANumLote;
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.SerieNFSe := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.CNPJInter := '';
//    ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.IMInter := '';

    ACBrNFSeX1.ConsultarNFSe;
    {$REGION 'Antigo'}
    //    ACBrNFSeX1.WebServices.ConsNFSe.Protocolo;
    //    ACBrNFSeX1.WebServices.ConsNFSe.NumeroNFSe;
    //    ACBrNFSeX1.WebServices.ConsNFSe.NumeroLote;
                                     {
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.CodigoVerificacao;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.dhRecebimento;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.Numero;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.DataEmissao;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.DataEmissaoRps;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.Competencia;
      Cadastro.FieldByName('NFSe_PROTOCOLO').AsString := FFrmNFSe.ACBrNFSeX1.WebServices.ConsNFSe.RetornoNFSe.NumeroLote;}
    // TrataRetornoConsultaNFSe(ANotaFiscal);
    {$ENDREGION}
    if ChecarResposta(tmConsultarNFSe, ACodVenda) then
    begin
       if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
        PreencheDadosPrestador(ACBrNFSeX1);
      ACBrNFSeX1.DANFSE.ImprimirDANFSe;
    end;
  except
    on E:Exception do
    begin
      if TFrmValidacoes.TrataErroNFe(TForm(ANotaFiscal.Owner), E.Message) = mrOK then
        ConsultarNFSe(ANotaFiscal);
    end;
  end;
  ANotaFiscal.Refresh;
  if (frmStatus <> nil) then
    frmStatus.Close;
end;

class procedure TFrmNFSe.DeleteNFSe(ACodNotaFiscal: string);   //Não pode
var
 QuerX: TFDQuery;
 ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'delete from NOTA_FISCAl ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodNotaFiscal;
    QuerX.ExecSQL;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;


 class function TFrmNFSe.GravaRetornoCancelamentoNFSe(AACBrNFSeX: TACBrNFSeX): Integer;
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, ARQUIVO_XML, NF_PROTOCOLO, NF_DT_CANCELAMENTO, NF_CSTAT, NF_AMBIENTE, NF_CHAVE, ' +
                      '       NF_CNPJCPF_DESTINO, NF_MOTIVO_STATUS, TIPO, MOTIVO_CANCELAMENTO, CODEMPRESA, CODVENDA, ' +
                      '       NF_NUM_LOTE ' +
                      'from NOTA_FISCAL ' +
                      'where (CODIGO = 0)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger              := GetProximoCodigoSP('NOTA_FISCAL');
    QuerX.FieldByName('CODEMPRESA').AsInteger          := StrToInt(EmpresaAtiva);
    QuerX.FieldByName('CODVENDA').AsString             := '0';
    QuerX.FieldByName('ARQUIVO_XML').AsString          := AACBrNFSeX.WebService.CancelaNFSe.XmlRetorno;
    QuerX.FieldByName('NF_PROTOCOLO').AsString         := AACBrNFSeX.WebService.CancelaNFSe.Protocolo;
    QuerX.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := AACBrNFSeX.WebService.CancelaNFSe.Data;
    QuerX.FieldByName('NF_CSTAT').AsString             := AACBrNFSeX.WebService.CancelaNFSe.Situacao;
    QuerX.FieldByName('NF_AMBIENTE').AsString          := IfThen(AACBrNFSeX.NotasFiscais[0].NFSe.Producao = snSim, '1', '2');

//    QuerX.FieldByName('NF_CHAVE').AsString           := TFrmNFe.TrataChaveNF(AACBrNFSeX.NotasFiscais[0].NFSe.ChaveNFSe);

    QuerX.FieldByName('NF_CNPJCPF_DESTINO').AsString   := AACBrNFSeX.NotasFiscais[0].NFSe.Tomador.IdentificacaoTomador.CpfCnpj;
    QuerX.FieldByName('NF_NUM_LOTE').AsString          := AACBrNFSeX.WebService.CancelaNFSe.NumeroLote;
    QuerX.FieldByName('NF_MOTIVO_STATUS').AsString     := AACBrNFSeX.WebService.CancelaNFSe.InfCancelamento.CodCancelamento;
    QuerX.FieldByName('TIPO').AsString                 := NotaFiscalTipoRegistroToStr(nftrNFSeCancelamento);
    QuerX.FieldByName('MOTIVO_CANCELAMENTO').AsString  := AACBrNFSeX.WebService.CancelaNFSe.InfCancelamento.MotCancelamento;
    QuerX.Post;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class procedure TFrmNFSe.GravaNotaFiscalInsert(AACBrNFSeX: TACBrNFSeX; const ACodVenda: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ANF: TNotaFiscal;

  AAmbiente: string;
  ANumeroNF: Int64;
  ANumeroLote: String;
  AStream: TMemoryStream;
begin
  ANF := AACBrNFSeX.NotasFiscais.Items[0];
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    AAmbiente   := IfThen(ANF.NFSe.Producao = snSim, '1', '2');
    ANumeroNF   := StrToInt64Def(ANF.NFSe.Numero, 0);
    ANumeroLote := ANF.NFSe.NumeroLote;
    if ANumeroNF = 0 then
      GeraExcecao('Nota inválida');

    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL where CODIGO = 0';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL'));
    QuerX.FieldByName('NF_NUMERO').AsLargeInt           := ANumeroNF;
    QuerX.FieldByName('SERIE').Value                    := ANF.NFSe.IdentificacaoRps.Serie;
    QuerX.FieldByName('NFSE_RPS').Value                 := ANF.NFSe.IdentificacaoRps.Numero;
    QuerX.FieldByName('NF_SITUACAO').Value              := 'Não Enviado';
    QuerX.FieldByName('NF_TIPO').Value                  := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
    QuerX.FieldByName('NF_AMBIENTE').AsString           := AAmbiente;
    QuerX.FieldByName('TIPO').AsString                  := NotaFiscalTipoRegistroToStr(nftrNFSe);
    QuerX.FieldByName('CODVENDA').AsString              := ACodVenda;
    QuerX.FieldByName('CODEMPRESA').AsString            := EmpresaAtiva;
    QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime       := ANF.NFSe.DataEmissao;
    QuerX.FieldByName('NF_NUM_LOTE').AsString           := ANF.NFSe.NumeroLote;
    QuerX.FieldByName('NF_CNPJCPF_DESTINO').AsString    := GetCnpjCpf(ANF.NFSe.Tomador.IdentificacaoTomador.CpfCnpj);
    QuerX.FieldByName('NF_NATUREZA_OPERACAO').Value     := AACBrNFSeX.Provider.NaturezaOperacaoDescricao(ANF.NFSe.NaturezaOperacao);
    QuerX.FieldByName('NF_CSTAT').AsString              := StatusRPSToStr(ANF.NFSe.StatusRps);
    QuerX.FieldByName('NF_CODVERIFICACAO').AsString     := ANF.NFSe.CodigoVerificacao;
    if ANF.NFSe.ChaveAcesso <> '' then
      QuerX.FieldByName('NF_CHAVE').AsString            := ANF.NFSe.ChaveAcesso;

    if not AnsiSameText(ANF.NFSe.Tomador.RazaoSocial, 'NAO INFORMADO') then
      QuerX.FieldByName('NF_RAZAOSOCIAL').AsString      := ANF.NFSe.Tomador.RazaoSocial
    else
      QuerX.FieldByName('NF_RAZAOSOCIAL').Value         := Procura('RAZAOSOCIAL', 'VENDA', ACodVenda);

//     if AACBrNFSeX.WebService.Emite.Protocolo <> '' then
//      QuerX.FieldByName('NF_PROTOCOLO').AsString := AACBrNFSeX.WebService.Emite.Protocolo;


    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class procedure TFrmNFse.GravaNotaFiscalEdit(AACBrNFSeX: TACBrNFSeX; AXMLEnvio, ACodErro, AErro: String);
var
  QuerX, QuerY: TFDQuery;
  ATransa: TFDTransaction;
  ANF: TNotaFiscal;
  AAmbiente, AArquivo, APath: string;
  ANumeroNF: Int64;
  ANumeroLote: String;
  ANumeroRPS: String;
  i: integer;
  AResponseConsulta: TNFSeWebServiceResponse;
  AXmlSalvar: TXMLDocument;
  AXml: TStrings;
  ANode: TACBrXmlNode;
  AuxNode: TACBrXmlNode;
  AuxNodeChave: TACBrXmlNode;
  Document: TACBrXmlDocument;
begin
  try

    try
      ATransa := GeraFDTransacao;
      QuerX   := GeraFDQuery(ATransa);
      QuerY   := GeraFDQuery(ATransa);
      if AACBrNFSeX.NotasFiscais.Count > 0 then
      begin
        // Aqui tem que fazer um for, onde ANF é NotasFiscais.Items[i]
        for I := 0 to AACBrNFSeX.NotasFiscais.Count - 1 do
        begin
          if AACBrNFSeX.NotasFiscais.Items[i].XmlNfse <> '' then
          begin
            AXml := TStringList.Create;
            try
              AXml.Text := AACBrNFSeX.NotasFiscais.Items[i].XmlNfse;
              AXml.SaveToFile(AACBrNFSeX.Configuracoes.Arquivos.PathSalvar + AACBrNFSeX.NotasFiscais.Items[i].NFSe.Numero + '.xml');
            finally
              AXml.Free;
            end;
          end;
        end;

         for I := 0 to AACBrNFSeX.NotasFiscais.Count - 1 do
        begin
          ANF := AACBrNFSeX.NotasFiscais.Items[i];
          AAmbiente   := IfThen(ANF.NFSe.Producao = snSim, '1', '2');
          ANumeroNF   := StrToInt64Def(ANF.NFSe.Numero, 0);
          ANumeroRPS  := ANF.NFSe.IdentificacaoRps.Numero;
          ANumeroLote := ANF.NFSe.NumeroLote;

          // Abaixo serve para encontrar o registro da nota no banco de dados.
          // Se tiver RPS, faz o select com RPS, senão faz o select com número.
          if not (MatchStr(ANF.NFSe.IdentificacaoRps.Numero,['0',''])) then
          begin
            QuerX.SQL.Text := 'select * ' +
                              'from NOTA_FISCAL ' +
                              'where (NFSE_RPS = :NFSE_RPS) ' +
                              '      and (SERIE = :SERIE) ' +
                              '      and (NF_TIPO = :NF_TIPO) ' +
                              '      and (NF_AMBIENTE = :NF_AMBIENTE)';
            QuerX.ParamByName('NFSE_RPS').AsString              := ANumeroRPS;  // Não sei qual WebService
            QuerX.ParamByName('SERIE').AsString                 := ANF.NFSe.IdentificacaoRps.Serie;
            QuerX.ParamByName('NF_TIPO').AsString               := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
            QuerX.ParamByName('NF_AMBIENTE').AsString           := AAmbiente;
          end
          else  // Se não achar por RPS faz com número
          begin
            QuerX.SQL.Text := 'select * ' +
                              'from NOTA_FISCAL ' +
                              'where (NF_NUMERO = :NF_NUMERO) ' +
                              '      and (SERIE = :SERIE) ' +
                              '      and (NF_TIPO = :NF_TIPO) ' +
                              '      and (NF_AMBIENTE = :NF_AMBIENTE)';
            QuerX.ParamByName('NF_NUMERO').AsLargeInt           := ANumeroNF;
            QuerX.ParamByName('SERIE').AsString                 := ANF.NFSe.IdentificacaoRps.Serie;
            QuerX.ParamByName('NF_TIPO').AsString               := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
            QuerX.ParamByName('NF_AMBIENTE').AsString           := AAmbiente;
          end;
          QuerX.Open;
          if not (QuerX.IsEmpty) then
          begin
            QuerX.First;
            while not QuerX.eof do
            begin
              QuerX.Edit;

              // Se for Siat precisa tratar o retorno pois as informações vêm no XML do evento de emissão.
              if (AACBrNFSeX.Provider.ConfigGeral.Provedor = prosiat) and
                 (AACBrNFSeX.WebService.Emite.Sucesso = True) then
              begin
                try
                  AACBrNFSeX.NotasFiscais.Items[I].NFSe.Situacao := 0;
                  AACBrNFSeX.NotasFiscais.Items[I].Confirmada := True;

                  //Lê o XML pra sobescrever os dados errados
                  Document := TACBrXmlDocument.Create;
                  Document.LoadFromXml(AACBrNFSeX.WebService.Emite.XMLRetorno);

                  if ANode = nil then
                    ANode := Document.Root;

                  //ChavesNFSeRPS
                  AuxNode := ANode.Childrens.Items[I].Childrens.FindAnyNs('ChavesNFSeRPS');

                  //ChavesNFSeRPS > ChavesNFSeRPS  
                  AuxNode := AuxNode.Childrens.FindAnyNs('ChaveNFSeRPS');

                  if AuxNode <> nil then
                  begin
                    AuxNodeChave := AuxNode.Childrens.FindAnyNs('ChaveRPS');

                    if (AuxNodeChave <> nil) then
                    begin 
                        AACBrNFSeX.NotasFiscais.Items[I].NFSe.IdentificacaoRps.Serie := AuxNodeChave.Childrens.FindAnyNs('SerieRPS').Content;
                        AACBrNFSeX.NotasFiscais.Items[I].NFSe.IdentificacaoRps.Numero := AuxNodeChave.Childrens.FindAnyNs('NumeroRPS').Content;
                    end;
                  end;

                  AuxNodeChave := AuxNode.Childrens.FindAnyNs('ChaveNFe');

                  if (AuxNodeChave <> nil) then
                  begin
                      AACBrNFSeX.NotasFiscais.Items[I].NFSe.Numero := AuxNodeChave.Childrens.FindAnyNs('NumeroNFe').Content;
                      AACBrNFSeX.WebService.Emite.NumeroNota := AuxNodeChave.Childrens.FindAnyNs('NumeroNFe').Content;
                      AACBrNFSeX.NotasFiscais.Items[I].NFSe.CodigoVerificacao := AuxNodeChave.Childrens.FindAnyNs('CodigoVerificacao').Content;
                  end;

                  // Data de Competência
                  AACBrNFSeX.NotasFiscais.Items[I].NFSe.Competencia := AACBrNFSeX.NotasFiscais.Items[I].NFSe.DataEmissao;

                  // O componente não retorna a propriedade NomeArq, que serve para fechar a tela do Checar.
                  AACBrNFSeX.NotasFiscais.Items[I].NomeArq := AACBrNFSeX.Configuracoes.Arquivos.PathSalvar + AACBrNFSeX.NotasFiscais.Items[I].NFSe.Numero + '.xml';

                  // Gera o XML e sobescreve o atual
                  AACBrNFSeX.NotasFiscais.Items[I].XmlNfse := AACBrNFSeX.NotasFiscais.Items[I].GerarXML;
                  AXMLEnvio := AACBrNFSeX.NotasFiscais.Items[I].XmlNFSe;

                finally
                  FreeAndNil(Document);
                end;
              end;

//              if (AACBrNFSeX.Provider.ConfigGeral.Provedor = proSigISS) and
//                 (AACBrNFSeX.WebService.Emite.Sucesso = True) then
//              begin
//                AACBrNFSeX.NotasFiscais.Items[I].NFSe.Situacao := 0;
//                AACBrNFSeX.NotasFiscais.Items[I].Confirmada := True;
//                if QuerX.FieldByName('ARQUIVO_XML').AsString = '' then
//                  QuerX.FieldByName('ARQUIVO_XML').AsString       := AXMLEnvio;
//              end;

              if ANF.NFSe.ChaveAcesso <> '' then
                QuerX.FieldByName('NF_CHAVE').AsString          := ANF.NFSe.ChaveAcesso;
              if AACBrNFSeX.WebService.Emite.Protocolo <> '' then
                QuerX.FieldByName('NF_PROTOCOLO').AsString      := AACBrNFSeX.WebService.Emite.Protocolo;
//              if AACBrNFSeX.WebService.ConsultaNFSeporRps.NumRPS <> '' then
//                QuerX.FieldByName('NFSE_RPS').AsString      := AACBrNFSeX.WebService.ConsultaNFSeporRps.NumRPS
//              else
              QuerX.FieldByName('NFSE_RPS').AsString      := ANF.NFSe.IdentificacaoRps.Numero;

              if ANF.NFSe.IdentificacaoRps.Numero <> AACBrNFSeX.WebService.Emite.NumeroLote then
                QuerX.FieldByName('NF_NUM_LOTE').AsString := AACBrNFSeX.WebService.Emite.NumeroLote;

              QuerX.FieldByName('ARQUIVO_XML').AsString       := ANF.XmlNFSe;
              QuerX.FieldByName('ARQUIVO_INI').AsString       := ANF.GerarNFSeIni;

              if ANF.XmlRps <> '' then
                QuerX.FieldByName('ARQUIVO_XML_RETORNO').AsString := ANF.XmlRps
              else
                QuerX.FieldByName('ARQUIVO_XML_RETORNO').AsString := ANF.XmlNFSe;

              QuerX.FieldByName('NF_CODERRO').AsString          := ACodErro;
              QuerX.FieldByName('NF_ERRO').AsString             := AErro;

              if ANF.NFSe.CodigoVerificacao <> '' then
                QuerX.FieldByName('NF_CODVERIFICACAO').AsString := ANF.NFSe.CodigoVerificacao;

      //        QuerX.FieldByName('SUBTOTAL').AsFloat             := ANF.NFSe.Servico.Valores.BaseCalculo;

              QuerX.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat    := ANF.NFSe.Servico.Valores.Aliquota;
      //        QuerX.FieldByName('NF_VALOR_ISS').AsFloat         := ANF.NFSe.Servico.Valores.ValorIss;
              QuerX.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat  := ANF.NFSe.Servico.Valores.ValorIssRetido;
              QuerX.FieldByName('TOTAL_SERVICOS').AsFloat       := ANF.NFSe.Servico.Valores.ValorServicos;
              QuerX.FieldByName('TOTAL_PRODUTOS').AsFloat       := 0;
              QuerX.FieldByName('VDESC').AsFloat                := ANF.NFSe.Servico.Valores.DescontoIncondicionado;
              QuerX.FieldByName('VALOR').AsFloat                := ANF.NFSe.Servico.Valores.ValorServicos;
              QuerX.FieldByName('TOTAL').AsFloat                := ANF.NFSe.Servico.Valores.ValorLiquidoNFSe;
              QuerX.FieldByName('NF_DISCRIMINACAO_SERVICO').AsString := ANF.NFSe.Servico.Discriminacao;
              (*
              ANF.NFSe.ValoresNfse.ValorServicos       := WRCalc.DBVendaOuCompra.FieldByName('SUB_TOTAL').AsFloat + WRCalc.DBVendaOuCompra.FieldByName('VOUTRO').AsCurrency;
              ANF.NFSe.ValoresNfse.OutrasRetencoes     := 0;
              ANF.NFSe.ValoresNfse.OutrasRetencoes     := 0;
              ANF.NFSe.ValoresNfse.OutrasRetencoes     := 0;
              QuerX.FieldByName('VDESC').AsCurrency    := DescontoIncondicionado;
              DescontoCondicionado                     := 0.00;
              QuerX.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat := ValorISSRetido;
              BaseCalculo       := ValorServicos - ValorDeducoes - DescontoIncondicionado;
              ValorLiquidoNfse  := QuerX.FieldByName('TOTAL').AsFloat - QuerX.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat;
              QuerX.FieldByName('NF_PALIQ_SN').AsFloat := AliquotaSN;    *)

           {   update set  n.TOTAL = V1.TOTAL+V1.NF_VALOR_ISS_RETIDO,
                       n.VDESC = V1.VDESC,
                       n.PDESC = V1.PDESC,
                       n.voutro = V1.voutro,
                       n.poutro = V1.poutro,
                       n.total_produtos = V1.total_produtos,
                       n.total_servicos = V1.total_servicos,
                       n.nf_vfrete = V1.nf_vfrete,
                       n.nf_pis_vpis = V1.nf_pis_vpis,
                       n.nf_cofins_vcofins = V1.nf_cofins_vcofins,
                       n.nf_vicmsst = V1.nf_vicmsst,
                       N.NF_VALOR_ISS_RETIDO = V1.NF_VALOR_ISS_RETIDO;   }

              // O retorno da Copylan não retorna Correto se não for consultado por RPS.
               //vai ser sempre true se retornou algo          // se for consulta é ''
              if (ANF.NFSe.Numero <> '') then //Caso Retorne Numero de NF Substitui;
              begin
                 if (AACBrNFSeX.WebService.Emite.NumeroNota <> '') and
                    (AACBrNFSeX.WebService.Emite.NumeroNota <> ANF.NFSe.Numero) then
                      QuerX.FieldByName('NF_NUMERO').AsLargeInt := StrToInt64Def(AACBrNFSeX.WebService.Emite.NumeroNota, 0)
                 else
                      QuerX.FieldByName('NF_NUMERO').AsLargeInt    := StrToInt64Def(ANF.NFSe.Numero, 0);
              end;

              // Apenas para provedor SigIss (Marília)
              if (AACBrNFSeX.Provider.ConfigGeral.Provedor = prosigiss) and
                 (ANF.NFSe.Situacao = 1) then
              begin
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'Normal';
                  QuerX.FieldByName('NF_SITUACAO').AsString := 'Confirmada';
              end
              else
              if (AACBrNFSeX.Provider.ConfigGeral.Provedor = proISSCuritiba) and
                 (ANF.NFSe.SituacaoNfse = TStatusNFSe.snCancelado) then
              begin
                QuerX.FieldByName('NF_SITUACAO').AsString := 'Cancelada';
                QuerX.FieldByName('NF_DT_CANCELAMENTO').AsDateTime := ANF.NFSe.NfseCancelamento.DataHora;
              end
              else//Casos Normais
              begin
                if ANF.NFSe.Situacao = 1 then
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'NAO RECEBIDO'
                else if ANF.NFSe.Situacao = 2 then
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'NAO PROCESSADO'
                else if ANF.NFSe.Situacao = 3 then
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'LOTE PROCESSADO COM ERRO'
                else if ANF.NFSe.Situacao = 4 then
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'LOTE PROCESSADO'
                else if ANF.NFSe.Situacao = 0 then
                   QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'Normal'
                else
                  QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := IntToStr(ANF.NFSe.Situacao);

                if ANF.NFSe.NFSeCancelamento.Pedido.CodigoCancelamento <> '' then
                  QuerX.FieldByName('NF_SITUACAO').AsString       := 'Cancelada'
                else
                if AACBrNFSeX.WebService.ConsultaSituacao.Situacao = '2' then
                  QuerX.FieldByName('NF_SITUACAO').AsString := 'Enviada'
                else
                if ANF.NFSe.SituacaoNfse = TStatusNFSe.snNormal then
                  QuerX.FieldByName('NF_SITUACAO').AsString       := IfThen(ANF.Confirmada, 'Confirmada', 'Não Autorizada');
              end;
              QuerX.Post;
              QuerX.Next;
            end;
          end
          else
          begin
            // Passa por aqui se o registro da nota não for encontrado.
            try
              QuerY.SQL.Text := 'select * ' +
                        'from NOTA_FISCAL where CODIGO = 0';
              QuerY.Open;
              QuerY.Insert;
              QuerY.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL'));
              QuerY.FieldByName('NF_NUMERO').AsLargeInt           := ANumeroNF;
              QuerY.FieldByName('SERIE').Value                    := ANF.NFSe.IdentificacaoRps.Serie;
              QuerY.FieldByName('NFSE_RPS').AsString              := ANF.NFSe.IdentificacaoRps.Numero;
              QuerY.FieldByName('NF_TIPO').Value                  := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
              QuerY.FieldByName('NF_AMBIENTE').AsString           := AAmbiente;
              QuerY.FieldByName('TIPO').AsString                  := NotaFiscalTipoRegistroToStr(nftrNFSe);
              QuerY.FieldByName('CODVENDA').AsString              := 'VINCULAR';
              QuerY.FieldByName('CODEMPRESA').AsString            := EmpresaAtiva;
              QuerY.FieldByName('NF_DT_EMISSAO').AsDateTime       := ANF.NFSe.DataEmissao;
              QuerY.FieldByName('NF_NUM_LOTE').AsString           := ANF.NFSe.NumeroLote;
              QuerY.FieldByName('NF_CNPJCPF_DESTINO').AsString    := GetCnpjCpf(ANF.NFSe.Tomador.IdentificacaoTomador.CpfCnpj);
              QuerY.FieldByName('NF_NATUREZA_OPERACAO').Value     := AACBrNFSeX.Provider.NaturezaOperacaoDescricao(ANF.NFSe.NaturezaOperacao);
              QuerY.FieldByName('NF_CSTAT').AsString              := StatusRPSToStr(ANF.NFSe.StatusRps);
              if ANF.NFSe.ChaveAcesso <> '' then
                QuerY.FieldByName('NF_CHAVE').AsString            := ANF.NFSe.ChaveAcesso;
                
              QuerY.FieldByName('NF_RAZAOSOCIAL').AsString      := ANF.NFSe.Tomador.RazaoSocial;

              //Valores
              QuerY.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat    := ANF.NFSe.Servico.Valores.Aliquota;
              QuerY.FieldByName('NF_VALOR_ISS_RETIDO').AsFloat  := ANF.NFSe.Servico.Valores.ValorIssRetido;
              QuerY.FieldByName('TOTAL_SERVICOS').AsFloat       := ANF.NFSe.Servico.Valores.BaseCalculo;
              QuerY.FieldByName('TOTAL_PRODUTOS').AsFloat       := 0;
              QuerY.FieldByName('VDESC').AsFloat                := ANF.NFSe.Servico.Valores.DescontoIncondicionado;
              QuerY.FieldByName('TOTAL').AsFloat                := ANF.NFSe.Servico.Valores.ValorServicos;

              //XML
              if AXMLEnvio <> '' then //WebService THEMA não devolve o xml de envio
                QuerY.FieldByName('ARQUIVO_XML').AsString       := AXMLEnvio
              else
                QuerY.FieldByName('ARQUIVO_XML').AsString := ANF.XmlNFSe;  
              QuerY.FieldByName('ARQUIVO_XML_RETORNO').AsString := ANF.XmlNFSe;
              QuerY.FieldByName('NF_CODERRO').AsString          := ACodErro;
              QuerY.FieldByName('NF_ERRO').AsString             := AErro;

              if ANF.NFSe.Numero <> '' then //Caso Retorne Numero de NF Substitui;
                  QuerY.FieldByName('NF_NUMERO').AsLargeInt         := StrToInt64Def(ANF.NFSe.Numero, 0);
              if ANF.NFSe.Situacao = 1 then
                QuerY.FieldByName('NF_MOTIVO_STATUS').AsString  := 'NAO RECEBIDO'
              else if ANF.NFSe.Situacao = 2 then
                QuerY.FieldByName('NF_MOTIVO_STATUS').AsString  := 'NAO PROCESSADO'
              else if ANF.NFSe.Situacao = 3 then
                QuerY.FieldByName('NF_MOTIVO_STATUS').AsString  := 'LOTE PROCESSADO COM ERRO'
              else if ANF.NFSe.Situacao = 4 then
                QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'LOTE PROCESSADO'
              else if ANF.NFSe.Situacao = 0 then
                 QuerY.FieldByName('NF_MOTIVO_STATUS').AsString  := 'Normal'
              else
                QuerY.FieldByName('NF_MOTIVO_STATUS').AsString  := IntToStr(ANF.NFSe.Situacao);
              if ANF.NFSe.NFSeCancelamento.Pedido.CodigoCancelamento <> '' then
                QuerY.FieldByName('NF_SITUACAO').AsString       := 'Cancelada'
              else
              if ANF.NFSe.SituacaoNfse = TStatusNFSe.snNormal then
                QuerY.FieldByName('NF_SITUACAO').AsString       := IfThen(ANF.Confirmada, 'Confirmada', 'Não Autorizada');

              QuerY.Post;
              QuerY.Next;
            except
            end;
          end;
        end;
      end
      else
      begin // Se não retornou nenhuma nota no componente, passa por aqui
        QuerX.SQL.Text := 'select * ' +
                          'from NOTA_FISCAL ' +
                          'where ((NFSE_RPS = :NFSE_RPS) ' +
                          ' or  (NF_NUM_LOTE = :NF_NUM_LOTE)) ';
  //                        '       (or ) ' +
//                          '      and (SERIE = :SERIE) ';
//                          '      and (NF_TIPO = :NF_TIPO) ';
//                          '      and (NF_AMBIENTE = :NF_AMBIENTE)';
  // Não sei qual WebService

        // Isso aqui é uma merda porque tem que descobrir por onde foi a consulta.
        if AACBrNFSeX.WebService.ConsultaNFSeporRps.ArquivoEnvio <> '' then
        begin
          QuerX.ParamByName('NFSE_RPS').AsString              := AACBrNFSeX.WebService.ConsultaNFSeporRps.NumeroRps;
          QuerX.ParamByName('NF_NUM_LOTE').AsString           := AACBrNFSeX.WebService.ConsultaNFSeporRps.NumeroLote;
          AResponseConsulta := AACBrNFSeX.WebService.ConsultaNFSeporRps;
//          QuerX.ParamByName('SERIE').AsString                 := AACBrNFSeX.WebService.ConsultaNFSeporRps.Serie;
//          QuerX.ParamByName('NF_TIPO').AsString               := AACBrNFSeX.WebService.ConsultaNFSeporRps.Tipo;
        end;

        if AACBrNFSeX.WebService.ConsultaLoteRPS.ArquivoEnvio <> '' then
        begin
          QuerX.ParamByName('NFSE_RPS').AsString              := AACBrNFSeX.WebService.ConsultaLoteRPS.NumeroRps;
          QuerX.ParamByName('NF_NUM_LOTE').AsString           := AACBrNFSeX.WebService.ConsultaLoteRPS.NumeroLote;
          AResponseConsulta := AACBrNFSeX.WebService.ConsultaLoteRPS;
//          QuerX.ParamByName('SERIE').AsString                 := AACBrNFSeX.WebService.ConsultaLoteRPS.SerieRps;
//          QuerX.ParamByName('NF_TIPO').AsString               := AACBrNFSeX.WebService.ConsultaLoteRPS.Tipo;
        end;

        if AACBrNFSeX.WebService.ConsultaNFSe.ArquivoEnvio <> '' then
        begin
          QuerX.ParamByName('NFSE_RPS').AsString              := AACBrNFSeX.WebService.ConsultaNFSe.NumeroRps;
          QuerX.ParamByName('NF_NUM_LOTE').AsString           := AACBrNFSeX.WebService.ConsultaNFSe.NumeroLote;
          AResponseConsulta := AACBrNFSeX.WebService.ConsultaNFSe;
//          QuerX.ParamByName('SERIE').AsString                 := AACBrNFSeX.WebService.ConsultaNFSe.SerieRps;
//          QuerX.ParamByName('NF_TIPO').AsString               := AACBrNFSeX.WebService.ConsultaNFSe.Tipo;
        end;

        if QuerX.ParamByName('NF_NUM_LOTE').AsString = '' then
          QuerX.ParamByName('NF_NUM_LOTE').AsString := '0';

        if QuerX.ParamByName('NFSE_RPS').AsString = '' then
          QuerX.ParamByName('NFSE_RPS').AsString := '0';

        QuerX.Open;
        QuerX.First;
        while not QuerX.eof do
        begin
          QuerX.Edit;
          QuerX.FieldByName('NF_MOTIVO_STATUS').AsString  := 'Normal';

          // BHISS
          for i := 0 to AResponseConsulta.Erros.Count - 1 do
          begin
            if MatchStr(AResponseConsulta.Erros[i].Codigo,
            ['X203', 'X202']) then
              QuerX.FieldByName('NF_SITUACAO').AsString := 'Não Autorizada';
          end;
          QuerX.Post;
          QuerX.Next;
        end;
      end;
      ATransa.Commit;
    finally
      QuerX.Free;
      QuerY.Free;
      ATransa.Free;
    end;
  except
    ShowMessage('Este Tipo de Consulta não Retorna um Nota Valida');
  end;
  //apagar, só para mandar novamente
end;


class procedure TFrmNFSe.GravarXLMNFSe(AACBrNFSeX: TACBrNFSeX; const ACodVenda: string; ACodigoDestino: Integer = 0);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ANF: TNotaFiscal;
  AAmbiente: string;
  ANumeroNF: Int64;
  ANumeroLote: String;
  AStream: TMemoryStream;
begin
  {ACodigoDestino: Preencher este campo apenas quando se deseja substituir uma nota já existente no banco de dados.
                   Pode ocorrer de o número da nota ser alterado após a emissão, sendo assim só conseguimos localizar
                   a nota no banco de dados pelo código, e não mais pelos dados dela (Número, Série, Ambiente, etc..)}
  ANF := AACBrNFSeX.NotasFiscais.Items[0];
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    AAmbiente   := IfThen(ANF.NFSe.Producao = snSim, '1', '2');
    ANumeroNF   := StrToInt64Def(ANF.NFSe.Numero, 0);
    ANumeroLote := ANF.NFSe.NumeroLote;
    if ANumeroNF = 0 then
      GeraExcecao('Nota inválida');

    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL';
    if ACodigoDestino <> 0 then
    begin
      QuerX.SQL.Add('where (CODIGO = :Cod)');
      QuerX.ParamByName('Cod').AsInteger := ACodigoDestino;
    end else
    begin
      QuerX.SQL.Add('where (NF_NUM_LOTE = :NF_NUM_LOTE) ' +//(NF_NUMERO = :NF_NUMERO) ' +
                    '      and (SERIE = :SERIE) ' +
                    '      and (NF_TIPO = :NF_TIPO) ' +
                    '      and (NF_AMBIENTE = :NF_AMBIENTE)');
      QuerX.ParamByName('NF_NUM_LOTE').AsString   := ANumeroLote;          // LargeInt Fora do Padrão
      QuerX.ParamByName('SERIE').AsString         := ANF.NFSe.IdentificacaoRps.Serie;
      QuerX.ParamByName('NF_TIPO').AsString       := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
      QuerX.ParamByName('NF_AMBIENTE').AsString   := AAmbiente;
    end;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL'));
    end else
      QuerX.Edit;
//    Result := QuerX.FieldByName('CODIGO').AsInteger;
    QuerX.FieldByName('NF_NUMERO').AsLargeInt     := ANumeroNF;        // LargeInt Fora do Padrão
    QuerX.FieldByName('SERIE').Value              := ANF.NFSe.IdentificacaoRps.Serie;
    QuerX.FieldByName('NF_TIPO').Value            := AACBrNFSeX.Provider.TipoRPSToStr(ANF.NFSe.IdentificacaoRps.Tipo);
    QuerX.FieldByName('NF_AMBIENTE').AsString     := AAmbiente;
    QuerX.FieldByName('TIPO').AsString            := NotaFiscalTipoRegistroToStr(nftrNFSe);
    QuerX.FieldByName('CODVENDA').AsString        := ACodVenda;
    QuerX.FieldByName('CODEMPRESA').AsString      := EmpresaAtiva;
    QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime := ANF.NFSe.DataEmissao;
    if ANF.NFSe.ChaveAcesso <> '' then
      QuerX.FieldByName('NF_CHAVE').AsString      := ANF.NFSe.ChaveAcesso;
    QuerX.FieldByName('NF_NUM_LOTE').AsString     := ANF.NFSe.NumeroLote;

    //Emite
    if (AACBrNFSeX.WebService.Emite.Protocolo <> '') then
      QuerX.FieldByName('NF_PROTOCOLO').AsString  := AACBrNFSeX.WebService.Emite.Protocolo;

    if (AACBrNFSeX.WebService.Emite.NumeroLote <> '') then
      QuerX.FieldByName('NF_NUM_LOTE').AsString   := AACBrNFSeX.WebService.Emite.NumeroLote;
    //ConsultaSituacao
    if (AACBrNFSeX.WebService.ConsultaSituacao.Protocolo <> '') then
      QuerX.FieldByName('NF_PROTOCOLO').AsString  := AACBrNFSeX.WebService.ConsultaSituacao.Protocolo;

    if (AACBrNFSeX.WebService.ConsultaSituacao.NumeroLote <> '') then
      QuerX.FieldByName('NF_NUM_LOTE').AsString   := AACBrNFSeX.WebService.ConsultaSituacao.NumeroLote;
    //ConsultaLoteRps
    if (AACBrNFSeX.WebService.ConsultaLoteRps.Protocolo <> '')then
      QuerX.FieldByName('NF_PROTOCOLO').AsString  := AACBrNFSeX.WebService.ConsultaLoteRps.Protocolo;

    if (AACBrNFSeX.WebService.ConsultaLoteRps.NumeroLote <> '') then
      QuerX.FieldByName('NF_NUM_LOTE').AsString   := AACBrNFSeX.WebService.ConsultaLoteRps.NumeroLote;

    {Este tópico possui os detalhes sobre as properties do XML:
     https://www.projetoacbr.com.br/forum/topic/29014-como-salvar-o-xml-do-rps/}
    QuerX.FieldByName('ARQUIVO_XML').AsString     := ANF.XMLNFSe;
    if ANF.XMLNFSe <> '' then
      QuerX.FieldByName('ARQUIVO_XML').AsString   := ANF.XMLNFSe;
//    else if ANF.XMLAssinado <> '' then
//      QuerX.FieldByName('ARQUIVO_XML').AsString   := ANF.XMLAssinado
//    else
//      QuerX.FieldByName('ARQUIVO_XML').AsString   := ANF.XMLOriginal;

    AStream := TMemoryStream.Create;
    try
      TFrmNFSe.GravarXMLFormatoWRToStream(AACBrNFSeX, AStream);
      AStream.Position := 0;
      TBlobField(QuerX.FieldByName('ARQUIVO_XML_FORMATO_WR')).LoadFromStream(AStream);
    finally
      AStream.Free;
    end;

    //QuerX.FieldByName('ARQUIVO_RPS').AsString := XML;
    QuerX.FieldByName('NF_CHAVE').AsString    := StringReplace(ANF.NFSe.InfID.ID, 'NFSe', '', [rfIgnoreCase]);
    if ANF.NFSe.Situacao = 1 then
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := 'NAO RECEBIDO'
    else if ANF.NFSe.Situacao = 2 then
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := 'NAO PROCESSADO'
    else if ANF.NFSe.Situacao = 3 then
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := 'LOTE PROCESSADO COM ERRO'
    else if ANF.NFSe.Situacao = 4 then
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := 'LOTE PROCESSADO'
    else
      QuerX.FieldByName('NF_MOTIVO_STATUS').AsString := IntToStr(ANF.NFSe.Situacao);
    QuerX.FieldByName('NF_SITUACAO').AsString        := IfThen(ANF.Confirmada, 'Confirmada', 'Desconhecida');
//    QuerX.FieldByName('NF_DIGEST_VALUE').AsString    := ANF.NFSe.signature.DigestValue;
    QuerX.FieldByName('NF_CNPJCPF_DESTINO').AsString := GetCnpjCpf(ANF.NFSe.Tomador.IdentificacaoTomador.CpfCnpj);
    QuerX.FieldByName('NF_NATUREZA_OPERACAO').Value  := AACBrNFSeX.Provider.NaturezaOperacaoDescricao(ANF.NFSe.NaturezaOperacao);
    QuerX.FieldByName('NF_CSTAT').AsString           := StatusRPSToStr(ANF.NFSe.StatusRPS);
    if not AnsiSameText(ANF.NFSe.Tomador.RazaoSocial, 'NAO INFORMADO') then
      QuerX.FieldByName('NF_RAZAOSOCIAL').AsString := ANF.NFSe.Tomador.RazaoSocial
    else
      QuerX.FieldByName('NF_RAZAOSOCIAL').Value := Procura('RAZAOSOCIAL', 'VENDA', ACodVenda);
    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

class function TFrmNFSe.LerXMLFormatoWRFromStream(AACBrNFSeX: TACBrNFSeX; AStream: TStream): TNFSe;
  function LGetValue(AParentNode: IXMLNode; const ANodeName: string): string;
  var
    ANode: IXMLNode;
  begin
    ANode := AParentNode.ChildNodes.FindNode(ANodeName);
    if ANode = nil then
      Result := ''
    else
      Result := ANode.Text;
  end;

  function LGetData(AParentNode: IXMLNode; const ANodeName: string): TDateTime;
  var
    AAno, AMes, ADia, AHora, AMin, ASeg: Integer;
    AText: string;
  begin
    AText := LGetValue(AParentNode, ANodeName);
    if AText = '' then
      Exit(0);

    AAno  := StrToIntDef(Copy(AText, 1, 4), 0);
    AMes  := StrToIntDef(Copy(AText, 6, 2), 0);
    ADia  := StrToIntDef(Copy(AText, 9, 2), 0);
    AHora := StrToIntDef(Copy(AText, 12, 2), 0);
    AMin  := StrToIntDef(Copy(AText, 15, 2), 0);
    ASeg  := StrToIntDef(Copy(AText, 18, 2), 0);
    Result := EncodeDateTime(AAno, AMes, ADia, AHora, AMin, ASeg, 0);
  end;

  function LGetCur(AParentNode: IXMLNode; const ANodeName: string): Double;
  begin
    Result := StrToFloatDef(LGetValue(AParentNode, ANodeName), 0);
  end;

//  function LGetBool(AParentNode: IXMLNode; const ANodeName: string): Boolean;
//  begin
//    Result := StrToBool(LGetValue(AParentNode, ANodeName));
//  end;

  procedure DoLerEndereco(ANodeEndereco: IXMLNode; AEndereco: TEndereco);
  begin
    with ANodeEndereco do
    begin
      AEndereco.EnderecoInformado := LGetValue(ANodeEndereco, 'EnderecoInformado');
      AEndereco.TipoLogradouro    := LGetValue(ANodeEndereco, 'TipoLogradouro');
      AEndereco.Endereco          := LGetValue(ANodeEndereco, 'Endereco');
      AEndereco.Numero            := LGetValue(ANodeEndereco, 'Numero');
      AEndereco.Complemento       := LGetValue(ANodeEndereco, 'Complemento');
      AEndereco.TipoBairro        := LGetValue(ANodeEndereco, 'TipoBairro');
      AEndereco.Bairro            := LGetValue(ANodeEndereco, 'Bairro');
      AEndereco.CodigoMunicipio   := LGetValue(ANodeEndereco, 'CodigoMunicipio');
      AEndereco.UF                := LGetValue(ANodeEndereco, 'UF'); // Não funciona, não sei porque
      AEndereco.CEP               := LGetValue(ANodeEndereco, 'CEP');
      AEndereco.xMunicipio        := LGetValue(ANodeEndereco, 'xMunicipio');
      AEndereco.CodigoPais        := StrToIntDef(LGetValue(ANodeEndereco, 'CodigoPais'), 0);
      AEndereco.xPais             := LGetValue(ANodeEndereco, 'xPais');
    end;
  end;
var
  AXML: IXMLDocument;
  ARoot, ATmpNode,ATmpNode2, AServico, AValores, AItemServico, ANodeItem, APrestador, ATomador, AIdentificacaoTomador, AContato,
  ACondicaoPagamento, AParcelas, AIdentificacaoPrestador, servicoi: IXMLNode;
  I: Integer;
  AOk: Boolean;
  XMLText : TStringlist;
  MenssagemErro : String;
  AXMLStream: TStream;
  ANFSe: TNFSe;
  ANFSeItemServico: TItemServicoCollectionItem;
  ANFSeParcela : TParcelasCollectionItem;
  AForm: TCustomForm;
begin
  AACBrNFSeX.NotasFiscais.Clear;
  AXML := TXMLDocument.Create(nil);
{$REGION 'Stream modificada ItemListaServico'}
  //  AStream.Position := 0;
  //  AXMLStream := TStream.Create;
  //  AXMLStream:= AStream;
  //  AXMLStream.Position := 0;
  //  XMLText.LoadFromStream(AXMLStream);
  //  XMLText.Text := ReplaceStr(XMLText.Text,'</ItemListaServico><Codigo>', '<ItemListaServico></Item><Item><Codigo>');
  //  AXMLStream.Position := 0;
  //
  //  AXML.SaveToStream(AXMLStream);
{$ENDREGION}
  AStream.Position := 0;
  AXML.LoadFromStream(AStream);
  ARoot := AXML.ChildNodes.FindNode('NFSe');
  ANFSe := AACBrNFSeX.NotasFiscais.New.NFSe;
  if ARoot <> nil then
  begin
//    ANFSe := AACBrNFSeX.NotasFiscais.New.NFSe;
    ANFSe.NomeArq := LGetValue(ARoot, 'NomeArq');
    ATmpNode := ARoot.ChildNodes.FindNode('InfID');
    if ATmpNode <> nil then
      ANFSe.InfID.ID := LGetValue(ATmpNode, 'ID');
    ATmpNode := ARoot.ChildNodes.FindNode('IdentificacaoRps');
    if ATmpNode <> nil then
    begin
      ANFSe.IdentificacaoRps.Numero := LGetValue(ATmpNode, 'Numero');
      ANFSe.IdentificacaoRps.Serie  := LGetValue(ATmpNode, 'Serie');
      ANFSe.IdentificacaoRps.Tipo   := AACBrNFSeX.Provider.StrToTipoRPS(AOk, LGetValue(ATmpNode, 'Tipo'));
    end;
    ANFSe.DataEmissao                   := LGetData(ARoot, 'DataEmissao');
    ANFSe.DataEmissaoRps                := LGetData(ARoot, 'DataEmissaoRps');
    ANFSe.NaturezaOperacao              := StrToNaturezaOperacao(AOk, LGetValue(ARoot, 'NaturezaOperacao'));
    ANFSe.RegimeEspecialTributacao      := AACBrNFSeX.Provider.StrToRegimeEspecialTributacao(AOk, LGetValue(ARoot, 'RegimeEspecialTributacao'));
    ANFSe.OptanteSimplesNacional        := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'OptanteSimplesNacional'));
    ANFSe.OptanteMEISimei               := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'OptanteMEISimei'));
    ANFSe.DataOptanteSimplesNacional    := LGetData(ARoot, 'DataOptanteSimplesNacional');
//??²    ANFSe.LogradouLocalPrestacaoServico := TnfseLogradouroLocalPrestacaoServico(StrToIntDef(LGetValue(ARoot, 'LogradouLocalPrestacaoServico'), 0));
    ANFSe.IncentivadorCultural          := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'IncentivadorCultural'));
    ANFSe.Producao                      := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'Producao'));
    ANFSe.StatusRPS                        := StrToStatusRPS(AOk, LGetValue(ARoot, 'Status'));
    //LGetValue('RpsSubstituido').Text := ANFSe.RpsSubstituido: TIdentificacaoRps read FRpsSubstituido write FRpsSubstituido;

    ANFSe.SeriePrestacao := LGetValue(ARoot, 'SeriePrestacao');
    AServico := ARoot.ChildNodes.FindNode('Servico');
    if AServico <> nil then
    begin
      AValores := AServico.ChildNodes.FindNode('Valores');
      if AValores <> nil then
      begin
        ANFSe.Servico.Valores.ValorServicos               := LGetCur(AValores, 'ValorServicos');
        ANFSe.Servico.Valores.ValorDeducoes               := LGetCur(AValores, 'ValorDeducoes');
        ANFSe.Servico.Valores.ValorPis                    := LGetCur(AValores, 'ValorPis');
        ANFSe.Servico.Valores.ValorCofins                 := LGetCur(AValores, 'ValorCofins');
        ANFSe.Servico.Valores.ValorInss                   := LGetCur(AValores, 'ValorInss');
        ANFSe.Servico.Valores.ValorIr                     := LGetCur(AValores, 'ValorIr');
        ANFSe.Servico.Valores.ValorCsll                   := LGetCur(AValores, 'ValorCsll');
        ANFSe.Servico.Valores.IssRetido                   := AACBrNFSeX.Provider.StrToSituacaoTributaria(AOk, LGetValue(AValores, 'IssRetido'));
        ANFSe.Servico.Valores.ValorIss                    := LGetCur(AValores, 'ValorIss');
        ANFSe.Servico.Valores.OutrasRetencoes             := LGetCur(AValores, 'OutrasRetencoes');
        ANFSe.Servico.Valores.BaseCalculo                 := LGetCur(AValores, 'BaseCalculo');
        ANFSe.Servico.Valores.Aliquota                    := LGetCur(AValores, 'Aliquota');
        ANFSe.Servico.Valores.AliquotaSN                  := LGetCur(AValores, 'AliquotaSN');
        ANFSe.Servico.Valores.AliquotaPis                 := LGetCur(AValores, 'AliquotaPis');
        ANFSe.Servico.Valores.AliquotaCofins              := LGetCur(AValores, 'AliquotaCofins');
        ANFSe.Servico.Valores.AliquotaInss                := LGetCur(AValores, 'AliquotaInss');
        ANFSe.Servico.Valores.AliquotaIr                  := LGetCur(AValores, 'AliquotaIr');
        ANFSe.Servico.Valores.AliquotaCsll                := LGetCur(AValores, 'AliquotaCsll');
        ANFSe.Servico.Valores.OutrosDescontos             := LGetCur(AValores, 'OutrosDescontos');
        ANFSe.Servico.Valores.ValorLiquidoNfse            := LGetCur(AValores, 'ValorLiquidoNfse');
        ANFSe.Servico.Valores.ValorIssRetido              := LGetCur(AValores, 'ValorIssRetido');
        ANFSe.Servico.Valores.DescontoCondicionado        := LGetCur(AValores, 'DescontoCondicionado');
        ANFSe.Servico.Valores.DescontoIncondicionado      := LGetCur(AValores, 'DescontoIncondicionado');
        ANFSe.Servico.Valores.JustificativaDeducao        := LGetValue(AValores, 'JustificativaDeducao');
        ANFSe.Servico.Valores.valorOutrasRetencoes        := LGetCur(AValores, 'valorOutrasRetencoes');
        ANFSe.Servico.Valores.DescricaoOutrasRetencoes    := LGetValue(AValores, 'DescricaoOutrasRetencoes');
        ANFSe.Servico.Valores.ValorRepasse                := LGetCur(AValores, 'ValorRepasse');
        ANFSe.Servico.Valores.ValorDespesasNaoTributaveis := LGetCur(AValores, 'ValorDespesasNaoTributaveis');
        ANFSe.Servico.Valores.ValorTotalRecebido          := LGetCur(AValores, 'ValorTotalRecebido');
        ANFSe.Servico.Valores.ValorTotalTributos          := LGetCur(AValores, 'ValorTotalTributos');
      end;

      ANFSe.Servico.ItemListaServico           := LGetValue(AServico, 'ItemListaServico');
      ANFSe.Servico.CodigoCnae                 := LGetValue(AServico, 'CodigoCnae');
      ANFSe.Servico.CodigoTributacaoMunicipio  := LGetValue(AServico, 'CodigoTributacaoMunicipio');
      ANFSe.Servico.xCodigoTributacaoMunicipio := LGetValue(AServico, 'xCodigoTributacaoMunicipio');
      ANFSe.Servico.Discriminacao              := LGetValue(AServico, 'Discriminacao');
      ANFSe.Servico.CodigoMunicipio            := LGetValue(AServico, 'CodigoMunicipio');
      ANFSe.Servico.CodigoPais                 := StrToIntDef(LGetValue(AServico, 'CodigoPais'), 0);
      ANFSe.Servico.ExigibilidadeISS           := AACBrNFSeX.Provider.StrToExigibilidadeISS(AOk, LGetValue(AServico, 'ExigibilidadeISS'));
      ANFSe.Servico.MunicipioIncidencia        := StrToIntDef(LGetValue(AServico, 'MunicipioIncidencia'), 0);
      ANFSe.Servico.NumeroProcesso             := LGetValue(AServico, 'NumeroProcesso');
      ANFSe.Servico.xItemListaServico          := LGetValue(AServico, 'xItemListaServico');
      AItemServico := AServico.ChildNodes.FindNode('Items');
      AServico.AttributeNodes;
      if AItemServico <> nil then
      begin
//        AItemServico := AItemServico.ChildNodes.FindNode('Item'); // Aqui pega os filhos 
        for I := 0 to AItemServico.ChildNodes.Count - 1 do
        begin
          ANodeItem := AItemServico.ChildNodes.Get(i);
          ANFSeItemServico := ANFSe.Servico.ItemServico.New;

          ANFSeItemServico.CodServ                := LGetValue(ANodeItem, 'Codigo');
          ANFSeItemServico.Descricao              := LGetValue(ANodeItem, 'Descricao');
          ANFSeItemServico.Quantidade             := LGetCur(ANodeItem, 'Quantidade');
          ANFSeItemServico.ValorUnitario          := LGetCur(ANodeItem, 'ValorUnitario');
          ANFSeItemServico.ValorTotal             := LGetCur(ANodeItem, 'ValorTotal');
          ANFSeItemServico.ValorDeducoes          := LGetCur(ANodeItem, 'ValorDeducoes');
          ANFSeItemServico.ValorIss               := LGetCur(ANodeItem, 'ValorIss');
          ANFSeItemServico.Aliquota               := LGetCur(ANodeItem, 'Aliquota');
          ANFSeItemServico.BaseCalculo            := LGetCur(ANodeItem, 'BaseCalculo');
          ANFSeItemServico.DescontoCondicionado   := LGetCur(ANodeItem, 'DescontoCondicionado');
          ANFSeItemServico.DescontoIncondicionado := LGetCur(ANodeItem, 'DescontoIncondicionado');
//          ANFSeItemServico.Discriminacao          := LGetValue(ANodeItem, 'Discriminacao');
          ANFSeItemServico.Tributavel             := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ANodeItem, 'Tributavel'));
          ANFSeItemServico.ValorPis               := LGetCur(ANodeItem, 'ValorPis');
          ANFSeItemServico.ValorCofins            := LGetCur(ANodeItem, 'ValorCofins');
          ANFSeItemServico.ValorInss              := LGetCur(ANodeItem, 'ValorInss');
          ANFSeItemServico.ValorIRRF              := LGetCur(ANodeItem, 'ValorIr');
          ANFSeItemServico.ValorCsll              := LGetCur(ANodeItem, 'ValorCsll');
          ANFSeItemServico.ValorTaxaTurismo       := LGetCur(ANodeItem, 'ValorTaxaTurismo');
          ANFSeItemServico.CodServ                := LGetValue(ANodeItem, 'CodServ');
          ANFSeItemServico.CodLCServ              := LGetValue(ANodeItem, 'CodLCServ');
          ANFSeItemServico.Unidade                := LGetValue(ANodeItem, 'Unidade');
          ANFSeItemServico.AliqISSST              := LGetCur(ANodeItem, 'AlicotaISSST');
          ANFSeItemServico.ValorISSST             := LGetCur(ANodeItem, 'ValorISSST');
          ANFSeItemServico.ValorDeducoes          := LGetCur(ANodeItem, 'vDed');
          ANFSeItemServico.valorBCINSS            := LGetCur(ANodeItem, 'vBCINSS');
          ANFSeItemServico.AliqRetINSS            := LGetCur(ANodeItem, 'pRetINSS');
          ANFSeItemServico.AliqReducao            := LGetCur(ANodeItem, 'vRed');
          ANFSeItemServico.ValorBCRetIRRF         := LGetCur(ANodeItem, 'vBCRetIR');
          ANFSeItemServico.AliqRetIRRF            := LGetCur(ANodeItem, 'pRetIR');
          ANFSeItemServico.ValorBCCOFINS          := LGetCur(ANodeItem, 'vBCCOFINS');
          ANFSeItemServico.AliqRetCOFINS          := LGetCur(ANodeItem, 'pRetCOFINS');
          ANFSeItemServico.ValorBCCSLL            := LGetCur(ANodeItem, 'vBCCSLL');
          ANFSeItemServico.AliqRetCSLL            := LGetCur(ANodeItem, 'pRetCSLL');
          ANFSeItemServico.ValorBCPIS             := LGetCur(ANodeItem, 'vBCPISPASEP');
          ANFSeItemServico.AliqRetPIS             := LGetCur(ANodeItem, 'pRetPISPASEP');
//          ANFSeItemServico.TipoUnidade            := ACBrNFSeXConversao.StrToTUnidade(AOk, LGetValue(ANodeItem, 'TipoUnidade'));
          ANFSeItemServico.ItemListaServico       := LGetValue(ANodeItem, 'ItemListaServico');
        end;
      end;

//        Deducao: TDeducaoCollection read FDeducao write SetDeducao;   OperacaoToStr    TributacaoToStr
      ANFSe.Servico.ResponsavelRetencao       := AACBrNFSeX.Provider.StrToResponsavelRetencao(AOk, LGetValue(AServico, 'ResponsavelRetencao'));
      ANFSe.Servico.Descricao                 := LGetValue(AServico, 'xItemListaServico');
      ANFSe.Servico.Operacao                  := StrToOperacao(AOk, LGetValue(AServico, 'Operacao'));
      ANFSe.Servico.Tributacao                := AACBrNFSeX.Provider.StrToTributacao(AOk, LGetValue(AServico, 'Tributacao'));
      ANFSe.Servico.UFPrestacao               := LGetValue(AServico, 'UFPrestacao');
      ANFSe.Servico.ValorCargaTributaria      := LGetCur(AServico, 'ValorCargaTributaria');
      ANFSe.Servico.PercentualCargaTributaria := LGetCur(AServico, 'PercentualCargaTributaria');
      ANFSe.Servico.FonteCargaTributaria      := LGetValue(AServico, 'FonteCargaTributaria');
    end;
    APrestador := ARoot.ChildNodes.FindNode('Prestador');
    if APrestador <> nil then
    begin
      ANFSe.Prestador.cUF                 := StrToIntDef(LGetValue(APrestador, 'cUF'), 0);

//      ANFSe.Prestador.Senha               := LGetValue(APrestador, 'Senha');
//      ANFSe.Prestador.FraseSecreta        := LGetValue(APrestador, 'FraseSecreta');
//      ANFSe.Prestador.ChaveAcesso         := LGetValue(APrestador, 'ChaveAcesso');
//      ANFSe.Prestador.Usuario             := StrToIntDef(LGetValue(APrestador, 'Usuario'), 0);
//      ANFSe.Prestador.CNPJ_Prefeitura     := LGetValue(APrestador, 'CNPJ_Prefeitura');

      ANFSe.Prestador.ValorReceitaBruta   := LGetCur(APrestador, 'ValorReceitaBruta');
      ANFSe.Prestador.DataInicioAtividade := LGetData(APrestador, 'DataInicioAtividade');
      ANFSe.Prestador.crc                 := LGetValue(APrestador, 'crc');
      ANFSe.Prestador.crc_estado          := LGetValue(APrestador, 'crc_estado');
      ANFSe.Prestador.RazaoSocial         := LGetValue(APrestador, 'RazaoSocial');
//      ANFSe.Prestador.Fantasia            := LGetValue(APrestador, 'Fantasia');
//      ANFSe.Prestador.Telefone            := LGetValue(APrestador, 'Telefone');
//      ANFSe.Prestador.Email               := LGetValue(APrestador, 'Email');

      AIdentificacaoPrestador := APrestador.ChildNodes.FindNode('IdentificacaoPrestador');
      if AIdentificacaoPrestador <> nil then
      begin
        with ANFSe.Prestador.IdentificacaoPrestador do
        begin
          Cnpj                 := LGetValue(AIdentificacaoPrestador, 'Cnpj');
          InscricaoMunicipal   := LGetValue(AIdentificacaoPrestador, 'InscricaoMunicipal');
          InscricaoEstadual    := LGetValue(AIdentificacaoPrestador, 'InscricaoEstadual');
        end;
      end;

      AContato := APrestador.ChildNodes.FindNode('Contato');
      if AContato <> nil then
      begin
        with ANFSe.Prestador.Contato do
        begin
          Telefone     := LGetValue(AContato, 'Telefone');
          Email        := LGetValue(AContato, 'Email');
          DDD          := LGetValue(AContato, 'DDD');
          TipoTelefone := LGetValue(AContato, 'TipoTelefone');
        end;
      end;

      DoLerEndereco(APrestador.ChildNodes.FindNode('Endereco'), ANFSe.Prestador.Endereco);
    end;
    ATomador := ARoot.ChildNodes.FindNode('Tomador');
    if ATomador <> nil then
    begin
      AIdentificacaoTomador := ATomador.ChildNodes.FindNode('IdentificacaoTomador');
      if AIdentificacaoTomador <> nil then
      begin
        with ANFSe.Tomador.IdentificacaoTomador do
        begin
          CpfCnpj               := LGetValue(AIdentificacaoTomador, 'CpfCnpj');
          InscricaoMunicipal    := LGetValue(AIdentificacaoTomador, 'InscricaoMunicipal');
          InscricaoEstadual     := LGetValue(AIdentificacaoTomador, 'InscricaoEstadual');
//          DocTomadorEstrangeiro := LGetValue(AIdentificacaoTomador, 'DocTomadorEstrangeiro');
          Tipo                  := AACBrNFSeX.Provider.StrToTipoPessoa(Booleana, LGetValue(AIdentificacaoTomador, 'Tipo'));
        end;
      end;

      ANFSe.Tomador.RazaoSocial := LGetValue(ATomador, 'RazaoSocial');
      DoLerEndereco(ATomador.ChildNodes.FindNode('Endereco'), ANFSe.Tomador.Endereco);

      AContato := ATomador.ChildNodes.FindNode('Contato');
      if AContato <> nil then
      begin
        with ANFSe.Tomador.Contato do
        begin
          Telefone     := LGetValue(AContato, 'Telefone');
          Email        := LGetValue(AContato, 'Email');
          DDD          := LGetValue(AContato, 'DDD');
          TipoTelefone := LGetValue(AContato, 'TipoTelefone');
        end;
      end;

      ANFSe.Tomador.AtualizaTomador := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ATomador, 'AtualizaTomador'));
      ANFSe.Tomador.TomadorExterior := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ATomador, 'TomadorExterior'));
//      ANFSe.Tomador.IdentificacaoTomador      := LGetValue(ATomador, 'NifTomador');    Ja esta sendo preenchido acima
    end;
    //IntermediarioServico: TIdentificacaoIntermediarioServico read FIntermediarioServico write FIntermediarioServico;
    //ConstrucaoCivil: TDadosConstrucaoCivil read FConstrucaoCivil write FConstrucaoCivil;
    ANFSe.DeducaoMateriais := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'DeducaoMateriais'));

    ACondicaoPagamento := ARoot.ChildNodes.FindNode('CondicaoPagamento');
    if ACondicaoPagamento <> nil then
    begin
      ANFSe.CondicaoPagamento.Condicao   := StrToCondicao(AOk, LGetValue(ACondicaoPagamento, 'Condicao'));
      ANFSe.CondicaoPagamento.QtdParcela := StrToIntDef(LGetValue(ACondicaoPagamento, 'QtdParcela'), 0);
      AParcelas := ACondicaoPagamento.ChildNodes.FindNode('Parcelas');
      if AParcelas <> nil then
      begin
        for I := 0 to AParcelas.ChildNodes.Count - 1 do
        begin
          ANodeItem := AParcelas.ChildNodes.Get(I);
          ANFSeParcela := ANFSe.CondicaoPagamento.Parcelas.New;
          ANFSeParcela.Condicao       := StrToCondicao(AOk, LGetValue(ANodeItem, 'Condicao'));
          ANFSeParcela.Parcela        := LGetValue(ANodeItem, 'Parcela');
          ANFSeParcela.DataVencimento := LGetData(ANodeItem, 'DataVencimento');
          ANFSeParcela.Valor          := LGetCur(ANodeItem, 'Valor');
        end;
      end;
    end;

    ANFSe.Numero                    := LGetValue(ARoot, 'Numero');
    ANFSe.CodigoVerificacao         := LGetValue(ARoot, 'CodigoVerificacao');
    ANFSe.Competencia               := StrToDateDef(LGetValue(ARoot, 'Competencia'),Now);
    ANFSe.NfseSubstituida           := LGetValue(ARoot, 'NfseSubstituida');
    ANFSe.OutrasInformacoes         := LGetValue(ARoot, 'OutrasInformacoes');
    ANFSe.InformacoesComplementares := LGetValue(ARoot, 'InformacoesComplementares');
    ANFSe.ValorCredito              := LGetCur(ARoot, 'ValorCredito');

//    ANFSe.Protocolo                          := LGetValue(ARoot, 'Protocolo');
//    ANFSe.Autenticador                       := LGetValue(ARoot, 'Autenticador');
//    ANFSe.ChaveNFSe                          := LGetValue(ARoot, 'ChaveNFSe');
//    ANFSe.Situacao                           := LGetValue(ARoot, 'Situacao');
//    ANFSe.Canhoto                            := StrToTCanhoto(AOk, LGetValue(ARoot, 'Canhoto'));
//    ANFSe.TipoTributacaoRPS                  := StrToTTributacaoRPS(AOk, LGetValue(ARoot, 'TipoTributacaoRPS'));

    ANFSe.Link                               := LGetValue(ARoot, 'Link');
    ANFSe.NumeroLote                         := LGetValue(ARoot, 'NumeroLote');
    ANFSe.dhRecebimento                      := LGetData(ARoot, 'dhRecebimento');
    ANFSe.NfseSubstituidora                  := LGetValue(ARoot, 'NfseSubstituidora');
    ANFSe.MotivoCancelamento                 := LGetValue(ARoot, 'MotivoCancelamento');
    ANFSe.TipoEmissao                        := ACBrNFSeXConversao.StrToTipoEmissao(AOk, LGetValue(ARoot, 'TipoEmissao'));
    ANFSe.EmpreitadaGlobal                   := StrToEmpreitadaGlobal(AOk, LGetValue(ARoot, 'EmpreitadaGlobal'));
    ANFSe.ModeloNFSe                         := LGetValue(ARoot, 'ModeloNFSe');
//    ANFSe.Cancelada                          := AACBrNFSeX.Provider.StrToSimNao(AOk, LGetValue(ARoot, 'Cancelada'));
    ANFSe.TipoRecolhimento                   := LGetValue(ARoot, 'TipoRecolhimento');
    ANFSe.id_sis_legado                      := StrToIntDef(LGetValue(ARoot, 'id_sis_legado'), 0);
    ANFSe.Assinatura                         := LGetValue(ARoot, 'Assinatura');
    ANFSe.PercentualCargaTributaria          := LGetCur(ARoot, 'PercentualCargaTributaria');
    ANFSe.ValorCargaTributaria               := LGetCur(ARoot, 'ValorCargaTributaria');
    ANFSe.PercentualCargaTributariaMunicipal := LGetCur(ARoot, 'PercentualCargaTributariaMunicipal');
    ANFSe.ValorCargaTributariaMunicipal      := LGetCur(ARoot, 'ValorCargaTributariaMunicipal');
    ANFSe.PercentualCargaTributariaEstadual  := LGetCur(ARoot, 'PercentualCargaTributariaEstadual');
    ANFSe.ValorCargaTributariaEstadual       := LGetCur(ARoot, 'ValorCargaTributariaEstadual');
  end

 (*   APrestador := ARoot.ChildNodes.FindNode('Prestador');
    if APrestador <> nil then
    begin
      AIdentificacaoPrestador := APrestador.ChildNodes.FindNode('IdentificacaoPrestador');
      if AIdentificacaoPrestador <> nil then
      begin
        ANFSe.Prestador.IdentificacaoPrestador.Cnpj                 := LGetValue(AIdentificacaoPrestador, 'Cnpj');
        ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal   := LGetValue(AIdentificacaoPrestador, 'InscricaoMunicipal');
        ANFSe.Prestador.IdentificacaoPrestador.Senha                := LGetValue(AIdentificacaoPrestador, 'Senha');
        ANFSe.Prestador.IdentificacaoPrestador.FraseSecreta         := LGetValue(AIdentificacaoPrestador, 'FraseSecreta');
        ANFSe.Prestador.IdentificacaoPrestador.cUF                  := StrToIntDef(LGetValue(AIdentificacaoPrestador, 'cUF'), 0);
        ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual    := LGetValue(AIdentificacaoPrestador, 'InscricaoEstadual');
        ANFSe.Prestador.IdentificacaoPrestador.ChaveAcesso          := LGetValue(AIdentificacaoPrestador, 'ChaveAcesso');
        ANFSe.Prestador.IdentificacaoPrestador.Usuario              := StrToIntDef(LGetValue(AIdentificacaoPrestador, 'Usuario'), 0);
        ANFSe.Prestador.IdentificacaoPrestador.CNPJ_Prefeitura      := LGetValue(AIdentificacaoPrestador, 'CNPJ_Prefeitura');
        ANFSe.Prestador.IdentificacaoPrestador.ValorReceitaBruta    := LGetCur(AIdentificacaoPrestador, 'ValorReceitaBruta');
        ANFSe.Prestador.IdentificacaoPrestador.DataInicioAtividade  := LGetData(AIdentificacaoPrestador, 'DataInicioAtividade');
        ANFSe.Prestador.IdentificacaoPrestador.crc                  := LGetValue(AIdentificacaoPrestador, 'crc');
        ANFSe.Prestador.IdentificacaoPrestador.crc_estado           := LGetValue(AIdentificacaoPrestador, 'crc_estado');
        ANFSe.Prestador.IdentificacaoPrestador.RazaoSocial          := LGetValue(AIdentificacaoPrestador, 'RazaoSocial');
        ANFSe.Prestador.IdentificacaoPrestador.Fantasia             := LGetValue(AIdentificacaoPrestador, 'Fantasia');
        ANFSe.Prestador.IdentificacaoPrestador.Telefone             := LGetValue(AIdentificacaoPrestador, 'Telefone');
        ANFSe.Prestador.IdentificacaoPrestador.Email                := LGetValue(AIdentificacaoPrestador, 'Email');

        DoLerEndereco(AIdentificacaoPrestador.ChildNodes.FindNode('Endereco'), ANFSe.Prestador.IdentificacaoPrestador.Endereco);
      end;

      ANFSe.Prestador.RazaoSocial  := LGetValue(APrestadorServico, 'RazaoSocial');
      ANFSe.Prestador.NomeFantasia := LGetValue(APrestadorServico, 'NomeFantasia');

      DoLerEndereco(APrestadorServico.ChildNodes.FindNode('Endereco'), ANFSe.Prestador.Endereco);

    end; *)
//      OrgaoGerador: TIdentificacaoOrgaoGerador read FOrgaoGerador write FOrgaoGerador;
//      ValoresNfse: TValoresNfse read FValoresNfse write FValoresNfse;
    //XML: AnsiString read FXML write FXML;
    //NfseCancelamento: TConfirmacaoCancelamento read FNfseCancelamento write FNfseCancelamento;
//      Transportadora: TDadosTransportadora read FTransportadora write FTransportadora;
//      Despesa: TDespesaCollection read FDespesa write SetDespesa;
//      email: TemailCollection read Femail write Setemail;
//      AssinaComChaveParams: TAssinaComChaveParamsCollection read FAssinaComChaveParams write SetAssinaComChaveParams;
//      RegRec: TnfseRegRec read FRegRec write FRegRec; //Governa
//      FrmRec: TnfseFrmRec read FFrmRec write FFrmRec; //Governa


end;

Class Function TFrmNFSe.LerXMLRetorno(AACBrNFSeX: TACBrNFSeX; AStream: TStream; var ECodigo, EMensagem, ECorrecao :String): TNFSe;

  function LGetValue(AParentNode: IXMLNode; const ANodeName: string): string;
  var
    ANode: IXMLNode;
  begin
    ANode := AParentNode.ChildNodes.FindNode(ANodeName);
    if ANode = nil then
      Result := ''
    else
      Result := ANode.Text;
  end;

var
  AXML: IXMLDocument;
  ARoot, ATmpNode,ATmpNode2 : IXMLNode;
  ANFSe: TNFSe;
begin
  AACBrNFSeX.NotasFiscais.Clear;
  AXML := TXMLDocument.Create(nil);
  AStream.Position := 0;
  AXML.LoadFromStream(AStream);
  ANFSe := AACBrNFSeX.NotasFiscais.New.NFSe;

  //Schema : WsNFe2
  ARoot := AXML.ChildNodes.FindNode('RetornoConsultaLote');
  if ARoot <> nil then
  begin
    ATmpNode := ARoot.ChildNodes.FindNode('Cabecalho');
    if ATmpNode <> nil then
    begin

      ATmpNode2 := ATmpNode.ChildNodes.FindNode('Erros');
      if ATmpNode2 <> nil then
      begin
        EMensagem := UTF8Encode(LGetValue(ATmpNode2, 'Erro'));
        TFrmValidacoes.TrataErroNFe(TForm(AACBrNFSeX.Owner), EMensagem);
      end;
      ATmpNode := ARoot.ChildNodes.FindNode('Alertas');
      if ATmpNode <> nil then
      begin

      end;
      ATmpNode := ARoot.ChildNodes.FindNode('ListaNFSe');
      if ATmpNode <> nil then
      begin
        ATmpNode2 := ATmpNode.ChildNodes.FindNode('ConsultaNFSe');
        if ATmpNode2 <> nil then
        begin
          ANFSe.Numero                    := LGetValue(ATmpNode2, 'NumeroNFe');
          ANFSe.CodigoVerificacao         := LGetValue(ATmpNode2, 'CodigoVerificacao');
          ANFSe.IdentificacaoRps.Numero   := LGetValue(ATmpNode2, 'NumeroRPS');
          ANFSe.Link                      := LGetValue(ATmpNode2, 'URLNotaFiscal');
        end;
      end;
    end;
  end;

  //Schema : ABRASF
  ARoot := AXML.ChildNodes.FindNode('ConsultarLoteRpsResposta');
  if ARoot <> nil then
  begin
    ATmpNode := ARoot.ChildNodes.FindNode('ListaMensagemRetorno');
    if ATmpNode <> nil then
    begin
      ATmpNode2 := ATmpNode.ChildNodes.FindNode('MensagemRetorno');
      if ATmpNode2 <> nil then
      begin
        ECodigo   := LGetValue(ATmpNode2, 'Codigo');
        EMensagem := UTF8Encode(LGetValue(ATmpNode2, 'Mensagem'));
        ECorrecao := UTF8Encode(LGetValue(ATmpNode2, 'Correcao'));
      end;
    end;
  end;
  Result := ANFSe;
end;

procedure TFrmNFSe.LimpaRetornos;
begin
  ACBrNFSeX1.WebService.ConsultaNFSe.Clear;
  ACBrNFSeX1.WebService.ConsultaLoteRPS.Clear;
  ACBrNFSeX1.WebService.ConsultaNFSeporRPS.Clear;
end;

class procedure TFrmNFSe.GravarXMLFormatoWRToStream(AACBrNFSeX: TACBrNFSeX; AStream: TStream);
  function LGetData(AData: TDateTime): string;
  begin
    if AData > 0 then
      Result := FormatDateTime('YYYY-MM-DD"T"hh:nn:ss', AData)
    else
      Result := '';
  end;
  function LGetCur(ACur: Double): string;
  begin
    Result := FormatFloat('0.00######', ACur);
  end;
//  function LGetBool(ABool: Boolean): string;
//  begin
//    Result := BoolToStr(ABool, True);
//  end;
  procedure DoPreencheEndereco(ANodeEndereco: IXMLNode; AEndereco: TEndereco);
  begin
    with ANodeEndereco do
    begin
      AddChild('EnderecoInformado').Text := AEndereco.EnderecoInformado;
      AddChild('TipoLogradouro').Text    := AEndereco.TipoLogradouro;
      AddChild('Endereco').Text          := AEndereco.Endereco;
      AddChild('Numero').Text            := AEndereco.Numero;
      AddChild('Complemento').Text       := AEndereco.Complemento;
      AddChild('TipoBairro').Text        := AEndereco.TipoBairro;
      AddChild('Bairro').Text            := AEndereco.Bairro;
      AddChild('CodigoMunicipio').Text   := AEndereco.CodigoMunicipio;
      AddChild('UF').Text                := AEndereco.UF;
      AddChild('CEP').Text               := AEndereco.CEP;
      AddChild('xMunicipio').Text        := AEndereco.xMunicipio;
      AddChild('CodigoPais').Text        := IntToStr(AEndereco.CodigoPais);
      AddChild('xPais').Text             := AEndereco.xPais;
    end;
  end;
var
  AXML: TXMLDocument;
  ANode: TXMLNode;
  ANFSe: TNFSe;
  I: Integer;
begin
  ANFSe := AACBrNFSeX.NotasFiscais[0].NFSe;
  AXML := TXMLDocument.Create(nil);
  try
    AXML.Active := True;
    AXML.DocumentElement := AXML.CreateNode('NFSe', ntElement);
    with AXML.DocumentElement do
    begin
      AddChild('NomeArq').Text := ANFSe.NomeArq;
      with AddChild('InfID') do
      begin
        AddChild('ID').Text := ANFSe.InfID.ID;
      end;
      with AddChild('IdentificacaoRps') do
      begin
        AddChild('Numero').Text := ANFSe.IdentificacaoRps.Numero;
        AddChild('Serie').Text  := ANFSe.IdentificacaoRps.Serie;
        AddChild('Tipo').Text   := AACBrNFSeX.Provider.TipoRPSToStr(ANFSe.IdentificacaoRps.Tipo);
      end;
      AddChild('DataEmissao').Text                   := LGetData(ANFSe.DataEmissao);
      AddChild('DataEmissaoRps').Text                := LGetData(ANFSe.DataEmissaoRps);
      AddChild('NaturezaOperacao').Text              := NaturezaOperacaoToStr(ANFSe.NaturezaOperacao);
      AddChild('RegimeEspecialTributacao').Text      := AACBrNFSeX.Provider.RegimeEspecialTributacaoToStr(ANFSe.RegimeEspecialTributacao);
      AddChild('OptanteSimplesNacional').Text        := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.OptanteSimplesNacional);
      AddChild('OptanteMEISimei').Text               := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.OptanteMEISimei);
      AddChild('DataOptanteSimplesNacional').Text    := LGetData(ANFSe.DataOptanteSimplesNacional);
      AddChild('LogradouLocalPrestacaoServico').Text := IntToStr(Integer(ANFSe.LogradouLocalPrestacaoServico));
      AddChild('IncentivadorCultural').Text          := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.IncentivadorCultural);
      AddChild('Producao').Text                      := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.Producao);
      AddChild('Status').Text                        := StatusRPSToStr(ANFSe.StatusRPS);
      //AddChild('RpsSubstituido').Text := ANFSe.RpsSubstituido: TIdentificacaoRps read FRpsSubstituido write FRpsSubstituido;

      //SeriePrestacao usada no provedor IssDsf
      AddChild('SeriePrestacao').Text := ANFSe.SeriePrestacao;
      with AddChild('Servico') do
      begin
        with AddChild('Valores') do
        begin
          AddChild('ValorServicos').Text               := LGetCur(ANFSe.Servico.Valores.ValorServicos);
          AddChild('ValorDeducoes').Text               := LGetCur(ANFSe.Servico.Valores.ValorDeducoes);
          AddChild('ValorPis').Text                    := LGetCur(ANFSe.Servico.Valores.ValorPis);
          AddChild('ValorCofins').Text                 := LGetCur(ANFSe.Servico.Valores.ValorCofins);
          AddChild('ValorInss').Text                   := LGetCur(ANFSe.Servico.Valores.ValorInss);
          AddChild('ValorIr').Text                     := LGetCur(ANFSe.Servico.Valores.ValorIr);
          AddChild('ValorCsll').Text                   := LGetCur(ANFSe.Servico.Valores.ValorCsll);
          AddChild('IssRetido').Text                   := AACBrNFSeX.Provider.SituacaoTributariaToStr(ANFSe.Servico.Valores.IssRetido);
          AddChild('ValorIss').Text                    := LGetCur(ANFSe.Servico.Valores.ValorIss);
          AddChild('OutrasRetencoes').Text             := LGetCur(ANFSe.Servico.Valores.OutrasRetencoes);
          AddChild('BaseCalculo').Text                 := LGetCur(ANFSe.Servico.Valores.BaseCalculo);
          AddChild('Aliquota').Text                    := LGetCur(ANFSe.Servico.Valores.Aliquota);
          AddChild('AliquotaSN').Text                  := LGetCur(ANFSe.Servico.Valores.AliquotaSN);
          AddChild('AliquotaPis').Text                 := LGetCur(ANFSe.Servico.Valores.AliquotaPis);
          AddChild('AliquotaCofins').Text              := LGetCur(ANFSe.Servico.Valores.AliquotaCofins);
          AddChild('AliquotaInss').Text                := LGetCur(ANFSe.Servico.Valores.AliquotaInss);
          AddChild('AliquotaIr').Text                  := LGetCur(ANFSe.Servico.Valores.AliquotaIr);
          AddChild('AliquotaCsll').Text                := LGetCur(ANFSe.Servico.Valores.AliquotaCsll);
          AddChild('OutrosDescontos').Text             := LGetCur(ANFSe.Servico.Valores.OutrosDescontos);
          AddChild('ValorLiquidoNfse').Text            := LGetCur(ANFSe.Servico.Valores.ValorLiquidoNfse);
          AddChild('ValorIssRetido').Text              := LGetCur(ANFSe.Servico.Valores.ValorIssRetido);
          AddChild('DescontoCondicionado').Text        := LGetCur(ANFSe.Servico.Valores.DescontoCondicionado);
          AddChild('DescontoIncondicionado').Text      := LGetCur(ANFSe.Servico.Valores.DescontoIncondicionado);
          AddChild('JustificativaDeducao').Text        := ANFSe.Servico.Valores.JustificativaDeducao;
          AddChild('valorOutrasRetencoes').Text        := LGetCur(ANFSe.Servico.Valores.valorOutrasRetencoes);
          AddChild('DescricaoOutrasRetencoes').Text    := ANFSe.Servico.Valores.DescricaoOutrasRetencoes;
          AddChild('ValorRepasse').Text                := LGetCur(ANFSe.Servico.Valores.ValorRepasse);
          AddChild('ValorDespesasNaoTributaveis').Text := LGetCur(ANFSe.Servico.Valores.ValorDespesasNaoTributaveis);
          AddChild('ValorTotalRecebido').Text          := LGetCur(ANFSe.Servico.Valores.ValorTotalRecebido);
          AddChild('ValorTotalTributos').Text          := LGetCur(ANFSe.Servico.Valores.ValorTotalTributos);
        end;

        AddChild('ItemListaServico').Text           := ANFSe.Servico.ItemListaServico;
        AddChild('CodigoCnae').Text                 := ANFSe.Servico.CodigoCnae;
        AddChild('CodigoTributacaoMunicipio').Text  := ANFSe.Servico.CodigoTributacaoMunicipio;
        AddChild('xCodigoTributacaoMunicipio').Text := ANFSe.Servico.xCodigoTributacaoMunicipio;
        AddChild('Discriminacao').Text              := ANFSe.Servico.Discriminacao;
        AddChild('CodigoMunicipio').Text            := ANFSe.Servico.CodigoMunicipio;
        AddChild('CodigoPais').Text                 := IntToStr(ANFSe.Servico.CodigoPais);
        AddChild('ExigibilidadeISS').Text           := AACBrNFSeX.Provider.ExigibilidadeISSToStr(ANFSe.Servico.ExigibilidadeISS);
        AddChild('MunicipioIncidencia').Text        := IntToStr(ANFSe.Servico.MunicipioIncidencia);
        AddChild('NumeroProcesso').Text             := ANFSe.Servico.NumeroProcesso;
        AddChild('xItemListaServico').Text          := ANFSe.Servico.xItemListaServico;
        with AddChild('ItemServico') do
        begin
          for I := 0 to ANFSe.Servico.ItemServico.Count - 1 do
          begin
            with AddChild('Item') do
            begin
              AddChild('Codigo').Text                 := ANFSe.Servico.ItemServico[i].CodServ;    //Codigo
              AddChild('Descricao').Text              := ANFSe.Servico.ItemServico[i].Descricao;
              AddChild('Quantidade').Text             := LGetCur(ANFSe.Servico.ItemServico[i].Quantidade);
              AddChild('ValorUnitario').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorUnitario);
              AddChild('ValorTotal').Text             := LGetCur(ANFSe.Servico.ItemServico[i].ValorTotal);
              AddChild('ValorServicos').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorUnitario);
              AddChild('ValorDeducoes').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorDeducoes);
              AddChild('ValorIss').Text               := LGetCur(ANFSe.Servico.ItemServico[i].ValorIss);
              AddChild('Aliquota').Text               := LGetCur(ANFSe.Servico.ItemServico[i].Aliquota);
              AddChild('BaseCalculo').Text            := LGetCur(ANFSe.Servico.ItemServico[i].BaseCalculo);
              AddChild('DescontoCondicionado').Text   := LGetCur(ANFSe.Servico.ItemServico[i].DescontoCondicionado);
              AddChild('DescontoIncondicionado').Text := LGetCur(ANFSe.Servico.ItemServico[i].DescontoIncondicionado);
              AddChild('Discriminacao').Text          := ANFSe.Servico.ItemServico[i].CodLCServ;     //Discriminacao
              AddChild('Tributavel').Text             := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.Servico.ItemServico[i].Tributavel);

              //Provedor: SystemPro
              AddChild('ValorPis').Text         := LGetCur(ANFSe.Servico.ItemServico[i].ValorPis);
              AddChild('ValorCofins').Text      := LGetCur(ANFSe.Servico.ItemServico[i].ValorCofins);
              AddChild('ValorInss').Text        := LGetCur(ANFSe.Servico.ItemServico[i].ValorInss);
              AddChild('ValorIr').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorIRRF);    //ValorIr
              AddChild('ValorCsll').Text        := LGetCur(ANFSe.Servico.ItemServico[i].ValorCsll);
              AddChild('QuantidadeDiaria').Text := LGetCur(ANFSe.Servico.ItemServico[i].Quantidade);   //QuantidadeDiaria
              AddChild('ValorTaxaTurismo').Text := LGetCur(ANFSe.Servico.ItemServico[i].ValorTaxaTurismo);

              // Provedor Infisc Versão XML 1.1
              AddChild('CodServ').Text          := ANFSe.Servico.ItemServico[i].CodServ;
              AddChild('CodLCServ').Text        := ANFSe.Servico.ItemServico[i].CodLCServ;
              AddChild('Unidade').Text          := ANFSe.Servico.ItemServico[i].Unidade;
              AddChild('AlicotaISSST').Text     := LGetCur(ANFSe.Servico.ItemServico[i].AliqISSST);     //AlicotaISSST
              AddChild('ValorISSST').Text       := LGetCur(ANFSe.Servico.ItemServico[i].ValorISSST);
              AddChild('vDed').Text             := LGetCur(ANFSe.Servico.ItemServico[i].ValorDeducoes); //vDed
              AddChild('vBCINSS').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorBCINSS);   //vBCINSS
              AddChild('pRetINSS').Text         := LGetCur(ANFSe.Servico.ItemServico[i].AliqRetINSS);   //pRetINSS
              AddChild('vRed').Text             := LGetCur(ANFSe.Servico.ItemServico[i].AliqReducao);   //vRed
              AddChild('vBCRetIR').Text         := LGetCur(ANFSe.Servico.ItemServico[i].ValorBCRetIRRF);//vBCRetIR
              AddChild('pRetIR').Text           := LGetCur(ANFSe.Servico.ItemServico[i].AliqRetIRRF);   //pRetIR
              AddChild('vBCCOFINS').Text        := LGetCur(ANFSe.Servico.ItemServico[i].ValorBCCOFINS); //vBCCOFINS
              AddChild('pRetCOFINS').Text       := LGetCur(ANFSe.Servico.ItemServico[i].AliqRetCOFINS); //pRetCOFINS
              AddChild('vBCCSLL').Text          := LGetCur(ANFSe.Servico.ItemServico[i].ValorBCCSLL);   //vBCCSLL
              AddChild('pRetCSLL').Text         := LGetCur(ANFSe.Servico.ItemServico[i].AliqRetCSLL);   //pRetCSLL
              AddChild('vBCPISPASEP').Text      := LGetCur(ANFSe.Servico.ItemServico[i].ValorBCPIS);    //vBCPISPASEP
              AddChild('pRetPISPASEP').Text     := LGetCur(ANFSe.Servico.ItemServico[i].AliqRetPIS);    //pRetPISPASEP
              AddChild('TipoUnidade').Text      := UnidadeToStr(ANFSe.Servico.ItemServico[i].TipoUnidade);
              AddChild('ItemListaServico').Text := ANFSe.Servico.ItemServico[i].ItemListaServico;
            end;
          end;
        end;

//        Deducao: TDeducaoCollection read FDeducao write SetDeducao;   OperacaoToStr    TributacaoToStr
        AddChild('ResponsavelRetencao').Text       := AACBrNFSeX.Provider.ResponsavelRetencaoToStr(ANFSe.Servico.ResponsavelRetencao);
        AddChild('xItemListaServico').Text         := ANFSe.Servico.Descricao;
        AddChild('Operacao').Text                  := OperacaoToStr(ANFSe.Servico.Operacao);
        AddChild('Tributacao').Text                := AACBrNFSeX.Provider.TributacaoToStr(ANFSe.Servico.Tributacao);
        AddChild('UFPrestacao').Text               := ANFSe.Servico.UFPrestacao;
        AddChild('ValorCargaTributaria').Text      := LGetCur(ANFSe.Servico.ValorCargaTributaria);
        AddChild('PercentualCargaTributaria').Text := LGetCur(ANFSe.Servico.PercentualCargaTributaria);
        AddChild('FonteCargaTributaria').Text      := ANFSe.Servico.FonteCargaTributaria;
      end;
      with AddChild('Prestador') do
      begin
        AddChild('Cnpj').Text                := ANFSe.Prestador.IdentificacaoPrestador.Cnpj;
        AddChild('InscricaoMunicipal').Text  := ANFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal;
        AddChild('InscricaoEstadual').Text   := ANFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual;
//??        AddChild('Senha').Text               := ANFSe.Prestador.IdentificacaoPrestador.Senha;
//??        AddChild('FraseSecreta').Text        := ANFSe.Prestador.FraseSecreta;
        AddChild('cUF').Text                 := IntToStr(ANFSe.Prestador.cUF);
//??        AddChild('ChaveAcesso').Text         := ANFSe.Prestador.ChaveAcesso;
//??        AddChild('Usuario').Text             := IntToStr(ANFSe.Prestador.Usuario);
//??        AddChild('CNPJ_Prefeitura').Text     := ANFSe.Prestador.CNPJ_Prefeitura;
        AddChild('ValorReceitaBruta').Text   := LGetCur(ANFSe.Prestador.ValorReceitaBruta);
        AddChild('DataInicioAtividade').Text := LGetData(ANFSe.Prestador.DataInicioAtividade);
        AddChild('crc').Text                 := ANFSe.Prestador.crc;
        AddChild('crc_estado').Text          := ANFSe.Prestador.crc_estado;
        AddChild('RazaoSocial').Text         := ANFSe.Prestador.RazaoSocial;
//??        AddChild('Fantasia').Text            := ANFSe.Prestador.Fantasia;
//??        AddChild('Telefone').Text            := ANFSe.Prestador.Telefone;
//??        AddChild('Email').Text               := ANFSe.Prestador.Email;

        DoPreencheEndereco(AddChild('Endereco'), ANFSe.Prestador.Endereco);
      end;
      with AddChild('Tomador') do
      begin
        with AddChild('IdentificacaoTomador') do
        begin
          AddChild('CpfCnpj').Text               := ANFSe.Tomador.IdentificacaoTomador.CpfCnpj;
          AddChild('InscricaoMunicipal').Text    := ANFSe.Tomador.IdentificacaoTomador.InscricaoMunicipal;
          AddChild('InscricaoEstadual').Text     := ANFSe.Tomador.IdentificacaoTomador.InscricaoEstadual;
//          AddChild('DocTomadorEstrangeiro').Text := ANFSe.Tomador.IdentificacaoTomador.DocTomadorEstrangeiro;
          AddChild('Tipo').Text                  := AACBrNFSeX.Provider.TipoPessoaToStr(ANFSe.Tomador.IdentificacaoTomador.Tipo);
        end;

        AddChild('RazaoSocial').Text := ANFSe.Tomador.RazaoSocial;
        DoPreencheEndereco(AddChild('Endereco'), ANFSe.Tomador.Endereco);

        with AddChild('Contato') do
        begin
          AddChild('Telefone').Text     := ANFSe.Tomador.Contato.Telefone;
          AddChild('Email').Text        := ANFSe.Tomador.Contato.Email;
          AddChild('DDD').Text          := ANFSe.Tomador.Contato.DDD;
          AddChild('TipoTelefone').Text := ANFSe.Tomador.Contato.TipoTelefone;
        end;

        AddChild('AtualizaTomador').Text := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.Tomador.AtualizaTomador);
        AddChild('TomadorExterior').Text := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.Tomador.TomadorExterior);
//        AddChild('NifTomador').Text      := ANFSe.Tomador.NifTomador;
      end;
      //IntermediarioServico: TIdentificacaoIntermediarioServico read FIntermediarioServico write FIntermediarioServico;
      //ConstrucaoCivil: TDadosConstrucaoCivil read FConstrucaoCivil write FConstrucaoCivil;
      AddChild('DeducaoMateriais').Text := AACBrNFSeX.Provider.SimNaoToStr(ANFSe.DeducaoMateriais);
      with AddChild('CondicaoPagamento') do
      begin
        AddChild('Condicao').Text   := CondicaoToStr(ANFSe.CondicaoPagamento.Condicao);
        AddChild('QtdParcela').Text := IntToStr(ANFSe.CondicaoPagamento.QtdParcela);
        with AddChild('Parcelas') do
        begin
          for I := 0 to ANFSe.CondicaoPagamento.Parcelas.Count - 1 do
          begin
            with AddChild('Item') do
            begin
              AddChild('Condicao').Text       := CondicaoToStr(ANFSe.CondicaoPagamento.Parcelas[i].Condicao);
              AddChild('Parcela').Text        := ANFSe.CondicaoPagamento.Parcelas[i].Parcela;
              AddChild('DataVencimento').Text := LGetData(ANFSe.CondicaoPagamento.Parcelas[i].DataVencimento);
              AddChild('Valor').Text          := LGetCur(ANFSe.CondicaoPagamento.Parcelas[i].Valor);
            end;
          end;
        end;
      end;

      // NFSe
      AddChild('Numero').Text                    := ANFSe.Numero;
      AddChild('CodigoVerificacao').Text         := ANFSe.CodigoVerificacao;
      AddChild('Competencia').Text               := DateToStr(ANFSe.Competencia);
      AddChild('NfseSubstituida').Text           := ANFSe.NfseSubstituida;
      AddChild('OutrasInformacoes').Text         := ANFSe.OutrasInformacoes;
      AddChild('InformacoesComplementares').Text := ANFSe.InformacoesComplementares;
      AddChild('ValorCredito').Text              := LGetCur(ANFSe.ValorCredito);
  {    with AddChild('PrestadorServico') do
      begin
        with AddChild('IdentificacaoPrestador') do
        begin
          AddChild('Cnpj').Text                := ANFSe.PrestadorServico.IdentificacaoPrestador.Cnpj;
          AddChild('InscricaoMunicipal').Text  := ANFSe.PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal;
          AddChild('Senha').Text               := ANFSe.PrestadorServico.IdentificacaoPrestador.Senha;
          AddChild('FraseSecreta').Text        := ANFSe.PrestadorServico.IdentificacaoPrestador.FraseSecreta;
          AddChild('cUF').Text                 := IntToStr(ANFSe.PrestadorServico.IdentificacaoPrestador.cUF);
          AddChild('InscricaoEstadual').Text   := ANFSe.PrestadorServico.IdentificacaoPrestador.InscricaoEstadual;
          AddChild('ChaveAcesso').Text         := ANFSe.PrestadorServico.IdentificacaoPrestador.ChaveAcesso;
          AddChild('Usuario').Text             := IntToStr(ANFSe.PrestadorServico.IdentificacaoPrestador.Usuario);
          AddChild('CNPJ_Prefeitura').Text     := ANFSe.PrestadorServico.IdentificacaoPrestador.CNPJ_Prefeitura;
          AddChild('ValorReceitaBruta').Text   := LGetCur(ANFSe.PrestadorServico.IdentificacaoPrestador.ValorReceitaBruta);
          AddChild('DataInicioAtividade').Text := LGetData(ANFSe.PrestadorServico.IdentificacaoPrestador.DataInicioAtividade);
          AddChild('crc').Text                 := ANFSe.PrestadorServico.IdentificacaoPrestador.crc;
          AddChild('crc_estado').Text          := ANFSe.PrestadorServico.IdentificacaoPrestador.crc_estado;
          AddChild('RazaoSocial').Text         := ANFSe.PrestadorServico.IdentificacaoPrestador.RazaoSocial;
          AddChild('Fantasia').Text            := ANFSe.PrestadorServico.IdentificacaoPrestador.Fantasia;
          AddChild('Telefone').Text            := ANFSe.PrestadorServico.IdentificacaoPrestador.Telefone;
          AddChild('Email').Text               := ANFSe.PrestadorServico.IdentificacaoPrestador.Email;

          DoPreencheEndereco(AddChild('Endereco'), ANFSe.PrestadorServico.IdentificacaoPrestador.Endereco);
        end;     }

        AddChild('RazaoSocial').Text  := ANFSe.Prestador.RazaoSocial;
        AddChild('NomeFantasia').Text := ANFSe.Prestador.NomeFantasia;

        DoPreencheEndereco(AddChild('Endereco'), ANFSe.Prestador.Endereco);

        with AddChild('Contato') do
        begin
          AddChild('Telefone').Text     := ANFSe.Prestador.Contato.Telefone;
          AddChild('Email').Text        := ANFSe.Prestador.Contato.Email;
          AddChild('DDD').Text          := ANFSe.Prestador.Contato.DDD;
          AddChild('TipoTelefone').Text := ANFSe.Prestador.Contato.TipoTelefone;
        end;
      end;
//      OrgaoGerador: TIdentificacaoOrgaoGerador read FOrgaoGerador write FOrgaoGerador;
//      ValoresNfse: TValoresNfse read FValoresNfse write FValoresNfse;
      //XML: AnsiString read FXML write FXML;
      //NfseCancelamento: TConfirmacaoCancelamento read FNfseCancelamento write FNfseCancelamento;
//      Transportadora: TDadosTransportadora read FTransportadora write FTransportadora;
//      Despesa: TDespesaCollection read FDespesa write SetDespesa;
//      email: TemailCollection read Femail write Setemail;
//      AssinaComChaveParams: TAssinaComChaveParamsCollection read FAssinaComChaveParams write SetAssinaComChaveParams;
//      RegRec: TnfseRegRec read FRegRec write FRegRec; //Governa
//      FrmRec: TnfseFrmRec read FFrmRec write FFrmRec; //Governa

    (*??  AddChild('Autenticador').Text                       := ANFSe.Autenticador;
      AddChild('Link').Text                               := ANFSe.Link;
      AddChild('NumeroLote').Text                         := ANFSe.NumeroLote;
      AddChild('Protocolo').Text                          := ANFSe.Protocolo;
      AddChild('dhRecebimento').Text                      := LGetData(ANFSe.dhRecebimento);
      AddChild('Situacao').Text                           := ANFSe.Situacao;
      AddChild('NfseSubstituidora').Text                  := ANFSe.NfseSubstituidora;
      AddChild('MotivoCancelamento').Text                 := ANFSe.MotivoCancelamento;
      AddChild('ChaveNFSe').Text                          := ANFSe.ChaveNFSe;
      AddChild('TipoEmissao').Text                        := TipoEmissaoToStr(ANFSe.TipoEmissao);
      AddChild('EmpreitadaGlobal').Text                   := EmpreitadaGlobalToStr(ANFSe.EmpreitadaGlobal);
      AddChild('ModeloNFSe').Text                         := ANFSe.ModeloNFSe;
      AddChild('Cancelada').Text                          := SimNaoToStr(ANFSe.Cancelada);
      AddChild('Canhoto').Text                            := TCanhotoToStr(ANFSe.Canhoto);
      AddChild('TipoRecolhimento').Text                   := ANFSe.TipoRecolhimento;
      AddChild('TipoTributacaoRPS').Text                  := TTributacaoRPSToStr(ANFSe.TipoTributacaoRPS);
      AddChild('id_sis_legado').Text                      := IntToStr(ANFSe.id_sis_legado);
      AddChild('Assinatura').Text                         := ANFSe.Assinatura;
      AddChild('PercentualCargaTributaria').Text          := LGetCur(ANFSe.PercentualCargaTributaria);
      AddChild('ValorCargaTributaria').Text               := LGetCur(ANFSe.ValorCargaTributaria);
      AddChild('PercentualCargaTributariaMunicipal').Text := LGetCur(ANFSe.PercentualCargaTributariaMunicipal);
      AddChild('ValorCargaTributariaMunicipal').Text      := LGetCur(ANFSe.ValorCargaTributariaMunicipal);
      AddChild('PercentualCargaTributariaEstadual').Text  := LGetCur(ANFSe.PercentualCargaTributariaEstadual);
      AddChild('ValorCargaTributariaEstadual').Text       := LGetCur(ANFSe.ValorCargaTributariaEstadual);
    end;                                                                                                     *)
    AXML.SaveToStream(AStream);
  finally
    AXML.Free;
  end;
end;

class function TFrmNFSe.ImportarXML( AArquivosXML, ACodVendaVincular: string; AACBrNFSeX : TACBrNFSeX): Boolean;
var
  i: Integer;

  L: TStrings;
begin
  try
    //As notas devem ser importadas uma a uma, pois o ACBr já retorna True caso uma nota tenha sido lida com sucesso,
    //mesmo quando as outras notas tenham dado erro.
    AACBrNFSeX.NotasFiscais.Clear;

    Result := Result and AACBrNFSeX.NotasFiscais.LoadFromFile(AArquivosXML);

    if not Result then
      Exit;

    Result := Result and (AACBrNFSeX.NotasFiscais.Items[0].NFSe.Numero <> '');

    if not Result then
      Exit;

    //Grava as notas válidas carregadas no banco de dados
    GravarXLMNFSe(AACBrNFSeX, ACodVendaVincular);
  finally
//    AACBrNFSeX.Free;
  end;
end;

procedure TFrmNFSe.PreencheDadosPrestador(AACBrNFSeX: TACBrNFSeX);
var
  ANota: ACBrNFSeXNotasFiscais.TNotaFiscal;
  AEmpresa: TDataSet;
begin
  {O Provedor ISS DSF não preenche todas as tags quando uma nota é emitida, o retorno vem incompleto.
   Esta rotina pega uma nota com os dados que o provedor disponibiliza e preenche as demais informações faltantes
   para resultar em uma nota completa e válida

   O próprio Ítalo do ACBr sujeriu fazer desta forma no seguinte tópico:
   https://www.projetoacbr.com.br/forum/topic/53635-danfse-impresso-sem-os-dados-do-prestador-issdsf/?tab=comments#comment-352154
   }
//  if ANfOrigem.NFSe.Prestador.Cnpj <> '' then
//    ANfDest.NFSe.Prestador.Cnpj := ANfOrigem.NFSe.Prestador.CNPJ;
//  if ANfOrigem.NFSe.Prestador.InscricaoMunicipal <> '' then
//    ANfDest.NFSe.Prestador.InscricaoMunicipal := ANfOrigem.NFSe.Prestador.InscricaoMunicipal;
  ANota := AACBrNFSeX.NotasFiscais[0];
  AEmpresa := FrmPrincipal.EmpresaLista;

  if not (AEmpresa.Locate('CNPJCPF', GetCnpjCpf(ANota.NFSe.Prestador.IdentificacaoPrestador.Cnpj), []) or
          AEmpresa.Locate('CNPJCPF', OnlyNumberWR(ANota.NFSe.Prestador.IdentificacaoPrestador.Cnpj), [])) then
    Exit;

  ANota.NFSe.Prestador.IdentificacaoPrestador.Cnpj               := OnlyNumberWR(AEmpresa.FieldByName('CNPJCPF').AsString);
  ANota.NFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal := OnlyNumberWR(AEmpresa.FieldByName('IM').AsString);
  ANota.NFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual  := AEmpresa.FieldByName('INSCIDENT').AsString;
  ANota.NFSe.Prestador.cUF                := EstadoToCodigoUF(EstadoUFToEnum(AEmpresa.FieldByName('UF').AsString));
  ANota.NFSe.Prestador.RazaoSocial        := RemoveAcento(AEmpresa.FieldByName('RAZAOSOCIAL').AsString);

  ANota.NFSe.Prestador.Contato.Telefone := AEmpresa.FieldByName('FONE1').AsString;
  ANota.NFSe.Prestador.Contato.Email    := AEmpresa.FieldByName('EMAIL').AsString;

  ANota.NFSe.Prestador.Endereco.EnderecoInformado := 'S';
  ANota.NFSe.Prestador.Endereco.Endereco          := AEmpresa.FieldByName('ENDERECO').AsString;
  ANota.NFSe.Prestador.Endereco.Numero            := AEmpresa.FieldByName('NUMERO').AsString;
  ANota.NFSe.Prestador.Endereco.Complemento       := AEmpresa.FieldByName('COMPLEMENTO').AsString;
  ANota.NFSe.Prestador.Endereco.Bairro            := AEmpresa.FieldByName('BAIRRO').AsString;
  ANota.NFSe.Prestador.Endereco.CodigoMunicipio   := AEmpresa.FieldByName('CODCIDADE').AsString;
  ANota.NFSe.Prestador.Endereco.UF                := AEmpresa.FieldByName('UF').AsString;
  ANota.NFSe.Prestador.Endereco.CEP               := AEmpresa.FieldByName('CEP').AsString;
  ANota.NFSe.Prestador.Endereco.xMunicipio        := AEmpresa.FieldByName('CIDADE').AsString;
  ANota.NFSe.Prestador.Endereco.CodigoPais        := AEmpresa.FieldByName('CODPAIS').AsInteger;
  ANota.NFSe.Prestador.Endereco.xPais             := 'Brasil';

  ANota.NFSe.Prestador.IdentificacaoPrestador.Cnpj               := OnlyNumberWR(AEmpresa.FieldByName('CNPJCPF').AsString);
  ANota.NFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal := AEmpresa.FieldByName('IM').AsString;
  ANota.NFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual  := AEmpresa.FieldByName('INSCIDENT').AsString;

  ANota.NFSe.Prestador.Endereco.EnderecoInformado := 'S';
  ANota.NFSe.Prestador.Endereco.Endereco          := AEmpresa.FieldByName('ENDERECO').AsString;
  ANota.NFSe.Prestador.Endereco.Numero            := AEmpresa.FieldByName('NUMERO').AsString;
  ANota.NFSe.Prestador.Endereco.Complemento       := AEmpresa.FieldByName('COMPLEMENTO').AsString;
  ANota.NFSe.Prestador.Endereco.Bairro            := AEmpresa.FieldByName('BAIRRO').AsString;
  ANota.NFSe.Prestador.Endereco.CodigoMunicipio   := AEmpresa.FieldByName('CODCIDADE').AsString;
  ANota.NFSe.Prestador.Endereco.UF                := AEmpresa.FieldByName('UF').AsString;
  ANota.NFSe.Prestador.Endereco.CEP               := AEmpresa.FieldByName('CEP').AsString;
  ANota.NFSe.Prestador.Endereco.xMunicipio        := AEmpresa.FieldByName('CIDADE').AsString;
  ANota.NFSe.Prestador.Endereco.CodigoPais        := AEmpresa.FieldByName('CODPAIS').AsInteger;
  ANota.NFSe.Prestador.Endereco.xPais             := 'Brasil';


end;

procedure TFrmNFSe.btnProximoNumeroClick(Sender: TObject);
begin
  TFrmProximoNumero.Abrir;
end;

procedure TFrmNFSe.btnConfirmarClick(Sender: TObject);
begin
//  TConfig.SaveString('NFSE_WEBSERVICE_SENHA', edtSenhaWeb.Text);
//  TConfig.SaveString('NFSE_WEBSERVICE_USUARIO', edtUserWeb.Text);
//  TConfig.SaveString('NFSE_WEBSERVICE_FRASE_SECRETA', edtFraseSecWeb.Text);
//  TConfig.SaveBoolean('NFSE_WEBSERVICE_SALVAR_SOAP', chkSalvarSOAP.Checked);
  TConfig.SaveInteger('NFSE_WEBSERVICE_AMBIENTE', rgTipoAmb.ItemIndex);
  TConfig.SaveInteger('NFSE_WEBSERVICE_TIMEOUT', seTimeOut.Value);
  TConfig.SaveInteger('NFSE_WEBSERVICE_AGUARDAR', Trunc(edtAguardar.Value));
  TConfig.SaveInteger('NFSE_WEBSERVICE_TENTATIVAS', Trunc(edtTentativas.Value));
  TConfig.SaveInteger('NFSE_WEBSERVICE_INTERVALO', Trunc(edtIntervalo.Value));
  TConfig.SaveInteger('NFSE_WEBSERVICE_SSL_TYPE', cbSSLType.ItemIndex);
  TConfig.SaveBoolean('NFSE_WEBSERVICE_VISUALIZAR_MENSAGENS', chkVisualizar.Checked);
  TConfig.SaveBoolean('NFSE_WEBSERVICE_AJUSTAR_AGUARDE_AUTOMATICO', cbxAjustarAut.Checked);

  TConfig.SaveString('NFSE_PROXY_HOST', edtProxyHost.Text);
  TConfig.SaveString('NFSE_PROXY_PORTA', edtProxyPorta.Text);
  TConfig.SaveString('NFSE_PROXY_USUARIO', edtProxyUser.Text);
  TConfig.SaveString('NFSE_PROXY_SENHA', edtProxySenha.Text);

  TConfig.SaveBoolean('NFSE_TEM_HOMOLOGACAO', chxPossuiHomologacao.Checked);
//  ConfiguraACBrNFSe(AwrNotaFiscal);        // Recarregar configuração padrão como Homologação
end;

procedure TFrmNFSe.FormCreate(Sender: TObject);
Var
  AType: TSSLType;
begin

  cbSSLType.Properties.BeginUpdate;
  try
    cbSSLType.Properties.Items.Clear;
    for AType := Low(TSSLType) to High(TSSLType) do
      cbSSLType.Properties.Items.Add(GetEnumName(TypeInfo(TSSLType), Integer(AType)));
    cbSSLType.ItemIndex := 0;
  finally
    cbSSLType.Properties.EndUpdate(False);
  end;

//  edtSenhaWeb.Text       := TConfig.ReadString('NFSE_WEBSERVICE_SENHA');
//  edtUserWeb.Text        := TConfig.ReadString('NFSE_WEBSERVICE_USUARIO');
//  edtFraseSecWeb.Text    := TConfig.ReadString('NFSE_WEBSERVICE_FRASE_SECRETA');
//  chkSalvarSOAP.Checked  := TConfig.ReadBoolean('NFSE_WEBSERVICE_SALVAR_SOAP');
  rgTipoAmb.ItemIndex    := TConfig.ReadInteger('NFSE_WEBSERVICE_AMBIENTE');

  if TConfig.ReadString('NFSE_WEBSERVICE_TIMEOUT') = '' then
    seTimeOut.Value := 5000
  else
    seTimeOut.Value := TConfig.ReadInteger('NFSE_WEBSERVICE_TIMEOUT');

  if TConfig.ReadString('NFSE_WEBSERVICE_AGUARDAR') = '' then
    edtAguardar.Value := 100000
  else
    edtAguardar.Value := TConfig.ReadInteger('NFSE_WEBSERVICE_AGUARDAR');

  if TConfig.ReadString('NFSE_WEBSERVICE_TENTATIVAS') = '' then
    edtTentativas.Value := 10
  else
    edtTentativas.Value := TConfig.ReadInteger('NFSE_WEBSERVICE_TENTATIVAS');

  edtIntervalo.Value     := TConfig.ReadInteger('NFSE_WEBSERVICE_INTERVALO');
  cbSSLType.ItemIndex    := TConfig.ReadInteger('NFSE_WEBSERVICE_SSL_TYPE');
  chkVisualizar.Checked  := TConfig.ReadBoolean('NFSE_WEBSERVICE_VISUALIZAR_MENSAGENS');
  cbxAjustarAut.Checked  := TConfig.ReadBoolean('NFSE_WEBSERVICE_AJUSTAR_AGUARDE_AUTOMATICO');

  edtProxyHost.Text      := TConfig.ReadString('NFSE_PROXY_HOST');
  edtProxyPorta.Text     := TConfig.ReadString('NFSE_PROXY_PORTA');
  edtProxyUser.Text      := TConfig.ReadString('NFSE_PROXY_USUARIO');
  edtProxySenha.Text     := TConfig.ReadString('NFSE_PROXY_SENHA');

  chxPossuiHomologacao.Checked   := TConfig.ReadBoolean('NFSE_TEM_HOMOLOGACAO');
end;

procedure TFrmNFSe.FormShow(Sender: TObject);
begin
  liCidade.Caption:=Empresa.FieldByName('Cidade').AsString;
  liEmpresa.Caption:=Empresa.FieldByName('RAZAOSOCIAL').AsString;
  lblProvedor.Caption:=Procura('NFSE_PROVEDOR', 'CIDADES', Empresa.FieldByName('CodCidade').AsString);
  rgTipoAmbPropertiesChange(self);
end;

procedure TFrmNFSe.rgTipoAmbPropertiesChange(Sender: TObject);
begin
  if rgTipoAmb.ItemIndex = 1 then
  begin
    lblProximoNumero.Caption:= TConfig.ReadString('NOTAFISCAL_SERVICO');
    if not chxPossuiHomologacao.Checked then
      rgTipoAmb.Style.BorderColor := clRed
    else
      rgTipoAmb.Style.AssignedValues := rgTipoAmb.Style.AssignedValues - [0];
  end else
    lblProximoNumero.Caption:= TConfig.ReadString('NOTAFISCAL_SERVICO_HOMOLOGACAO');
end;

procedure TFrmNFSe.btnProvedorClick(Sender: TObject);
begin
  CadastroModalChave(TFrmNF_Provedor, ProcuraField('CODIGO', 'NF_PROVEDOR', ['DESCRICAO'], [lblProvedor.Caption]));
end;

procedure TFrmNFSe.btnCidadeClick(Sender: TObject);
begin
  CadastroModalChave(TFrmCidades, Empresa.FieldByName('CodCidade').AsInteger);
end;

procedure TFrmNFSe.btnEmpresaClick(Sender: TObject);
begin
  CadastroModalMakeVisible(TFrmEmpresa, Empresa.FieldByName('Codigo').AsString, 'Grupo_Certificado');
  Empresa.Refresh;
end;

procedure TFrmNFSe.ACBrNFSe1GerarLog(const ALogLine: string;
  var Tratado: Boolean);
begin
  if ALogLine = 'Inicio TNFSeEnviarLoteRPS' then
    Tratado := True;
  if ALogLine = 'ERRO: ' then
    Tratado := True;
  if ALogLine = 'Numero do protocolo de recebimento ainda nao processado. O processamento do lote ocorre de maneira assincrona, tente consuta-lo novamente mais tarde.' then
  begin
    Tratado := True;
    ACBrNFSeX1.ConsultarLoteRps(ACBrNFSeX1.WebService.Emite.Protocolo);//    , ''  ACBrNFSeX1.WebService.Emite.NumeroLote
  end;
  //Executa a consulta do RPS, o problema é que pode dar exceção mesmo quando a consulta executou
  //normalmente, apenas com a mensagem de que não existe o RPS ou algo assim...
// AACBrNFSe.ConsultarNFSeporRps(
// AACBrNFSe.NotasFiscais[0].NFSe.IdentificacaoRps.Numero,
// AACBrNFSe.NotasFiscais[0].NFSe.IdentificacaoRps.Serie,
// TipoRPSToStr(AACBrNFSe.NotasFiscais[0].NFSe.IdentificacaoRps.Tipo));
  WRLog(ALogLine);
end;

procedure TFrmNFSe.ACBrNFSe1StatusChange(Sender: TObject);
var
  AStatus: string;
begin
  inherited;
  case TACBrNFSeX(Sender).Status of
    stNFSeRecepcao:         AStatus := 'Tentativa';
    stNFSeConsulta:         AStatus := 'Consultando';
    stNFSeConsultaSituacao: AStatus := 'Consultando Situação';
    stNFSeCancelamento:     AStatus := 'Cancelando';
    stNFSeEmail:            AStatus := 'Email';
    stNFSeAguardaProcesso:  AStatus := 'Aguardando Processo';
    stNFSeSubstituicao:     AStatus := 'Substituindo';
    stNFSeAbrirSessao:      AStatus := 'Abrindo Sessão';
    stNFSeFecharSessao:     AStatus := 'Fechando Sessão';
    stNFSeEnvioWebService:  AStatus := 'Enviando ao WebService';
  else
    //stNFSeIdle
    AStatus := 'Aguardando...';
  end;
  WRLog('AACBrNFSe.Status = ' + AStatus);
{$REGION 'Antiga'}
  {  if TACBrNFSe(Sender).Status in [stNFSeRecepcao, stNFSeConsulta, stNFSeConsultaSituacao] then
    begin
      WRLog('Se AACBrNFSe.Status estiver em: tentativa, consulta ou consulta situação, vai atualizar mensagem do aguarde');
      TACBrNFSe(Sender).Tag := TACBrNFSe(Sender).Tag + 1;
      TThread.Queue(TThread.CurrentThread,
        procedure
        begin
          if not FFormAguarde.ExibirCancelar then
          begin
            FFormAguarde.ExibirCancelar := True;
            FFormAguarde.HabilitaCustomButton('Minimizar', AguardeOnCustomButtonClick);
          end;
        end);
    end;
    SetAguardeMensagem('Aguardando nota da Prefeitura...' + sLineBreak +
                       AStatus + ' (' + AACBrNFSe.Tag.ToString + ')');  }

   { WRLog('Aguardando nota da Prefeitura...' + sLineBreak +
                       AStatus + ' (' + AACBrNFSe.Tag.ToString + ')');  }
{$ENDREGION}
  if (frmStatus = nil) then
    frmStatus := TfrmStatus.Create(Application);
  frmStatus.Show;
  frmStatus.BringToFront;
  frmStatus.lblStatus.Caption := AStatus;
  Application.ProcessMessages;
end;

procedure TFrmNFSe.ACBrNFSe1TransmitError(const HttpError,
  InternalError: Integer; const URL, DadosEnviados, SoapAction: string;
  var Retentar, Tratado: Boolean);
Var
  QuerX : TFDQuery;
begin
  inherited;
  Exit;
  QuerX := GeraFDQuery(TransaErros);
  QuerX.SQL.Text := ' Select * from NF_Erros ';
  TWRFTP.DownloadArquivoVersionado('ArqINI', 'NF_Erros', 'CODIGO', QuerX, False );
  TransaErros.Commit;
  QuerX.Free;

  Tratado:=False;
  NF_Erros.Close;
  NF_Erros.ParamByName('InternalErro').AsInteger := InternalError;
  NF_Erros.Open;
  if NF_Erros.RecordCount>0 then
  begin
    Tratado:=True;
//     O que eu Posso colocar de rotina para ajudar a Resolver os Erros
    Retentar := (NF_Erros.FieldByName('Retentar').AsString = 'S');

    ShowMessage(URL);

  end;
  ShowMessage(URL+ ' internal: '+InternalError.ToString);

  // Aqui deve Verificar o arquivo, Baixar cadastrar
  // Se o Erro não for Cadastrado deve mandar um email, Informando para cadastrar o Erro no arquivo
  // Deve Cadastrar com a Opção manter cadastrado
  // Olhar no Cadastro e Perguntar se deve continuar tentando ou vai tomar alguma providencia
  // ShowMessage('Dados enviados:' + DadosEnviados + sLineBreak + 'SoapAction     :' + SoapAction);
  //if InternalError = 12007 then
  // ShowMessage(URL);
  // Pesquiza nos erros e faz a pergunta se quer tentar Novamente
  // 12002 Erro: 12002 - TimeOut de Requisição. Pode virificar se precisa mudar o tempo de envio
  // ERRO INTERNO 12002, 12029 A , 12157, 12057 - COMO CONFIGURAR A INTERNET EXPLORER ?
  // http://ajuda.eagletecnologia.com/faqs/como-configurar-a-internet-explorer-para-emissao-de-nfe#:~:text=%2C%2012057%20-%20Com%E2%80%A6-,Erro%20Interno%2012002%2C%2012029%20A%20%2C%2012157%2C%2012057%20-,Como%20configurar%20a%20Internet%20Explorer%20%3F&text=Esses%20erros%20s%C3%A3o%20provenientes%20de,devido%20a%20seguran%C3%A7a%20da%20SSL.
  if Not Tratado  then
  begin
    // Enviar email para o Suporte Cadastrar o Erro e Como tratar

  end;

end;

procedure TFrmNFSe.ACBrNFSeX1AntesDeAssinar(var ConteudoXML: string;
  const docElement, infElement, SignatureNode, SelectionNamespaces,
  IdSignature: string);
begin
//  showmessage('ACBrNFSeX1AntesDeAssinar');
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Endereco        := Empresa.FieldByName('ENDERECO').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Numero          := Empresa.FieldByName('NUMERO').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Complemento     := Empresa.FieldByName('COMPLEMENTO').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Bairro          := Empresa.FieldByName('BAIRRO').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.UF              := Empresa.FieldByName('UF').AsString;
  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.CEP             := Empresa.FieldByName('CEP').AsString;

end;

procedure TFrmNFSe.ACBrNFSeX1GerarLog(const ALogLine: string;
  var Tratado: Boolean);
begin
  memoLog.Lines.Add(ALogLine);
  Tratado := False;
end;

procedure TFrmNFSe.ACBrNFSeX1TransmitError(const HttpError,
  InternalError: Integer; const URL, DadosEnviados, SoapAction: string;
  var Retentar, Tratado: Boolean);
begin
  if InternalError = 12002 then
  begin
    if ShowMessageWR('Não Conseguiu Conectar ao Site da Prefeitura, Consultar novamente?', MB_ICONQUESTION) = mrYes then
    begin
      Retentar := True;
      Tratado := True;
    end
    else
    begin
      Retentar := False;
      Tratado := True;
    end;
  end;
  if InternalError = 12175 then
  begin
    ShowMessage('Verificar Protocolo de Segurança no botão configurações');
    cbSSLType.ItemIndex := 5;
    ACBrNFSeX1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
    Retentar := True;
    Tratado := True;
  end;
end;

procedure TFrmNFSe.btnAvancadoClick(Sender: TObject);
begin
  GrupoAvancado.Visible:= Not GrupoAvancado.Visible;
end;

procedure TFrmNFSe.chxPossuiHomologacaoPropertiesChange(Sender: TObject);
begin
  rgTipoAmb.Visible :=chxPossuiHomologacao.Checked;
end;

class procedure TFrmNFSe.EnviarEmailNFSe(AEnderecoDestino: string; ADataSet: TDataSet; AACBrNFSeX: TACBrNFSeX);
var
  ATmpStr, AMensagem, AAssunto: string;
  AAnexos: TStringList;
begin
  if AEnderecoDestino = '' then
    Exit;

  AMensagem := Empresa.FieldByName('NF_EMAIL_ASSUNTO').AsString;
  AAssunto  := Empresa.FieldByName('NF_EMAIL_MENSAGEM').AsString;

  ReplaceTagsEmail(AMensagem, AAssunto,
                   ADataSet.FieldByName('CODIGO').AsString,
                   ADataSet.FieldByName('NOTAFISCAL').AsString,
                   ADataSet.FieldByName('RAZAOSOCIAL').AsString,
                   Procura('RAZAOSOCIAL', 'EMPRESA', EmpresaAtiva),
                   ADataSet.FieldByName('PEDIDO_COMPRA').AsString);

  if Empresa.FieldByName('NF_EMAIL_BACKUP').AsString <> '' then
    AEnderecoDestino := AEnderecoDestino + ';' + Empresa.FieldByName('NF_EMAIL_BACKUP').AsString;

//   if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
//    PreencheDadosPrestador(AACBrNFSeX);
  with AACBrNFSeX.NotasFiscais[0].NFSe do
  begin
    AAnexos := TStringList.Create;
    try
      ATmpStr := IncludeTrailingPathDelimiter(AACBrNFSeX.Configuracoes.Arquivos.PathSalvar) + 'TempXML\' +
                                              InfID.ID.Replace('NFSe', '\') + '-nfse.xml';
      if not FileExists(ATmpStr) then
        AACBrNFSeX.NotasFiscais.Items[0].GravarXML(InfID.ID.Replace('NFSe', '') + '-nfse.xml',
                                                 IncludeTrailingPathDelimiter(AACBrNFSeX.Configuracoes.Arquivos.PathSalvar) + 'TempXML\');
      AAnexos.Add(ATmpStr);
//       if TConfig.ReadBoolean('SUBSTITUI_DADOS_PRESTADOR_IMPRIMIR') then
//        PreencheDadosPrestador(AACBrNFSeX);
      AACBrNFSeX.DANFSE.ImprimirDANFSePDF(AACBrNFSeX.NotasFiscais.Items[0].NFSe);
      ATmpStr := StringReplace(InfID.ID, 'NFSe', '', [rfIgnoreCase]);
      ATmpStr := PathWithDelim(AACBrNFSeX.DANFSE.PathPDF) + ATmpStr + '.pdf';
      if not FileExists(ATmpStr) then
      begin
        ATmpStr := StringReplace(InfID.ID, 'NFSe', '', [rfIgnoreCase]);
        ATmpStr := PathWithDelim(AACBrNFSeX.DANFSE.PathPDF) + ATmpStr + '-nfse.pdf';
      end;
      AAnexos.Add(ATmpStr);
      if (TConfig.ReadBoolean('NFE_ESCOLHE_EMAIL')) then
        TFrmEmail.GerarEmail(GetParentFormWR(AACBrNFSeX), AEnderecoDestino, AAssunto, AMensagem, AAnexos)
      else
        TFrmEmail.EnviarEmail3(TFrmEmail.GetEnderecoEmail(AEnderecoDestino)[0], AEnderecoDestino, AAssunto, AMensagem, AAnexos);
    finally
      AAnexos.Free;
    end;
  end;
end;

function TFrmNFSe.ChecarResposta(aMetodo: TMetodo; ACodVenda:String ):Boolean;
var
  i :Integer;
  AForm: TPanelForm;
  ATipo, AXMLEnvio, AProtocolo, ALote, ECodigo, EMensagem, ECorrecao, APath, NomeArq, AModoEnvio, ACodErro, AErro, AErroCorrecao :String;
  ACodigo : Variant;
  AData :TDateTime;
  ASucesso :Boolean;
  ANFSe :TNFSe;
  AStream: TMemoryStream;
  QuerX :TFDQuery;
  ANode: TACBrXmlNode;
  AuxNode: TACBrXmlNode;
  AuxNodeChave: TACBrXmlNode;
  Document: TACBrXmlDocument;
begin
  Result:=False;
  memoLog.Clear;
  memoLog.Lines.Clear;
  memoLog.Update;
  pgRespostas.ActivePageIndex := 0;
  AForm := TPanelForm.Create(pnlChecaResposta, bsSizeable, memoLog);
  AForm.Show;
  if Assigned(frmStatus) then
    frmStatus.Close;
  Try
    with ACBrNFSeX1.WebService do
    begin
      case aMetodo of
        tmRecepcionar,
        tmTeste:
          begin
          {$REGION 'Teste/Recepcionar'}
            with Emite do
            begin
              memoLog.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Data de Envio : ' + DateToStr(Data));
              memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
              memoLog.Lines.Add('Numero da Nota: ' + NumeroNota);
              memoLog.Lines.Add('Link          : ' + Link);
              memoLog.Lines.Add('Código Verif. : ' + CodigoVerificacao);

              Result:=Sucesso;    // Linha Novo

              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));
//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              ALote := NumeroLote;

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;

               GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, ModoEnvioToStr(ModoEnvio), AErro, ACodErro, AErroCorrecao);
              AXmlEnvio := XmlEnvio;
            end;
            if ACBrNFSeX1.Configuracoes.Geral.ConsultaLoteAposEnvio and
               (Emite.Protocolo <> '') then
            begin
              if ACBrNFSeX1.Provider.ConfigGeral.ConsultaSitLote then
              begin
                with ConsultaSituacao do
                begin
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarSituacao));
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Parâmetros de Envio');
                  memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
                  memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Parâmetros de Retorno');
                  memoLog.Lines.Add('Situação Lote : ' + Situacao);
                  memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

                  Result:=Sucesso; // Linha Novo
//                  LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//                  LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

                  if Erros.Count > 0 then
                  begin
                    memoLog.Lines.Add(' ');
                    memoLog.Lines.Add('Erro(s):');
                    for i := 0 to Erros.Count -1 do
                    begin
                      memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                      memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                      memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                      memoLog.Lines.Add('---------');
                      ACodErro      := Erros[0].Codigo;
                      AErro         := Erros[0].Descricao;
                      AErroCorrecao := Erros[0].Correcao;
                    end;
                  end;

                  if Alertas.Count > 0 then
                  begin
                    memoLog.Lines.Add(' ');
                    memoLog.Lines.Add('Alerta(s):');
                    for i := 0 to Alertas.Count -1 do
                    begin
                      memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                      memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                      memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                      memoLog.Lines.Add('---------');
                    end;
                  end;
                  GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmConsultarSituacao), AErro, ACodErro, AErroCorrecao);
                end;
              end;

              if ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote then
              begin
                with ConsultaLoteRps do
                begin

                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarLote));
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Parâmetros de Envio');
                  memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
                  memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Parâmetros de Retorno');
                  memoLog.Lines.Add('Situação Lote : ' + Situacao);
                  memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

//                  LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//                  LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

                  if Erros.Count > 0 then
                  begin
                    memoLog.Lines.Add(' ');
                    memoLog.Lines.Add('Erro(s):');
                    for i := 0 to Erros.Count -1 do
                    begin
                      memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                      memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                      memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                      memoLog.Lines.Add('---------');
                      ACodErro      := Erros[0].Codigo;
                      AErro         := Erros[0].Descricao;
                      AErroCorrecao := Erros[0].Correcao;
                    end;
                  end;

                  if Alertas.Count > 0 then
                  begin
                    memoLog.Lines.Add(' ');
                    memoLog.Lines.Add('Alerta(s):');
                    for i := 0 to Alertas.Count -1 do
                    begin
                      memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                      memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                      memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                      memoLog.Lines.Add('---------');
                    end;
                  end;
                  GravaEventoChecarResposta('NFSe', ALote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmConsultarLote), AErro, ACodErro, AErroCorrecao);
                end;
              end;
            end;
          {$ENDREGION}
          end;

        tmRecepcionarSincrono,
        tmGerar:
          begin
          {$REGION 'Emite'}
            with Emite do
            begin
              memoLog.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Data de Envio : ' + DateToStr(Data));
              memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
              memoLog.Lines.Add('Numero da Nota: ' + NumeroNota);
              memoLog.Lines.Add('Link          : ' + Link);
              memoLog.Lines.Add('Código Verif. : ' + CodigoVerificacao);
              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
                GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, ModoEnvioToStr(ModoEnvio), AErro, ACodErro, AErroCorrecao);
              end;
            end;
          {$ENDREGION}
          end;

        tmConsultarSituacao:
          begin
          {$REGION 'ConsultaSituacao'}
            with ConsultaSituacao do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarSituacao));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Situação Lote : ' + Situacao);
              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmConsultarSituacao), AErro, ACodErro, AErroCorrecao);
            end;

          {$ENDREGION}
          end;

        tmConsultarLote:
          begin
          {$REGION 'ConsultaLoteRps'}
            with ConsultaLoteRps do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarLote));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Situação Lote : ' + Situacao);
              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              GravaEventoChecarResposta('NFSe', ALote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmConsultarLote), AErro, ACodErro, AErroCorrecao);
            end;
          {$ENDREGION}
          end;

        tmConsultarNFSePorRps:
          begin
          {$REGION 'ConsultaNFSeporRps'}
            with ConsultaNFSeporRps do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarNFSePorRps));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Rps : ' + NumeroRPS);
              memoLog.Lines.Add('Série do Rps  : ' + SerieRPS);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add('Numero do Prot: ' + Protocolo);
              memoLog.Lines.Add('Situação      : ' + Situacao);
              memoLog.Lines.Add('Data          : ' + DateToStr(Data));
//              memoLog.Lines.Add('Desc. Situação: ' + DescSituacao);
              memoLog.Lines.Add('Link          : ' + Link);
              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

              Result := Sucesso;

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmConsultarNFSePorRps), AErro, ACodErro, AErroCorrecao);
            end;
          {$ENDREGION}
          end;

        tmConsultarNFSe,
        tmConsultarNFSePorFaixa,
        tmConsultarNFSeServicoPrestado,
        tmConsultarNFSeServicoTomado{,
        tmConsultarNFSeURL}:
          begin
          {$REGION 'ConsultaNFSe'}
            with ConsultaNFSe do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(Metodo));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Num. Ini. NFSe: ' + InfConsultaNFSe.NumeroIniNFSe);
              memoLog.Lines.Add('Num. Fin. NFSe: ' + InfConsultaNFSe.NumeroFinNFSe);
              memoLog.Lines.Add('Data Inicial  : ' + DateToStr(InfConsultaNFSe.DataInicial));
              memoLog.Lines.Add('Data Final    : ' + DateToStr(InfConsultaNFSe.DataFinal));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

              Result := Sucesso;

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(Metodo), AErro, ACodErro, AErroCorrecao);
            end;
          {$ENDREGION}
          end;

        tmCancelarNFSe:
          begin
          {$REGION 'CancelaNFSe'}
            with CancelaNFSe do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmCancelarNFSe));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero da NFSe: ' + InfCancelamento.NumeroNFSe);
              memoLog.Lines.Add('Série da NFSe : ' + InfCancelamento.SerieNFSe);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Situação: ' + Situacao);
              memoLog.Lines.Add('Link    : ' + Link);
              memoLog.Lines.Add('Sucesso : ' + BoolToStr(Sucesso, True));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Retorno do Pedido de Cancelamento:');
              memoLog.Lines.Add('Situação : ' + RetCancelamento.Situacao);
              memoLog.Lines.Add('Data/Hora: ' + DateToStr(RetCancelamento.DataHora));
              memoLog.Lines.Add('Mensagem : ' + RetCancelamento.MsgCanc);
              memoLog.Lines.Add('Sucesso  : ' + RetCancelamento.Sucesso);
              memoLog.Lines.Add('Link     : ' + RetCancelamento.Link);

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmCancelarNFSe), AErro, ACodErro, AErroCorrecao);
            end;

            if ACBrNFSeX1.Configuracoes.Geral.ConsultaAposCancelar and
               ACBrNFSeX1.Provider.ConfigGeral.ConsultaNFSe then
            begin
              with ConsultaNFSe do
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Método Executado: ' + MetodoToStr(Metodo));
                memoLog.Lines.Add('Parâmetros de Envio');
                memoLog.Lines.Add('Num. Ini. NFSe: ' + InfConsultaNFSe.NumeroIniNFSe);
                memoLog.Lines.Add('Num. Fin. NFSe: ' + InfConsultaNFSe.NumeroFinNFSe);
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Parâmetros de Retorno');
                memoLog.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

//                LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//                LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

                if Erros.Count > 0 then
                begin
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Erro(s):');
                  for i := 0 to Erros.Count -1 do
                  begin
                    memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                    memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                    memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                    memoLog.Lines.Add('---------');
                    ACodErro      := Erros[0].Codigo;
                    AErro         := Erros[0].Descricao;
                    AErroCorrecao := Erros[0].Correcao;
                  end;
                end;

                if Alertas.Count > 0 then
                begin
                  memoLog.Lines.Add(' ');
                  memoLog.Lines.Add('Alerta(s):');
                  for i := 0 to Alertas.Count -1 do
                  begin
                    memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                    memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                    memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                    memoLog.Lines.Add('---------');
                  end;
                end;
                GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(Metodo), AErro, ACodErro, AErroCorrecao);
              end;
            end;
          {$ENDREGION}
          end;

        tmSubstituirNFSe:
          begin
          {$REGION 'SubstituiNFSe'}
            with SubstituiNFSe do
            begin
              memoLog.Lines.Add('Método Executado: ' + MetodoToStr(tmSubstituirNFSe));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero da NFSe: ' + InfCancelamento.NumeroNFSe);
              memoLog.Lines.Add('Série da NFSe : ' + InfCancelamento.SerieNFSe);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Situação: ' + Situacao);
              memoLog.Lines.Add('Link    : ' + Link);
              memoLog.Lines.Add('Sucesso : ' + BoolToStr(Sucesso, True));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Retorno do Pedido de Cancelamento:');
              memoLog.Lines.Add('Situação : ' + RetCancelamento.Situacao);
              memoLog.Lines.Add('Data/Hora: ' + DateToStr(RetCancelamento.DataHora));
              memoLog.Lines.Add('Mensagem : ' + RetCancelamento.MsgCanc);
              memoLog.Lines.Add('Sucesso  : ' + RetCancelamento.Sucesso);
              memoLog.Lines.Add('Link     : ' + RetCancelamento.Link);

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, MetodoToStr(tmSubstituirNFSe), AErro, ACodErro, AErroCorrecao);
            end;
          {$ENDREGION}
          end;

        tmGerarLote:
          begin
          {$REGION 'Gerar'}
            with Gerar do
            begin
              memoLog.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Envio');
              memoLog.Lines.Add('Numero do Lote: ' + NumeroLote);
              memoLog.Lines.Add(' ');
              memoLog.Lines.Add('Parâmetros de Retorno');
              memoLog.Lines.Add('Nome Arquivo : ' + NomeArq);

//              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
//              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

              if Erros.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Erro(s):');
                for i := 0 to Erros.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Erros[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Erros[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Erros[i].Correcao);
                  memoLog.Lines.Add('---------');
                  ACodErro      := Erros[0].Codigo;
                  AErro         := Erros[0].Descricao;
                  AErroCorrecao := Erros[0].Correcao;
                end;
              end;

              if Alertas.Count > 0 then
              begin
                memoLog.Lines.Add(' ');
                memoLog.Lines.Add('Alerta(s):');
                for i := 0 to Alertas.Count -1 do
                begin
                  memoLog.Lines.Add('Código  : ' + Alertas[i].Codigo);
                  memoLog.Lines.Add('Mensagem: ' + Alertas[i].Descricao);
                  memoLog.Lines.Add('Correção: ' + Alertas[i].Correcao);
                  memoLog.Lines.Add('---------');
                end;
              end;
              GravaEventoChecarResposta('NFSe', NumeroLote, Protocolo, memoLog.Text, XmlEnvio, XmlRetorno, ModoEnvioToStr(ModoEnvio), AErro, ACodErro, AErroCorrecao);
            end;
          {$ENDREGION}
          end;

        tmAbrirSessao:
          begin
          end;

        tmFecharSessao:
          begin
          end;
      end;
    end;

{$REGION 'Codigo antigo comentado'}
    (*    if ACBrNFSeX1.WebService.Emite.xmlretorno <> '' then
        begin
          with ACBrNFSeX1.WebService.Emite do
          begin
            ShowMessage('REmite');
            AXMLRetorno    := XmlRetorno;
            AProtocolo     := Protocolo;
            ALote          := Lote;
          end;
        end;

        if ACBrNFSeX1.WebService.ConsultaSituacao.xmlretorno <> '' then
        begin
          with ACBrNFSeX1.WebService.ConsultaSituacao do
          begin
            ShowMessage('RConsultaSituacao');
            AXMLRetorno    := XmlRetorno;
            AProtocolo     := Protocolo;
            ALote          := Lote;
          end;
        end;

        if ACBrNFSeX1.WebService.ConsultaLoteRps.xmlretorno <> '' then
        begin
          with ACBrNFSeX1.WebService.ConsultaLoteRps do
          begin
            ShowMessage('RConsultaLoteRps');
            ATipo          := 'NFSe';
            AXMLRetorno    := XmlRetorno;
            ANFSe := ACBrNFSeX1.NotasFiscais.New.NFSe;
            ACBrNFSeX1.Provider.LerXml(AXMLRetorno, ANFSe);
            AProtocolo     := Protocolo;
            ALote          := Lote;
          end;
        end;

        if ACBrNFSeX1.WebService.ConsultaNFSeporRps.xmlretorno <> '' then
          ShowMessage('RConsultaNFSeporRps');
        if ACBrNFSeX1.WebService.ConsultaNFSe.xmlretorno <> '' then
          ShowMessage('RConsultaNFSe');
        if ACBrNFSeX1.WebService.CancelaNFSe.xmlretorno <> '' then
          ShowMessage('RCancelaNFSe');
        if ACBrNFSeX1.WebService.ConsultaNFSe.xmlretorno <> '' then
          ShowMessage('RConsultaNFSe');
        if ACBrNFSeX1.WebService.SubstituiNFSe.xmlretorno <> '' then
          ShowMessage('RSubstituiNFSe');
        if ACBrNFSeX1.WebService.Gerar.xmlretorno <> '' then
          ShowMessage('RGerar');

        if ACBrNFSeX1.WebService.Emite.XmlEnvio <> '' then
        begin
           ShowMessage('EEmite');
           AXMLEnvio    := ACBrNFSeX1.WebService.Emite.XmlEnvio;
        end;

        if ACBrNFSeX1.WebService.ConsultaSituacao.XmlEnvio <> '' then
          ShowMessage('EConsultaSituacao');
        if ACBrNFSeX1.WebService.ConsultaLoteRps.XmlEnvio <> '' then
        begin
          with ACBrNFSeX1.WebService.ConsultaLoteRps do
          begin
            ShowMessage('EConsultaLoteRps');
            if AXMLEnvio = '' then
              AXMLEnvio    := XmlEnvio;

            AProtocolo     := Protocolo;
            ALote          := Lote;
          end;
        end;

    //    if ACBrNFSeX1.WebService.ConsultaNFSeporRps.XmlEnvio <> '' then
    //      ShowMessage('EConsultaNFSeporRps');
    //    if ACBrNFSeX1.WebService.ConsultaNFSe.XmlEnvio <> '' then
    //      ShowMessage('EConsultaNFSe');
    //    if ACBrNFSeX1.WebService.CancelaNFSe.XmlEnvio <> '' then
    //      ShowMessage('ECancelaNFSe');
    //    if ACBrNFSeX1.WebService.ConsultaNFSe.XmlEnvio <> '' then
    //      ShowMessage('EConsultaNFSe');
    //    if ACBrNFSeX1.WebService.SubstituiNFSe.XmlEnvio <> '' then
    //      ShowMessage('ESubstituiNFSe');
    //    if ACBrNFSeX1.WebService.Gerar.XmlEnvio <> '' then
    //      ShowMessage('EGerar');
       *)
{$ENDREGION}
  //    Gravar na tabela Nota O Resumo da consulta   Deve ter o Protocolo Xml de XMLEnvio, XMLRetorno, Protocolo, Lote, Situação, Código de Verificação e Link (se tiver)
  //      TFrmNFSe.GravarXLMNFSe(ACBrNFSeX1, ACodVenda);   /// Salva a Nota De novo, agora era para ser o retorno

//    ANFSe := ACBrNFSeX1.NotasFiscais.
//    ACBrNFSeX1.Provider.LerXml(ANotaFiscal.FieldByName('ARQUIVO_XML_RETORNO').AsString, ANFSe);
//    NomeArq := ACBrNFSeX1.GetNumID(ANFSe);  // NomeArq := TACBrNFSeX(FAOwner).GetNumID(aNota.NFSe) + '-nfse.xml';
//    ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar + 'Notas' +



   {$REGION 'ProSilTecnologia'}
   //Provedor Atual : SilTecnologia
   //É Necessario colocar na pasta principal o arquivo:  ACBrNFSeXServicos.ini
   //Com as seguintes mudanças para cidade de ITAPEVI:
   //Versao=2.03   se não houver, adicionar a liha
   //ProRecepcionar=https://itapevi.siltecnologia.com.br/services/Abrasf23
   if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = proSilTecnologia) then
    begin
      with ACBrNFSeX1.WebService do
      begin
        case aMetodo of
          tmRecepcionar,
          tmTeste:
            begin
              with Emite do
              begin
                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie := '17';   //Necessario para encontrar a nota, pois o retorno não traz a serie
              end;
            end;

          tmConsultarNFSePorRps:
            begin
              with ConsultaNFSeporRps do
              begin
                //Funciona normalmente sem alterações
              end;
            end;

          tmConsultarLote:
            begin
              with ConsultaLoteRps do
              begin
                //Funciona normalmente sem alterações
              end;
            end;
        end;
      end;
    end;
   {$ENDREGION}

   //ROTINA COMPLETA DO EDUARDO PARA O SIAT(ARTLASER - GLEICE)
   {$REGION 'prosiat'}
    if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = prosiat) then
    begin
      with ACBrNFSeX1.WebService do
      begin
        case aMetodo of
          tmRecepcionarSincrono,
          tmConsultarLote:
          begin
            with ConsultaLoteRps do
            begin
              try
                Document := TACBrXmlDocument.Create;
                Document.LoadFromXml(ACBrNFSeX1.WebService.ConsultaLoteRPS.ArquivoRetorno);

                if ANode = nil then
                  ANode := Document.Root;

                //ListaNFSe
                AuxNode := ANode.Childrens.FindAnyNs('ListaNFSe');

                if not (AuxNode = nil) then
                begin
                  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Situacao := 0;
                  ACBrNFSeX1.NotasFiscais.Items[0].Confirmada := True;

                  //ChavesNFSeRPS > ChavesNFSeRPS
                  AuxNode := AuxNode.Childrens.FindAnyNs('ConsultaNFSe');

                  if AuxNode <> nil then
                  begin
                    ACBrNFSeX1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie := AuxNode.Childrens.FindAnyNs('SerieRPS').Content;
                    ACBrNFSeX1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero := AuxNode.Childrens.FindAnyNs('NumeroRPS').Content;
                    ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero := AuxNode.Childrens.FindAnyNs('NumeroNFe').Content;
                    ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := AuxNode.Childrens.FindAnyNs('CodigoVerificacao').Content;
                  end;

                  // Data de Competência
                  ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Competencia := ACBrNFSeX1.NotasFiscais.Items[0].NFSe.DataEmissao;

                  // O componente não retorna a propriedade NomeArq, que serve para fechar a tela do Checar.
                  ACBrNFSeX1.NotasFiscais.Items[0].NomeArq := ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar + ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero + '.xml';

                  // Gera o XML e sobescreve o atual
                  ACBrNFSeX1.NotasFiscais.Items[0].XmlNfse := ACBrNFSeX1.NotasFiscais.Items[0].GerarXML;
                  AXMLEnvio := ACBrNFSeX1.NotasFiscais.Items[0].XmlNFSe;
                end;
              finally
                FreeAndNil(Document);
              end;
            end;
          end;
        end;
      end;
    end;
   {$ENDREGION}

    {$REGION 'ActCon'}

    if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = proActcon) then
    begin
      QuerX := GeraFDQuery;
      try
        QuerX.SQL.Text := 'SELECT V.NF_OBSERVACAO_SERVICO FROM VENDA V WHERE V.CODIGO = :CODVENDA';
        QuerX.ParamByName('CodVenda').AsString := ACodVenda;
        QuerX.Open;

        ACBrNFSeX1.NotasFiscais[0].NFSe.OutrasInformacoes := QuerX.FieldByName('NF_OBSERVACAO_SERVICO').AsString;

      finally
        QuerX.Free;
      end;
    end;

    {$ENDREGION}



   {$REGION 'sigiss'}
    if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = prosigiss) then
    begin
      with ACBrNFSeX1.WebService do
      begin
        case aMetodo of
          tmRecepcionar:
          begin
            with ConsultaLoteRps do
            begin
              // Data de Competência
//              ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Competencia := ACBrNFSeX1.NotasFiscais.Items[0].NFSe.DataEmissao;

              // O componente não retorna a propriedade NomeArq, que serve para fechar a tela do Checar.
              ACBrNFSeX1.NotasFiscais.Items[0].NomeArq := ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar + ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero + '.xml';

              if ACBrNFSeX1.NotasFiscais.Items[0].NFse.NumeroLote = ACBrNFSeX1.WebService.Emite.NumeroLote then
              begin
                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero:= ACBrNFSeX1.WebService.Emite.NumeroNota;
                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Link  := ACBrNFSeX1.WebService.Emite.Link;
                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := ACBrNFSeX1.WebService.Emite.Protocolo;
                ACBrNFSeX1.NotasFiscais.Items[0].Confirmada := ACBrNFSeX1.WebService.Emite.Sucesso and (ACBrNFSeX1.WebService.Emite.Erros.Count = 0);
              end;

//              ACBrNFSeX1.NotasFiscais.Items[0].gerar := ACBrNFSeX1.NotasFiscais.Items[0].GerarNFSeIni;
              // Gera o XML e sobescreve o atual
//              ACBrNFSeX1.NotasFiscais.Items[0].XmlNfse := ACBrNFSeX1.NotasFiscais.Items[0].GerarXML;
//              AXMLEnvio := ACBrNFSeX1.NotasFiscais.Items[0].XmlNFSe;
            end;
          end;
        end;
      end;
    end;
   {$ENDREGION}



//    if (ACBrNFSeX1.Provider.ConfigGeral.Provedor = prosiat) then
//    begin
//      with ACBrNFSeX1.WebService do
//      begin
//        case aMetodo of
//          tmRecepcionarSincrono,
//          tmConsultarLote:
//          begin
//            with ConsultaLoteRps do
//            begin
//              try
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Endereco        := Empresa.FieldByName('ENDERECO').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Numero          := Empresa.FieldByName('NUMERO').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Complemento     := Empresa.FieldByName('COMPLEMENTO').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.Bairro          := Empresa.FieldByName('BAIRRO').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.CodigoMunicipio := Empresa.FieldByName('CODCIDADE').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.UF              := Empresa.FieldByName('UF').AsString;
//                ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Prestador.Endereco.CEP             := Empresa.FieldByName('CEP').AsString;
//
////                ACBrNFSeX1.NotasFiscais.Items[0].GravarXML;
//                ACBrNFSeX1.NotasFiscais.Items[0].XmlNfse := ACBrNFSeX1.NotasFiscais.Items[0].GerarXML;
//                AXMLEnvio := ACBrNFSeX1.NotasFiscais.Items[0].XmlNFSe;
//              finally
//
//              end;
//            end;
//          end;
//        end;
//      end;
//    end;







    TFrmNFse.GravaNotaFiscalEdit(ACBrNFSeX1, AXMLEnvio, ACodErro, AErro);

    for i := 0 to ACBrNFSeX1.NotasFiscais.Count -1 do
    begin
      memoLog.Lines.Add(' ');
      memoLog.Lines.Add('NFS-e Numero....: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Numero);
      memoLog.Lines.Add('Cod. Verificacao: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.CodigoVerificacao);
      memoLog.Lines.Add('Prestador.......: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Prestador.RazaoSocial);
      memoLog.Lines.Add('Tomador.........: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Tomador.RazaoSocial);

//      QuerX := GeraFDQuery;
//      QuerX.SQL.Text := 'SELECT * FROM NOTA_FISCAL_EVENTOS WHERE codigo = (SELECT MAX(codigo) FROM NOTA_FISCAL_EVENTOS) and (NF_LOTE = :Lote)';
//      QuerX.ParamByName('Lote').Value := ALote;
//      QuerX.Open;
//      Aqui Posso guardar os dados Consultados, Guardar na tabela Principal. Dizendo os dados da notaFiscal
//     NotaFiscal.Edit;

//      AStream := TMemoryStream.Create;
//      try
//        TBlobField(QuerX.FieldByName('ARQUIVO_XML_RETORNO')).SaveToStream(AStream);
//        ANFSe := TFrmNFSe.LerXMLRetorno(ACBrNFSeX1, AStream, ECodigo, EMensagem, ECorrecao);
//      finally
//        AStream.Free;
//        QuerX.Free;
//      end;
//      QuerX.Edit;
//      QuerX.FieldByName('NF_NUMERO').AsString := ANFSe.Numero;
//      QuerX.FieldByName('NF_LINK').AsString := ANFSe.Link;
//      QuerX.Post;


      if ACBrNFSeX1.NotasFiscais.Items[i].NomeArq <> '' then
      begin
        memoLog.Lines.Add('Nome do arquivo.: ' + ACBrNFSeX1.Configuracoes.Arquivos.GetPathNFSe() + '\' +
                                                 ACBrNFSeX1.NotasFiscais.Items[i].NomeArq);
        if ACBrNFSeX1.Configuracoes.Arquivos.Salvar then
          memoLog.Lines.Add('==> Xml da nota salvo na pasta e com o nome informado acima.')
        else
          memoLog.Lines.Add('==> Xml da nota não salvo em disco.');

        // Na propriedade XML temos o XML da NFS-e
        LoadXML(ACBrNFSeX1.NotasFiscais.Items[i].XMLNfse, WBXmlNotas);
      end
      else
        AguardaFormFechar(AForm.Form);
    end;
  finally
    AForm.Free;
  end;
end;

procedure TFrmNFSe.GravaEventoChecarResposta(ATipo, ALote, AProtocolo, ALog,
  AXMLEnvio, AXMLRetorno, AModoEnvio, AErro, ACodErro, ACorrecao : String);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX   := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from NOTA_FISCAL_EVENTOS ' +
                      'where (CODIGO = 0)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger                      := Trunc(GetProximoCodigoGen('CR_NOTA_FISCAL_EVENTOS'));
    QuerX.FieldByName('ARQUIVO_XML_ENVIO').AsString            := AXMLEnvio;
    QuerX.FieldByName('ARQUIVO_XML_RETORNO').AsString          := AXMLRetorno;
    QuerX.FieldByName('CODEMPRESA').AsInteger                  := Empresa.FieldByName('CODIGO').AsInteger;
    QuerX.FieldByName('TIPO').AsString                         := ATipo;
    QuerX.FieldByName('NF_LOTE').AsString                      := ALote;
    QuerX.FieldByName('NF_PROTOCOLO').AsString                 := AProtocolo;
    QuerX.FieldByName('ATIVO').AsString                        := 'S';
//    QuerX.FieldByName('NF_CHAVE').AsString                     := AChave;
//    QuerX.FieldByName('NF_NUMERO').AsInteger                   := ANumeroNota;
//    QuerX.FieldByName('NF_SERIE').AsInteger                    := ASerieNota;
//    QuerX.FieldByName('NF_ID_NOTA').AsInteger                  := AIdNota;
////    QuerX.FieldByName('NF_TIPO').AsString
//    QuerX.FieldByName('NF_LINK').AsString                      := ALink;
////    QuerX.FieldByName('NF_CNPJCPF_EMITENTE').AsString
////    QuerX.FieldByName('NF_AMBIENTE').AsString
////    QuerX.FieldByName('NF_RAZAOSOCIAL_EMITENTE').AsString
////    QuerX.FieldByName('NF_MANIFESTO').AsString
//    QuerX.FieldByName('NF_DT_EMISSAO').AsDateTime              :=AData;
////    QuerX.FieldByName('NF_TOTAL').AsString
//    QuerX.FieldByName('NF_SITUACAO').AsString                  :=ASituacao;
//    QuerX.FieldByName('NF_DESC_SITUACAO').AsString             :=ADescSituacao;
    QuerX.FieldByName('DT_RECEBIMENTO').AsString               := DataHoraSis;
//    QuerX.FieldByName('SUCESSO').AsBoolean                     :=ASucesso;
//    QuerX.FieldByName('NSU').AsString
//    QuerX.FieldByName('SCHEMA').AsString
//    QuerX.FieldByName('CODVENDA').Value                        := ACodigo;
    QuerX.FieldByName('NF_CODERRO').AsString                   := ACodErro;
    QuerX.FieldByName('NF_ERRO').AsString                      := AErro;
    QuerX.FieldByName('NF_CORRECAO').AsString                  := ACorrecao;
    QuerX.FieldByName('TIPO_OPERACAO').AsString                := AModoEnvio;
    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
  LoadXML(AXMLEnvio, WBXmlEnvio, 'temp1.xml');
  LoadXML(AXMLRetorno, WBXmlRetorno, 'temp2.xml');
end;

procedure TFrmNFSe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser; NomeArq: string);
begin
  try
    ACBrUtil.WriteToTXT(PathWithDelim(ExtractFileDir(application.ExeName)) + NomeArq,
                      AnsiString(RetWS), False, False);
    MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName)) + NomeArq);
  except   end;
  sleep(1000);
end;

end.
