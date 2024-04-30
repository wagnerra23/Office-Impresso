unit Routes.Financeiro.Contas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, cxGridDBTableView, System.Classes;

procedure RoutesFinanceiro_ConciliarContas(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro: TDataSet);

implementation

uses
  Controller.Financeiro;

procedure RoutesFinanceiro_ConciliarContas(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro: TDataSet);
begin
  ControllerFinanceiro_ConciliarContas(cxGridFinanceiro, AFinanceiro);
end;

end.

