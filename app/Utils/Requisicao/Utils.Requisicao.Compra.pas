unit Utils.Requisicao.Compra;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, StrUtils;

function TipoDeCompraToEntradaOuSaida(ATipoCompra: string): String;

implementation

Uses UnitFuncoes, Services.Requisicao;

function TipoDeCompraToEntradaOuSaida(ATipoCompra: string): String;
begin
  Result := IfThenVar(not MatchStr(ATipoCompra, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA']),'E','S');
end;

end.
