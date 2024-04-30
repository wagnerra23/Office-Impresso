unit Utils.Boleto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows, Vcl.Controls, DateUtils, frxExportBaseDialog, frxExportPDF,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  uWeb, Classes.Boletos, System.TypInfo;


// Vai ficar isso tudo
procedure UtilsBoleto_ConfiguraCedente(AACBrBoleto: TACBrBoleto; AConta: TDataSet);
function  UtilsBoleto_ConfiguraBanco(const ACodBanco: Integer; const ACarteira, ACoopetariva, ATipoConvenio: string): TACBrTipoCobranca;

function UtilsBoleto_ConfiguraDemonstrativo(AQuerConta, AFinanceiro: TDataSet; APercDesconto: Double): String;
procedure UtilsBoleto_Titulo_ConfiguraDadosComPadraoDaConta(AQuerConta, AFinanceiro, ABoletos: TDataSet);

procedure UtilsBoleto_Titulo_Sacado(ATitulo : TACBrTitulo; ACodPessoa: String);
procedure UtilsBoleto_Titulo_ADD(AACBrBoleto : TACBrBoleto; AFinanceiro, ABoleto, AConta : TDataSet);
function  UtilsBoleto_Titulo_BuscaEnderecoCobranca(ACodPessoa: string): TEnderecoCobranca;
Function  UtilsBoleto_Titulo_BuscaEnderecoEmpresa(ACodEmpresa: Integer):String;


function UtilsBoleto_TrataTexto(ATexto: string): string;
procedure UtilsBoleto_BaixaLogo(AArquivoLogo : String);
function UtilsBoleto_LayoutSuportado(ABanco: Integer; ALayout: String): Boolean;
function UtilsBoleto_StrToTipoOcorrencia(ATipoOcorrencia: string): TACBrTipoOcorrencia;
function UtilsBoleto_GetNomeBoleto(ACodResponsavel, ARazaoSocial, ANossoNumero, ADocumento: string): string;
function UtilsBoleto_RetornaLinhaDigitavel(AACBrBoleto : TACBrBoleto):String;

function UtilsBoleto_NumeroDocumento(AACBrBoleto: TACBrBoleto; ATitulo: TACBrTitulo): string;

//SQL
function UtilsBoleto_ExtrairTempFR3: Boolean;

function UtilsBoleto_CodigoMora(ABancoNumero: Integer): String;
function UtilsBoleto_SeuNumero(ABancoNumero: Integer; ASeuNumero :String): string;
function UtilsBoleto_Documento(ABancoNumero: Integer; ADocumento :String): string;

implementation

Uses UnitFuncoes, Financeiro_Boleto, Aguarde, wrFuncoes, GeraEmailsBoletos, Email, ACBrBoletoFCFortesFr, ACBrBoletoFCFR,
  SQL.Contas, SQL.Financeiro_Boleto, SQL.Boleto, SQL.Arquivo_Relatorio, SQL.Pessoas;

function UtilsBoleto_NumeroDocumento(AACBrBoleto: TACBrBoleto; ATitulo: TACBrTitulo): string;
  function LRetiraZerosEsquerda(ANossoNr: string): string;
  begin
    while LeftStr(ANossoNr, 1) = '0' do
      Delete(ANossoNr, 1, 1);
    Result := Trim(ANossoNr);
  end;

  function LIsBancoIN(ABanco: Integer): Boolean;
  begin
    Result := False;
    case ABanco of
        1,
       85,
      136,
      748: Result := True;
    end;
  end;
var
  ANossoNumero, AConvenio, wNossoNumero, wCarteira : String;
  wTamNossoNum, ALenConvenio: Integer;
begin

  //Função para remover os dados adicionais contidos no campo NossoNumero do Banco do Brasil
  //Este banco adiciona alguns dados a esquerda do nosso numero.
  Result := ATitulo.NossoNumero;
  try
    //if not (ACBrBoleto1.Banco.Numero in [1, 85, 748]) then
    if not LIsBancoIN(AACBrBoleto.Banco.Numero) then
      Exit;

    AConvenio    := AACBrBoleto.Cedente.Convenio;
    ANossoNumero := IntToStr(StrToInt64(OnlyNumber(ATitulo.NossoNumero)));
    wNossoNumero := OnlyNumber(ATitulo.NossoNumero);
    ALenConvenio := Length(Trim(AConvenio));
    wCarteira    := Trim(ATitulo.Carteira);
    wTamNossoNum := 10;

    case AACBrBoleto.Banco.Numero of
      1:
        begin
          {$IFDEF ASSOCIACAO}
          //Ajustar, feito dessa forma porque a Transpocred, usando o BB, não utiliza o mesmo padrão do BB.
          Result := RightStr(ANossoNumero, 6);
          Exit;
          {$ENDIF}
          if AACBrBoleto.Cedente.Convenio = '' then
            raise EWRException.Create(ACBrStr('Banco do Brasil requer que o Convênio do Cedente seja informado.'));
          if ATitulo.Carteira = '' then
            raise EWRException.Create(ACBrStr('Banco do Brasil requer que a carteira seja informada antes do Nosso Número.'));

          if MatchStr(wCarteira, ['16', '18']) and (Length(Trim(wNossoNumero)) > 10) and (ALenConvenio = 6) then
            wTamNossoNum := 17
          else if (ALenConvenio <= 4) then
            wTamNossoNum := 7
          else if (ALenConvenio > 4) and (ALenConvenio <= 6) then
            wTamNossoNum := 5
          else if (ALenConvenio = 7) then
            wTamNossoNum := 10;

          if MatchStr(ATitulo.Carteira, ['16', '18']) and (ALenConvenio = 6) and (wTamNossoNum = 17) then
            Result := ANossoNumero
          else if ALenConvenio <= 4 then
            Result := RightStr(ANossoNumero, 7)
          else if (ALenConvenio > 4) and (ALenConvenio <= 6) then
            Result := RightStr(ANossoNumero, 5)
          else if (ALenConvenio = 7) then
            Result := RightStr(ANossoNumero, 10);
        end;
       85: Result := RightStr(ANossoNumero, 9);

      104: begin
             if ((Length(ANossoNumero) > 9) and (Copy(ANossoNumero, 1, 1) <> '9')) then
               Result := Copy(ATitulo.NumeroDocumento, 1, 15);
           end;

      136: Result := Copy(ANossoNumero, 1, Length(ANossoNumero) - 1); //Este banco manda junto o dígito verificador, aqui removemos

      //(Rodrigues)(OS17022016107)(23/02/2016) - reduzir o tamanho do numero do documento para caber no arquivo de remessa do bradesco.
      237:
      begin
        if Result.StartsWith('OS ', True) then
          Result := ATitulo.NumeroDocumento.Substring(10);
      end;

      77:     // Banco Inter
      begin
        Result := ATitulo.NumeroDocumento.Substring(10);
      end;

      748: Result := OnlyNumber(Copy(ANossoNumero, 4, ANossoNumero.Length - 4));
    end;
  finally
    Result := LRetiraZerosEsquerda(Result);
  end;
end;

function UtilsBoleto_LayoutSuportado(ABanco: Integer; ALayout: String): Boolean;
begin
  Result := True;
  case ABanco of
      1 : Result := MatchStr(ALayout, ['240', '400']);
      3 : Result := MatchStr(ALayout, ['240', '400']); //Banco da Amazonia
      4 : Result := MatchStr(ALayout, ['400']);
      8 : Result := MatchStr(ALayout, ['400']);
     21 : Result := MatchStr(ALayout, ['400']);
     33 : Result := MatchStr(ALayout, ['400']);
     41 : Result := MatchStr(ALayout, ['240', '400']);
     70 : Result := MatchStr(ALayout, ['400']);
     85 : Result := MatchStr(ALayout, ['400']); //240 é suportado mas não está homologado
     91 : Result := MatchStr(ALayout, ['400']);
    104 : Result := MatchStr(ALayout, ['240']);
    237 : Result := MatchStr(ALayout, ['400', '240']);
    341 : Result := MatchStr(ALayout, ['240', '400']);
    353 : Result := MatchStr(ALayout, ['400']);
    389 : Result := MatchStr(ALayout, ['400']);
    399 : Result := MatchStr(ALayout, ['400']);
    748 : Result := MatchStr(ALayout, ['240', '400']);
    756 : Result := MatchStr(ALayout, ['240', '400']);
  end;
end;

function UtilsBoleto_StrToTipoOcorrencia(ATipoOcorrencia: string): TACBrTipoOcorrencia;
begin
  for Result := Low(TACBrTipoOcorrencia) to High(TACBrTipoOcorrencia) do
  begin
    if ATipoOcorrencia = GetEnumName(TypeInfo(TACBrTipoOcorrencia), Integer(Result)) then
      Exit;
  end;
  Result := TACBrTipoOcorrencia.toRemessaRegistrar;
end;

procedure UtilsBoleto_BaixaLogo(AArquivoLogo : String);  // Isso aqui deve ficar no tratamento de erro depois que tentar imprimir
Var                                                      // Deve conter uma rota do tratamento de erro, Não no meio do código
  AArqLogoFS: TFileStream;                               // Não pode Ficar essa bosta aqui, pois o erro tem que ser tratado na tela e chamado esse rotina para resolver o erro de sistema
  AUrlLogo: string;                                      // Não pode ter o Aguarde aqui
  AErros: Integer;
begin
  //***ini***(Rodrigues)(OS02022016024)(08/03/2016) - Baixa o arquivo do logo do banco
  AErros := 1;
  while (ForceDirectories(ExtractFilePath(AArquivoLogo))) and
        (not FileExists(AArquivoLogo)) and
        (ExtractFileNameWithoutExt(AArquivoLogo).ToInteger > 0) and
        (ExtractFileNameWithoutExt(AArquivoLogo).ToInteger < 1000) do
  begin
    FrmAguarde := TFrmAguarde.Create(nil);
    AArqLogoFS := TFileStream.Create(AArquivoLogo, fmCreate);
    try
      FrmAguarde.Show;
      FrmAguarde.Mensagem := 'Baixando logo do banco, tentativa ' + AErros.ToString + ' de 3...';

      AUrlLogo :=  'http://microgrupo.com.br/wratualizacao/LogosBancos/' + ExtractFileName(AArquivoLogo);
      HttpToStream(AUrlLogo, AArqLogoFS);

      if AArqLogoFS.Size = 0 then
        FrmAguarde.Tag := -1;
    finally
      AArqLogoFS.Free;
      if (FrmAguarde.Tag = -1) then
      try
        DeleteFile(PWideChar(AArquivoLogo));
      except end;
      FrmAguarde.Free;
    end;
  end;
  //***fim***(Rodrigues)(OS02022016024)(08/03/2016) - Baixa o arquivo do logo do banco
end;

function UtilsBoleto_GetNomeBoleto(ACodResponsavel, ARazaoSocial, ANossoNumero, ADocumento: string): string;
  function TrataRazaoSocial(ANome: string): string;
  const
    ACharsInvalidos : string = ('\/?:><*/"|'); //Caracteres que não são suportados em nomes de arquivos para Windows
  var
    AChar : Char;
  begin
    Result := ANome;
    for AChar in ACharsInvalidos do
      Result := ReplaceStr(Result, AChar, '');
  end;
begin
  //Foi criado esta rotina para centralizar a obtensão do nome do arquivo PDF do boleto, pois se houver divergência
  //do nome em qualquer lugar no sistema, pode haver problemas ao anexar no email ou executar qualquer rotina automatizada
  Result := GetDirBoletos + {ACodResponsavel.Trim + ' - ' + }TrataRazaoSocial(ARazaoSocial.Trim) + ' - ' + ANossoNumero.Trim + ' - ' + TrataRazaoSocial(ADocumento.Trim) +'.pdf';
end;

function UtilsBoleto_TrataTexto(ATexto: string): string;     // OK, sem Raise, Então não da erro aqui
begin
  Result := Trim(ATexto);
  Result := RemoveAcento(Result);
  Result := AnsiUpperCase(Result);
  Result := StringReplace(Result, 'ª', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, 'º', '', [rfReplaceAll, rfIgnoreCase]);
end;

function UtilsBoleto_RetornaLinhaDigitavel(AACBrBoleto : TACBrBoleto):String;  // Isso deveria estar apenas na Homologoção do Boleto,
begin                                                                          // Não vi Usar em outro lugar
  try
    Result := AACBrBoleto.Banco.MontarLinhaDigitavel(AACBrBoleto.Banco.MontarCodigoBarras(AACBrBoleto.ListadeBoletos[0]), AACBrBoleto.ListadeBoletos[0]);
  except
    on E:Exception do
    begin
      raise Exception.Create('Informações do Cedente incompletas.' + sLineBreak +
                      'Verifique os campos Nome, Conta, Dígito da Conta, Agência e Dígito da Agência' + sLineBreak +
                      E.Message);
    end;
  end;
end;

function UtilsBoleto_ExtrairTempFR3: Boolean;
var
  QuerX: TFDQuery;
begin
  QuerX := SQLArquivo_Relatorio_Boleto;
  try
    if not QuerX.IsEmpty then
    begin
      TBlobField(QuerX.Fields[0]).SaveToFile(GetDirTemp + 'Boleto.fr3');
      Result := True;
    end else
      Result := False;
  finally
    QuerX.Free;
  end;
end;

/// Isso aqui é do WS. chamando e pelo financeiro
function UtilsBoleto_CodigoMora(ABancoNumero: Integer): string;
begin
  Result := '';
  case ABancoNumero of
    77:     // Banco Inter
    begin
      Result := '1' ;  // Juros valor diario, Isso preenche o ACBR com a Opção Cobrar Diário
    end;
  end;
end;

function UtilsBoleto_Documento(ABancoNumero: Integer; ADocumento :String): string;
begin
  //(Rodrigues)(OS17022016107)(23/02/2016) - reduzir o tamanho do numero do documento para caber no arquivo de remessa do bradesco.
  Result := ADocumento;
  case ABancoNumero of
    237:
    begin
      if Result.StartsWith('OS ', True) then
        Result := ADocumento.Substring(10);
    end;

    77:     // Banco Inter
    begin
      Result := ADocumento.Substring(10);
    end;
  end;
end;


function UtilsBoleto_SeuNumero(ABancoNumero: Integer; ASeuNumero :String): string;
begin
  Result := ASeuNumero;
  case ABancoNumero of
    77:     // Banco Inter
    begin
      Result := Copy(ASeuNumero,1, 10);
    end;
  end;
end;

procedure UtilsBoleto_ConfiguraCedente(AACBrBoleto: TACBrBoleto; AConta: TDataSet);      //usa no WS
var
  AOk: Boolean; //Necessário para o parâmetro do StrToResponEmissao
  ACedente: TACBrCedente;
  ACodEmpresa: Integer;
  QuerEmpresa: TFDQuery;
begin
  ACedente := AACBrBoleto.Cedente;
  ACedente.CleanupInstance;
  try
    ACedente.ResponEmissao := ResponEmissaoStrToEnum(AOk, AConta.FieldByName('RESPONSAVEL_EMISSAO').AsString);
    ACedente.CaracTitulo   := CaracTituloStrToEnum(AConta.FieldByName('CARAC_TITULO').AsString);
    //Definição manual para o Tipo da Carteira, utilizado apenas para o Banco do Brasil.
    //Remover esta opção do sistema quando o ACBr corrigir. Carteira 17 com CaracTitulo 2, deve resultar no
    //Tipo da Carteira 7, mas resulta em 2 gerando problemas na homologação com o banco. Criado esta opção para
    //resolver esta questão
  {  if AConta.FieldByName('TIPO_CARTEIRA_MANUAL').AsString <> '' then
      Banco.BancoClass.TipoCarteira := AConta.FieldByName('TIPO_CARTEIRA_MANUAL').AsString[1];  }

    if AConta.FieldByName('TIPO_CNPJ').AsString = 'F' then
      ACedente.TipoInscricao := pFisica
    else
      ACedente.TipoInscricao := pJuridica;
    ACedente.CNPJCPF       := OnlyNumber(AConta.FieldByName('CNPJCPF').AsString);
//    if ATipoCabecalho = cbImpressao then
    ACedente.Nome          := UtilsBoleto_TrataTexto(AConta.FieldByName('NOME_CEDENTE').AsString);         // Isso aqui é um desastre, pois é uma regra de negócio que deveria estar no controler
    ACedente.Agencia       := AConta.FieldByName('AGENCIA').AsString;
    ACedente.AgenciaDigito := AConta.FieldByName('DIGITO_AG').AsString;
    ACedente.Conta         := AConta.FieldByName('CONTA').AsString;
    ACedente.ContaDigito   := AConta.FieldByName('DIGITO_CC').AsString;
    ACedente.CodigoCedente := AConta.FieldByName('CODIGO_CEDENTE').AsString;
    ACedente.Convenio      := AConta.FieldByName('CONVENIO').AsString;
    ACedente.Modalidade    := AConta.FieldByName('VARIACAO').AsString;
    ACedente.CodigoTransmissao := AConta.FieldByName('CODIGO_TRANSMISSAO').AsString;
    ACedente.DigitoVerificadorAgenciaConta := AConta.FieldByName('AGENCIA_CONTA_DV').AsString;  // troquei isso aqui    DIGITO_AG
    ACedente.TipoDocumento := TACBrTipoDocumento.Tradicional;

    // Por que isso aqui muda ???? Isso serve apenas para Arquivo, Eu acho até agora
    if MatchStr(AConta.FieldByName('CODBANCO').AsString, ['1', '237', '756']) and (AConta.FieldByName('COOPERATIVA').AsString = 'S') then  // Essa regra de negócio é dentro do cedente
    begin
      with AACBrBoleto do // Para a remessa quando é cooperativa, agencia e conta correte são da cooperativa
      begin
        ACedente.Agencia       := AConta.FieldByName('AGENCIA_COOPERATIVA').AsString;
        ACedente.AgenciaDigito := AConta.FieldByName('DIGITO_AG_COOPERATIVA').AsString;
        ACedente.Conta         := AConta.FieldByName('CONTA_COOPERATIVA').AsString;
        ACedente.ContaDigito   := AConta.FieldByName('DIGITO_CC_COOPERATIVA').AsString;
        ACedente.CodigoCedente := AConta.FieldByName('CODIGO_CEDENTE_COOPERATIVA').AsString;
        ACedente.Nome          := UtilsBoleto_TrataTexto(AConta.FieldByName('NOME_CEDENTE').AsString);
      end;
    end;

    {$IF Defined(ASSOCIACAO)}
    ACBrBoleto1.ImprimirMensagemPadrao := False; //As mensagens Padrões do ACBr podem ser utilizadas, verificar quando possível
    {$IFEND}

    //Pega a empresa da conta
    ACodEmpresa := AConta.FieldByName('CODEMPRESA').AsInteger;
    if ACodEmpresa = 0 then
      ACodEmpresa := Empresa.FieldByName('CODIGO').AsInteger; //Se não tem, usa a empresa ativa

    QuerEmpresa := GeraFDQuery;
    QuerEmpresa.Close;
    QuerEmpresa.SQL.Text := 'select E.*, C.DESCRICAO as CIDADE2 ' +
                      'from EMPRESA E ' +
                      'left join CIDADES C on (C.CODIGO = E.CODCIDADE) ' +
                      'where (E.CODIGO = :Cod)';
    QuerEmpresa.Params[0].AsInteger := ACodEmpresa;
    QuerEmpresa.Open;

//    if ATipoCabecalho in [cbRemessa, cbRetorno] then
    ACedente.Nome := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('RAZAOSOCIAL').AsString);
    ACedente.Bairro      := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('BAIRRO').AsString);
    ACedente.CEP         := OnlyNumberWR(QuerEmpresa.FieldByName('CEP').AsString);
    ACedente.Complemento := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('COMPLEMENTO').AsString);
    ACedente.UF          := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('UF').AsString);
    ACedente.NumeroRes   := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('NUMERO').AsString);
    ACedente.Logradouro  := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('ENDERECO').AsString);
    ACedente.Cidade      := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('CIDADE').AsString);
    if ACedente.Cidade = '' then
      ACedente.Cidade  := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('CIDADE2').AsString);
    if ACedente.Nome = '' then
      ACedente.Nome    := UtilsBoleto_TrataTexto(QuerEmpresa.FieldByName('FANTASIA').AsString);
    if ACedente.CNPJCPF = '' then
      ACedente.CNPJCPF := OnlyNumberWR(QuerEmpresa.FieldByName('CNPJCPF').AsString);
  finally
    QuerEmpresa.Free;
  end;
end;

function UtilsBoleto_ConfiguraBanco(const ACodBanco: Integer; const ACarteira, ACoopetariva, ATipoConvenio: string): TACBrTipoCobranca;
begin
  case ACodBanco of
      1 : begin
            if ACoopetariva = 'S' then
              Result := cobBancoDoBrasilSICOOB
            else
              Result := cobBancoDoBrasil;
          end;
      3 : Result := cobBancoDaAmazonia;
      4 : Result := cobBancoDoNordeste;
     21 : Result := cobBanestes;
     33, 353, 8 : Result := cobSantander;
     41 : Result := cobBanrisul;
     47 : Result := cobBanese;
     70 : Result := cobBRB;
     77 : Result := cobBancoInter;
     84 : Result := cobUniprimeNortePR;
     85 : Result := cobBancoCECRED;
     91 : Result := cobUnicredRS;
     97 : Result := cobCrediSIS;
     99 : Result := cobUniprime;
    104 : begin
            if Pos('SICOB', AnsiUpperCase(ACarteira)) > 0 then
              Result := cobCaixaSicob
            else
              Result := cobCaixaEconomica;
          end;
    133 : Result := cobBancoCresol;
    136 : begin
//              if Empresa.FieldByName('UF').AsString = 'SC' then    // Não usar mais essa merda, é antigo esse convenio com banco do Bradesco
//                Result := cobUnicredSC
//              else
//              if Empresa.FieldByName('UF').AsString = 'RS' then
//                Result := cobUnicredRS
//              else
             Result := cobUnicredES; //Tem que ser UnicreES, os outros Unicreds tem outro código de banco
          end;
    237 : begin //Adicionar carteira SICOB
            {if Coopetariva = 'S' then
              Result := cobUnicredRS//cobBancoUnicred
            else     }
            case BancoConvenioStrToEnum(ATipoConvenio) of
//                bcCresolSicoper: Result := cobBancoCresolSicoper;
              bcCresolCentral: Result := cobBancoCresolSCRS;
              bcUnicredSC:     Result := cobUnicredSC;
              bcPine:          Result := cobBancoPineBradesco;
              bcSafra:         Result := cobSafraBradesco;
              bcSICOOB:        Result := cobBradescoSICOOB;
              bcBic:           Result := cobBicBanco;
            else
              Result := cobBradesco;
            end;
          end;
    246 : Result := cobBancoABCBrasil;
    336 : Result := cobBancoC6;
    341 : Result := cobItau;
    389 : Result := cobBancoMercantil;
    399 : Result := cobHSBC;
    422 : Result := cobBancoSafra;
    643 : Result := cobBancoPine;
    707 : Result := cobDaycoval;
    745 : Result := cobCitiBank;
    748 : Result := cobSicred;
    756 : Result := cobBancoob;
  else
    Result := cobNenhum;
  end;
end;

procedure UtilsBoleto_Titulo_Sacado(ATitulo : TACBrTitulo; ACodPessoa: String);
Var
  ADadosSacado : TEnderecoCobranca;
begin

  ADadosSacado := UtilsBoleto_Titulo_BuscaEnderecoCobranca(ACodPessoa);
  ATitulo.Sacado.Bairro      := ADadosSacado.Bairro;       // QuerX.FieldByName('CORRESBAIRRO').AsString;
  ATitulo.Sacado.CEP         := ADadosSacado.CEP;          //OnlyNumber(QuerX.FieldByName('CORRESCEP').AsString);
  ATitulo.Sacado.Cidade      := ADadosSacado.Cidade;       // QuerX.FieldByName('CIDADE').AsString;
  ATitulo.Sacado.Complemento := ADadosSacado.Complemento;  // QuerX.FieldByName('CORRESCOMPLEMENTO').AsString;
  ATitulo.Sacado.Email       := ADadosSacado.Email;        // QuerX.FieldByName('EMAIL').AsString;
  ATitulo.Sacado.UF          := ADadosSacado.UF;           // QuerX.FieldByName('ESTADO').AsString;
  ATitulo.Sacado.Numero      := ADadosSacado.Numero;       // '';
  ATitulo.Sacado.Logradouro  := ADadosSacado.Endereco;     // QuerX.FieldByName('CORRESENDERECO').AsString;
  ATitulo.Sacado.NomeSacado  := ADadosSacado.Responsavel;  // AFinanceiro.FieldByName('RAZAOSOCIAL').AsString;
  ATitulo.Sacado.CNPJCPF     := ADadosSacado.CNPJCPF;      // OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
  if ADadosSacado.TipoPessoa = 'F' then
    ATitulo.Sacado.Pessoa := pFisica
  else if ADadosSacado.TipoPessoa = 'J' then
    ATitulo.Sacado.Pessoa := pJuridica
  else
    ATitulo.Sacado.Pessoa := pOutras;

//        if QuerX.FieldByName('TIPO').AsString      = 'F' then Pessoa := pFisica
//        else if QuerX.FieldByName('TIPO').AsString = 'J' then Pessoa := pJuridica
//        else                                                  Pessoa := pOutras;

{  if Assigned(FrmEmailEnvio) then
    FrmEmailEnvio.editTo.Text := ADadosSacado.Email; // QuerX.FieldByName('EMAIL').AsString;    }

// with Sacado do
//      begin
//        Bairro := UtilsBoleto_TrataTexto(ADadosSacado.Bairro);
//        CEP := ADadosSacado.CEP;
//        Cidade := UtilsBoleto_TrataTexto(ADadosSacado.Cidade);
//        Complemento := UtilsBoleto_TrataTexto(ADadosSacado.Complemento);
//        Email := ADadosSacado.Email;
//        UF := UtilsBoleto_TrataTexto(ADadosSacado.UF);
//        Numero := ADadosSacado.Numero;
//        Logradouro := UtilsBoleto_TrataTexto(ADadosSacado.Endereco);
//        NomeSacado := UtilsBoleto_TrataTexto(ADadosSacado.Responsavel);
//        CNPJCPF := ADadosSacado.CNPJCPF;
//        if ADadosSacado.TipoPessoa = 'F' then
//          Pessoa := pFisica
//        else if ADadosSacado.TipoPessoa = 'J' then
//          Pessoa := pJuridica
//        else
//          Pessoa := pOutras;
//      end;


end;

procedure UtilsBoleto_Titulo_ADD(AACBrBoleto : TACBrBoleto; AFinanceiro, ABoleto, AConta : TDataSet);  // Deve ter uma camada de regra de negócio, Onde tudo fica lá para validar
Var                                                         //FinanceiroBoletoHistorico
  ATitulo : TACBrTitulo;
begin
  ATitulo := AACBrBoleto.CriarTituloNaLista;

 {ATitulo.DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
  ATitulo.DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
  ATitulo.OcorrenciaOriginal.Tipo := toRemessaBaixar;
  ATitulo.Instrucao1        := padL(trim(edtInstrucoes1.Text),2,'0');
  ATitulo.Instrucao2        := padL(trim(edtInstrucoes2.Text),2,'0');}

  if ABoleto.FieldByName('ACEITE').AsString = 'S' then //ABOLETO
    ATitulo.Aceite := atSim
  else
    ATitulo.Aceite := atNao;
  ATitulo.LocalPagamento       := AConta.FieldByName('LOCAL_DE_PAGAMENTO').AsString;
  ATitulo.ValorDespesaCobranca := AConta.FieldByName('CUSTO_BOLETO').AsFloat;
  if AConta.FieldByName('CODBANCO').AsInteger = 104 then
    ATitulo.Carteira := ReplaceText(ABoleto.FieldByName('CARTEIRA').AsString, '-SICOB', '')   //ABOLETO
  else                                                                     // Não remover essa verificação
    ATitulo.Carteira := ABoleto.FieldByName('CARTEIRA').AsString;
  ATitulo.Mensagem.Text        := ABoleto.FieldByName('DEMONSTRATIVO').AsString; //ABoleto
  ATitulo.NossoNumero          := AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString;
  ATitulo.NumeroDocumento      := UtilsBoleto_Documento(AACBrBoleto.Banco.Numero, AFinanceiro.FieldByName('DOCUMENTO').AsString);
  ATitulo.CodigoMora           := UtilsBoleto_CodigoMora(AACBrBoleto.Banco.Numero);

  /// dessa
  ATitulo.SeuNumero            := UtilsBoleto_SeuNumero(AACBrBoleto.Banco.Numero, AFinanceiro.FieldByName('DOCUMENTO').AsString);



  ATitulo.DataDocumento        := AFinanceiro.FieldByName('EMISSAO').AsDateTime;
  ATitulo.DataProcessamento    := DataHoraSys;

  ATitulo.DataProtesto         := IncDay(AFinanceiro.FieldByName('VENCTO').AsDateTime, ABoleto.FieldByName('PROTESTO').AsInteger);
  ATitulo.Vencimento           := AFinanceiro.FieldByName('VENCTO').AsDateTime;

//    ATitulo.CodigoGeracao := '1';

  //DescricaoMotivoRejeicaoComando := '';
  //DescricaoOcorrenciaOriginal    := '';
  //MotivoRejeicaoComando          := '';
  //OcorrenciaOriginal             := '';

  ATitulo.EspecieDoc := ABoleto.FieldByName('ESPECIE').AsString;
  ATitulo.EspecieMod := 'R$';

  // MODIFICACAO PARA ENDEREÇODE COBRANÇA
//      QuerX.Close;
//      QuerX.SQL.Text := 'select E.*, C.DESCRICAO as CIDADE, C.UF as ESTADO ' +
//                        'from PESSOAS E ' +
//                        'left join CIDADES C on (C.CODIGO = E.CORRESCODCIDADE) ' +
//                        'where (E.CODIGO = :PESSOA_RESPONSAVEL_CODIGO)';
//      QuerX.Params[0].AsString := AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//      QuerX.Open;
  UtilsBoleto_Titulo_Sacado(ATitulo, AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);

  ATitulo.OcorrenciaOriginal.Tipo := UtilsBoleto_StrToTipoOcorrencia(ABoleto.FieldByName('TIPOOCORRENCIA').AsString);
  ATitulo.ValorDesconto           := AFinanceiro.FieldByName('DESCONTO').AsCurrency;
  // Aqui deve tratar o Desconto 1 e 2 e 3

  ATitulo.ValorDocumento          := AFinanceiro.FieldByName('TOTAL').AsCurrency;

  // Multa Gera tbm
  ATitulo.PercentualMulta         := AConta.FieldByName('MULTA').AsCurrency;    // Wagner Rocha estava  ABoleto troquei por QuerConta Erra vitta laranja.
  if ATitulo.PercentualMulta > 0 then
  begin
//    ATitulo.MultaValorFixo        := True;   // Valor fixo
    ATitulo.DataMulta             := IncDay(AFinanceiro.FieldByName('VENCTO').AsDateTime, AConta.FieldByName('TOLERANCIA').AsInteger);

    if ATitulo.DataMulta <= AFinanceiro.FieldByName('VENCTO').AsDateTime then
      ATitulo.DataMulta := IncDay(ATitulo.DataMulta);
  end;

  // Juro mora
  ATitulo.ValorMoraJuros      := RoundTo(ABoleto.FieldByName('JUROS_MORA').AsCurrency,-2);
  if ATitulo.ValorMoraJuros > 0 then
  begin
    ATitulo.DataMoraJuros     := IncDay(AFinanceiro.FieldByName('VENCTO').AsDateTime, AConta.FieldByName('TOLERANCIA').AsInteger);
    ATitulo.CodigoMoraJuros   := cjValorDia; // é isso aquimesmo, vem porcentagem do cadastro? caramba esquesito isso, deveria estar no boleto, assim perde o histórico

//    ATitulo.DataMoraJuros        := IncDay(AFinanceiro.FieldByName('VENCTO').AsDateTime, AConta.FieldByName('TOLERANCIA').AsInteger);
//    ATitulo.CodigoMulta          := cmPercentual;    // Troquei por valor fixo
  end;

  ATitulo.ValorOutrasDespesas := 0;
  ATitulo.ValorOutrosCreditos := 0;
  ATitulo.ValorAbatimento     := 0;
  ATitulo.ValorIOF            := 0;
end;

function UtilsBoleto_Titulo_BuscaEnderecoCobranca(ACodPessoa: string): TEnderecoCobranca;
var
  QuerX : TFDQuery;
begin
  QuerX := SQLPessoas_Endereco(ACodPessoa);
  try
    if not QuerX.IsEmpty then
    begin
      Result.Responsavel := StringReplace(QuerX.FieldByName('RAZAOSOCIAL').AsString, '#$A', '', [rfReplaceAll]);
      Result.CNPJCPF     := OnlyNumberWR(QuerX.FieldByName('CNPJCPF').AsString);
      Result.TipoPessoa  := QuerX.FieldByName('TIPO').AsString;

      if (QuerX.FieldByName('CORRESENDERECO').AsString = '') or (QuerX.FieldByName('CORRESBAIRRO').AsString = '') or
         (QuerX.FieldByName('CORRESCIDADE').AsString = '') or (QuerX.FieldByName('CORRESUF').AsString = '') or
         (QuerX.FieldByName('CORRESCEP').AsString = '') then
      begin
        Result.Endereco    := RemoveAcento(QuerX.FieldByName('ENDERECO').AsString);
        Result.Numero      := RemoveAcento(QuerX.FieldByName('NUMERO').AsString);
        Result.Cidade      := RemoveAcento(QuerX.FieldByName('CIDADE2').AsString);  //  existe o campo cidade então cidade2
        Result.Bairro      := RemoveAcento(QuerX.FieldByName('BAIRRO').AsString);
        Result.UF          := QuerX.FieldByName('ESTADO').AsString;
        Result.CEP         := OnlyNumberWR(QuerX.FieldByName('CEP').AsString);
        Result.Complemento := RemoveAcento(QuerX.FieldByName('COMPLEMENTO').AsString);
      end else
      begin
        Result.Endereco    := RemoveAcento(QuerX.FieldByName('CORRESENDERECO').AsString);
        Result.Numero      := '';
        Result.Cidade      := RemoveAcento(QuerX.FieldByName('CORRESCIDADE').AsString);
        Result.Bairro      := RemoveAcento(QuerX.FieldByName('CORRESBAIRRO').AsString);
        Result.UF          := QuerX.FieldByName('CORRESESTADO').AsString;
        Result.CEP         := OnlyNumberWR(QuerX.FieldByName('CORRESCEP').AsString);
        Result.Complemento := RemoveAcento(QuerX.FieldByName('CORRESCOMPLEMENTO').AsString);
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

Function UtilsBoleto_Titulo_BuscaEnderecoEmpresa(ACodEmpresa: Integer):String;
var
  AQuerX: TFDQuery;
begin
  AQuerX := GeraFDQuery;
  try
    AQuerX.SQL.Text := 'select E.*, C.DESCRICAO as CIDADE ' + 'from EMPRESA E ' + 'left join CIDADES C on E.CODCIDADE = C.CODIGO ' +
      'where E.CODIGO = :CODIGO ';

    if ACodEmpresa <> 0 then
      AQuerX.ParamByName('CODIGO').AsInteger := ACodEmpresa
    else
      AQuerX.ParamByName('CODIGO').AsInteger := StrToIntDef(EmpresaAtiva,1);

    AQuerX.Open;
    Result := 'Endereço do Beneficiário: ' + sLineBreak + 'Endereço: ' + AQuerX.FieldByName('ENDERECO').AsString + '  Número: ' +
      AQuerX.FieldByName('NUMERO').AsString + sLineBreak + 'Bairo: ' + AQuerX.FieldByName('BAIRRO').AsString + '  Cidade: ' + AQuerX.FieldByName('CIDADE')
      .AsString + '/ ' + AQuerX.FieldByName('UF').AsString + '  CEP: ' + AQuerX.FieldByName('CEP').AsString;
  finally
    AQuerX.Free;
  end;
end;

procedure UtilsBoleto_Titulo_ConfiguraDadosComPadraoDaConta(AQuerConta, AFinanceiro, ABoletos: TDataSet);
begin
  // Novos ABoletos sempre serão emitidos pela conta principal, nunca pela vinculada

//        Isso aqui não precisa mais pois agora é só registrado
 { CbBoletoCarteira.Properties.Items.Clear;
  if QuerConta.FieldByName('CARTEIRA').AsString <> '' then
    CbBoletoCarteira.Properties.Items.Add(QuerConta.FieldByName('CARTEIRA').AsString);
  if QuerConta.FieldByName('VARIACAO').AsString <> '' then
    CbBoletoCarteira.Properties.Items.Add(QuerConta.FieldByName('VARIACAO').AsString);   }

  ABoletos.FieldByName('TIPO').AsString            := 'Boleto';
  ABoletos.FieldByName('ACEITE').AsString          := 'N';
  ABoletos.FieldByName('CODBANCO').AsInteger       := AQuerConta.FieldByName('CODBANCO').AsInteger;
  ABoletos.FieldByName('JUROS_MORA').AsCurrency    := (AFinanceiro.FieldByName('Total').AsFloat * AQuerConta.FieldByName('JUROS').AsFloat) / 100;
  ABoletos.FieldByName('DIADESCONTO').AsFloat      := AQuerConta.FieldByName('DIADESCONTO').AsInteger;
  ABoletos.FieldByName('MULTA').AsCurrency         := (AFinanceiro.FieldByName('Total').AsFloat * AQuerConta.FieldByName('MULTA').AsFloat) / 100;
  ABoletos.FieldByName('PROTESTO').AsString        := AQuerConta.FieldByName('PROTESTO').AsString;
  ABoletos.FieldByName('CARTEIRA').AsString        := AQuerConta.FieldByName('CARTEIRA').AsString;
  ABoletos.FieldByName('BAIXA_DEVOLUCAO').AsString := AQuerConta.FieldByName('BAIXA_DEVOLUCAO').AsString;
  ABoletos.FieldByName('TIPOOCORRENCIA').AsString  := 'toRemessaRegistrar';
  ABoletos.FieldByName('ATIVO').AsString           := 'S';
  if AQuerConta.FieldByName('ESPECIE').AsString <> '' then
    ABoletos.FieldByName('ESPECIE').AsString := AQuerConta.FieldByName('ESPECIE').AsString
  else
    ABoletos.FieldByName('ESPECIE').AsString := 'OU';
  if AQuerConta.FieldByName('TEM_WS').AsString = 'S' then
    ABoletos.FieldByName('PODE_IMPRIMIR').AsString := 'N'
  else
    ABoletos.FieldByName('PODE_IMPRIMIR').AsString := 'S';

  ABoletos.FieldByName('PODE_ENVIAR').AsString := 'S';
end;

function UtilsBoleto_ConfiguraDemonstrativo(AQuerConta, AFinanceiro: TDataSet; APercDesconto: Double): String;
Var
  ADemonstrativo: TStringList;
  AValorDesconto: Double;
  ADesconto : String;
begin
  ADemonstrativo := TStringList.Create;
  try
    if (AQuerConta.FieldByName('PROTESTO').AsFloat <> 0) then
      ADemonstrativo.Add(AQuerConta.FieldByName('MENSAGEM_PROTESTO').AsString);

    if (AQuerConta.FieldByName('MULTA').AsFloat <> 0) then
      ADemonstrativo.Add(AQuerConta.FieldByName('MENSAGEM_MULTA').AsString);

    if AQuerConta.FieldByName('JUROS').AsFloat <> 0 then
      ADemonstrativo.Add(AQuerConta.FieldByName('MENSAGEM_JUROS').AsString);

    ADemonstrativo.Add(AQuerConta.FieldByName('DEMONSTRATIVO').AsString);
    if (AFinanceiro.FieldByName('CODPLANOCONTAS').AsString <> '') and (AQuerConta.FieldByName('IMPR_PLANO_DE_CONTAS').AsString <> 'N') then
      ADemonstrativo.Add(Procura('descricao','PLANOCONTAS',AFinanceiro.FieldByName('CODPLANOCONTAS').AsString));    //EdtPlanoContasÎPlanoContasÎDESCRICAO.Caption


    if AQuerConta.FieldByName('IMPR_HISTORICO_PARCELA').AsString <> 'N' then
      ADemonstrativo.Add(AFinanceiro.FieldByName('HISTORICO').AsString);

    ADesconto := '';
    if not IsZero(APercDesconto) then
    begin
      AValorDesconto := RdT(PercValor(AFinanceiro.FieldByName('Total').AsFloat, APercDesconto), -2);
      ADesconto      := FormatFloat(DECIMAL_2M, AValorDesconto);
      ADemonstrativo.Add(AQuerConta.FieldByName('MENSAGEM_DESCONTO').AsString);
    end;

    // if ADiasDesconto > 0 then
    // begin
    // ABoletoTexto := 'Desconto que será dado caso o boleto seja pago até ';
    // if ADiasDesconto > 0 then
    // ABoletoTexto :=  ABoletoTexto + IntToStr(ADiasDesconto) + ' dia(s) antes da '
    // else
    // ABoletoTexto :=  ABoletoTexto + 'a';
    // ABoletoTexto := ABoletoTexto + ' data de vencimento';
    // ADemonstrativo.Add(ABoletoTexto);
    // end;

    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$NotaFiscal$',      AFinanceiro.FieldByName('NOTAFISCAL').AsString);
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$Endereco$',        UtilsBoleto_Titulo_BuscaEnderecoEmpresa(AQuerConta.FieldByName('CODEMPRESA').AsInteger));    // Funcção aqui
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$Protesto$',        AQuerConta.FieldByName('PROTESTO').AsString);
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$ProtestoAPartir$', FormatDateTime('DD/MM/YYYY', AFinanceiro.FieldByName('VENCTO').AsDateTime));
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$Multa$',           'R$ ' + FormatCurr('##,##0.00', (AFinanceiro.FieldByName('Total').AsFloat * AQuerConta.FieldByName('MULTA').AsFloat) / 100));
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$MultaAPartir$',    FormatDateTime('DD/MM/YYYY', AFinanceiro.FieldByName('VENCTO').AsDateTime));
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$Juros$',           'R$ ' + FormatCurr('##,##0.00', (AFinanceiro.FieldByName('Total').AsFloat * AQuerConta.FieldByName('JUROS').AsFloat) / 100));
    ADemonstrativo.Text := ReplaceText(ADemonstrativo.Text, '$Desconto$',        ADesconto);


    Result:= Trim(ADemonstrativo.Text);
  finally
    ADemonstrativo.Free;
  end;

end;

{$REGION 'Antigo'}

(*
// Geração e Impressão de Boletos
procedure SemUso_ImprimirGerarPDFBoletosDireto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);


procedure ControllerInternoBoletoFinanceiro_GeraNossoNumero(AFinanceiro, ABoletos: TDataSet);

// Email
procedure UtilsBoleto_EmailsEnviarBoleto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet; AEnviarDireto: Boolean);
procedure UtilsBoleto_EmailsGerarPDFBoletos(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);
procedure UtilsBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);
procedure UtilsBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);

function  UtilsBoleto_GeraMemDadosBoleto(ADadosBoletos: TBoletosEmail; ADataSetFinanceiro, ADataSetBoletos: TDataSet): TFDMemTable;
function  UtilsBoleto_RetonaListaBoletosSelecionados(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;

// Isso aqui WS do Inter


function UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro :TDataSet): TFDMemTable;
function UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;


function UtilsBoleto_RetonaListaBoletosSelecionados(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;
Var
  I:Integer;
begin
  Result:= TList<Integer>.Create;
  with cxGridFinanceiro.Controller do
  begin
    for I := 0 to SelectedRecordCount - 1 do
    begin
      with SelectedRecords[I] do
      begin
        if VarToStrDef(Values[cxGridFinanceiro.GetColumnByFieldName('TIPOPAGTO').Index], '') <> 'BOLETO' then      // Aqui verificar se o banco inter ja foi Registrado
        begin
          Result.Clear;
          raise Exception.Create('Um ou mais lançamentos selecionados não são do tipo "BOLETO".');
        end;
        Result.Add(RecordIndex); //cxGrid_Financeiro.Controller.SelectedRecords[I].RecordIndex;
      end;
    end;
  end;
end;


procedure UtilsBoleto_ListaBoletosGera_Pendentes (AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AListaRecords : TList<Integer>; AFinanceiro, ABoleto: TDataSet);
var
  AFrmAguarde: TFrmAguarde;
  ALinhaDigitavel: string;
  I: Integer;
begin
  if (AListaRecords.Count =0) then
    raise Exception.Create('Não há boletos Selecionados');

//  (ShowMessageWR('Há ' + AListaRecords.Count.ToString + ' boletos pendentes para ' +
//  'serem gerados. Deseja gerar estes boletos antes de gerar o Email em Massa?', MB_ICONQUESTION) = mrYes) then
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Gerando Boletos..';
    AFrmAguarde.ProgressoMaximo := AListaRecords.Count;
//      Imprimir_Direto := 'Email';
    for I := 0 to AListaRecords.Count - 1 do
    begin
      try
        cxGridFinanceiro.DataController.ChangeFocusedRecordIndex(AListaRecords[I]);
        ControllerInternoBoletoFinanceiro_GeraNossoNumero(AFinanceiro, ABoleto);                               // VerificaBoleto(AListaRecords[I], 'Email' );
        ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel); // Aqui gera o Número ou Registra WS
        AACBrBoleto.GerarPDF;
//          ImprimirBolClick(nil);           // Só pode clicar no imprimirbol se tiver permissão
        // Aqui tem que commitar      Comit Obrigatório
      except
        on E: Exception do
        begin
          if not(E is EAbort) then
            raise;
        end;
      end;
      AFrmAguarde.AvancarProgresso;
    end;
  finally
    AFrmAguarde.Free;
  end;
end;

procedure UtilsBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);
var
  AListaRecords: TList<Integer>;
  FSelecao_Financeiro: TFDMemTable;
begin
  AListaRecords := UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro);
  try
    UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto,cxGridFinanceiro, AListaRecords, AFinanceiro, ABoleto);   // Imprime tudo que esta pendente

    FSelecao_Financeiro := UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro, AFinanceiro);
    if FSelecao_Financeiro.RecordCount = 0 then
      raise Exception.Create('Selecione os boletos para Gerar Email em massa');
    try
      TFrmGeraEmailsBoletos.AbrirFromSelecaoFinanceiro(FSelecao_Financeiro);
    finally
      FSelecao_Financeiro.Free;
    end;
  finally
    AListaRecords.Free;
  end;
end;

procedure UtilsBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);
var
  AListaRecords: TList<Integer>;
  FSelecao_Financeiro: TFDMemTable;
begin
  AListaRecords := UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro);
  try
    UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto,cxGridFinanceiro, AListaRecords, AFinanceiro, ABoleto);   // Imprime tudo que esta pendente

    FSelecao_Financeiro := UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro, AFinanceiro);
    if FSelecao_Financeiro.RecordCount = 0 then
      raise Exception.Create('Não possui Boletos a serem gerados.');
    try
      TFrmGeraEmailsBoletos.AbrirFromFinanceiro(ADataFiltro, AItemIndex);
    finally
      FSelecao_Financeiro.Free;
    end;
  finally
    AListaRecords.Free;
  end;
end;

function UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;
Var
  I:Integer;
begin
  Result := TList<Integer>.Create;
  for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
  begin
    if (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('TIPO').Index, '') = 'A RECEBER')   and
       (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('TIPOPAGTO').Index, '') = 'BOLETO') and
       (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('BOLETO_NOSSO_NR').Index, '') = '') then
      Result.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
  end;
end;

function UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro :TDataSet): TFDMemTable;
var
  I: Integer;
begin
  Result := TFDMemTable.Create(nil);
  Result.CopyDataSet(AFinanceiro, [coStructure]);
  Result.Open;
  for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
  begin
    with cxGridFinanceiro.DataController do
    begin
      ChangeFocusedRecordIndex(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
      Result.Append;
      Result.CopyRecord(AFinanceiro);
      Result.Post;
    end;
  end;
end;


class function TDMBoletos.GeraNossoNumero(ACodConta: Integer; ACarteira :String): string; // Função restrita
var
  QuerX : TFDQuery;
  ACampo : String;
  AProxNumero : Double;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from CONTAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodConta;
    QuerX.Open;
    if ACarteira = QuerX.FieldByName('VARIACAO').AsString then
      ACampo := 'PROXIMO_NUMERO_VARIACAO'
    else
      ACampo := 'PROXIMO_NUMERO_CARTEIRA';
    AProxNumero := Math.Max(QuerX.FieldByName(ACampo).AsFloat, 1);

    QuerX.Close;
    QuerX.SQL.Text := 'update CONTAS set ' + ACampo + ' = :ProxNum ' +
                      'where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsInteger   := ACodConta;
    QuerX.ParamByName('ProxNum').AsFloat := AProxNumero + 1;
    QuerX.ExecSQL;
    ATransa.Commit;
    Result := FloatToStr(AProxNumero);
  finally
    QuerX.Free;
  end;
end;

class function TDMBoletos.Verifica_BancoGeraNossoNumero(ACodBanco: Integer): Boolean;   //    Rotina central
begin
  if ACodBanco = 77 then
    Result := False
  else
  if ACodBanco = 1 then
  begin
//    Gera o numero e registra o boleto, marca o aOK como true
//    RegistrarBoletoWS_ConBoleto
  end else
    Result := True;
end;

class function TDMBoletos.FormataLinhaDigitavel(const ALinhaDigitavel: string): string;
begin
  Result := OnlyNumberWR(ALinhaDigitavel);
  if Length(Result) <> 47 then
  begin
    ShowMessageWR('Linha Digitável Inválida');
    Exit;
  end;

  Result := Copy(Result, 1, 5) + '.' +
            Copy(Result, 6, 5) + ' ' +
            Copy(Result, 11, 5) + '.' +
            Copy(Result, 16, 6) + ' ' +
            Copy(Result, 22, 5) + '.' +
            Copy(Result, 27, 6) + ' ' +
            Copy(Result, 33, 1) + ' ' +
            Copy(Result, 34, 14);
end;

*)
{$ENDREGION}



end.

