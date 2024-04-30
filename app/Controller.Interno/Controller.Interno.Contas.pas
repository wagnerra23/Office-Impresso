unit Controller.Interno.Contas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils, Math, System.Variants, DateUtils,
  IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, IBX.IBStoredProc, IBX.IBSQL;

function ControllerContas_GeraNossoNumero(AFinanceiro: TDataSet; ACodConta: Integer; ACarteira :String; AConta: TDataSet): string; // Função restrita

implementation

uses  UnitFuncoes, Services.Contas;

function ControllerContas_GeraNossoNumero(AFinanceiro: TDataSet; ACodConta: Integer; ACarteira :String; AConta: TDataSet): string; // Função restrita
begin
  Result := ServicesContas_GeraNossoNumero(AFinanceiro, AConta, ACodConta, ACarteira);
end;

end.
