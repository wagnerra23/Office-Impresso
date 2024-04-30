unit CadMensalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, Menus, DB, dxLayoutContainer,
  UCBase, IBX.IBCustomDataSet, IBX.IBDatabase, ExtCtrls, cxDBEdit, cxGridDBTableView, cxButtons, cxLabel, cxButtonEdit,
  cxCalendar, IBX.IBQuery, cxCurrencyEdit, cxDBLabel, ComCtrls, ImgList, StdCtrls, frxClass, frxDBSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxCore, cxDateUtils, cxDropDownEdit, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, dxLayoutLookAndFeels, IBX.IBStoredProc, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxDBNavigator, dxLayoutControl, dxStatusBar, FireDAC.Stan.Intf, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage, dxScreenTip, System.ImageList, dxGDIPlusClasses,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, ACBrBase, ACBrConvenio115, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, UCHistDataset, WREventos, dxUIAdorners, fs_iinterpreter,
  System.Generics.Collections, uWRFormataCamposDataSet, WRButtonsEditAdd, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmMensalidade = class(TFrmCadM)
    DSMensalidadeFinanceiro: TDataSource;
    edtCodPlanoContasÎPlanoContas: TcxDBButtonEdit;
    liedtCodPlanoContasÎPlanoContas: TdxLayoutItem;
    MainLayoutGroup3: TdxLayoutGroup;
    lblCodPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel;
    lilblCodPlanoContasÎPlanoContasÎDESCRICAO: TdxLayoutItem;
    MainLayoutGroup4: TdxLayoutGroup;
    liedtCodContaÎContas: TdxLayoutItem;
    edtCodContaÎContas: TcxDBButtonEdit;
    lilblCodContaÎContasÎDESCRICAO: TdxLayoutItem;
    lblCodContaÎContasÎDESCRICAO: TcxLabel;
    btnGerarMensalidade: TcxButton;
    libtnGerarMensalidade: TdxLayoutItem;
    edtTotal: TcxCurrencyEdit;
    liedtTotal: TdxLayoutItem;
    edtMes: TcxDBDateEdit;
    liedtMes: TdxLayoutItem;
    btnEnviarFinanceiro: TcxButton;
    libtnEnviarFinanceiro: TdxLayoutItem;
    edtDT_Financeiro: TcxDBTextEdit;
    liedtDT_Financeiro: TdxLayoutItem;
    libtnCancelarFinanceiro: TdxLayoutItem;
    btnCancelarFinanceiro: TcxButton;
    MainLayoutGroup5: TdxLayoutGroup;
    lilblTotal: TdxLayoutItem;
    lblTotal: TcxLabel;
    MainLayoutGroup6: TdxLayoutGroup;
    lblDT_Gerado: TcxDBLabel;
    lilblDT_Gerado: TdxLayoutItem;
    PopupMenu1: TPopupMenu;
    Excluirestelanamento1: TMenuItem;
    N3: TMenuItem;
    Propagarmensalidade1: TMenuItem;
    PnlPropagarMensalidade: TPanel;
    cxLabel2: TcxLabel;
    Bevel1: TBevel;
    btnConfirmarGerarMensalidade: TcxButton;
    btnCancelarGerarMensalidade: TcxButton;
    edtDtPropagarMensalidade: TcxDateEdit;
    lilblClienteÎPessoasÎFANTASIA: TdxLayoutItem;
    lblClienteÎPessoasÎFANTASIA: TcxLabel;
    edtClienteÎPessoas: TcxButtonEdit;
    liedtClienteÎPessoas: TdxLayoutItem;
    lblParcelasEnviadasFinanceiro: TcxLabel;
    lilblParcelasEnviadasFinanceiro: TdxLayoutItem;
    IrPara1: TMenuItem;
    CadastrodaPessoa1: TMenuItem;
    frxMensalidade: TfrxDBDataset;
    frxMensalidadeFinanceiro: TfrxDBDataset;
    NotaFiscalModelo221: TMenuItem;
    GerarMenssalidade1: TMenuItem;
    N4: TMenuItem;
    GerarArquivodeNotas1: TMenuItem;
    Mensalidade_Financeiro: TFDQuery;
    GrupoMainTab: TdxLayoutGroup;
    TabMensalidades: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    GridMensalidade: TcxGrid;
    GridMensalidadeView: TcxGridDBTableView;
    GridMensalidadeViewCODIGO: TcxGridDBColumn;
    GridMensalidadeViewCODRESPONSAVEL: TcxGridDBColumn;
    GridMensalidadeViewRAZAOSOCIAL: TcxGridDBColumn;
    GridMensalidadeViewDT_VENCTO: TcxGridDBColumn;
    GridMensalidadeViewTIPOPAGTO: TcxGridDBColumn;
    GridMensalidadeViewVALOR: TcxGridDBColumn;
    GridMensalidadeViewDESCONTO_ACRESCIMO: TcxGridDBColumn;
    GridMensalidadeViewTotal: TcxGridDBColumn;
    GridMensalidadeViewDOCUMENTO: TcxGridDBColumn;
    GridMensalidadeViewSTATUS: TcxGridDBColumn;
    GridMensalidadeViewTIPO: TcxGridDBColumn;
    GridMensalidadeViewTIPO_RESPONSAVEL: TcxGridDBColumn;
    GridMensalidadeViewDT_EMISSAO: TcxGridDBColumn;
    GridMensalidadeViewCODCONDICAOPAGTO: TcxGridDBColumn;
    GridMensalidadeViewHISTORICO: TcxGridDBColumn;
    GridMensalidadeViewCONDICAOPAGTO: TcxGridDBColumn;
    GridMensalidadeViewCODCONTA: TcxGridDBColumn;
    GridMensalidadeViewCODPLANOCONTAS: TcxGridDBColumn;
    GridMensalidadeViewPLANOCONTAS: TcxGridDBColumn;
    GridMensalidadeLevel1: TcxGridLevel;
    Mensalidade_FinanceiroTotal: TFloatField;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    procedure btnGerarMensalidadeClick(Sender: TObject);
    procedure Mensalidade_FinanceiroBeforeEdit(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure Mensalidade_FinanceiroAfterOpen(DataSet: TDataSet);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnEnviarFinanceiroClick(Sender: TObject);
    procedure btnCancelarFinanceiroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excluirestelanamento1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Propagarmensalidade1Click(Sender: TObject);
    procedure btnCancelarGerarMensalidadeClick(Sender: TObject);
    procedure btnConfirmarGerarMensalidadeClick(Sender: TObject);
    procedure EdtCodClientePropertiesChange(Sender: TObject);
    procedure CadastrodaPessoa1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure Mensalidade_FinanceiroCalcFields(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Calc;
    function GetDtVencto(ACodCliente: String; ADtMesReferencia: TDate): TDate;
    procedure GerarMensalidade(ACodCliente: String; ADtMesInicio, ADtMesFim: TDate);
    function GetCodPlanoContas: string;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  Base, UnitFuncoes, DateUtils, CadContas, ConContas, Math, ConMensalidade, Services.Financeiro,
  StrUtils, DataModuleImpressao, wrFuncoes, Utils.Financeiro, Principal, wrForms, Tag.Form, Tag.Report;

procedure TFrmMensalidade.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  libtnCancelarFinanceiro.Visible := (Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0);
  liedtDT_Financeiro.Visible      := (Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0);
  libtnGerarMensalidade.Visible   := not (Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0);
  libtnEnviarFinanceiro.Visible   := not libtnCancelarFinanceiro.Visible;
end;

procedure TFrmMensalidade.btnCancelarFinanceiroClick(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  inherited;
  if ShowMessageWR('Deseja CANCELAR as parcelas enviadas ao financeiro?', MB_ICONQUESTION) <> idYes then
    Exit;
  Cadastro.Edit;
  if Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0 then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'update FINANCEIRO set STATUS = ''INATIVO CANCELADO'', MOTIVO_EXCLUSAO = ''Cancelamento de Mensalidade'' ' +
                        'where (CODPEDIDO = :CodPedido)';
      QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString + 'M';
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
    Cadastro.FieldByName('DT_FINANCEIRO').Clear;
    btnConfirmarClick(nil);
  end;
end;

procedure TFrmMensalidade.btnEnviarFinanceiroClick(Sender: TObject);
var
  APoint : TBookmark;
  ACod : Integer;
  QuerX : TFDQuery;
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
  if Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0 then
  begin
    ShowMessageWR('Estas mensalidades já foram enviadas ao financeiro e não podem ser reenviadas.');
    Exit;
  end;
  if Mensalidade_Financeiro.IsEmpty then
  begin
    ShowMessageWR('Não há parcelas a serem enviadas ao financeiro.');
    Exit;
  end;
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select max(CODIGO) ' +
                      'from FINANCEIRO ' +
                      'where (CODPEDIDO = :CodPedido) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerX.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
    QuerX.ParamByName('CodPedido').AsString  := Cadastro.FieldByName('CODIGO').AsString + 'M';
    QuerX.Open;
    ACod := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
  APoint := Mensalidade_Financeiro.GetBookmark;
  Mensalidade_Financeiro.First;
  Mensalidade_Financeiro.DisableControls;
  try
    while not Mensalidade_Financeiro.Eof do
    begin
      if Mensalidade_Financeiro.FieldByName('VALOR').AsFloat <> 0 then
      begin
        ServicesFinanceiro_Lancamento_Financeiro(
          TransaFD,
          ACod,
          Mensalidade_Financeiro.FieldByName('TIPO').AsString,
          Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString,
          Mensalidade_Financeiro.FieldByName('CODCONTA').AsInteger,
          Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
          Mensalidade_Financeiro.FieldByName('RAZAOSOCIAL').AsString,
          Mensalidade_Financeiro.FieldByName('DOCUMENTO').AsString,
          '',
          '',
          Mensalidade_Financeiro.FieldByName('TIPOPAGTO').AsString,
          '',
          '',
          Mensalidade_Financeiro.FieldByName('CODPLANOCONTAS').AsString,
          Mensalidade_Financeiro.FieldByName('HISTORICO').AsString,
          Mensalidade_Financeiro.FieldByName('STATUS').AsString,
          Cadastro.FieldByName('CODIGO').AsString + 'M',
          '',
          '1',
          '',
          CodigoUsuario,
          '',
          EmpresaAtiva,
          Mensalidade_Financeiro.FieldByName('Total').AsFloat,
          0,
          0,
          0, {TODO: Verificar se o valor de previsão será este mesmo}
          '',
          Mensalidade_Financeiro.FieldByName('DT_EMISSAO').AsDateTime,
          Mensalidade_Financeiro.FieldByName('DT_VENCTO').AsDateTime,
          0,
          0);
        Inc(ACod);
      end;
      Mensalidade_Financeiro.Next;
    end;
  finally
    if Mensalidade_Financeiro.IsEmpty and (APoint <> nil) then
      Mensalidade_Financeiro.GotoBookmark(APoint);
    Mensalidade_Financeiro.EnableControls;
  end;
  Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime := DataHoraSys;
  btnConfirmarClick(nil);
  ShowMessageWR('Lançamentos efetuados com sucesso.');
end;

procedure TFrmMensalidade.btnExcluirClick(Sender: TObject);
var
  QuerX : TFDQuery;
begin
  if Cadastro.IsEmpty then
    Exit;
  if Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0 then
  begin
    ShowMessageWR('As parcelas já foram enviadas ao financeiro. Não é possível excluir este registro de mensalidades.');
    Exit;
  end;
  if ShowMessageWR('Deseja excluir este registro de mensalidades e todas as parcelas?', MB_ICONQUESTION) = idYes then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'delete from MENSALIDADE_FINANCEIRO where (CODMENSALIDADE = :Cod)';
      QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
    Cadastro.Delete;
    TransaFD.Commit;
    Cadastro.Open;
    btnNovo.SetFocusWR;
  end;
end;

procedure TFrmMensalidade.btnGerarMensalidadeClick(Sender: TObject);
begin
  inherited;
  if Cadastro.FieldByName('CODIGO').AsString = '' then
  begin
    ShowMessageWR('Primeiramente inicie um novo registro de mensalidades clicando em "Novo"');
    btnNovo.SetFocusWR;
    Exit;
  end;
  if Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0 then
  begin
    ShowMessageWR('As mensalidades já foram enviadas para o financeiro. Para gerar novamente, primeiro cancele o envio ao financeiro.');
    Exit;
  end;
  if LblCodPlanoContasÎPlanoContasÎDESCRICAO.Caption = '' then
  begin
    ShowMessageWR('Preencha o Plano de Contas');
    EdtCodPlanoContasÎPlanoContas.SetFocusWR;
    Exit;
  end;
  if LblCodContaÎContasÎDESCRICAO.Caption = '' then
  begin
    ShowMessageWR('Preencha a Conta');
    EdtCodContaÎContas.SetFocusWR;
    Exit;
  end;
  if not (Cadastro.FieldByName('MES').AsDateTime > 0) then
  begin
    ShowMessageWR('Informe o mês de referência para as mensalidades.');
    edtMes.SetFocusWR;
    Exit;
  end;
  if ShowMessageWR('Deseja gerar as mensalidades?', MB_ICONQUESTION) = mrYes then
  begin
    try
      BtnGerarMensalidade.Enabled := False;
      GerarMensalidade(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas), Cadastro.FieldByName('MES').AsDateTime, Cadastro.FieldByName('MES').AsDateTime);
    finally
      BtnGerarMensalidade.Enabled := UCControls1.GetComponentRight(BtnGerarMensalidade).Enabled;
    end;
    ShowMessageWR('Mensalidade gerada com sucesso...');
  end;
end;

procedure TFrmMensalidade.BtnImprimirClick(Sender: TObject);
var
  APoint: TBookmark;
begin
  inherited;
  APoint := Mensalidade_Financeiro.GetBookmark;
  Mensalidade_Financeiro.DisableControls;
  try
//    DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0029'));
    DMImpressao.ImprimirTag(Self, Tag_Report_Mensalidade);
  finally
    if not Mensalidade_Financeiro.IsEmpty and (APoint <> nil) then
      Mensalidade_Financeiro.GotoBookmark(APoint);
    Mensalidade_Financeiro.EnableControls;
  end;
end;

procedure TFrmMensalidade.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Mensalidade_Financeiro.Open;
end;

procedure TFrmMensalidade.CadastrodaPessoa1Click(Sender: TObject);
begin
  inherited;
  CadastroTag_NormalChave(Self, Tag_Pessoas, Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
end;

procedure TFrmMensalidade.Calc;
var
  ATotal : Double;
  APoint : TBookmark;
  ACod : Integer;
begin
  Mensalidade_Financeiro.DisableControls;
  try
    ACod   := Mensalidade_Financeiro.FieldByName('CODIGO').AsInteger;
    APoint := Mensalidade_Financeiro.GetBookmark;
    ATotal := 0;
    Mensalidade_Financeiro.First;
    while not Mensalidade_Financeiro.Eof do
    begin
      ATotal := ATotal + Mensalidade_Financeiro.FieldByName('Total').AsFloat;
      Mensalidade_Financeiro.Next;
    end;
    EdtTotal.Value := ATotal;
    if not Mensalidade_Financeiro.IsEmpty and (APoint <> nil) then
      Mensalidade_Financeiro.GotoBookmark(APoint);
    if (Mensalidade_Financeiro.State = dsBrowse) and (ACod <> Mensalidade_Financeiro.FieldByName('CODIGO').AsInteger) then
      Mensalidade_Financeiro.Locate('CODIGO', ACod, []);
  finally
    Mensalidade_Financeiro.EnableControls;
  end;
end;

procedure TFrmMensalidade.btnConfirmarGerarMensalidadeClick(Sender: TObject);
begin
  inherited;
  GerarMensalidade(Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, Cadastro.FieldByName('MES').AsDateTime, EdtDtPropagarMensalidade.Date);
  FechaPanelForm(PnlPropagarMensalidade);
end;

procedure TFrmMensalidade.btnCancelarGerarMensalidadeClick(Sender: TObject);
begin
  inherited;
  FechaPanelForm(PnlPropagarMensalidade);
end;

procedure TFrmMensalidade.EdtCodClientePropertiesChange(Sender: TObject);
begin
  inherited;
  if EdtClienteÎPessoas.Text = '' then
    LblClienteÎPessoasÎFANTASIA.Caption := '<Todos>';
end;

procedure TFrmMensalidade.Excluirestelanamento1Click(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja excluir a mensalidade do cliente ' + Mensalidade_Financeiro.FieldByName('RAZAOSOCIAL').AsString + '?', MB_ICONQUESTION) = idYes then
  begin
    AlteraDataSet(Cadastro);
    Mensalidade_Financeiro.Delete;
    btnConfirmarClick(nil);
  end;
end;

procedure TFrmMensalidade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  Try    // Erro na troca de empresa,
    ConfigGrid.GravaConfigGrid(GridMensalidadeView, 'GridMensalidade');
  except End;
end;

procedure TFrmMensalidade.FormCreate(Sender: TObject);
begin
  inherited;
  ConfigGrid.Carregar(self.ClassName);
  ConfigGrid.CarregaConfigGridClasse(GridMensalidadeView, 'GridMensalidade');
end;

procedure TFrmMensalidade.GerarMensalidade(ACodCliente: String; ADtMesInicio, ADtMesFim: TDate);
var
  DifData, ACod: Integer;
  ADataAtual, AMesReferencia : TDateTime;
  AMensalidadeValor : Double;
  QuerX : TFDQuery;
begin
  VerificaSePodeAlteraDataSet(Cadastro);
  ADtMesInicio := StartOfTheMonth(ADtMesInicio);
  ADtMesFim    := StartOfTheMonth(ADtMesFim);
  ADataAtual   := DataHoraSys;
  Cadastro.FieldByName('DT_GERADO').AsDateTime := ADataAtual;
//  Cadastro.Post; //Necessário para a chave estrangeira  << Chave estrageira apagada
  QuerX := GeraFDQuery(TransaFD);
  try
    if ACodCliente = '' then
    begin
      QuerX.SQL.Text := 'delete from MENSALIDADE_FINANCEIRO where (CODMENSALIDADE = :Cod)';
      QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
      QuerX.ExecSQL;
    end;

    QuerX.SQL.Text := 'select max(CODIGO) from MENSALIDADE_FINANCEIRO where (CODMENSALIDADE = :Cod)';
    QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
    QuerX.Open;
    ACod := QuerX.Fields[0].AsInteger + 1;
    QuerX.Close;

    Mensalidade_Financeiro.DisableControls;

    AMesReferencia := ADtMesInicio;
    while AMesReferencia <= ADtMesFim do
    begin
      QuerX.SQL.Text := 'select P.CODIGO, P.RAZAOSOCIAL, P.QUANT_MAQUINAS, P.SALARIO ' +
                        'from PESSOAS P ' +
                        'where (P.IS_MEN = ''S'') ' +
                        '      and (P.SALARIO > 0) ' +
                        '      and (P.DATACADASTRO < :DtCadastro) ' +
                        '      and (P.ATIVO = ''S'') ' +
                        '      and not exists(select first 1 1 ' +
                        '                     from FINANCEIRO F ' +
                        '                     where ((CODPLANOCONTAS in (' + GetCodPlanoContas + ')))' +  //(F.CODPEDIDO like ''%M'') or
                        '                           and (F.STATUS like ''ATIVO%'') ' +
                        '                           and (F.VENCTO between :DtInicioVencto and :DtFimVencto) ' +
                        '                           and (F.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO))';
      if ACodCliente <> '' then
      begin
        QuerX.SQL.Add('and (P.CODIGO = :CodCliente)');
        QuerX.ParamByName('CodCliente').AsString := ACodCliente;
      end;
      QuerX.ParamByName('DtCadastro').AsDateTime     := StartOfTheMonth(AMesReferencia);
      QuerX.ParamByName('DtInicioVencto').AsDateTime := StartOfTheMonth(IncMonth(AMesReferencia));
      QuerX.ParamByName('DtFimVencto').AsDateTime    := EndOfTheMonth(IncMonth(AMesReferencia));
      QuerX.Open;
      if not Mensalidade_Financeiro.Locate('PESSOA_RESPONSAVEL_CODIGO;DT_VENCTO',
                                           VarArrayOf([QuerX.FieldByName('CODIGO').AsString,
                                                       GetDtVencto(QuerX.FieldByName('CODIGO').AsString,AMesReferencia)]), []) then
      begin
        while not QuerX.Eof do
        begin
          Mensalidade_Financeiro.Insert;
          Mensalidade_Financeiro.FieldByName('CODIGO').AsInteger          := ACod;
          Mensalidade_Financeiro.FieldByName('CODMENSALIDADE').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
          Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := QuerX.FieldByName('CODIGO').AsString;
          Mensalidade_Financeiro.FieldByName('VALOR').AsFloat             := QuerX.FieldByName('SALARIO').AsFloat;
          Mensalidade_Financeiro.FieldByName('DT_VENCTO').AsDateTime      := GetDtVencto(QuerX.FieldByName('CODIGO').AsString, AMesReferencia);
          Mensalidade_Financeiro.FieldByName('STATUS').AsString           := 'ATIVO';
          Mensalidade_Financeiro.FieldByName('TIPO').AsString             := 'A RECEBER';
          Mensalidade_Financeiro.FieldByName('DOCUMENTO').AsString        := QuerX.FieldByName('CODIGO').AsString + '/' + LeftStr(UpperCase(FormatDateTime('MMMM', AMesReferencia)), 3) + '/' + FormatDateTime('YYYY', AMesReferencia);
          Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := 'MEN';
          Mensalidade_Financeiro.FieldByName('RAZAOSOCIAL').AsString      := QuerX.FieldByName('RAZAOSOCIAL').AsString;
          Mensalidade_Financeiro.FieldByName('DT_EMISSAO').AsDateTime     := ADataAtual;
          Mensalidade_Financeiro.FieldByName('CODPLANOCONTAS').AsString   := Cadastro.fieldByName('CODPLANOCONTAS').AsString;
          Mensalidade_Financeiro.FieldByName('TIPOPAGTO').AsString        := 'BOLETO';
          Mensalidade_Financeiro.FieldByName('DT_ALTERACAO').AsDateTime   := ADataAtual;
          Mensalidade_Financeiro.FieldByName('CODCONTA').AsInteger        := Cadastro.FieldByName('CODCONTA').AsInteger;
          Mensalidade_Financeiro.FieldByName('HISTORICO').AsString        := 'MENSALIDADE REFERENTE AO MÊS DE ' + Mensalidade_Financeiro.FieldByName('DOCUMENTO').AsString;
          Mensalidade_Financeiro.Post;
          Inc(ACod);
          QuerX.Next;
        end;
      end;

      QuerX.Close;

      QuerX.SQL.Text := 'select P.CODIGO, P.RAZAOSOCIAL, P.QUANT_MAQUINAS, P.SALARIO, P.DATACADASTRO ' +
                        'from PESSOAS P ' +
                        'where (P.IS_MEN = ''S'') ' +
                        '      and (P.SALARIO > 0) ' +
                        '      and (P.DATACADASTRO between :DtInicioCadastro and :DtFimCadastro) ' +
                        '      and (P.ATIVO = ''S'') ' +
                        '      and not exists(select first 1 1 ' +
                        '                     from FINANCEIRO F ' +
                        '                     where ((F.CODPEDIDO like ''%M'') or (CODPLANOCONTAS in (' + GetCodPlanoContas + '))) ' +
                        '                           and (F.STATUS like ''ATIVO%'') ' +
                        '                           and (F.VENCTO between :DtInicioVencto and :DtFimVencto) ' +
                        '                           and (F.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO))';
      if ACodCliente <> '' then
      begin
        QuerX.SQL.Add('and (P.CODIGO = :CodCliente)');
        QuerX.ParamByName('CodCliente').AsString := ACodCliente;
      end;
      QuerX.ParamByName('DtInicioCadastro').AsDateTime := StartOfTheMonth(AMesReferencia);
      QuerX.ParamByName('DtFimCadastro').AsDateTime    := EndOfTheMonth(AMesReferencia);
      QuerX.ParamByName('DtInicioVencto').AsDateTime   := StartOfTheMonth(IncMonth(AMesReferencia));
      QuerX.ParamByName('DtFimVencto').AsDateTime      := EndOfTheMonth(IncMonth(AMesReferencia));
      QuerX.Open;
      if not Mensalidade_Financeiro.Locate('PESSOA_RESPONSAVEL_CODIGO;DT_VENCTO', VarArrayOf([QuerX.FieldByName('CODIGO').AsString, GetDtVencto(QuerX.FieldByName('CODIGO').AsString, AMesReferencia)]), []) then
      begin
        while not QuerX.Eof Do
        begin
          if QuerX.FieldByName('SALARIO').AsFloat <> 0 then
          begin
            DifData := DaysBetween(QuerX.FieldByName('DATACADASTRO').AsDateTime, EndOfTheMonth(AMesReferencia)) + 1;
            if DayOf(EndOfTheMonth(AMesReferencia)) > 30 then
              DifData := Max(DifData - 1, 0);
            if not Mensalidade_Financeiro.Locate('PESSOA_RESPONSAVEL_CODIGO', QuerX.FieldByName('CODIGO').AsString, []) then
            begin
              Mensalidade_Financeiro.Insert;
              Mensalidade_Financeiro.FieldByName('CODIGO').AsInteger          := ACod;
              Mensalidade_Financeiro.FieldByName('CODMENSALIDADE').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
              Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := QuerX.FieldByName('CODIGO').AsString;
              Mensalidade_Financeiro.FieldByName('DT_VENCTO').AsDateTime      := GetDtVencto(QuerX.FieldByName('CODIGO').AsString, AMesReferencia);
              Mensalidade_Financeiro.FieldByName('DOCUMENTO').AsString        := LeftStr(UpperCase(FormatDateTime('MMMM', AMesReferencia)), 3) + '/' + FormatDateTime('YYYY', AMesReferencia);
              Mensalidade_Financeiro.FieldByName('STATUS').AsString           := 'ATIVO';
              Mensalidade_Financeiro.FieldByName('TIPO').AsString             := 'A RECEBER';
              Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := 'MEN';
              Mensalidade_Financeiro.FieldByName('RAZAOSOCIAL').AsString      := QuerX.FieldByName('RAZAOSOCIAL').AsString;
              Mensalidade_Financeiro.FieldByName('DT_EMISSAO').AsDateTime     := ADataAtual;
              Mensalidade_Financeiro.FieldByName('CODPLANOCONTAS').AsString   := Cadastro.FieldByName('CODPLANOCONTAS').AsString;
              Mensalidade_Financeiro.FieldByName('TIPOPAGTO').AsString        := 'BOLETO';
              Mensalidade_Financeiro.FieldByName('DT_ALTERACAO').AsDateTime   := ADataAtual;
              Mensalidade_Financeiro.FieldByName('CODCONTA').AsInteger        := Cadastro.FieldByName('CODCONTA').AsInteger;
              Mensalidade_Financeiro.FieldByName('HISTORICO').AsString        := 'MENSALIDADE REFERENTE AO MÊS DE ' + Mensalidade_Financeiro.FieldByName('DOCUMENTO').AsString;
              Inc(ACod);
            end else
              Mensalidade_Financeiro.Edit;

            AMensalidadeValor := QuerX.FieldByName('SALARIO').AsFloat / 30 * DifData;
            Mensalidade_Financeiro.FieldByName('VALOR').AsFloat := RdT(Mensalidade_Financeiro.FieldByName('VALOR').AsFloat + AMensalidadeValor, -2);
            Mensalidade_Financeiro.Post;
          end;
          QuerX.Next;
        end;
      end;
      QuerX.Close;
      AMesReferencia := IncMonth(AMesReferencia, 1);
    end;
    Mensalidade_Financeiro.First;
    while not Mensalidade_Financeiro.Eof do
    begin
      Mensalidade_Financeiro.Edit;
      if Procura('COBRAR_CUSTO_BOLETO', 'PESSOAS', Mensalidade_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString) = 'S' then
        Mensalidade_Financeiro.FieldByName('DESCONTO_ACRESCIMO').AsFloat := StrToFloatDef(Procura('CUSTO_BOLETO', 'CONTAS', Mensalidade_Financeiro.FieldByName('CODCONTA').AsString), 0)
      else
        Mensalidade_Financeiro.FieldByName('DESCONTO_ACRESCIMO').AsFloat := 0;
      Mensalidade_Financeiro.Post;
      Mensalidade_Financeiro.Next;
    end;
//    AlteraDataSet(Cadastro); << esta em edição
    Calc;
  finally
    QuerX.Free;
    Mensalidade_Financeiro.EnableControls;
  end;
end;

function TFrmMensalidade.GetCodPlanoContas: string;
begin
  with TStringList.Create do
  try
    Add(Cadastro.FieldByName('CODPLANOCONTAS').AsString);
    QuoteChar := '''';
    Result := DelimitedTextWR;
  finally
    Free;
  end;
end;

function TFrmMensalidade.GetDtVencto(ACodCliente: String; ADtMesReferencia: TDate): TDate;
var
  QuerX : TIBQuery;
  ADia, AMes, AAno : Word;
begin
  //Determina a data de vencimento da parcela. Se no cliente estiver definido um dia para o vencimento, então
  //a data de vencimento é construída com o dia selecionado
  ADtMesReferencia := IncMonth(ADtMesReferencia);
  DecodeDate(ADtMesReferencia, AAno, AMes, ADia);
  ADia := 10;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CONDICAOPAGTO_DIA_PROXIMO_MES ' +
                      'from PESSOAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := ACodCliente;
    QuerX.Open;
    if QuerX.Fields[0].AsInteger > 0 then
      ADia := QuerX.Fields[0].AsInteger;
    ADia := Min(ADia, DaysInMonth(ADtMesReferencia));
  finally
    QuerX.Free;
  end;
  Result := EncodeDate(AAno, AMes, ADia);
end;

procedure TFrmMensalidade.Mensalidade_FinanceiroAfterOpen(DataSet: TDataSet);
begin
  Calc;
end;

procedure TFrmMensalidade.Mensalidade_FinanceiroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  AlteraDataSet(Cadastro);
end;

procedure TFrmMensalidade.Mensalidade_FinanceiroCalcFields(DataSet: TDataSet);
begin
  inherited;
  Mensalidade_Financeiro.FieldByName('Total').AsFloat := Mensalidade_Financeiro.FieldByName('VALOR').AsFloat + Mensalidade_Financeiro.FieldByName('DESCONTO_ACRESCIMO').AsFloat;
end;

procedure TFrmMensalidade.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  Excluirestelanamento1.Enabled := not Mensalidade_Financeiro.IsEmpty;
  Propagarmensalidade1.Enabled  := not Mensalidade_Financeiro.IsEmpty;
  CadastrodaPessoa1.Enabled     := not Mensalidade_Financeiro.IsEmpty;
end;

procedure TFrmMensalidade.Propagarmensalidade1Click(Sender: TObject);
begin
  inherited;
  EdtDtPropagarMensalidade.Date := IncMonth(Mensalidade_Financeiro.FieldByName('DT_VENCTO').AsDateTime, 1);
  ShowPanelForm(PnlPropagarMensalidade, bsSingle);
end;

procedure TFrmMensalidade.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(Mensalidade_Financeiro, 'MENSALIDADE_FINANCEIRO');
end;

initialization
  RegisterClass(TFrmMensalidade);

end.

