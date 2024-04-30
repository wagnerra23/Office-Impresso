unit Utils.Requisicao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

function CalculaValores(AQuantPrevista, AQuant, ACusto: Double): Double;

implementation

Uses UnitFuncoes, wrFuncoes, CadProduto_Movimento;

function CalculaValores(AQuantPrevista, AQuant, ACusto: Double): Double;
var
  ACustoTotalPrevisto, ACustoTotal, ADiferenca: Double;
begin
  ACustoTotalPrevisto := Trunc(AQuantPrevista * ACusto);
  ACustoTotal         := Trunc(AQuant * ACusto);

  ADiferenca := trunc((((ACustoTotal - ACustoTotalPrevisto)/ ACustoTotalPrevisto)*100));
  if ADiferenca < 0  then
    ADiferenca := ADiferenca * -1 //-20% de custo, transforma para positivo, para apresentar lucro
  else
    ADiferenca := ADiferenca * 1;//+20% de custo, transforma para negativo, para aparesetar como perda
  Result := ADiferenca;
end;

end.
