unit Controller.Financeiro;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, IBX.IBQuery, ACBrBoleto, cxGridDBTableView,
  ACBRBoletoConversao, System.SysUtils, System.Classes;

function ControllerFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo,
  ATipoResponsavel: string; ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto,
  ATipoPagto, ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;

procedure ControllerFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0);

procedure ControllerFinanceiro_ConciliarContas(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro: TDataSet);

implementation

Uses
  UnitFuncoes, SQL.Financeiro, SQL.Contas, Controller.Contas, Utils.Boleto, Services.Financeiro, System.Generics.Collections;

function ControllerFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo,
  ATipoResponsavel: string; ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto,
  ATipoPagto, ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;
begin
  Result:=ServicesFinanceiro_Lancamento_Financeiro_Historico(ATransa, ACodFinanceiro, ATipo, ATipoResponsavel,
    ACodConta, ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
    ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada,
    AParcela, AContatos, ACodUsuario, AChequeNumero, ACodEmpresa, AValor, ADesconto, AJuros,
    ADtEmissao, ADtVencto, ADtPagto, AAgrupador);
end;

procedure ControllerFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0);
begin
  ServicesFinanceiro_Lancamento_Financeiro(Transacao, ACodigo, ATipo, ATipoResponsavel,
    ACodConta, ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
    ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
    AContatos, ACodUsuario, ACodFinanceiroGrupo, ACodEmpresa, AValor, ADesconto, AJuros,
    AValorPrevisao, AChequeNumero, ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal,
    AOrigem, ACodFinOriginal, AAgrupador, ADtCompetencia);
end;

procedure ControllerFinanceiro_ConciliarContas(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro: TDataSet);
var
  I: Integer;
  ALista: TList<Integer>;
begin
  ALista := TList<Integer>.Create;
  try
    for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
      ALista.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);

    for I := 0 to ALista.Count - 1 do
    begin
      cxGridFinanceiro.DataController.ChangeFocusedRecordIndex(ALista[I]);

      if not AFinanceiro.FieldByName('DT_CONCILIADO').IsNull then
        Continue;

      ServiceFinanceiro_ConciliarContas(AFinanceiro);
    end;
  finally
    ALista.Free;
  end;
end;

end.
