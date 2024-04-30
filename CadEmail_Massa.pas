unit CadEmail_Massa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  Vcl.Menus, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxDBNavigator, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxStatusBar, cxLabel, cxMemo, cxDBLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxBarBuiltInMenu, dxRichEdit.Platform.Win.Control,
  dxRichEdit.Control.Core, cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, Winapi.ShellAPI, cxImageList,
  frxClass, frxDBSet, UCHistDataset, cxDropDownEdit, dxDateRanges, dxUIAdorners,
  fs_iinterpreter, System.Generics.Collections, dxScrollbarAnnotations, WRButtonsEditAdd, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmEmail_Massa = class(TFrmCadM)
    dxLayoutGroup1: TdxLayoutGroup;
    GridMensagensView: TcxGridDBTableView;
    GridMensagensLevel1: TcxGridLevel;
    GridMensagens: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    GridAnexosView: TcxGridDBTableView;
    GridAnexosLevel1: TcxGridLevel;
    GridAnexos: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    btnEnviarEmails: TcxButton;
    libtnEnviarEmails: TdxLayoutItem;
    btnMenu: TcxButton;
    libtnMenu: TdxLayoutItem;
    MenuGridMensagens: TPopupMenu;
    DSEmail_Massa_Mensagem: TDataSource;
    GridMensagensViewCODIGO: TcxGridDBColumn;
    GridMensagensViewDESTINATARIO: TcxGridDBColumn;
    GridMensagensViewASSUNTO: TcxGridDBColumn;
    GridMensagensViewSITUACAO: TcxGridDBColumn;
    GridMensagensViewDT_ENVIADO: TcxGridDBColumn;
    DSEmail_Massa_Mensagem_Anexo: TDataSource;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutSplitterItem3: TdxLayoutSplitterItem;
    GridAnexosViewCAMINHO: TcxGridDBColumn;
    liedtDadosEmail: TdxLayoutItem;
    edtDadosEmail: TdxRichEditControl;
    GridMensagensViewSITUACAO_MOTIVO: TcxGridDBColumn;
    edtCodEmail_ContaÎEMAIL_CONTA: TcxDBButtonEdit;
    liedtCodEmail_ContaÎEMAIL_CONTA: TdxLayoutItem;
    lblCodEmail_ContaÎEMAIL_CONTAÎDESCRICAO: TcxLabel;
    lilblCodEmail_ContaÎEMAIL_CONTAÎDESCRICAO: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    TabEmails: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    edtCodModeloÎEmail_Modelo: TcxDBButtonEdit;
    liedtCodModeloÎEmail_Modelo: TdxLayoutItem;
    lilblCodModeloÎEmail_ModeloÎDESCRICAO: TdxLayoutItem;
    lblCodModeloÎEmail_ModeloÎDESCRICAO: TcxLabel;
    GridMensagensViewRAZAOSOCIAL: TcxGridDBColumn;
    ExcluirMensagem1: TMenuItem;
    ActionList1: TActionList;
    ActExcluirMensagem: TAction;
    ActExcluirAnexo: TAction;
    MenuGridAnexos: TPopupMenu;
    EcluirAnexo1: TMenuItem;
    ActInserirAnexo: TAction;
    OpenDialog1: TOpenDialog;
    EcluirAnexo2: TMenuItem;
    ActExcluirMensagensNaoEnviadas: TAction;
    ExcluirMensagensNoEnviadas1: TMenuItem;
    PnlAssunto: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtAssunto: TcxTextEdit;
    liedtAssunto: TdxLayoutItem;
    btnAplicarAssunto: TcxButton;
    libtnAplicarAssunto: TdxLayoutItem;
    btnCancelarAssunto: TcxButton;
    libtnCancelarAssunto: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    ActAlterarAssunto: TAction;
    AlterarAssunto1: TMenuItem;
    BtnAdicionarAnexo: TcxButton;
    liBtnAdicionarAnexo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    btnRemoverAnexo: TcxButton;
    libtnRemoverAnexo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    ImgLstAcoes: TcxImageList;
    Abrir1: TMenuItem;
    ActAbrirAnexo: TAction;
    edtTags: TcxMemo;
    liedtTags: TdxLayoutItem;
    GridAnexosViewArquivoExiste: TcxGridDBColumn;
    ActNovoEmail: TAction;
    NovoEmail1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Email_Massa_Mensagem: TFDQuery;
    Email_Massa_Mensagem_Anexo: TFDQuery;
    lblSituacaoDesc: TcxDBTextEdit;
    lilblSituacaoDesc: TdxLayoutItem;
    lilblCodEmail_ContaÎEMAIL_CONTAÎEmail: TdxLayoutItem;
    lblCodEmail_ContaÎEMAIL_CONTAÎEmail: TcxLabel;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    Email_Massa_Mensagem_AnexoArquivoExiste: TBooleanField;
    CadastroSituacaoDesc: TStringField;
    Email_Massa_MensagemSituacaoDesc: TStringField;
    procedure GridMensagensViewDblClick(Sender: TObject);
    procedure btnEnviarEmailsClick(Sender: TObject);
    procedure GridMensagensViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActExcluirMensagemExecute(Sender: TObject);
    procedure ActExcluirAnexoExecute(Sender: TObject);
    procedure ActInserirAnexoExecute(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure ActExcluirMensagensNaoEnviadasExecute(Sender: TObject);
    procedure GridAnexosViewDblClick(Sender: TObject);
    procedure btnCancelarAssuntoClick(Sender: TObject);
    procedure btnAplicarAssuntoClick(Sender: TObject);
    procedure ActAlterarAssuntoExecute(Sender: TObject);
    procedure ActAbrirAnexoExecute(Sender: TObject);
    procedure GridAnexosViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridAnexosViewCAMINHOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure ActNovoEmailExecute(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeDelete(DataSet: TDataSet);
    procedure CadastroAfterClose(DataSet: TDataSet);
    procedure Email_Massa_MensagemAfterInsert(DataSet: TDataSet);
    procedure Email_Massa_MensagemAfterOpen(DataSet: TDataSet);
    procedure Email_Massa_MensagemBeforeClose(DataSet: TDataSet);
    procedure Email_Massa_MensagemBeforeDelete(DataSet: TDataSet);
    procedure Email_Massa_Mensagem_AnexoAfterInsert(DataSet: TDataSet);
    procedure Email_Massa_Mensagem_AnexoCalcFields(DataSet: TDataSet);
    procedure LbSituacaoPropertiesChange(Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure Email_Massa_MensagemCalcFields(DataSet: TDataSet);
    procedure GridMensagensViewFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    procedure EditarEmailSelecionado;
    procedure CarregarConteudoMensagem;
    procedure BeginUpdateGrids;
    procedure EndUpdateGrids;

    class procedure AtualizaStatusEmailMassa(ATransa: TComponent; ACodEmailMassa: Integer);
    class procedure InicializarEmailMassa(ADataSet: TDataSet);
    class procedure InicializarEmailMassaMensagem(ACodEmailMassa: Integer; ADataSet: TDataSet);
    class procedure InicializarEmailMassaMensagemAnexo(ACodMensagem: Integer; ADataSet: TDataSet);
    class procedure SalvaConteudo(ARich: TdxRichEditControl; ADataSet: TDataSet);
  public
    { Public declarations }
    class function NovoEmailMassa(ATransa: TFDCustomTransaction; const ADescricao: string; ACodModelo: Integer): Integer;
    class function NovaMensagem(ATransa: TFDCustomTransaction; ACodEmailMassa: Integer; const ACodPessoa, ADestinatario,
      AAssunto, AConteudo: string; AAnexos: TStrings; ADados: TDataSet): Integer;
    class procedure ExcluirMensagem(ATransa: TComponent; ACodigo: Integer; ASilent: Boolean = False);
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, Email, ConEmail_Massa, Aguarde, Generics.Collections, UnitFuncoes, Email_Configuracoes, StrUtils,
  Classes.WR, wrConversao, wrConstantes;

procedure TFrmEmail_Massa.ActAbrirAnexoExecute(Sender: TObject);
begin
  inherited;
  if Email_Massa_Mensagem_Anexo.IsEmpty then
    Exit;
  if not FileExists(Email_Massa_Mensagem_Anexo.FieldByName('CAMINHO').AsString) then
    ShowMessageWR('Arquivo não encontrado: ' + Email_Massa_Mensagem_Anexo.FieldByName('CAMINHO').AsString, MB_ICONWARNING)
  else
    ShellExecute(Handle, 'OPEN', PWideChar(Email_Massa_Mensagem_Anexo.FieldByName('CAMINHO').AsString), nil, nil, SW_SHOW);
end;

procedure TFrmEmail_Massa.ActAlterarAssuntoExecute(Sender: TObject);
begin
  inherited;
  EdtAssunto.Text := Email_Massa_Mensagem.FieldByName('ASSUNTO').AsString;
  ShowPanelForm(PnlAssunto, bsSingle);
end;

procedure TFrmEmail_Massa.ActExcluirAnexoExecute(Sender: TObject);
begin
  inherited;
  if Email_Massa_Mensagem_Anexo.IsEmpty then
    Exit;

  if Email_Massa_Mensagem.FieldByName('SITUACAO').AsString = emmsEnviado.Codigo then
  begin
    ShowMessageWR('Esta mensagem já foi enviada e não pode mais ser alterada');
    Exit;
  end;

  if ShowMessageWR('Deseja excluir este Anexo?', MB_ICONQUESTION) <> mrYes then
    Exit;
  VerificaSePodeAlteraDataSet;
  Email_Massa_Mensagem_Anexo.Delete;
end;

procedure TFrmEmail_Massa.ActExcluirMensagemExecute(Sender: TObject);
begin
  inherited;
  if Email_Massa_Mensagem.IsEmpty then
    Exit;

  if ShowMessageWR('Deseja excluir esta mensagem?', MB_ICONQUESTION) <> mrYes then
    Exit;
  TFrmEmail_Massa.ExcluirMensagem(nil, Email_Massa_Mensagem.FieldByName('CODIGO').AsInteger);
  CloseOpenGridView(Cadastro, GridMensagensView);
end;

procedure TFrmEmail_Massa.ActExcluirMensagensNaoEnviadasExecute(Sender: TObject);
var
  ATransa: TFDTransaction;
begin
  inherited;
  if Email_Massa_Mensagem.IsEmpty then
    Exit;

  if ShowMessageWR('Deseja excluir TODAS as mensagens que ainda Não foram enviadas?', MB_ICONQUESTION) <> mrYes then
    Exit;

  BeginUpdateGrids;
  Email_Massa_Mensagem.DisableControls;
  ATransa := GeraFDTransacao;
  try
    Email_Massa_Mensagem.First;
    while not Email_Massa_Mensagem.Eof do
    begin
      if Email_Massa_Mensagem.FieldByName('SITUACAO').AsString <> emmsEnviado.Codigo then
        TFrmEmail_Massa.ExcluirMensagem(ATransa, Email_Massa_Mensagem.FieldByName('CODIGO').AsInteger);
      Email_Massa_Mensagem.Next;
    end;
    if ATransa.Active then
      ATransa.Commit;
    CloseOpenGridView(Cadastro, GridMensagensView);
  finally
    ATransa.Free;
    Email_Massa_Mensagem.EnableControls;
    EndUpdateGrids;
  end;
end;

procedure TFrmEmail_Massa.ActInserirAnexoExecute(Sender: TObject);
var
  AOpenDialog: TOpenDialog;
  i: Integer;
begin
  inherited;
  if Email_Massa_Mensagem.FieldByName('SITUACAO').AsString = emmsEnviado.Codigo then
  begin
    ShowMessageWR('Esta mensagem já foi enviada e não pode mais ser alterada');
    Exit;
  end;

  AOpenDialog := TOpenDialog.Create(Self);
  try
    AOpenDialog.Options := AOpenDialog.Options + [ofFileMustExist, ofAllowMultiSelect];
    if AOpenDialog.Execute then
    begin
      VerificaSePodeAlteraDataSet;
      for I := 0 to AOpenDialog.Files.Count - 1 do
      begin
        Email_Massa_Mensagem_Anexo.Insert;
        Email_Massa_Mensagem_Anexo.FieldByName('CAMINHO').AsString := AOpenDialog.Files[i];
        Email_Massa_Mensagem_Anexo.Post;
      end;
    end;
  finally
    AOpenDialog.Free;
  end;
end;

procedure TFrmEmail_Massa.ActNovoEmailExecute(Sender: TObject);
var
  ACodMensagem: Integer;
  ATransa: TFDTransaction;
begin
  inherited;
  if Cadastro.IsEmpty then
    Exit;

  ATransa := GeraFDTransacao;
  try
    ACodMensagem := NovaMensagem(ATransa, Cadastro.FieldByName('CODIGO').AsInteger, '', '', '', '', nil, nil);
    ATransa.Commit;
  finally
    ATransa.Free;
  end;
  CloseOpenGridView(Cadastro, GridMensagensView);
  Email_Massa_Mensagem.Locate('CODIGO', ACodMensagem, []);
  EditarEmailSelecionado;
end;

class procedure TFrmEmail_Massa.AtualizaStatusEmailMassa(ATransa: TComponent; ACodEmailMassa: Integer);
var
  QuerX: TWRDataSet;
  ATransaLocal: TComponent;
  ASituacao: TEmailMassaSituacao;
begin
  ATransaLocal := ATransa;
  if ATransaLocal = nil then
    ATransaLocal := GeraFDTransacao;
  QuerX := TWRDataSet.Create(ATransaLocal);
  try
    QuerX.SQL.Text := 'select distinct SITUACAO ' +
                      'from EMAIL_MASSA_MENSAGEM ' +
                      'where (CODEMAIL_MASSA = :Cod)';
    QuerX.Params[0].AsInteger := ACodEmailMassa;
    QuerX.Open;
    if QuerX.Locate('SITUACAO', emmsFalhaEnvio.Codigo) then
      ASituacao := emsMensagensPendentes
    else if QuerX.Locate('SITUACAO', emmsEnviado.Codigo) and not QuerX.Locate('SITUACAO', emmsAguardandoEnvio.Codigo) then
      ASituacao := emsEnvioConcluido
    else
      ASituacao := emsAguardandoEnvio;

    QuerX.Close;
    QuerX.SQL.Text := 'update EMAIL_MASSA set SITUACAO = :Situacao ' +
                      'where (CODIGO = :Codigo)';
    QuerX.ParamByName('Situacao').AsString := ASituacao.Codigo;
    QuerX.ParamByName('Codigo').AsInteger  := ACodEmailMassa;
    QuerX.ExecSQL;

    if ATransaLocal <> ATransa then
      ComitaTransacao(ATransaLocal);
  finally
    QuerX.Free;
    if ATransaLocal <> ATransa then
      ATransaLocal.Free;
  end;
end;

procedure TFrmEmail_Massa.BeginUpdateGrids;
begin
  GridMensagensView.BeginUpdate;
  GridAnexosView.BeginUpdate;
end;

procedure TFrmEmail_Massa.btnAplicarAssuntoClick(Sender: TObject);
var
  AAssunto: string;
begin
  inherited;
  BeginUpdateGrids;
  try
    VerificaSePodeAlteraDataSet;
    Email_Massa_Mensagem.First;
    while not Email_Massa_Mensagem.Eof do
    begin
      if Email_Massa_Mensagem.FieldByName('SITUACAO').AsString <> emmsEnviado.Codigo then
      begin
        AAssunto := ReplaceText(EdtAssunto.Text, '{RazaoSocial}', Email_Massa_Mensagem.FieldByName('RAZAOSOCIAL').Text);
        AAssunto := ReplaceText(AAssunto, '{Hoje}', FormatDateTime(DATA_SIMPLES, DataHoraSys));
        AAssunto := ReplaceText(AAssunto, '{Agora}', FormatDateTime(DATA_HORA_NS, DataHoraSys));
        AAssunto := ReplaceText(AAssunto, '{Mes}', PrimeirasMaiusculas(FormatDateTime('MMMM', DataHoraSys)));
        AAssunto := ReplaceText(AAssunto, '{Ano}', FormatDateTime('YYYY', DataHoraSys));
        AAssunto := ReplaceText(AAssunto, '{MesEAno}', FormatDateTime('MMMM ''de'' YYYY', DataHoraSys));

        Email_Massa_Mensagem.Edit;
        Email_Massa_Mensagem.FieldByName('ASSUNTO').AsString := AAssunto;
        Email_Massa_Mensagem.Post;
      end;
      Email_Massa_Mensagem.Next;
    end;
  finally
    EndUpdateGrids;
  end;
  FechaPanelForm(PnlAssunto);
end;

procedure TFrmEmail_Massa.btnCancelarAssuntoClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlAssunto);
end;

procedure TFrmEmail_Massa.EndUpdateGrids;
begin
  GridMensagensView.EndUpdate;
  GridAnexosView.EndUpdate;
end;

class procedure TFrmEmail_Massa.ExcluirMensagem(ATransa: TComponent; ACodigo: Integer; ASilent: Boolean = False);
var
  QuerX: TWRDataSet;
  ATransaLocal: TComponent;
  ACodEmailMassa: Integer;
begin
  ATransaLocal := ATransa;
  if ATransaLocal = nil then
    ATransaLocal := GeraFDTransacao;
  QuerX := TWRDataSet.Create(ATransaLocal);
  try
    QuerX.SQL.Text := 'select SITUACAO, CODEMAIL_MASSA ' +
                      'from EMAIL_MASSA_MENSAGEM ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.Open;
    if QuerX.FieldByName('SITUACAO').AsString = emmsEnviado.Codigo then
    begin     //Colocar esta regra como permissão administrativa
      if not ASilent then
        ShowMessageWR('Esta mensagem já foi enviada e não pode mais ser excluída', MB_ICONWARNING);
      Exit;
    end;
    ACodEmailMassa := QuerX.FieldByName('CODEMAIL_MASSA').AsInteger;
    QuerX.Close;

    QuerX.SQL.Text := 'delete from EMAIL_MASSA_MENSAGEM_ANEXO ' +
                      'where (CODEMAIL_MASSA_MENSAGEM = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.ExecSQL;

    QuerX.SQL.Text := 'delete from EMAIL_MASSA_MENSAGEM ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodigo;
    QuerX.ExecSQL;

    AtualizaStatusEmailMassa(ATransaLocal, ACodEmailMassa);

    if ATransaLocal <> ATransa then
      ComitaTransacao(ATransaLocal);
  finally
    QuerX.Free;
    if ATransaLocal <> ATransa then
      ATransaLocal.Free;
  end;
end;

procedure TFrmEmail_Massa.btnEnviarEmailsClick(Sender: TObject);
var
  QuerX, QuerAnexos, QuerMensagens: TFDQuery;
  AAnexos: TStringList;
  AFrmAguarde: TFrmAguarde;
  I: Integer;
  ATransa: TFDTransaction;
  ADestinatario: string;
begin
  inherited;
  try
    ATransa := GeraFDTransacao;
    QuerX := GeraFDQuery;
    QuerMensagens := GeraFDQuery(ATransa);
    QuerAnexos := GeraFDQuery(ATransa);
    AAnexos := TStringList.Create;
    TFrmEmail.LancarExcecoesEmail := True;
    AFrmAguarde := TFrmAguarde.Create(nil);
    try
      AFrmAguarde.ExibirCancelar := True;
      AFrmAguarde.Mensagem  := 'Enviando Emails. Aguarde...';
      AFrmAguarde.FormStyle := fsNormal;
      AFrmAguarde.Show;

      QuerAnexos.SQL.Text := 'select CAMINHO ' +
                             'from EMAIL_MASSA_MENSAGEM_ANEXO ' +
                             'where (CODEMAIL_MASSA_MENSAGEM = ?)';

      QuerMensagens.SQL.Text := 'select CODIGO, DESTINATARIO, ASSUNTO, SITUACAO, SITUACAO_MOTIVO, DT_ENVIADO, CONTEUDO_HTML ' +
                                'from EMAIL_MASSA_MENSAGEM ' +
                                'where (CODIGO = ?)';

      //Gera uma query fora da transação para que a transação possa ser comitada a cada email enviado
      QuerX.SQL.Text := 'select CODIGO ' +
                        'from EMAIL_MASSA_MENSAGEM ' +
                        'where (CODEMAIL_MASSA = :Cod) ' +
                        '      and (SITUACAO in (' + QuotedStr(emmsAguardandoEnvio.Codigo) + ', ' + QuotedStr(emmsFalhaEnvio.Codigo) + '))';
      QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
      QuerX.Open;
      QuerX.FetchAll;
      AFrmAguarde.ProgressoMaximo := QuerX.RecordCount;
      while not QuerX.Eof do
      begin
        Application.ProcessMessages;
        if AFrmAguarde.Cancelado then
          Exit;

        QuerMensagens.Close;
        QuerMensagens.Params[0].AsInteger := QuerX.Fields[0].AsInteger;
        QuerMensagens.Open;

        QuerAnexos.Close;
        QuerAnexos.Params[0].Value := QuerMensagens.FieldByName('CODIGO').Value;
        QuerAnexos.Open;

        try
          //Cria a lista de Anexos
          AAnexos.Clear;
          while not QuerAnexos.Eof do
          begin
            if not FileExists(QuerAnexos.Fields[0].AsString) then
              GeraExcecao('Arquivo anexo não encontrado: ' + QuerAnexos.Fields[0].AsString);
            AAnexos.Add(QuerAnexos.Fields[0].AsString);
            QuerAnexos.Next;
          end;

          ADestinatario := {$IFDEF DEBUG} 'desenvolvimento@wr2.com.br' {$ELSE} QuerMensagens.FieldByName('DESTINATARIO').AsString {$ENDIF};
          TFrmEmail.EnviarEmail(
            Cadastro.FieldByName('CODEMAIL_CONTA').AsInteger, ADestinatario, '',
            QuerMensagens.FieldByName('ASSUNTO').AsString, QuerMensagens.FieldByName('CONTEUDO_HTML').AsString, AAnexos);
          QuerMensagens.Edit;
          QuerMensagens.FieldByName('SITUACAO_MOTIVO').Clear;
          QuerMensagens.FieldByName('SITUACAO').AsString     := emmsEnviado.Codigo;
          QuerMensagens.FieldByName('DT_ENVIADO').AsDateTime := DataHoraSys;
          QuerMensagens.Post;
        except
          on E:Exception do
          begin
            QuerMensagens.Edit;
            QuerMensagens.FieldByName('SITUACAO').AsString        := emmsFalhaEnvio.Codigo;
            QuerMensagens.FieldByName('SITUACAO_MOTIVO').AsString := E.Message;
            QuerMensagens.FieldByName('DT_ENVIADO').Clear;
            QuerMensagens.Post;
          end;
        end;

        //Comita a cada tentativa de envio de email
        ATransa.Commit;

        QuerX.Next;
        AFrmAguarde.AvancarProgresso;
      end;
    finally
      TFrmEmail.LancarExcecoesEmail := False;
      QuerMensagens.Free;
      QuerAnexos.Free;
      QuerX.Free;
      ATransa.Free;
      AAnexos.Free;
      AFrmAguarde.Free;
    end;
  finally
    AtualizaStatusEmailMassa(nil, Cadastro.FieldByName('CODIGO').AsInteger);
    CloseOpenGridView(Cadastro, GridMensagensView);
  end;
end;

procedure TFrmEmail_Massa.btnExcluirClick(Sender: TObject);
begin
  BeginUpdateGrids;
  try
    Email_Massa_Mensagem.DisableControls;
    try
      Email_Massa_Mensagem.First;
      while not Email_Massa_Mensagem.Eof do
      begin
        if Email_Massa_Mensagem.FieldByName('SITUACAO').AsString = emmsEnviado.Codigo then
        begin
          ShowMessageWR('Há mensagens já enviadas neste lote de mensagens, não é possível excluir');
          Exit;
        end;
        Email_Massa_Mensagem.Next;
      end;
    finally
      Email_Massa_Mensagem.EnableControls;
    end;
    inherited;
  finally
    EndUpdateGrids;
  end;
end;

procedure TFrmEmail_Massa.CadastroAfterClose(DataSet: TDataSet);
begin
  inherited;
  Email_Massa_Mensagem.Close;
end;

procedure TFrmEmail_Massa.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  InicializarEmailMassa(Cadastro);
end;

procedure TFrmEmail_Massa.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //Há eventos nos Fields dos datasets. Cuidado ao remover os fields e adicionar novamente no dataset.
  inherited;
  Email_Massa_Mensagem.Open;
end;

procedure TFrmEmail_Massa.CadastroBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while not Email_Massa_Mensagem.IsEmpty do
    Email_Massa_Mensagem.Delete;
end;

procedure TFrmEmail_Massa.CadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('SituacaoDesc').AsString := TEmailMassaSituacao.GetFromCodigo(Cadastro.FieldByName('SITUACAO').AsString).Descricao;
end;

procedure TFrmEmail_Massa.CarregarConteudoMensagem;
var
  AStream: TStringStream;
begin
  inherited;
  if Email_Massa_Mensagem.IsEmpty then
  begin
    edtDadosEmail.LoadDocument(nil, TdxRichEditDocumentFormat.Rtf);
    Exit;
  end;
  AStream := TStringStream.Create(Email_Massa_Mensagem.FieldByName('CONTEUDO').AsString);
  try
    edtDadosEmail.LoadDocument(AStream, TdxRichEditDocumentFormat.Rtf);
  finally
    AStream.Free;
  end;
end;

procedure TFrmEmail_Massa.GridAnexosViewCAMINHOGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  if (ARecord <> nil) and not ARecord.Values[GridAnexosViewArquivoExiste.Index] then
    AHintText := 'Arquivo não encontrado';
end;

procedure TFrmEmail_Massa.GridAnexosViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not AViewInfo.GridRecord.Values[GridAnexosViewArquivoExiste.Index] then
    ACanvas.Brush.Color := $008484FF;
end;

procedure TFrmEmail_Massa.GridAnexosViewDblClick(Sender: TObject);
begin
  inherited;
  ActAbrirAnexo.Execute;
end;

procedure TFrmEmail_Massa.GridMensagensViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Item = GridMensagensViewSITUACAO then
    ACanvas.Font.Color := TEmailMassaMensagemSituacao.GetFromCodigo(VarToStrDef(AViewInfo.GridRecord.Values[GridMensagensViewSITUACAO.Index], '')).Cor;
end;

procedure TFrmEmail_Massa.GridMensagensViewDblClick(Sender: TObject);
begin
  inherited;
  if not Email_Massa_Mensagem.IsEmpty then
    EditarEmailSelecionado;
end;

procedure TFrmEmail_Massa.GridMensagensViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  CarregarConteudoMensagem;
end;

procedure TFrmEmail_Massa.DSStateChange(Sender: TObject);
begin
  inherited;
  BtnEnviarEmails.Enabled := not Cadastro.IsEmpty and
                             not (Cadastro.State in dsEditModes) and
                             (Cadastro.FieldByName('SITUACAO').AsString <> emsEnvioConcluido.Codigo);
end;

procedure TFrmEmail_Massa.EditarEmailSelecionado;
var
  AFrmEmail: TFrmEmail;
  AStream: TStream;
begin
  AFrmEmail := TFrmEmail.Create(nil, '');
  try
    AFrmEmail.ModoEdicaoEmail := True;
    AFrmEmail.EdtEdicaoAssunto.Text := Email_Massa_Mensagem.FieldByName('ASSUNTO').AsString;
    AFrmEmail.EdtEdicaoPara.Text    := Email_Massa_Mensagem.FieldByName('DESTINATARIO').AsString;
    AStream := TStringStream.Create(Email_Massa_Mensagem.FieldByName('CONTEUDO').AsString);
    try
      AFrmEmail.RichEmail.LoadDocument(AStream, TdxRichEditDocumentFormat.Rtf);
    finally
      AStream.Free;
    end;
    if (AFrmEmail.ShowModal = mrOk) and (Email_Massa_Mensagem.FieldByName('SITUACAO').AsString <> emmsEnviado.Codigo) then
    begin
      VerificaSePodeAlteraDataSet;
      Email_Massa_Mensagem.Edit;
      SalvaConteudo(AFrmEmail.RichEmail, Email_Massa_Mensagem);
      Email_Massa_Mensagem.FieldByName('ASSUNTO').AsString      := AFrmEmail.EdtEdicaoAssunto.Text;
      Email_Massa_Mensagem.FieldByName('DESTINATARIO').AsString := AFrmEmail.EdtEdicaoPara.Text;
      Email_Massa_Mensagem.Post;
      CarregarConteudoMensagem;
    end;
  finally
    AFrmEmail.Free;
  end;
end;

procedure TFrmEmail_Massa.Email_Massa_MensagemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  InicializarEmailMassaMensagem(Cadastro.FieldByName('CODIGO').AsInteger, Email_Massa_Mensagem);
end;

procedure TFrmEmail_Massa.Email_Massa_MensagemAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Email_Massa_Mensagem_Anexo.Open;
end;

procedure TFrmEmail_Massa.Email_Massa_MensagemBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Email_Massa_Mensagem_Anexo.Close;
end;

procedure TFrmEmail_Massa.Email_Massa_MensagemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  while not Email_Massa_Mensagem_Anexo.IsEmpty do
    Email_Massa_Mensagem_Anexo.Delete;
end;

procedure TFrmEmail_Massa.Email_Massa_MensagemCalcFields(DataSet: TDataSet);
begin
  inherited;
  Email_Massa_Mensagem.FieldByName('SituacaoDesc').AsString := TEmailMassaMensagemSituacao.GetFromCodigo(Email_Massa_Mensagem.FieldByName('SITUACAO').AsString).Descricao;
end;

procedure TFrmEmail_Massa.Email_Massa_Mensagem_AnexoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  InicializarEmailMassaMensagemAnexo(Email_Massa_Mensagem.FieldByName('CODIGO').AsInteger, Email_Massa_Mensagem_Anexo);
end;

procedure TFrmEmail_Massa.Email_Massa_Mensagem_AnexoCalcFields(DataSet: TDataSet);
begin
  inherited;
  Email_Massa_Mensagem_Anexo.FieldByName('ArquivoExiste').AsBoolean := FileExists(Email_Massa_Mensagem_Anexo.FieldByName('CAMINHO').AsString);
end;

procedure TFrmEmail_Massa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_UP, VK_DOWN]) and IsGridFocused(GridMensagens) then
    Exit;
  inherited;
end;

class procedure TFrmEmail_Massa.InicializarEmailMassa(ADataSet: TDataSet);
begin
  //Rotina padrão de inicialização do dataset Email_Massa.
  //Usada tanto pela tela quanto pelas class procedures de geração de emails em massa

  ADataSet.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_EMAIL_MASSA'));
  ADataSet.FieldByName('SITUACAO').AsString    := emsAguardandoEnvio.Codigo;
  ADataSet.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
end;

class procedure TFrmEmail_Massa.InicializarEmailMassaMensagem(ACodEmailMassa: Integer; ADataSet: TDataSet);
begin
  ADataSet.FieldByName('CODIGO').AsInteger         := Trunc(GetProximoCodigoGen('CR_EMAIL_MASSA_MENSAGEM'));
  ADataSet.FieldByName('CODEMAIL_MASSA').AsInteger := ACodEmailMassa;
  ADataSet.FieldByName('SITUACAO').AsString        := emmsAguardandoEnvio.Codigo;
end;

class procedure TFrmEmail_Massa.InicializarEmailMassaMensagemAnexo(ACodMensagem: Integer; ADataSet: TDataSet);
begin
  ADataSet.FieldByName('CODIGO').AsInteger                  := Trunc(GetProximoCodigoGen('CR_EMAIL_MASSA_MENSAGEM_ANEXO'));
  ADataSet.FieldByName('CODEMAIL_MASSA_MENSAGEM').AsInteger := ACodMensagem;
end;

procedure TFrmEmail_Massa.LbSituacaoPropertiesChange(Sender: TObject);
begin
  inherited;
  lblSituacaoDesc.Style.TextColor := TEmailMassaSituacao.GetFromCodigo(lblSituacaoDesc.Text).Cor;
end;

class function TFrmEmail_Massa.NovaMensagem(ATransa: TFDCustomTransaction; ACodEmailMassa: Integer; const ACodPessoa,
  ADestinatario, AAssunto, AConteudo: string; AAnexos: TStrings; ADados: TDataSet): Integer;
var
  QuerX, QuerModelo: TFDQuery;
  I: Integer;
  AFrmEmail: TFrmEmail;
begin
  QuerX := GeraFDQuery(ATransa);
  QuerModelo := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODEMAIL_MASSA, DESTINATARIO, ASSUNTO, SITUACAO, CONTEUDO, CONTEUDO_HTML, CODPESSOA ' +
                      'from EMAIL_MASSA_MENSAGEM ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    InicializarEmailMassaMensagem(ACodEmailMassa, QuerX);
    QuerX.FieldByName('DESTINATARIO').AsString := ADestinatario;
    QuerX.FieldByName('ASSUNTO').AsString      := AAssunto;
    QuerX.FieldByName('CODPESSOA').AsNotEmpty  := ACodPessoa;
    if AConteudo = '' then
    begin
      QuerModelo.SQL.Text := 'select E.CODEMAIL_MODELO ' +
                             'from EMAIL_MASSA E ' +
                             'where (E.CODIGO = :Cod)';
      QuerModelo.Params[0].AsInteger := ACodEmailMassa;
      QuerModelo.Open;
      if QuerModelo.Fields[0].AsInteger <> 0 then
      begin
        AFrmEmail := TFrmEmail.Create(nil, ''); // <-- Lento! Melhorar e criar uma rotina para carregar o modelo no Rich
        try
          if ADados <> nil then
            AFrmEmail.DSDados.DataSet := ADados;
          AFrmEmail.CarregarModelo(QuerModelo.Fields[0].AsInteger);
          SalvaConteudo(AFrmEmail.RichEmail, QuerX);
        finally
          AFrmEmail.Free;
        end;
      end;
    end else
      QuerX.FieldByName('CONTEUDO').AsString := AConteudo;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
//    AtualizaDtAlteracao(QuerX);
    QuerX.Post;

    if (AAnexos <> nil) and (AAnexos.Count > 0) then
    begin
      QuerX.Close;
      QuerX.SQL.Text := 'select CODIGO, CODEMAIL_MASSA_MENSAGEM, CAMINHO ' +
                        'from EMAIL_MASSA_MENSAGEM_ANEXO ' +
                        'where (CODIGO is null)';
      QuerX.Open;
      for I := 0 to AAnexos.Count - 1 do
      begin
        QuerX.Insert;
        InicializarEmailMassaMensagemAnexo(Result, QuerX);
        QuerX.FieldByName('CAMINHO').AsString := AAnexos[i];
        QuerX.Post;
      end;
    end;
    AtualizaStatusEmailMassa(ATransa, ACodEmailMassa);
  finally
    QuerX.Free;
    QuerModelo.Free;
  end;
end;

class function TFrmEmail_Massa.NovoEmailMassa(ATransa: TFDCustomTransaction; const ADescricao: string; ACodModelo: Integer): Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO, DT_ALTERACAO, CODUSUARIO, SITUACAO, CODEMAIL_MODELO, CODEMAIL_CONTA, ATIVO ' +
                      'from EMAIL_MASSA ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    InicializarEmailMassa(QuerX);
    AtualizaDtAlteracao(QuerX);
    QuerX.FieldByName('DESCRICAO').AsString         := ADescricao;
    QuerX.FieldByName('CODEMAIL_MODELO').AsNotEmpty := ACodModelo;
    QuerX.FieldByName('ATIVO').AsString             := 'S';
    QuerX.FieldByName('CODEMAIL_CONTA').AsNotEmpty  := TFrmEmailConfiguracao.GetCodContaPadrao;
    Result := QuerX.FieldByName('CODIGO').AsInteger;
    QuerX.Post;
  finally
    QuerX.Free;
  end;
end;

class procedure TFrmEmail_Massa.SalvaConteudo(ARich: TdxRichEditControl; ADataSet: TDataSet);
  procedure LSalvar(const ACampo: string; AFormat: TdxRichEditDocumentFormat);
  var
    AStream: TStringStream;
  begin
    AStream := TStringStream.Create;
    try
      ARich.Document.SaveDocument(AStream, AFormat);
      AStream.Position := 0;
      //O LoadFromStream aqui não funciona, carrega sujeira no field...
      ADataSet.FieldByName(ACampo).AsString := AStream.DataString;
    finally
      AStream.Free;
    end;
  end;

begin
  LSalvar('CONTEUDO',      TdxRichEditDocumentFormat.Rtf);
  LSalvar('CONTEUDO_HTML', TdxRichEditDocumentFormat.Html);
end;

initialization
  RegisterClass(TFrmEmail_Massa);

end.
