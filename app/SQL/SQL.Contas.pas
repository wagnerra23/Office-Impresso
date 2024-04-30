unit SQL.Contas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


function SQLContas(ACodConta : Integer): TFDQuery;
function SQLConta_Caixas: TFDQuery;
function SQLConta_CarregaDoBoleto(ACodConta{, ACodBanco}: Integer): TFDQuery;
function SQLConta_ParamentrosEmail(ACodConta: Integer): TFDQuery;
function SQLConta_BoletoTestes(ACodConta: Integer): TFDQuery;


implementation

Uses UnitFuncoes;

function SQLContas(ACodConta:integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from CONTAS ' +
                     'where (Codigo = :Codigo)';
  Result.ParamByName('Codigo').AsInteger:= ACodConta;
  Result.Open;
end;

function SQLConta_Caixas: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select CODIGO, DESCRICAO ' +
                     'from CONTAS ' +
                     'where (TIPO = ''CAIXA'')';
  Result.Open;
end;

function SQLConta_CarregaDoBoleto(ACodConta{, ACodBanco}: Integer): TFDQuery;
begin
  //Procedure que constrói uma query contendo os dados da conta de acordo com o banco utilizado
  //Se o banco for o da conta vinculada, então os dados serão trazidos da conta vinculada
  Result := GeraFDQuery;
  Result.SQL.Text := 'select C.*, CV.CODBANCO as CODBANCO_VINCULADO ' +
                         'from CONTAS C ' +
                         'left join CONTAS CV on (C.CODCONTA_VINCULADA = CV.CODIGO) ' + //Conta Vinculada
                         'where (C.CODIGO = :Cod)';
  Result.Params[0].AsInteger := ACodConta;
  Result.Open;
(*  {$IF Defined(ASSOCIACAO)}
  if (ACodBanco <> 0) and (Result.FieldByName('CODBANCO_VINCULADO').AsInteger = ACodBanco) then
  begin
    //Caso o boleto já tenha sido emitido, é verificado se o banco o qual o boleto foi emitido é o banco da conta
    //vinculada ou da conta principal. Caso seja da vinculada, o SQL é alterado para pegar as informações da conta correta
    ACodConta := Result.FieldByName('CODCONTA_VINCULADA').AsInteger;
    Result.Close;
    AQuerConta.SQL.Text := 'select C.* ' +
                           'from CONTAS C ' +
                           'where (C.CODIGO = :Cod)';
    Result.Params[0].AsInteger := ACodConta;
    Result.Open;
  end;
  {$IFEND} *)
end;

function SQLConta_ParamentrosEmail(ACodConta: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select EMAIL_EXIBIR_DOCUMENTO, EMAIL_EXIBIR_VENCIMENTO,  ' +
    '       EMAIL_EXIBIR_NOTA, EMAIL_EXIBIR_VALOR,            ' +
    '       EMAIL_EXIBIR_HISTORICO, EMAIL_TIPO_EXIBICAO_DADOS ' +
    ' from CONTAS                                             ' +
    ' where (CODIGO = :Cod)';
  Result.Params[0].AsInteger := ACodConta;
  Result.Open;
end;

function SQLConta_BoletoTestes(ACodConta: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * from CONTAS  where (CODIGO = :Codigo)';     // Aqui deve veririfcar se a Conta existe, senão cadastra
  Result.ParamByName('Codigo').AsInteger := ACodConta;
  Result.Open;
end;

end.
