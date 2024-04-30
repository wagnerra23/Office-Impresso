unit Controller.Interno.Boleto.Arquivo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils;


// Arquivo
function ControllerBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
function  ControllerBoletoArquivo_Retorno_E_Busca(AACBrBoleto: TACBrBoleto; AQuerConta :TFDQuery; AArquivo:String): Integer;
procedure ControllerBoletoArquivo_Retorno_GravaBlob(AArquivo: string);
function ControllerBoletoArquivo_Remessa_GerarArquivoACBr(AACBrBoleto :TACBrBoleto; AContas, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico, ABoleto :TDataSet; Var AArquivo:String): Integer;

implementation

Uses UnitFuncoes, Classes.WR, ACBrBoletoConversao, DataModuleBoletos, ACBrUtil, wrfuncoes,
  Utils.Boleto, Utils.Boleto.Retorno,
  SQL.Financeiro_boleto, SQL.Boleto, SQL.Contas,
  Services.Boleto.Arquivo, Services.Boleto;


// Arquivos
function ControllerBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
begin
  if ACodConta < 1 then
    raise Exception.Create('Informe a conta');    // Deve tratar esse erro na tela

  Result := SevicesBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto, ACodConta);
end;

function ControllerBoletoArquivo_Retorno_E_Busca(AACBrBoleto: TACBrBoleto; AQuerConta :TFDQuery; AArquivo:String): Integer;
begin
  if (AArquivo = '') then
    raise Exception.Create('Informe o nome do arquivo, para tratar.');    // Deve tratar esse erro na tela

  // Busca a Conta vinculada a operação
  // Configurao convenio do banco
  AACBrBoleto.Banco.TipoCobranca := UtilsBoleto_ConfiguraBanco(AQuerConta.FieldByName('CODBANCO').AsInteger,
                                                           AQuerConta.FieldByName('CARTEIRA').AsString,
                                                           AQuerConta.FieldByName('COOPERATIVA').AsString,
                                                           AQuerConta.FieldByName('TIPO_CONVENIO').AsString);

  // Gera o cabeçalho da empresa
  UtilsBoleto_ConfiguraCedente(AACBrBoleto, AQuerConta);

  // Limpa os boletos da lista
  AACBrBoleto.ListadeBoletos.Clear;

  // Carrega a conta
//    Boleto_CarregaConta(AACBrBoleto, Contas);

  AACBrBoleto.DirArqRetorno  := ExtractFileDir(AArquivo);
  AACBrBoleto.NomeArqRetorno := ExtractFileName(AArquivo);
  AACBrBoleto.LerRetorno;

  if (AACBrBoleto.ListadeBoletos.Count = 0) then
    raise Exception.Create('Não tem retorno para fazer.');    // Deve tratar esse erro na tela

  Result:= (SQLFinanceiro_boleto_RetornoArquivoController(AQuerConta.FieldByName('CODIGO').AsInteger ,
                                             AACBrBoleto.NumeroArquivo, AACBrBoleto.DataArquivo)).RecordCount;
end;

procedure ControllerBoletoArquivo_Retorno_GravaBlob(AArquivo: string);
begin
  if Trim(AArquivo) = '' then
    raise Exception.Create('Informe o nome do arquivo de retorno.');  // Deve tratar esse erro na tela

  if Not FileExists(AArquivo) then
    raise Exception.Create('Arquivo de retorno, não localizado.');    // Deve tratar esse erro na tela
end;

function ControllerBoletoArquivo_Remessa_GerarArquivoACBr(AACBrBoleto :TACBrBoleto; AContas, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico, ABoleto :TDataSet; Var AArquivo:String): Integer;
var
  ATitulo: TACBrTitulo;
  ASplit: TArray<string>;
  ADataAtual: TDateTime;
  FUltimaRemessaGerada :Integer;
begin
  // Essa rotina deve ser desmebrada em

  // * ADadosSacado
  // * ATitulo
  // * Cabecalho
  // * ConfiguraCedente

  if not SQLFinanceiro_Boleto_ExisteRetonoDaCaixaEconomicaPendente(AContas.FieldByName('Codigo').AsInteger) then    // Acha que teria que colocar no cadatro da conta se precisa de retorno do retorno , caixa
    raise Exception.Create('Existe um retorno para ser recebido. Clique no botão "Retorno" para esta conta.');

  if AFinanceiro_Boleto_Historico.IsEmpty then
    raise Exception.Create('Não existem Boletos para serem gerados.');


//  AFinanceiro_Boleto.FieldByName('DT_GERACAO_ARQUIVO').AsDateTime := DataHoraSys;
//   Código usado quando o componente de emissão do boleto for do ACBr.
  ADataAtual := DataHoraSys;
  AACBrBoleto.Banco.TipoCobranca := UtilsBoleto_ConfiguraBanco(AContas.FieldByName('CODBANCO').AsInteger,
                                               AContas.FieldByName('CARTEIRA').AsString,
                                               AContas.FieldByName('COOPERATIVA').AsString,
                                               AContas.FieldByName('TIPO_CONVENIO').AsString);

  // Aqui dentro tem coisa que usa no arquivo
  UtilsBoleto_ConfiguraCedente(AACBrBoleto, AContas);
  AFinanceiro_Boleto_Historico.First;
  while not AFinanceiro_Boleto_Historico.eof do
  begin                                                                //ABoletos aqui só serve para pegar boletos que nao chegaram na remessa
    UtilsBoleto_Titulo_ADD(AACBrBoleto, AFinanceiro_Boleto_Historico, AFinanceiro_Boleto_Historico, AContas);
    AFinanceiro_Boleto_Historico.Next;
  end;

{$REGION 'Codigo Antigo'}
 (*
  AACBrBoleto.ListadeBoletos.Clear;
  AFinanceiro_Boleto_Historico.First;
  while not AFinanceiro_Boleto_Historico.Eof do
  begin
    if {FReenviandoRemessa and} (AFinanceiro_Boleto_Historico.FieldByName('REENVIAR_REMESSA').AsInteger <> 1) then
    begin
      AFinanceiro_Boleto_Historico.Next; //Não envia os boletos desmarcados a coluna "Reenviar Remessa"
      Continue;
    end;

    ATitulo := AACBrBoleto.CriarTituloNaLista;
    with ATitulo do
    begin
      if not IsZero(AFinanceiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat) then
      begin
        { Caso o boleto seja pago antes da data do desconto, este desconto será aplicado ao boleto.
          O desconto é dado em VALOR! }
        DataDesconto  := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, - AContas.FieldByName('DIADESCONTO').AsInteger);
        ValorDesconto := AFinanceiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat;
        TipoDesconto  := tdValorFixoAteDataInformada;

        { É possível ter outras variações para o desconto,
          Ex: Se o boleto for pago até dia 10, dar 5% de desconto
          Se o boleto for pago até dia 5, dar 8% de desconto

          Para isso existem os campos DataDesconto2 e ValorDesconto2. O ACBr tem suporte, mas verificar no sistema caso
          seja utilizado
        }
      end
      else
      begin
        TipoDesconto := tdNaoConcederDesconto;
        ValorDesconto := 0;
      end;
      {
        DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
        Instrucao1        := padL(trim(edtInstrucoes1.Text),2,'0');
        Instrucao2        := padL(trim(edtInstrucoes2.Text),2,'0'); }
      if AFinanceiro_Boleto_Historico.FieldByName('ACEITE').AsString = 'S' then
        Aceite := atSim
      else
        Aceite := atNao;
      TipoImpressao        := tipNormal;
      LocalPagamento       := AContas.FieldByName('LOCAL_DE_PAGAMENTO').AsString;
      ValorDespesaCobranca := AContas.FieldByName('CUSTO_BOLETO').AsFloat;
      Carteira             := AFinanceiro_Boleto_Historico.FieldByName('CARTEIRA').AsString;
      Mensagem.Text        := UtilsBoleto_TrataTexto(AFinanceiro_Boleto_Historico.FieldByName('DEMONSTRATIVO').AsString);
      NossoNumero          := AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString;
      SeuNumero            := AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      NumeroDocumento      := AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      DataDocumento        := AFinanceiro_Boleto_Historico.FieldByName('EMISSAO').AsDateTime;
      DataProcessamento    := DataHoraSys;

      // Isso aqui parece que precisa para gerar o arquivo do banco 136 - unicredSC
      // DiasDeProtesto       := AFinanceiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger;
      if AFinanceiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger > 0 then
        CodigoNegativacao := cnProtestarCorrido;
      TipoDiasProtesto := diCorridos;

      DataLimitePagto := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, AFinanceiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      DataProtesto    := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, AFinanceiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger);

      DataBaixa  := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, AFinanceiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      Vencimento := AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime;

      CodigoMulta     := cmPercentual; { Multa e Juros Mora são sempre em percentual }
      PercentualMulta := AFinanceiro_Boleto_Historico.FieldByName('PERCENTUAL_MULTA').AsCurrency; // Vem por Left Join da Conta

      DataMoraJuros := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, AContas.FieldByName('TOLERANCIA').AsInteger + 1);
      DataMulta     := IncDay(AFinanceiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, AContas.FieldByName('MULTA_DIAS_TOLERANCIA').AsInteger);

      case AContas.FieldByName('CODBANCO').AsInteger of
        1:
          begin
            if (AContas.FieldByName('COOPERATIVA').AsString = 'S') and (AFinanceiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
              DataProtesto := 0
          end;
        41:
          begin // Banrisul
            ASplit := NumeroDocumento.Split([' ', '-', '/']);
            NumeroDocumento := ASplit[1] + '-' + ASplit[4];
            CodigoMora := '0';
          end;
        77:
          begin
            if Not IsZero(AFinanceiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
            begin
              CodigoMoraJuros := cjTaxaDiaria;
              ValorMoraJuros  := AFinanceiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency;
            end;
          end;
        104:
          CodigoMora := '1';
        133:
          CodigoMora := '1';

        // 136 : begin
        // if (AFinanceiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
        // DataProtesto := 0
        // end;

        // (Rodrigues)(OS17022016107)(23/02/2016) - reduzir o tamanho do numero do documento para caber no arquivo de remessa do bradesco.
        237:
          begin
            if NumeroDocumento.StartsWith('OS ', True) then
              NumeroDocumento := NumeroDocumento.Substring(3);
            if AContas.FieldByName('LAYOUT_ARQUIVO').AsString = '240' then
              AACBrBoleto.Cedente.AgenciaDigito:=' ';
          end;
        748: // Sicredi
          begin
            { 1 - Valor monetário por dia
              2 - Taxa mensal em Percentual
              3 - Isento }
            if IsZero(AFinanceiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '3'
            else
              CodigoMora := '2';
          end;
        756: // Sicoob
          begin
            { Código do Juros de Mora:
              '0'  =  Isento
              '1'  =  Valor por Dia
              '2'  =  Taxa Mensal }
            if IsZero(AFinanceiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '0'
            else
              CodigoMora := '1';
          end;
      end;

      // Preenche o Sacado no boleto
      UtilsBoleto_Titulo_Sacado(ATitulo, AFinanceiro_Boleto_Historico.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);


      // DescricaoMotivoRejeicaoComando := '';
      // DescricaoOcorrenciaOriginal    := '';
      // MotivoRejeicaoComando          := '';
      // OcorrenciaOriginal             := '';
      EspecieDoc := AFinanceiro_Boleto_Historico.FieldByName('ESPECIE').AsString;
      OcorrenciaOriginal.Tipo := UtilsBoleto_StrToTipoOcorrencia(AFinanceiro_Boleto_Historico.FieldByName('TIPOOCORRENCIA').AsString);

      ValorAbatimento := 0;
      ValorDocumento := AFinanceiro_Boleto_Historico.FieldByName('Total').AsCurrency;
      ValorIOF := 0;
      // Informação pro merge da 2020: o ValorDesconto que tinha aqui foi pra umas 30 linhas acima, no começo desta rotina
      ValorMoraJuros := AFinanceiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency;
      ValorOutrasDespesas := 0;
      ValorOutrosCreditos := 0;
   {
      AFinanceiro.Close;
      if (AContas.FieldByName('CODBANCO').AsString = '77') then
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.DOCUMENTO = ' + QuotedStr(Trim(AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString)) + ') and(F.STATUS LIKE ''ATIVO%'')'
      else
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = ' + QuotedStr(AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString) +
          ') and(F.STATUS LIKE ''ATIVO%'')'; // or (F.STATUS = ''INATIVO AGRUPADO''))';;
      AFinanceiro.ParamByName('CodConta').AsInteger :=  AContas.FieldByName('CODIGO').AsInteger;
      AFinanceiro.Open;
      AFinanceiro.Edit;
      AFinanceiro.FieldByName('PODE_ENVIAR').AsString := 'N';
      AFinanceiro.Post;     }
    end;

    AFinanceiro_Boleto_Historico.Next;
  end;  *)
{$ENDREGION}

  if (AContas.FieldByName('CODBANCO').AsInteger = 1) and (AContas.FieldByName('COOPERATIVA').AsString = 'S') then      // Rotina que retorna o texto do nome da remessa;
  begin
    AACBrBoleto.NomeArqRemessa := 'CBR' + PadLeft(YearOf(ADataAtual).ToString, 4, '0') + PadLeft(MonthOf(ADataAtual).ToString, 2, '0') +
      PadLeft(DayOf(ADataAtual).ToString, 2, '0') + PadLeft(AContas.FieldByName('SEQREM').AsString, 2, '0') + '.rem';
  end;

  // Para o banco Amazônia, o tamanho máximo do nosso número deve ser 20 para que o preenchimento seja correto
  // da remessa
  if (AContas.FieldByName('CODBANCO').AsInteger = 3) then   //CUIDADO, Isso aqui não pode aqui, tem que recusar a remessa, e informar para lançar certo, pois no retorno não vai chamar o boleto.
    AACBrBoleto.Banco.TamanhoMaximoNossoNum := 20;

  AACBrBoleto.DataArquivo := now;
  if AContas.FieldByName('LAYOUT_ARQUIVO').AsString = '240' then
    AACBrBoleto.LayoutRemessa := c240
  else
    AACBrBoleto.LayoutRemessa := c400;

  if AContas.FieldByName('versao_ARQUIVO').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoArquivo := AContas.FieldByName('VERSAO_ARQUIVO').AsInteger;
  if AContas.FieldByName('VERSAO_LAYOUT').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoLote := AContas.FieldByName('VERSAO_LAYOUT').AsInteger;

  AACBrBoleto.DirArqRemessa := GetDirSistema + 'Boletos\' + AContas.FieldByName('Codigo').AsString + '\Remessa';
  if not DirectoryExists(AACBrBoleto.DirArqRemessa) then
    CreateDir(AACBrBoleto.DirArqRemessa);
  AACBrBoleto.NumeroArquivo := AFinanceiro_Boleto.FieldByName('REMESSA').AsInteger;
  try
    AArquivo := AACBrBoleto.GerarRemessa(AFinanceiro_Boleto.FieldByName('REMESSA').AsInteger);
  except
    on E: Exception do
      raise Exception.Create('Não foi possível gerar a remessa: ' + E.Message);
  end;
end;


{$REGION 'Rotina Antiga'}

  (*
function ControllerBoletoArquivo_Remessa_GerarACBrAntigo(AACBrBoleto :TACBrBoleto; ACodConta :Integer): Integer;
var
  ATitulo: TACBrTitulo;
  ASplit: TArray<string>;
  ADadosSacado: TEnderecoCobranca;
  ADataAtual: TDateTime;
begin
//  AFinanceiro_Boleto.FieldByName('DT_GERACAO_ARQUIVO').AsDateTime := DataHoraSys;
//   Código usado quando o componente de emissão do boleto for do ACBr.
  ADataAtual := DataHoraSys;
  AACBrBoleto.Banco.TipoCobranca := BoletoUtils_DefineBanco(Contas.FieldByName('CODBANCO').AsInteger,
                                               Contas.FieldByName('CARTEIRA').AsString,
                                               Contas.FieldByName('COOPERATIVA').AsString,
                                               Contas.FieldByName('TIPO_CONVENIO').AsString);
  BoletoUtils_Cedente(AACBrBoleto, Contas);
  if MatchStr(Contas.FieldByName('CODBANCO').AsString, ['1', '237', '756']) and (Contas.FieldByName('COOPERATIVA').AsString = 'S') then
  begin
    with AACBrBoleto do // Para a remessa quando é cooperativa, agencia e conta correte são da cooperativa
    begin
      Cedente.Agencia := Contas.FieldByName('AGENCIA_COOPERATIVA').AsString;
      Cedente.AgenciaDigito := Contas.FieldByName('DIGITO_AG_COOPERATIVA').AsString;
      Cedente.Conta := Contas.FieldByName('CONTA_COOPERATIVA').AsString;
      Cedente.ContaDigito := Contas.FieldByName('DIGITO_CC_COOPERATIVA').AsString;
      Cedente.CodigoCedente := Contas.FieldByName('CODIGO_CEDENTE_COOPERATIVA').AsString;
      Cedente.Nome := Contas.FieldByName('NOME_CEDENTE').AsString;
    end;
  end;

  Financeiro_Boleto_Historico.First;
  while not Financeiro_Boleto_Historico.Eof do
  begin
    if FReenviandoRemessa and (Financeiro_Boleto_Historico.FieldByName('REENVIAR_REMESSA').AsInteger <> 1) then
    begin
      Financeiro_Boleto_Historico.Next; // Não envia os boletos desmarcados a coluna "Reenviar Remessa"
      Continue;
    end;

    ATitulo := AACBrBoleto.CriarTituloNaLista;
    with ATitulo do
    begin
      if not IsZero(Financeiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat) then
      begin
        { Caso o boleto seja pago antes da data do desconto, este desconto será aplicado ao boleto.
          O desconto é dado em VALOR! }
        DataDesconto  := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, -Contas.FieldByName('DIADESCONTO').AsInteger);
        ValorDesconto := Financeiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat;
        TipoDesconto  := tdValorFixoAteDataInformada;

        { É possível ter outras variações para o desconto,
          Ex: Se o boleto for pago até dia 10, dar 5% de desconto
          Se o boleto for pago até dia 5, dar 8% de desconto

          Para isso existem os campos DataDesconto2 e ValorDesconto2. O ACBr tem suporte, mas verificar no sistema caso
          seja utilizado
        }
      end
      else
      begin
        TipoDesconto := tdNaoConcederDesconto;
        ValorDesconto := 0;
      end;
      {
        DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
        Instrucao1        := padL(trim(edtInstrucoes1.Text),2,'0');
        Instrucao2        := padL(trim(edtInstrucoes2.Text),2,'0'); }
      if Financeiro_Boleto_Historico.FieldByName('ACEITE').AsString = 'S' then
        Aceite := atSim
      else
        Aceite := atNao;
      TipoImpressao        := tipNormal;
      LocalPagamento       := Contas.FieldByName('LOCAL_DE_PAGAMENTO').AsString;
      ValorDespesaCobranca := Contas.FieldByName('CUSTO_BOLETO').AsFloat;
      Carteira             := Financeiro_Boleto_Historico.FieldByName('CARTEIRA').AsString;
      Mensagem.Text        := BoletoUtils_TrataTexto(Financeiro_Boleto_Historico.FieldByName('DEMONSTRATIVO').AsString);
      NossoNumero          := Financeiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString;
      SeuNumero            := Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      NumeroDocumento      := Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      DataDocumento        := Financeiro_Boleto_Historico.FieldByName('EMISSAO').AsDateTime;
      DataProcessamento    := DataHoraSys;

      // Isso aqui parece que precisa para gerar o arquivo do banco 136 - unicredSC
      // DiasDeProtesto       := Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger;
      if Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger > 0 then
        CodigoNegativacao := cnProtestarCorrido;
      TipoDiasProtesto := diCorridos;

      DataLimitePagto := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      DataProtesto    := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger);

      DataBaixa  := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      Vencimento := Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime;

      CodigoMulta     := cmPercentual; { Multa e Juros Mora são sempre em percentual }
      PercentualMulta := Financeiro_Boleto_Historico.FieldByName('PERCENTUAL_MULTA').AsCurrency; // Vem por Left Join da Conta

      DataMoraJuros := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Contas.FieldByName('TOLERANCIA').AsInteger + 1);
      DataMulta     := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Contas.FieldByName('MULTA_DIAS_TOLERANCIA').AsInteger);

      case ContasCODBANCO.AsInteger of
        1:
          begin
            if (Contas.FieldByName('COOPERATIVA').AsString = 'S') and (Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
              DataProtesto := 0
          end;
        41:
          begin // Banrisul
            ASplit := NumeroDocumento.Split([' ', '-', '/']);
            NumeroDocumento := ASplit[1] + '-' + ASplit[4];
            CodigoMora := '0';
          end;
        77:
          begin
            if Not IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
            begin
              CodigoMoraJuros := cjTaxaDiaria;
              ValorMoraJuros  := Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency;
            end;
          end;
        104:
          CodigoMora := '1';
        133:
          CodigoMora := '1';

        // 136 : begin
        // if (Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
        // DataProtesto := 0
        // end;

        // (Rodrigues)(OS17022016107)(23/02/2016) - reduzir o tamanho do numero do documento para caber no arquivo de remessa do bradesco.
        237:
          begin
            if NumeroDocumento.StartsWith('OS ', True) then
              NumeroDocumento := NumeroDocumento.Substring(3);
            if ContasLAYOUT_ARQUIVO.AsString = '240' then
              AACBrBoleto.Cedente.AgenciaDigito:=' ';
          end;
        748: // Sicredi
          begin
            { 1 - Valor monetário por dia
              2 - Taxa mensal em Percentual
              3 - Isento }
            if IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '3'
            else
              CodigoMora := '2';
          end;
        756: // Sicoob
          begin
            { Código do Juros de Mora:
              '0'  =  Isento
              '1'  =  Valor por Dia
              '2'  =  Taxa Mensal }
            if IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '0'
            else
              CodigoMora := '1';
          end;
      end;

      // DescricaoMotivoRejeicaoComando := '';
      // DescricaoOcorrenciaOriginal    := '';
      // MotivoRejeicaoComando          := '';
      // OcorrenciaOriginal             := '';

      EspecieDoc := Financeiro_Boleto_HistoricoESPECIE.AsString;
      ADadosSacado := BuscaEnderecoCobrancaGetEnderecoCobranca(Financeiro_Boleto_HistoricoPESSOA_RESPONSAVEL_CODIGO.AsString);
      with Sacado do
      begin
        Bairro := BoletoUtils_TrataTexto(ADadosSacado.Bairro);
        CEP := ADadosSacado.CEP;
        Cidade := BoletoUtils_TrataTexto(ADadosSacado.Cidade);
        Complemento := BoletoUtils_TrataTexto(ADadosSacado.Complemento);
        Email := ADadosSacado.Email;
        UF := BoletoUtils_TrataTexto(ADadosSacado.UF);
        Numero := ADadosSacado.Numero;
        Logradouro := BoletoUtils_TrataTexto(ADadosSacado.Endereco);
        NomeSacado := BoletoUtils_TrataTexto(ADadosSacado.Responsavel);
        CNPJCPF := ADadosSacado.CNPJCPF;
        if ADadosSacado.TipoPessoa = 'F' then
          Pessoa := pFisica
        else if ADadosSacado.TipoPessoa = 'J' then
          Pessoa := pJuridica
        else
          Pessoa := pOutras;
      end;

      OcorrenciaOriginal.Tipo := TDMBoletos.StrToTipoOcorrencia(Financeiro_Boleto_HistoricoTIPOOCORRENCIA.AsString);

      ValorAbatimento := 0;
      ValorDocumento := Financeiro_Boleto_HistoricoTotal.AsCurrency;
      ValorIOF := 0;
      // Informação pro merge da 2020: o ValorDesconto que tinha aqui foi pra umas 30 linhas acima, no começo desta rotina
      ValorMoraJuros := Financeiro_Boleto_HistoricoJUROS_MORA.AsCurrency;
      ValorOutrasDespesas := 0;
      ValorOutrosCreditos := 0;
   {
      AFinanceiro.Close;
      if (Contas.FieldByName('CODBANCO').AsString = '77') then
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.DOCUMENTO = ' + QuotedStr(Trim(Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString)) + ') and(F.STATUS LIKE ''ATIVO%'')'
      else
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = ' + QuotedStr(Financeiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString) +
          ') and(F.STATUS LIKE ''ATIVO%'')'; // or (F.STATUS = ''INATIVO AGRUPADO''))';;
      AFinanceiro.ParamByName('CodConta').AsInteger :=  Contas.FieldByName('CODIGO').AsInteger;
      AFinanceiro.Open;
      AFinanceiro.Edit;
      AFinanceiro.FieldByName('PODE_ENVIAR').AsString := 'N';
      AFinanceiro.Post;     }
    end;

    Financeiro_Boleto_Historico.Next;
  end;

  if (ContasCODBANCO.AsInteger = 1) and (ContasCOOPERATIVA.AsString = 'S') then
  begin
    AACBrBoleto.NomeArqRemessa := 'CBR' + PadLeft(YearOf(ADataAtual).ToString, 4, '0') + PadLeft(MonthOf(ADataAtual).ToString, 2, '0') +
      PadLeft(DayOf(ADataAtual).ToString, 2, '0') + PadLeft(ContasSEQREM.AsString, 2, '0') + '.rem';
  end;

  // Para o banco Amazônia, o tamanho máximo do nosso número deve ser 20 para que o preenchimento seja correto
  // da remessa
  if (ContasCODBANCO.AsInteger = 3) then
    AACBrBoleto.Banco.TamanhoMaximoNossoNum := 20;

  AACBrBoleto.DataArquivo := now;
  if ContasLAYOUT_ARQUIVO.AsString = '240' then
    AACBrBoleto.LayoutRemessa := c240
  else
    AACBrBoleto.LayoutRemessa := c400;

  if Contas.FieldByName('versao_ARQUIVO').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoArquivo := Contas.FieldByName('versao_ARQUIVO').AsInteger;
  if Contas.FieldByName('VERSAO_LAYOUT').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoLote := Contas.FieldByName('VERSAO_LAYOUT').AsInteger;

  AACBrBoleto.DirArqRemessa := GetDirSistema + 'Boletos\' + Contas.FieldByName('Codigo').AsString + '\Remessa';
  if not DirectoryExists(AACBrBoleto.DirArqRemessa) then
    CreateDir(AACBrBoleto.DirArqRemessa);
  AACBrBoleto.NumeroArquivo := Ds.DataSet.FieldByName('Codigo').AsInteger;
  try
    Result := AACBrBoleto.GerarRemessa(Ds.DataSet.FieldByName('Codigo').AsInteger);
    FUltimaRemessaGerada := Result;
  except
    on E: Exception do
    begin
      btnCancelarClick(nil);
      GeraExcecao('Não foi possível gerar a remessa: ' + E.Message);
    end;
  end;
  Memo1.Lines.Add('Remessa gerada em ' + QuotedStr(Result));
  if Pos('@', ContasEXECUTA_ARQUIVO_REMESSA.AsString) <> 0 then
  begin
    TFrmEmail.GerarEmail(Self, ContasEXECUTA_ARQUIVO_REMESSA.AsString, 'Arquivo de Remessa: ' + Empresa.FieldByName('FANTASIA').AsString, '', Result);
  end
  else
    ShellExecute(Handle, nil, PWideChar(ContasEXECUTA_ARQUIVO_REMESSA.AsString), '', nil, SW_HIDE);
end;                                                                           *)

  (*
  // Arquivos

function ControllerBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
begin
  if ACodConta < 1 then
    raise Exception.Create('Informe a conta');    // Deve tratar esse erro na tela


end;

function ControllerBoletoArquivo_Retorno_E_Busca(AACBrBoleto: TACBrBoleto; AConta :TDataSet; AArquivo:String): Boolean;
var
  QuerConta: TFDQuery;
begin
  if (AArquivo = '') then
    raise Exception.Create('Informe o nome do arquivo, para tratar.');    // Deve tratar esse erro na tela

  // Busca a Conta vinculada a operação
  QuerConta := SQLConta_CarregaDoBoleto(AConta.FieldByName('Codigo').AsInteger);
  try
    // Configurao convenio do banco
    AACBrBoleto.Banco.TipoCobranca := ControllerInternoBoleto_ConfiguraBanco(QuerConta.FieldByName('CODBANCO').AsInteger,
                                                             QuerConta.FieldByName('CARTEIRA').AsString,
                                                             QuerConta.FieldByName('COOPERATIVA').AsString,
                                                             QuerConta.FieldByName('TIPO_CONVENIO').AsString);

    // Gera o cabeçalho da empresa
    ControllerInternoBoleto_ConfiguraCedente(AACBrBoleto, QuerConta);

    // Limpa os boletos da lista
    AACBrBoleto.ListadeBoletos.Clear;

    // Carrega a conta
//    Boleto_CarregaConta(AACBrBoleto, Contas);

    AACBrBoleto.DirArqRetorno  := ExtractFileDir(AArquivo);
    AACBrBoleto.NomeArqRetorno := ExtractFileName(AArquivo);
    AACBrBoleto.LerRetorno;

    if (AACBrBoleto.ListadeBoletos.Count = 0) then
      raise Exception.Create('Não tem retorno para fazer.');    // Deve tratar esse erro na tela

  finally
    QuerConta.Free;
  end;
  Result:= (SQLFinanceiro_boleto_RetornoArquivoController(AConta.FieldByName('Codigo').AsInteger ,
                                             AACBrBoleto.NumeroArquivo, AACBrBoleto.DataArquivo).RecordCount <>0);
end;

procedure ControllerBoletoArquivo_Retorno_GravaBlob(Arquivo: string);
begin
  if Trim(Arquivo) = '' then
    raise Exception.Create('Informe o nemo do arquivo de retorno.');  // Deve tratar esse erro na tela

  if Not FileExists(Arquivo) then
    raise Exception.Create('Arquivo de retorno, não localizado.');    // Deve tratar esse erro na tela

  SevicesBoletoArquivo_RetornoGravaBlob(Arquivo);
end;

procedure ControllerBoletoArquivo_Remessa_Gerar(AFinanceiro: TDataSet);
begin
  ServiceBoletoArquivo_RemessaGerar(AFinanceiro);
end;

function ControllerBoletoArquivo_Remessa_GerarACBr(AACBrBoleto :TACBrBoleto): string;
var
  ATitulo: TACBrTitulo;
  ASplit: TArray<string>;
  ADadosSacado: TEnderecoCobranca;
  ADataAtual: TDateTime;
begin
//  AFinanceiro_Boleto.FieldByName('DT_GERACAO_ARQUIVO').AsDateTime := DataHoraSys;
//   Código usado quando o componente de emissão do boleto for do ACBr.
(*  ADataAtual := DataHoraSys;
  AACBrBoleto.Banco.TipoCobranca := BoletoUtils_DefineBanco(Contas.FieldByName('CODBANCO').AsInteger,
                                               Contas.FieldByName('CARTEIRA').AsString,
                                               Contas.FieldByName('COOPERATIVA').AsString,
                                               Contas.FieldByName('TIPO_CONVENIO').AsString);
  BoletoUtils_Cedente(AACBrBoleto, Contas);
  if MatchStr(Contas.FieldByName('CODBANCO').AsString, ['1', '237', '756']) and (Contas.FieldByName('COOPERATIVA').AsString = 'S') then
  begin
    with AACBrBoleto do // Para a remessa quando é cooperativa, agencia e conta correte são da cooperativa
    begin
      Cedente.Agencia := Contas.FieldByName('AGENCIA_COOPERATIVA').AsString;
      Cedente.AgenciaDigito := Contas.FieldByName('DIGITO_AG_COOPERATIVA').AsString;
      Cedente.Conta := Contas.FieldByName('CONTA_COOPERATIVA').AsString;
      Cedente.ContaDigito := Contas.FieldByName('DIGITO_CC_COOPERATIVA').AsString;
      Cedente.CodigoCedente := Contas.FieldByName('CODIGO_CEDENTE_COOPERATIVA').AsString;
      Cedente.Nome := Contas.FieldByName('NOME_CEDENTE').AsString;
    end;
  end;

  Financeiro_Boleto_Historico.First;
  while not Financeiro_Boleto_Historico.Eof do
  begin
    if FReenviandoRemessa and (Financeiro_Boleto_Historico.FieldByName('REENVIAR_REMESSA').AsInteger <> 1) then
    begin
      Financeiro_Boleto_Historico.Next; // Não envia os boletos desmarcados a coluna "Reenviar Remessa"
      Continue;
    end;

    ATitulo := AACBrBoleto.CriarTituloNaLista;
    with ATitulo do
    begin
      if not IsZero(Financeiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat) then
      begin
        { Caso o boleto seja pago antes da data do desconto, este desconto será aplicado ao boleto.
          O desconto é dado em VALOR! }
        DataDesconto  := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, -Contas.FieldByName('DIADESCONTO').AsInteger);
        ValorDesconto := Financeiro_Boleto_Historico.FieldByName('VALOR_DESCONTO_BOLETO').AsFloat;
        TipoDesconto  := tdValorFixoAteDataInformada;

        { É possível ter outras variações para o desconto,
          Ex: Se o boleto for pago até dia 10, dar 5% de desconto
          Se o boleto for pago até dia 5, dar 8% de desconto

          Para isso existem os campos DataDesconto2 e ValorDesconto2. O ACBr tem suporte, mas verificar no sistema caso
          seja utilizado
        }
      end
      else
      begin
        TipoDesconto := tdNaoConcederDesconto;
        ValorDesconto := 0;
      end;
      {
        DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
        Instrucao1        := padL(trim(edtInstrucoes1.Text),2,'0');
        Instrucao2        := padL(trim(edtInstrucoes2.Text),2,'0'); }
      if Financeiro_Boleto_Historico.FieldByName('ACEITE').AsString = 'S' then
        Aceite := atSim
      else
        Aceite := atNao;
      TipoImpressao        := tipNormal;
      LocalPagamento       := Contas.FieldByName('LOCAL_DE_PAGAMENTO').AsString;
      ValorDespesaCobranca := Contas.FieldByName('CUSTO_BOLETO').AsFloat;
      Carteira             := Financeiro_Boleto_Historico.FieldByName('CARTEIRA').AsString;
      Mensagem.Text        := BoletoUtils_TrataTexto(Financeiro_Boleto_Historico.FieldByName('DEMONSTRATIVO').AsString);
      NossoNumero          := Financeiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString;
      SeuNumero            := Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      NumeroDocumento      := Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;
      DataDocumento        := Financeiro_Boleto_Historico.FieldByName('EMISSAO').AsDateTime;
      DataProcessamento    := DataHoraSys;

      // Isso aqui parece que precisa para gerar o arquivo do banco 136 - unicredSC
      // DiasDeProtesto       := Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger;
      if Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger > 0 then
        CodigoNegativacao := cnProtestarCorrido;
      TipoDiasProtesto := diCorridos;

      DataLimitePagto := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      DataProtesto    := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger);

      DataBaixa  := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Financeiro_Boleto_Historico.FieldByName('BAIXA_DEVOLUCAO').AsInteger);
      Vencimento := Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime;

      CodigoMulta     := cmPercentual; { Multa e Juros Mora são sempre em percentual }
      PercentualMulta := Financeiro_Boleto_Historico.FieldByName('PERCENTUAL_MULTA').AsCurrency; // Vem por Left Join da Conta

      DataMoraJuros := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Contas.FieldByName('TOLERANCIA').AsInteger + 1);
      DataMulta     := IncDay(Financeiro_Boleto_Historico.FieldByName('VENCTO').AsDateTime, Contas.FieldByName('MULTA_DIAS_TOLERANCIA').AsInteger);

      case ContasCODBANCO.AsInteger of
        1:
          begin
            if (Contas.FieldByName('COOPERATIVA').AsString = 'S') and (Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
              DataProtesto := 0
          end;
        41:
          begin // Banrisul
            ASplit := NumeroDocumento.Split([' ', '-', '/']);
            NumeroDocumento := ASplit[1] + '-' + ASplit[4];
            CodigoMora := '0';
          end;
        77:
          begin
            if Not IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
            begin
              CodigoMoraJuros := cjTaxaDiaria;
              ValorMoraJuros  := Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency;
            end;
          end;
        104:
          CodigoMora := '1';
        133:
          CodigoMora := '1';

        // 136 : begin
        // if (Financeiro_Boleto_Historico.FieldByName('PROTESTO').AsInteger = 0) then
        // DataProtesto := 0
        // end;

        // (Rodrigues)(OS17022016107)(23/02/2016) - reduzir o tamanho do numero do documento para caber no arquivo de remessa do bradesco.
        237:
          begin
            if NumeroDocumento.StartsWith('OS ', True) then
              NumeroDocumento := NumeroDocumento.Substring(3);
            if ContasLAYOUT_ARQUIVO.AsString = '240' then
              AACBrBoleto.Cedente.AgenciaDigito:=' ';
          end;
        748: // Sicredi
          begin
            { 1 - Valor monetário por dia
              2 - Taxa mensal em Percentual
              3 - Isento }
            if IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '3'
            else
              CodigoMora := '2';
          end;
        756: // Sicoob
          begin
            { Código do Juros de Mora:
              '0'  =  Isento
              '1'  =  Valor por Dia
              '2'  =  Taxa Mensal }
            if IsZero(Financeiro_Boleto_Historico.FieldByName('JUROS_MORA').AsCurrency) then
              CodigoMora := '0'
            else
              CodigoMora := '1';
          end;
      end;

      // DescricaoMotivoRejeicaoComando := '';
      // DescricaoOcorrenciaOriginal    := '';
      // MotivoRejeicaoComando          := '';
      // OcorrenciaOriginal             := '';

      EspecieDoc := Financeiro_Boleto_HistoricoESPECIE.AsString;
      ADadosSacado := BuscaEnderecoCobrancaGetEnderecoCobranca(Financeiro_Boleto_HistoricoPESSOA_RESPONSAVEL_CODIGO.AsString);
      with Sacado do
      begin
        Bairro := BoletoUtils_TrataTexto(ADadosSacado.Bairro);
        CEP := ADadosSacado.CEP;
        Cidade := BoletoUtils_TrataTexto(ADadosSacado.Cidade);
        Complemento := BoletoUtils_TrataTexto(ADadosSacado.Complemento);
        Email := ADadosSacado.Email;
        UF := BoletoUtils_TrataTexto(ADadosSacado.UF);
        Numero := ADadosSacado.Numero;
        Logradouro := BoletoUtils_TrataTexto(ADadosSacado.Endereco);
        NomeSacado := BoletoUtils_TrataTexto(ADadosSacado.Responsavel);
        CNPJCPF := ADadosSacado.CNPJCPF;
        if ADadosSacado.TipoPessoa = 'F' then
          Pessoa := pFisica
        else if ADadosSacado.TipoPessoa = 'J' then
          Pessoa := pJuridica
        else
          Pessoa := pOutras;
      end;

      OcorrenciaOriginal.Tipo := TDMBoletos.StrToTipoOcorrencia(Financeiro_Boleto_HistoricoTIPOOCORRENCIA.AsString);

      ValorAbatimento := 0;
      ValorDocumento := Financeiro_Boleto_HistoricoTotal.AsCurrency;
      ValorIOF := 0;
      // Informação pro merge da 2020: o ValorDesconto que tinha aqui foi pra umas 30 linhas acima, no começo desta rotina
      ValorMoraJuros := Financeiro_Boleto_HistoricoJUROS_MORA.AsCurrency;
      ValorOutrasDespesas := 0;
      ValorOutrosCreditos := 0;
   {
      AFinanceiro.Close;
      if (Contas.FieldByName('CODBANCO').AsString = '77') then
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.DOCUMENTO = ' + QuotedStr(Trim(Financeiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString)) + ') and(F.STATUS LIKE ''ATIVO%'')'
      else
        AFinanceiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = ' + QuotedStr(Financeiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString) +
          ') and(F.STATUS LIKE ''ATIVO%'')'; // or (F.STATUS = ''INATIVO AGRUPADO''))';;
      AFinanceiro.ParamByName('CodConta').AsInteger :=  Contas.FieldByName('CODIGO').AsInteger;
      AFinanceiro.Open;
      AFinanceiro.Edit;
      AFinanceiro.FieldByName('PODE_ENVIAR').AsString := 'N';
      AFinanceiro.Post;     }
    end;

    Financeiro_Boleto_Historico.Next;
  end;

  if (ContasCODBANCO.AsInteger = 1) and (ContasCOOPERATIVA.AsString = 'S') then
  begin
    AACBrBoleto.NomeArqRemessa := 'CBR' + PadLeft(YearOf(ADataAtual).ToString, 4, '0') + PadLeft(MonthOf(ADataAtual).ToString, 2, '0') +
      PadLeft(DayOf(ADataAtual).ToString, 2, '0') + PadLeft(ContasSEQREM.AsString, 2, '0') + '.rem';
  end;

  // Para o banco Amazônia, o tamanho máximo do nosso número deve ser 20 para que o preenchimento seja correto
  // da remessa
  if (ContasCODBANCO.AsInteger = 3) then
    AACBrBoleto.Banco.TamanhoMaximoNossoNum := 20;

  AACBrBoleto.DataArquivo := now;
  if ContasLAYOUT_ARQUIVO.AsString = '240' then
    AACBrBoleto.LayoutRemessa := c240
  else
    AACBrBoleto.LayoutRemessa := c400;

  if Contas.FieldByName('versao_ARQUIVO').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoArquivo := Contas.FieldByName('versao_ARQUIVO').AsInteger;
  if Contas.FieldByName('VERSAO_LAYOUT').AsInteger<>0 then
    AACBrBoleto.Banco.LayoutVersaoLote := Contas.FieldByName('VERSAO_LAYOUT').AsInteger;

  AACBrBoleto.DirArqRemessa := GetDirSistema + 'Boletos\' + Contas.FieldByName('Codigo').AsString + '\Remessa';
  if not DirectoryExists(AACBrBoleto.DirArqRemessa) then
    CreateDir(AACBrBoleto.DirArqRemessa);
  AACBrBoleto.NumeroArquivo := Ds.DataSet.FieldByName('Codigo').AsInteger;
  try
    Result := AACBrBoleto.GerarRemessa(Ds.DataSet.FieldByName('Codigo').AsInteger);
    FUltimaRemessaGerada := Result;
  except
    on E: Exception do
    begin
      btnCancelarClick(nil);
      GeraExcecao('Não foi possível gerar a remessa: ' + E.Message);
    end;
  end;
  Memo1.Lines.Add('Remessa gerada em ' + QuotedStr(Result));
  if Pos('@', ContasEXECUTA_ARQUIVO_REMESSA.AsString) <> 0 then
  begin
    TFrmEmail.GerarEmail(Self, ContasEXECUTA_ARQUIVO_REMESSA.AsString, 'Arquivo de Remessa: ' + Empresa.FieldByName('FANTASIA').AsString, '', Result);
  end
  else
    ShellExecute(Handle, nil, PWideChar(ContasEXECUTA_ARQUIVO_REMESSA.AsString), '', nil, SW_HIDE);
end;
      *)
{$ENDREGION}


end.

