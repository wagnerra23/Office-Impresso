unit Controller.Contas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  ACBrBoleto, SysUtils, IBX.IBQuery, IBX.IBCustomDataSet, System.Classes, Classes.Boletos, System.Generics.Collections,
  System.DateUtils, Vcl.Forms;

procedure ControllerContas_Ultimaremessa(AContas: TDataSet; ARetorno: integer);
procedure ControllerContas_VerificaAberturaDeCaixa(AParcelas: TDataSet);
procedure ControllerContas_ValidarSituacaoContaBanco(const AFinanceiro, AQuerConta: TDataSet);

//BoletoTestes
function ControllerContas_BoletoTestes(ADataSetCadastro: TFDQuery):Boolean;
function ControllerContas_BoletoTestes_Trocar(ADataSetCadastro: TFDQuery):Boolean;
function GravaEmMemoriavaloresAntigos(ADataSetCadastro: TFDQuery): TBoletoBuscaConfigValoresTeste;
//function BuscaClasseDoBanco(ADataSetCadastro: TFDQuery): TBoletoBuscaConfigBanco;


implementation

Uses UnitFuncoes, wrConversao,
  Controller.Interno.Contas, Controller.Boleto;


procedure ControllerContas_Ultimaremessa(AContas: TDataSet; ARetorno: integer);
begin
  Try
    AContas.Edit;
    AContas.FieldByName('SEQRET').AsInteger := ARetorno;      // Ta Errado aqui
    AContas.Post;
  except
//    ATransa.Rollback;
  end;
  // deve comitar junto ao Geração do retorno
end;

// Regras de validação para outros módulos //
procedure ControllerContas_VerificaAberturaDeCaixa(AParcelas: TDataSet);  // REFATORAR
var
  QuerX: TFDQuery;
  AMsg: string;
begin
  QuerX := GeraFDQuery;
  try
    while not AParcelas.eof do
    begin
      if  (Procura('TIPO','CONTAS', AParcelas.FieldByName('CODCONTA').AsString)= 'CAIXA') //Ajsutado aqui pois se voce coloca-se uma parcela a ser paga para o ano que vem, ele acusava de caixa fechado
      and ((AParcelas.FieldByName('TIPO').AsString = 'RECEBIDA') or (AParcelas.FieldByName('TIPO').AsString = 'PAGA')) then
      begin
        QuerX.SQL.Text := 'select * ' + // first 1 1
                          'from CAIXA ' +
                          'where (DATA_FECHAMENTO is null) ' +
                          '      and (CODCONTA = :CodConta) ' +
                          '      and ((DATA_ABERTURA < :DtVencto) or (DATA_ABERTURA < :DtPagto))';
        QuerX.ParamByName('CodConta').AsInteger  := AParcelas.FieldByName('CODCONTA').AsInteger;
        QuerX.ParamByName('DtVencto').AsDateTime := AParcelas.FieldByName('VENCTO').AsDateTime;
        QuerX.ParamByName('DtPagto').AsDateTime  := IfthenVar(AParcelas.FieldByName('DATAPAGTO').AsDateTime > 0, AParcelas.FieldByName('DATAPAGTO').AsDateTime, DataHoraSys);
        QuerX.Open;

        if QuerX.IsEmpty then
        begin
//          btn_Faturamento.Enabled := UCControls1.GetComponentRight(btn_Faturamento).Enabled;
          AMsg := 'O caixa desse período (' + FormatDateTime('DD/MM/YYYY HH:MM', AParcelas.FieldByName('VENCTO').AsDateTime);
          if (AParcelas.FieldByName('DATAPAGTO').AsString <> '') and (AParcelas.FieldByName('DATAPAGTO').AsDateTime <> AParcelas.FieldByName('VENCTO').AsDateTime) then
            AMsg := AMsg + ' - ' + FormatDateTime('DD/MM/YYYY HH:MM', AParcelas.FieldByName('DATAPAGTO').AsDateTime);
          AMsg := AMsg + ') está fechado ou não existe. ';
          if AParcelas.FieldByName('CODCONTA').AsString <> '' then
            AMsg := AMsg + 'O caixa "' + AParcelas.FieldByName('CODCONTA').AsString + '" não está aberto. ';
          AMsg := AMsg + 'Abra seu caixa primeiro.';
          raise EWRException.Create(AMsg);

        // TRANSFERIR ESTA ROTINA PARA OUTRO LUGAR //
        {$REGION 'TRANSFERIR PARA OUTRO LUGAR'}
         { if not UsuarioSenha(False, True) then
            Abort; //Causa um Rollback na rotina que chamou

          if FrmPrincipal.Action_Caixa.Enabled then
          begin
            TFrmFinanceiro_Contas_Escolha.AbrirCaixa;
//            with TFrmFinanceiro_Contas_Escolha.Create(nil) do
//            try
//              ShowModal;
//            finally
//              Destroy;
//            end;
          end;

          //Causa um Rollback na rotina que chamou
          Abort; }
         {$ENDREGION}
        end;
      end;
      AParcelas.next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure ControllerContas_ValidarSituacaoContaBanco(const AFinanceiro, AQuerConta: TDataSet);
var
  QuerX: TWRDataSet;
  ACodConta: Integer;
  ATipo: string;
  ADtPagto, ADtRE, ADtRegimeComp, ADtRegimeCaixa: TDateTime;
begin
  if AFinanceiro.FindField('CODCONTA') <> nil then
  begin //Dataset em modo de leitura/edição
    ACodConta      := AFinanceiro.FieldByName('CODCONTA').AsInteger;
    ATipo          := AFinanceiro.FieldByName('TIPO').AsString;
    ADtPagto       := AFinanceiro.FieldByName('DATAPAGTO').AsDateTime;
    {$IFDEF COMERCIAL}
//    ADtRegimeComp  := AFinanceiro.FieldByName(reRegimeDeCompetencia.CampoSQL).AsDateTime;
//    ADtRegimeCaixa := AFinanceiro.FieldByName(reRegimeDeCaixa.CampoSQL).AsDateTime;
    {$ENDIF}
  end
  else if AFinanceiro is TFDQuery then
  begin //dataset em modo de inserção
    ACodConta      := TFDQuery(AFinanceiro).ParamByName('CODCONTA').AsInteger;
    ATipo          := TFDQuery(AFinanceiro).ParamByName('TIPO').AsString;
    ADtPagto       := TFDQuery(AFinanceiro).ParamByName('DATAPAGTO').AsDateTime;
    {$IFDEF COMERCIAL}
//    ADtRegimeComp  := TFDQuery(AFinanceiro).ParamByName(reRegimeDeCompetencia.CampoSQL).AsDateTime;
//    ADtRegimeCaixa := TFDQuery(AFinanceiro).ParamByName(reRegimeDeCaixa.CampoSQL).AsDateTime;
    {$ENDIF}
  end
  else if AFinanceiro is TIBQuery then
  begin
    ACodConta      := TIBQuery(AFinanceiro).ParamByName('CODCONTA').AsInteger;
    ATipo          := TIBQuery(AFinanceiro).ParamByName('TIPO').AsString;
    ADtPagto       := TIBQuery(AFinanceiro).ParamByName('DATAPAGTO').AsDateTime;
    {$IFDEF COMERCIAL}
//    ADtRegimeComp  := TIBQuery(AFinanceiro).ParamByName(reRegimeDeCompetencia.CampoSQL).AsDateTime;
//    ADtRegimeCaixa := TIBQuery(AFinanceiro).ParamByName(reRegimeDeCaixa.CampoSQL).AsDateTime;
    {$ENDIF}
  end else
  begin
    ACodConta      := TIBDataSet(AFinanceiro).ParamByName('CODCONTA').AsInteger;
    ATipo          := TIBDataSet(AFinanceiro).ParamByName('TIPO').AsString;
    ADtPagto       := TIBDataSet(AFinanceiro).ParamByName('DATAPAGTO').AsDateTime;
    {$IFDEF COMERCIAL}
//    ADtRegimeComp  := TIBDataSet(AFinanceiro).ParamByName(reRegimeDeCompetencia.CampoSQL).AsDateTime;
//    ADtRegimeCaixa := TIBDataSet(AFinanceiro).ParamByName(reRegimeDeCaixa.CampoSQL).AsDateTime;
    {$ENDIF}
  end;

  if (FinanceiroTipoStrToEnum(ATipo) in [fitRecebida, fitPaga]) and //Se for um lançamento do tipo Recebida ou Paga
    (AQuerConta.FieldByName('TIPO').AsString = 'BANCO') and   //e a conta é Banco
    (AQuerConta.FieldByName('DT_BALANCO').AsDateTime > 0) and //e houve um balanço
    (ADtPagto <= AQuerConta.FieldByName('DT_BALANCO').AsDateTime) then //e o lançamento encontra-se no período fechado da conta
    raise EWRException.Create('Não é possível fazer alterações na conta ' + Procura('DESCRICAO', 'CONTAS', ACodConta.ToString) + '! ' + sLineBreak +
                'Balanço concluído em ' + FormatDateTime('DD/MM/YYYY', AQuerConta.FieldByName('DT_BALANCO').AsDateTime) + '. Não é possível alterar lançamentos anteriores a esta data.');

  {$REGION 'Antigo'}
  (*  {$IFDEF COMERCIAL}
    //Análise pelo Resultado do Exercício
    QuerX.SQL.Text := 'select first 1 DT_FIM, REGIME ' +
                      'from RESULTADO_EXERCICIO ' +
                      'where (CODEMPRESA = :Emp) ' +
                      '      and not (DT_FECHAMENTO is null) ' +
                      'order by DT_FIM desc';
    QuerX.SetParam(0, EmpresaAtiva);
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      case TRERegime.GetFromCodigo(QuerX.FieldByName('REGIME').AsString) of
        reRegimeDeCompetencia: ADtRE := ADtRegimeComp;
              reRegimeDeCaixa: ADtRE := ADtRegimeCaixa;
      end;
      if (ADtRE > 0) and                                        //Se existe uma data que será avaliada (competência ou caixa)
         MatchStr(ATipo, [fitRecebida.Codigo, fitPaga.Codigo]) and //Se for um lançamento do tipo Recebida ou Paga
         (QuerX.FieldByName('DT_FIM').AsDateTime > 0) and       //e houve um resultado de exercício
         (ADtRE <= QuerX.FieldByName('DT_FIM').AsDateTime) then //e o lançamento encontra-se no período fechado do RE
         GeraExcecao('Não é possível fazer alterações neste lançamento! ' + sLineBreak +
                     'Resultado de Exercício concluído em ' + FormatDateTime('DD/MM/YYYY', QuerX.FieldByName('DT_FIM').AsDateTime) +
                     '. Não é possível alterar lançamentos anteriores a esta data.');
    end;
    {$ENDIF}    *)
  {$ENDREGION}

end;

Function ControllerContas_BoletoTestes(ADataSetCadastro: TFDQuery):Boolean;
var
  AOldValores: TBoletoBuscaConfigValoresTeste;
  AValores: TList<TBoletoBuscaConfigValoresTeste>;
  i: Integer;
  AManter: Boolean;
  ABanco: TBoletoBuscaConfigBanco;
  ABolValor: Double;
  ABolDtVencto: TDate;
  ABoletoTeste: TBoletoTeste;
  AStr: string;
  ALinhaDigitavel : String;
  AMsg, AListaLinhasDigitaveisDBG, AListaErrosDBG: TStringList;
begin
  Result:=True;
  AManter := False;
  AOldValores := GravaEmMemoriavaloresAntigos(ADataSetCadastro);

  AValores := nil;
//  ABanco   := BuscaClasseDoBanco(ADataSetCadastro);
  ADataSetCadastro.DisableControls;
  AListaLinhasDigitaveisDBG := TStringList.Create;
  AListaErrosDBG := TStringList.Create;
  AMsg := TStringList.Create;
  try
    ABolValor    := 0; //Evita warnings do compilador
    ABolDtVencto := 0;
    try
      ABolValor    := StrToFloat(Copy(ALinhaDigitavel, 38, 10)) / 100;
      ABolDtVencto := IncDay(EncodeDate(1997, 10, 07), StrToInt(Copy(ALinhaDigitavel, 34, 4)));
    except
      GeraExcecao('Linha Digitável inválida.');
    end;

    AValores := ABanco.GeraValoresTeste(ALinhaDigitavel);
//    AFrmAguarde.ProgressoMaximo := AValores.Count;
    for I := 0 to AValores.Count - 1 do
    begin
      Application.ProcessMessages;
//      if AFrmAguarde.Cancelado then
//        Abort;

      ADataSetCadastro.FieldByName('CODIGO_CEDENTE').AsString  := AValores[i].CodigoCedente;
      if AValores[i].DigitoAgencia <> '' then
        ADataSetCadastro.FieldByName('DIGITO_AG').AsString     := AValores[i].DigitoAgencia;
      ADataSetCadastro.FieldByName('CARTEIRA').AsString        := AValores[i].Carteira;
      ADataSetCadastro.FieldByName('VARIACAO').AsString        := AValores[i].Variacao;
      ADataSetCadastro.FieldByName('CONVENIO').AsString        := AValores[i].Convenio;
      ADataSetCadastro.FieldByName('CONVENIO_DIGITO').AsString := AValores[i].ConvenioDigito;
      ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsString := AValores[i].NossoNumero;
//      btnConfirmarClick(nil);
      try
        ABoletoTeste := ControllerBoleto_Remessa_Gerar_BoletoTeste(ADataSetCadastro.FieldByName('CODIGO').AsInteger, AValores[i].NossoNumero, ABolValor,
          ABolDtVencto, True, False);
      except
        on E:Exception do
        begin
          //Armazena os erros para debug
          AListaErrosDBG.AddIfNotExists('- ' + E.Message);

          ABoletoTeste.LinhaDigitavel := 'erro'; //string que garante a não conformidade do boleto gerado com erro
        end;
      end;

      //Armazena as linhas digitáveis para debug
      if ABoletoTeste.LinhaDigitavel <> 'erro' then
        AListaLinhasDigitaveisDBG.AddIfNotExists('- ' + ABoletoTeste.LinhaDigitavel);

      if ALinhaDigitavel = ABoletoTeste.LinhaDigitavel then
      begin
//        AFrmAguarde.Close;
        AMsg.Clear;
        AMsg.Add('Configurações encontradas com sucesso');
        AMsg.Add('Código do Cedente: ' + ADataSetCadastro.FieldByName('CODIGO_CEDENTE').AsString);
        AStr := ADataSetCadastro.FieldByName('AGENCIA').AsString;
        if ADataSetCadastro.FieldByName('DIGITO_AG').AsString <> '' then
          AStr := AStr + '-' + ADataSetCadastro.FieldByName('DIGITO_AG').AsString;
        AMsg.Add('Agência: ' + AStr);
        AMsg.Add('Carteira: ' + ADataSetCadastro.FieldByName('CARTEIRA').AsString);
        AMsg.Add('Variação: ' + ADataSetCadastro.FieldByName('VARIACAO').AsString);
        AStr := ADataSetCadastro.FieldByName('CONVENIO').AsString;
        if ADataSetCadastro.FieldByName('CONVENIO_DIGITO').AsString <> '' then
          AStr := AStr + '-' + ADataSetCadastro.FieldByName('CONVENIO_DIGITO').AsString;
        AMsg.Add('Convênio: ' + AStr);
        AMsg.Add('Próximo Nosso Número: ' + ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsString);
        AMsg.Add('');
        AMsg.Add('Deseja manter as configurações encontradas?');

//        AManter := (ShowMessageWR(AMsg.Text, MB_ICONQUESTION) = mrYes);
//
//        EdtTesteBoletoNossoNum.Text := AValores[i].NossoNumero;
//        EdtTesteBoletoValor.Value   := ABolValor;
//        EdtTesteBoletoData.Date     := ABolDtVencto;
//        btnGerarBoleto.Click;
//        Exit;
      end;
//      AguardeRota('BoletoTeste', RoutesContas_BoletoTestes());  // Aqui fica a Chamada, Dee ficar verificando as mensagens de progresso
    end;

    AMsg.Text := 'Não foi possível detectar automaticamente as configurações do seu boleto. Faça a configuração manualmente.';
    {.$IFDEF DEBUG}
    if AListaLinhasDigitaveisDBG.Count > 0 then
    begin
      AMsg.Add('');
      AMsg.Add('Linhas digitáveis geradas:');
      AMsg.AddStrings(AListaLinhasDigitaveisDBG);
    end;
    if AListaErrosDBG.Count > 0 then
    begin
      AMsg.Add('');
      AMsg.Add('Erros encontrados:');
      AMsg.AddStrings(AListaErrosDBG);
    end;
    {.$ENDIF}
//    ShowMessageWR(AMsg.Text);
  finally
    AValores.Free;
    ABanco.Free;
//    AFrmAguarde.Free;
    AMsg.Free;
    AListaLinhasDigitaveisDBG.Free;
    AListaErrosDBG.Free;
    ADataSetCadastro.EnableControls;
    if not AManter then
    begin
//      VerificaSePodeAlteraDataSet;
      ADataSetCadastro.FieldByName('CONVENIO').AsString        := AOldValores.Convenio;
      ADataSetCadastro.FieldByName('CONVENIO_DIGITO').AsString := AOldValores.ConvenioDigito;
      ADataSetCadastro.FieldByName('CODIGO_CEDENTE').AsString  := AOldValores.CodigoCedente;
      ADataSetCadastro.FieldByName('CARTEIRA').AsString        := AOldValores.Carteira;
      ADataSetCadastro.FieldByName('VARIACAO').AsString        := AOldValores.Variacao;
      ADataSetCadastro.FieldByName('DIGITO_AG').AsString       := AOldValores.DigitoAgencia;
      ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsString := AOldValores.NossoNumero;
//      btnConfirmarClick(nil);
    end else
    begin
      //Se quizer manter, considera o boleto como sendo o último emitido e já calcula o próximo nosso número
//      VerificaSePodeAlteraDataSet;
      ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsFloat := ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsFloat + 1;
//      btnConfirmarClick(nil);
    end;
  end;


//  ServicesContas_BoletoTestes(ACodigo);
end;

Function ControllerContas_BoletoTestes_Trocar(ADataSetCadastro: TFDQuery):Boolean;
begin
  Result:=True;
end;

function GravaEmMemoriavaloresAntigos(ADataSetCadastro: TFDQuery): TBoletoBuscaConfigValoresTeste;
begin
//  Result := TBoletoBuscaConfigValoresTeste.Create;
  Result.Convenio       := ADataSetCadastro.FieldByName('CONVENIO').AsString;
  Result.ConvenioDigito := ADataSetCadastro.FieldByName('CONVENIO_DIGITO').AsString;
  Result.CodigoCedente  := ADataSetCadastro.FieldByName('CODIGO_CEDENTE').AsString;
  Result.NossoNumero    := ADataSetCadastro.FieldByName('PROXIMO_NUMERO_CARTEIRA').AsString;
  Result.Carteira       := ADataSetCadastro.FieldByName('CARTEIRA').AsString;
  Result.Variacao       := ADataSetCadastro.FieldByName('VARIACAO').AsString;
  Result.DigitoAgencia  := ADataSetCadastro.FieldByName('DIGITO_AG').AsString;
end;


end.
