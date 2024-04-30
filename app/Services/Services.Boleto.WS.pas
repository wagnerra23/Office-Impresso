unit Services.Boleto.WS;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes;


//Funções de entrada
function SevicesBoletoWS_Retorno_Inserir(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
Procedure ServiceBoletoWS_Remessa_Registro(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto_Historico: TDataSet);

procedure Repo_InsertBoleto_Registra_HistoricoWS(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery);

implementation

Uses UnitFuncoes, SQL.Contas, SQL.Boleto, Utils.Boleto.Retorno, Utils.Financeiro, SQL.Financeiro, SQL.Financeiro_boleto,
  SQL.Financeiro_Boleto_Historico, Services.Boleto;

//Funções de entrada
function SevicesBoletoWS_Retorno_Inserir(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
Var
  ATransa :TFDTransaction;
  AContas, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery;
begin
  // Cria uma transação independente
  ATransa := GeraFDTransacao;
  ATransa.StartTransaction;
  AContas := SQLContas(ACodConta);

  // Busca Retorno
  AFinanceiro_Boleto := SQLFinanceiro_boleto_RetornoWS(ATransa, ACodConta, AACBrBoleto.Configuracoes.WebService.Filtro.dataMovimento.DataFinal);
  Try
    try
      // Cria novo Retorno
      if AFinanceiro_Boleto.RecordCount = 0 then  // Se não acho Cria
      begin
        Repo_InsertFinanceiro_BoletoWS_Novo(ATransa,
                                     AFinanceiro_boleto,
                                     AACBrBoleto.Configuracoes.WebService.Filtro.dataMovimento.DataFinal,
                                     ACodConta);

        Repo_EditContas(AContas, AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger);
      end;
      AFinanceiro_Boleto_Historico:= SQLFinanceiro_Boleto_Historico(ATransa, AFinanceiro_Boleto.FieldByName('Codigo').AsInteger);
      // Aqui termina a bagaça

      //  Processa o retorno
      Repo_InsertBoleto_Registra_HistoricoWS(AACBrBoleto, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico);

      //  Registra os boletos retornados, Baixa no financiero
      Repo_EditFinanceiro_BaixaDeBoleto(ATransa, AFinanceiro_Boleto_Historico, AFinanceiro_Boleto);  //Aqui deve procurar financeiro

      // Deve Baixar aqui o bagulho, tem que baixar os valores na venda, Bucha, Buxa, Bucha mesmo!!!!
      AtualizaVendaParcelasBaixadas(AFinanceiro_Boleto_Historico);
      Result:= AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;
      //  Baixa no financeiro, os boletos Vinculados
//      InsertFinanceiro_GeraDebitoValorDespesaCobranca(ATransa, Transa_Conta); // Tarifas
      ATransa.Commit;
    except
      ATransa.Rollback;
    end;
  Finally
    ATransa.Free;
    AContas.Free;
    AFinanceiro_Boleto.Free;
  End;

//  Remessa
// Pergunta se Silencio ou não
// GeraNumero_Registro_ou_ProximoCodigo
// Ja foi gerado Remessa Hoje deseja Incluir os novos Itens

// Baixa os boletos no financeiro.
// Close open Financeiro
// Achar Remessa ou
// Gerar Numero novo
// Caso não tenha Cria
// Reenviar Boletos, não registrados
// Os boletos tem Operações
// Buscar(Componente, Dia)
// Se tiver remessa ativa anterior abre incli e envia até fechar o dia

end;

Procedure ServiceBoletoWS_Remessa_Registro(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto_Historico: TDataSet);
begin

end;

procedure Repo_InsertBoleto_Registra_HistoricoWS(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery);
Var
  ATituloRet: TACBrBoletoTituloRet;
  I: Integer;
begin
  if (AACBrBoleto.ListaConsultaRetornoWeb.Count = 1) and
     (AACBrBoleto.ListaConsultaRetornoWeb[0].DadosRet.TituloRet.NossoNumero <> '') then
    raise Exception.Create('Não tem retorno para fazer, então não precisa gravar retorno.');


  for I := 0 to AACBrBoleto.ListaConsultaRetornoWeb.Count -1  do
  begin
    ATituloRet  := AACBrBoleto.ListaConsultaRetornoWeb[i].DadosRet.TituloRet;
    if ATituloRet.NossoNumero <> '' then
    begin
      if AFinanceiro_Boleto_Historico.Locate('BOLETO_NOSSO_NR', ATituloRet.NossoNumero, []) then
        AFinanceiro_Boleto_Historico.Edit
      else
      begin
        Repo_InsertFinanceiro_Boleto_Historico(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico);
        AFinanceiro_Boleto_Historico.FieldByName('DESCRICAO').AsString := 'RETORNO';
      end;
      //  Aqui deve ter a diferença, essa parte deve sair daqui, da baixa do boleto de duas formas, arquivo e WS

      AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString := IfThen(ATituloRet.SeuNumero.Trim <> '', Copy(ATituloRet.SeuNumero, 1, 20).Trim,
        ATituloRet.NumeroDocumento.Trim);

      AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString := ATituloRet.NossoNumero;
      AFinanceiro_Boleto_Historico.FieldByName('OCORRENCIA').AsString      := ATituloRet.Mensagem.Text;

    //  for J := 0 to ATituloRet.DescricaoMotivoRejeicaoComando.Count - 1 do
    //    AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString := AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString + sLineBreak +
    //      ATituloRet.DescricaoMotivoRejeicaoComando[J];

      if ATituloRet.DataBaixa > 0 then
        AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat := ATituloRet.ValorOutrosCreditos + ATituloRet.ValorMoraJuros - ATituloRet.ValorDesconto
      else
        AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat := 0;

      AFinanceiro_Boleto_Historico.FieldByName('DESPESA_COBRANCA').AsFloat := ATituloRet.ValorDespesaCobranca;
      if ATituloRet.DataMovimento > 0 then
        AFinanceiro_Boleto_Historico.FieldByName('DT_OCORRENCIA').AsDateTime := ATituloRet.DataMovimento
      else
        AFinanceiro_Boleto_Historico.FieldByName('DT_OCORRENCIA').Clear;
      if ATituloRet.DataCredito > 0 then
        AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').AsDateTime := ATituloRet.DataCredito
      else
        AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').Clear;

      AFinanceiro_Boleto_Historico.FieldByName('VALOR_RECEBIDO').AsFloat := ATituloRet.ValorPago;   //  ValorRecebido
      AFinanceiro_Boleto_Historico.FieldByName('VALOR_CREDITO').AsFloat  := ATituloRet.ValorDocumento;

      AFinanceiro_Boleto_Historico.FieldByName('RETORNOS_ANTERIORES').AsString := UtilsBoletoRetorno_ListDeRetornoAnteriores(AFinanceiro_Boleto.FieldByName('Codigo').AsInteger, ATituloRet.NossoNumero);

    {  AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat:= //ATituloRet.MultaValorFixo+
                                                                      ATituloRet.ValorAbatimento+
                                                                      ATituloRet.ValorAtual+
                                                                      ATituloRet.ValorDesconto+
                                                                      ATituloRet.ValorDesconto2+
                                                                      ATituloRet.ValorDespesaCobranca+
                                                                      ATituloRet.ValorDocumento+
                                                                      ATituloRet.ValorIOF+
                                                                      ATituloRet.ValorMaxPagamento+
                                                                      ATituloRet.ValorMinPagamento+
                                                                      ATituloRet.ValorMoraJuros+
                                                                      ATituloRet.ValorOutrasDespesas+
                                                                      ATituloRet.ValorOutrosCreditos+
                                                                      ATituloRet.ValorPago+
                                                                      ATituloRet.ValorRecebido;   }

      AFinanceiro_Boleto_Historico.Post;

    end;
  end;
end;



end.

