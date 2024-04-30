unit Utils.Financeiro;

interface

uses
  Data.DB, UnitFuncoes, System.Classes, System.SysUtils, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Param,
  IBX.IBDatabase, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBStoredProc,wrConversao, System.Contnrs, Classes.WR, Classes.Financeiro;


procedure ServiceeFinanceiro_VerificaCodUsuarioConta(AFinanceiro: TDataSet);

procedure PreencheTiposPagto(AStrings: TStrings; AIncluirTodos: Boolean = False);
procedure PreencheTiposPagtoArray(AStrings: array of TStrings; AIncluirTodos: Boolean = False);
procedure PreencheFinanceiroTipo(AStrings: TStrings);

function GetParcelaAgrupadora(const ACodAgrupador: Integer): TFinanceiroCodigo;

implementation

uses
  Variants, Base, Classes.PlanoContas, StrUtils, DateUtils, wrFuncoes, SQL.PlanoContas, Generics.Collections;

function GetParcelaAgrupadora(const ACodAgrupador: Integer): TFinanceiroCodigo;
var
  QuerX: TFDQuery;
begin
  {Busca qual a parcela que está agrupando as parcelas selecionadas}
  Result := nil;
  QuerX := GeraFDQuery;
  try
    //Primeiro verifica se a parcela agrupadora está ativa
    QuerX.SQL.Text := 'select first 1 CODIGO, CODPEDIDO, CODEMPRESA ' +
                      'from FINANCEIRO ' +
                      'where (AGRUPADOR = :CodAgrupador) ' +
                      '      and ((STATUS like ''ATIVO%'') or (STATUS = ''INATIVO EXCLUIDA''))';
    QuerX.Params[0].AsInteger := ACodAgrupador;
    QuerX.Open;
    if not QuerX.IsEmpty then
      Result := TFinanceiroCodigo.GetFromDS(QuerX)
    else
    begin
      {Caso a parcela agrupadora não esteja ativa e foi reagrupada com outra, busca pelo histórico qual era a parcela que
       foi agrupada}
      QuerX.Close;
      QuerX.SQL.Text := 'select first 1 FH.CODFINANCEIRO as CODIGO, FH.CODPEDIDO, FH.CODEMPRESA ' +
                        'from FINANCEIRO_HISTORICO FH ' +
                        'where (FH.AGRUPADOR = :AGRUPADOR) ' +
                        '      and (FH.STATUS = ''ATIVO AGRUPADO'') ' +
                        'order by FH.DATA desc';
      QuerX.Params[0].AsInteger := ACodAgrupador;
      QuerX.Open;
      if not QuerX.IsEmpty then
        Result := TFinanceiroCodigo.GetFromDS(QuerX);
    end;
  finally
    QuerX.Free;
  end;
end;

procedure PreencheFinanceiroTipo(AStrings: TStrings);
var
  ATipo: TFinanceiroTipo;
begin
  AStrings.BeginUpdate;
  try
    AStrings.Clear;
    for ATipo := Low(TFinanceiroTipo) to High(TFinanceiroTipo) do
    begin
      if ATipo = fitNenhum then
        Continue;
      AStrings.AddObject(FinanceiroTipoToDescricao(ATipo), TObject(ATipo));
    end;
  finally
    AStrings.EndUpdate;
  end;
end;

procedure PreencheTiposPagto(AStrings: TStrings; AIncluirTodos: Boolean = False);
begin
  PreencheTiposPagtoArray([AStrings], AIncluirTodos);
end;

procedure PreencheTiposPagtoArray(AStrings: array of TStrings; AIncluirTodos: Boolean = False);
var
  QuerX: TFDQuery;
  i: Integer;
begin
  for I := Low(AStrings) to High(AStrings) do
  begin
    AStrings[i].BeginUpdate;
    AStrings[i].Clear;
    if AIncluirTodos then
      AStrings[i].Add('TODOS');
  end;
  QuerX := SQLPlanoContas_Ativo;
  try
    while not QuerX.Eof do
    begin
      for I := Low(AStrings) to High(AStrings) do
        AStrings[i].Add(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    for I := Low(AStrings) to High(AStrings) do
      AStrings[i].EndUpdate;
  end;
end;

procedure ServiceeFinanceiro_VerificaCodUsuarioConta(AFinanceiro: TDataSet);
begin
  {Verifica no dataset do financeiro set o código da conta foi alterado. Em caso positivo, informa no
   campo CODUSUARIO_CONTA o código do usuário que alterou a conta.
   Importante para rastrear quem colocou um lançamento em qual conta, útil para fechamento de caixa}
  if VarToIntDef(AFinanceiro.FieldByName('CODCONTA').NewValue, 0) <> VarToIntDef(AFinanceiro.FieldByName('CODCONTA').OldValue, 0) then
    AFinanceiro.FieldByName('CODUSUARIO_CONTA').AsInteger := CodigoUsuario;
end;

end.
