unit SQL.Cidades;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;

function SQLCidades_BoletoTeste(ACodCidade: Integer): TFDQuery;

implementation

Uses UnitFuncoes;

function SQLCidades_BoletoTeste(ACodCidade: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := ' select CODIGO, UF, DESCRICAO, ESTADO, PAIS, CODPAIS ' +
                     ' from CIDADES ' +
                     ' where (CODIGO = :Codigo)' ;
  Result.ParamByName('CODIGO').AsInteger := ACodCidade;
  Result.Open;
end;

end.
