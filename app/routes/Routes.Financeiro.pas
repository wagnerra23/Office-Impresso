unit Routes.Financeiro;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, cxGridDBTableView, System.Classes, GeraEmailsBoletos, DataModuleBoletos,
  Classes.Boletos;

procedure RoutesFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0);

function RoutesFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo,
  ATipoResponsavel: string; ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto,
  ATipoPagto, ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;


implementation

uses
  Controller.Financeiro, Controller.Boleto;

function RoutesFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo,
  ATipoResponsavel: string; ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto,
  ATipoPagto, ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;
begin
  Result:=ControllerFinanceiro_Lancamento_Financeiro_Historico(ATransa, ACodFinanceiro, ATipo, ATipoResponsavel,
    ACodConta, ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
    ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada,
    AParcela, AContatos, ACodUsuario, AChequeNumero, ACodEmpresa, AValor, ADesconto, AJuros,
    ADtEmissao, ADtVencto, ADtPagto, AAgrupador);
end;

procedure RoutesFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0);
begin
  ControllerFinanceiro_Lancamento_Financeiro(Transacao, ACodigo, ATipo, ATipoResponsavel,
    ACodConta, ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
    ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
    AContatos, ACodUsuario, ACodFinanceiroGrupo, ACodEmpresa, AValor, ADesconto, AJuros,
    AValorPrevisao, AChequeNumero, ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal,
    AOrigem, ACodFinOriginal, AAgrupador, ADtCompetencia);
end;


end.

