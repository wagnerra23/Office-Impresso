unit Classes.Boletos;

interface

uses
  Classes, Data.DB, IBX.IBDatabase, FireDAC.Comp.Client, FireDAC.Stan.Param, wrConversao, Generics.Collections,
  System.SysUtils, UCBase;

type
  TTipoCabecalhoBoleto = (cbImpressao, cbRemessa, cbRetorno);
  TModoImpressaoBoleto = (mibMostrarPreview, mibImprimirDireto, mibApenasPDF);

  TBoletoTipoArquivo = (btaRemessa, btaRetorno);
  TBoletoTipoArquivoHelper = record helper for TBoletoTipoArquivo
  public
    function Codigo: string;
    function Descricao: string;
    class function GetFromCodigo(ACodigo: string): TBoletoTipoArquivo; static;
  end;

  TBoletoTeste = record
    CaminhoArquivo: string;
    LinhaDigitavel: string;
    FinCodigo: Integer;
    FinCodPedido: string;
    FinCodEmpresa: string;
  end;

  //Classes de agrupamento de boletos para envio de email
  TBoletoTagsMensagem = record
    Codigo: Integer;
    CodPedido: string;
    CodEmpresa: string;
    NotaFiscal : string;
    Documento : string;
    NossoNumero : string;
    Historico : string;
    Vencto : string;
    Valor : string;
  end;

  TBoletosEmail = class
  private
    FEmail : string;
    FPDFBoletos: TStringList;
    FMensagemEmail: Tlist<TBoletoTagsMensagem>;
    FMensagemPadrao: string;
    FCodPessoa: string;
    FCodConta: Integer;
    FCodEmpresa: string;
    FEmailAssunto: string;
    FEmailCodModelo: Integer;
    procedure SetEmail(const Value: string);
//    FOrdensServicos: TStringList;
//    FNotasFiscais: TStringList;
  public
    property Email: string read FEmail write SetEmail;
    property CodPessoa: string read FCodPessoa write FCodPessoa;
    property CodConta: Integer read FCodConta write FCodConta;
    property CodEmpresa: string read FCodEmpresa write FCodEmpresa;
    property EmailAssunto: string read FEmailAssunto write FEmailAssunto;
    property EmailCodModelo: Integer read FEmailCodModelo write FEmailCodModelo;
    property PDFBoletos: TStringList read FPDFBoletos;
//    property NotasFiscais: TStringList read FNotasFiscais;
//    property OrdensServicos: TStringList read FOrdensServicos;
    property MensagemEmail: Tlist<TBoletoTagsMensagem> read FMensagemEmail write FMensagemEmail;
    //property MensagemPadrao : string read FMensagemPadrao write FMensagemPadrao;
    procedure EnviarEmail;
    constructor Create;
    destructor Destroy; override;
  end;

  TListaBoletosEmail = class
  private
    FLista: TObjectList<TBoletosEmail>;
    function GetItems(Index: Integer): TBoletosEmail;
  public
    property Items[Index: Integer]: TBoletosEmail read GetItems; default;
    procedure Add(ABoletoEmail: TBoletosEmail);
    procedure EnviarEmails;
    function GetBoletosEmail(AEmail, ACodPessoa: string; ACodConta: Integer; ACodEmpresa: string): TBoletosEmail;
    function BuscaByEmail(AEmail: string): TBoletosEmail;
    function BuscaByResponsavel(ACodResponsavel: string): TBoletosEmail;
    function Count: Integer;
    constructor Create;
    destructor Destroy; override;
    class function TrataEnderecoEmail(AEmail: string): string;
  end;
  

{$REGION '////////////////////////// BOLETOS /////////////////////////////////'}

  TStringArray = array of string;

  TDadosBoletoTeste = record
    Carteira: string;
    Variacao: string;
    TamConvenio: Integer;
    TamNossoNum: Integer;

    //Número sequencial para cada tipo de convênio ou cooperativa possível em cada banco
    //É tratado em cada classe de banco
    ModeloConvenio: Integer;
  end;

  TBoletoBuscaConfigValoresTeste = record
    Carteira: string;
    Convenio: string;
    ConvenioDigito: string;
    Variacao: string;
    NossoNumero: string;
    CodigoCedente: string;
    DigitoAgencia: string;
  end;

  TBoletoBuscaConfigBanco = class abstract
  private
    FLinhaDigitavel : string;
    function Carteiras: TArray<string>; virtual;
    function Variacoes: TArray<string>; virtual;
    function TamanhosConvenio: TArray<Integer>; virtual;
    function TamanhosNossoNumero: TArray<Integer>; virtual;
    function ModelosConvenio: TArray<Integer>; virtual;

    function GetLD(APos, ACount: Integer): string;
    function GetPossibilidades(ACarteiras: TArray<string>; ATamsConvenio: TArray<Integer>;
      ATamsNossNum: TArray<Integer>; AModelosConvenio: TArray<Integer>; AVariacoes: TArray<string>): TList<TDadosBoletoTeste>; virtual;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; virtual; abstract;
  public
    function GeraValoresTeste(ALinhaDigitavel: string): TList<TBoletoBuscaConfigValoresTeste>;
  end;

  TBoletoBuscaConfigBancoClass = class of TBoletoBuscaConfigBanco;

  TBoletoBuscaConfigBancoCEF = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function TamanhosNossoNumero: TArray<Integer>; override;
    function ModelosConvenio: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoBB = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function Variacoes: TArray<string>; override;
    function TamanhosConvenio: TArray<Integer>; override;
    function TamanhosNossoNumero: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoBradesco = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function TamanhosNossoNumero: TArray<Integer>; override;
    function Variacoes: TArray<string>; override;
    function ModelosConvenio: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoItau = class(TBoletoBuscaConfigBanco)
  private
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoSantander = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function Variacoes: TArray<string>; override;
    function ModelosConvenio: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoSicredi = class(TBoletoBuscaConfigBanco)
  private
    function Variacoes: TArray<string>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoSicoob = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function Variacoes: TArray<string>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoCecred = class(TBoletoBuscaConfigBanco)
  private
    function Carteiras: TArray<string>; override;
    function Variacoes: TArray<string>; override;
    function TamanhosConvenio: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;

  TBoletoBuscaConfigBancoBanrisul = class(TBoletoBuscaConfigBanco)
  private
//    function Carteiras: TArray<string>; override;
//    function Variacoes: TArray<string>; override;
//    function TamanhosConvenio: TArray<Integer>; override;
    function PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste; override;
  end;
{$ENDREGION}  

implementation

uses
  StrUtils, UnitFuncoes, Variants, IniFiles;

{ TBoletosEmail }

constructor TBoletosEmail.Create;
begin
  inherited Create;
  FPDFBoletos := TStringList.Create;
  FMensagemEmail := Tlist<TBoletoTagsMensagem>.Create;
//  FOrdensServicos := TStringList.Create;
//  FOrdensServicos.Sorted := True;//:= True; Duplicates := dupIgnore;
//  FNotasFiscais := TStringList.Create;
//  FNotasFiscais.Sorted := True; //Duplicates := dupIgnore;
end;

destructor TBoletosEmail.Destroy;
begin
//  FNotasFiscais.Free;
//  FOrdensServicos.Free;
  FMensagemEmail.Free;
  FPDFBoletos.Free;
  inherited;
end;

procedure TBoletosEmail.EnviarEmail;
var
  ASendIni : TIniFile;
  AEncriptado, ASecao : string;
  AID : TGUID;
begin
  if Self.Email = '' then
    Exit;
  ASendIni := TIniFile.Create(GetDirSistema + 'Mensagem.ini');
  try
    CreateGUID(AID);
    ASecao := GUIDToString(AID);
    ASendIni.WriteString(ASecao, 'Destino', Self.Email);
    ASendIni.WriteString(ASecao, 'Assunto', 'Boletos');
    AEncriptado := String(UCBase.Encrypt(AnsiString(Self.PDFBoletos.Text), 5));
    ASendIni.WriteString(ASecao, 'Anexo', AEncriptado);
    AEncriptado := String(UCBase.Encrypt(AnsiString('teste conteúdo'), 5));
    ASendIni.WriteString(ASecao, 'Conteudo', AEncriptado);
  finally
    ASendIni.Free;
  end;
end;

procedure TBoletosEmail.SetEmail(const Value: string);
begin
  FEmail := TListaBoletosEmail.TrataEnderecoEmail(Value);
end;

{ TListaBoletosEmail }

procedure TListaBoletosEmail.Add(ABoletoEmail: TBoletosEmail);
begin
  FLista.Add(ABoletoEmail);
end;

function TListaBoletosEmail.Count: Integer;
begin
  Result := FLista.Count;
end;

constructor TListaBoletosEmail.Create;
begin
  inherited Create;
  FLista := TObjectList<TBoletosEmail>.Create;
end;

destructor TListaBoletosEmail.Destroy;
begin
  FLista.Free;
  inherited;
end;

procedure TListaBoletosEmail.EnviarEmails;
var
  i : Integer;
begin
  for I := 0 to FLista.Count - 1 do
    FLista[i].EnviarEmail;
end;

function TListaBoletosEmail.GetBoletosEmail(AEmail, ACodPessoa: string; ACodConta: Integer; ACodEmpresa: string): TBoletosEmail;
var
  I : Integer;
begin
  Result := nil;
  if Trim(AEmail) = '' then
    Exit;
  for I := 0 to FLista.Count - 1 do
  begin
    if (FLista[i].Email = TrataEnderecoEmail(AEmail)) and
       (FLista[i].CodPessoa = ACodPessoa) and
       (FLista[i].CodConta = ACodConta) and
       (FLista[i].CodEmpresa = ACodEmpresa) then
      Result := FLista[i];
  end;
end;

function TListaBoletosEmail.BuscaByEmail(AEmail: string): TBoletosEmail;
var
  I: Integer;
begin
  Result := nil;
  if Trim(AEmail) = '' then
    Exit;
  for I := 0 to FLista.Count - 1 do
  begin
    if (FLista[i].Email = TListaBoletosEmail.TrataEnderecoEmail(AEmail)) then
    begin
      Result := FLista[i];
      Exit;
    end;
  end;
end;

function TListaBoletosEmail.BuscaByResponsavel(ACodResponsavel: string): TBoletosEmail;
var
  I: Integer;
begin
  Result := nil;
  if Trim(ACodResponsavel) = '' then
    Exit;
  for I := 0 to FLista.Count - 1 do
  begin
    if (FLista[i].CodPessoa = ACodResponsavel) then
    begin
      Result := FLista[i];
      Exit;
    end;
  end;
end;

function TListaBoletosEmail.GetItems(Index: Integer): TBoletosEmail;
begin
  Result := FLista[Index];
end;

class function TListaBoletosEmail.TrataEnderecoEmail(AEmail: string): string;
begin
  Result := ReplaceStr(AEmail, ' ', '');
  Result := AnsiLowerCase(Result);
end;

{ TBoletoTipoArquivoHelper }

function TBoletoTipoArquivoHelper.Codigo: string;
begin
  case Self of
    btaRemessa: Result := 'REMESSA';
    btaRetorno: Result := 'RETORNO';
  end;
end;

function TBoletoTipoArquivoHelper.Descricao: string;
begin
  case Self of
    btaRemessa: Result := 'Remessa';
    btaRetorno: Result := 'Retorno';
  end;
end;

class function TBoletoTipoArquivoHelper.GetFromCodigo(ACodigo: string): TBoletoTipoArquivo;
begin
  for Result := Low(TBoletoTipoArquivo) to High(TBoletoTipoArquivo) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := btaRemessa;
end;


{$REGION '////////////////////////// BOLETOS /////////////////////////////////'}
  ///  SEÇÃO 1: BOLETOS - Funções que de configuração do boletos ///////////////////////////////////////////////////////

{ TBoletoBuscaConfigBancoClass }

function TBoletoBuscaConfigBanco.Carteiras: TArray<string>;
begin
  //Implementado nas classes
  Result := [''];
end;

function TBoletoBuscaConfigBanco.GeraValoresTeste(ALinhaDigitavel: string): TList<TBoletoBuscaConfigValoresTeste>;
var
  APossibilidades : TList<TDadosBoletoTeste>;
  i : Integer;
begin
  Result := TList<TBoletoBuscaConfigValoresTeste>.Create;
  FLinhaDigitavel := ALinhaDigitavel;
  APossibilidades := GetPossibilidades(Carteiras, TamanhosConvenio, TamanhosNossoNumero, ModelosConvenio, Variacoes);
  try
    for I := 0 to APossibilidades.Count - 1 do
      Result.Add(PreencheValores(APossibilidades[i]));
  finally
    APossibilidades.Free;
  end;
end;

function TBoletoBuscaConfigBanco.GetLD(APos, ACount: Integer): string;
begin
  Result := Copy(FLinhaDigitavel, APos, ACount);
end;

function TBoletoBuscaConfigBanco.GetPossibilidades(ACarteiras: TArray<string>; ATamsConvenio,
  ATamsNossNum: TArray<Integer>; AModelosConvenio: TArray<Integer>; AVariacoes: TArray<string>): TList<TDadosBoletoTeste>;
var
  I, J, K, N, L : Integer;
  ADadosBoleto : TDadosBoletoTeste;
begin
  Result := TList<TDadosBoletoTeste>.Create;
  for I := 0 to High(ACarteiras) do
  begin
    for J := 0 to High(ATamsConvenio) do
    begin
      for K := 0 to High(ATamsNossNum) do
      begin
        for N := 0 to High(AModelosConvenio) do
        begin
          for L := 0 to High(AVariacoes) do
          begin
            ADadosBoleto.Carteira       := ACarteiras[I];
            ADadosBoleto.TamConvenio    := ATamsConvenio[J];
            ADadosBoleto.TamNossoNum    := ATamsNossNum[K];
            ADadosBoleto.ModeloConvenio := AModelosConvenio[N];
            ADadosBoleto.Variacao       := AVariacoes[L];
            Result.Add(ADadosBoleto);
          end;
        end;
      end;
    end;
  end;
end;

function TBoletoBuscaConfigBanco.ModelosConvenio: TArray<Integer>;
begin
  //Implementado nas classes
  Result := [0];
end;

function TBoletoBuscaConfigBanco.TamanhosConvenio: TArray<Integer>;
begin
  //Implementado nas classes
  Result := [0];
end;

function TBoletoBuscaConfigBanco.TamanhosNossoNumero: TArray<Integer>;
begin
  //Implementado nas classes
  Result := [0];
end;

function TBoletoBuscaConfigBanco.Variacoes: TArray<string>;
begin
  //Implementado nas classes
  Result := [''];
end;

{ TBoletoBuscaConfigBancoCEF }

function TBoletoBuscaConfigBancoCEF.Carteiras: TArray<string>;
begin                                                  //ajustar o uso do Sicob, tratar de outra forma não usando a carteira
  Result := ['CS', 'CC', 'TD', 'CR', 'SR', 'RG', 'DE', 'CS-SICOB', 'CC-SICOB', 'TD-SICOB', 'CR-SICOB', 'SR-SICOB', 'RG-SICOB', 'DE-SICOB'];
end;

function TBoletoBuscaConfigBancoCEF.ModelosConvenio: TArray<Integer>;
begin
  Result := [0, 1];
end;

function TBoletoBuscaConfigBancoCEF.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  inherited;
  if APossibilidade.ModeloConvenio = 0 then
  begin
    //SIGCB
    Result.Convenio    := GetLD(5, 5) + GetLD(11, 1);
    Result.NossoNumero := GetLD(13, 3) + GetLD(17, 3) + GetLD(22, 9);
  end else
  begin
    //SICOB
    Result.Convenio    := GetLD(15, 6) + GetLD(22, 1) + GetLD(6, 4); // GetLD(24, 8);
    Result.NossoNumero := GetLD(15, 1) + GetLD(17, 3) + GetLD(22, 10); //GetLD(5, 5) + GetLD(11, 5);
  end;
  Result.CodigoCedente := Result.Convenio;
  Result.Carteira      := APossibilidade.Carteira;
  if APossibilidade.TamNossoNum > 0 then
    Result.NossoNumero := RightStr(Result.NossoNumero, APossibilidade.TamNossoNum);
end;

function TBoletoBuscaConfigBancoCEF.TamanhosNossoNumero: TArray<Integer>;
begin
  Result := [0, 8, 14, 15];
end;

{ TBoletoBuscaConfigBancoBB }

function TBoletoBuscaConfigBancoBB.Carteiras: TArray<string>;
begin
  Result := ['', GetLD(30, 2), '17', '11', '31', '51', '12', '15',  '18', '19'];
end;

function TBoletoBuscaConfigBancoBB.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  inherited;
  Result.Carteira      := GetLD(30, 2);
//  Result.Convenio      := APossibilidade.TamConvenio;
  if APossibilidade.TamConvenio in [1,2,3,4]  then
  begin
    Result.CodigoCedente := GetLD(12, 5) + GetLD(17, 2);
    Result.NossoNumero   := GetLD(25, 5);
  end;
  if APossibilidade.TamConvenio = 5  then
  begin
    Result.CodigoCedente := GetLD(12, 5) + GetLD(17, 2);
    Result.NossoNumero   := GetLD(25, 5);
  end;
  if APossibilidade.TamConvenio = 6  then
  begin
    Result.CodigoCedente := GetLD(12, 5) + GetLD(17, 2);
    Result.NossoNumero   := GetLD(25, 5);
  end;
  if APossibilidade.TamConvenio = 7  then
  begin
    Result.CodigoCedente := GetLD(12, 5) + GetLD(17, 2);
    Result.NossoNumero   := FloatToStr(StrToFloat(GetLD(25, 5)));
  end;
  Result.Convenio      := Result.CodigoCedente

 {  if (Length(trim(NossoNumero)) > 10) and
      (((wTamConvenio = 6) and ((wCarteira = '16') or (wCarteira = '18'))) or
      ((wTamConvenio = 7) and (wCarteira = '18'))) then
      Result:= 17
   else if (wTamConvenio <= 4) then
      Result := 7
   else if ((wTamConvenio > 4) and (wTamConvenio < 6)) or
           ((wTamConvenio = 6) and ((wCarteira = '12') or (wCarteira = '15') or
            (wCarteira = '17') or (wCarteira = '18'))) then
      Result := 5
   else if (wTamConvenio = 6) then
      Result := 11
   else if (wTamConvenio = 7) then
      Result := 10;     }

end;

function TBoletoBuscaConfigBancoBB.TamanhosConvenio: TArray<Integer>;
begin
  Result := [1,2,3,4,5,6,7];
end;

function TBoletoBuscaConfigBancoBB.TamanhosNossoNumero: TArray<Integer>;
begin
  Result := [0];
end;

function TBoletoBuscaConfigBancoBB.Variacoes: TArray<string>;
begin
  Result := ['0'];
end;

{ TBoletoBuscaConfigBancoItau }

function TBoletoBuscaConfigBancoItau.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  inherited;
  Result.Convenio       := GetLD(8, 2) + GetLD(11, 6);
  Result.ConvenioDigito := GetLD(17, 1);
  Result.Carteira       := GetLD(5, 3);
  Result.NossoNumero    := GetLD(8, 2) + GetLD(11, 6);
end;

{ TBoletoBuscaConfigBancoBradesco }

function TBoletoBuscaConfigBancoBradesco.Carteiras: TArray<string>;
begin
  Result := ['', '09'];
end;

function TBoletoBuscaConfigBancoBradesco.ModelosConvenio: TArray<Integer>;
begin
  Result := [0, 1];
end;

function TBoletoBuscaConfigBancoBradesco.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  //Há a possibilidade de ter que fazer duas variações para este banco. Ex: Unicred
  Result.NossoNumero := GetLD(12, 9) + GetLD(22, 2);
  Result.Variacao    := APossibilidade.Variacao;

  if APossibilidade.Carteira <> '' then
    Result.Carteira := APossibilidade.Carteira
  else if APossibilidade.ModeloConvenio = 1 then
    Result.Carteira := GetLD(9, 1) + GetLD(11, 1)
  else
    Result.Carteira := '0' + GetLD(9, 1) + GetLD(11, 1);

  if APossibilidade.ModeloConvenio = 1 then
    Result.Convenio := '4950705'; //Número fixo do convênio CRESOL Sicoper
end;

function TBoletoBuscaConfigBancoBradesco.TamanhosNossoNumero: TArray<Integer>;
begin
  Result := [0, 11];
end;

function TBoletoBuscaConfigBancoBradesco.Variacoes: TArray<string>;
begin
  Result := ['', '17'];
end;

{ TBoletoBuscaConfigBancoSantander }

function TBoletoBuscaConfigBancoSantander.Carteiras: TArray<string>;
begin
  Result := [GetLD(29, 3), '4', '5', '6', '101'];
end;

function TBoletoBuscaConfigBancoSantander.ModelosConvenio: TArray<Integer>;
begin
  Result := [0, 1, 2];
end;

function TBoletoBuscaConfigBancoSantander.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  Result.NossoNumero   := GetLD(14, 7) + GetLD(22, 5);
  Result.Variacao      := APossibilidade.Variacao;
  Result.Carteira      := APossibilidade.Carteira;
  if APossibilidade.ModeloConvenio in [0, 2] then
    Result.CodigoCedente := GetLD(6, 4) + GetLD(11, 3);
  if APossibilidade.ModeloConvenio in [1, 2] then
    Result.Convenio := GetLD(6, 4) + GetLD(11, 3);
end;

function TBoletoBuscaConfigBancoSantander.Variacoes: TArray<string>;
begin
  Result := ['', '101', '201', '102'];
end;

{ TBoletoBuscaConfigBancoSicredi }

function TBoletoBuscaConfigBancoSicredi.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  Result.Carteira      := '1';
  Result.DigitoAgencia := GetLD(22, 2);
  Result.Variacao      := APossibilidade.Variacao;
  Result.CodigoCedente := GetLD(24, 5);
  Result.Convenio      := GetLD(24, 5);
  Result.NossoNumero   := GetLD(11, 5);
  //Convenio é obrigatório e não vem na Linha Digitável
end;

function TBoletoBuscaConfigBancoSicredi.Variacoes: TArray<string>;
begin
  Result := ['', '1', '3'];
end;

{ TBoletoBuscaConfigBancoSicoob }

function TBoletoBuscaConfigBancoSicoob.Carteiras: TArray<string>;
begin
  Result := [GetLD(5, 1), '1'];
end;

function TBoletoBuscaConfigBancoSicoob.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  Result.Carteira       := APossibilidade.Carteira;
  Result.Variacao       := APossibilidade.Variacao;
  Result.CodigoCedente  := GetLD(13, 7);
  Result.Convenio       := GetLD(13, 6);
  Result.ConvenioDigito := GetLD(19, 1);
  Result.NossoNumero    := GetLD(20, 1) + GetLD(22, 6); //O último dígito do nosso número é ignorado por ser um DV.
end;

function TBoletoBuscaConfigBancoSicoob.Variacoes: TArray<string>;
begin
  Result := ['', GetLD(11, 2), '01'];
end;

{ TBoletoBuscaConfigBancoCecred }

function TBoletoBuscaConfigBancoCecred.Carteiras: TArray<string>;
begin
  Result := ['', GetLD(30, 2), '01', '11', '12', '15', '17', '31', '51'];
end;

function TBoletoBuscaConfigBancoCecred.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  Result.Convenio := GetLD(5, 5) + GetLD(11, 1);
  Result.Carteira := APossibilidade.Carteira;
  Result.Variacao := APossibilidade.Variacao;
  Result.CodigoCedente := GetLD(12, 8);
//  if APossibilidade.TamConvenio > 0 then
//    Result.CodigoCedente := RightStr(Result.CodigoCedente, APossibilidade.TamConvenio);
  Result.NossoNumero := GetLD(20, 1) + GetLD(22, 8);
end;

function TBoletoBuscaConfigBancoCecred.TamanhosConvenio: TArray<Integer>;
begin
  Result := [0];// [0, 6, 7, 8];
end;

function TBoletoBuscaConfigBancoCecred.Variacoes: TArray<string>;
begin
  Result := Carteiras;
end;

{ TBoletoBuscaConfigBancoBanrisul }

function TBoletoBuscaConfigBancoBanrisul.PreencheValores(APossibilidade: TDadosBoletoTeste): TBoletoBuscaConfigValoresTeste;
begin
  Result.NossoNumero   := GetLD(19, 2) + GetLD(22, 6);
  Result.CodigoCedente := GetLD(12, 7);
end;
{$ENDREGION}

end.
