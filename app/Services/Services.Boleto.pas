unit Services.Boleto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes, UCHistDataset, IBX.IBDatabase, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBStoredProc;


// Funções internas de Inserções
procedure Repo_InsertFinanceiro_GeraDebitoValorDespesaCobranca(ATransa : TFDTransaction; AFinanceiro_Boleto_Historico: TDataSet);
procedure Repo_InsertFinanceiro_BoletoArquivo_Novo(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataArquivo : TDate; ANumeroArquivo:Integer; ACodConta: Integer);
procedure Repo_InsertFinanceiro_BoletoWS_Novo(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataArquivo : TDate; ACodConta: Integer);
procedure Repo_InsertFinanceiro_NaoLocalizadas(ATituloRet: TACBrBoletoTituloRet; AFinanceiro : TFDQuery);
procedure Repo_InsertFinanceiro_Boleto_Historico(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico: TDataSet);

// Funções internas de Edições
procedure Repo_EditFinanceiro_BaixaDeBoleto(ATransa :TFDTransaction; AFinanceiro_Boleto_Historico, AFinanceiro_Boleto: TFDQuery);
procedure Repo_EditContas( ADataSet_Contas :TDataSet; ARetorno :Integer);

procedure AtualizaVendaParcelasBaixadas(AFinanceiro_Historico: TFDQuery);

function SevicesBoleto_Retorno_Tratar(AACBrBoleto: TACBrBoleto; ACodConta :Integer; AArquivo:String):Integer;
function ServicesBoleto_Remessa_CriaRemessaBoletosFinanceiro(AFinanceiro_Boleto, AContas, AFinanceiro_Boleto_Historico: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Integer;
procedure ServicesBoleto_Remessa_BoletosPendentesFinanceiro(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet);


procedure ServicesBoleto_GeraBoleto_ComDadosPadrao( ABoletos, AFinanceiro :TDataSet);
procedure ServicesBoleto_EditaBoleto_Ocorrencia(ABoletos, AFinanceiro :TDataSet; ANovaOcorrencia: String);
procedure ServicesBoleto_Verifica_BoletoCancelado(AFinanceiro, ABoleto :TDataSet);
procedure ServicesBoleto_Remessa_RemoverEenviarNaProximaRemessa(AFinanceiro_Boleto_Historico: TFDQuery);

implementation

Uses UnitFuncoes,
  Utils.Boleto.Retorno, Utils.Financeiro, Utils.Boleto,
  SQL.Financeiro, SQL.Financeiro_boleto, SQL.Contas, SQL.Boleto, SQL.Financeiro_Boleto_Historico, SQL.Pessoas,
  Services.Boleto.Arquivo, Services.Venda, Services.Financeiro, WRFuncoes;

// Funções internas de Inserções
procedure Repo_InsertFinanceiro_GeraDebitoValorDespesaCobranca(ATransa : TFDTransaction; AFinanceiro_Boleto_Historico: TDataSet);
var
  AValor: Double;
  ADocumento: string;

  function ValidaLancamento: Boolean;
  var
    QuerX: TFDQuery;
  begin
    Result := (Procura('GERA_DEBITO_TARIFA', 'CONTAS', AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsString) = 'S');
    if Result then
    begin
      AFinanceiro_Boleto_Historico.First;
      while not AFinanceiro_Boleto_Historico.Eof do
      begin
        AValor := AValor + AFinanceiro_Boleto_Historico.FieldByName('DESPESA_COBRANCA').AsFloat;
        AFinanceiro_Boleto_Historico.Next;
      end;
      Result := AValor > 0;
    end;
    if Result then
    begin
      ADocumento := 'RETORNO - ' + AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO_BOLETO').AsString;
      QuerX := GeraFDQuery(ATransa);
      try
        QuerX.SQL.Text := 'select first 1 1 from FINANCEIRO F  where F.CODPEDIDO = :CODPEDIDO and F.CODEMPRESA = :CODEMPRESA ' +
          '      and F.DATAPAGTO = :DATAPAGTO  and F.DOCUMENTO = :DOCUMENTO';
        QuerX.ParamByName('CODPEDIDO').AsString := AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO_BOLETO').AsString;
        QuerX.ParamByName('CODEMPRESA').AsString := EmpresaAtiva;
        QuerX.ParamByName('DATAPAGTO').AsDateTime := AFinanceiro_Boleto_Historico.FieldByName('DATA_ARQUIVO').AsDateTime;
        QuerX.ParamByName('DOCUMENTO').AsString := ADocumento;
        QuerX.Open;
        Result := QuerX.IsEmpty;
      finally
        QuerX.Free;
      end;
    end;
  end;

begin
  if not ValidaLancamento then
    Exit;

  ServicesFinanceiro_Lancamento_Financeiro(ATransa, // Transacao
    ProximoCodigoTrans(ATransa, 'Financeiro'), // ACodigo
    'PAGA', // ATipo
    '', // ATipoResponsavel
    AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsInteger, // ACodConta
    '', // ACodResponsavel
    'DEBITO DE TARIFA DE COBRANÇA (BOLETOS)', // ARazaoSocial
    ADocumento, // ADocumento
    '', // ANotaFiscal
    '', // ACodTipoPagto
    'DÉBITO AUTOMÁTICO', // ATipoPagto
    '', // ACodCondicaoPagto
    '', // ACondicaoPagto
    '', // Plano de contas              // ACodPlanoContas
    'DEBITO DE TARIFA DE COBRANÇA (BOLETOS) - ' + Procura('DESCRICAO', 'CONTAS', AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsString), // AHistorico
    'ATIVO', // AStatus
    AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO_BOLETO').AsString, // ACodPedido
    '', // ACodNFEntrada
    '', // AParcela
    '', // AContatos
    CodigoUsuario, // ACodUsuario
    '', // ACodFinanceiroGrupo
    EmpresaAtiva, // ACodEmpresa
    AValor, // AValor
    0, // ADesconto
    0, // AJuros
    0, // Previsao
    '', // AChequeNumero
    DataHoraSys, // ADtEmissao
    AFinanceiro_Boleto_Historico.FieldByName('DATA_ARQUIVO').AsDateTime, // ADtVencto
    AFinanceiro_Boleto_Historico.FieldByName('DATA_ARQUIVO').AsDateTime, // ADtPagto
    0 // ADtNotaFiscal
    // AOrigem : string = ''
    // ACodFinOriginal : Integer = 0
    // AAgrupador : string = ''
    );
end;

procedure Repo_InsertFinanceiro_BoletoWS_Novo(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataArquivo : TDate;  ACodConta: Integer); // Não pode  - Essa rotina é apenas para WS ????????
Var
  QuerX: TFDQuery;
begin
  AFinanceiro_Boleto.Insert;
  QuerX := GeraFDQuery(ATransa);  // Aqui tem que pegar a sequencia que esta no cadastro??? Max +  1 não é o número do retorno
  try
    QuerX.SQL.Text := 'select max(CODIGO) from FINANCEIRO_BOLETO  where (CODCONTA = :CodConta)and(DESCRICAO = ''RETORNO'')';
    QuerX.Params[0].AsInteger := ACodConta;
    QuerX.Open;
    AFinanceiro_Boleto.FieldByName('RETORNO').AsInteger := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
  AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger        := Trunc(GetProximoCodigoGen('CR_FINANCEIRO_BOLETO'));
  AFinanceiro_Boleto.FieldByName('CODCONTA').AsInteger      := ACodConta;
  AFinanceiro_Boleto.FieldByName('DATA').AsDateTime         := DataSis;
  AFinanceiro_Boleto.FieldByName('DATA_ARQUIVO').AsDateTime := ADataArquivo;

  AFinanceiro_Boleto.FieldByName('DESCRICAO').AsString      := 'RETORNO';
  AFinanceiro_Boleto.FieldByName('CHAVE').AsString          := 'RETORNO;' +
                                                              IntToStr(ACodConta)+ ';' +
                                                              FormatDateTime('DD-MM-YYYY', ADataArquivo);

  AFinanceiro_Boleto.Post;
end;

procedure Repo_InsertFinanceiro_BoletoArquivo_Novo(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataArquivo : TDate; ANumeroArquivo:Integer;  ACodConta: Integer); // Não pode  - Essa rotina é apenas para WS ????????
Var
  QuerX: TFDQuery;
begin
  AFinanceiro_Boleto.Insert;  // Aqui se não achar o retorno cria um novo, se ja existir não cadastre novamente
  if ANumeroArquivo = 0 then
  begin
    try
      QuerX := SQLBoleto_SeqRetornoConta(ATransa, ACodConta);
      ANumeroArquivo := QuerX.Fields[0].AsInteger + 1;
    finally
      QuerX.Free;
    end;
  end;
  AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger        := Trunc(GetProximoCodigoGen('CR_FINANCEIRO_BOLETO'));
  AFinanceiro_Boleto.FieldByName('RETORNO').AsInteger       := ANumeroArquivo;
  AFinanceiro_Boleto.FieldByName('CODCONTA').AsInteger      := ACodConta;
  AFinanceiro_Boleto.FieldByName('DATA').AsDateTime         := DataSis;
  AFinanceiro_Boleto.FieldByName('DATA_ARQUIVO').AsDateTime := ADataArquivo;

  AFinanceiro_Boleto.FieldByName('DESCRICAO').AsString      := 'RETORNO';

  // A Regra do Arquvo é assim:
  AFinanceiro_Boleto.FieldByName('CHAVE').AsString          := 'RETORNO;' +
                                                              IntToStr(ACodConta)+ ';' +
                                                              IntToStr(ANumeroArquivo)+ ';' +
                                                              FormatDateTime('DD-MM-YYYY', ADataArquivo);

  AFinanceiro_Boleto.Post;
end;

procedure Repo_InsertFinanceiro_NaoLocalizadas(ATituloRet: TACBrBoletoTituloRet; AFinanceiro : TFDQuery);
var
  ADataAtual: TDateTime;
begin
  // Da para ter acesso ao Cliente, nesse arquivo tem o Sacado
  ADataAtual := DataHoraSys;
  //  FDadosAlteracao.Limpar;  Isso ta ativo
  AFinanceiro.Insert;
  AFinanceiro.FieldByName('CODIGO').AsInteger := GetProximoCodigoSP('FINANCEIRO');
  AFinanceiro.FieldByName('EMISSAO').AsDateTime := ADataAtual;
  AFinanceiro.FieldByName('VENCTO').AsDateTime := DateOf(ADataAtual);
  AFinanceiro.FieldByName('STATUS').AsString := 'ATIVO';
  AFinanceiro.FieldByName('CODPEDIDO').AsInteger := 0;
  AFinanceiro.FieldByName('PARCELA').AsInteger := 1;
  AFinanceiro.FieldByName('CODEMPRESA').AsString := EmpresaAtiva;
  AFinanceiro.FieldByName('CODFINANCEIRO_GRUPO').AsInteger := AFinanceiro.FieldByName('CODIGO').AsInteger;
  AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := {$IFDEF ASSOCIACAO}'ASS'{$ELSE}'CLI'{$ENDIF};
  AFinanceiro.FieldByName('CODCONTA').AsString := AFinanceiro.FieldByName('CODCONTA').AsString;
  AFinanceiro.FieldByName('TIPOPAGTO').AsString := 'BOLETO';
  AFinanceiro.FieldByName('HISTORICO').AsString := 'BOLETO RECEBIDO NÃO CADASTRADO';

//  AFinanceiro.FieldByName('DOCUMENTO').AsString := IfThen(ATitulo.SeuNumero.Trim <> '', Copy(ATitulo.SeuNumero, 1, 20).Trim,
//    ATitulo.NumeroDocumento.Trim);

  // AFinanceiro.FieldByName('STATUS').AsString          := 'ATIVO';
  (*
  AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString := ATituloRet.NossoNumTitulo;
  AFinanceiro.FieldByName('RAZAOSOCIAL').AsString := ATituloRet.Sacado.NomeSacado;
  if AACBrBoleto.ListadeBoletos[I].DataAbatimento > 0 then
    AFinanceiro.FieldByName('VENCTO').AsDateTime := ATituloRet.DataAbatimento { TODO: verificar porque insere data de venvimento vazia }
  else
    AFinanceiro.FieldByName('VENCTO').AsDateTime := ADataAtual; { TODO: alterado para informar a data atual para não dar erro no grid do AFinanceiro }
  // AFinanceiro.FieldByName('VENCTO').Clear;

  // AFinanceiro.FieldByName('EMISSAO').AsDateTime  := ADataAtual;

  if ATitulo.ValorPago <> 0 then
  begin
    if ATitulo.ValorRecebido > ATitulo.ValorDocumento then
      ATitulo.ValorMoraJuros := ATitulo.ValorMoraJuros + (ATitulo.ValorDocumento - ATitulo.ValorRecebido)
    else if ATitulo.ValorRecebido < ATitulo.ValorDocumento then
      ATitulo.ValorDesconto := ATitulo.ValorDesconto + (ATitulo.ValorRecebido - ATitulo.ValorDocumento);
  end;

  AFinanceiro.FieldByName('JUROS').AsFloat := ATitulo.ValorMoraJuros + ATitulo.ValorOutrosCreditos;
  AFinanceiro.FieldByName('DESCONTO').AsFloat := ATitulo.ValorDesconto;
  AFinanceiro.FieldByName('VALOR').AsFloat := ATitulo.ValorDocumento;
  // if ATitulo.DataCredito > 0 then
  if IsLiquidado(ATitulo.OcorrenciaOriginal.Tipo) then
  begin
    AFinanceiro.FieldByName('TIPO').AsString := 'RECEBIDA';
    AFinanceiro.FieldByName('DATAPAGTO').AsDateTime := ATitulo.DataOcorrencia;
  end
  else
    AFinanceiro.FieldByName('TIPO').AsString := 'A RECEBER';       *)

  AFinanceiro.Post;
end;

procedure Repo_InsertFinanceiro_Boleto_Historico(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico: TDataSet);

begin
  AFinanceiro_Boleto_Historico.Insert;

//  AFinanceiro := SQLFinanceiro_PeloNossonumero(ATituloRet.NossoNumero);       // Isso pode porque esta buscando em outr transação, Meu deus  difícil isso, se tiver duas baixas no mesmo momento fica difícil encontrar
//  AFinanceiro_Boleto_Historico.FieldByName('CODIGO').AsInteger := AFinanceiro.FieldByName('CODIGO').AsInteger;
//  AFinanceiro_Boleto_Historico.FieldByName('CODPEDIDO').AsString := AFinanceiro.FieldByName('CODPEDIDO').AsString;
//  AFinanceiro_Boleto_Historico.FieldByName('CODEMPRESA').AsString := AFinanceiro.FieldByName('CODEMPRESA').AsString;
  AFinanceiro_Boleto_Historico.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_FINANCEIRO_BOLETO_HISTORICO'));
  AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO_BOLETO').AsInteger := AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;
  AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsInteger := AFinanceiro_Boleto.FieldByName('CODCONTA').AsInteger;
  AFinanceiro_Boleto_Historico.FieldByName('DATA_ARQUIVO').AsDateTime := AFinanceiro_Boleto.FieldByName('DATA_ARQUIVO').AsDateTime;
  AFinanceiro_Boleto_Historico.FieldByName('DESCRICAO').AsString := AFinanceiro_Boleto.FieldByName('DESCRICAO').AsString;    /// Not null
  AFinanceiro_Boleto_Historico.FieldByName('TEM_MIGRADO').AsString := 'S';   /// Parece que ess campo não criou


end;

// Funções internas de Edições
procedure Repo_EditFinanceiro_BaixaDeBoleto(ATransa :TFDTransaction; AFinanceiro_Boleto_Historico, AFinanceiro_Boleto: TFDQuery);
var
  ATipo, ATipoResponsavel, ADocumento: String;
  ADataPagto, ADataAtual: TDateTime;
  AFinanceiro: TFDQuery;
  ACodigo: Integer;
begin
  AFinanceiro_Boleto_Historico.First;
  while Not AFinanceiro_Boleto_Historico.Eof do
  begin
    AFinanceiro := SQLFinanceiro_PeloNossonumero(ATransa, AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString, AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsInteger);       // Isso pode porque esta buscando em outr transação, Meu deus  difícil isso, se tiver duas baixas no mesmo momento fica difícil encontrar
    // Se não encontrou da merda aqui, dai tem que registrar tudo do retorno.
    try
      AFinanceiro_Boleto_Historico.Edit;
      AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO').AsInteger := AFinanceiro.FieldByName('CODIGO').AsInteger;
      AFinanceiro_Boleto_Historico.FieldByName('CODPEDIDO').AsString      := AFinanceiro.FieldByName('CODPEDIDO').AsString;
      AFinanceiro_Boleto_Historico.FieldByName('CODEMPRESA').AsString     := AFinanceiro.FieldByName('CODEMPRESA').AsString;
      AFinanceiro_Boleto_Historico.FieldByName('AGRUPADOR').AsInteger     := AFinanceiro.FieldByName('AGRUPADOR').AsInteger;  // Cloquei isso aqui para usar na proxima função de situacao da venda

      AFinanceiro_Boleto_Historico.Post;
      try
        // Aqui tem que tentar baixar o Financeiro se ele não estiver em edição
        // Se estiver Marca que não conseguiu dar baixa e na tela, colocar para baixar manualmente, e manter o histórico
        if AFinanceiro.RecordCount > 0 then
        begin
          if AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').AsDateTime <> 0 then
          begin
            AFinanceiro.Edit;
            AFinanceiro.FieldByName('TIPO').AsString        := 'RECEBIDA';
            AFinanceiro.FieldByName('DATAPAGTO').AsDateTime := AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').AsDateTime;
            AFinanceiro.FieldByName('JUROS').AsFloat        := RoundTo(AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat, -6);  // Deveria ser 2 casas, mais sei lá
            AFinanceiro.FieldByName('RETORNO').AsInteger    := AFinanceiro_Boleto.FieldByName('RETORNO').AsInteger;
            AFinanceiro.Post;
          end;
        end else
        begin
          {      toRetornoLiquidadoSemRegistro,            // 05-Liquidado sem registro (carteira 17-tipo4)
          toRetornoLiquidado,                       // 06-Liquidação Normal
          toRetornoLiquidadoPorConta,               // 07-Liquidação por Conta
          toRetornoLiquidadoEmCartorio,             // 15-Liquidação em Cartório
          toRetornoTituloPagoEmCheque,              // 46–Título pago com cheque, aguardando compensação
          toRetornoLiquidadoAposBaixaOuNaoRegistro: // 17-Liquidação Após Baixa ou Liquidação de Título Não Registrado}
          if AFinanceiro_Boleto_Historico.FieldByName('OCORRENCIA').AsString = 'toRetornoLiquidado' then// UtilsBoletoRetorno_IsLiquidado(ATitulo.OcorrenciaOriginal.Tipo) then
          begin
            ATipo := 'RECEBIDA';
  //          ADataPagto := ATitulo.DataOcorrencia;
          end else
          begin
            ATipo := 'A RECEBER';
          end;
          ATipoResponsavel := {$IFDEF ASSOCIACAO}'ASS'{$ELSE}'CLI'{$ENDIF};

          ADocumento := AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString;

          ACodigo := GetProximoCodigoSP('FINANCEIRO');

  //        if ATitulo.ValorPago <> 0 then
  //        begin
  //          if ATitulo.ValorRecebido > ATitulo.ValorDocumento then
  //            ATitulo.ValorMoraJuros := ATitulo.ValorMoraJuros + (ATitulo.ValorDocumento - ATitulo.ValorRecebido)
  //          else if ATitulo.ValorRecebido < ATitulo.ValorDocumento then
  //            ATitulo.ValorDesconto := ATitulo.ValorDesconto + (ATitulo.ValorRecebido - ATitulo.ValorDocumento);
  //        end;

          ADataAtual := DataHoraSys;

          ServicesFinanceiro_Lancamento_Financeiro(
                                                    ATransa,
                                                    ACodigo,//ProximoCodigoTrans(Transa, 'FINANCEIRO'),
                                                    ATipo,
                                                    ATipoResponsavel,
                                                    1,//ACODCONTA
                                                    '1',//ACodResponsavel
                                                    'a',//ATitulo.Sacado.NomeSacado
                                                    ADocumento,
                                                    '',//ANotaFiscal
                                                    '',//ACodTipoPagto
                                                    'BOLETO',//ATipoPagto
                                                    '',//ACodCondicaoPagto
                                                    '',//ACondicaoPagto
                                                    '',//ACodPlanoContas
                                                    '',//historico
                                                    'ATIVO',//AStatus
                                                    '',//ACodPedido
                                                    '',//ACodNFEntrada
                                                    '',//AParcela
                                                    '',//AContatos
                                                    1,//ACodUsuario: Integer;
                                                    'ACodigo',//ACodFinanceiroGrupo,
                                                    EmpresaAtiva,//ACodEmpresa
                                                    AFinanceiro_Boleto_Historico.FieldByName('VALOR_CREDITO').AsFloat,//AValor
                                                    AFinanceiro_Boleto_Historico.FieldByName('VALOR_DESCONTO').AsFloat,//ADesconto
                                                    AFinanceiro_Boleto_Historico.FieldByName('VALOR_MORA_JUROS').AsFloat + AFinanceiro_Boleto_Historico.FieldByName('VALOR_OUTROS_CREDITOS').AsFloat,//AJuros
                                                    0,// AValorPrevisao;
                                                    '',// AChequeNumero: string;
                                                    ADataAtual,//ADtEmissao
                                                    DateOF(ADataAtual),//ADtVencto
                                                    AFinanceiro_Boleto_Historico.FieldByName('DT_OCORRENCIA').AsDateTime,//ADtPagto
                                                    0,//ADtNotaFiscal: TDateTime;
                                                    '',//AOrigem: string = '';
                                                    0,//ACodFinOriginal: Integer = 0;
                                                    '',//AAgrupador: string = '';
                                                    0,//ADtCompetencia: TDateTime = 0);
                                                    AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString);
        end;
      except

      end;
    finally
      AFinanceiro.Free;
    end;
    AFinanceiro_Boleto_Historico.Next;
  end;

  {
  if not(ATitulo.OcorrenciaOriginal.Tipo in [ACBrBoleto.toRetornoRegistroConfirmado, ACBrBoleto.toRetornoBaixadoInstAgencia,
    ACBrBoleto.toRetornoRegistroRecusado, ACBrBoleto.toRetornoBaixaSolicitada, ACBrBoleto.toRetornoComandoRecusado,
    ACBrBoleto.toRetornoRecebimentoInstrucaoAlterarVencimento])then   // or(ATitulo.OcorrenciaOriginal.Tipo = ACBrBoleto.toRetornoTransferenciaCarteiraEntrada)
  begin
  end;
  if IsLiquidado(ATitulo.OcorrenciaOriginal.Tipo) then
  begin
    AFinanceiro.FieldByName('TIPO').AsString := 'RECEBIDA';
    AFinanceiro.FieldByName('DATAPAGTO').AsDateTime := AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').AsDateTime;
    AFinanceiro.FieldByName('JUROS').AsFloat := RoundTo(AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat, -6);  // Deveria ser 2 casas, mais sei lá
  end;
  }
end;

procedure Repo_EditContas( ADataSet_Contas :TDataSet; ARetorno :Integer);
begin
  // Pode Acontecer merda se a tabela estiver em edição ou trancada em uma transação grande
  ADataSet_Contas.Edit;
  ADataSet_Contas.FieldByName('SEQRET').AsInteger := ARetorno;
  ADataSet_Contas.Post;
end;

procedure AtualizaVendaParcelasBaixadas(AFinanceiro_Historico: TFDQuery);
Var
  I : Integer;
  AListaVendasAtualizar, AListaAgrupadoresAtualizar: TStringList;
begin
  AListaVendasAtualizar := TStringList.Create;
  AListaAgrupadoresAtualizar := TStringList.Create;
  try
    AFinanceiro_Historico.First;
    while Not AFinanceiro_Historico.Eof do
    begin
      AListaVendasAtualizar.AddIfNotExists(AFinanceiro_Historico.FieldByName('CODPEDIDO').AsString);
      AListaAgrupadoresAtualizar.AddIfNotExists(AFinanceiro_Historico.FieldByName('AGRUPADOR').AsString);   // Parcelas Agrupadas
      AFinanceiro_Historico.Next;
    end;

//    AAguarde.Mensagem := 'Atualizando situação financeira das Vendas';

    for I := 0 to AListaVendasAtualizar.Count - 1 do
      ServicesVenda_SituacaoFinanceira(AListaVendasAtualizar[I]);

    for I := 0 to AListaAgrupadoresAtualizar.Count - 1 do
      ServicesVenda_SituacaoFinanceira(AListaAgrupadoresAtualizar[I]);
  finally
    AListaVendasAtualizar.Free;
    AListaAgrupadoresAtualizar.Free;
  end;
end;

function SevicesBoleto_Retorno_Tratar(AACBrBoleto: TACBrBoleto; ACodConta :Integer; AArquivo:String):Integer;
begin
  if AArquivo <> '' then
    Result := SevicesBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto, ACodConta);
//  Cade o tratamento do WS
end;

function ServicesBoleto_Remessa_CriaRemessaBoletosFinanceiro(AFinanceiro_Boleto, AContas, AFinanceiro_Boleto_Historico: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Integer;
begin
  AFinanceiro_Boleto.Insert;
  AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger   := Trunc(GetProximoCodigoGen('CR_FINANCEIRO_BOLETO'));
  AFinanceiro_Boleto.FieldByName('CODCONTA').AsInteger := AContas.FieldByName('CODIGO').AsInteger;
  AFinanceiro_Boleto.FieldByName('REMESSA').AsInteger  := AContas.FieldByName('SEQREM').AsInteger + 1;
  AFinanceiro_Boleto.FieldByName('DESCRICAO').AsString := 'REMESSA';
  AFinanceiro_Boleto.FieldByName('DATA').AsDateTime    := DataHoraSys;
  if AContas.FieldByName('CODBANCO').AsInteger = 104 then // Somente a Caixa aguarda confirmação da remessa
    AFinanceiro_Boleto.FieldByName('STATUS').AsString  := 'AGUARDANDO CONFIRMAÇÃO'
  else
    AFinanceiro_Boleto.FieldByName('STATUS').AsString  := 'REMESSA GERADA';
  while True do
  begin
    try
//          if UCHist_Cadastro.MensagemHistorico.Text = '' then
//            UCHist_Cadastro.MensagemHistorico.Text:='Nova Remessa Criada: '+ Usuario.Login;
//          UCHist_Cadastro.MensagemHistorico.Add('Usuário ' + Usuario.Login + ' Criou a remessa de Nº: '+ IntToStr(AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger) +' pelo sistema');
//          UCHist_Cadastro.MensagemHistorico.Add('');
//          // Fica tentando dar o post até encontrar um código válido
//
      Break;
    except
      on E: Exception do
      begin
        if ContainsText(E.Message, 'primary') then
          AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger := AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger + 1
        else
          raise;
      end;
    end;
  end;
  Result := AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;
  AFinanceiro_Boleto.Post;
end;

procedure ServicesBoleto_Remessa_BoletosPendentesFinanceiro(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet);
begin
  if AFinanceiro_Boleto.FieldByName('REMESSA').AsString = '0' then
    raise Exception.Create('Favor verificar o numero da remessa antes de continuar');

//  UCHist_Cadastro.DataSet := AFinanceiro_Boleto_Historico;
  ABoletos.First;
  while not ABoletos.Eof do
  begin
//    WRLog('Insert nos boletos no registro: ' + AFinanceiro_Boleto.FieldByName('CODIGO').AsString + 'para remessa: '+ AFinanceiro_Boleto.FieldByName('REMESSA').AsString);

    Repo_InsertFinanceiro_Boleto_Historico(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico);


//    AFinanceiro_Boleto_Historico.FieldByName('CODCONTA').AsString             := AFinanceiro_Boleto.FieldByName('CODCONTA').AsString;
//    AFinanceiro_Boleto_Historico.FieldByName('CODBOLETOS').AsInteger          := ABoletos.FieldByName('CODIGO').AsInteger;        // Não entendi isso aqui????


    AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO').AsString        := ABoletos.FieldByName('CODFINANCEIRO').AsString;
    AFinanceiro_Boleto_Historico.FieldByName('CODPEDIDO').AsString            := ABoletos.FieldByName('CODPEDIDO').AsString;
    AFinanceiro_Boleto_Historico.FieldByName('CODEMPRESA').AsString           := ABoletos.FieldByName('CODEMPRESA').AsString;

    AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString      := ABoletos.FieldByName('BOLETO_NOSSO_NR').AsString;
    AFinanceiro_Boleto_Historico.FieldByName('TIPOOCORRENCIA').AsString       := ABoletos.FieldByName('TIPOOCORRENCIA').AsString;
    AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString            := ABoletos.FieldByName('DOCUMENTO').AsString;
    AFinanceiro_Boleto_Historico.FieldByName('REMESSA').AsString              := AFinanceiro_Boleto.FieldByName('REMESSA').AsString;

//      Financeiro_Boleto_HistoricoTIPOOCORRENCIA.AsString       := ADataSet.FieldByName('TIPOOCORRENCIA').AsString; //toRemessaRegistrar

    UCHist_Cadastro.MensagemHistorico.Text:='Boletos Adicionados: '+ Usuario.Login;
    UCHist_Cadastro.MensagemHistorico.Add('Usuário ' + Usuario.Login + ' Adicionou o Boleto de Nº: '+ ABoletos.FieldByName('BOLETO_NOSSO_NR').AsString +' para remessa: ' + AFinanceiro_Boleto.FieldByName('REMESSA').AsString );
    UCHist_Cadastro.MensagemHistorico.Add('');
//    WRLog('Pela Tabela: Boleto codigo: ' + AFinanceiro_Boleto_Historico.FieldByName('CODIGO').AsString + ' codfinanceiro: ' + IntToStr(AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO').AsInteger) + ' Foi Inserido');

    AFinanceiro_Boleto_Historico.Post;

    ABoletos.Edit;
//    WRLog('Pela Tabela: Boleto codigo: ' + ABoletos.FieldByName('CODIGO').AsString + ' codfinanceiro: ' + IntToStr(ABoletos.FieldByName('CODFINANCEIRO').AsInteger) + ' Foi Editado');
    ABoletos.FieldByName('REMESSA').AsInteger      := AFinanceiro_Boleto.FieldByName('REMESSA').AsInteger;
    ABoletos.FieldByName('PODE_ENVIAR').AsString   := 'N';  /// Essa clasificação esta no before post
    ABoletos.FieldByName('DT_REMESSA').AsDateTime  := AFinanceiro_Boleto.FieldByName('DATA').AsDateTime;

//    BoletoBeforePost(ABoletos);   // Regra foda de implementar

    ABoletos.Post;

    ABoletos.Next;
  end;
//  Result:= AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;
end;

procedure ServicesBoleto_GeraBoleto_ComDadosPadrao( ABoletos, AFinanceiro :TDataSet);
var
  QuerConta: TFDQuery;
begin
  try
    ABoletos.Open;
    if (ABoletos.RecordCount > 0) then
      ABoletos.Edit
    else
    begin
      ABoletos.Insert;
      ABoletos.FieldByName('CODIGO').AsInteger         := Trunc(GetProximoCodigoGen('CR_BOLETO'));
      ABoletos.FieldByName('CODFINANCEIRO').AsString   := AFinanceiro.FieldByName('CODIGO').AsString;
      ABoletos.FieldByName('CODPEDIDO').AsString       := AFinanceiro.FieldByName('CODPEDIDO').AsString;
      ABoletos.FieldByName('CODEMPRESA').AsString      := AFinanceiro.FieldByName('CODEMPRESA').AsString;

      QuerConta := SQLContas(AFinanceiro.FieldByName('CODCONTA').AsInteger);
      try
        /// Configura boleto com os dados da Conta.
        UtilsBoleto_Titulo_ConfiguraDadosComPadraoDaConta(QuerConta, AFinanceiro, ABoletos);

        // Seção do Desconto
        ABoletos.FieldByName('DESCONTO').AsFloat       := SQLPessoas_PercDescontoEspecialDoCliente(AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);

        if IsZero(ABoletos.FieldByName('DESCONTO').AsFloat) then
          ABoletos.FieldByName('DESCONTO').AsFloat     := QuerConta.FieldByName('DESCONTO').AsFloat;    // Se não tiver desconto coloca o padrão mesmo, isso deveria estar no controle kkk

        // Demonstrativo
        ABoletos.FieldByName('DEMONSTRATIVO').AsString := UtilsBoleto_ConfiguraDemonstrativo(QuerConta, AFinanceiro, ABoletos.FieldByName('DESCONTO').AsFloat);



        ABoletos.Post;
        // if AFinanceiro.State = dsInsert then
        // Em modo de inserção, o código no botão confirmar ainda não foi executado e deve ser executado
        // btnConfirmarClick(nil);
        // else
        // ComitaTransacao;
        // ABoletos.Open;
      finally
        QuerConta.Free;
      end;
    end;
  except
    on E:Exception do
    begin
      TransacaoRollback(AFinanceiro);
      raise Exception.Create('Erro ao gerar dados Padrões do boleto');
    end;
  end;
end;

procedure ServicesBoleto_EditaBoleto_Ocorrencia(ABoletos, AFinanceiro :TDataSet; ANovaOcorrencia: String);
var
  AQuerConta, AQuerBoleto: TFDQuery;
begin
  ABoletos.Open;
  AQuerBoleto := SQLBoletoAtual(ABoletos.FieldByName('CODIGO').AsInteger);
  AQuerConta := SQLContas(AFinanceiro.FieldByName('CODCONTA').AsInteger);
  try
    /// Configura boleto com os dados da Conta.
    if not(ABoletos.state = DsEdit) then
      ABoletos.Edit;

    ABoletos.FieldByName('TIPOOCORRENCIA').AsString  := ANovaOcorrencia;
    ABoletos.FieldByName('PODE_ENVIAR').AsString     := 'S';
    ABoletos.FieldByName('REMESSA').Clear;
    ABoletos.Post;
    // if AFinanceiro.State = dsInsert then
    // Em modo de inserção, o código no botão confirmar ainda não foi executado e deve ser executado
    // btnConfirmarClick(nil);
    // else
    // ComitaTransacao;
    // ABoletos.Open;
  finally
    AQuerConta.Free;
    AQuerBoleto.Free;
  end;

end;

procedure ServicesBoleto_Verifica_BoletoCancelado(AFinanceiro, ABoleto :TDataSet);
begin

//  if ANossoNumero = '' then
//    raise EWRException.Create('Nosso número vazio.' );

//  if (AFinanceiro.State in dsEditModes) then                                                                                          // Se caiu nessa linha, rapais deu ruim pois perdeu o número do boleto, precisa criar um insert e desvincular com a tema do finacneiro,
//    raise EWRException.Create('Financeiro Precisa ser a Query da tela do finaceiro e necessario comitar o Nosso numero sem erros');   // Pois o financeiro pode estar em edição na rede ou na máquina mesmo, dando deadlook.
  // N~~ao pde apagar o numero porra
  // pergunta se deseja gerar remessa de cancelamento??
  // depois de de gerar a remessa dai pode

  // WebService deve manter o histórico, de operações

  Try
    // Aqui tem Post Commit;
    if Not(AFinanceiro.State in dsEditModes)  then
      AFinanceiro.Edit;      // Aqui é critico, deve ser insert em tabela auxiliar, depois tentar editar o financeiro
    AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString := '';
    AFinanceiro.FieldByName('PODE_ENVIAR').AsString     := 'S';
    AFinanceiro.Post;
//    TransacaoCommita(AFinanceiro);
  except
    on E:Exception do
    begin
      TransacaoRollback(AFinanceiro);
      raise Exception.Create(E.message);
    end;
  End;
//  try
//    ATransa.StartTransaction;
//    TFDQuery(AFinanceiro).Transaction := ATransa;
//    TFDQuery(ABoleto).Transaction := ATransa;
//    AFinanceiro.Edit;
//    ABoleto.Edit;
//    AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString := '';
//    ABoleto.FieldByName('REMESSA').AsInteger := 0;
//    ABoleto.FieldByName('DT_REMESSA').Clear;
//    ABoleto.Post;
//    AFinanceiro.Post;
//    TFDQuery(AFinanceiro).Transaction.Commit;
//  finally
//    ATransa.Free;
//  end;

  //USA O COMMITFINANCEIRO
end;

procedure ServicesBoleto_Remessa_RemoverEenviarNaProximaRemessa(AFinanceiro_Boleto_Historico: TFDQuery);
var
  QuerX :TFDQuery;
  codFinanceiro, codPedido, codEmpresa :String;
begin
  QuerX := GeraFDQuery(AFinanceiro_Boleto_Historico.Transaction);
  try
    try

      codFinanceiro := IntToStr(AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO').AsInteger);
      codPedido := AFinanceiro_Boleto_Historico.FieldByName('CODPEDIDO').AsString;
      codEmpresa := IntToStr(AFinanceiro_Boleto_Historico.FieldByName('CODEMPRESA').AsInteger);

//      QuerX.SQL.Text := 'Update Boletos b set b.pode_enviar = ''S'', b.remessa = NULL where b.CODFINANCEIRO = ' + IntToStr(AFinanceiro_Boleto_Historico.FieldByName('CODFINANCEIRO').AsInteger +
//                        ' and b.codpedido = ' + AFinanceiro_Boleto_Historico.FieldByName('CODPEDIDO').AsString + ' and b.CODEMPRESA = ' + IntToStr(AFinanceiro_Boleto_Historico.FieldByName('CODEMPRESA').AsInteger);
//************ Refactor ***************

      QuerX.SQL.Text := 'UPDATE Boletos SET pode_enviar = ''S'', remessa = NULL WHERE CODFINANCEIRO = ' + codFinanceiro +
      ' AND codpedido = ' + codPedido + ' AND CODEMPRESA = ' + codEmpresa;


      QuerX.ExecSQL;

      AFinanceiro_Boleto_Historico.Delete;
      AFinanceiro_Boleto_Historico.transaction.commit;
    finally
      QuerX.free;
    end;
  except
    on E: Exception do
    begin
      AFinanceiro_Boleto_Historico.transaction.RollBack;
      raise Exception.Create(E.Message)
    end;
  end;
end;

end.
