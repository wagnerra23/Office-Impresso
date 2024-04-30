unit SQL.Boleto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;

function SQLBoleto_ExisteBoletos(ACodConta: Integer): TFDQuery;
function SQLBoleto_SeqRetornoConta(ATransa :TFDTransaction; ACodConta: Integer): TFDQuery;
//function SQLBoleto_ExisteBoletos_Verifica(ACodConta :Integer):Boolean;
function SQLBoleto_AchaFianceiroBoleto: String;
function SQLBoleto_AchaFianceiroBoletoSemDataGeracao: String;
function SQLBoleto_FinanceiroBoletoOriginal: String;
function SQLBoleto_GerarRemessaBoletos(ACodConta: Integer): String;
function SQLBoletoAtual(ACodigo:integer): TFDQuery;

implementation


Uses UnitFuncoes;

function SQLBoleto_ExisteBoletos(ACodConta: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select 1 from BOLETOS B  '+
     ' left join FINANCEIRO F on (F.CODIGO = B.CODIGO) and (F.CODPEDIDO = B.CODPEDIDO) and (F.CODEMPRESA = B.CODEMPRESA) '+
     ' left join CONTAS C on (C.CODIGO = F.CODCONTA) '+
     ' where(F.CODCONTA = :CodConta) '+
     ' and (F.TIPOPAGTO = ''BOLETO'') '+
     ' and (F.STATUS like ''ATIVO%'') '+
     ' and (F.PODE_ENVIAR = ''S'') ';
  Result.ParamByName('CodConta').AsInteger := ACodConta;
  Result.Open;

  // Antigo Where que buscava
  //where (F.CODCONTA = :CODIGO)
  //      and (F.TIPOPAGTO = 'BOLETO')
  //      and (F.STATUS like 'ATIVO%')
  //      and (B.REMESSA is null)
  //      and not (F.BOLETO_NOSSO_NR is null)
  //      and (coalesce(P.NAO_GERAR_REMESSA_BOLETO, 'N') <> 'S')
  //      and (((coalesce(B.CARTEIRA, '') = coalesce(C.CARTEIRA, '')) and (C.CARTEIRA_GERA_REMESSA = 'S'))
  //         or ((coalesce(B.CARTEIRA, '') = coalesce(C.VARIACAO, '')) and (C.VARIACAO_GERA_REMESSA = 'S')))

end;

//function SQLBoleto_ExisteBoletos_Verifica(ACodConta :Integer):Boolean;
//Var
//  QuerX : TFDQuery;
//begin
//  QuerX := SQLBoleto_ExisteBoletos(ACodConta);
//  try
//    Result := QuerX.IsEmpty;
//  finally
//    QuerX.Free;
//  end;
//end;

function SQLBoleto_AchaFianceiroBoleto: String;
begin
  Result := ' select * from FINANCEIRO_BOLETO ' +
      ' where(CODCONTA = :CODIGO)and (DESCRICAO = :Desc)and '+
      ' order by CODIGO desc ';

// Tem parametros sendo preenchido no beforeOpen da Tela do Financeiro_Boleto
//  if GrupoRemessa.ActuallyVisible then   //btaRemessa
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'REMESSA';
//  if GrupoRetorno.ActuallyVisible then   //btaRetorno
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'RETORNO';
end;

function SQLBoleto_SeqRetornoConta(ATransa :TFDTransaction; ACodConta: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select SEQRET from CONTAS where (CODIGO = :CodConta)';
  Result.ParamByName('CodConta').AsInteger := ACodConta;
  Result.Open;
end;

function SQLBoleto_AchaFianceiroBoletoSemDataGeracao: String;
begin
  Result := ' select * from FINANCEIRO_BOLETO ' +
      ' where(CODCONTA = :CODIGO)and (DESCRICAO = :Desc)and '+
      ' (DT_GERACAO_ARQUIVO is Null) '+
      ' order by CODIGO desc ';

// Tem parametros sendo preenchido no beforeOpen da Tela do Financeiro_Boleto
//  if GrupoRemessa.ActuallyVisible then   //btaRemessa
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'REMESSA';
//  if GrupoRetorno.ActuallyVisible then   //btaRetorno
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'RETORNO';
end;

function SQLBoleto_FinanceiroBoletoOriginal: String;
begin
  Result := 'select * from FINANCEIRO_BOLETO' + #13#10 +
            'where (CODCONTA = :CODIGO) and (DESCRICAO = :Desc)' + #13#10 +
            'order by CODIGO desc';


// Tem parametros sendo preenchido no beforeOpen da Tela do Financeiro_Boleto
//  if GrupoRemessa.ActuallyVisible then   //btaRemessa
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'REMESSA';
//  if GrupoRetorno.ActuallyVisible then   //btaRetorno
//    Financeiro_Boleto.ParamByName('Desc').AsString := 'RETORNO';
end;

function SQLBoleto_GerarRemessaBoletos(ACodConta: Integer): String;
begin
  Result := ' select B.*, F.BOLETO_NOSSO_NR, F.TIPOPAGTO, F.STATUS, F.DOCUMENTO from BOLETOS B ' +
      ' left join FINANCEIRO F on (F.CODIGO = B.CODFINANCEIRO) and (F.CODPEDIDO = B.CODPEDIDO) and (F.CODEMPRESA = B.CODEMPRESA) ' +
      ' where(F.CODCONTA = '+IntToStr(ACodConta)+')and ' +
      '      (F.BOLETO_NOSSO_NR <> '''')and(B.PODE_ENVIAR = ''S'') and (F.status LIKE ''ATIVO%'')';

//       'and (F.TIPOPAGTO = ''BOLETO'')' + #13#10 +
//      'and (F.STATUS like ''ATIVO%'')' + #13#10 +
//      'and (B.PODE_ENVIAR = ''S'')' + #13#10 +

     // A RECEBER
     // SEM REMESSA

  // Antigo Where que buscava
//select B.*, F.BOLETO_NOSSO_NR
//from BOLETOS B
//left join FINANCEIRO F on (F.CODIGO = B.CODIGO) and (F.CODPEDIDO = B.CODPEDIDO) and (F.CODEMPRESA = B.CODEMPRESA)
//left join PESSOAS P on (P.CODIGO = F.PESSOA_RESPONSAVEL_CODIGO)
//left join CONTAS C on (C.CODIGO = F.CODCONTA)
//where (F.CODCONTA = :CODIGO)
//      and (F.TIPOPAGTO = 'BOLETO')
//      and (F.STATUS like 'ATIVO%')
//      and (F.PODE_ENVIAR = 'S')


end;

function SQLBoletoAtual(ACodigo:integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from BOLETOS ' +
                     'where (Codigo = :Codigo)';
  Result.ParamByName('Codigo').AsInteger:= ACodigo;
  Result.Open;
end;



end.
