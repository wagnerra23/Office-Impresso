unit uGerenciadorThreads;

interface

uses
  System.Classes, Generics.Collections, Vcl.Forms, System.SysUtils, FireDAC.Comp.Client, Winapi.Windows,
  FireDAC.Stan.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Error, SyncObjs, Vcl.StdCtrls, System.Variants;

type
  TWRThreadComponenteSaida = class
  private
    FComponente: TObject;
    FIndiceCampo: Integer;
  public
    property IndiceCampo: Integer read FIndiceCampo write FIndiceCampo;
    property Componente: TObject read FComponente write FComponente;
  end;

  TWRThread = class(TThread)
  private
    FForm: TForm;
    FDelayInicio: Cardinal;
    FCodigo: Int64;
  protected
    procedure Execute; override;
  public
    property Codigo: Int64 read FCodigo write FCodigo;
    property Form: TForm read FForm write FForm;
    property DelayInicio: Cardinal read FDelayInicio write FDelayInicio;

    constructor Create; virtual;
  end;

  TWRThreadSQL = class(TWRThread)
  private
    FConnection: TFDConnection;
    procedure Sincronizar;
    procedure PreencheRetorno; virtual;
    procedure SetSQL(const Value: string);
    function GetSQL: string;
  protected
    FQuery: TFDQuery;
    procedure Execute; override;
  public
    property SQL: string read GetSQL write SetSQL;

    constructor Create; override;
    destructor Destroy; override;
  end;

  TWRThreadSQLMemTable = class(TWRThreadSQL)
  private
    procedure PreencheRetorno; override;
  end;

  TWRThreadSQLSimples = class(TWRThreadSQL)
  private
    FListaSaidas: TObjectList<TWRThreadComponenteSaida>;
    procedure PreencheRetorno; override;
  public
    property Saidas: TObjectList<TWRThreadComponenteSaida> read FListaSaidas;

    constructor Create; override;
    destructor Destroy; override;
  end;

  TWRThreadRetorno = class
  private
    FRetorno: Variant;
    FCodigo: Int64;
    function GetAsFloat: Double;
    function GetAsInteger: Integer;
    function GetAsObject: TObject;
    function GetAsString: string;
    procedure SetAsFloat(const Value: Double);
    procedure SetAsInteger(const Value: Integer);
    procedure SetAsObject(const Value: TObject);
    procedure SetAsString(const Value: string);
  public
    property Codigo: Int64 read FCodigo write FCodigo;
    property Retorno: Variant read FRetorno write FRetorno;

    property AsInteger: Integer read GetAsInteger write SetAsInteger;
    property AsFloat: Double read GetAsFloat write SetAsFloat;
    property AsString: string read GetAsString write SetAsString;
    property AsObject: TObject read GetAsObject write SetAsObject;

    constructor Create;
  end;

  TWRThreadsManager = class //Singleton
  private
    FListaThreads: TList<TWRThread>;
    FListaRetornos: TObjectList<TWRThreadRetorno>;
    FCrititalSection: TCriticalSection;
    FUltimoCodigo: Int64;
    class var FInstance: TWRThreadsManager;

    procedure ThreadTerminate(Sender: TObject);

    constructor CreatePrivate;
    function AddRetorno(AThread: TWRThread): TWRThreadRetorno;
    function InternalGetRetorno(ACodigoThread: Integer; out ARetorno: Variant): Boolean;
  protected
    property ListaThreads: TList<TWRThread> read FListaThreads;
    procedure ThreadFinalizouTrabalho(AThread: TWRThread; AProcResposta: TThreadMethod);

    procedure AddThreadLista(AThread: TWRThread);
    procedure RemoveThreadLista(AThread: TWRThread);
  public
    procedure FinalizarThread(ACodThread: Int64);
    procedure FinalizarThreadsDaForm(AForm: TForm);
    procedure FinalizarTodasThreads;

    function ExecutarThreadSQL(AForm: TForm; const ASQL: string; ADelayInicio: Cardinal = 0): Int64;
    function ExecutarThreadSQLMemTable(AForm: TForm; const ASQL: string; ADelayInicio: Cardinal = 0): Int64;

    function GetRetorno(ACodigoThread: Integer; out ARetorno: Variant): Boolean; overload;
    function GetRetorno(ACodigoThread: Integer; out ARetorno: Integer): Boolean; overload;
    function GetRetorno(ACodigoThread: Integer; out ARetorno: TObject): Boolean; overload;

    class function GetInstance: TWRThreadsManager;
    class procedure ReleaseInstance;

    destructor Destroy; override;
  end;

  function GerenciadorThreads: TWRThreadsManager;

implementation

uses
  DataModuleBanco, UnitFuncoes;

{ TWRThreadsManager }

function GerenciadorThreads: TWRThreadsManager;
begin
  Result := TWRThreadsManager.GetInstance;
end;

function TWRThreadsManager.AddRetorno(AThread: TWRThread): TWRThreadRetorno;
begin
  Result := TWRThreadRetorno.Create;
  Result.Codigo := AThread.Codigo;
  FListaRetornos.Add(Result);
end;

procedure TWRThreadsManager.AddThreadLista(AThread: TWRThread);
begin
  FListaThreads.Add(AThread);
end;

procedure TWRThreadsManager.RemoveThreadLista(AThread: TWRThread);
begin
  FListaThreads.Remove(AThread);
end;

constructor TWRThreadsManager.CreatePrivate;
begin
  FListaThreads := TList<TWRThread>.Create;
  FCrititalSection := TCriticalSection.Create;
  FListaRetornos := TObjectList<TWRThreadRetorno>.Create;
end;

destructor TWRThreadsManager.Destroy;
begin
  FListaThreads.Free;
  FCrititalSection.Free;
  FListaRetornos.Free;
  inherited;
end;

function TWRThreadsManager.ExecutarThreadSQL(AForm: TForm; const ASQL: string; ADelayInicio: Cardinal = 0): Int64;
var
  AThread: TWRThreadSQLSimples;
begin
  Inc(FUltimoCodigo);
  AThread := TWRThreadSQLSimples.Create;
  AThread.Codigo      := FUltimoCodigo;
  AThread.Form        := AForm;
  AThread.SQL         := ASQL;
  AThread.DelayInicio := ADelayInicio;

  Result := AThread.Codigo;
  
  AThread.Start;
end;

function TWRThreadsManager.ExecutarThreadSQLMemTable(AForm: TForm; const ASQL: string; ADelayInicio: Cardinal): Int64;
var
  AThread: TWRThreadSQLMemTable;
begin
  Inc(FUltimoCodigo);
  AThread := TWRThreadSQLMemTable.Create;
  AThread.Codigo      := FUltimoCodigo;
  AThread.Form        := AForm;
  AThread.SQL         := ASQL;
  AThread.DelayInicio := ADelayInicio;

  Result := AThread.Codigo;
  
  AThread.Start;
end;

procedure TWRThreadsManager.FinalizarThread(ACodThread: Int64);
var
  I: Integer;
begin
  if ACodThread = 0 then
    Exit;
  FCrititalSection.Enter;
  try
    for I := 0 to FListaThreads.Count - 1 do
    begin
      if FListaThreads[i].Codigo = ACodThread then
        FListaThreads[i].Terminate;
    end;
  finally
    FCrititalSection.Leave;
  end;
end;

procedure TWRThreadsManager.FinalizarThreadsDaForm(AForm: TForm);
var
  I: Integer;
begin
  //Sinaliza todas as threads da form para que sejam finalizadas. Não aguarda a finalização delas...
  FCrititalSection.Enter;
  try
    for I := 0 to FListaThreads.Count - 1 do
    begin
      if FListaThreads[i].Form = AForm then
        FListaThreads[i].Terminate;
    end;
  finally
    FCrititalSection.Leave;
  end;
end;

procedure TWRThreadsManager.FinalizarTodasThreads;
var
  I: Integer;
begin
  //Sinaliza todas as threads da form para que sejam finalizadas
  FCrititalSection.Enter;
  try
    for I := 0 to FListaThreads.Count - 1 do
      FListaThreads[i].Terminate;
  finally
    FCrititalSection.Leave;
  end;

  //Aguarda a finalização das threads
  while FListaThreads.Count > 0 do
  begin
    Sleep(1);
    Application.ProcessMessages;
  end;
end;

class function TWRThreadsManager.GetInstance: TWRThreadsManager;
begin
  if TWRThreadsManager.FInstance = nil then
    TWRThreadsManager.FInstance := TWRThreadsManager.CreatePrivate;
  Result := FInstance;
end;

function TWRThreadsManager.GetRetorno(ACodigoThread: Integer; out ARetorno: Integer): Boolean;
var
  AValue: Variant;
begin
  Result := InternalGetRetorno(ACodigoThread, AValue);
  if Result then
    ARetorno := VarToIntDef(AValue, 0);
end;

function TWRThreadsManager.GetRetorno(ACodigoThread: Integer; out ARetorno: Variant): Boolean;
begin
  Result := InternalGetRetorno(ACodigoThread, ARetorno);
end;

function TWRThreadsManager.GetRetorno(ACodigoThread: Integer; out ARetorno: TObject): Boolean;
var
  AValue: Variant;
begin
  Result := InternalGetRetorno(ACodigoThread, AValue);
  if Result then
    ARetorno := TObject(NativeUInt(AValue));
end;

function TWRThreadsManager.InternalGetRetorno(ACodigoThread: Integer; out ARetorno: Variant): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to FListaRetornos.Count - 1 do
  begin
    if FListaRetornos[i].Codigo = ACodigoThread then
    begin
      ARetorno := FListaRetornos[i].Retorno;
      Result   := True;
      FListaRetornos.Remove(FListaRetornos[i]);
    end;
  end;
end;

class procedure TWRThreadsManager.ReleaseInstance;
begin
  FreeAndNil(FInstance);
end;

procedure TWRThreadsManager.ThreadFinalizouTrabalho(AThread: TWRThread; AProcResposta: TThreadMethod);
begin
  if not AThread.Terminated then
  begin
    try
      AProcResposta;
    except end;
  end;
end;

procedure TWRThreadsManager.ThreadTerminate(Sender: TObject);
var
  AExcept: Exception;
begin
  FCrititalSection.Enter;
  try
    RemoveThreadLista(TWRThread(Sender));
    AExcept := Exception(TThread(Sender).FatalException);
    if Assigned(AExcept) and not (AExcept is EAbort) then
      if AExcept.Message = '' then;
  finally
    FCrititalSection.Leave;
  end;
end;

{ TWRThread }

constructor TWRThread.Create;
begin
  inherited Create(True);
  FreeOnTerminate := True;
  OnTerminate := GerenciadorThreads.ThreadTerminate;
  GerenciadorThreads.AddThreadLista(Self)
end;

procedure TWRThread.Execute;
begin
  inherited;

  //Aguarda um tempo antes de iniciar a thread. Opcional...
  if FDelayInicio > 0 then
  begin
    Sleep(FDelayInicio);

    //Depois de aguardar o tempo, verifica se a thread não foi marcada pra finalizar, pode ter sido cancelada antes mesmo
    //de ter iniciado sua função
    if Terminated then
      Abort;
  end;
end;

{ TWRThreadSQL }

constructor TWRThreadSQL.Create;
begin
  inherited;
  FConnection := TFDConnection.Create(nil);
  FConnection.LoginPrompt := False;
  FConnection.Params.Assign(DMBanco.Banco.Params);

  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := FConnection;
end;

destructor TWRThreadSQL.Destroy;
begin
  FQuery.Free;
  FConnection.Free;
  inherited;
end;

procedure TWRThreadSQL.Execute;
begin
  inherited;
  if Terminated then
    Exit;

  FQuery.ResourceOptions.CmdExecTimeout := 30000;
  try
    FQuery.Open;
  except
    on E:Exception do
      Terminate;
  end;
  if not Terminated then
    Queue(Sincronizar);
end;

function TWRThreadSQL.GetSQL: string;
begin
  Result := FQuery.SQL.Text;
end;

procedure TWRThreadSQL.PreencheRetorno;
begin
  
end;

procedure TWRThreadSQL.SetSQL(const Value: string);
begin
  FQuery.SQL.Text := Value;
end;

procedure TWRThreadSQL.Sincronizar;
begin
  GerenciadorThreads.ThreadFinalizouTrabalho(Self, PreencheRetorno);
end;

{ TWRThreadRetorno }

constructor TWRThreadRetorno.Create;
begin
  FRetorno := Null;
end;

function TWRThreadRetorno.GetAsFloat: Double;
begin
  Result := VarToDoubleDef(FRetorno, 0);
end;

function TWRThreadRetorno.GetAsInteger: Integer;
begin
  Result := VarToIntDef(FRetorno, 0);
end;

function TWRThreadRetorno.GetAsObject: TObject;
begin
  if VarIsNull(FRetorno) then
    Result := nil
  else
    Result := TObject(NativeUInt(FRetorno));
end;

function TWRThreadRetorno.GetAsString: string;
begin
  Result := VarToStrDef(FRetorno, '');
end;

procedure TWRThreadRetorno.SetAsFloat(const Value: Double);
begin
  FRetorno := Value;
end;

procedure TWRThreadRetorno.SetAsInteger(const Value: Integer);
begin
  FRetorno := Value;
end;

procedure TWRThreadRetorno.SetAsObject(const Value: TObject);
begin
  FRetorno := NativeUInt(Value);
end;

procedure TWRThreadRetorno.SetAsString(const Value: string);
begin
  FRetorno := Value;
end;

{ TWRThreadSQLMemTable }

procedure TWRThreadSQLMemTable.PreencheRetorno;
var
  AMemTable: TFDMemTable;
begin
  inherited;
  AMemTable := TFDMemTable.Create(nil);
  AMemTable.Data := FQuery.Data;

  GerenciadorThreads.AddRetorno(Self).Retorno := NativeUInt(AMemTable);
end;

{ TWRThreadSQLSimples }

constructor TWRThreadSQLSimples.Create;
begin
  inherited;
  FListaSaidas := TObjectList<TWRThreadComponenteSaida>.Create;
end;

destructor TWRThreadSQLSimples.Destroy;
begin
  FListaSaidas.Free;
  inherited;
end;

procedure TWRThreadSQLSimples.PreencheRetorno;
var
  AArray: TArray<Variant>;
  I: Integer;
begin
  inherited;
  SetLength(AArray, FQuery.FieldCount);
  for I := 0 to FQuery.FieldCount - 1 do
    AArray[i] := FQuery.Fields[i].Value;
  GerenciadorThreads.AddRetorno(Self).Retorno := VarArrayOf(AArray);
end;

initialization

finalization
  GerenciadorThreads.ReleaseInstance;

end.

