unit Controller.Interno.Boleto.WS;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils;


// WebService
procedure UtilsBoletoWS_CarregaParametrosAutenticacao(AACBrBoleto: TACBrBoleto; ACodConta :Integer);
function ControllerContas_GeraNossoNumeroAtravesdoRegistroNoWS(AACBrBoleto: TACBrBoleto; AFinanceiro, AConta, ABoleto: TDataSet):String;
function ControllerBoletoWS_Retorno(AACBrBoleto: TACBrBoleto; AConta :TDataSet): Integer;
function ControllerBoletoWS_Retorno_E_Busca(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Boolean;

implementation

Uses UnitFuncoes, Classes.WR, ACBrBoletoConversao,
   SQL.Boleto, SQL.Financeiro_boleto, SQL.Contas,
   Services.Boleto.WS, Services.Boleto.Arquivo,
   Utils.Boleto;

function ControllerContas_GeraNossoNumeroAtravesdoRegistroNoWS(AACBrBoleto: TACBrBoleto; AFinanceiro, AConta, ABoleto: TDataSet):String;     //  AFinanceiro, AConta, ABoleto: TDataSet; ADadosSacados: TEnderecoCobranca):String;
Var
  AListaDeErros: String;
  I : Integer;
begin
  Result:='';
  // 1- Primeiro verifica se tem Remessa do dia em aberto,
  // 2- Cria se não tiver inclui o boleto lá
  // 3- Gera a remessa de envio de registro
  // 4- Retorna o numero e coloca no boleto

  // Aqui deve saber se tem boletos a serem gerados

  // Confere a autenticação e se ela ainda esta válida
  UtilsBoletoWS_CarregaParametrosAutenticacao(AACBrBoleto, AConta.FieldByName('CODIGO').AsInteger);

  // Descobre qual conta e convenio banco
//  QuerConta := BoletoUtils_CarregaConta(AConta.FieldByName('CODIGO').AsInteger, AConta.FieldByName('CODBANCO').AsInteger);
  AACBrBoleto.Banco.TipoCobranca:=UtilsBoleto_ConfiguraBanco(AConta.FieldByName('CODBANCO').AsInteger,
                                                          AConta.FieldByName('CARTEIRA').AsString,
                                                          AConta.FieldByName('COOPERATIVA').AsString,
                                                          AConta.FieldByName('TIPO_CONVENIO').AsString);

  // gera o cabeçalho da empresa
  UtilsBoleto_ConfiguraCedente(AACBrBoleto, AConta);

  // Inclui os boletos na lista
  AACBrBoleto.ListadeBoletos.Clear;

  UtilsBoleto_Titulo_ADD(AACBrBoleto, AFinanceiro, ABoleto, AConta);     /// Rotina que registrao Item

  // Envia
  AACBrBoleto.Configuracoes.WebService.Operacao := tpInclui;
  AACBrBoleto.Enviar;      // <<< retorna como false se o httpresult code for diferente de 200,201,202


  // Trata o retorno
  if AACBrBoleto.TotalListaRetornoWeb > 0 then
    Result := AACBrBoleto.ListaRetornoWeb[0].DadosRet.TituloRet.NossoNumero;

  AListaDeErros :='';
  if AACBrBoleto.ListaRetornoWeb[0].ListaRejeicao.Count > 0 then
  begin
    AListaDeErros :='Lista de erros no boleto:'+ sLineBreak;
    for I := 0 to AACBrBoleto.ListaRetornoWeb[0].ListaRejeicao.Count -1 do
      AListaDeErros:= AListaDeErros + AACBrBoleto.ListaRetornoWeb[0].ListaRejeicao[i].Mensagem + sLineBreak;
  end;

  if AListaDeErros<>'' then
    raise Exception.Create(AListaDeErros);
//    AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString :=
//    AFinanceiro.FieldByName('PODE_ENVIAR').AsString     := 'N';
//  end;
//  Result:= AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString;

{$REGION 'Antigo'}
//  SLRemessa := TStringList.Create;
//  try
//    for i:= 0 to Pred(Boleto.TotalListaRetornoWeb) do
//    begin
//      //Ler todos os campos da classe Retorno
//      SLRemessa.Add('Cod_Retorno='+ Boleto.ListaRetornoWeb[i].CodRetorno + sLineBreak +
//                    'Msg_Retorno='+ Boleto.ListaRetornoWeb[i].MsgRetorno + sLineBreak +
//                    'Ori_Retorno='+ Boleto.ListaRetornoWeb[i].OriRetorno + sLineBreak +
//                    'HTTP_Result='+ IntToStr(Boleto.ListaRetornoWeb[i].HTTPResultCode) + sLineBreak +
//                    'JSON='+ Boleto.ListaRetornoWeb[i].JSON);
//       for j:= 0 to Pred(Boleto.ListaRetornoWeb[i].ListaRejeicao.Count) do
//       begin
//         SLRemessa.Add('[Rejeicao'   +IntToStr(j)+']' + sLineBreak +
//                       'Campo='      + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Campo + sLineBreak +
//                       'Codigo='     + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Codigo + sLineBreak +
//                       'Versao='     + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Versao + sLineBreak +
//                       'Mensagem='   + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Mensagem + sLineBreak +
//                       'Ocorrencia=' + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Ocorrencia + sLineBreak +
//                       'Valor='      + Boleto.ListaRetornoWeb[i].ListaRejeicao[j].Valor + sLineBreak );
//       end;
//
//       SLRemessa.Add('HEADER'          + sLineBreak +
//                   'Versao='           + Boleto.ListaRetornoWeb[i].Header.Versao + sLineBreak +
//                   'Autenticacao='     + Boleto.ListaRetornoWeb[i].Header.Autenticacao + sLineBreak +
//                   'Usuario_Servico='  + Boleto.ListaRetornoWeb[i].Header.Usuario_Servico + sLineBreak +
//                   'Usuario='          + Boleto.ListaRetornoWeb[i].Header.Usuario + sLineBreak +
//                   'Operacao='         + TipoOperacaoToStr(Boleto.ListaRetornoWeb[i].Header.Operacao) + sLineBreak +
//                   'Indice='           + IntToStr(Boleto.ListaRetornoWeb[i].Header.Indice) + sLineBreak +
//                   'Sistema_Origem='   + Boleto.ListaRetornoWeb[i].Header.Sistema_Origem + sLineBreak +
//                   'Agencia='          + IntToStr(Boleto.ListaRetornoWeb[i].Header.Agencia) + sLineBreak +
//                   'ID_Origem='        + Boleto.ListaRetornoWeb[i].Header.Id_Origem + sLineBreak +
//                   'Data_Hora='        +FormatDateTime('dd/mm/yyyy hh:nn:ss',Boleto.ListaRetornoWeb[i].Header.Data_Hora) + sLineBreak +
//                   'ID_Processo='      + Boleto.ListaRetornoWeb[i].Header.Id_Processo + sLineBreak +
//                   'DADOS'             + sLineBreak +
//                   'Excessao='         +Boleto.ListaRetornoWeb[i].DadosRet.Excecao + sLineBreak +
//                   'CONTROLE_NEGOCIAL' + sLineBreak +
//                   'Origem_Retorno='   + Boleto.ListaRetornoWeb[i].DadosRet.ControleNegocial.OriRetorno + sLineBreak +
//                   'NSU='              + Boleto.ListaRetornoWeb[i].DadosRet.ControleNegocial.NSU + sLineBreak +
//                   'Cod_Retorno='      + Boleto.ListaRetornoWeb[i].DadosRet.ControleNegocial.CodRetorno + sLineBreak +
//                   'Msg_Retorno='      + Boleto.ListaRetornoWeb[i].DadosRet.ControleNegocial.Retorno + sLineBreak +
//                   'COMPROVANTE'       + sLineBreak +
//                   'Data='             +  FormatDateTime('dd/mm/yyyy', Boleto.ListaRetornoWeb[i].DadosRet.Comprovante.Data) + sLineBreak +
//                   'Hora='             +  Boleto.ListaRetornoWeb[i].DadosRet.Comprovante.Hora + sLineBreak +
//                   'ID_BOLETO'         + sLineBreak +
//                   'Codigo_Barras='    + Boleto.ListaRetornoWeb[i].DadosRet.IDBoleto.CodBarras + sLineBreak +
//                   'Linha_Digitavel='  + Boleto.ListaRetornoWeb[i].DadosRet.IDBoleto.LinhaDig + sLineBreak +
//                   'Nosso_Numero='     + Boleto.ListaRetornoWeb[i].DadosRet.IDBoleto.NossoNum + sLineBreak +
//                   'URL='              + Boleto.ListaRetornoWeb[i].DadosRet.IDBoleto.URL + sLineBreak +
//                   'CONSULTA_BOLETO'   + sLineBreak +
//                   'Numero_Documento=' + Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.NumeroDocumento + sLineBreak +
//                   'Data_Vencimento='  + FormatDateTime('dd/mm/yyyy',Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.Vencimento) + sLineBreak +
//                   'Valor='            + CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorDocumento) + sLineBreak
//                    );
//      if NaoEstaVazio(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.CodBarras) then
//      begin
//       SLRemessa.Add('TITULO_RETORNO'            + sLineBreak  +
//        'vencimento_titulo='                     +FormatDateTime('dd/mm/yyyy',Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.Vencimento)+ sLineBreak +
//        'tipo_carteira_titulo='                  +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.Carteira+ sLineBreak +
//        'nosso_numero='                          +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.NossoNumero+ sLineBreak +
//        'seu_numero='                            +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.SeuNumero+ sLineBreak +
//        'especie='                               +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.EspecieDoc+ sLineBreak +
//        'codigo_barras='                         +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.CodBarras+ sLineBreak +
//        'numero_linha_digitavel='                +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.LinhaDig+ sLineBreak +
//        'local_pagamento='                       +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.Mensagem.Text+ sLineBreak +
//        'data_processamento='                    +FormatDateTime('dd/mm/yyyy',Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.DataProcessamento)+ sLineBreak +
//        'data_emissao='                          +FormatDateTime('dd/mm/yyyy',Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.DataDocumento)+ sLineBreak +
//        'uso_banco='                             +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.UsoBanco+ sLineBreak +
//        'valor_titulo='                          +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorDocumento)+ sLineBreak +
//        'valor_desconto='                        +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorDesconto)+ sLineBreak +
//        'valor_outra_deducao='                   +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorDespesaCobranca)+ sLineBreak +
//        'valor_juro_multa='                      +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorMoraJuros)+ sLineBreak +
//        'valor_outro_acrescimo='                 +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorOutrosCreditos)+ sLineBreak +
//        'valor_total_cobrado='                   +CurrToStr(Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.ValorPago) + sLineBreak +
//        'texto_informacao_cliente_beneficiario=' +Boleto.ListaRetornoWeb[i].DadosRet.TituloRet.Informativo.Text  );
//
//      end;
//    end;
//  finally
//    SLRemessa.Free;
//  end;
{$ENDREGION}

end;


// Web Service
procedure UtilsBoletoWS_CarregaParametrosAutenticacao(AACBrBoleto: TACBrBoleto; ACodConta :Integer);
Var
  QuerX: TFDQuery;
  ACaminho_CRT, ACaminho_KEY : String;
begin
  // Aqui deve conter um código para conseguir verificar se é WebService ou não
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' Select ClientID, CertFile, KeyFile, ClientSecret, WS_SCOPO from Contas where Codigo = :Codigo';
    QuerX.ParamByName('Codigo').AsInteger := ACodConta;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      ACaminho_KEY := ExtractFilePath(ParamStr(0)) + QuerX.ParamByName('Codigo').AsString+ '_chave.key';
      ACaminho_CRT := ExtractFilePath(ParamStr(0)) + QuerX.ParamByName('Codigo').AsString+ '_certificado.crt';

      TBlobField(QuerX.FieldByName('CERTFILE')).SaveToFile(ACaminho_CRT);   // Abre e salva os arquivos no lugar certo {if not FileExists(ACaminho_CRT) then }
      TBlobField(QuerX.FieldByName('KeyFile')).SaveToFile(ACaminho_KEY);    // Abre e salva os arquivos no lugar certo {if not FileExists(ACaminho_KEY) then }

      AACBrBoleto.Configuracoes.WebService.ArquivoCRT := ACaminho_CRT;
      AACBrBoleto.Configuracoes.WebService.ArquivoKEY := ACaminho_KEY;

      AACBrBoleto.Cedente.CedenteWS.ClientID     := Trim(QuerX.FieldByName('ClientID').AsString);
      AACBrBoleto.Cedente.CedenteWS.ClientSecret := Trim(QuerX.FieldByName('ClientSecret').AsString);
      AACBrBoleto.Cedente.CedenteWS.Scope        := Trim(QuerX.FieldByName('WS_SCOPO').AsString);    // 'extrato.read boleto-cobranca.read boleto-cobranca.write';
    end;                                                                                             // O Cliente pode escolher o Tipo de comunicação com o banco, Boleto, boleto e estrato, vários são permitidos, só tem que ver se o sistema aceita
  finally
    QuerX.Free;
  end;

  {$REGION 'Documentação das APIs dos boletos'}
{Var
  QuerX: TFDQuery;
  ACaminho_CRT, ACaminho_KEY : String;  }
  // Isso Dee
//  CarregaParametrosAutenticacao;


  // Aqui deve conter um código para conseguir verificar se é WebService ou não
  // o campo é esse aqui >>>>   TEM_WS       , TEM_WS
(*  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' Select ClientID, CertFile, KeyFile, ClientSecret, WS_SCOPO from Contas where Codigo = :Codigo';
//    QuerX.ParamByName('Codigo').AsInteger := ACBrBoleto1.Banco.Numero;      // Financeiro.FieldByName('CODCONTA').AsInteger;
    QuerX.ParamByName('Codigo').AsInteger := FCodConta;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      ACaminho_KEY := ExtractFilePath(ParamStr(0)) + QuerX.ParamByName('Codigo').AsString+ '_chave.key';
      ACaminho_CRT := ExtractFilePath(ParamStr(0)) + QuerX.ParamByName('Codigo').AsString+ '_certificado.crt';

      TBlobField(QuerX.FieldByName('CERTFILE')).SaveToFile(ACaminho_CRT);   // Abre e salva os arquivos no lugar certo {if not FileExists(ACaminho_CRT) then }
      TBlobField(QuerX.FieldByName('KeyFile')).SaveToFile(ACaminho_KEY);    // Abre e salva os arquivos no lugar certo {if not FileExists(ACaminho_KEY) then }

      ACBrBoleto1.Configuracoes.WebService.ArquivoCRT := ACaminho_CRT;
      ACBrBoleto1.Configuracoes.WebService.ArquivoKEY := ACaminho_KEY;

      ACBrBoleto1.Cedente.CedenteWS.ClientID     := Trim(QuerX.FieldByName('ClientID').AsString);
      ACBrBoleto1.Cedente.CedenteWS.ClientSecret := Trim(QuerX.FieldByName('ClientSecret').AsString);
      ACBrBoleto1.Cedente.CedenteWS.Scope        := Trim(QuerX.FieldByName('WS_SCOPO').AsString);    // 'extrato.read boleto-cobranca.read boleto-cobranca.write';
    end;                                                                                             // O Cliente pode escolher o Tipo de comunicação com o banco, Boleto, boleto e estrato, vários são permitidos, só tem que ver se o sistema aceita
  finally
    QuerX.Free;
  end;    *)
//  if (aToken = '') or (aValidadeToken < Now) then
//  begin
////    ACBrBoleto1.Cedente.CedenteWS.GetToken;   // Deveria criar o Token,
//    if aToken = '' then
//    begin
//      ShowMessage('Erro ao obter o Token de Acesso');
//      Exit;
//    end;
//  end;



  {
  BANCOS SUPORTADOS POR WEBSERVICE / API:

      Banco do Brasil
      Caixa Econômica
      Itaú
      Sicred
      CrediSis
      PenseBank
      Inter
      Bancoob (Sicoob)

  //////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO

  Inter
    Citar
     //Campos para homologacao de acordo com dados fornecidos pelo banco
     -- Demais configurações como de costume nos outros bancos

      ACBRBoleto1.Configuracoes.WebService.ArquivoCRT   := Caminho e arq CRT ('C:\INTER\InterAPI_Certificado.crt';)
      ACBRBoleto1.Configuracoes.WebService.ArquivoKEY   := Caminho e arq Key ('C:\INTER\InterAPI_Chave.key';)

      ACBRBoleto1.Configuracoes.WebService.SSLType                      := LT_TLSv1_2;
      ACBRBoleto1.Configuracoes.WebService.TimeOut                      := 10000;
      ACBrBoleto1.Cedente.CedenteWS.ClientID:= ....
      ACBrBoleto1.Cedente.CedenteWS.ClientSecret:= .....
      ACBrBoleto1.Cedente.CedenteWS.Scope:= boleto-cobranca.write; (conforme manual/documentação)

  ///////////////////////////////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO

  Banco do Brasil - API

  Orientações para Boleto Híbrido:


  //Dados para Homologaçao devem sem adquiridos no portal do banco do brasil developers / credencial
   ACBrBoleto.Cedente.CedenteWS.ClientID      := client_id
   ACBrBoleto.Cedente.CedenteWS.ClientSecret  := client_secret
   ACBrBoleto.Cedente.CedenteWS.Scope         := cobrancas.boletos-info cobrancas.boletos-requisicao
   ACBrBoleto.Cedente.CedenteWS.KeyUser       := developer_application_key
   ACBrBoleto.Cedente.CedenteWS.IndicadorPix  := True; //utilizado para boleto hibrido, necessário o cliente possuir chave PIX no banco do brasil
   ACBrBoleto.WebServices.Ambiente            := taHomologacao

   ACBrBoleto.WebServices.SSLType             := LT_TLSv1_2
   ACBrBoleto.WebServices.TimeOut             := 30000
   ACBrBoleto.WebServices.Operacao            := tpConsulta; [tpConsulta,tpAltera,tpBaixa,tpInclui,tpConsultaDetalhe, tpPIXCriar, tpPIXCancelar, tpPIXConsultar] // utilizado para o tipo de operação

  ......................................................................
   Título - ex campos:
       ACBrBoleto.Cedente.CodigoCedente        := '4863177';
       ACBrBoleto.Cedente.Convenio                := '1014051';
       ACBrBoleto.Cedente.Modalidade           := '35';
       Carteira                                := '17';
       EspecieDoc                                 := 'DM';
  //Campos devem ser preenchidos conforme dados do Banco

  ------------------------------------------------------------------------------------
  Banco do Brasil por WebService

   //Dados para Homologaçao
   ACBrBoleto1.Cedente.CedenteWS.ClientID:= 'eyJpZCI6IjgwNDNiNTMtZjQ5Mi00YyIsImNvZGlnb1B1YmxpY2Fkb3IiOjEwOSwiY29kaWdvU29mdHdhcmUiOjEsInNlcXVlbmNpYWxJbnN0YWxhY2FvIjoxfQ';
   ACBrBoleto1.Cedente.CedenteWS.ClientSecret:= 'eyJpZCI6IjBjZDFlMGQtN2UyNC00MGQyLWI0YSIsImNvZGlnb1B1YmxpY2Fkb3IiOjEwOSwiY29kaWdvU29mdHdhcmUiOjEsInNlcXVlbmNpYWxJbnN0YWxhY2FvIjoxLCJzZXF1ZW5jaWFsQ3JlZGVuY2lhbCI6MX0';
   ACBrBoleto1.Cedente.CedenteWS.Scope:= 'cobranca.registro-boletos';
   ACBrBoleto1.Cedente.CedenteWS.KeyUser:='J1234567';   //

  //Campos devem ser preenchidos conforme dados do Banco
   Título ex campos:
       ACBrBoleto1.Cedente.CodigoCedente     := '4863177';
       ACBrBoleto1.Cedente.Convenio          := '1014051';
       ACBrBoleto1.Cedente.Modalidade        := '19';
       Carteira            := '17';
       EspecieDoc         := '99';

  ------------------------------------------------------------------------------------

  //Configuracoes/WebService

  SSLHTTPLib: httpWinHTTP
  SSCryptLib: cryWinCry
  SSLType: TLS 1.2
  TimeOut: 30000
  UseCertificateHTTP: False
  versao:= 1.2

  ////////////////////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO


  Caixa Econômica



  //Dados para Homologaçao
    ACBrBoleto1.Cedente.CedenteWS.ClientID:=  SGCBS02P

  //Campos devem ser preenchidos conforme dados do Banco
   Título ex campos:
        QtdePagamentoParcial:= 1;
        TipoPagamento:= tpNao_Aceita_Valor_Divergente;
        PercentualMinPagamento:= 0;
        PercentualMaxPagamento:= 0;
        ValorMinPagamento:=0;
        ValorMaxPagamento:=0;
        Carteira  := 'RG';
        EspecieDoc:= '99';

  ------------------------------------------------

   ACBrBoleto.WebServices.SSCryptLib          := cryOpenSSL
   ACBrBoleto.WebServices.SSLHTTPLib          := httpOpenSSL
   ACBrBoleto.WebServices.SSLType             := LT_TLSv1_2
   ACBrBoleto.WebServices.TimeOut             := 30000
   ACBrBoleto.WebServices.UseCertificateHTTP  := False
   ACBrBoleto.WebServices.Operacao            := tpConsulta; [tpConsulta,tpAltera,tpBaixa,tpInclui] // utilizado para o tipo de operação

  ///////////////////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO

  Itaú

  //Campos para homologacao de acordo com dados fornecidos pelo banco

      ACBrBoleto1.Cedente.CedenteWS.ClientID:= ....
      ACBrBoleto1.Cedente.CedenteWS.ClientSecret:= .....
      ACBrBoleto1.Cedente.CedenteWS.Scope:= 'readonly';
      ACBrBoleto1.Cedente.CedenteWS.KeyUser:= ....;

  //Campos devem ser preenchidos conforme dados do Banco

      ACBrBoleto1.Cedente.CodigoCedente:= ......
      ACBrBoleto1.Cedente.Modalidade:= '19';

  -------------------------------------------
   ACBrBoleto.WebServices.SSCryptLib          := cryOpenSSL
   ACBrBoleto.WebServices.SSLHTTPLib          := httpOpenSSL
   ACBrBoleto.WebServices.SSLType             := LT_TLSv1_2
   ACBrBoleto.WebServices.TimeOut             := 30000
   ACBrBoleto.WebServices.UseCertificateHTTP  := False
   ACBrBoleto.WebServices.Operacao            := tpInclui // utilizado para o tipo de operação

  ////////////////////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO

  Solicitar para o gerente da conta liberar o produto COBRANÇA ONLINE
  Entrar na conta, no meu COBRANÇA e ir na opção CÓDIGO DE ACESSO->GERAR. Será gerado um token.

  Sicredi - API Versão ECOMM

  //Configuração do componente ( Não há modo de homologação.. é tudo em produção )
      ACBrBoleto1.Cedente.CedenteWS.ClientID:= ( token gerado conforme explicado acima )

      //Somente essa opção é necessária, pois a cada requisição o ACBR envia esse token pro banco e
      //recebe outro token para a operação solicitada.

      //-- Demais configurações como de costume nos outros bancos
      //-- Recomendado utilizar arquivo pfx com openSSL

      ACBrBoleto.WebServices.SSCryptLib          := cryOpenSSL
      ACBrBoleto.WebServices.SSLHTTPLib          := httpOpenSSL
      ACBrBoleto.WebServices.SSLType             := LT_TLSv1_2
      ACBrBoleto.WebServices.TimeOut             := 30000
      ACBrBoleto.WebServices.UseCertificateHTTP  := False
  Sicredi - API Versão V2

     // O que vai definir que será utilizada a API V2 é a propriedade abaixo:
     ACBrBoleto.Configuracoes.WebService.VersaoDF := 'V2';
     ACBrBoleto.Cedente.CedenteWS.ClientID := Código Beneficiário + Código Cooperativa;
     ACBrBoleto.Cedente.CedenteWS.ClientSecret := solicitar no Internet Banking;
     ACBrBoleto.Cedente.CedenteWS.KeyUser := x-api-key;
     ACBrBoleto.Cedente.CedenteWS.Scope := 'cobranca';
     ACBrBoleto.Cedente.Agencia := cooperativa;
     ACBrBoleto.Cedente.AgenciaDigito := posto;
     ACBrBoleto.Cedente.CodigoCedente := código beneficiário

     //-- Demais configurações como de costume nos outros bancos
     //-- Recomendado utilizar arquivo pfx com openSSL

     ACBRBoleto.Configuracoes.WebService.SSLType                      := LT_TLSv1_2;
     ACBRBoleto.Configuracoes.WebService.TimeOut                      := 20000;



  ///////////////////////////////////////////////////////////////////////////////////////
  EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO    PenseBank

  https://www.mentesquepensam.com.br/

  https://pensebank.com.br/

  //Dados para Homologaçao devem ser adquiridos abrindo uma conta no site https://pensebank.com.br/
   ACBrBoleto.Cedente.CedenteWS.ClientID      := client_id
   ACBrBoleto.Cedente.CedenteWS.KeyUser       := utilizar o CNPJ da Software House
   ACBrBoleto.Cedente.CedenteWS.IndicadorPix  := True; //utilizado para boleto hibrido
   ACBrBoleto.Cedente.CedenteWS.IndicadorSMS  := False; //utilizado para envio por SMS
  ACBrBoleto.Cedente.CedenteWS.IndicadorEmail := False; //utilizado para envio de email
   ACBrBoleto.WebServices.Ambiente            := taHomologacao

   ACBrBoleto.WebServices.SSCryptLib          := cryOpenSSL
   ACBrBoleto.WebServices.SSLHTTPLib          := httpOpenSSL
   ACBrBoleto.WebServices.SSLType             := LT_TLSv1_2
   ACBrBoleto.WebServices.TimeOut             := 30000
   ACBrBoleto.WebServices.UseCertificateHTTP  := False
   ACBrBoleto.WebServices.Operacao            := tpConsulta; [tpConsulta,tpAltera,tpBaixa,tpInclui,tpConsultaDetalhe, tpPIXCriar, tpPIXCancelar, tpPIXConsultar] // utilizado para o tipo de operação

  ///////////////////////////////////////////////////////////////////////////////////


  Bancoob (Sicoob) EXEMPLO DE CONFIGURAÇÃO DO COMPONENTE ACBR BOLETO

  //Campos para homologacao de acordo com dados fornecidos pelo banco
  -- Demais configurações como de costume nos outros bancos

  AcBrBoleto.Cedente.CedenteWS.ClientID       := Client_Id gerado no portal developpers sicoob;
  AcBrBoleto.Cedente.CedenteWS.ClientSecret  := Client_Id gerado no portal developpers sicoob;
  AcBrBoleto.Cedente.CedenteWS.Scope         := 'cobranca_boletos_consultar cobranca_boletos_incluir cobranca_boletos_baixa';
  AcBrBoleto.Cedente.CedenteWS.IndicadorPix  := True; //para boleto híbrido

  AcBrBoleto.Configuracoes.WebService.Ambiente           := taProducao; //Só tem produção
  AcBrBoleto.Configuracoes.WebService.SSLCryptLib        := cryOpenSSL;
  AcBrBoleto.Configuracoes.WebService.SSLHTTPLib         := httpOpenSSL;
  AcBrBoleto.Configuracoes.WebService.SSLType            := LT_TLSv1_2;
  AcBrBoleto.Configuracoes.WebService.TimeOut            := 30000;
  AcBrBoleto.Configuracoes.WebService.UseCertificateHTTP := True;
  AcBrBoleto.Configuracoes.WebService.ArquivoCRT         := 'c:\ChavePublica.pem'; \\Chave pública extraída no passo 1
  AcBrBoleto.Configuracoes.WebService.ArquivoKEY         := 'c:\ChavePrivada.key'; \\Chave privada extraída no passo 1

  ACBrBoleto1.Cedente.CedenteWS.Scope :=  'cobranca_boletos_consultar '+
    'cobranca_boletos_incluir '+
    'cobranca_boletos_pagador '+
    'cobranca_boletos_segunda_via '+
    'cobranca_boletos_descontos '+
    'cobranca_boletos_abatimentos '+
    'cobranca_boletos_valor_nominal '+
    'cobranca_boletos_seu_numero '+
    'cobranca_boletos_especie_documento '+
    'cobranca_boletos_baixa '+
    'cobranca_boletos_rateio_credito '+
    'cobranca_pagadores '+
    'cobranca_boletos_negativacoes_incluir '+
    'cobranca_boletos_negativacoes_alterar '+
    'cobranca_boletos_negativacoes_baixar '+
    'cobranca_boletos_protestos_incluir '+
    'cobranca_boletos_protestos_alterar '+
    'cobranca_boletos_protestos_desistir '+
    'cobranca_boletos_solicitacao_movimentacao_incluir '+
    'cobranca_boletos_solicitacao_movimentacao_consultar '+
    'cobranca_boletos_solicitacao_movimentacao_download '+
    'cobranca_boletos_prorrogacoes_data_vencimento '+
    'cobranca_boletos_prorrogacoes_data_limite_pagamento '+
    'cobranca_boletos_encargos_multas '+
    'cobranca_boletos_encargos_juros_mora '+
    'cobranca_boletos_pix '+
    'cobranca_boletos_faixa_nn_disponiveis';


  ////////////////////////////////////////////////////////////////////////////////////
  }
  {$ENDREGION}

end;

function ControllerBoletoWS_Retorno(AACBrBoleto: TACBrBoleto; AConta :TDataSet): Integer;
var
  FiltrosAPI : TACBrBoletoWSFiltroConsulta;
  ADT_UltimaBaixa: TDate;
begin
  // Confere a autenticação e se ela ainda esta válida
  UtilsBoletoWS_CarregaParametrosAutenticacao(AACBrBoleto, AConta.FieldByName('CODIGO').AsInteger);

  // Descobre qual conta e convenio banco
//  QuerConta := BoletoUtils_CarregaConta(AConta.FieldByName('CODIGO').AsInteger, AConta.FieldByName('CODBANCO').AsInteger);
  AACBrBoleto.Banco.TipoCobranca:=UtilsBoleto_ConfiguraBanco(AConta.FieldByName('CODBANCO').AsInteger,
                                                          AConta.FieldByName('CARTEIRA').AsString,
                                                          AConta.FieldByName('COOPERATIVA').AsString,
                                                          AConta.FieldByName('TIPO_CONVENIO').AsString);

  // gera o cabeçalho da empresa
  UtilsBoleto_ConfiguraCedente(AACBrBoleto, AConta);

//  ADT_UlmaBaixa:= IncDay(Date,-7);
  ADT_UltimaBaixa:= IncDay(SQLFinanceiro_Boleto_WS_UltimaDataBaixaEncontrada(AConta.FieldByName('CODIGO').AsInteger),-1);

  // Inclui os boletos na lista
  AACBrBoleto.ListadeBoletos.Clear;

  FiltrosAPI := AACBrBoleto.Configuracoes.WebService.Filtro;

  FiltrosAPI.Clear;
  FiltrosAPI.indicadorSituacao        := isbBaixado;
  FiltrosAPI.dataMovimento.DataInicio := ADT_UltimaBaixa;  // Aqui tem que saber qual foi o última vez que foi feita a consulta
  FiltrosAPI.dataMovimento.DataFinal  := Date;

  AACBrBoleto.Configuracoes.WebService.Operacao := tpConsulta;
  AACBrBoleto.Enviar;
  Result:=AACBrBoleto.NumeroArquivo;
end;

function ControllerBoletoWS_Retorno_E_Busca(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Boolean;
Var
  ATransa : TFDTransaction;
  AQueryConta:TFDQuery;
begin
  Result := False;
  AQueryConta:= SQLContas(ACodConta);
  try
    ControllerBoletoWS_Retorno(AACBrBoleto, AQueryConta);

    if (AACBrBoleto.ListaConsultaRetornoWeb.Count = 1) then
      raise Exception.Create('Não tem retorno para fazer.');    // Deve tratar esse erro na tela

    ATransa := GeraFDTransacao;
    Result  := (SQLFinanceiro_boleto_RetornoWS(ATransa, ACodConta,
                                               AACBrBoleto.Configuracoes.WebService.Filtro.dataMovimento.DataFinal).RecordCount > 0);
  finally
    AQueryConta.Free;
  end;
end;

end.

