unit SQL.Pessoas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;

 
function SQLPessoas_Endereco(ACodPessoa :String):TFDQuery;
function SQLPessoas_BuscaNomePorCodigo(ATransa: TFDCustomTransaction; ACodigo: String): String;
function SQLPessoas_BoletoTeste(ACodigo: String): TFDQuery;
function SQLPessoas_PercDescontoEspecialDoCliente(ACodPessoa:String): Currency;

implementation

Uses UnitFuncoes, Financeiro_Boleto, Aguarde, wrFuncoes, GeraEmailsBoletos, Email, Controller.Financeiro, Controller.Boleto,
  Controller.Contas;

function SQLPessoas_Endereco(ACodPessoa :String):TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select E.*, C.DESCRICAO as CORRESCIDADE, C.UF as CORRESESTADO, ' +
            '       C2.DESCRICAO as CIDADE2, C2.UF as ESTADO                 ' +
            'from PESSOAS E                                                 ' +
            'left join CIDADES C on (C.CODIGO = E.CORRESCODCIDADE)          ' +
            'left join CIDADES C2 on (C2.CODIGO = E.CODCIDADE)              ' +
            'where (E.CODIGO = :PESSOA_RESPONSAVEL_CODIGO);';
  Result.Params[0].AsString := ACodPessoa;
  Result.Open;	
end;

function SQLPessoas_BuscaNomePorCodigo(ATransa: TFDCustomTransaction; ACodigo: String): String;
var
  AQuerX: TFDQuery;
begin
  AQuerX := GeraFDQuery;
  try
    if TConfig.ReadBoolean('USAR_NOME_FANTASIA') then
      AQuerX.SQL.Text := 'select FANTASIA as NOME '
    else
      AQuerX.SQL.Text := 'select RAZAOSOCIAL as NOME ';

    AQuerX.SQL.Text := AQuerX.SQL.Text +
                       'from PESSOAS ' +
                       'where (Codigo = :Codigo)';

    AQuerX.ParamByName('Codigo').AsString:= ACodigo;
    AQuerX.Open;

    Result := AQuerX.FieldByName('NOME').AsString;
  finally
    AQuerX.Free;
  end;
end;

function SQLPessoas_BoletoTeste(ACodigo: String): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=' select CODIGO, TIPO, CNPJCPF, FANTASIA, RAZAOSOCIAL, ENDERECO, BAIRRO, CEP, CODCIDADE, UF, ATIVO ' +
                    ' from PESSOAS ' +
                    ' where (CODIGO = :Codigo)';
  Result.ParamByName('Codigo').AsString := ACodigo;
  Result.Open;
end;

function SQLPessoas_PercDescontoEspecialDoCliente(ACodPessoa:String): Currency;
var
  AQuerX: TFDQuery;
begin
  AQuerX := GeraFDQuery;
  try
    AQuerX.SQL.Text := 'select BOLETO_PERC_DESCONTO_PADRAO from PESSOAS  where (CODIGO = :Cod)';      // Deverria estar no SQL.Pessoas
    AQuerX.Params[0].AsString := ACodPessoa;
    AQuerX.Open;
    // APercDescontoPadrao
    Result := AQuerX.Fields[0].AsFloat;
  finally
    AQuerX.Free;
  end;
  /// Fim do Desconto Cliente
end;

end.