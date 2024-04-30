unit Utils.Empresa;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


function SQLEmpresa(ACodEmpresa : Integer): TFDQuery;


implementation

Uses UnitFuncoes;

function SQLEmpresa(ACodEmpresa : Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from EMPRESA ' +
                     'where (Codigo = :Codigo)';
  Result.ParamByName('Codigo').AsInteger := ACodEmpresa;
  Result.Open;   	
end;


end.
