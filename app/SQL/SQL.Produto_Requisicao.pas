unit SQL.Produto_Requisicao;

interface

uses System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows, Vcl.Controls, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR;

 
function SQLProduto_Requisicao_SelectVazio(ATransa :TFDCustomTransaction):TFDQuery;
function SQLProduto_Requisicao_SelectCodigo(ATransa :TFDCustomTransaction; ACodigo: integer):TFDQuery;

implementation

Uses UnitFuncoes, Aguarde, wrFuncoes, Email;

function SQLProduto_Requisicao_SelectVazio(ATransa :TFDCustomTransaction):TFDQuery;
begin
  Result :=  GeraFDQuery(ATransa);
  try
    Result.SQL.Text:= 'select * from produto_requisicao where codigo = 0' ;
    Result.Open;
  finally
  end;
end;

function SQLProduto_Requisicao_SelectCodigo(ATransa :TFDCustomTransaction; ACodigo: integer):TFDQuery;
begin
  Result :=  GeraFDQuery(ATransa);
  try
    Result.SQL.Text:= 'select * from produto_requisicao where codigo = :codigo' ;
    Result.ParamByName('codigo').AsInteger := ACodigo;
    Result.Open;
  finally
  end;
end;


end.
