unit Classes.Financeiro;

interface

uses
  Data.DB, UnitFuncoes, System.Classes, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IBX.IBDatabase, wrConversao,
  IBX.IBQuery, IBX.IBCustomDataSet, System.SysUtils, IBX.IBStoredProc, FireDAC.Stan.Param, System.Contnrs, Classes.WR;

type
  TFinanceiroStatus = (fisAtivo, fisAtivoEmEspera, fisAtivoAgrupado, fisInativo, fisInativoExcluido, fisInativoAgrupado,
                       fisInativoExtrato);
  TFinanceiroStatusHelper = record helper for TFinanceiroStatus
  public
    function Codigo: string;
    function Descricao: string;
    function FiltroSQL: string;
    class function GetFromCodigo(ACodigo: string): TFinanceiroStatus; static;
  end;

  TTipoPagamentoPrevisao = (tptpNenhum, tptp1Dia, tptp2Dias, tptp7Dias, tptp15Dias, tptp30Dias, tptpDiaFixo, tptpVencto);
  TTipoPagamentoTipoPrevisaoHelper = record helper for TTipoPagamentoPrevisao
  public
    function Codigo: Variant;
    class function GetFromCodigo(ACodigo: string): TTipoPagamentoPrevisao; static;
    function Descricao: string;
    function Hint: string;
    function Tipo: string;
    function GetDtPrevisao(ATipoPagto: string; ADataReferencia: TDate): TDate;
  end;

  TFinanceiroTipoConciliacao = (ftcSimples, ftcVinculada, ftcVinculoSimples);
  TFinanceiroTipoConciliacaoHelper = record helper for TFinanceiroTipoConciliacao
  public
    function Codigo: string;
    function Descricao: string;
    class function GetFromCodigo(ACodigo: string): TFinanceiroTipoConciliacao; static;
  end;

  TFinanceiroTipoData = (ftdEmissao, ftdVencimento, ftdPagamento, ftdCompetencia);
  TFinanceiroTipoDataHelper = record helper for TFinanceiroTipoData
  public
    function Codigo: string;
    function Descricao: string;
    function Campo: string;
    class function GetFromCodigo(ACodigo: string): TFinanceiroTipoData; static;
  end;

  TConta = record
    CodConta: Integer;
    Descricao: string;
    Multa: Double;
    Juros: Double;
    Tolerancia: Integer;
  end;

  TCredito = class
    class function GetDebito(ACodPessoa: string; ATransacao: TComponent = nil): Double;
  end;

  TFinAlteracaoRec = record //Usado no controle de alteração do financeiro para caixas fechados
    CodConta: Integer;
    Valor: Double;
    Tipo: string;
    Juros: Double;
    Desconto: Double;
    TipoPagamento: string;
    DtEmissao: TDateTime;
    DtVencimento: TDateTime;
    DtPagamento: TDateTime;
    DtNF: TDateTime;
    DtExclusao: TDateTime;
    TipoResponsavel: string;
    CodResponsavel: string;
    RazaoSocial: string;
  public
    procedure Limpar;
  end;

  TFinanceiroCodigo = class
  private
    FCodPedido: Variant;
    FCodigo: Variant;
    FCodEmpresa: Variant;
  public
    property Codigo: Variant read FCodigo write FCodigo;
    property CodPedido: Variant read FCodPedido write FCodPedido;
    property CodEmpresa: Variant read FCodEmpresa write FCodEmpresa;
    procedure Assign(const ACodigo: TFinanceiroCodigo);
    procedure Clear;
    class function GetFromDS(const ADataSet: TDataSet): TFinanceiroCodigo;
    constructor Create;
  end;

  TListaRetornoFinanceiro = class(TObjectList)
  private
    function GetItem(Index: Integer): TFinanceiroCodigo;
  public
    property Items[Index: Integer]: TFinanceiroCodigo read GetItem; default;
    function Add: TFinanceiroCodigo; overload;
    procedure Add(AItem: TFinanceiroCodigo); overload;
    procedure Assign(ASource: TListaRetornoFinanceiro);
  end;

implementation

uses
  Variants, Base, uResultadoExercicio, Classes.PlanoContas, StrUtils, DateUtils, wrFuncoes;

{ TFinanceiroStatusHelper }

function TFinanceiroStatusHelper.Codigo: string;
begin
  case Self of
               fisAtivo: Result := 'ATIVO';
       fisAtivoEmEspera: Result := 'ATIVO EM ESPERA';
       fisAtivoAgrupado: Result := 'ATIVO AGRUPADO';
             fisInativo: Result := 'INATIVO';
     fisInativoExcluido: Result := 'INATIVO EXCLUIDO';
     fisInativoAgrupado: Result := 'INATIVO AGRUPADO';
      fisInativoExtrato: Result := 'INATIVO EXTRATO';
  end;
end;

function TFinanceiroStatusHelper.Descricao: string;
begin
  case Self of
               fisAtivo: Result := 'Ativo';
       fisAtivoEmEspera: Result := 'Ativo em Espera';
       fisAtivoAgrupado: Result := 'Ativo Agrupado';
             fisInativo: Result := 'Inativo';
     fisInativoExcluido: Result := 'Inativo Excluído';
     fisInativoAgrupado: Result := 'Inativo Agrupado';
      fisInativoExtrato: Result := 'Inativo Extrato';
  end;
end;

function TFinanceiroStatusHelper.FiltroSQL: string;
begin
  if Self in [fisAtivo, fisInativo] then
    Result := Self.Codigo + '%'
  else
    Result := Self.Codigo;
end;

class function TFinanceiroStatusHelper.GetFromCodigo(ACodigo: string): TFinanceiroStatus;
begin
  for Result := Low(TFinanceiroStatus) to High(TFinanceiroStatus) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  GeraExcecao('Status de lançamento financeiro inválido: ' + ACodigo);
end;

{ TFinAlteracaoRec }

procedure TFinAlteracaoRec.Limpar;
begin
  CodConta        := 0;
  Valor           := 0;
  Tipo            := '';
  Juros           := 0;
  Desconto        := 0;
  TipoPagamento   := '';
  DtEmissao       := 0;
  DtVencimento    := 0;
  DtPagamento     := 0;
  DtNF            := 0;
  DtExclusao      := 0;
  TipoResponsavel := '';
  CodResponsavel  := '';
  RazaoSocial     := '';
end;


{ TTipoPagamentoTipoPrevisaoHelper }

function TTipoPagamentoTipoPrevisaoHelper.Codigo: Variant;
begin
  case Self of
     tptpNenhum: Result := Null;
       tptp1Dia: Result := '1 DIA';
      tptp2Dias: Result := '2 DIAS';
      tptp7Dias: Result := '7 DIAS';
     tptp15Dias: Result := '15 DIAS';
     tptp30Dias: Result := '30 DIAS';
    tptpDiaFixo: Result := 'DIA FIXO';
     tptpVencto: Result := 'VENCTO';
  end;
end;

function TTipoPagamentoTipoPrevisaoHelper.Descricao: string;
begin
  case Self of
     tptpNenhum: Result := '<Nenhum>';
       tptp1Dia: Result := '1 Dia';
      tptp2Dias: Result := '2 Dias';
      tptp7Dias: Result := '7 Dias';
     tptp15Dias: Result := '15 Dias';
     tptp30Dias: Result := '30 Dias';
    tptpDiaFixo: Result := 'Dia Fixo';
     tptpVencto: Result := 'Vencimento';
  end;
end;

class function TTipoPagamentoTipoPrevisaoHelper.GetFromCodigo(ACodigo: string): TTipoPagamentoPrevisao;
begin
  for Result := Low(TTipoPagamentoPrevisao) to High(TTipoPagamentoPrevisao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := tptpNenhum;
end;

function TTipoPagamentoTipoPrevisaoHelper.Hint: string;
begin
  case Self of
     tptpNenhum: Result := 'Não utilizar a Data de Previsão';
     tptp1Dia, tptp2Dias, tptp7Dias, tptp15Dias, tptp30Dias: Result := 'A Data de Previsão será definida para ' + Self.Descricao + ' após a data de Lançamento';
    tptpDiaFixo: Result := 'A Data de Previsão será o próximo dia de crédito após o período de fechamento';
     tptpVencto: Result := 'A Data de Previsão será a data de Vencimento da parcela';
  end;
end;

function TTipoPagamentoTipoPrevisaoHelper.Tipo: string;
begin
  case Self of
     tptpNenhum: Result := '';
     tptp1Dia, tptp2Dias, tptp7Dias, tptp15Dias, tptp30Dias, tptpDiaFixo: Result := 'CARTAO';
     tptpVencto: Result := 'CHEQUE';
  end;
end;

function TTipoPagamentoTipoPrevisaoHelper.GetDtPrevisao(ATipoPagto: string; ADataReferencia: TDate): TDate;
var
  QuerX : TIBQuery;
  ADtProxFechamento: TDate;
begin
  Result := ADataReferencia;
  case Self of
     tptpVencto: Result := ADataReferencia;
       tptp1Dia: Result := DateOf(IncDay(ADataReferencia, 1));
      tptp2Dias: Result := DateOf(IncDay(ADataReferencia, 2));
      tptp7Dias: Result := DateOf(IncDay(ADataReferencia, 7));
     tptp15Dias: Result := DateOf(IncDay(ADataReferencia, 15));
     tptp30Dias: Result := DateOf(IncDay(ADataReferencia, 30));
    tptpDiaFixo:
      begin
        QuerX := GeraQuery;
        try
          QuerX.SQL.Text := 'select PREVISAO_DIA_FECHAMENTO, PREVISAO_DIA_CREDITO ' +
                            'from TIPO_PAGAMENTO ' +
                            'where (DESCRICAO = :Desc)';
          QuerX.Params[0].AsString := ATipoPagto;
          QuerX.Open;

          //Determina a data do próximo fechamento
          ADtProxFechamento := EncodeDate(YearOf(ADataReferencia), MonthOf(ADataReferencia), QuerX.FieldByName('PREVISAO_DIA_FECHAMENTO').AsInteger);
          if ADataReferencia > ADtProxFechamento then
            ADtProxFechamento := IncMonth(ADtProxFechamento);

          //Com base na data do proximo fechamento, é definido a data do crédito
          Result := EncodeDate(YearOf(ADtProxFechamento), MonthOf(ADtProxFechamento), QuerX.FieldByName('PREVISAO_DIA_CREDITO').AsInteger);
        finally
          QuerX.Free;
        end;
      end;
  end;
end;

{ TCredito }

class function TCredito.GetDebito(ACodPessoa: string; ATransacao: TComponent): Double;
var
  QuerX: TWRDataSet;
begin
  inherited;
  QuerX := TWRDataSet.Create(ATransacao);
  try
    QuerX.SQL.Text := 'select * from ' +
                      '(select sum(VALOR) as soma ' +
                      'from FINANCEIRO ' +
                      'where (PESSOA_RESPONSAVEL_CODIGO = :Cod) ' +
                      '      and (TIPO = ''A RECEBER'') ' +
                      '      and (STATUS like ''ATIVO%'')) ' +
                      'where soma is not null';
    QuerX.Params[0].AsString := ACodPessoa;
    QuerX.Open;
    Result := QuerX.Fields[0].AsFloat;
  finally
    QuerX.Free;
  end;
end;

{ TListaRetornoFinanceiro }

function TListaRetornoFinanceiro.Add: TFinanceiroCodigo;
begin
  Result := TFinanceiroCodigo.Create;
  inherited Add(Result);
end;

function TListaRetornoFinanceiro.GetItem(Index: Integer): TFinanceiroCodigo;
begin
  Result := TFinanceiroCodigo(inherited GetItem(Index));
end;

procedure TListaRetornoFinanceiro.Add(AItem: TFinanceiroCodigo);
begin
  inherited Add(AItem);
end;

procedure TListaRetornoFinanceiro.Assign(ASource: TListaRetornoFinanceiro);
var
  i: Integer;
begin
  Clear;
  if ASource = nil then
    Exit;
  for I := 0 to ASource.Count - 1 do
    Add.Assign(ASource[i]);
end;

{ TFinanceiroRetorno }

procedure TFinanceiroCodigo.Assign(const ACodigo: TFinanceiroCodigo);
begin
  if ACodigo <> nil then
  begin
    FCodigo     := ACodigo.Codigo;
    FCodPedido  := ACodigo.CodPedido;
    FCodEmpresa := ACodigo.CodEmpresa;
  end else
    Clear;
end;

procedure TFinanceiroCodigo.Clear;
begin
  FCodPedido  := Null;
  FCodigo     := Null;
  FCodEmpresa := Null;
end;

constructor TFinanceiroCodigo.Create;
begin
  Clear; //Inicializa com Null, senão fica Unassigned
end;

class function TFinanceiroCodigo.GetFromDS(const ADataSet: TDataSet): TFinanceiroCodigo;
begin
  Result := TFinanceiroCodigo.Create;
  Result.Codigo     := ADataSet.FieldByName('CODIGO').Value;
  Result.CodPedido  := ADataSet.FieldByName('CODPEDIDO').Value;
  Result.CodEmpresa := ADataSet.FieldByName('CODEMPRESA').Value;
end;

{ TFinanceiroTipoConciliacaoHelper }

function TFinanceiroTipoConciliacaoHelper.Codigo: string;
begin
  case Self of
           ftcSimples: Result := 'SIMPLES';
         ftcVinculada: Result := 'VINCULADA';
    ftcVinculoSimples: Result := 'VINCULO_SIMPLES';
  end;
end;

function TFinanceiroTipoConciliacaoHelper.Descricao: string;
begin
  case Self of
           ftcSimples: Result := 'Conciliação Simples - Lançar item no Financeiro';
         ftcVinculada: Result := 'Conciliação Vinculada - Vincula um ou mais lançamentos financeiros ao item do extrato';
    ftcVinculoSimples: Result := 'Conciliação com Vínculo Simples - Sem conferência de valor';
  end;
end;

class function TFinanceiroTipoConciliacaoHelper.GetFromCodigo(ACodigo: string): TFinanceiroTipoConciliacao;
begin
  for Result := Low(TFinanceiroTipoConciliacao) to High(TFinanceiroTipoConciliacao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := ftcSimples;
end;

{ TFinanceiroTipoDataHelper }

function TFinanceiroTipoDataHelper.Campo: string;
begin
  case Self of
        ftdEmissao: Result := 'EMISSAO';
     ftdVencimento: Result := 'VENCTO';
      ftdPagamento: Result := 'DATAPAGTO';
    ftdCompetencia: Result := 'DT_COMPETENCIA';
  end;
end;

function TFinanceiroTipoDataHelper.Codigo: string;
begin
  case Self of
        ftdEmissao: Result := 'EMISSAO';
     ftdVencimento: Result := 'VENCIMENTO';
      ftdPagamento: Result := 'PAGAMENTO';
    ftdCompetencia: Result := 'COMPETENCIA';
  end;
end;

function TFinanceiroTipoDataHelper.Descricao: string;
begin
  case Self of
        ftdEmissao: Result := 'Emissão';
     ftdVencimento: Result := 'Vencimento';
      ftdPagamento: Result := 'Pagamento';
    ftdCompetencia: Result := 'Competência';
  end;
end;

class function TFinanceiroTipoDataHelper.GetFromCodigo(ACodigo: string): TFinanceiroTipoData;
begin

end;

end.
