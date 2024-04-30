unit Rotinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB, IBX.IBQuery, IBX.IBCustomDataSet,
  IBX.IBDatabase, StdCtrls, ExtCtrls, Generics.Collections, DateUtils, UnitFuncoes, cxShellListView, IdHTTP, Zip,
  FireDAC.Comp.Client, Vcl.DBCtrls, pcnConversaoNFe, pcnConversao, ACBrNFSeXConversao;

type
  TCaminhoBanco = record
    Servidor: string;
    Banco: string;
  end;

  TcxInnerShellListViewAccess = class(TcxInnerShellListView);

  TSetorCusto = class;

  THoraTrabalho = class
    DtInicio: TDateTime;
    DtFim: TDateTime;
    CodFuncionario: string;
    CodUsuario: string;
    CodSetor: Integer;
  end;

  TTipoFuncionarioCusto = (fcPessoa, fcUsuario);

  TFuncionarioCusto = class
  private
    FCodFuncionario: string;
    FNome: string;
    FCusto: Double;
    FSalario: Double;
    FQuantTempo: Integer;
    FCodUsuario: string;
  public
    property CodFuncionario: string read FCodFuncionario write FCodFuncionario;
    property CodUsuario: string read FCodUsuario write FCodUsuario;
    property Nome: string read FNome write FNome;
    property Salario: Double read FSalario write FSalario;
    property Custo: Double read FCusto write FCusto;
    property QuantTempo: Integer read FQuantTempo write FQuantTempo;

    function TempoToString: string;
    constructor Create;
  end;

  TListaFuncionarioCusto = class
  private
    FList : TList<TFuncionarioCusto>;
    function GetFuncionarioCusto(Index: Integer): TFuncionarioCusto;
  public
    property Funcionarios[Index: Integer]: TFuncionarioCusto read GetFuncionarioCusto; default;
    function Count: Integer;
    function TotalTempo: Integer;
    function TotalCusto: Double;
    function GetFuncionarioByCodigo(ACodFuncionario: String; ATipoFuncionario: TTipoFuncionarioCusto): TFuncionarioCusto;
    procedure Add(AFuncionarioCusto: TFuncionarioCusto);
    constructor Create;
    destructor Destroy; override;
  end;

  TSetorCusto = class
  private
    FCusto: Double;
    FDescricao: string;
    FCodSetor: Integer;
    FListaFuncionarios: TListaFuncionarioCusto;
  public
    property CodSetor: Integer read FCodSetor write FCodSetor;
    property Descricao: string read FDescricao write FDescricao;
    property Custo: Double read FCusto write FCusto;
    function TotalTempo: Integer;
    property Funcionarios: TListaFuncionarioCusto read FListaFuncionarios;
    constructor Create;
    destructor Destroy; override;
  end;

  TListaSetorCusto = class
  private
    FList: TObjectList<TSetorCusto>;
    function GetSetorCusto(Index: Integer): TSetorCusto;
  public
    property Setores[Index: Integer]: TSetorCusto read GetSetorCusto; default;
    function Count: Integer;
    function GetSetorByCodigo(ACodSetor: Integer): TSetorCusto;
    procedure Add(ASetorCusto: TSetorCusto);
    constructor Create;
    destructor Destroy; override;
  end;

  TCalculoCusto = class
  private
    FListaFuncionarios: TListaFuncionarioCusto;
    FListaSetores: TListaSetorCusto;
    FListaHoras: TList<THoraTrabalho>;
    FTipoPreenchimento: TTipoFuncionarioCusto;
    function GetSQL: string;
  public
    property Funcionarios: TListaFuncionarioCusto read FListaFuncionarios;
    property Setores: TListaSetorCusto read FListaSetores;
    property TipoPreenchimento: TTipoFuncionarioCusto read FTipoPreenchimento write FTipoPreenchimento;
    function AddHora: THoraTrabalho;
    function TotalHoras: string;
    function TotalCusto: Double;
    procedure Calcular;
    constructor Create;
    destructor Destroy; override;
  end;

//  TTipoRpsHelper = record helper for TnfseTipoRPS
//  public
//    function ToDescricao : string;
//  end;

  TFinanceiroAgrupamento = class
  public
    class function ExisteParcelaAgrupada(ACodVenda: string): Boolean;
  end;

  TProdutoSQLEstoque = class
  strict private
    class function InternalGetSQL(const AIsSum, AMostrarFinalizados, AMostrarEmAberto: Boolean; const ACodProduto: string): string;
  public
    class function GetEstoqueReservado(const ATransa: TFDCustomTransaction; const ACodProduto: string): Double;
  end;

  function GetCaminhoBanco: TCaminhoBanco;
  procedure ProcuraPedido(const ACodigoPedido: string);
  procedure ProcuraNF_Entrada(const ACodNFEntrada: string);

  function SenhaStatus: Boolean;
  function VerificaSePodeVender(var ACor: TColor; ACodPessoa: string; ADataSetFinanceiro: TFDQuery;
                                ASilent: Boolean): Boolean;
  function VerificaSeBloqueioCliente(var ACor: TColor; ACodPessoa: string): Boolean;
  function VerificaSePodeFecharCaixa(Data: TDate): Boolean;
  procedure CarregaSistema;
  function GeraQueryCRM: TFDQuery;
  procedure GravaBugReport(ABugReport, AMensagem: string);

implementation

uses
  StrUtils, Senha, NF_Entrada, ConNF_Entrada, Principal, Registry, ACBrUtil, Aguarde, Math, wrFuncoes,
  Classes.WR, wrForms, Base, Tag.APP, Tag.Form;

procedure GravaBugReport(ABugReport, AMensagem : string);
var
  QuerX : TIBQuery;
  ATransa : TIBTransaction;
begin
  ATransa := GeraTransacao;
  QuerX := GeraQuery(ATransa);
  try
    QuerX.Close;
    QuerX.SQL.Text := 'insert into ARQUIVOS (DESCRICAO, TIPO, FORM, ARQUIVO, CODUSUARIO, DT_ALTERACAO) ' +
                      '              values (:DESCRICAO, :TIPO, :FORM, :ARQUIVO, :CODUSUARIO, :DT_ALTERACAO)';
    QuerX.ParamByName('DESCRICAO').AsString      := TGUID.NewGuid.ToString;
    QuerX.ParamByName('TIPO').AsString           := 'CALLSTACK';
    QuerX.ParamByName('FORM').AsString           := AMensagem;
    QuerX.ParamByName('CODUSUARIO').AsInteger    := CodigoUsuario;
    QuerX.ParamByName('ARQUIVO').AsString        := ABugReport;
    QuerX.ParamByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
    QuerX.ExecSQL;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

function GeraQueryCRM: TFDQuery;
begin
  Result := GeraFDQuery;
end;

procedure CarregaSistema;
var
  Reg : TRegistry;
  ATemp : String;
begin
  with Sistema do
  begin
    Versao  := GetBuildInfo;
    Ano     := Copy(Versao, 1, 4);
    Nome    := ApplicationTitle + ' ' + Ano;
    RegPath := 'Software\Rocha\' + ApplicationTitle + '\';
  end;
  try
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('Software\Rocha\' + ApplicationTitle, True) then
        Reg.WriteString('CaminhoExe', Application.ExeName);
      Reg.CloseKey;

      if Reg.OpenKey('Software\Rocha\' + ApplicationTitle + '\Empresa', True) then
      begin
        ATemp := Reg.ReadString('Modulo');
        if ATemp = 'Comunicação Visual' then
          Sistema.Nome := 'Office Impresso ' + Sistema.Ano;
        if ATemp = 'Laboratório' then
          Sistema.Nome := 'Office Lab ' + Sistema.Ano;
        if ATemp = 'Clínica' then
          Sistema.Nome := 'Office Clínica ' + Sistema.Ano;
      end;
    finally
      Reg.Free;
    end;
  except end;
  FrmPrincipal.Caption := Sistema.Nome + ' - Versão: ' + Sistema.Versao;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    try
      Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True);
//      SolSenha     := Reg.ReadBoolWR('SolSenha');
      Agenda_Ativa  := Reg.ReadBoolWR('Agenda_Ativa');
      Servidor_Fotos:= Reg.ReadBoolWR('Servidor');
    except end;
  finally
    Reg.Free;
  end;
  Application.OnHint := FrmPrincipal.ShowHint;
end;

  (*
procedure TAtualizaAliquotasNCM.AtualizaAliquotasNCM;
 (* function padNCM(ANCM: string): string;
  begin
    Result := padL(ANCM, IfThen(Length(ANCM) <= 8, 8, Length(ANCM)), '0');
  end;
var
  i : Integer;
  QuerX : TIBQuery;
  ATransa : TIBTransaction;
begin
  inherited;
  ATransa := GeraTransacao;
  QuerX   := GeraQuery(ATransa);
  try
    //  ACBrIBPTax1.Arquivo.SaveToFile(GetDirSistema + 'IBPTax.txt');

    //Transfere o conteúdo da lista para o banco de dados
    QuerX.SQL.Text := 'insert into NF_NCM (CODIGO, DESCRICAO, TIPO, EX_TIPI, ALIQ_NACIONAL, ALIQ_IMPORTACAO) ' +
                      'values (:CODIGO, :DESCRICAO, :TIPO, :EX_TIPI, :ALIQ_NACIONAL, :ALIQ_IMPORTACAO)';
    for I := 0 to TACBrIBPTax.Itens.Count - 1 do
    begin
      QuerX.ParamByName('CODIGO').AsString         := padNCM(ACBrIBPTax1.Itens[i].NCM);
      QuerX.ParamByName('DESCRICAO').AsString      := ACBrIBPTax1.Itens[i].Descricao;
      QuerX.ParamByName('EX_TIPI').AsInteger       := StrToIntDef(ACBrIBPTax1.Itens[i].Excecao, 0);
      QuerX.ParamByName('ALIQ_NACIONAL').AsFloat   := ACBrIBPTax1.Itens[i].AliqNacional;
      QuerX.ParamByName('ALIQ_IMPORTACAO').AsFloat := ACBrIBPTax1.Itens[i].AliqImportado;
      case ACBrIBPTax1.Itens[i].Tabela of
          tabNCM : QuerX.ParamByName('TIPO').AsString := 'PRODUTO';
          tabNBS, tabLC116 : QuerX.ParamByName('TIPO').AsString := 'SERVIÇO';
      end;
      try
        QuerX.ExecSQL;
      except end;
    end;

    QuerX.SQL.Text := 'update NF_NCM set ALIQ_NACIONAL = :AliqNacional, ALIQ_IMPORTACAO = :AliqImportacao ' +
                      'where (CODIGO = :Codigo) ' +
                      '      and (TIPO = :Tipo) ' +
                      '      and (EX_TIPI = :Ex)';
    for I := 0 to ACBrIBPTax1.Itens.Count - 1 do
    begin
      QuerX.ParamByName('Codigo').AsString        := padNCM(ACBrIBPTax1.Itens[i].NCM);
      QuerX.ParamByName('Ex').AsInteger           := StrToIntDef(ACBrIBPTax1.Itens[i].Excecao, 0);
      QuerX.ParamByName('AliqNacional').AsFloat   := ACBrIBPTax1.Itens[i].AliqNacional;
      QuerX.ParamByName('AliqImportacao').AsFloat := ACBrIBPTax1.Itens[i].AliqImportado;
      case ACBrIBPTax1.Itens[i].Tabela of
          tabNCM : QuerX.ParamByName('Tipo').AsString := 'PRODUTO';
          tabNBS, tabLC116 : QuerX.ParamByName('Tipo').AsString := 'SERVIÇO';
      end;
      QuerX.ExecSQL;
    end;
    if ATransa.InTransaction then
      ATransa.Commit;
  finally
    QuerX.Free;
    if ATransa.InTransaction then
      ATransa.Rollback;
    ATransa.Free;
  end;
  ShowMessageWR('Arquivo importado com sucesso.');
end;
  *)

function SenhaStatus: Boolean;
begin
  Result := True;
end;


function VerificaSeBloqueioCliente(var ACor: TColor; ACodPessoa: string): Boolean;
const
  COR_LIMITE_DIAS_ATRAZO = $0080BFFF; //Laranja Claro - Débitos vencidos a mais tempo do que o permitido. Venda não autorizada.
  COR_CLI_DEBITO = $009DFFFF;         //Amarelo Claro - Débitos em aberto, venda autorizada com conciência de que há débitos
  COR_DEBITOS_ATRAZADOS = $006666FF; //Vermelho Claro - Débitos vencidos, venda autorizada com conciência de que há parcelas vencidas
  COR_CLI_BLOQUEADO = $00C4C4C4;              //Cinza - Cliente bloqueado pelo cadastro de pessoas
  COR_SEM_CREDITO = $00FF9191;           //Azul Claro - Limite de crédito atingido
var
  QuerX : TFDQuery;
  ABloqueado: Boolean;
  AMotivoBloqueio : String;
begin
  Result := True;
  QuerX := GeraFDQuery;
  try
    //Traz as informações do cliente e verifica se está bloqueado
    QuerX.SQL.Text := 'select BLOQUEADO, MOTIVO, LIMITECREDITO from PESSOAS where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsString := ACodPessoa;
    QuerX.Open;
    ABloqueado      := (QuerX.FieldByName('BLOQUEADO').AsString = 'S');
    AMotivoBloqueio := QuerX.FieldByName('MOTIVO').AsString;
    if ABloqueado then
    begin
      ACor := COR_CLI_BLOQUEADO;
      Result := False;
      ShowMessageWR('Este Cliente está bloqueado para vendas.' + sLineBreak +
                      'Motivo: ' + AMotivoBloqueio, MB_ICONWARNING);
      Exit;
    end;
  finally
    QuerX.Free;
  end;
end;



function VerificaSePodeVender(var ACor: TColor; ACodPessoa: string; ADataSetFinanceiro: TFDQuery; ASilent: Boolean): Boolean;
const
  COR_LIMITE_DIAS_ATRAZO = $0080BFFF; //Laranja Claro - Débitos vencidos a mais tempo do que o permitido. Venda não autorizada.
  COR_CLI_DEBITO = $009DFFFF;         //Amarelo Claro - Débitos em aberto, venda autorizada com conciência de que há débitos
  COR_DEBITOS_ATRAZADOS = $006666FF; //Vermelho Claro - Débitos vencidos, venda autorizada com conciência de que há parcelas vencidas
  COR_CLI_BLOQUEADO = $00C4C4C4;              //Cinza - Cliente bloqueado pelo cadastro de pessoas
  COR_SEM_CREDITO = $00FF9191;           //Azul Claro - Limite de crédito atingido
var
  QuerX : TFDQuery;
  ASomaParcelas, ADebito, ALimiteCredito : Real;
  ABloqueado, AVendaAVista : Boolean;
  AMotivoBloqueio : String;
  ADataAtual : TDateTime;
begin
  Result := True;
  ADataAtual := DataHoraSys;
  QuerX := GeraFDQuery;
  try
    //Traz as informações do cliente e verifica se está bloqueado
    QuerX.SQL.Text := 'select BLOQUEADO, MOTIVO, LIMITECREDITO from PESSOAS where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsString := ACodPessoa;
    QuerX.Open;
    ABloqueado      := (QuerX.FieldByName('BLOQUEADO').AsString = 'S');
    ALimiteCredito  := StrToFloatDef(QuerX.FieldByName('LIMITECREDITO').AsString, 0);
    AMotivoBloqueio := QuerX.FieldByName('MOTIVO').AsString;
    if ABloqueado then
    begin
      ACor := COR_CLI_BLOQUEADO;
      Result := False;
      if not ASilent then
        ShowMessageWR('Este Cliente está bloqueado para vendas.' + sLineBreak +
                      'Motivo: ' + AMotivoBloqueio, MB_ICONWARNING);
      Exit;
    end;
    QuerX.Close;
    ASomaParcelas := 0;
    AVendaAVista  := False;
      //Faz a soma das parcelas a receber da venda atual.
    if Assigned(ADataSetFinanceiro) then
    begin
      AVendaAVista := not ADataSetFinanceiro.IsEmpty;
      ADataSetFinanceiro.DisableControls;
      try
        ADataSetFinanceiro.First;
        while not ADataSetFinanceiro.Eof do
        begin
          if (ADataSetFinanceiro.FieldByName('TIPO').AsString = 'A RECEBER') then
            ASomaParcelas := ASomaParcelas + ADataSetFinanceiro.FieldByName('VALOR').AsFloat;
          AVendaAVista := AVendaAVista and (ADataSetFinanceiro.FieldByName('TIPO').AsString = 'RECEBIDA');
          ADataSetFinanceiro.Next;
        end;
      finally
        ADataSetFinanceiro.EnableControls;
      end;
    end;

    //Contabiliza o débito
    QuerX.SQL.Text := 'select sum(VALOR) as Total ' +
                      'from FINANCEIRO ' +
                      'where (PESSOA_RESPONSAVEL_CODIGO = :Cod) ' +
                      '      and (TIPO = ''A RECEBER'') ' +
                      '      and (STATUS like ''ATIVO%'')';
    QuerX.ParamByName('Cod').AsString := ACodPessoa;
    QuerX.Open;
    ADebito := StrToFloatDef(QuerX.FieldByName('Total').AsString, 0);
    if not QuerX.IsEmpty then //Débitos em aberto
      ACor := COR_CLI_DEBITO;

    QuerX.Close;
    if (ALimiteCredito > 0) and not AVendaAVista and ((ASomaParcelas + ADebito) > ALimiteCredito) then
    begin
      //Limite de crédito atingido
      Result := False;
      ACor := COR_SEM_CREDITO;
      if not ASilent then
        ShowMessageWR('Esta venda não pode ser concluída: o limite de crédito para este cliente foi atingido.', MB_ICONWARNING);
      Exit;
    end;

    {QuerX.SQL.Text := 'SELECT COUNT(CODIGO) AS QUANT, SUM(VALOR) AS SOMA FROM FINANCEIRO WHERE (CODRESPONSAVEL = :Cod) AND (TIPO_RESPONSAVEL= '''+'CLI'+''')and(TIPO='''+'A RECEBER'+''')AND(STATUS LIKE '''+'ATIVO%'+''')';
    QuerX.ParamByName('Cod').AsString := CodCliente;
    QuerX.Open;
    if QuerX.FieldByName('Quant').AsFloat > 0 then
    begin
  //    ShowMessage('Cliente Com débitos em Aberto'#13+
  //                'Quantidades de Débitos : '+Quer.FieldByName('Quant').AsString+#13+
  //                'Valor em Aberto : '+FormatFloat('##,##0.00',Quer.FieldByName('SOMA').AsFloat)+#13+
  //                'Valor do Limite no Cadastro : '+FormatFloat('##,##0.00',Limite)+#13+
  //                'Verificar se pode ser vendido para esse cliente'#13+
  //                'Caso possa ser vendido favor aumentar o limite de credito');
      Cor := clYellow;
    end;  }

    //Verifica as parcelas vencidas
    QuerX.Close;
    QuerX.SQL.Text := 'select sum(VALOR) as SOMA_VALOR, min(VENCTO) as VENCTO ' +
                      'from FINANCEIRO ' +
                      'where (PESSOA_RESPONSAVEL_CODIGO = :Cod) ' +
                      '      and (TIPO = ''A RECEBER'') ' +
                      '      and (STATUS like ''ATIVO%'') ' +
                      '      and (coalesce(VENCTO, current_timestamp) <= current_timestamp)';
    QuerX.ParamByName('Cod').AsString := ACodPessoa;
    QuerX.Open;
    if QuerX.FieldByName('SOMA_VALOR').AsFloat > 0 then
      ACor := COR_DEBITOS_ATRAZADOS;

    if (TConfig.ReadInteger('VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS') > 0) and
       (QuerX.FieldByName('VENCTO').AsDateTime > 0) and
       (ASomaParcelas > 0) and
       (DaysBetween(QuerX.FieldByName('VENCTO').AsDateTime, ADataAtual) > TConfig.ReadInteger('VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS')) then
    begin
      Result := False;
      ACor := COR_LIMITE_DIAS_ATRAZO;
      if not ASilent then
        ShowMessageWR('Esta venda não pode ser concluída: há parcelas vencidas a mais de ' + IntToStr(TConfig.ReadInteger('VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS')) + ' dias.', MB_ICONWARNING);
      Exit;
    end;
  finally
    QuerX.Free;
  end;
end;

Procedure ProcuraNF_Entrada(const ACodNFEntrada: string);
begin
  CadastroModalChave(TFrmNF_Entrada, ACodNFEntrada);
end;

procedure ProcuraPedido(const ACodigoPedido: string);
var
  ATiposNegados: TStringList;
begin
  if not FrmPrincipal.Action_Venda.Enabled or not AWR_APP[TagAPP_Venda].Ativo then
  begin
    ShowMessageWR('Sem permissão para ver pedidos/vendas!', MB_ICONWARNING);
    Exit;
  end;

  if (not FrmPrincipal.UCControls1.GetComponentRight('ConsuVenda', 'LbUCLiberarVerTodasVendas', CodigoUsuario).Enabled) and
     (Procura('CODFUNCIONARIO', 'USUARIO', CodigoUsuario.ToString) <> Procura('PESSOA_FUNCIONARIO_CODIGO', 'VENDA', ACodigoPedido)) then
  begin
    ShowMessageWR('Sem permissão para ver pedidos/vendas de outro usuário!', MB_ICONWARNING);
    Exit;
  end;

  ATiposNegados := TStringList.Create;
  try
    GetTiposNegados('VENDA_TIPO_NEGAR_USUARIO', ATiposNegados);
    if ATiposNegados.IndexOf(Procura('VENDA_TIPO', 'VENDA', ACodigoPedido)) > -1 then
    begin
      ShowMessageWR('Você não possui permissão de visualizar vendas deste Tipo de Venda.', MB_ICONWARNING);
      Exit;
    end;
  finally
    ATiposNegados.Free;
  end;

//  CadastroModalChave(TFrmVenda, ACodigoPedido);
  CadastroTag_NormalChave(nil, Tag_Venda, ACodigoPedido);
  if Codigo = '' then
    Codigo := '0';
end;

function GetCaminhoBanco: TCaminhoBanco;
var
  ACaminho: TArray<string>;
  APath: string;
begin
  APath := CaminhodoBanco;
  ACaminho := APath.Split([':']);
  if High(ACaminho) = 2 then
  begin
    Result.Servidor := ACaminho[0];
    Result.Banco    := ACaminho[1] + ':' + ACaminho[2]
  end
  else if High(ACaminho) = 1 then
  begin
    if ACaminho[0].Length > 1 then
    begin
      Result.Servidor := ACaminho[0];
      Result.Banco    := ACaminho[1];
    end else
    begin
      Result.Servidor := 'localhost';
      Result.Banco    := APath;
    end;
  end else
  begin
    Result.Servidor := 'localhost';
    Result.Banco    := APath;
  end;
end;

function VerificaSePodeFecharCaixa(Data :TDate):Boolean;
begin
  Result := True;
end;

{ TCalculaHorasTrabalhadas }

function TCalculoCusto.AddHora: THoraTrabalho;
begin
  Result := THoraTrabalho.Create;
  FListaHoras.Add(Result);
end;

procedure TCalculoCusto.Calcular;
var
  I, ATempoHora : Integer;
  AFuncionario : TFuncionarioCusto;
  ASetor : TSetorCusto;
  QuerX : TIBQuery;
  ACustoHora : Double;
  ADataAtual : TDateTime;
begin
  ADataAtual := DataHoraSys;
  QuerX := GeraQuery;
  try
    //Lista todas as horas que foram adicionadas no objeto
    for I := 0 to FListaHoras.Count - 1 do
    begin
      //Procura pelo funcionario da hora atual. Se não existir, cria.
      AFuncionario := Funcionarios.GetFuncionarioByCodigo(FListaHoras[i].CodFuncionario, Self.TipoPreenchimento);
      if AFuncionario = nil then
      begin
        QuerX.Close;
        QuerX.SQL.Text := Self.GetSQL;
        case Self.TipoPreenchimento of
           fcPessoa: QuerX.Params[0].AsString := FListaHoras[i].CodFuncionario;
          fcUsuario: QuerX.Params[0].AsString := FListaHoras[i].CodUsuario;
        end;
        QuerX.Open;

        AFuncionario := TFuncionarioCusto.Create;
        AFuncionario.CodFuncionario := QuerX.FieldByName('CODIGO').AsString;
        AFuncionario.Nome           := QuerX.FieldByName('RAZAOSOCIAL').AsString;
        AFuncionario.Salario        := QuerX.FieldByName('SALARIO').AsFloat;
        Funcionarios.Add(AFuncionario);
      end;

      //Procura pelo setor da hora atual. Se não existir, cria.
      ASetor := Setores.GetSetorByCodigo(FListaHoras[i].CodSetor);
      if ASetor = nil then
      begin
        ASetor := TSetorCusto.Create;
        ASetor.CodSetor  := FListaHoras[i].CodSetor;
        ASetor.Descricao := Procura('DESCRICAO', 'SETOR', IntToStr(ASetor.CodSetor));
        Setores.Add(ASetor);
      end;

      //Calcula o custo da hora e adiciona no funcionário e setor responsável
      if FListaHoras[i].DtInicio > 0 then
      begin
        if not (FListaHoras[i].DtFim > 0) then
          ATempoHora := SecondsBetween(FListaHoras[i].DtInicio, ADataAtual)
        else
          ATempoHora := SecondsBetween(FListaHoras[i].DtInicio, FListaHoras[i].DtFim); //Intervalo de tempo da hora
        ACustoHora := AFuncionario.Salario / 633600 * ATempoHora; //633600 = 176(horas em um mes) * 3600

        //Adiciona os tempos e custos de funcionário e setor
        AFuncionario.QuantTempo := AFuncionario.QuantTempo + ATempoHora;
        AFuncionario.Custo      := AFuncionario.Custo + ACustoHora;
        ASetor.Custo            := ASetor.Custo + ACustoHora;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

constructor TCalculoCusto.Create;
begin
  FListaFuncionarios := TListaFuncionarioCusto.Create;
  FListaSetores      := TListaSetorCusto.Create;
  FListaHoras        := TList<THoraTrabalho>.Create;
  FTipoPreenchimento := fcPessoa;
end;

destructor TCalculoCusto.Destroy;
begin
  while FListaHoras.Count > 0 do
  begin
    FListaHoras[FListaHoras.Count - 1].Free;
    FListaHoras.Delete(FListaHoras.Count - 1);
  end;
  FListaHoras.Free;
  FListaFuncionarios.Free;
  FListaSetores.Free;
  inherited;
end;

procedure TListaFuncionarioCusto.Add(AFuncionarioCusto: TFuncionarioCusto);
begin
  FList.Add(AFuncionarioCusto);
end;

function TListaFuncionarioCusto.Count: Integer;
begin
  Result := FList.Count;
end;

constructor TListaFuncionarioCusto.Create;
begin
  FList := TList<TFuncionarioCusto>.Create;
end;

destructor TListaFuncionarioCusto.Destroy;
begin
  while FList.Count > 0 do
  begin
    FList[FList.Count - 1].Free;
    FList.Delete(FList.Count - 1);
  end;
  FList.Free;
  inherited;
end;

function TListaFuncionarioCusto.GetFuncionarioByCodigo(ACodFuncionario: String; ATipoFuncionario: TTipoFuncionarioCusto): TFuncionarioCusto;
var
  I : Integer;
begin
  Result := nil;
  for I := 0 to FList.Count - 1 do
  begin
    if ((ATipoFuncionario = fcPessoa) and (FList[i].CodFuncionario = ACodFuncionario)) or
       ((ATipoFuncionario = fcUsuario) and (FList[i].CodUsuario = ACodFuncionario)) then
    begin
      Result := FList[i];
      Exit;
    end;
  end;
end;

function TListaFuncionarioCusto.GetFuncionarioCusto(Index: Integer): TFuncionarioCusto;
begin
  Result := nil;
  if (Index >= 0) and (Index < FList.Count) then
    Result := FList[Index];
end;

function TCalculoCusto.TotalCusto: Double;
var
  I : Integer;
begin
  Result := 0;
  for I := 0 to Funcionarios.Count - 1 do
    Result := Result + Funcionarios[i].Custo;
end;

function TCalculoCusto.TotalHoras: String;
begin
  Result := SegundosToHoras(Funcionarios.TotalTempo);
end;

constructor TFuncionarioCusto.Create;
begin
  CodFuncionario := '';
  FQuantTempo    := 0;
end;

function TCalculoCusto.GetSQL: string;
begin
  case FTipoPreenchimento of
     fcPessoa: Result := 'select CODIGO, RAZAOSOCIAL, SALARIO from PESSOAS where (CODIGO = :Cod)';
    fcUsuario: Result := 'select P.CODIGO, P.RAZAOSOCIAL, P.SALARIO ' +
                         'from USUARIO U ' +
                         'left join PESSOAS P on (P.CODIGO = U.CODFUNCIONARIO) ' +
                         'where (U.CODIGO = :COD)';
  end;
end;

function TFuncionarioCusto.TempoToString: String;
begin
  Result := SegundosToHoras(QuantTempo);
end;

{ TSetorCusto }

constructor TSetorCusto.Create;
begin
  FCusto    := 0;
  FCodSetor := 0;
  FListaFuncionarios := TListaFuncionarioCusto.Create;
end;

function TListaFuncionarioCusto.TotalCusto: Double;
var
  I : Integer;
begin
  Result := 0;
  for I := 0 to FList.Count - 1 do
    Result := Result + FList[i].Custo;
end;

function TListaFuncionarioCusto.TotalTempo: Integer;
var
  I : Integer;
begin
  Result := 0;
  for I := 0 to FList.Count - 1 do
    Result := Result + FList[i].QuantTempo;
end;

destructor TSetorCusto.Destroy;
begin
  FListaFuncionarios.Free;
  inherited;
end;

function TSetorCusto.TotalTempo: Integer;
var
  I : Integer;
begin
  Result := 0;
  for I := 0 to FListaFuncionarios.Count - 1 do
    Result := Result + FListaFuncionarios[i].QuantTempo;
end;

{ TListaSetorCusto }

procedure TListaSetorCusto.Add(ASetorCusto: TSetorCusto);
begin
  FList.Add(ASetorCusto);
end;

function TListaSetorCusto.Count: Integer;
begin
  Result := FList.Count;
end;

constructor TListaSetorCusto.Create;
begin
  FList := TObjectList<TSetorCusto>.Create;
end;

destructor TListaSetorCusto.Destroy;
begin
  FList.Free;
  inherited;
end;

function TListaSetorCusto.GetSetorByCodigo(ACodSetor: Integer): TSetorCusto;
var
  I : Integer;
begin
  Result := nil;
  for I := 0 to FList.Count - 1 do
  begin
    if FList[i].CodSetor = ACodSetor then
    begin
      Result := FList[i];
      Exit;
    end;
  end;
end;

function TListaSetorCusto.GetSetorCusto(Index: Integer): TSetorCusto;
begin
  Result := nil;
  if (Index >= 0) and (Index < FList.Count) then
    Result := FList[Index];
end;

{ TFinanceiroAgrupamento }

class function TFinanceiroAgrupamento.ExisteParcelaAgrupada(ACodVenda: string): Boolean;
var
  QuerX, QuerA: TIBQuery;
begin
  //Rotina que faz uma busca recursiva no Financeiro para identificar se existe alguma parcela da venda
  //em questão que esteja agrupada.
  //O desafio é identificar quando esta parcela está em subgrupos, sendo necessário encontrar o agrupador de cada
  //subgrupo e assim sucessivamente

  QuerA := GeraQuery;
  QuerX := GeraQuery;
  try
    //Primeiramente busca todas as parcelas que façam parte de algum agrupamento, seja ele Ativo ou não
    QuerX.SQL.Text := 'select distinct AGRUPADOR ' +
                      'from FINANCEIRO ' +
                      'where (CODPEDIDO = :CodPedido) ' +
                      '      and (STATUS = :Status) ' +
                      '      and not (AGRUPADOR is null)';
    QuerX.ParamByName('CodPedido').AsString := ACodVenda;
    QuerX.ParamByName('Status').AsString    := 'INATIVO AGRUPADO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      //Para cada código de agrupamento, busca a parcela agrupadora
      QuerA.SQL.Text := 'select first 1 1 ' +
                        'from FINANCEIRO ' +
                        'where (AGRUPADOR = :Agrupador) ' +
                        '      and (STATUS = ''ATIVO AGRUPADO'')';
      QuerA.Params[0].Value := QuerX.Fields[0].Value;
      QuerA.Open;
      if not QuerA.IsEmpty then
      begin
        //Caso a parcela agrupadora esteja com status ATIVO AGRUPADO, chegamos ao final do procedimento e encontramos
        //o agrupador atual da parcela.
        Result := True;
        Exit;
      end else
      begin
        //Se não estiver ativo, então a parcela foi cancelada do agrupamento e agora pode pertencer a outro agrupamento
        //sendo necessário buscar no histório qual era o agrupamento anterior desta parcela
        QuerA.Close;
        QuerA.SQL.Text := 'select first 1 AGRUPADOR ' +
                          'from FINANCEIRO_HISTORICO ' +
                          'where (CODFINANCEIRO = :Codigo) ' +
                          '      and (CODPEDIDO = :CodPedido) ' +
                          '      and (CODEMPRESA = :CodEmpresa)';
//        QuerA.ParamByName('Codigo').Value
//        QuerA.ParamByName('CodPedido').Value
//        QuerA.ParamByName('CodEmpresa').Value
      end;

      QuerX.Next;
    end;
  finally
    QuerX.Free;
    QuerA.Free;
  end;
end;

{ TTipoRpsHelper }

//function TTipoRpsHelper.ToDescricao: string;
//begin
//  case Self of
//            trRPS: Result := 'RPS';
//    trNFConjugada: Result := 'Conjugada';
//          trCupom: Result := 'Cupom';
//  end;
//end;


{ TProdutoSQLEstoque }

class function TProdutoSQLEstoque.GetEstoqueReservado(const ATransa: TFDCustomTransaction; const ACodProduto: string): Double;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := InternalGetSQL(True, False, True, ACodProduto);
    QuerX.Open;
    Result := QuerX.Fields[0].AsFloat;
  finally
    QuerX.Free;
  end;
end;

class function TProdutoSQLEstoque.InternalGetSQL(const AIsSum, AMostrarFinalizados, AMostrarEmAberto: Boolean; const ACodProduto: string): string;
var
  ASQL: TStringList;
begin
  ASQL := TStringList.Create;
  try
    if AIsSum then
      ASQL.Text := 'select sum(VP.QUANT)'
    else
      ASQL.Text := 'select VP.CODVENDA, V.RAZAOSOCIAL, V.DT_EMISSAO, V.DT_FATURAMENTO, sum(VP.QUANT) as QUANT';

    ASQL.Add('from VENDA_PRODUTO VP ' +
             'inner join VENDA V on (V.CODIGO = VP.CODVENDA) ' +
             'where (VP.CODPRODUTO = ' + QuotedStr(ACodProduto) + ') ' +
             '      and (V.IS_ORCAMENTO is distinct from ''S'') ' +
             '      and (V.STATUS like ''ATIVO%'')');

    if not AMostrarFinalizados then
      ASQL.Add('and (V.DT_FATURAMENTO is null)');

    if not AMostrarEmAberto then
      ASQL.Add('and not (V.DT_FATURAMENTO is null)');

    if MultiEmpresa and not TConfig.ReadBoolean('PRODUTOS_ESTOQUE_RESERVADO_TODAS_EMPRESAS') then
    begin
      ASQL.Add('and ((VP.CODVENDA like ' + QuotedStr('%-' + EmpresaAtiva) + ')');
      if EmpresaAtiva = '1' then
        ASQL.Add('or not (VP.CODVENDA like ''%-%'')');
      ASQL.Add(')');
    end;

    if not AIsSum then
    begin
      ASQL.Add('group by 1, 2, 3, 4');
      ASQL.Add('order by DT_EMISSAO desc');
    end;

    Result := ASQL.Text;
  finally
    ASQL.Free;
  end;
end;

end.

