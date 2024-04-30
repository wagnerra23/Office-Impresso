unit CadCentro_Trabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, cxGraphics,
  cxLookAndFeelPainters, DB, cxControls, cxLookAndFeels, dxSkinsCore, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCalendar, Vcl.ComCtrls, dxCore, cxDateUtils, cxImageList, UCHist_WRGeral, cxMemo, cxButtonEdit, cxDBEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  cxCheckBox, cxInplaceContainer, cxDBTL, cxTLData, cxCurrencyEdit, cxImageComboBox, cxColorComboBox, cxTextEdit,
  cxLabel, FireDAC.Comp.Client, FireDAC.Comp.DataSet, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar,
  frxClass, frxDBSet, UCHistDataset, dxDateRanges, dxUIAdorners, fs_iinterpreter,
  System.Generics.Collections, WRButtonsEditAdd, dxScrollbarAnnotations,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmCentro_Trabalho = class(TFrmCadM)
    liedtResponsavelÎPessoas: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    lblResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel;
    lilblResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    PnlNovaSituacao: TPanel;
    cxLabel1: TcxLabel;
    EdtSituacao: TcxTextEdit;
    CbSituacaoCor: TcxColorComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    UCHistWRGeral1: TUCHistWRGeral;
    ImgListIco: TcxImageList;
    CbIcoSituacao: TcxDBImageComboBox;
    MainLayoutGroup8: TdxLayoutGroup;
    TlSetores: TcxDBTreeList;
    MainLayoutItem5: TdxLayoutItem;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    MainLayoutGroup4: TdxLayoutGroup;
    edtValor: TcxDBCurrencyEdit;
    liedtValor: TdxLayoutItem;
    lichkPrivado: TdxLayoutItem;
    chkPrivado: TcxDBCheckBox;
    dxLayoutGroup3: TdxLayoutGroup;
    GrupoAusencias: TdxLayoutGroup;
    GridAusenciasDBTableView1: TcxGridDBTableView;
    GridAusenciasLevel1: TcxGridLevel;
    GridAusencias: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    EdtAusenteDtInicio: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    EdtAusenteDtFim: TcxDateEdit;
    EdtAusenteDescricao: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    BtnAusenteAdd: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    BtnAusenteRemover: TcxButton;
    DSCentro_Trabalho_Ausencia: TDataSource;
    GridAusenciasDBTableView1CODIGO: TcxGridDBColumn;
    GridAusenciasDBTableView1DESCRICAO: TcxGridDBColumn;
    GridAusenciasDBTableView1DATA_FIM: TcxGridDBColumn;
    GridAusenciasDBTableView1DATA_INICIO: TcxGridDBColumn;
    GrupoRecursos: TdxLayoutGroup;
    liedtCodRecursoÎPessoas: TdxLayoutItem;
    edtRecursoÎPessoas: TcxButtonEdit;
    liGridRecursos: TdxLayoutItem;
    GridRecursos: TcxGrid;
    GridRecursosView: TcxGridDBTableView;
    GridRecursosLevel1: TcxGridLevel;
    lilblRecursoTipoÎPessoasÎTipo: TdxLayoutItem;
    edtRecursoÎPessoasÎTIPO: TcxLabel;
    lilblRecursoDescricaoÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    edtRecursoÎPessoasÎRAZAOSOCIAL: TcxLabel;
    libtnAdicionarRecurso: TdxLayoutItem;
    btnAdicionarRecurso: TcxButton;
    libtnRemoverRecurso: TdxLayoutItem;
    btnRemoverRecurso: TcxButton;
    DSCentro_Trabalho_Recurso: TDataSource;
    PnlMensagemPrivado: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtMensagem: TcxMemo;
    liedtMensagem: TdxLayoutItem;
    btnOkMensagem: TcxButton;
    libtnOkMensagem: TdxLayoutItem;
    btnPrecisoAjuda: TcxButton;
    libtnPrecisoAjuda: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    liedtCusto_Venda: TdxLayoutItem;
    edtCusto_Venda: TcxDBCurrencyEdit;
    Centro_Trabalho_Recurso: TFDQuery;
    Centro_Trabalho_Ausencia: TFDQuery;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    CbxIcone: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    chkTem_Trava_Cancelar: TcxDBCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    chkTem_Trava_Financeiro: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    GridPlanoContas: TcxGrid;
    GridPlanoContasView: TcxGridDBTableView;
    GridPlanoContasLevel1: TcxGridLevel;
    dxLayoutGroup4: TdxLayoutGroup;
    FinanceiroCentroCusto: TFDQuery;
    DSFinanceiroCentroCusto: TDataSource;
    GridPlanoContasViewCODFINANCEIRO: TcxGridDBColumn;
    GridPlanoContasViewCODCENTRO_TRABALHO: TcxGridDBColumn;
    GridPlanoContasViewPERCENTUAL: TcxGridDBColumn;
    GridPlanoContasViewVALOR: TcxGridDBColumn;
    GridPlanoContasViewFINANCEIRO: TcxGridDBColumn;
    GridPlanoContasViewTIPO: TcxGridDBColumn;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    GridRecursosViewINSERIR: TcxGridDBColumn;
    GridRecursosViewEDITAR: TcxGridDBColumn;
    GridRecursosViewFINALIZAR: TcxGridDBColumn;
    GridRecursosViewCANCELAR: TcxGridDBColumn;
    GridRecursosViewREATIVAR: TcxGridDBColumn;
    edtSubNivel: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    GrupoEstagios: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Centro_Trabalho_Estagio: TFDQuery;
    DSCentro_Trabalho_Estagio: TDataSource;
    cxGridDBTableView1ESTAGIO: TcxGridDBColumn;
    cxGridDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGridDBTableView1CODUSUARIO: TcxGridDBColumn;
    dxLayoutItem14: TdxLayoutItem;
    EdtCodEstagioÎProducao_Estagio: TcxButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    EdtCodEstagioÎProducao_EstagioÎDescricao: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    btnAdicionarEstagio: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    btnRemoverEstagio: TcxButton;
    lichkPodeOrcamento: TdxLayoutItem;
    chkPodeOrcamento: TcxDBCheckBox;
    GridRecursosViewRAZAOSOCIAL: TcxGridDBColumn;
    GridRecursosViewPODE_PRODUCAO1: TcxGridDBColumn;
    cxCurrencyEdit1: TcxCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    EdtTempoEstimado: TcxButtonEdit;
    GridRecursosViewCARGA_HORARIA: TcxGridDBColumn;
    dxLayoutItem20: TdxLayoutItem;
    edtPRODUTOÎProduto: TcxDBButtonEdit;
    dxLayoutItem21: TdxLayoutItem;
    edtPRODUTOÎProdutoÎDESCRICAO: TcxLabel;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure btnConfirmarClick(Sender: TObject);
    procedure TlSetoresDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure BtnAusenteAddClick(Sender: TObject);
    procedure BtnAusenteRemoverClick(Sender: TObject);
    procedure btnAdicionarRecursoClick(Sender: TObject);
    procedure GridRecursosViewTIPOGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure Centro_Trabalho_RecursoAfterInsert(DataSet: TDataSet);
    procedure Centro_Trabalho_AusenciaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure WREventosCadastroFK_Excluir(Sender: TObject);
    procedure btnRemoverRecursoClick(Sender: TObject);
    procedure GridRecursosViewEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure GridRecursosViewINSERIRPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure dxLayoutGroup3TabChanged(Sender: TObject);
    procedure Centro_Trabalho_EstagioAfterInsert(DataSet: TDataSet);
    procedure btnAdicionarEstagioClick(Sender: TObject);
    procedure btnRemoverEstagioClick(Sender: TObject);
    procedure EdtTempoEstimadoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure CarregaIcones;
    procedure LimpaCamposAusencia;
    procedure VerificaUsuariosRecursos;
  public
    { Public declarations }
  end;

implementation

uses
  wrFuncoes, StrUtils, UnitFuncoes, DateUtils, CadRecurso, ConRecurso, wrConversao, System.UITypes, ShellAPI,
  Classes.WR, DataModule, frFrameHistorico, uControleWR, EntradaTempo;

{$R *.dfm}

procedure TFrmCentro_Trabalho.BtnAusenteAddClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if (YearOf(EdtAusenteDtInicio.Date) < 1950) or (YearOf(EdtAusenteDtInicio.Date) > 2100) then
  begin
    ShowMessageWR('Data "Ausente De" inválida');
    EdtAusenteDtInicio.SetFocusWR;
    Exit;
  end;
  if (YearOf(EdtAusenteDtFim.Date) < 1950) or (YearOf(EdtAusenteDtFim.Date) > 2100) then
  begin
    ShowMessageWR('Data "Ausente Até" inválida');
    EdtAusenteDtFim.SetFocusWR;
    Exit;
  end;

  if EdtAusenteDtFim.Date < EdtAusenteDtInicio.Date then
  begin
    ShowMessageWR('A data final do período não pode ser anterior a data inicial.');
    EdtAusenteDtFim.SetFocusWR;
    Exit;
  end;

  Centro_Trabalho_Ausencia.Insert;
  Centro_Trabalho_Ausencia.FieldByName('DESCRICAO').AsString     := EdtAusenteDescricao.Text;
  Centro_Trabalho_Ausencia.FieldByName('DATA_INICIO').AsDateTime := EdtAusenteDtInicio.Date;
  Centro_Trabalho_Ausencia.FieldByName('DATA_FIM').AsDateTime    := EdtAusenteDtFim.Date;
  Centro_Trabalho_Ausencia.Post;
  LimpaCamposAusencia;
  EdtAusenteDescricao.SetFocusWR;
end;

procedure TFrmCentro_Trabalho.BtnAusenteRemoverClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not (Cadastro.State in dsEditModes) or Centro_Trabalho_Ausencia.IsEmpty then
    Exit;
  Centro_Trabalho_Ausencia.Delete;
end;

procedure TFrmCentro_Trabalho.btnConfirmarClick(Sender: TObject);
begin
  Cadastro.FieldByName('DESCRICAO').AsString := Trim(Cadastro.FieldByName('DESCRICAO').AsString);
  if Cadastro.FieldByName('PRIVADO').AsString = 'S' then
    VerificaUsuariosRecursos;
  inherited;
end;

procedure TFrmCentro_Trabalho.btnRemoverEstagioClick(Sender: TObject);
begin
  inherited;
  if DSCentro_Trabalho_Estagio.DataSet.IsEmpty then
    Exit;
  Centro_Trabalho_Estagio.Delete;
end;

procedure TFrmCentro_Trabalho.btnRemoverRecursoClick(Sender: TObject);
begin
  inherited;
  if DSCentro_Trabalho_Recurso.DataSet.IsEmpty then
    Exit;
  Centro_Trabalho_Recurso.Delete;
end;

procedure TFrmCentro_Trabalho.btnAdicionarEstagioClick(Sender: TObject);
var
  ACodEstagio: Integer;
begin
  inherited;
  ACodEstagio := StrToIntDef(EdtCodEstagioÎProducao_Estagio.Text, 0);
  if (ACodEstagio = 0) then
  begin
    ShowMessageWR('Estagio Inválido');
    EdtCodEstagioÎProducao_Estagio.SetFocusWR;
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  Centro_Trabalho_Estagio.DisableControls;
  try
    Centro_Trabalho_Estagio.Insert;
    Centro_Trabalho_Estagio.FieldByName('CODPRODUCAO_ESTAGIO').AsInteger    := ACodEstagio;
    Centro_Trabalho_Estagio.FieldByName('CODUSUARIO').AsInteger    := Usuario.Codigo;
    Centro_Trabalho_Estagio.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
    Centro_Trabalho_Estagio.Post;

    CloseOpenGridView(Centro_Trabalho_Estagio, GridRecursosView);
  finally
    Centro_Trabalho_Estagio.EnableControls;
  end;
  edtRecursoÎPessoas.Clear;
  edtRecursoÎPessoas.SetFocusWR;
end;

procedure TFrmCentro_Trabalho.btnAdicionarRecursoClick(Sender: TObject);
var
  QuerX : TFDQuery;
  ACodPessoa : String;
begin
  inherited;

  if (edtRecursoÎPessoas.Text = '') or (edtRecursoÎPessoasÎTIPO.Caption = '') then
  begin
    ShowMessageWR('Recurso Inválido');
    edtRecursoÎPessoasÎRAZAOSOCIAL.SetFocusWR;
    Exit;
  end;
  VerificaSePodeAlteraDataSet;

  ACodPessoa := TControleWR.GetCodPessoa(edtRecursoÎPessoas.Properties.Buttons[0].Caption
                ,edtRecursoÎPessoas.EditValue);
  QuerX := GeraFDQuery(TransaFD);
  try

    QuerX.SQL.Text := 'SELECT P.CODIGO, P.PODE_PRODUCAO FROM PESSOAS P WHERE P.CODIGO = :codpessoa';
    QuerX.ParamByName('codpessoa').AsString := ACodPessoa;
    QuerX.Open;

    if QuerX.FieldByName('PODE_PRODUCAO').AsString <> 'S' then
    begin
        if MessageDlg('Este funcionário não está habilitado para aparecer na produção, deseja habilitar?',
      mtConfirmation, mbYesNo, 0) <> mrYes then
      begin
        ShowMessageWR('O Funcionário não será adicionado');
        Exit;
      end
      else
      begin
        try
          QuerX.Edit;
          QuerX.FieldByName('PODE_PRODUCAO').AsString := 'S';
          QuerX.Post;
        except
          ShowMessageWR('Ocorreu um erro ao atualizar o funcionário.');
        end;
      end;
    end;

    Centro_Trabalho_Recurso.DisableControls;
    if Centro_Trabalho_Recurso.Locate('PESSOA_FUNCIONARIO_CODIGO', edtRecursoÎPessoas.Text, []) then
      Exit;
    Centro_Trabalho_Recurso.Insert;
    Centro_Trabalho_Recurso.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString := edtRecursoÎPessoas.Properties.Buttons[0].Caption;
    Centro_Trabalho_Recurso.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsString := edtRecursoÎPessoas.Text;
    Centro_Trabalho_Recurso.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString := ACodPessoa;
    Centro_Trabalho_Recurso.FieldByName('CARGA_HORARIA').AsInteger := StrToIntDef(EdtTempoEstimado.Text,0);
    Centro_Trabalho_Recurso.Post;

    CloseOpenGridView(Centro_Trabalho_Recurso, GridRecursosView);
  finally
    Centro_Trabalho_Recurso.EnableControls;
    QuerX.Free;
  end;
  edtRecursoÎPessoas.Clear;
  edtRecursoÎPessoas.SetFocusWR;
end;

procedure TFrmCentro_Trabalho.TlSetoresDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TcxDBTreeList) and (TcxDBTreeList(Source).Owner = Self);
end;

procedure TFrmCentro_Trabalho.VerificaUsuariosRecursos;
var
  QuerX: TFDQuery;
  ALista, AMsgOriginal: TStringList;
begin
  QuerX := GeraFDQuery(TransaFD);
  ALista := TStringList.Create;
  AMsgOriginal := TStringList.Create;
  try
    AMsgOriginal.Text := edtMensagem.Lines.Text;
    QuerX.SQL.Text := 'select P.CODIGO, P.RAZAOSOCIAL ' +
                      'from CENTRO_TRABALHO_RECURSO CTR ' +
                      'inner join RECURSO R on (R.CODIGO = CTR.CODRECURSO) ' +
                      'left join PESSOAS P on (R.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO) ' +
                      'left join USUARIO U on (U.CODFUNCIONARIO = R.PESSOA_RESPONSAVEL_CODIGO) ' +
                      'where (CTR.CODCENTRO_TRABALHO = :Cod) ' +
                      '      and not (R.PESSOA_RESPONSAVEL_CODIGO is null) ' +
                      '      and (U.CODIGO is null)';
    QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      ALista.Add(QuerX.FieldByName('RAZAOSOCIAL').AsString);
      QuerX.Next;
    end;

    if ALista.Count > 0 then
    begin
      edtMensagem.Lines.AddStrings(ALista);
      // Coloacar isso denovo
//      if ShowPanelForm(PnlMensagemPrivado, bsSingle) = mrHelp then
//        TAjuda.AbrirHelp(1); ShellExecute(0, 'OPEN', PChar('http://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa'), nil, nil, SW_SHOWMAXIMIZED);
    end;
  finally
    edtMensagem.Lines.Text := AMsgOriginal.Text;
    QuerX.Free;
    ALista.Free;
    AMsgOriginal.Free;
  end;
end;

procedure TFrmCentro_Trabalho.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddValorInicial(FNomeTabela , 'SUBNIVEL', edtSubNivel, '-Agrupar Por-' );
    end;
  end;
end;

procedure TFrmCentro_Trabalho.WREventosCadastroFK_Excluir(Sender: TObject);
begin
  inherited;
  //    DefineFKnaExclusao('CODCENTRO_TRABALHO', 'PRODUCAO');
end;

procedure TFrmCentro_Trabalho.Centro_Trabalho_EstagioAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho_Estagio.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_CENTRO_TRABALHO_ESTAGIO'));
  Centro_Trabalho_Estagio.FieldByName('CODCENTRO_TRABALHO').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmCentro_Trabalho.FormCreate(Sender: TObject);
begin
  inherited;
  CarregaIcones;
end;

procedure TFrmCentro_Trabalho.Centro_Trabalho_AusenciaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho_Ausencia.FieldByName('CODIGO').AsInteger             := GetProximoCodigo('CENTRO_TRABALHO_AUSENCIA', TransaFD);
  Centro_Trabalho_Ausencia.FieldByName('CODCENTRO_TRABALHO').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
end;

procedure TFrmCentro_Trabalho.Centro_Trabalho_RecursoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho_Recurso.FieldByName('CODIGO').AsInteger             := Trunc(GetProximoCodigoGen('CR_CENTRO_TRABALHO_RECURSO'));
  Centro_Trabalho_Recurso.FieldByName('CODCENTRO_TRABALHO').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
end;


procedure TFrmCentro_Trabalho.dxLayoutGroup3TabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmCentro_Trabalho.EdtTempoEstimadoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ATempo :integer;
begin
  inherited;
  if TFrmEntradaTempo.GetTempo(ATempo) then
    EdtTempoEstimado.Text := MinutosToHoras(ATempo);
end;

procedure TFrmCentro_Trabalho.GridRecursosViewEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  try
    VerificaSePodeAlteraDataSet;
  except
    AAllow := False;
  end;
end;

procedure TFrmCentro_Trabalho.GridRecursosViewINSERIRPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(Cadastro);
end;

procedure TFrmCentro_Trabalho.GridRecursosViewTIPOGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ARecord = nil then
    Exit;
  //AText := RecursoTipoStrToDescricao(VarToStrDef(ARecord.Values[GridRecursosViewTIPO.Index], ''));
end;

procedure TFrmCentro_Trabalho.LimpaCamposAusencia;
begin
  EdtAusenteDescricao.Clear;
  EdtAusenteDtInicio.Clear;
  EdtAusenteDtFim.Clear;
end;

procedure TFrmCentro_Trabalho.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho_Ausencia.Open;
  Centro_Trabalho_Recurso.Open;
  FinanceiroCentroCusto.Open;
  Centro_Trabalho_Estagio.Open;
end;

procedure TFrmCentro_Trabalho.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho_Ausencia.Close;
  Centro_Trabalho_Recurso.Close;
  FinanceiroCentroCusto.Close;
  Centro_Trabalho_Estagio.Close;
end;

procedure TFrmCentro_Trabalho.CarregaIcones;
var
  AItem: TcxImageComboBoxItem;
  I: Integer;
begin
  CbxIcone.Properties.BeginUpdate;
  try
    for I := 0 to CbxIcone.Properties.Images.Count - 1 do
    begin
      AItem := CbxIcone.Properties.Items.Add;
      AItem.Value      := I;
      AItem.ImageIndex := I;
    end;
  finally
    CbxIcone.Properties.EndUpdate(False);
  end;
end;

initialization
  RegisterClass(TFrmCentro_Trabalho);

end.
