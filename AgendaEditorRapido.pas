unit AgendaEditorRapido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxSchedulerEventEditor, Vcl.Menus, cxEdit, cxMemo, cxTextEdit, cxButtons, Htmlview,
  cxSplitter, Data.DB, FireDAC.Stan.Param, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxButtonEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxControls, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCheckBox, FireDAC.Stan.Intf, cxSpinEdit, cxCheckComboBox, cxDropDownEdit, cxTimeEdit,
  cxCalendar, cxMaskEdit, cxImageComboBox, cxLabel, cxGroupBox, dxBevel, Vcl.StdCtrls, Vcl.ExtCtrls,
  HTMLUn2, uControleWR, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, Classes.WR;

type
  TFrmAgendaEditorRapido = class(TcxSchedulerEventEditorForm)
    MemoMensagem: TcxMemo;
    cxSplitter1: TcxSplitter;
    HTMLViewer1: THTMLViewer;
    TransaEditor: TFDTransaction;
    EdtResponsavelÎPessoas: TcxButtonEdit;
    BtnSkype: TcxButton;
    MenuSkype: TPopupMenu;
    V1: TMenuItem;
    procedure MemoMensagemKeyPress(Sender: TObject; var Key: Char);
    procedure EdtResponsavelÎPessoasPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnSkypeClick(Sender: TObject);
    procedure MenuSkypePopup(Sender: TObject);
    procedure V1Click(Sender: TObject);
  private
    { Private declarations }
    FHtml : string;
    FControleWR : TControleWR;
    FCodigoProvisorio : string;
    FCodigoEvento: string; //Código gerado provisoriamente para um novo evento, para controlar as mensagens
//    FListaPessoaTipo : TListaPessoaTipo;
    FSkypeID: string; //Buffer que armazena o Skype ID para não utilizar o CustomFields
    procedure AtualizaWB;
    procedure SetCaptions; override;
    procedure LoadEventValuesIntoControls; override;
    procedure UpdateEventValuesFromControls; override;
    function GetCodigoEvento: string;
    procedure CheckControlStates; override;
  public
    { Public declarations }
    property CodigoEvento: string read GetCodigoEvento;
  end;

var
  FrmAgendaEditorRapido: TFrmAgendaEditorRapido;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrFuncoes;

procedure TFrmAgendaEditorRapido.AtualizaWB;
begin
  //Resgata todas as mensagens do banco e mostra no HTMLViewer
//  AtualizaMensagensAgenda(TransaEditor, CodigoEvento, HTMLViewer1); Wagner
  HTMLViewer1.VScrollBarPosition := HTMLViewer1.VScrollBar.Max;
end;

procedure TFrmAgendaEditorRapido.BtnSkypeClick(Sender: TObject);
begin
  inherited;
  MenuSkype.PopupOnMouse;
end;

procedure TFrmAgendaEditorRapido.CheckControlStates;
begin
  inherited;
  MemoMensagem.Properties.ReadOnly := ReadOnly;
end;

procedure TFrmAgendaEditorRapido.EdtResponsavelÎPessoasPropertiesChange(Sender: TObject);
var
  QuerX : TFDQuery;
  ACodPessoa : string;
begin
  teSubject.Properties.ReadOnly := (EdtResponsavelÎPessoas.Text <> '');
  ACodPessoa := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select FANTASIA, CONTATO ' +
                      'from PESSOAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodPessoa;
    QuerX.Open;
    teSubject.Text  := QuerX.FieldByName('FANTASIA').AsString;
    teLocation.Text := QuerX.FieldByName('CONTATO').AsString;
  finally
    QuerX.Free;
  end;
  if not Helper.IsUpdating then
  begin
    inherited OnChanged(Sender);
//    FModified := True;
//    VerificaModificado;
    teSubject.EditModified  := True;
    teLocation.EditModified := True;
  end;
end;

procedure TFrmAgendaEditorRapido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
//  FControleWR.Free;
end;

procedure TFrmAgendaEditorRapido.FormShow(Sender: TObject);
begin
  inherited;
  MemoMensagem.SetFocus;
end;

function TFrmAgendaEditorRapido.GetCodigoEvento: string;
begin
  if VarIsNull(Event.ID) then
  begin
    if FCodigoProvisorio = '' then
    begin
      FCodigoProvisorio := TGUID.NewGuid.ToString;

      //Atribui o código provisório no campo PROTOCOLO para ser substituído no OnBeforePost
      Event.SetCustomFieldValueByName('PROTOCOLO', FCodigoProvisorio);
    end;
    Result := FCodigoProvisorio;
  end else
    Result := VarToStr(Event.ID);
end;

procedure TFrmAgendaEditorRapido.LoadEventValuesIntoControls;
  procedure CarregaCampoPessoa(AComponente: TcxButtonEdit; ACampo: string);
  var
    APessoa : TPessoaRetorno;
  begin
    APessoa := TPessoaRetorno.Create;
    APessoa.Codigo    := VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_CODIGO'), '');
    APessoa.Tipo      := PessoaListaTipos.GetTipo(VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_TIPO'), ''));
    APessoa.Sequencia := StrToInt(VarToStrDef(Event.GetCustomFieldValueByName('PESSOA_' + ACampo + '_SEQUENCIA'), '0'));
    FControleWR.FindComponente(AComponente).ValorComponentePessoa := APessoa;
  end;
begin
  TransaEditor.Connection := TDefinicoesBancoFD.BancoServidor;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
//  FListaPessoaTipo := TListaPessoaTipo.GetInstance;
  inherited;
  CarregaCampoPessoa(EdtResponsavelÎPessoas, 'CLIENTE');
  FSkypeID := VarToStrDef(Event.GetCustomFieldValueByName('SKYPE_ID'), '');

  AtualizaWB;
end;

procedure TFrmAgendaEditorRapido.MemoMensagemKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if MemoMensagem.Lines.Text.Trim = '' then
      Exit;
    if GetKeyState(VK_SHIFT) < 0 then
      MemoMensagem.Properties.WantReturns := True;
//    TFrameHistorico.AdicionaHistorico(TransaEditor, 'Agenda', CodigoEvento, MemoMensagem.Lines.Text, Event.GetCustomFieldValueByName('PESSOA_CLIENTE_CODIGO'));
    MemoMensagem.Lines.Clear;
    AtualizaWB;
    MemoMensagem.Properties.WantReturns := False;
    MemoMensagem.SetFocus;
    Modified := True;
  end;
end;

procedure TFrmAgendaEditorRapido.MenuSkypePopup(Sender: TObject);
begin
  inherited;
  V1.Visible := (FSkypeID <> '');
  V1.Caption := 'Vincular <' + FSkypeID + '> a este cliente';
end;

procedure TFrmAgendaEditorRapido.SetCaptions;
begin
  inherited;
  Self.Caption := EventName;
end;

procedure TFrmAgendaEditorRapido.UpdateEventValuesFromControls;
begin
  inherited;
  Event.SetCustomFieldValueByName('CODUSUARIO_RESPONSAVEL', Event.ResourceID);
  if TransaEditor.Active then
    TransaEditor.Commit;
end;

procedure TFrmAgendaEditorRapido.V1Click(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaEditor);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from PESSOAS_SKYPE ' +
                      'where (SKYPE_ID = :ID)';
    QuerX.Params[0].AsString := FSkypeID;
    QuerX.Open;
    if (QuerX.FieldByName('CODPESSOA').AsString <> '') then
    begin
      ShowMessageWR('Este Skype ID já está vinculado a um cliente');
      Exit;
    end;
    QuerX.Close;

    QuerX.SQL.Text := 'update or insert into PESSOAS_SKYPE (SKYPE_ID, CODPESSOA) ' +
                      '                 values (:SKYPE_ID, :CODPESSOA) ' +
                      'matching (SKYPE_ID)';
    QuerX.ParamByName('SKYPE_ID').AsString  := FSkypeID;
//    QuerX.ParamByName('CODPESSOA').AsString := FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas);
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

end.
