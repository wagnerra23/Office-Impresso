unit DataModuleRegistro;

interface

uses
  SysUtils, Classes, DBXDataSnap, DBXCommon, IBX.IBDatabase, AppProt, DB, SqlExpr, IBX.IBCustomDataSet, AutoUpdate,
  uPCInfo, IBX.IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IPPeerClient,
  FireDAC.VCLUI.Wait;

type
  TDMRegistro = class(TDataModule)
    Licenciamento: TIBDataSet;
    DS: TDataSource;
    Transa: TIBTransaction;
    ConexaoRemota: TSQLConnection;
    AppProtect1: TAppProtect;
    Licenciamento_Historico: TIBDataSet;
    ConexaoLocal: TIBDatabase;
    AutoUpdate1: TAutoUpdate;
    CONECTAR: TFDConnection;
    Transacao: TFDTransaction;
    LicenciamentoFireDac: TFDQuery;
    procedure ConexaoRemotaBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure ConexaoLocalBeforeConnect(Sender: TObject);
  private
    { Private declarations }
    FPCInfo : TPCInfo;
  public
    { Public declarations }
    property PCInfo : TPCInfo read FPCInfo write FPCInfo;
    function ConectarRemoto: Boolean;
    function Procura(Campo, Tabela, Codig: String): String;
    function GeraQuery: TIBQuery; overload;
    function GeraQuery(Transacao: TIBTransaction): TIBQuery; overload;
    function GetVersaoBanco: String;
  end;

implementation

uses
  Principal, UnitFuncoes, Classes.WR;

{$R *.dfm}

function TDMRegistro.GetVersaoBanco: String;
begin
  Result := '';
  if not ConexaoLocal.Connected then
    Exit;
  Result := IntToStr(TConfig.ReadGlobalInteger('VERSAO_BANCO'));
end;

function TDMRegistro.ConectarRemoto: Boolean;
var
  i : Integer;
  AServidores : TStringList;
begin
  Result := ConexaoRemota.Connected;
  if not Result then
  begin
    AServidores := TStringList.Create;
    try
      with AServidores do
      begin
        Add('sistema.wr2.com.br');
//        Add('200.237.249.164');
        Add('wr2.servehttp.com');
        Add('wr2.no-ip.info');
      end;
      for I := 0 to AServidores.Count - 1 do
      begin
        try
          ConexaoRemota.Params.Values['HostName'] := AServidores[i];
          ConexaoRemota.Open;
          Result := ConexaoRemota.Connected;
          Break;
        except end;
      end;
    finally
      AServidores.Free;
    end;
  end;
end;

procedure TDMRegistro.ConexaoLocalBeforeConnect(Sender: TObject);
begin
  ConexaoLocal.DatabaseName := FrmPrincipal.CONECTAR.DatabaseName;
end;

procedure TDMRegistro.ConexaoRemotaBeforeConnect(Sender: TObject);
begin
  ConexaoRemota.Params.Values['client_computer'] := FPCInfo.NomeHost;
  ConexaoRemota.Params.Values['client_ip']       := FPCInfo.IPLocal;
  try
    //Manter desta forma para não ocorrer erros quando não houver conexão com o banco
    ConexaoRemota.Params.Values['client_currentuser'] := Procura('LOGIN', 'USUARIO', CodigoUsuario.ToString);
  except end;
end;

procedure TDMRegistro.DataModuleCreate(Sender: TObject);
begin
  FPCInfo := TPCInfo.Create;
  ConexaoRemota.SQLHourGlass := False;
end;

procedure TDMRegistro.DataModuleDestroy(Sender: TObject);
begin
  if ConexaoRemota.Connected then
    ConexaoRemota.Close;
  if ConexaoLocal.Connected then
    ConexaoLocal.Close;
end;

function TDMRegistro.Procura(Campo, Tabela, Codig: String): String;
var
  QuerX : TIBQuery;
begin
  Result := '';
  if Trim(Codig) <> '' then
  begin
    QuerX := GeraQuery;
    try
      QuerX.SQL.Text := 'SELECT T."' + AnsiUpperCase(Trim(Campo)) + '" FROM ' + Trim(Tabela) + ' T WHERE (CODIGO = ' + QuotedStr(Codig) + ')';
      QuerX.Open;
      Result := QuerX.Fields[0].AsString;
    finally
      QuerX.Free;
    end;
  end;
end;

function TDMRegistro.GeraQuery: TIBQuery;
begin
  Result := TIBQuery.Create(nil);
  Result.DataBase := ConexaoLocal;
  Result.Transaction := Transa;
end;

function TDMRegistro.GeraQuery(Transacao: TIBTransaction): TIBQuery;
begin
  Result := TIBQuery.Create(nil);
  Result.DataBase := ConexaoLocal;
  Result.Transaction := Transacao;
end;

end.
