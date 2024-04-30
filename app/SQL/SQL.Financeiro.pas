unit SQL.Financeiro;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;
 
function SQLFinanceiro_PeloNossonumero(ATransa :TFDTransaction; ANossoNumero :String; ACodConta: Integer):TFDQuery;  // ACodConta: Integer;
function SQLFinanceiro_BuscaParcelasPelaCompra(ACodCompra: String): TFDQuery;

implementation

Uses UnitFuncoes, Financeiro_Boleto, Aguarde, wrFuncoes, GeraEmailsBoletos, Email, Controller.Financeiro, Controller.Boleto,
  Controller.Contas;

function SQLFinanceiro_PeloNossonumero(ATransa :TFDTransaction; ANossoNumero :String; ACodConta: Integer):TFDQuery;    //   ACodConta: Integer;
begin
  Result :=  GeraFDQuery(ATransa);
  try
    Result.SQL.Text:= 'Select * From Financeiro '+
                     ' WHERE (BOLETO_NOSSO_NR = ' + QuotedStr(Trim(ANossoNumero)) + ') and (CODCONTA = :CodConta) and (STATUS LIKE ''ATIVO%'' )';
    Result.ParamByName('CodConta').AsInteger := ACodConta;
    Result.Open;
  finally
  end;

{ Função antiga
  Financeiro.Close;
  // if (Contas.FieldByName('CODBANCO').AsString = '104') and (Copy(ANossoNumTitulo, 1, 1) <> '9') then  //Cobranca com registro 9 e 8 Sem registro a sem registro o numero fica guardado no nome do cliente
  // Financeiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = '''+Copy(ATitulo.Sacado.NomeSacado,1,15)+''')'
  // Financeiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = '''+Copy(ATitulo.NumeroDocumento,1,15)+''')'
  // else
  if (Contas.FieldByName('CODBANCO').AsString = '77') then
    Financeiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.DOCUMENTO = ' + QuotedStr(Trim(ASeuNumero)) + ') and(F.STATUS LIKE ''ATIVO%'')'
  else
    Financeiro.SelectSQL[1] := 'WHERE (F.CODCONTA = :CodConta)and(F.BOLETO_NOSSO_NR = ' + QuotedStr(ANossoNumTitulo) +') and(F.STATUS LIKE ''ATIVO%'')'; // or (F.STATUS = ''INATIVO AGRUPADO''))';;
  Financeiro.Open; }      

end;

function SQLFinanceiro_BuscaParcelasPelaCompra(ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=  'select TIPO, CODCONTA, DATAPAGTO ' +
                      'from FINANCEIRO ' +
                      'where (CODNF_ENTRADA = :Codigo)';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;

end.
