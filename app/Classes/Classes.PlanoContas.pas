unit Classes.PlanoContas;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Comp.Client, FireDAC.Stan.Param, Generics.Collections;

type
  //Alerta?
  TPlanoContasPeriodicidade = (pcpNaoDefinido, pcpDiario, pcpSemanal, pcpMensal, pcpTrimestral, pcpSemestral, pcpAnual);
  TPlanoContasPeriodicidadeHelper = record helper for TPlanoContasPeriodicidade
  public
    function Codigo: string;
    function Descricao: string;
    class function GetFromCodigo(ACodigo: string): TPlanoContasPeriodicidade; static;
  end;
  //----

  TPlanoContasTipoCusto = (ptcNaoDefinido, ptcFixo, ptcVariavel, ptcFinanceiro);
  TPlanoContasTipoCustoHelper = record helper for TPlanoContasTipoCusto
  public
    function Codigo: string;
    function Descricao: string;
    class function GetFromCodigo(ACodigo: string): TPlanoContasTipoCusto; static;
  end;

  TPlanoContasTipo = (pcTitulo, pcAnalitico);
  TPlanoContasTipoHelper = record helper for TPlanoContasTipo
  public
    function Codigo: string;
    function Descricao: string;
    class function GetFromCodigo(ACodigo: string): TPlanoContasTipo; static;
    class function GetFromPC(ACodPlanoContas: string): TPlanoContasTipo; static;
  end;

  TPessoaPlanoContasTipo = (ppcHabilidade, ppcCentroCusto);
  TPessoaPlanoContasTipoHelper = record helper for TPessoaPlanoContasTipo
  public
    function Codigo: string;
  end;

  TPlanoContasArvore = class
  private
    FLista: TObjectList<TPlanoContasArvore>;
    FDescricao: string;
    FCodigo: string;
    FValor: Currency;
    FTipo: TPlanoContasTipo;
    function GetItems(Index: Integer): TPlanoContasArvore;
  public
    property Codigo: string read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property Tipo: TPlanoContasTipo read FTipo write FTipo;
    property Valor: Currency read FValor write FValor;
    property Items[Index: Integer]: TPlanoContasArvore read GetItems; default;
    function Total: Currency;
    function Count: Integer;

    procedure CarregaValor(ADtInicio, ADtFim: TDateTime);
    procedure CarregarFilhos;

    class function IniciarCom(ACodPlanoContas: string): TPlanoContasArvore;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  UnitFuncoes;

{ TPessoaPlanoContasTipoHelper }

function TPessoaPlanoContasTipoHelper.Codigo: string;
begin
  case Self of
     ppcHabilidade: Result := 'HABILIDADE';
    ppcCentroCusto: Result := 'CENTRO_CUSTO';
  end;
end;

function TPlanoContasPeriodicidadeHelper.Codigo: string;
begin
  case Self of
    pcpNaoDefinido: Result := '';
         pcpDiario: Result := 'DIARIO';
        pcpSemanal: Result := 'SEMANAL';
         pcpMensal: Result := 'MENSAL';
     pcpTrimestral: Result := 'TRIMESTRAL';
      pcpSemestral: Result := 'SEMESTRAL';
          pcpAnual: Result := 'ANUAL';
  end;
end;

function TPlanoContasPeriodicidadeHelper.Descricao: string;
begin
  case Self of
    pcpNaoDefinido: Result := '<Não Definido>';
         pcpDiario: Result := 'Diário';
        pcpSemanal: Result := 'Semanal';
         pcpMensal: Result := 'Mensal';
     pcpTrimestral: Result := 'Trimestral';
      pcpSemestral: Result := 'Semestral';
          pcpAnual: Result := 'Anual';
  end;
end;

class function TPlanoContasPeriodicidadeHelper.GetFromCodigo(ACodigo: string): TPlanoContasPeriodicidade;
begin
  for Result := Low(TPlanoContasPeriodicidade) to High(TPlanoContasPeriodicidade) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := pcpNaoDefinido;
end;

{ TPlanoContasTipoCustoHelper }

function TPlanoContasTipoCustoHelper.Descricao: string;
begin
  case Self of
    ptcNaoDefinido: Result := '<Não Definido>';
           ptcFixo: Result := 'Fixo';
       ptcVariavel: Result := 'Variável';
     ptcFinanceiro: Result := 'Financeiro';
  end;
end;

function TPlanoContasTipoCustoHelper.Codigo: string;
begin
  case Self of
    ptcNaoDefinido: Result := '';
           ptcFixo: Result := 'FIXO';
       ptcVariavel: Result := 'VARIÁVEL';
     ptcFinanceiro: Result := 'FINANCEIRO';
  end;
end;

class function TPlanoContasTipoCustoHelper.GetFromCodigo(ACodigo: string): TPlanoContasTipoCusto;
begin
  for Result := Low(TPlanoContasTipoCusto) to High(TPlanoContasTipoCusto) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := ptcNaoDefinido;
end;

{ TPlanoContasTipoHelper }

function TPlanoContasTipoHelper.Codigo: string;
begin
  case Self of
       pcTitulo: Result := 'T';
    pcAnalitico: Result := 'A';
  end;
end;

function TPlanoContasTipoHelper.Descricao: string;
begin
  case Self of
       pcTitulo: Result := 'Título';
    pcAnalitico: Result := 'Analítico';
  end;
end;

class function TPlanoContasTipoHelper.GetFromCodigo(ACodigo: string): TPlanoContasTipo;
begin
  for Result := Low(TPlanoContasTipo) to High(TPlanoContasTipo) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := pcAnalitico;
end;

class function TPlanoContasTipoHelper.GetFromPC(ACodPlanoContas: string): TPlanoContasTipo;
var
  QuerX : TFDQuery;
begin
  if ACodPlanoContas = '' then
  begin
    Result := pcAnalitico;
    Exit;
  end;

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select TIPO ' +
                      'from PLANOCONTAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodPlanoContas;
    QuerX.Open;
    Result := TPlanoContasTipo.GetFromCodigo(QuerX.Fields[0].AsString);
  finally
    QuerX.Free;
  end;
end;

{ TPlanoContasValores }

procedure TPlanoContasArvore.CarregarFilhos;
var
  QuerX: TFDQuery;
  APCValor: TPlanoContasArvore;
begin
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO, TIPO ' +
                      'from PLANOCONTAS ' +
                      'where (CODIGO like :Cod1) ' +
                      '      and not (CODIGO like :Cod2)';
    QuerX.ParamByName('Cod1').AsString := Self.Codigo + '.%';
    QuerX.ParamByName('Cod2').AsString := Self.Codigo + '.%.%';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      APCValor := TPlanoContasArvore.Create;
      FLista.Add(APCValor);
      APCValor.Codigo    := QuerX.FieldByName('CODIGO').AsString;
      APCValor.Descricao := QuerX.FieldByName('DESCRICAO').AsString;
      APCValor.Tipo      := TPlanoContasTipo.GetFromCodigo(QuerX.FieldByName('TIPO').AsString);
      APCValor.CarregarFilhos;

      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TPlanoContasArvore.CarregaValor(ADtInicio, ADtFim: TDateTime);
var
  QuerX: TFDQuery;
  I: Integer;
begin
  QuerX := GeraFDQueryFast;
  try
    //Busca de total baseado no Resultado do Exercício.
    //Ampliar para buscar por Financeiro também
    {QuerX.SQL.Text := 'select sum(REI.SALDO) ' +
                      'from RESULTADO_EXERCICIO RE ' +
                      'left join RESULTADO_EXERCICIO_ITEM REI on (RE.CODIGO = REI.CODRESULTADO_EXERCICIO) ' +
                      'where (RE.DT_INICIO >= :DtInicio) ' +
                      '      and (RE.DT_FIM <= :DtFim) ' +
                      '      and (REI.CODPLANOCONTAS = :CodPC)';
    QuerX.ParamByName('DtInicio').AsDateTime := ADtInicio;
    QuerX.ParamByName('DtFim').AsDateTime    := ADtFim;
    QuerX.ParamByName('CodPC').AsString      := Self.Codigo;
    QuerX.Open; }

    QuerX.SQL.Text := 'select sum(VALOR) ' +
                      'from FINANCEIRO ' +
                      'where (DATAPAGTO between :DtInicio and :DtFim) ' +
                      '      and (CODPLANOCONTAS = :CodPC) ' +
                      '      and ((STATUS like ''ATIVO%'') or (STATUS = ''INATIVO DRE'')) ' +
                      '      and not (STATUS like ''ATIVO*%'')';
    QuerX.ParamByName('DtInicio').AsDateTime := ADtInicio;
    QuerX.ParamByName('DtFim').AsDateTime    := ADtFim;
    QuerX.ParamByName('CodPC').AsString      := Self.Codigo;
    QuerX.Open;

    FValor := QuerX.Fields[0].AsCurrency;
    for I := 0 to FLista.Count - 1 do
      FLista[i].CarregaValor(ADtInicio, ADtFim);
  finally
    QuerX.Free;
  end;
end;

function TPlanoContasArvore.Count: Integer;
begin
  Result := FLista.Count;
end;

constructor TPlanoContasArvore.Create;
begin
  FLista := TObjectList<TPlanoContasArvore>.Create;
end;

destructor TPlanoContasArvore.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TPlanoContasArvore.GetItems(Index: Integer): TPlanoContasArvore;
begin
  Result := FLista[Index];
end;

class function TPlanoContasArvore.IniciarCom(ACodPlanoContas: string): TPlanoContasArvore;
var
  QuerX: TFDQuery;
begin
  Result := TPlanoContasArvore.Create;
  QuerX := GeraFDQueryFast;
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO, TIPO ' +
                      'from PLANOCONTAS ' +
                      'where (CODIGO = ?)';
    QuerX.Params[0].AsString := ACodPlanoContas;
    QuerX.Open;
    Result.Codigo    := QuerX.FieldByName('CODIGO').AsString;
    Result.Descricao := QuerX.FieldByName('DESCRICAO').AsString;
    Result.Tipo      := TPlanoContasTipo.GetFromCodigo(QuerX.FieldByName('TIPO').AsString);
    Result.CarregarFilhos;
  finally
    QuerX.Free;
  end;
end;

function TPlanoContasArvore.Total: Currency;
var
  I: Integer;
begin
  Result := FValor;
  for I := 0 to FLista.Count - 1 do
    Result := Result + FLista[i].Total;
end;

end.
