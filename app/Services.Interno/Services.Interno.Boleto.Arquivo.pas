unit Services.Interno.Boleto.Arquivo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes;


procedure Repo_InsertBoleto_Registra_HistoricoArquivo(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery);
procedure Repo_EditFinanceiro_Boleto_HistoricoArquivo(ATituloRet: TACBrBoletoTituloRet; AFinanceiro_Boleto_Historico : TFDQuery; ACodFinanceiro_Boleto:integer);


implementation

Uses UnitFuncoes, Utils.Boleto, SQL.Contas, SQL.Boleto, Utils.Boleto.Retorno, Utils.Financeiro, SQL.Financeiro, SQL.Financeiro_boleto,
  SQL.Financeiro_Boleto_Historico, Services.Boleto, ACBrBoletoConversao, ACBrUtil;


procedure Repo_InsertBoleto_Registra_HistoricoArquivo(AACBrBoleto: TACBrBoleto; AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery);
Var
  ATitulo: TACBrTitulo;
  I, J: Integer;
  ANossoNumero : String;
begin
  if (AACBrBoleto.ListadeBoletos.Count < 1) and
     (AACBrBoleto.ListadeBoletos[0].NossoNumero <> '') then
    raise Exception.Create('Não tem retorno para fazer, então não precisa gravar retorno.');


  for I := 0 to AACBrBoleto.ListadeBoletos.Count - 1  do
  begin

    ATitulo  := AACBrBoleto.ListadeBoletos[i];
//    ATitulo.NumeroDocumento;
    ANossoNumero := UtilsBoleto_NumeroDocumento(AACBrBoleto, ATitulo); // ATitulo.NossoNumero;


    if ANossoNumero <> '' then
    begin
      if AFinanceiro_Boleto_Historico.Locate('BOLETO_NOSSO_NR;CODCONTA',VarArrayOf([ANossoNumero, AFinanceiro_Boleto.FieldByName('CODCONTA').AsInteger]),  []) then
        AFinanceiro_Boleto_Historico.Edit
      else
      begin
        Repo_InsertFinanceiro_Boleto_Historico(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico);
        AFinanceiro_Boleto_Historico.FieldByName('DESCRICAO').AsString := 'RETORNO';
      end;
      AFinanceiro_Boleto_Historico.FieldByName('BOLETO_NOSSO_NR').AsString := ANossoNumero;
      AFinanceiro_Boleto_Historico.FieldByName('OCORRENCIA').AsString := ATitulo.OcorrenciaOriginal.Descricao;
      AFinanceiro_Boleto_Historico.FieldByName('DOCUMENTO').AsString  := IfThen(ATitulo.SeuNumero.Trim <> '', Copy(ATitulo.SeuNumero, 1, 20).Trim, ATitulo.NumeroDocumento.Trim);
      for J := 0 to ATitulo.DescricaoMotivoRejeicaoComando.Count - 1 do
      begin
        if AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString.Trim = '' then
          AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString := ATitulo.DescricaoMotivoRejeicaoComando[J]
        else
          AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString := AFinanceiro_Boleto_Historico.FieldByName('MOTIVO').AsString + sLineBreak +
            ATitulo.DescricaoMotivoRejeicaoComando[J];
      end;

      if UtilsBoletoRetorno_IsLiquidado(ATitulo.OcorrenciaOriginal.Tipo) then
        AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat := { (ATitulo.ValorRecebido - Financeiro.FieldByName('VALOR').AsFloat)
          + } ATitulo.ValorOutrosCreditos + ATitulo.ValorMoraJuros - ATitulo.ValorDesconto
      else
        AFinanceiro_Boleto_Historico.FieldByName('DIFERENCA').AsFloat := 0;

      AFinanceiro_Boleto_Historico.FieldByName('DESPESA_COBRANCA').AsFloat := ATitulo.ValorDespesaCobranca;
      if ATitulo.DataOcorrencia > 0 then
        AFinanceiro_Boleto_Historico.FieldByName('DT_OCORRENCIA').AsDateTime := ATitulo.DataOcorrencia
      else
        AFinanceiro_Boleto_Historico.FieldByName('DT_OCORRENCIA').Clear;
      if ATitulo.DataCredito > 0 then
        AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').AsDateTime := ATitulo.DataOcorrencia // ATitulo.DataCredito  iSSo é uma merda
      else
        AFinanceiro_Boleto_Historico.FieldByName('DT_CREDITO').Clear;

      AFinanceiro_Boleto_Historico.FieldByName('VALOR_CREDITO').AsFloat := ATitulo.ValorDocumento;
      AFinanceiro_Boleto_Historico.FieldByName('VALOR_DESCONTO').AsFloat := ATitulo.ValorDesconto;
      AFinanceiro_Boleto_Historico.FieldByName('VALOR_MORA_JUROS').AsFloat := ATitulo.ValorMoraJuros;
      AFinanceiro_Boleto_Historico.FieldByName('VALOR_OUTROS_CREDITOS').AsFloat := ATitulo.ValorOutrosCreditos;
      // Financeiro.FieldByName('BOLETO_RETORNO').AsInteger :=ds.DataSet.FieldByName('Codigo').AsInteger;
      AFinanceiro_Boleto_Historico.Post;
    end;

    while not AFinanceiro_Boleto_Historico.Eof do
    begin
      AFinanceiro_Boleto_Historico.FieldByName('OCORRENCIA').AsString;
      AFinanceiro_Boleto_Historico.next;
    end;
  end;


(*
      //  Aqui deve ter a diferença, essa parte deve sair daqui, da baixa do boleto de duas formas, arquivo e WS
//      if not(ATitulo.DataCredito > 0){ and (Contas.FieldByName('IGNORAR_RETORNO_SEM_LIQUIDACAO').AsString = 'S')} then
//        Continue;
//      if ATitulo.OcorrenciaOriginal.Tipo in [TACBrTipoOcorrencia.toRetornoRecebimentoInstrucaoProtestar, TACBrTipoOcorrencia.toRetornoDebitoTarifas] then
//        Continue;
      // Fazer a verificação correta de cada tipo de título que é retornado no arquivo. Cada tipo tem uma operação
      // específica de tratamento. O sistema atualmente só trata retorno de boletos, ajustar para demais tipos de
      // títulos e situações de retorno
      // ,TACBrTipoOcorrencia.toRetornoTransferenciaCarteira
      { TACBrTipoOcorrencia.toRetornoRegistroConfirmado }

//      AFinanceiro     := AchaOBoletoPeloNossonumero(ATitulo.NumeroDocumento);
//      if not AFinanceiro.IsEmpty then
//        BoletoBaixaFinanceiro(ATransa, ATitulo, AFinanceiro)
//      else
//        IncluiSeNãoAchou(ATitulo, AFinanceiro);
//      Boleto_Registra_Historico(ATitulo);   // Deve sempre gerar ou editar o registro que veio na remessa
//  AFinanceiro_Boleto_Historico.Edit;  Edit na função acima
 // Selecionar o boleto editar colocar o codigo de retorno e dar baixa;
  AAguarde.Mensagem := 'Processando Arquivo de Retorno ' + Financeiro_Boleto.FieldByName('Codigo').AsString;
  AAguarde.ProgressoMaximo := AACBrBoleto.ListadeBoletos.Count - 1;
  AAguarde.Show;
  for I := 0 to AACBrBoleto.ListadeBoletos.Count - 1 do
  begin
    ATitulo := AACBrBoleto.ListadeBoletos[I];
//    AAguarde.AvancarProgresso;
  end;    *)
end;

procedure Repo_EditFinanceiro_Boleto_HistoricoArquivo(ATituloRet: TACBrBoletoTituloRet; AFinanceiro_Boleto_Historico : TFDQuery; ACodFinanceiro_Boleto:integer);
Var
  J : Integer;
begin
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

  AFinanceiro_Boleto_Historico.FieldByName('RETORNOS_ANTERIORES').AsString := UtilsBoletoRetorno_ListDeRetornoAnteriores(ACodFinanceiro_Boleto, ATituloRet.NossoNumero);

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


end.

