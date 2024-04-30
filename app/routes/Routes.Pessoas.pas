unit Routes.Pessoas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  uWRCalculaConfiguracoes, Math, System.Variants, DateUtils, Classes;

  procedure RoutesPessoas_BoletoTestes(ACodigo: String);

implementation

uses
  UnitFuncoes, Controller.Pessoas;

procedure RoutesPessoas_BoletoTestes(ACodigo: String);
begin
  ControllerPessoas_BoletoTestes(ACodigo);
end;


end.
