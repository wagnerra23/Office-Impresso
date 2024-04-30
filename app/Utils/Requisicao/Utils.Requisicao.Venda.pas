unit Utils.Requisicao.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Services.Requisicao;

  function NF_Entrada_SaidaToEntradaOuSaida(ANFEntradaSaida: string): String;

implementation

Uses UnitFuncoes;

function NF_Entrada_SaidaToEntradaOuSaida(ANFEntradaSaida: string): String;
begin
  Result := ifthenVar(ANFEntradaSaida = '1','S','E');
end;


end.
