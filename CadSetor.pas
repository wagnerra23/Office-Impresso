unit CadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, cxGraphics,
  cxLookAndFeelPainters, DB, dxLayoutContainer, StdCtrls, cxButtonEdit, cxGridDBTableView, IBX.IBCustomDataSet,
  ExtCtrls, cxTextEdit, cxDBEdit, cxGridLevel, cxGrid, cxButtons, cxCheckListBox, IBX.IBQuery, Generics.Collections,
  cxLabel, cxColorComboBox, UCHist_WRGeral, UCHistDataset, Menus, ImgList, IBX.IBDatabase, cxImageComboBox, cxDBTL,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDBLookupComboBox, cxControls, cxLookAndFeels,
  dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxLookupEdit, cxDBLookupEdit, cxInplaceContainer, cxTLData, cxImage, cxGridCustomTableView,
  cxGridTableView, cxDropDownEdit, UCBase, dxLayoutLookAndFeels, IBX.IBStoredProc, cxClasses, cxGridCustomView,
  cxDBNavigator, dxLayoutControl, dxStatusBar, cxCurrencyEdit, cxCheckBox,
  System.ImageList, UControleWR, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  cxCustomListBox, WREventos, FireDAC.Stan.Async, FireDAC.DApt, frxClass, Classes.WR, frxDBSet,
  dxDateRanges, dxUIAdorners, fs_iinterpreter, System.Generics.Collections;

type
  TFrmSetor = class(TFrmCadM)
    GrupoSituacoesFuncionarios: TdxLayoutGroup;
    TabSituacoes: TdxLayoutGroup;
    GrupoFuncionarios: TdxLayoutGroup;
    MainLayoutGroup6: TdxLayoutGroup;
    liGridFuncionarios: TdxLayoutItem;
    GridFuncionarios: TcxGrid;
    GridFuncionariosView: TcxGridDBTableView;
    GridFuncionariosViewCODFUNCIONARIO: TcxGridDBColumn;
    GridFuncionariosViewRAZAOSOCIAL: TcxGridDBColumn;
    GridFuncionariosLevel1: TcxGridLevel;
    liFuncionario: TdxLayoutItem;
    edtFuncionarioÎPessoas: TcxButtonEdit;
    lilblFuncionarioRazaoSocial: TdxLayoutItem;
    lblFuncionarioÎPessoasÎRAZAOSOCIAL: TLabel;
    MainLayoutGroup7: TdxLayoutGroup;
    liedtResponsavelÎPessoas: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    DSSetor_Funcionario: TDataSource;
    btnAdicionarFuncionario: TcxButton;
    libtnAdicionarFuncionario: TdxLayoutItem;
    btnRemoverFuncionario: TcxButton;
    libtnRemoverFuncionario: TdxLayoutItem;
    btnNovoStatus: TcxButton;
    libtnNovoStatus: TdxLayoutItem;
    btnRemoverStatus: TcxButton;
    libtnRemoverStatus: TdxLayoutItem;
    DSStatus: TDataSource;
    lblResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel;
    lilblResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    MainLayoutSplitterItem1: TdxLayoutSplitterItem;
    MainLayoutSplitterItem2: TdxLayoutSplitterItem;
    PnlNovaSituacao: TPanel;
    lblNovaSituacao: TcxLabel;
    EdtSituacao: TcxTextEdit;
    CbSituacaoCor: TcxColorComboBox;
    btnConfirmarSituacao: TcxButton;
    btnCancelarSituacao: TcxButton;
    ImgListIco: TcxImageList;
    CbIcoSituacao: TcxDBImageComboBox;
    imgSetor: TcxDBImage;
    liimgSetor: TdxLayoutItem;
    MainLayoutGroup8: TdxLayoutGroup;
    GrupoModoFuncionario: TdxLayoutGroup;
    DSSetor_Pessoa: TDataSource;
    cxDBTreeList1: TcxDBTreeList;
    MainLayoutItem5: TdxLayoutItem;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    FDSetorTipo: TFDMemTable;
    FDSetorTipoCODIGO: TStringField;
    FDSetorTipoDESCRICAO: TStringField;
    DSFDSetorTipo: TDataSource;
    edtTipo: TcxDBLookupComboBox;
    liedtTipo: TdxLayoutItem;
    TabPlanoContas: TdxLayoutGroup;
    GridPlanoContasView: TcxGridDBTableView;
    GridPlanoContasLevel1: TcxGridLevel;
    GridPlanoContas: TcxGrid;
    MainLayoutItem27: TdxLayoutItem;
    edtPlanoContasÎPlanoContas: TcxButtonEdit;
    liedtPlanoContas: TdxLayoutItem;
    lblPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel;
    lilblPlanoContasDescricao: TdxLayoutItem;
    libtnAdicionarPlanoContas: TdxLayoutItem;
    btnAdicionarPlanoContas: TcxButton;
    libtnRemoverPlanoContas: TdxLayoutItem;
    btnRemoverPlanoContas: TcxButton;
    MainLayoutGroup12: TdxLayoutGroup;
    MainLayoutLabeledItem1: TdxLayoutLabeledItem;
    MainLayoutGroup13: TdxLayoutAutoCreatedGroup;
    MainLayoutGroup14: TdxLayoutGroup;
    DSSetor_PlanoContas: TDataSource;
    GridPlanoContasViewCODPLANOCONTAS: TcxGridDBColumn;
    GridPlanoContasViewDESCRICAO: TcxGridDBColumn;
    GridFuncionariosViewDESTE_SETOR: TcxGridDBColumn;
    liedtParent: TdxLayoutItem;
    edtParent: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroPESSOA_RESPONSAVEL_CODIGO: TStringField;
    CadastroPESSOA_RESPONSAVEL_TIPO: TStringField;
    CadastroPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    CadastroSETOR_TIPO: TStringField;
    CadastroIMAGEM: TBlobField;
    CadastroPARENT: TIntegerField;
    CadastroTIPO: TStringField;
    CadastroKANBAN: TStringField;
    CadastroRAZAOSOCIAL: TStringField;
    Setor_Funcionario: TFDQuery;
    Setor_FuncionarioCODSETOR: TIntegerField;
    Setor_FuncionarioCODFUNCIONARIO: TStringField;
    Setor_Status: TFDQuery;
    Setor_Pessoa: TFDQuery;
    Setor_PessoaCODIGO: TStringField;
    Setor_PessoaRAZAOSOCIAL: TStringField;
    Setor_PessoaDESTE_SETOR: TIntegerField;
    Setor_PlanoContas: TFDQuery;
    Setor_PlanoContasCODPLANOCONTAS: TStringField;
    Setor_PlanoContasCODSETOR: TIntegerField;
    Setor_PlanoContasRATEIO: TFloatField;
    Setor_PlanoContasDESCRICAO: TStringField;
    Setor_StatusATIVO: TIntegerField;
    Setor_StatusSTATUS: TStringField;
    Setor_StatusCODIGO: TIntegerField;
    Setor_StatusCOR: TIntegerField;
    GrupoOrdemResponsavel: TdxLayoutAutoCreatedGroup;
    CadastroATIVO: TStringField;
    SetorTreelist: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    BlobField1: TBlobField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DSSetorTreelist: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    ListSetorStatus: TcxCheckListBox;
    procedure ListSetorStatusClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
    procedure btnNovoStatusClick(Sender: TObject);
    procedure btnRemoverStatusClick(Sender: TObject);
    procedure btnAdicionarFuncionarioClick(Sender: TObject);
    procedure btnRemoverFuncionarioClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListSetorStatusDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure btnExcluirClick(Sender: TObject);
    procedure FDSetorTipoAfterOpen(DataSet: TDataSet);
    procedure btnAdicionarPlanoContasClick(Sender: TObject);
    procedure btnRemoverPlanoContasClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure Setor_FuncionarioAfterEdit(DataSet: TDataSet);
    procedure Setor_FuncionarioAfterInsert(DataSet: TDataSet);
    procedure Setor_FuncionarioAfterOpen(DataSet: TDataSet);
    procedure Setor_FuncionarioBeforeClose(DataSet: TDataSet);
    procedure Setor_PlanoContasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FListaStatus : TList<TCadSetorStatus>;
    function GetStatusByDesc(Descricao : String): TCadSetorStatus;
    procedure AtualizaListaStatus;
  public
    { Public declarations }
  end;


var
  FrmSetor: TFrmSetor;

implementation

uses
  wrFuncoes, UnitFuncoes, ConSetor, wrConversao;

{$R *.dfm}

procedure TFrmSetor.AtualizaListaStatus;
var
  Status : TCadSetorStatus;
  I : Integer;
begin
  if not Assigned(ListSetorStatus) then
    Exit;
  if Assigned(FListaStatus) then
  begin
    FListaStatus.Free;
    FListaStatus := nil;
  end;
  FListaStatus := TList<TCadSetorStatus>.Create;
  ListSetorStatus.Items.BeginUpdate;
  try
    ListSetorStatus.Clear;
    Setor_Status.First;
    while not Setor_Status.Eof do
    begin
      Status.Codigo    := Setor_Status.FieldByName('CODIGO').AsInteger;
      Status.Descricao := Setor_Status.FieldByName('STATUS').AsString;
      Status.Ativo     := (Setor_Status.FieldByName('ATIVO').AsInteger = 1);
      Status.Cor       := Setor_Status.FieldByName('COR').AsInteger;
      FListaStatus.Add(Status);
      Setor_Status.Next;
    end;
    for I := 0 to FListaStatus.Count - 1 do
    begin
      with ListSetorStatus.Items.Add do
      begin
        Text    := FListaStatus[i].Descricao;
        Checked := FListaStatus[i].Ativo;
      end;
    end;
  finally
    ListSetorStatus.Items.EndUpdate;
  end;
end;

procedure TFrmSetor.btnAdicionarFuncionarioClick(Sender: TObject);
begin
  if (lblFuncionarioÎPessoasÎRAZAOSOCIAL.Caption = '') then
    Exit;
  if Cadastro.FieldByName('CODIGO').AsString = '' then
    btnNovo.Click;
  if DS.State = dsInsert then
  begin
    ShowMessage('Confirme primeiro o cadastro para aparecer o Setor da Pessoa.');
    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  Setor_Funcionario.DisableControls;
  try
    if not Setor_Pessoa.Locate('CODIGO', FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas), []) then
    begin
      Setor_Funcionario.Insert;
      Setor_FuncionarioCODFUNCIONARIO.AsString := FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas);
      Setor_Funcionario.Post;
      Setor_Pessoa.Close;
      Setor_Pessoa.Open;
    end;
    EdtFuncionarioÎPessoas.Clear;
  finally
    Setor_Funcionario.EnableControls;
  end;
  EdtFuncionarioÎPessoas.SetFocusWR;
end;

procedure TFrmSetor.btnConfirmarClick(Sender: TObject);
var
  QuerX : TFDQuery;
  I : Integer;
begin
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select 1 from SETOR where (upper(DESCRICAO) = ' + QuotedStr(AnsiUpperCase(Trim(edtDescricao.Text))) + ') AND (CODIGO <> :Codigo)';
    QuerX.ParamByName('Codigo').AsString := edtCodigo.Text;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      ShowMessageWR('Setor já existente.');
      edtDescricao.SetFocusWR;
      Exit;
    end;
    QuerX.Close;
    QuerX.SQL.Text := 'delete from SETOR_STATUS where (CODSETOR = :CodSetor)';
    QuerX.ParamByName('CodSetor').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
    QuerX.ExecSQL;
    QuerX.SQL.Text := 'insert into SETOR_STATUS (CODSETOR, CODSTATUS) values (:CodSetor, :CodStatus)';
    for I := 0 to FListaStatus.Count - 1 do
    begin
      if FListaStatus[i].Ativo then
      begin
        QuerX.ParamByName('CodStatus').AsInteger := FListaStatus[i].Codigo;
        QuerX.ParamByName('CodSetor').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
        QuerX.ExecSQL;
      end;
    end;
  finally
    QuerX.Free;
  end;
  inherited;
end;

procedure TFrmSetor.btnExcluirClick(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  if not DS.DataSet.IsEmpty and (ShowMessageWR('Deseja excluir este Setor?', MB_ICONQUESTION) = mrYes) then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'delete from SETOR_FUNCIONARIO SF where (SF.CODSETOR = :CodSetor)';
      QuerX.Params[0].Value := Cadastro.FieldByName('CODIGO').Value;
      QuerX.ExecSQL;

      QuerX.SQL.Text := 'delete from SETOR_STATUS S where (S.CODSETOR = :CodSetor)';
      QuerX.Params[0].Value := Cadastro.FieldByName('CODIGO').Value;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
    inherited;
  end;
end;

procedure TFrmSetor.btnNovoStatusClick(Sender: TObject);
var
  FCod, ACor, I : Integer;
  QuerX : TFDQuery;
begin
  CbIcoSituacao.Properties.Items.Clear;
  for I := 0 to ImgListIco.Count - 1 do
  begin
    with CbIcoSituacao.Properties.Items.Add do
    begin
      ImageIndex  := i;
      Value       := i;
    end;
  end;

  if ShowPanelForm(PnlNovaSituacao, bsSingle) = mrOk then
  begin
    if Trim(EdtSituacao.Text) = '' then
      Exit;
    ACor := CbSituacaoCor.ColorValue;
    if ACor > clWhite then
      ACor := 0;
    btnAlterarClick(Self);
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'SELECT 1 FROM STATUS WHERE (UPPER(DESCRICAO) = ' + QuotedStr(AnsiUpperCase(EdtSituacao.Text)) + ')';
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessageWR('Já existe um situação com esta descrição.');
        Exit;
      end;
      QuerX.SQL.Text := 'select max(CODIGO) from STATUS';
      QuerX.Open;
      FCod := QuerX.Fields[0].AsInteger + 1;
      QuerX.Close;
      QuerX.SQL.Text := 'insert into STATUS (CODIGO, DESCRICAO, COR) values (' + IntToStr(FCod) + ', ' + QuotedStr(EdtSituacao.Text) + ', ' + IntToStr(ACor) + ')';
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
    btnConfirmarClick(Self);
  end;
end;

procedure TFrmSetor.btnAdicionarPlanoContasClick(Sender: TObject);
begin
  inherited;
  if (LblPlanoContasÎPlanoContasÎDESCRICAO.Caption = '') then
    Exit;
  VerificaSePodeAlteraDataSet;
  Setor_PlanoContas.DisableControls;
  try
    if not Setor_PlanoContas.Locate('CODPLANOCONTAS', EdtPlanoContasÎPlanoContas.Text, []) then
    begin
      Setor_PlanoContas.Insert;
      Setor_PlanoContasCODPLANOCONTAS.AsString := EdtPlanoContasÎPlanoContas.Text;
      Setor_PlanoContas.Post;
      Setor_PlanoContas.Close;
      Setor_PlanoContas.Open;
    end;
    EdtPlanoContasÎPlanoContas.Clear;
  finally
    Setor_PlanoContas.EnableControls;
  end;
  EdtPlanoContasÎPlanoContas.SetFocusWR;
end;

procedure TFrmSetor.btnRemoverPlanoContasClick(Sender: TObject);
begin
  inherited;
  if Setor_PlanoContas.IsEmpty then
    Exit;
  VerificaSePodeAlteraDataSet;
  Setor_PlanoContas.Delete;
end;

procedure TFrmSetor.btnRemoverFuncionarioClick(Sender: TObject);
var
  QuerX : TIBQuery;
begin
  inherited;
  if Setor_Funcionario.IsEmpty then
    Exit;

  if not Setor_Funcionario.Locate('CODFUNCIONARIO', Setor_PessoaCODIGO.AsString, []) then
  begin
    ShowMessageWR('Este funcionário não pertence diretamente a este Setor. Verifique os setores que estão acima na hierarquia.');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  Setor_Funcionario.Delete;
  Setor_Pessoa.Close;
  Setor_Pessoa.Open;
end;

procedure TFrmSetor.btnRemoverStatusClick(Sender: TObject);
var
  QuerX : TFDQuery;
  Status : TCadSetorStatus;
begin
  inherited;
  if ListSetorStatus.ItemIndex < 0 then
    Exit;
  QuerX := GeraFDQuery(TransaFD);
  try
    Status := GetStatusByDesc(ListSetorStatus.Items[ListSetorStatus.ItemIndex].Text);
    QuerX.SQL.Text := 'select 1 from SETOR_STATUS where (CODSTATUS = :CodStatus)';
    QuerX.ParamByName('CodStatus').AsInteger := Status.Codigo;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      ShowMessageWR('Este status ainda é utilizado por algum setor. Só é possível excluir status que não estejam sendo utilizados por nenhum setor.');
      Exit;
    end;
    QuerX.Close;
    if ShowMessageWR('O Status ' + QuotedStr(Status.Descricao) + ' será removido, deseja continuar?', MB_ICONQUESTION) = mrYes then
    begin
      btnAlterarClick(Self);
      QuerX.SQL.Text := 'delete from STATUS where (CODIGO = :Codigo)';
      QuerX.ParamByName('Codigo').AsInteger := Status.Codigo;
      QuerX.ExecSQL;
      btnConfirmarClick(Self);
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmSetor.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  CadastroTIPO.AsString := tsSetor.ToStr;
end;

procedure TFrmSetor.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Setor_Status.Open;
  SetorTreelist.Open;
  Setor_Funcionario.Open;
  {$IFDEF DEBUG}
  Setor_PlanoContas.Open;
  {$ENDIF}
  Setor_Status.Open;
  AtualizaListaStatus;
end;

procedure TFrmSetor.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Setor_Funcionario.Close;
  Setor_PlanoContas.Close;
  Setor_Status.Close;
  SetorTreelist.Close;
end;

procedure TFrmSetor.CadastroBeforePost(DataSet: TDataSet);
var
  QuerX : TFDQuery;
begin
  inherited;
  if CadastroTIPO.IsNull then
    CadastroTIPO.AsString := tsSetor.ToStr;
  QuerX := GeraFDQuery(Cadastro.Transaction);
  try
    if CadastroTIPO.AsString = tsEstagio.ToStr then
    begin
      if CadastroPARENT.AsString = '' then
      begin
        ShowMessageWR('Só é possível definir este Setor como Estágio caso seja uma subdivisão de algum Setor.');
        Abort;
      end;

      QuerX.SQL.Text := 'select first 1 1 ' +
                        'from SETOR ' +
                        'where (PARENT = :Parent)';
      QuerX.Params[0].AsInteger := CadastroCODIGO.AsInteger;
      QuerX.Open;
      if not QuerX.IsEmpty then
      begin
        ShowMessageWR('Este setor possui subdivisões e não pode ser definido como Estágio.');
        Abort;
      end;
    end;

    //Ao colocar um Setor abaixo de outro setor, deve ser feita a atualização do Setor Pai para transformar no tipo "Setor"
    //caso o mesmo esteja definido como "Estágio"
    QuerX.SQL.Text := 'update SETOR set TIPO = :Tipo ' +
                      'where (CODIGO = :Cod)';
    QuerX.ParamByName('Tipo').AsString := tsSetor.ToStr;
    QuerX.ParamByName('Cod').AsInteger := CadastroPARENT.AsInteger;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmSetor.Setor_FuncionarioAfterEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrmSetor.Setor_FuncionarioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Setor_FuncionarioCODSETOR.AsInteger := CadastroCODIGO.AsInteger;
end;

procedure TFrmSetor.Setor_FuncionarioAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Setor_Pessoa.Open;
end;

procedure TFrmSetor.Setor_FuncionarioBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Setor_Pessoa.Close;
end;

procedure TFrmSetor.FDSetorTipoAfterOpen(DataSet: TDataSet);
var
  ATipoSetor : TTipoSetor;
begin
  inherited;
  for ATipoSetor := Low(TTipoSetor) to High(TTipoSetor) do
  begin
    FDSetorTipo.Append;
    FDSetorTipoCODIGO.AsString    := ATipoSetor.ToStr;
    FDSetorTipoDESCRICAO.AsString := ATipoSetor.ToDescricao;
    FDSetorTipo.Post;
  end;
end;

procedure TFrmSetor.FormCreate(Sender: TObject);
begin
  inherited;
  Ocultar(PnlNovaSituacao);
  {$IFNDEF DEBUG}
  TabPlanoContas.Visible := False;
  {$ENDIF}
end;

procedure TFrmSetor.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FListaStatus) then
    FListaStatus.Free;
end;

function TFrmSetor.GetStatusByDesc(Descricao: String): TCadSetorStatus;
var
  I : Integer;
begin
  if not Assigned(FListaStatus) then
    Exit;
  for I := 0 to FListaStatus.Count - 1 do
  begin
    if AnsiUpperCase(FListaStatus[i].Descricao) = AnsiUpperCase(Descricao) then
    begin
      Result := FListaStatus[i];
      Exit;
    end;
  end;
end;

procedure TFrmSetor.ListSetorStatusClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
var
  Status : TCadSetorStatus;
begin
  VerificaSePodeAlteraDataSet;
  if Assigned(FListaStatus) then
  begin
    Status       := FListaStatus[AIndex];
    Status.Ativo := ListSetorStatus.Items[AIndex].Checked;
    FListaStatus[AIndex] := Status;
  end;
end;

procedure TFrmSetor.ListSetorStatusDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  ACanvas: TcxCanvas;
  AText: string;
  ATextRect: TRect;
  AListBox: TcxCheckListBox;
begin
  if FListaStatus[Index].Cor <> 0 then
  begin
    AListBox := (Control as TcxCheckListBox);
    ACanvas  := AListBox.InnerCheckListBox.Canvas;
    ACanvas.Brush.Color := FListaStatus[Index].Cor;
    InflateRect(Rect, -1, -1);
    ACanvas.FillRect(Rect);
    AText          := AListBox.Items[Index].Text;
    ATextRect      := Rect;
    ATextRect.Left := ATextRect.Left + 2;
    ACanvas.DrawTexT(AText, ATextRect, 0);
  end;
end;

procedure TFrmSetor.Setor_PlanoContasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Setor_PlanoContasCODSETOR.AsInteger := CadastroCODIGO.AsInteger;
end;

initialization
  RegisterClass(TFrmSetor);

end.
