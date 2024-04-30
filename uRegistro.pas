unit uRegistro;

interface

uses
  Windows, Classes, AutoUpdate, SqlExpr, uPCInfo, IBX.IBQuery, IBX.IBDatabase, Dialogs, System.JSON, DataModuleRegistro,
  Forms, SysUtils, Registro;

type
  TDadosRegistro = class //Informações de registro para verificação online
    Serial : String;
    ContraSenha : String;
    constructor Create(ASerial, AContraSenha: String); overload;
  end;

  TDadosAtualizacao = record //Resposta do procedimento de verificação de atualização
    AttDisponivel : Boolean;
    VersaoDisponivel : String;
    VersaoObrigatoria : String;
  end;

  TVerificaRegistroOnGetRespostaEvent = procedure(Sender: TObject) of object;

  TVerificaRegistro = class(TThread)
  private
    { private declarations }
    FDM: TDMRegistro;
    FDadosRegistro: TDadosRegistro;
    FOnGetResposta: TNotifyEvent;
    procedure VerificarRegistro;
    procedure CadastraEquipamentoLocal;
    procedure GetResposta;
  public
    { public declarations }
    procedure Execute; override;
    constructor Create(ADadosRegistro: TDadosRegistro; AOnGetResposta: TNotifyEvent);
    destructor Destroy; override;
    property OnGetResposta: TNotifyEvent read FOnGetResposta write FOnGetResposta;
  end;

  TVerificaAtualizacaoOnGetRespostaEvent = procedure(Sender: TObject; DadosAtualizacao: TDadosAtualizacao) of object;

  TVerificaAtualizacao = class(TThread)
  private
    FDM : TDMRegistro;
    FDadosAtualizacao : TDadosAtualizacao;
    FOnGetResposta : TVerificaAtualizacaoOnGetRespostaEvent;
    procedure Verificar;
    procedure GetResposta;
  public
    procedure Execute; override;
    constructor Create(AOnGetResposta : TVerificaAtualizacaoOnGetRespostaEvent);
    destructor Destroy; override;
    property OnGetResposta: TVerificaAtualizacaoOnGetRespostaEvent read FOnGetResposta write FOnGetResposta;
  end;

var
  FThdAtualizacao : TVerificaAtualizacao;
  FThdRegistro : TVerificaRegistro;

//----------------------------------------------
//Ativar ou não o uso das threads para atualização do sistema e verificação do registro
//Medida provisória até que as threads estejam funcionando corretamente
//REMOVER ESTE RECURSO ASSIM QUE TUDO ESTIVER OK.
const
  FUsarThreads = True;
//----------------------------------------------

implementation

uses
  UnitFuncoes, uAcessoRemoto, StrUtils, Registry, wrFuncoes;

{ TRegistro }

constructor TVerificaRegistro.Create(ADadosRegistro: TDadosRegistro; AOnGetResposta: TNotifyEvent);
begin
  inherited Create(True);
  if not Assigned(AOnGetResposta) then
    Exit;
  FreeOnTerminate := True;
  FDadosRegistro  := ADadosRegistro;
  FOnGetResposta  := AOnGetResposta;
  FDM := TDMRegistro.Create(nil);
end;

destructor TVerificaRegistro.Destroy;
begin
  FDM.Free;
  if Assigned(FDadosRegistro) then
    FDadosRegistro.Free;
  FThdRegistro := nil;
  inherited;
end;

procedure TVerificaRegistro.Execute;
begin
  try
    try
      Sistema.Ativado := True; //Garante que o sistema esteja ativado caso ocorra algum erro de verificação
      CadastraEquipamentoLocal;
      if FDM.ConectarRemoto then
        VerificarRegistro;
    finally
      Synchronize(GetResposta);
    end;
  except

  end;
  inherited;
end;

procedure TVerificaRegistro.GetResposta;
begin
  FOnGetResposta(Self);
end;

procedure TVerificaRegistro.CadastraEquipamentoLocal;
var
  QuerX : TIBQuery;
  ACod : String;
begin
  with FDM do
  begin
    if ConexaoLocal.Connected then
    begin
      QuerX := GeraQuery;
      try
        QuerX.SQL.Text := 'select 1 from LICENCIAMENTO ' +
                          'where (HD = :HD) ' +
                          '      and not (HD is null)';
        QuerX.ParamByName('HD').AsString := FDM.PCInfo.SerialHD;
        QuerX.Open;
        if QuerX.IsEmpty then
        begin
          ACod := FloatToStr(ProximoCodigoTrans(Transa, Licenciamento.Name));
          Licenciamento.Open;
          Licenciamento.Insert;
          Licenciamento.FieldByName('CODIGO').AsString              := ACod;
          Licenciamento.FieldByName('ATIVO').AsString               := 'S';
          Licenciamento.FieldByName('DESCRICAO').AsString           := PCInfo.NomeHost;
          Licenciamento.FieldByName('PROCESSADOR').AsString         := PCInfo.Processador;
          Licenciamento.FieldByName('MEMORIA').AsString             := PCInfo.Memoria;
          Licenciamento.FieldByName('SISTEMA_OPERACIONAL').AsString := PCInfo.SistemaOperacional;
          Licenciamento.FieldByName('HD').AsString                  := PCInfo.SerialHD;
          Licenciamento.FieldByName('IP_INTERNO').AsString          := PCInfo.IPLocal;
          Licenciamento.FieldByName('PASTA_INSTALACAO').AsString    := GetDirSistema;
          Licenciamento.FieldByName('VERSAO_EXE').AsString          := Sistema.Versao;
          Licenciamento.FieldByName('VERSAO_BANCO').AsString        := GetVersaoBanco;
          Licenciamento.FieldByName('DT_CADASTRO').AsString         := DataHoraSis;
          Licenciamento.FieldByName('GERA_MENSALIDADE').AsString    := 'S';
          Licenciamento.FieldByName('CODEMPRESA').AsString          := EmpresaAtiva;
          if FileExists(GetDirSistema + 'Office_PAF.exe') then
            Licenciamento.FieldByName('PAF').AsString := 'S'
          else
            Licenciamento.FieldByName('PAF').AsString := 'N';
          Licenciamento.Post;
          Transa.Commit;
        end;
      finally
        QuerX.Free;
      end;
    end;
  end;
end;

procedure TVerificaRegistro.VerificarRegistro;
var
  QuerX : TIBQuery;
  Res: String;
  ARemoto: TSvmEquipamentoClient;
  JSArray : TJSONArray;
  JSObj : TJSONObject;
  I : Integer;
  ResArr : TArray<string>;
  ALiberado, AMotivo, AContraSenha: string;
  Reg : TRegistry;
begin
  if not Assigned(FDadosRegistro) then
  begin
    //Caso não tenha sido passado por parâmetro o objeto contendo o Serial e ContraSenha, então carrega os que estão
    //salvos no registro do windows.
    FDadosRegistro := TDadosRegistro.Create;
    Reg := TRegistry.Create;
    try
      FDadosRegistro.Serial      := '';
      FDadosRegistro.ContraSenha := '';
      if Reg.OpenKey('Software\Rocha\' + ApplicationTitle + '\Empresa', True) then
      begin
        FDadosRegistro.Serial      := Reg.ReadString('Serial');
        FDadosRegistro.ContraSenha := Reg.ReadString('ContraSenha');
      end;
    finally
      Reg.Free;
    end;
  end;
  QuerX  := GeraQuery;
  try
    //Cria estrutura JSON para o cadastro remoto
    JSArray := TJSONArray.Create;
    if FDM.ConexaoLocal.Connected then
    begin
      QuerX.SQL.Text := 'select * ' +
                        'from EMPRESA ' +
                        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsInteger := Empresa.FieldByName('CODIGO').AsInteger;
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        JSObj := TJSONObject.Create;
        JSObj.AddPair('NOME_TABELA', 'EMPRESA');
//          if FEmail <> '' then
//            JSObj.AddPair('EMAIL_SOLICITACAO_REGISTRO', FEmail);
        for I := 0 to QuerX.FieldCount - 1 do
          JSObj.AddPair(QuerX.Fields[i].FieldName, QuerX.Fields[i].AsString);
        JSArray.AddElement(JSObj);
      end;
      QuerX.Close;
    end;
    JSObj := TJSONObject.Create;
    JSObj.AddPair('NOME_TABELA',      'LICENCIAMENTO');
    JSObj.AddPair('DESCRICAO',        FDM.PCInfo.NomeHost);
    JSObj.AddPair('SISTEMA',          ApplicationTitle);
    JSObj.AddPair('PROCESSADOR',      FDM.PCInfo.Processador);
    JSObj.AddPair('MEMORIA',          FDM.PCInfo.Memoria);
    JSObj.AddPair('SISTEMA_OPERACIONAL', FDM.PCInfo.SistemaOperacional);
    JSObj.AddPair('HD',               FDM.PCInfo.SerialHD);
    JSObj.AddPair('IP_INTERNO',       FDM.PCInfo.IPLocal);
    JSObj.AddPair('PASTA_INSTALACAO', GetDirSistema);
    JSObj.AddPair('VERSAO_EXE',       Sistema.Versao);
    JSObj.AddPair('VERSAO_BANCO',     FDM.GetVersaoBanco);
    JSObj.AddPair('DATA',             DateTimeToStr(Now));
    JSObj.AddPair('SERIAL',           FDadosRegistro.Serial);
    JSObj.AddPair('CONTRA_SENHA',     FDadosRegistro.ContraSenha);
    JSObj.AddPair('CAMINHO_BANCO',    FDM.ConexaoLocal.DatabaseName);
    JSObj.AddPair('GERA_MENSALIDADE', 'S');

    if FileExists(GetDirSistema + 'Office_PAF.exe') then
      JSObj.AddPair('PAF', 'S')
    else
      JSObj.AddPair('PAF', 'N');
    JSArray.AddElement(JSObj);

    //Acesso ao servidor remoto
    ARemoto := TSvmEquipamentoClient.Create(FDM.ConexaoRemota.DBXConnection);
    try
      try
        //Envia as informações ao servidor e aguarda a resposta.
        Res := ARemoto.ProcessaDadosCliente(JSArray);
        ResArr := Res.Split([';']);
        if High(ResArr) >= 0 then
          ALiberado    := ResArr[0];
        if High(ResArr) >= 1 then
          AMotivo      := ResArr[1];
        if High(ResArr) >= 2 then
          AContraSenha := ResArr[2];
      except end;
    finally
      ARemoto.Free;
    end;

    //Verificação de liberação de uso do equipamento
//    QuerX.SQL.Text := 'SELECT LIBERADO FROM LICENCIAMENTO ' +
//                      'WHERE (HD = :HD) AND NOT (HD IS NULL)';
//    QuerX.ParamByName('HD').AsString := PCInfo.SerialHD;
//    QuerX.Open;
    if (ALiberado = 'N') then
    begin
      Sistema.Ativado := False;
      if (AMotivo <> '') then
        MessageBox(0, PWideChar('Motivo: ' + AMotivo), 'Sistema Bloqueado', MB_ICONWARNING or MB_OK or MB_APPLMODAL);
    end else
    begin
      // Qualquer situação diferente de 'N', liberar uso, inclusive em caso de erro de conexão.
      if AContraSenha <> '' then
      begin
        Reg := TRegistry.Create;
        try
          Reg.RootKey := HKEY_CURRENT_USER;
          Reg.Access := KEY_ALL_ACCESS;
          if Reg.OpenKey('Software\Rocha\' + ApplicationTitle + '\Empresa', True) then
            Reg.WriteString('ContraSenha', AContraSenha);
        finally
          Reg.CloseKey;
          Reg.Free;
        end;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

{ TVerificaAtualizacao }

procedure TVerificaAtualizacao.Verificar;
var
  Remoto : TSvmEquipamentoClient;
  AStrEnvio : String;
  QuerX : TIBQuery;
  ARes : TArray<string>;
begin
  try
    FDadosAtualizacao.AttDisponivel     := False;
    FDadosAtualizacao.VersaoDisponivel  := '';
    FDadosAtualizacao.VersaoObrigatoria := '';
    if FDM.ConectarRemoto then
    begin
      Remoto := TSvmEquipamentoClient.Create(FDM.ConexaoRemota.DBXConnection);
      QuerX := FDM.GeraQuery;
      try
        QuerX.SQL.Text := 'SELECT CNPJCPF FROM EMPRESA WHERE (CODIGO = :Cod)';
        QuerX.Params[0].AsString := EmpresaAtiva;
        QuerX.Open;
        AStrEnvio := QuerX.Fields[0].AsString + ';' + Sistema.Versao;
        ARes := Remoto.VerificaVersao(AStrEnvio).Split([';']);
        FDadosAtualizacao.AttDisponivel := (High(ARes) >= 0) and (ARes[0] <> '') and (ARes[0] <> 'N');
        if High(ARes) >= 0 then
          FDadosAtualizacao.VersaoDisponivel  := ARes[0];
        if High(ARes) >= 1 then
          FDadosAtualizacao.VersaoObrigatoria := ARes[1];
      finally
        Remoto.Free;
        QuerX.Free;
      end;
    end;
  finally
    Synchronize(GetResposta);
  end;
end;

constructor TVerificaAtualizacao.Create(AOnGetResposta : TVerificaAtualizacaoOnGetRespostaEvent);
begin
  inherited Create(True);
  Self.FreeOnTerminate := True;
  FDM := TDMRegistro.Create(nil);
  FOnGetResposta := AOnGetResposta;
end;

destructor TVerificaAtualizacao.Destroy;
begin
  FDM.Free;
  FThdAtualizacao := nil;
  inherited;
end;

procedure TVerificaAtualizacao.Execute;
begin
  if Assigned(FOnGetResposta) then
    Verificar;
  inherited;
end;

procedure TVerificaAtualizacao.GetResposta;
begin
  FOnGetResposta(Self, FDadosAtualizacao);
end;

{ TDadosRegistro }

constructor TDadosRegistro.Create(ASerial, AContraSenha: String);
begin
  inherited Create;
  Serial      := ASerial;
  ContraSenha := AContraSenha;
end;

end.
