unit SQL.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;

function SQLVenda_BuscaPorCodigo(ACodVenda: string): TFDQuery;
function SQLVenda_AtualizaVendaPrincipalParcial(ACodVenda, ACodVendaOriginal: string): TFDQuery;

implementation

Uses UnitFuncoes;

function SQLVenda_BuscaPorCodigo(ACodVenda: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'SELECT V.* FROM VENDA V WHERE V.CODIGO = :CODVENDA';
  Result.ParamByName('CODVENDA').AsString := ACodVenda;
  Result.Open;
end;

function SQLVenda_AtualizaVendaPrincipalParcial(ACodVenda, ACodVendaOriginal: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'UPDATE VENDA V SET V.CODVENDA_PRINCIPAL = ' + QuotedStr(ACodVenda) +
                     'Where V.CODVENDA_VINCULADA = ' + QuotedStr(ACodVendaOriginal) + 'and V.STATUS in (''ATIVO PARCIAL'',''INATIVO PARCIAL'') ';
  Result.Open;
end;


end.
