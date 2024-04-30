unit Routes.Contas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  uWRCalculaConfiguracoes, Math, System.Variants, DateUtils, Classes, Classes.Boletos;

Function RoutesContas_BoletoTestes(ADataSetCadastro: TFDQuery):Boolean;
Function RoutesContas_BoletoTestesTrocar(ADataSetCadastro: TFDQuery):Boolean;

// Teste pela cadastro de Contas
function RoutesBoleto_BoletoTeste_Gerar(ACodConta: Integer; ANossoNumero: string; AValor: Double; ADtVencto: TDate;
  AExcluirAposGerar: Boolean = True; ASilent: Boolean = False; AModoImpressao: TModoImpressaoBoleto = mibApenasPDF): TBoletoTeste;
procedure RoutesBoleto_BoletoTeste_BuscarConfigLinhaDigitavel(ALinhaDigitavel:String);
procedure RoutesBoleto_BoletoTeste_PreConfigurarBoleto(ADataSetCadastro: TFDQuery);


implementation

uses
  UnitFuncoes, Controller.Contas, Controller.Boleto;

Function RoutesContas_BoletoTestes(ADataSetCadastro: TFDQuery):Boolean;
begin
  Result:=ControllerContas_BoletoTestes(ADataSetCadastro);
end;

Function RoutesContas_BoletoTestesTrocar(ADataSetCadastro: TFDQuery):Boolean;
begin
  Result:=ControllerContas_BoletoTestes_Trocar(ADataSetCadastro);
end;



// Testes do cadastro de Contas
function RoutesBoleto_BoletoTeste_Gerar(ACodConta: Integer; ANossoNumero: string; AValor: Double; ADtVencto: TDate;
  AExcluirAposGerar: Boolean = True; ASilent: Boolean = False; AModoImpressao: TModoImpressaoBoleto = mibApenasPDF): TBoletoTeste;
begin
  Result:= ControllerBoleto_Remessa_Gerar_BoletoTeste(ACodConta, ANossoNumero, AValor, ADtVencto,
  AExcluirAposGerar, ASilent, AModoImpressao);
end;

procedure RoutesBoleto_BoletoTeste_BuscarConfigLinhaDigitavel(ALinhaDigitavel:String);
begin
//  ControllerBoleto_BoletoTeste_BuscarConfigLinhaDigitavel(ALinhaDigitavel);
end;

procedure RoutesBoleto_BoletoTeste_PreConfigurarBoleto(ADataSetCadastro: TFDQuery);
begin
//  ControllerBoleto_BoletoTeste_PreConfigurarBoleto(ADataSetCadastro);
end;


end.
