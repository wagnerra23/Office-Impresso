unit DataModuleAtualizacao;

interface

uses
  SysUtils, Classes, ExtCtrls, IBX.IBDatabase, DB, IBX.IBQuery, Types, Principal, Forms, Windows, Registro, DateUtils,
  AutoUpdate, ShellAPI, Math, StrUtils, Registry, UnitFuncoes, wrFuncoes,
  FireDAC.Stan.Intf, FireDAC.Comp.Client, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDMAtualizacao = class(TDataModule)
    SolicitaAtualizacao: TTimer;
    TimerProgressoDownload: TTimer;
    FDTransaction: TFDTransaction;
    procedure SolicitaAtualizacaoTimer(Sender: TObject);
    procedure TimerProgressoDownloadTimer(Sender: TObject);
  private
    { Private declarations }
    FrmAtualizacaoPendente : TPanelForm;
    function GeraArquivoBat: string;
    procedure CriaLabelAtualizacao(AExibeShowMessage : Boolean);
  public
    { Public declarations }
    procedure SetStatusSolicitacao(ANovoStatus: TSituacaoAtualiza);
    procedure CarregaAtualizacaoEInstala;
    procedure GravaExeBanco(tempFile, AVersao, AVersaoObrigatoria: string);
    procedure ConfirmacaoBaixarAtualizacao;
    procedure AtualizaAutomatico(ASolicitacaoManual: Boolean = False);
    function VerificaServidor : Boolean;
  end;

var
  DMAtualizacao: TDMAtualizacao;
  FrmRegistro: TFrmRegistro;

implementation

{$R *.dfm}

procedure TDMAtualizacao.CriaLabelAtualizacao(AExibeShowMessage : Boolean);
var
  ARect: TRect;
  AOldSize : TPoint;
begin
  with FrmPrincipal do
  begin
    if AExibeShowMessage then
      ShowMessageWR('Download da Atualização em andamento.');
    FrmAtualizacaoPendente := TPanelForm.Create(PnlAtualizacaoPendente, bsSingle);
    with FrmAtualizacaoPendente.Form do
    begin
      AOldSize.X  := ClientHeight;
      AOldSize.Y  := ClientWidth;
      BorderStyle := bsNone;
      Height      := AOldSize.X; //Ao tirar a borda, o tamanho muda...
      Width       := AOldSize.Y;
      FormStyle   := fsStayOnTop;
      Position    := poDesigned;
      Left        := Screen.Width - ClientWidth;
      SystemParametersInfo(SPI_GETWORKAREA, 0, @ARect, 0);
      Top         := Screen.Height - (Screen.Height - ARect.Bottom) - Height - 2;
      LbAtualizacaoPendente.Caption := 'Download em andamento...';
      LbAtualizacaoPendente.Enabled := False;
      Show;
    end;
    ActivateBalloonHint(PnlAtualizacaoPendente, 'DOWNLOAD', 'Download da Atualização em andamento.' +
                        sLineBreak + 'Aguarde!');
    TimerProgressoDownload.Enabled := True;
  end;
end;

function GetTmpFileName(ext: string): string;
var
  pc: PChar;
begin
  pc := StrAlloc(MAX_PATH + 1);
  GetTempFileName(PChar(GetDirTemp), 'EZC', 0, pc);
  Result := string(pc);
  Result := ChangeFileExt(Result, ext);
  StrDispose(pc);
end;

function TDMAtualizacao.GeraArquivoBat: string;
var
  ALista : TStringList;
  ANomeDos, ATempFile : String;
begin
  //Gera o arquivo Bat que aplica a atualização baixada na pasta Temp
  ALista := TStringList.Create;
  try
    ANomeDos := ParamStr(0);
    ATempFile := GetDirTemp + ExtractFileName(Application.ExeName);
    ALista.Clear;
    Result := GetTmpFileName('.bat');
    FileSetAttr(ParamStr(0), 0);
    ALista.Add('@echo off');
    ALista.Add('ping 1.1.1.1 -n 1 -w 5000 > NUL'); //Adicionado para aguardar alguns segundos antes de executar a atualização
    ALista.Add('goto Label1');
    ALista.Add(':Label0');
    ALista.Add('cls');
    ALista.Add('echo Certifique-se de que o sistema esteja fechado neste computador.');
    ALista.Add('echo Feche o sistema para continuar com a atualizacao.');
//    ALista.Add('Pause');
    ALista.Add(':Label1');
    ALista.Add(ExtractFileDrive(ANomeDos));
//    ALista.Add('cd "' + ExtractFilePath(ANomeDos) + '"');
    ALista.Add('TASKKILL /F /IM ' + ExtractFileName(ANomeDos));
    ALista.Add('Copy /Y "' + ANomeDos + '" "' + ChangeFileExt(ANomeDos, '.bak') + '"');
    ALista.Add('Move /Y "' + ATempFile + '" "' + ANomeDos + '"');
    ALista.Add('if errorlevel 1 goto Label0');
    ALista.Add('start "" "' + ANomeDos + '"'); //Sem as aspas duplas anteriores, o windows não executa o arquivo
    ALista.Add('del "' + Result + '"');
    ALista.SaveToFile(Result);
  finally
    ALista.Free;
  end;
end;

procedure TDMAtualizacao.AtualizaAutomatico(ASolicitacaoManual: Boolean);
var
  QuerX, QuerA : TFDQuery;
  ACancelado : Boolean;
  ADataSolicita: TDateTime;
begin
  ACancelado := True;
  QuerX := GeraFDQuery;
  QuerA := GeraFDQuery;
  try
    //Verifica versão obrigatória
    QuerX.SQL.Text := 'select VERSAO_OBRIGATORIA, VERSAO ' +
                      'from ATUALIZACAO';
    QuerX.Open;
    if CompareVersion(QuerX.FieldByName('VERSAO_OBRIGATORIA').AsString, Sistema.Versao) > 0 then
    begin
      CarregaAtualizacaoEInstala;
      Exit;
    end;
    //Verifica atualização padrão, sem obrigatoriedade
    if CompareVersion(QuerX.FieldByName('VERSAO').AsString, Sistema.Versao) > 0 then
    begin
      ASolicitacaoManual := False;
      if ShowMessageWR('Existe uma versão disponível no servidor. Deseja atualizar seu sistema agora?', MB_ICONQUESTION) = idYes then
      begin
        ACancelado := False;
        CarregaAtualizacaoEInstala;
      end;
    end;
  finally
    if not ACancelado then
    begin
      SetStatusSolicitacao(saNone);
      Application.Terminate;
    end;
    QuerX.Free;
    QuerA.Free;
  end;
  //
  if ASolicitacaoManual then
  begin
    // Campo Solicita = 1 - Solicitação do terminal para Atualização
    //                  2 - Retorno de resposta: Não há atualização disponível
    //                  3 - Retorno de resposta: Existe atualização para ser baixada
    //                  4 - Confirmação para baixar atualização
    //                  5 - Atualização baixada com sucesso
    //
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select SOLICITA from SOLICITACAO';
      QuerX.Open;
      //Verificação caso outro terminal solicite uma atualização
      case TSituacaoAtualiza.GetFromCodigo(QuerX.Fields[0].AsInteger) of
        saTerminalSolicitando:
          begin
            ShowMessageWR('Download da Atualização em andamento.' + sLineBreak + 'Aguarde e tente mais tarde.');
            Exit;
          end;
        saAtualizacaoDisponivel:
          begin
            ConfirmacaoBaixarAtualizacao;
            Exit;
          end;
        saTerminalConfirmaDownload, saBaixandoAtualizacao:
          begin
            CriaLabelAtualizacao(True);
            SolicitaAtualizacao.Enabled := True;
            Exit;
          end;
      else
        if QuerX.Fields[0].AsInteger <> saTerminalSolicitando.Codigo then
        begin
          SetStatusSolicitacao(saTerminalSolicitando);
          //SolicitaAtualizacao.Enabled := True;
        end;
      end;
      //
      ADataSolicita := Now;
      while True do //Esperando resposta do servidor sobre se existe atualização disponível
      begin
        QuerX.Close;
        QuerX.SQL.Text := 'select SOLICITA from SOLICITACAO';
        QuerX.Open;
        if SecondsBetween(Now, ADataSolicita) > 10 then //Espera resposta do servidor case não houver faz atualização do terminal
        begin
          try
            SetStatusSolicitacao(saNone);
            TForm(FrmPrincipal.PnlAguardeAtualizacao.Parent).Close;
            FrmRegistro := TFrmRegistro.Create(nil);
            with FrmRegistro do
            try
              if OpenConnection then
              begin
                try
                  AtualizarSistema(False)
                finally
                  CloseConnection;
                end;
              end else
                ShowMessageWR('Não foi possível conectar-se ao servidor. Verifique sua conexão e tente novamente.');
            finally
              FreeAndNil(FrmRegistro);
            end;
          except end;
          Exit;
        end;
        if QuerX.Fields[0].AsInteger = saAtualizacaoNaoDisponivel.Codigo then
        begin
          ShowMessageWR('Seu sistema já está na última versão disponível.');
          Exit;
        end
        else if QuerX.Fields[0].AsInteger = saAtualizacaoDisponivel.Codigo then
        begin
          ConfirmacaoBaixarAtualizacao;
          Exit;
        end else
        begin
          Sleep(500);
          Application.ProcessMessages;
        end;
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure TDMAtualizacao.CarregaAtualizacaoEInstala;
var
  QuerX : TFDQuery;
  AExecutavel : TMemoryStream;
  AArquivoBat, AArquivoTmp : string;
begin
  //Extrai o arquivo salvo no banco de dados, manda gerar o Bat e aplica a atualização
  QuerX := GeraFDQuery;
  AExecutavel := TMemoryStream.Create;
  try
    QuerX.SQL.Text := 'select ARQUIVO from ATUALIZACAO';
    QuerX.Open;
    TBlobField(QuerX.Fields[0]).SaveToStream(AExecutavel);
    AArquivoTmp := GetDirTemp + ChangeFileExt(ExtractFileName(Application.ExeName), '.exe');
    AExecutavel.SaveToFile(AArquivoTmp);
    // criar bath e sobrepor exe
    AArquivoBat := GeraArquivoBat;
    ShellExecute(0, nil, PWideChar('"' + AArquivoBat + '"'), '', nil, SW_HIDE);
  finally
    QuerX.Free;
    AExecutavel.Free;
  end;
end;

procedure TDMAtualizacao.ConfirmacaoBaixarAtualizacao;
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    if (ShowMessageWR('Existe uma versão disponível para download. Deseja atualizar seu sistema agora?', MB_ICONQUESTION) = idYes) then
    begin
      QuerX.SQL.Text := 'select SOLICITA from SOLICITACAO';
      QuerX.Open;
      //Quando o usuário confirmar a atualização do sistema, uma nova verificação é feita para certificar-se de
      //que a atualização já não foi baixada por uma solicitação de outro terminal. Dessa forma, é apenas feito
      //a atualização diretamente sem a necessidade de baixar novamente a atualização
      if QuerX.Fields[0].AsInteger <> saAtualizacaoPronta.Codigo then
      begin
        SetStatusSolicitacao(saTerminalConfirmaDownload);
        CriaLabelAtualizacao(False);
      end;
      SolicitaAtualizacao.Enabled := True;
    end else
      SetStatusSolicitacao(saNone);
  finally
    QuerX.Free;
  end;
end;

procedure TDMAtualizacao.SetStatusSolicitacao(ANovoStatus: TSituacaoAtualiza);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(FDTransaction);
  try
    QuerX.SQL.Text := 'update SOLICITACAO set SOLICITA = :Solicita';
    if ANovoStatus = saTerminalSolicitando then
    begin
      QuerX.SQL.Add(', ERRO_CONEXAO = 0, VERSAO_ATUAL = :Versao');
      QuerX.ParamByName('Versao').AsString := Sistema.Versao;
    end;
    QuerX.ParamByName('Solicita').AsInteger := ANovoStatus.Codigo;
    QuerX.ExecSQL;
//    if FDTransaction.TransactionIntf. then
      FDTransaction.StartTransaction;
    FDTransaction.Commit;
  finally
    QuerX.Free;
  end;
end;

procedure TDMAtualizacao.SolicitaAtualizacaoTimer(Sender: TObject);
var
  QuerX, QuerA : TFDQuery;
  I : Integer;
  ARect: TRect;
  AOldSize : TPoint;
begin
  //I := 0;
  SolicitaAtualizacao.Enabled := False;
  QuerX := GeraFDQuery;
  QuerA := GeraFDQuery;
  try
    QuerX.Close;
    QuerX.SQL.Clear;
    QuerX.SQL.Text := 'select SOLICITA, ERRO_CONEXAO, MESSAGE_ERRO from SOLICITACAO;';
    QuerX.Open;
    if QuerX.FieldByName('SOLICITA').AsInteger = 5 then
    begin
      with FrmPrincipal do
      begin
        FrmAtualizacaoPendente := TPanelForm.Create(PnlAtualizacaoPendente, bsSingle);
        with FrmAtualizacaoPendente.Form do
        begin
          AOldSize.X  := ClientHeight;
          AOldSize.Y  := ClientWidth;
          BorderStyle := bsNone;
          Height      := AOldSize.X; //Ao tirar a borda, o tamanho muda...
          Width       := AOldSize.Y;
          FormStyle   := fsStayOnTop;
          Position    := poDesigned;
          Left        := Screen.Width - ClientWidth;
          SystemParametersInfo(SPI_GETWORKAREA, 0, @ARect, 0);
          Top         := Screen.Height - (Screen.Height - ARect.Bottom) - Height - 2;
          LbAtualizacaoPendente.Caption := 'Atualização Pendente. Clique em Atualizar Sistema.';
          Show;
        end;
        ActivateBalloonHint(PnlAtualizacaoPendente, 'ATUALIZAÇÃO', 'Existe uma atualização pendente. Para efetua-lá' + sLineBreak +
                                                            'certifique-se de que não tenha nenhuma movimentação' + sLineBreak +
                                                            'pendente e clique em Atualizar Sistema.');
      end;
      SolicitaAtualizacao.Enabled := False;
      Exit;
    end else
    if QuerX.FieldByName('ERRO_CONEXAO').AsInteger = 1 then
    begin
      with FrmPrincipal do
        ActivateBalloonHint(PnlAtualizacaoPendente, 'ATUALIZAÇÃO', QuerX.FieldByName('MESSAGE_ERRO').AsString);
      //ShowMessageWR(QuerX.FieldByName('MESSAGE_ERRO').AsString, MB_ICONEXCLAMATION);
      QuerA.SQL.Text := 'update SOLICITACAO set SOLICITA = 0, ERRO_CONEXAO = 0';
      QuerA.ExecSQL;
      FDTransaction.Commit;
      FrmAtualizacaoPendente.Form.Close;
      TimerProgressoDownload.Enabled := False;
    //  FrmPrincipal.CancelHint;
      SolicitaAtualizacao.Enabled := False;
      while I <= 3 do
      begin
        try
          FrmRegistro := TFrmRegistro.Create(nil);
          with FrmRegistro do
          try
            if OpenConnection then
            begin
              try
                AtualizarSistema(False)
              finally
                CloseConnection;
              end;
              I := 1000;
            end else
            begin
              Inc(I);
              if I > 3 then
              begin
                ShowMessageWR('Não foi possível conectar-se ao servidor. Verifique sua conexão e tente novamente.');
                SolicitaAtualizacao.Enabled := False;
                Break;
              end;
            end;
          finally
            FreeAndNil(FrmRegistro);
          end;
        except end;
      end;
    end else
    if (QuerX.FieldByName('SOLICITA').AsInteger = 0) and (QuerX.FieldByName('ERRO_CONEXAO').AsInteger = 1) then
    begin
      ShowMessageWR('Não foi possível baixar a atualização. Verifique sua conexão e tente novamente.',MB_ICONINFORMATION);
      SolicitaAtualizacao.Enabled := False;
      Exit;
    end;
  finally
    QuerX.Free;
  end;
  SolicitaAtualizacao.Enabled := True;
end;

procedure TDMAtualizacao.TimerProgressoDownloadTimer(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select PROGRESSO_DOWNLOAD from SOLICITACAO';
    QuerX.Open;
    FrmPrincipal.LbAtualizacaoPendente.Caption := 'Download em andamento: ' + QuerX.Fields[0].AsString + '%';
  finally
    QuerX.Free;
  end;
end;

function TDMAtualizacao.VerificaServidor: Boolean;
var
  QuerX : TFDQuery;
  I : Integer;
begin
  Result := False;
  QuerX := GeraFDQuery;
  try
    while True do
    begin
      QuerX.SQL.Text := 'select VERIFICA_SERVIDOR from SOLICITACAO';
      try
        QuerX.Open;
        if QuerX.Fields[0].AsInteger = 1 then
        begin
          Result := True;
          Break;
        end else
        begin
          if I = 1 then
            Break;
          Sleep(2000);
          Application.ProcessMessages;
          Inc(I);
        end;
      except
        Break;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TDMAtualizacao.GravaExeBanco(tempFile, AVersao, AVersaoObrigatoria: string);
var
  QuerX : TFDQuery;
  AExec : TMemoryStream;
begin
  QuerX := GeraFDQuery(FDTransaction);
  AExec := TMemoryStream.Create;
  try
    QuerX.SQL.Text := 'DELETE from ATUALIZACAO';
    QuerX.ExecSQL;
    QuerX.SQL.Text := 'select ARQUIVO,CODIGO,DT_DOWNLOAD,VERSAO_OBRIGATORIA from ATUALIZACAO';
    QuerX.Open;
    AExec.LoadFromFile(tempFile);
    QuerX.FieldByName('CODIGO').AsInteger       := 1;
    QuerX.FieldByName('VERSAO').AsString        := AVersao;
    QuerX.FieldByName('DT_DOWNLOAD').AsDateTime := DataHoraSys;
  //  TBlobField(QuerX.FieldByName('ARQUIVO')).LoadFromStream(AExec, ftBlob);
    if AVersaoObrigatoria <> '' then
      QuerX.ParamByName('VERSAO_OBRIGATORIA').AsString := AVersaoObrigatoria;
    QuerX.Post;
    FDTransaction.Commit;
  finally
    QuerX.Free;
    AExec.Free;
  end;
end;

end.
