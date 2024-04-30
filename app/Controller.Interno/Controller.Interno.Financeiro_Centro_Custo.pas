unit Controller.Interno.Financeiro_Centro_Custo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils, Math, System.Variants, DateUtils;

function ControllerInterno_Financeiro_Centro_Custo_ValidaCentroCusto(ACentroCusto: TFDQuery; ACentroCustoDestino: Integer;  AValorParcela, APercDigitado: Double): Double;

implementation

uses  UnitFuncoes;

function ControllerInterno_Financeiro_Centro_Custo_ValidaCentroCusto(ACentroCusto: TFDQuery; ACentroCustoDestino: Integer;  AValorParcela, APercDigitado: Double): Double;
var
  APercentual: Double;

begin
  APercentual := VerificaPercentual(APercentual, ACentroCusto);
  if (APercentual + APercDigitado) > 100 then
    raise Exception.Create('Não pode passar de 100%.');

  ACentroCusto.first;
  while not ACentroCusto.Eof do
  begin
    if ACentroCusto.FieldByName('CODCENTRO_CUSTO').AsInteger  = ACentroCustoDestino then
      raise Exception.Create('Esse Centro de Custo já está Rateado para esse Plano de Contas.');
    ACentroCusto.Next
  end;

  if APercDigitado = 0 then
    raise Exception.Create('O Percentual precisa ser maior que zero(0).');

  if AValorParcela = 0 then
    raise Exception.Create('O Valor precisa ser maior que zero(0).');

  Result := (AValorParcela * (APercDigitado/100));
end;

end.
