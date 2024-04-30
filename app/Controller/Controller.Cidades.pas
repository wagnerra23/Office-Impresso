unit Controller.Cidades;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


function ControllerCidades_BoletoTestes(ACodigo: Integer): String;


implementation

Uses UnitFuncoes, Services.Cidades, SQL.Cidades;

function ControllerCidades_BoletoTestes(ACodigo: Integer): String;
Var
  AQuerX : TFDQuery;
begin
  AQuerX := SQLCidades_BoletoTeste(ACodigo);
  try
    // Consulta se não existe cria
    if AQuerX.IsEmpty then
      ServicesCidades_BoletoTesteInsert(ACodigo);
  finally
    AQuerX.Free;
  end;
end;


end.
