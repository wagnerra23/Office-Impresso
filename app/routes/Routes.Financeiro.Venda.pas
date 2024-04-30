unit Routes.Financeiro.Venda;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  Math, System.Variants, DateUtils, cxGridDBTableView, System.Classes, Controller.Venda;

procedure RoutesFinanceiroVenda_AtualizaSituacaoFinanceira(const ACodPedido, ACodFinanceiroAgrupador: Variant);

implementation

uses
  Controller.Financeiro;

procedure RoutesFinanceiroVenda_AtualizaSituacaoFinanceira(const ACodPedido, ACodFinanceiroAgrupador: Variant);
begin
 // AQUI DE VE CHAMAR ONDE ESTA O CONTROLADOR DELE
  ControllerVenda_AtualizaSituacaoFinanceira(ACodPedido, ACodFinanceiroAgrupador);
end;

end.

