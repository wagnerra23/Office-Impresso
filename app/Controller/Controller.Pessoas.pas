unit Controller.Pessoas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


procedure ControllerPessoas_BoletoTestes(ACodigo: String);


implementation

Uses UnitFuncoes, Services.Pessoas, SQL.Pessoas;

procedure ControllerPessoas_BoletoTestes(ACodigo: String);
Var
  AQuerX : TFDQuery;
begin
  AQuerX := SQLPessoas_BoletoTeste(ACodigo);
  try
    // Consulta se não existe cria
    if AQuerX.IsEmpty then
      ServicesPessoas_BoletoTesteInsert(ACodigo);
  finally
    AQuerX.Free;
  end;
end;


end.
