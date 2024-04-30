unit Frame_CadComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Cad, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters, IBX.IBCustomDataSet, UCBase, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit,
  cxDBNavigator, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar, Vcl.DBCtrls, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  IBX.IBQuery, Vcl.Buttons, StrUtils, Math, DataModuleImpressao, dxSkinsCore, WREventos,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions, Vcl.ActnList, dxDateRanges,
  UCHistDataset, System.Generics.Collections, CadM, FireDAC.Stan.Async,
  FireDAC.DApt, cxLabel, uWRFormataCamposDataSet, frFrameHistorico, Frame_Cad, dxCustomTileControl, dxTileControl,
  Frame_Cad_Pocket, cxButtonEdit, wrForms, Frame_CadFinanceiro, cxMemo, dxUIAdorners,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmComissao = class(TFrmCad_Frame_Pocket)
    DSComissao_Pessoa: TDataSource;
    liDBEdit1: TdxLayoutItem;
    DBEdit1: TDBEdit;
    MenuImpressoesPersonalizadas: TPopupMenu;
    liDBEdit2: TdxLayoutItem;
    DBEdit2: TDBEdit;
    edtTipoComissao: TcxDBComboBox;
    liedtTipoComissao: TdxLayoutItem;
    frxComissao: TfrxDBDataset;
    frxComissao_Pessoas: TfrxDBDataset;
    frxComissao_Financeiro: TfrxDBDataset;
    DSComissao_Meta: TDataSource;
    pnlMetas: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem6: TdxLayoutItem;
    EdtDEComissao: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    CbTipoComissao: TcxComboBox;
    dxLayoutItem13: TdxLayoutItem;
    EdtMetaComissao: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    EdtPorcentComissao: TcxCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    BtnAddTabelaPreco: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    BtnRemoveTabelaPreco: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    GridPrecos: TcxGrid;
    GridPrecosDBTableView2: TcxGridDBTableView;
    GridPrecosDBTableView2Column1: TcxGridDBColumn;
    GridPrecosDBTableView2TIPO: TcxGridDBColumn;
    GridPrecosDBTableView2VALOR: TcxGridDBColumn;
    GridPrecosDBTableView2PORCENTAGEM: TcxGridDBColumn;
    GridPrecosLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    MenuGrid: TPopupMenu;
    popupMarcarTodasParcelas: TMenuItem;
    popupDesmarcarTodasParcelas: TMenuItem;
    UCHist_DataSet1: TUCHist_DataSet;
    Comissao_Pessoa: TFDQuery;
    Comissao_Financeiro: TFDQuery;
    Comissao_Meta: TFDQuery;
    Financeiro: TFDQuery;
    MarcartodasasparcelasdestapessoacomoPendente1: TMenuItem;
    MarcartodasasparcelasdestapessoacomoDEFERIDA1: TMenuItem;
    MarcartodasasparcelasdestapessoacomoCANCELADA1: TMenuItem;
    Grupo_Nome: TdxLayoutGroup;
    DSComissao_Financeiro: TDataSource;
    liedtResponsavelÎPessoas: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    dxLayoutItem19: TdxLayoutItem;
    edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel;
    dxLayoutGroup2: TdxLayoutGroup;
    tcComissoes: TdxTileControl;
    dxLayoutItem18: TdxLayoutItem;
    TiFinanceiro: TdxTileControlItem;
    dxTileControl3Group1: TdxTileControlGroup;
    TiVenda: TdxTileControlItem;
    pnlTotal: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    edtComissao: TcxCurrencyEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    TiProducao: TdxTileControlItem;
    pnlVenda: TPanel;
    lcComissoes: TdxLayoutControl;
    GridVenda: TcxGrid;
    GridVendaDBTableView1: TcxGridDBTableView;
    GridVendaDBTableView1GERA_COMISSAO: TcxGridDBColumn;
    GridVendaDBTableView1ACAO: TcxGridDBColumn;
    GridVendaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    GridVendaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    GridVendaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridVendaDBTableView1CARGO: TcxGridDBColumn;
    GridVendaDBTableView1VALOR_EMABERTO: TcxGridDBColumn;
    GridVendaDBTableView1VALOR_VENCIDA: TcxGridDBColumn;
    GridVendaDBTableView1VALOR_QUITADA: TcxGridDBColumn;
    GridVendaDBTableView1VALOR_COMISSAO_APAGAR: TcxGridDBColumn;
    GridVendaDBTableView1VALOR_COMISSAO: TcxGridDBColumn;
    GridVendaLevel1: TcxGridLevel;
    cxComTotal: TcxCurrencyEdit;
    lcComissoesGroup_Root: TdxLayoutGroup;
    GrupoVenda: TdxLayoutGroup;
    liGridVenda: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    pnlFinanceiro: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    GridFinanceiro: TcxGrid;
    cxComissao_Financeiro: TcxGridDBTableView;
    cxComissao_FinanceiroIS_PAGAR: TcxGridDBColumn;
    cxComissao_FinanceiroNAO_GERA_PROXIMA_COMISSAO: TcxGridDBColumn;
    cxComissao_FinanceiroRAZAOSOCIAL: TcxGridDBColumn;
    cxComissao_FinanceiroCODPEDIDO: TcxGridDBColumn;
    cxComissao_FinanceiroNOTAFISCAL: TcxGridDBColumn;
    cxComissao_FinanceiroPARCELA: TcxGridDBColumn;
    cxComissao_FinanceiroVENCTO: TcxGridDBColumn;
    cxComissao_FinanceiroDATAPAGTO: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_PARCELA: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_AGENCIA: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_FRETE: TcxGridDBColumn;
    cxComissao_FinanceiroPERC_COMISSAO: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_COMISSAO: TcxGridDBColumn;
    cxComissao_FinanceiroSTATUS: TcxGridDBColumn;
    cxComissao_FinanceiroPESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    cxComissao_FinanceiroPESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    cxComissao_FinanceiroPESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_RECEBIDA: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_VENCIDA: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_EMABERTO: TcxGridDBColumn;
    cxComissao_FinanceiroCARGO: TcxGridDBColumn;
    cxComissao_FinanceiroCODFINANCEIRO: TcxGridDBColumn;
    cxComissao_FinanceiroCODEMPRESA: TcxGridDBColumn;
    cxComissao_FinanceiroFATOR_COMERCIAL: TcxGridDBColumn;
    cxComissao_FinanceiroDT_COMPETENCIA: TcxGridDBColumn;
    cxComissao_FinanceiroCODIGO: TcxGridDBColumn;
    cxComissao_FinanceiroCODCOMISSAO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    GrupoFinanceiro: TdxLayoutGroup;
    liGridFinanceiro: TdxLayoutItem;
    pnlProducao: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    GridProducao: TcxGrid;
    GridProducaoDBTableView1: TcxGridDBTableView;
    GridProducaoLevel1: TcxGridLevel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    GrupoProducao: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxTileControl4: TdxTileControl;
    dxTileControlGroup10: TdxTileControlGroup;
    tiAdicionarParcela: TdxTileControlItem;
    BtnGerarComissoes: TdxTileControlItem;
    tiExcluirParcela: TdxTileControlItem;
    Comissao_FinanceiroValor_Recebida: TFloatField;
    Comissao_FinanceiroValor_EmAberto: TFloatField;
    Comissao_FinanceiroValor_Vencida: TFloatField;
    dxLayoutItem5: TdxLayoutItem;
    edtComissao_Pendente: TcxCurrencyEdit;
    dxTileControl3: TdxTileControl;
    dxTileControlGroup7: TdxTileControlGroup;
    dxTileControlItem13: TdxTileControlItem;
    tiFinalizar: TdxTileControlItem;
    pnlTotais: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    edtVencida: TcxCurrencyEdit;
    edtRecebida: TcxCurrencyEdit;
    edtEmAberto: TcxCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    btnTotais: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxComissao_FinanceiroVALOR_COMISSAO_PENDENTE: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_PAGAR: TcxGridDBColumn;
    cxComissao_FinanceiroVALOR_PENDENTE: TcxGridDBColumn;
    tiCancelar: TdxTileControlItem;
    dxLayoutItem9: TdxLayoutItem;
    MemoObservacao: TcxDBMemo;
    N3: TMenuItem;
    AplicarMeta1: TMenuItem;
    ConfigurarMeta1: TMenuItem;

    {$REGION 'Eventos antigos'}
//    procedure btnConsultarClick(Sender: TdxTileControlItem);
//    procedure BtnLancarFinanceiroClick(Sender: TObject);
//    procedure BtnCancelaLancFinanClick(Sender: TObject);
//    procedure BtnGerarComissoesClick(Sender: TdxTileControlItem);
//    procedure btnExcluirClick(Sender: TdxTileControlItem);
//    procedure GridVendaDBTableView1DblClick(Sender: TObject);
//    procedure btnMetaClick(Sender: TObject);
//    procedure BtnRemoveTabelaPrecoClick(Sender: TObject);
//    procedure BtnAddTabelaPrecoClick(Sender: TObject);
//    procedure popupMarcarTodasParcelasClick(Sender: TObject);
//    procedure popupDesmarcarTodasParcelasClick(Sender: TObject);
//    procedure MenuGridPopup(Sender: TObject);
//    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
//    procedure MarcartodasasparcelasdestapessoacomoPendente1Click(
//      Sender: TObject);
//    procedure MarcartodasasparcelasdestapessoacomoDEFERIDA1Click(
//      Sender: TObject);
//    procedure MarcartodasasparcelasdestapessoacomoCANCELADA1Click(
//      Sender: TObject);
//    procedure FormCreate(Sender: TObject);
//    procedure GridVendaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
//      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
//      var ADone: Boolean);
//    procedure cxGrid1DBTableView1VALOR_COMISSAOPropertiesChange(
//      Sender: TObject);
    {$ENDREGION}

    // Eventos
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure tiAdicionarParcelaClick(Sender: TdxTileControlItem);
    procedure Comissao_FinanceiroBeforePost(DataSet: TDataSet);
    procedure Comissao_FinanceiroAfterInsert(DataSet: TDataSet);
    procedure Comissao_FinanceiroBeforeEdit(DataSet: TDataSet);
    procedure tiExcluirParcelaClick(Sender: TdxTileControlItem);
    procedure tiFinalizarClick(Sender: TdxTileControlItem);
    procedure tiCancelarClick(Sender: TdxTileControlItem);
    procedure GrupoLogAlteracoesTabChanged(Sender: TObject);

    // Funções Utilitárias
    procedure ValidaParcela(AQuerFinanceiro: TFDQUery);
    procedure HabilitaCampos;

    // Change
    procedure DSStateChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure edtTipoComissaoPropertiesChange(Sender: TObject);

    // CalcFields
    procedure Comissao_FinanceiroCalcFields(DataSet: TDataSet);

    // Close Open
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);

    // Totais Grid
    procedure btnTotaisClick(Sender: TObject);
    procedure pnlTotaisExit(Sender: TObject);
    procedure cxComissao_FinanceiroDataControllerSummaryAfterSummary(ASender: TcxDataSummary);

    // Tile Control
    procedure TiFinanceiroActivateDetail(Sender: TdxTileControlItem);
    procedure TiVendaActivateDetail(Sender: TdxTileControlItem);
    procedure TiProducaoActivateDetail(Sender: TdxTileControlItem);
    procedure tcComissoesItemDeactivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);

    // Relatório
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TdxTileControlItem);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);


  private
    FCodFinanceiro: Integer;
    function CalculaStatusComissaoParcela(AMemFinanceiro: TFDMemTable): string;
  public


  {$REGION 'Funções Antigas'}
//    procedure Calc;
//    procedure CalculaTotal(const ACodComissao: Integer; const ACodResponsavel: string);
//    function VerificaMetas(AComissao: Double; const ACodMissionado: string; AQuerParcelas: TDataSet): Double;
//    procedure ValidaEmissao;
//    procedure CadastraComissao(ACodigo, ATipo: string; ASequencia: Integer; AComissao: Double; QuerParcelas: TFDQuery);
//    procedure MarcaDesmarcaPessoa(const AMarcar: Boolean);
//    function GetProximoCodigoComissao(const ATabelaFilha: string): Integer;
//    procedure BuscaComissoesNew;
//    procedure TrocaStatusParcelas(const AStatus: string; AComissao_Pessoa, AComissao_Financeiro: TDataset);
//    procedure AlteraGeraComissao(const AStatus: string; AComissao_Financeiro: TDataset);
    {$ENDREGION}
  end;

implementation

{$R *.dfm}
uses
  UnitFuncoes, DateUtils, wrFuncoes, Principal, Aguarde, Classes.WR,
  Utils.Financeiro, Base, Services.Financeiro, Tag.Form;

////////////////////// - EVENTOS - //////////////////////
procedure TFrmComissao.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  CreateDaTela.AdicionarDataSet(Comissao_Pessoa, 'COMISSAO_PESSOA');
  CreateDaTela.AdicionarDataSet(Comissao_Financeiro, 'COMISSAO_FINANCEIRO');
end;

procedure TFrmComissao.tiAdicionarParcelaClick(Sender: TdxTileControlItem);
Var
  i, ATag : Integer;
begin
  inherited;
  if Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString = 'REP' then
    ATag := Tag_Comissao_Selecao_Financeiro_Representante
  else
  if Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString = 'FUN' then
    ATag := Tag_Comissao_Selecao_Financeiro_Funcionario
  else
  if Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString = 'AGE' then
    ATag := Tag_Comissao_Selecao_Financeiro_Agencia
  else
    ATag := Tag_Comissao_Selecao_Financeiro_Funcionario;

  with ABaseClass_Normal[QuemeoPai(ATag)].Create(self) do
    ShowConsultaModalItem(ATag);


//  ConsultaTag_NormalModal(self, Tag); //Tag_Comissao_Selecao_Financeiro

  if MemTableSelecao.RecordCount = 0 then
    Exit;

  FCodFinanceiro := Comissao_Financeiro.RecordCount;

  VerificaSePodeAlteraDataSet;
  MemTableSelecao.First;
  while not MemTableSelecao.eof do
  begin
    if Comissao_Financeiro.Locate('CODFINANCEIRO', MemTableSelecao.FieldByName('CODIGO').AsInteger, []) then
      Comissao_Financeiro.Edit
    else
    begin
      Inc(FCodFinanceiro);
      Comissao_Financeiro.Insert;
    end;

    Comissao_Financeiro.FieldByName('STATUS').AsString           := CalculaStatusComissaoParcela(MemTableSelecao);
    Comissao_Financeiro.FieldByName('CODIGO').AsInteger          := Trunc(GetProximoCodigoGen('CR_COMISSAO_FINANCEIRO'));
    Comissao_Financeiro.FieldByName('CODCOMISSAO').AsInteger     := Cadastro.FieldByName('CODIGO').AsInteger;
    Comissao_Financeiro.FieldByName('CODFINANCEIRO').AsInteger   := MemTableSelecao.FieldByName('CODIGO').AsInteger;
    Comissao_Financeiro.FieldByName('CODPEDIDO').AsString        := MemTableSelecao.FieldByName('CODPEDIDO').AsString;
    Comissao_Financeiro.FieldByName('CODEMPRESA').AsInteger      := MemTableSelecao.FieldByName('CODEMPRESA').AsInteger;
    Comissao_Financeiro.FieldByName('DT_VENCIMENTO').AsDateTime  := MemTableSelecao.FieldByName('VENCTO').AsDateTime;

    if MemTableSelecao.FieldByName('DATAPAGTO').AsDateTime <> 0 then
      Comissao_Financeiro.FieldByName('DT_PAGAMENTO').AsDateTime := MemTableSelecao.FieldByName('DATAPAGTO').AsDateTime;

    Comissao_Financeiro.FieldByName('VALOR').AsFloat             := MemTableSelecao.FieldByName('TOTAL').AsFloat;
    Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat     := SQL_BuscaPercComissaoDoRepresentanteNaVenda(
                                                                        Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
                                                                        MemTableSelecao.FieldByName('CODPEDIDO').AsString);
    Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat    := MemTableSelecao.FieldByName('VALOR').AsFloat * Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat / 100;

    Comissao_Financeiro.FieldByName('RAZAOSOCIAL').AsString                   := MemTableSelecao.FieldByName('RAZAOSOCIAL').AsString;
    Comissao_Financeiro.FieldByName('IS_PAGAR').AsString         := 'S';
    Comissao_Financeiro.Post;

    MemTableSelecao.Next;
  end;
end;

procedure TFrmComissao.Comissao_FinanceiroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.State = dsEdit) then
  begin
    if not VarSameValueWR(Comissao_Financeiro.FieldByName('PERC_COMISSAO').Value,
                          Comissao_Financeiro.FieldByName('PERC_COMISSAO').OldValue) then
    begin
      Comissao_Financeiro.FieldByName('VALOR_COMISSAO').Value := PercValor(Comissao_Financeiro.FieldByName('VALOR').AsCurrency,
                                                                           Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsCurrency);
    end
    else if not VarSameValueWR(Comissao_Financeiro.FieldByName('VALOR_COMISSAO').Value,
                               Comissao_Financeiro.FieldByName('VALOR_COMISSAO').OldValue) then
      Comissao_Financeiro.FieldByName('PERC_COMISSAO').Value := (Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsCurrency /(Comissao_Financeiro.FieldByName('VALOR').AsCurrency)) *100;

    if Comissao_Financeiro.FieldByName('IS_PAGAR').AsString = 'S' then
    begin
      Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat := Comissao_Financeiro.FieldByName('VALOR').AsFloat * Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat / 100;
      Comissao_Financeiro.FieldByName('VALOR_COMISSAO_PENDENTE').Clear;
    end
    else
    begin
      Comissao_Financeiro.FieldByName('VALOR_COMISSAO_PENDENTE').AsFloat := Comissao_Financeiro.FieldByName('VALOR').AsFloat * Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat / 100;
      Comissao_Financeiro.FieldByName('VALOR_COMISSAO').Clear;
    end;
  end;
end;

procedure TFrmComissao.tiExcluirParcelaClick(Sender: TdxTileControlItem);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not Comissao_Financeiro.IsEmpty then
    Comissao_Financeiro.Delete;
end;

procedure TFrmComissao.Comissao_FinanceiroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Comissao_Financeiro.FieldByName('COMISSAO_STATUS').AsString := 'Pendente';
end;

procedure TFrmComissao.Comissao_FinanceiroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrmComissao.Comissao_FinanceiroCalcFields(DataSet: TDataSet);
begin
  inherited;
  if Comissao_Financeiro.FieldByName('STATUS').AsString = 'RECEBIDA' then
    Comissao_Financeiro.FieldByName('Valor_recebida').AsFloat := Comissao_Financeiro.FieldByName('VALOR').AsFloat;

  if Comissao_Financeiro.FieldByName('STATUS').AsString = 'VENCIDA' then
    Comissao_Financeiro.FieldByName('Valor_Vencida').AsFloat := Comissao_Financeiro.FieldByName('VALOR').AsFloat;

  if Comissao_Financeiro.FieldByName('STATUS').AsString = 'EM ABERTO' then
    Comissao_Financeiro.FieldByName('Valor_EmAberto').AsFloat := Comissao_Financeiro.FieldByName('VALOR').AsFloat;


end;

procedure TFrmComissao.tiFinalizarClick(Sender: TdxTileControlItem);
var
  ACodFinanceiroGerado: integer;
begin
  inherited;
  if not (DS.State in dsEditModes) then
    BtnConfirmar.Click;
  VerificaSePodeAlteraDataSet;

  if not (DS.State in dsEditModes) then
    Exit;
  try
//  edtComissao_Pendente.Value := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_COMISSAO_PENDENTE);

     ACodFinanceiroGerado := ProximoCodigoTrans(TransaFD, 'Financeiro');
     ServicesFinanceiro_Lancamento_Financeiro(TransaFD,
                        ACodFinanceiroGerado,
                        'A PAGAR',
                        Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString,
                        1,
                        Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
                        edtResponsavelÎPessoasÎRAZAOSOCIAL.Caption,
                        Cadastro.FieldByName('CODIGO').AsString + 'C',
                        '',
                        '0',
                        'DINHEIRO',
                        '1',
                        'À VISTA',
                        '',
                        'COMISSÃO RELATIVA À COMISSÃO CÓDIGO: ' + Cadastro.FieldByName('CODIGO').AsString,
                        'ATIVO',
                        '0',
                        Cadastro.FieldByName('CODIGO').AsString,
                        Cadastro.FieldByName('CODIGO').AsString,
                        '',
                        CodigoUsuario,
                        '0',
                        EmpresaAtiva,
                        RoundTo(Cadastro.FieldByName('VALOR_COMISSAO').AsFloat, -2),
                        0,
                        0,
                        0,
                        '',
                        DataHoraSys,
                        DataHoraSys,
                        TDateTime(0),   // Pagamento
                        TDateTime(0),   // NF
                        'COMISSAO',
                        1);



    Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime         := DataHoraSys;
    Cadastro.FieldByName('CODFINANCEIRO_GERADO').AsInteger   := ACodFinanceiroGerado;

    BtnConfirmar.Click;

    UCHist_Cadastro.MensagemHistorico.Add('Comissão finalizada e lançada ao financeiro');
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
      BtnCancelar.Click;
    end;
  end;
end;

procedure TFrmComissao.tiCancelarClick(Sender: TdxTileControlItem);
var
  QuerX: TFDQuery;
  AOk: Boolean;
begin
  inherited;
  if MessageDlg('Deseja cancelar o lançamento no financeiro?',
      mtConfirmation, mbYesNo, 0) <> mrYes
  then
    Exit;

  QuerX := GeraFDQuery(TransaFD);
  try
    try
      QuerX.SQL.Text := 'select F.codigo, F.STATUS, F.TIPO, F.CODUSUARIO, F.DT_ALTERACAO FROM FINANCEIRO F ' +
                        'where (F.CODIGO = :CODIGO)';
      QuerX.ParamByName('CODIGO').AsInteger := Cadastro.FieldByName('CODFINANCEIRO_GERADO').AsInteger;
      QuerX.Open;

      //Validações
      ValidaParcela(QuerX);

      Cadastro.Edit;
      QuerX.Edit;
      QuerX.FieldByName('STATUS').AsString         := 'INATIVO EXCLUIDO';
      QuerX.FieldByName('CODUSUARIO').AsInteger    := CodigoUsuario;
      QuerX.FieldByName('DT_ALTERACAO').AsDateTime := now;
      QuerX.Post;

      Cadastro.FieldByName('CODFINANCEIRO_GERADO').Clear;
      Cadastro.FieldByName('DT_FINANCEIRO').Clear;
      UCHist_Cadastro.MensagemHistorico.Add('Comissão cancelada e removida do financeiro');
      btnConfirmar.Click;
    except
      on E:Exception do
      begin
        ShowMessage(E.Message);
        btnCancelar.Click;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmComissao.GrupoLogAlteracoesTabChanged(Sender: TObject);
begin
  inherited;
  if LiPnlFrameLogAtividades.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

////////////////////// - FUNÇÕES UTILITÁRIAS - //////////////////////
procedure TFrmComissao.ValidaParcela(AQuerFinanceiro: TFDQUery);
begin
  if AQuerFinanceiro.FieldByName('TIPO').AsString = 'PAGA' then
    raise Exception.Create('A Parcela já está paga, não foi possível cancelar');

  if AQuerFinanceiro.FieldByName('STATUS').AsString = 'INATIVO AGRUPADO' then
    raise Exception.Create('A Parcela está agrupada, não foi possível cancelar');
end;

function TFrmComissao.CalculaStatusComissaoParcela(AMemFinanceiro: TFDMemTable): string;
begin
  Result := '';

  if AMemFinanceiro.FieldByName('TIPO').AsString = 'RECEBIDA' then
  begin
    Result := 'RECEBIDA';
  end
  else
  begin
    if AMemFinanceiro.FieldByName('VENCTO').AsDateTime < DataHoraSys then
      Result := 'VENCIDA'
    else
      Result := 'EM ABERTO';
  end;
end;

procedure TFrmComissao.HabilitaCampos;
var
  AFaturado: boolean;
begin
  AFaturado := (Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0);
  DS.AutoEdit                   := not AFaturado;
  BtnGerarComissoes.Enabled     := not AFaturado;
  BtnGerarComissoes.Enabled     := not AFaturado;
  btnAlterar.Enabled            := not AFaturado and (DS.DataSet.State = dsBrowse) and not DS.DataSet.IsEmpty;;
  edtTipoComissao.Enabled       := not AFaturado;
  edtResponsavelÎPessoas.Enabled:= not AFaturado;
  EdtDescricao.Enabled          := not AFaturado;
  btnExcluir.Enabled            := not AFaturado;   // Não pode excluir
  cbxAtivo.Enabled              := not AFaturado;
  tiFinalizar.Visible           := not AFaturado;
  tiCancelar.Visible            := AFaturado;
  MemoObservacao.Enabled        := not AFaturado;
end;

////////////////////// - CHANGE - //////////////////////
procedure TFrmComissao.edtTipoComissaoPropertiesChange(Sender: TObject);
begin
  inherited;
  TiFinanceiro.Visible:=(edtTipoComissao.Text = 'Financeiro');
//  TiVenda.Visible     :=(edtTipoComissao.Text = 'Venda');
//  TiProducao.Visible  :=(edtTipoComissao.Text = 'Produção');
  tcComissoes.Title.Text:= edtTipoComissao.Text;

  if edtTipoComissao.Text <> '' then
  begin
    edtTipoComissao.Enabled := False;
    if edtTipoComissao.Text = 'Financeiro' then TiFinanceiro.Click;
    if edtTipoComissao.Text = 'Venda'      then TiVenda.Click;
    if edtTipoComissao.Text = 'Produção'   then TiProducao.Click;
  end;
end;

procedure TFrmComissao.edtCodigoPropertiesChange(Sender: TObject);
begin
  inherited;
  HabilitaCampos;
end;

procedure TFrmComissao.DBEdit1Change(Sender: TObject);
begin
  inherited;
  HabilitaCampos;
end;

procedure TFrmComissao.DSStateChange(Sender: TObject);
begin
  inherited;
  HabilitaCampos;
end;

////////////////////// - CLOSE OPEN - //////////////////////
procedure TFrmComissao.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('DESCRICAO').AsString:= FormatDateTime('MM/YYYY', Now);
end;

procedure TFrmComissao.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Comissao_Pessoa.Close;
  Comissao_Financeiro.Close;
  Comissao_Meta.Close;
end;

procedure TFrmComissao.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Comissao_Pessoa.Open;
  Comissao_Financeiro.Open;
  Comissao_Meta.Open;
end;

procedure TFrmComissao.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('VALOR_COMISSAO').AsFloat           := edtComissao.Value;
  Cadastro.FieldByName('SOMA_FINANCEIRO_EMABERTO').AsFloat := edtEmAberto.Value;
  Cadastro.FieldByName('SOMA_FINANCEIRO_QUITADA').AsFloat  := edtRecebida.Value;
  Cadastro.FieldByName('SOMA_FINANCEIRO_VENCIDA').AsFloat  := edtVencida.Value;
end;

procedure TFrmComissao.CadastroCalcFields(DataSet: TDataSet);
begin
  inherited;

end;

////////////////////// - TOTAIS GRID - //////////////////////
procedure TFrmComissao.cxComissao_FinanceiroDataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
  edtComissao.Value          := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_COMISSAO);
  edtComissao_Pendente.Value := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_COMISSAO_PENDENTE);
  edtEmAberto.Value          := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_EMABERTO);
  edtRecebida.Value          := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_RECEBIDA);
  edtVencida.Value           := SomaColuna(cxComissao_Financeiro, cxComissao_FinanceiroVALOR_VENCIDA);
end;

procedure TFrmComissao.BtnConfiguracoesClick(Sender: TdxTileControlItem);
begin
  inherited;
  MenuConfig.PopupOnMouse;
end;

procedure TFrmComissao.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  edtResponsavelÎPessoas.SetFocusWR;
end;

procedure TFrmComissao.btnTotaisClick(Sender: TObject);
var
  APoint : tPoint;
begin
  inherited;
  APoint := Mouse.CursorPos;
  APoint := ScreenToClient(APoint);
  pnlTotais.Left := APoint.X;
  pnlTotais.Top := APoint.Y - pnlTotais.Height;
  Mostrar(pnlTotais);
  pnlTotais.SetFocusWR;
end;

procedure TFrmComissao.pnlTotaisExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlTotais);
end;

////////////////////// - TILE CONTROL - //////////////////////
procedure TFrmComissao.tcComissoesItemDeactivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  inherited;
  AItem.DetailOptions.DetailControl.Visible := False;
end;

procedure TFrmComissao.TiFinanceiroActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Sender.DetailOptions.DetailControl:=pnlFinanceiro;
end;

procedure TFrmComissao.TiProducaoActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Sender.DetailOptions.DetailControl:=pnlProducao;
end;

procedure TFrmComissao.TiVendaActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Sender.DetailOptions.DetailControl:=pnlVenda;
end;

////////////////////// - RELATÓRIO - //////////////////////
procedure TFrmComissao.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddValorInicial('COMISSAO', 'TIPO', edtTipoComissao, 'Financeiro');
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'A referencia não pode ficar vazia ou em branco.');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;
    end;
  end;

end;

procedure TFrmComissao.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(Sender: TObject);
begin
  inherited;
  WREventosCadastro.Impressao.Report.Variables['EdtDataLimite']     := Cadastro.FieldByName('DATA').AsDateTime;
  WREventosCadastro.Impressao.Report.Variables['edtDataReferencia'] := Fr3String(Cadastro.FieldByName('TIPO_DATA').AsString);
end;

{$REGION 'Código Antigo'}

//procedure TFrmComissao.GridVendaDBTableView1CustomDrawCell(
//  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
//  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
//begin
//  inherited;
//  if (AViewInfo.Item.Index = GridVendaDBTableView1ACAO.Index) then
//  begin
//    if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridVendaDBTableView1ACAO.Index], varString)) = 'PAGAR') then
//      ACanvas.Brush.Color := $90EE90 //Green
//    else if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridVendaDBTableView1ACAO.Index], varString)) = 'IGNORAR NESTA COMISSÃO') then
//      ACanvas.Brush.Color := $DCF8FF //Yellow
//    else if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridVendaDBTableView1ACAO.Index], varString)) = 'DESCARTAR PERMANENTEMENTE') then
//      ACanvas.Brush.Color := $7280FA //Red
//    else
//      ACanvas.Brush.Color := $F5F5F5; //Cinzinha
//  end;
//  if (AViewInfo.Item.Index = GridVendaDBTableView1VALOR_EMABERTO.Index) then
//  begin
//    ACanvas.Brush.Color := clInfoBk; //amarelinho
//  end;
//
//  if (AViewInfo.Item.Index = GridVendaDBTableView1VALOR_VENCIDA.Index) then
//  begin
//    ACanvas.Brush.Color := $F5F0FF; //Vermelhinho
//  end;
//
//  if (AViewInfo.Item.Index = GridVendaDBTableView1VALOR_QUITADA.Index) then
//  begin
//    ACanvas.Brush.Color := $FAE6E6; //Azulzinho
//  end;
//
//end;

//procedure TFrmComissao.cxGrid1DBTableView1VALOR_COMISSAOPropertiesChange(
//  Sender: TObject);
//begin
//  inherited;
//  Calc;
//end;

//procedure TFrmComissao.Calc;
//var
//  APoint: TBookMark;
//begin
//  inherited;
//  if not Comissao_Pessoa.Active then Exit;
//  Comissao_Pessoa.DisableControls;
//  try
//    cxComTotal.Value := 0;
//    APoint := Comissao_Pessoa.GetBookmark;
//    Comissao_Pessoa.First;
//    while not Comissao_Pessoa.Eof do
//    begin
//      cxComTotal.Value := cxComTotal.Value + Comissao_Pessoa.FieldByName('VALOR_COMISSAO').AsFloat;
//      Comissao_Pessoa.Next;
//    end;
//  finally
//    GotoBookmark(Comissao_Pessoa, APoint);
//    Comissao_Pessoa.EnableControls;
//  end;
//end;
//procedure TFrmComissao.btnConsultarClick(Sender: TdxTileControlItem);
//begin
//  inherited;
//  Calc;
//end;

//procedure TFrmComissao.BtnGerarComissoesClick(Sender: TdxTileControlItem);
//var
//  QuerX, QuerParcelas: TFDQuery;
//  AFrmAguarde: TFrmAguarde;
//
//  procedure VerificaComissoesAnterioresNaoEnviadasFinanceiro;
//  var
//    QuerZ: TFDQuery;
//  begin
//    QuerZ := GeraFDQuery;
//    try
//      QuerZ.SQL.Text := 'select first 1 1 ' +
//                        'from COMISSAO ' +
//                        'where (CODIGO <> :Cod) ' +
//                        '      and (DATA < :Data) ' +
//                        '      and (DT_FINANCEIRO is null)';
//      QuerZ.ParamByName('Cod').AsInteger   := Cadastro.FieldByName('CODIGO').AsInteger;
//      QuerZ.ParamByName('Data').AsDateTime := DateOf(EdtDataLimite.Date);
//      QuerZ.Open;
//      if not QuerZ.IsEmpty then
//      begin
//        if ShowMessageWR('Atenção!' + sLineBreak +
//                         'Há relatórios de comissões anteriores que ainda não foram enviados para o financeiro. Todas as ' +
//                         'comissões anteriores serão replicadas.' + sLineBreak + sLineBreak +
//                         'Deseja continuar?', MB_ICONQUESTION) <> mrYes then
//          Abort;
//      end;
//    finally
//      QuerZ.Free;
//    end;
//  end;
//
//begin
//  {Observações
//
//   A geração da comissão está em fase de migração. O antigo método era gerar com base nos percentuais colocados na Venda
//   para cada ator: Funcionário, Representante e Agência. Haviam apenas estes três atores possíveis no comissionamento.
//   Para esta "nova geração" da comissão, os percentuais são definidos por Produto na Venda e livres para ser para
//   qualquer pessoa, basta adicionar no produto.
//
//   Atualmente esta tela ainda está calculando com base nos percentuais da venda (método antigo), mas parte das modificações
//   necessárias já estão implementadas. Na venda já é possível definir a comissão por produto, apenas está bloqueado
//   por enquanto. Aqui nesta tela já foram criados alguns campos destinados ao novo método, mas ainda não estão funcionais.
//
//   O novo método de cálculo de comissão foi testado na rotina BuscaComissoesNew, pode servir como base para implementação
//  }
//
//  {.$IFDEF DEBUG}
////  BuscaComissoesNew;
////  Exit;
//  {.$ENDIF}
//
//
//  ValidaEmissao;
//  VerificaComissoesAnterioresNaoEnviadasFinanceiro;
//
//  AFrmAguarde := TFrmAguarde.Create(Self);
//  QuerX := GeraFDQuery(TransaFD);
//  QuerParcelas := GeraFDQuery(TransaFD);
//  try
//    Self.Enabled := False;
//
//    QuerX.SQL.Text := 'delete from COMISSAO_PESSOA ' +
//                      'where CODCOMISSAO = ' + Cadastro.FieldByName('CODIGO').AsString;
//    QuerX.ExecSQL;
//    QuerX.SQL.Text := 'delete from COMISSAO_FINANCEIRO ' +
//                      'where CODCOMISSAO = ' + Cadastro.FieldByName('CODIGO').AsString;
//    QuerX.ExecSQL;
//
//    Comissao_Pessoa.Close;
//    Comissao_Pessoa.Open;
//
//    Comissao_Financeiro.Close;
//    Comissao_Financeiro.Open;
//
//    {$REGION 'FINANCEIRO - Sql busca Parcelas'}
//    QuerParcelas.SQL.Text := 'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.RAZAOSOCIAL, F.VALOR, F.TIPO, F.DATAPAGTO, F.VENCTO, ' +
//                      '       V.PESSOA_FUNCIONARIO_CODIGO, V.PESSOA_FUNCIONARIO_TIPO, CP.FATOR_COMERCIAL, ' +
//                      '       V.PESSOA_FUNCIONARIO_SEQUENCIA, V.COMISSAO, ' +
//                      '       V.PESSOA_AGENCIA_CODIGO, V.PESSOA_AGENCIA_TIPO, ' +
//                      '       V.PESSOA_AGENCIA_SEQUENCIA, V.COMISSAO_AGENCIA, ' +
//                      '       V.PESSOA_REPRESENTANTE_CODIGO, V.PESSOA_REPRESENTANTE_TIPO, ' +
//                      '       V.PESSOA_REPRESENTANTE_SEQUENCIA, V.COMISSAO_REPRESENTANTE, V.DT_COMPETENCIA, V.DT_EMISSAO, V.DT_FATURAMENTO, ' +
//                      '       V.TOTAL, V.NF_VFRETE, F.AGRUPADOR, F.STATUS, F.TIPO, F.DOCUMENTO, ' +
//                      '       iif(V.COMISSAO_FUNCIONARIO_COBRAR = ''S'', V.COMISSAO, 0) + ' +
//                      '       iif(V.COMISSAO_AGENCIA_COBRAR = ''S'', V.COMISSAO_AGENCIA, 0) + ' +
//                      '       iif(V.COMISSAO_REPRESENTANTE_COBRAR = ''S'', V.COMISSAO_REPRESENTANTE, 0) as TOTAL_PERC_COMISSAO_COBRADA ' +
//                      'from FINANCEIRO F ' +
//                      'left join CONDICAOPAGTO CP on (F.CODCONDICAOPAGTO = CP.CODIGO) ' +
//                      'left join VENDA V on (F.CODPEDIDO = V.CODIGO) ' +
//                      'where (coalesce(F.COMISSAO_PAGA, ''N'') <> ''S'') ' +
//                      '      and (coalesce(F.COMISSAO_STATUS, ''Pendente'') not in (''Cancelada'',''Deferida'')) ' +
//                      '      and (F.VALOR > 0) ' +
//                      '      and (F.TIPO in (''RECEBIDA'',''A RECEBER'')) ' +
//                      '      and (((F.STATUS like ''ATIVO%'') and (F.STATUS <> ''ATIVO AGRUPADO'') and not(F.STATUS = ''ATIVO*'')) or (F.STATUS = ''INATIVO AGRUPADO'')) ' +
//                      ' and (F.EMISSAO <= :Data  )';
//    if MatchText(Cadastro.FieldByName('TIPO_FINANCEIRO').AsString, ['Todas as Parcelas Recebidas', 'Apenas as Parcelas de Vendas Quitadas']) then // Emitida
//      QuerParcelas.SQL.Add(' and ((((F.DATAPAGTO is null)) or (F.DATAPAGTO <= :Data)) ' +
//                           'or  (1 = (select first 1 1  ' +
//                                    'from FINANCEIRO F2 ' +
//                                    'where F2.AGRUPADOR = F.AGRUPADOR ' +
//                                    '      and F2.TIPO = ''RECEBIDA'' ' +
//                                    '      and F2.STATUS = ''ATIVO AGRUPADO'' ' +
//                                    '      and coalesce(F2.COMISSAO_PAGA, ''N'') <> ''S'' ' +
//                                    '      and (coalesce(F2.COMISSAO_STATUS, ''Pendente'') not in (''Cancelada'',''Deferida'')) ' +
//                                    '      and F2.DATAPAGTO <= :Data)))');
//    QuerParcelas.ParamByName('Data').AsDateTime := EndOfTheDay(Cadastro.FieldByName('DATA').AsDateTime);
//    QuerParcelas.Open;
//    {$ENDREGION}
//
//    QuerParcelas.FetchAll;
//
//    AFrmAguarde.MensagemSize := 12;
//    AFrmAguarde.Show;
//    AFrmAguarde.Mensagem := 'Buscando comissões! Aguarde...';
//    AFrmAguarde.ProgressoMaximo := QuerParcelas.RecordCount;
//    QuerParcelas.First;
//    Comissao_Pessoa.DisableControls;
//    try
//      FCodFinanceiro := 0;
//      while not QuerParcelas.Eof do
//      begin
//        CadastraComissao(QuerParcelas.FieldByName('PESSOA_AGENCIA_CODIGO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_AGENCIA_TIPO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_AGENCIA_SEQUENCIA').AsInteger,
//                         QuerParcelas.FieldByName('COMISSAO_AGENCIA').AsFloat,
//                         QuerParcelas);
//        CadastraComissao(QuerParcelas.FieldByName('PESSOA_REPRESENTANTE_CODIGO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_REPRESENTANTE_TIPO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_REPRESENTANTE_SEQUENCIA').AsInteger,
//                         QuerParcelas.FieldByName('COMISSAO_REPRESENTANTE').AsFloat,
//                         QuerParcelas);
//        CadastraComissao(QuerParcelas.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString,
//                         QuerParcelas.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsInteger,
//                         QuerParcelas.FieldByName('COMISSAO').AsFloat,
//                         QuerParcelas);
//        AFrmAguarde.AvancarProgresso;
//        QuerParcelas.Next;
//      end;
//      QuerParcelas.Close;
//  //    Marca a escolha
//
//      {$REGION 'Totaliza valores'}
//      Comissao_Pessoa.First;
//      while not Comissao_Pessoa.Eof do
//      begin
//        if Cadastro.FieldByName('TIPO_FINANCEIRO').AsString = 'Apenas as Parcelas de Vendas Quitadas' then
//        begin
//          QuerX.SQL.Text := 'update COMISSAO_FINANCEIRO CF set CF.GERA_COMISSAO = :GERA_COMISSAO ' +
//                            'where (CF.PESSOA_RESPONSAVEL_CODIGO = :PESSOA_RESPONSAVEL_CODIGO) ' +
//                            '      and (CF.CODCOMISSAO = :CODCOMISSAO) ' +
//                            '      and (CF.STATUS = ''RECEBIDA'') ' +
//                            '      and (''Quitada'' = (select max(V.SITUACAOFINANCEIRA) ' +
//                            '                        from VENDA V ' +
//                            '                        where (V.CODIGO = CF.CODPEDIDO)))';
//
//          QuerX.ParamByName('CODCOMISSAO').AsInteger             := Cadastro.FieldByName('CODIGO').AsInteger;
//          QuerX.ParamByName('PESSOA_RESPONSAVEL_CODIGO').AsString:= Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//          QuerX.ParamByName('GERA_COMISSAO').AsString            := 'S';
//          QuerX.ExecSQl;
//        end;
//        CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//        Comissao_Pessoa.Next;
//      end;
//      {$ENDREGION}
//
//      //Atualiza a tabela para ler os joins
//      Comissao_Pessoa.Close;
//      Comissao_Pessoa.Open;
//    finally
//      Comissao_Pessoa.EnableControls;
//    end;
//
//    Cadastro.FieldByName('DT_COMISSAO_GERADA').AsDateTime := DataHoraSys;
//    btnConfirmar.Click;
//  finally
//    Self.Enabled := True;
//    QuerX.Free;
//    QuerParcelas.Free;
//    AFrmAguarde.Free;
//  end;
//end;

//procedure TFrmComissao.CalculaTotal(const ACodComissao: Integer; const ACodResponsavel: string);
//var
//  QuerX: TFDQuery;
//begin
//  QuerX := GeraFDQuery(TransaFD);
//  try
//    QuerX.SQL.Text:= 'select sum(iif(CF.COMISSAO_STATUS = ''Deferida'', CF.VALOR_COMISSAO, 0)) as VALOR_COMISSAO, ' +
//                     '       sum(iif(CF.STATUS = ''VENCIDA'',  CF.VALOR, 0)) as VALOR_VENCIDA, ' +
//                     '       sum(iif(CF.STATUS = ''ABERTO'',   CF.VALOR, 0)) as VALOR_EMABERTO, ' +
//                     '       sum(iif(CF.STATUS = ''RECEBIDA'',   CF.VALOR, 0)) as VALOR_QUITADA, ' +
////                     '       sum(iif((CF.DT_VENCIMENTO < CURRENT_TIMESTAMP) and (CF.DT_PAGAMENTO is null),  CF.VALOR, 0)) as VALOR_VENCIDA, ' +
////                     '       sum(iif(CF.DT_PAGAMENTO is not null,   CF.VALOR, 0)) as VALOR_QUITADA, ' +
////                     '       sum(iif((CF.DT_VENCIMENTO > CURRENT_TIMESTAMP) and (CF.DT_PAGAMENTO is null),   CF.VALOR, 0)) as VALOR_EMABERTO, ' +
//                     '       sum(CF.VALOR_COMISSAO) as TOTAL_COMISSAO ' +
//                     'from COMISSAO_FINANCEIRO CF ' +
//                     'where (CF.CODCOMISSAO = :CodComissao) ' +
//                     '      and (CF.PESSOA_RESPONSAVEL_CODIGO = :CodResponsavel)';
//    QuerX.ParamByName('CodComissao').AsInteger   := ACodComissao;
//    QuerX.ParamByName('CodResponsavel').AsString := ACodResponsavel;
//    QuerX.Open;
//    if Comissao_Pessoa.Locate('PESSOA_RESPONSAVEL_CODIGO', ACodResponsavel, []) then
//    begin
//      Comissao_Pessoa.Edit;
//      Comissao_Pessoa.FieldByName('VALOR_COMISSAO').AsFloat        := QuerX.FieldByName('VALOR_COMISSAO').AsFloat;
//      Comissao_Pessoa.FieldByName('VALOR_VENCIDA').AsFloat         := QuerX.FieldByName('VALOR_VENCIDA').AsFloat;
//      Comissao_Pessoa.FieldByName('VALOR_EMABERTO').AsFloat        := QuerX.FieldByName('VALOR_EMABERTO').AsFloat;
//      Comissao_Pessoa.FieldByName('VALOR_QUITADA').AsFloat        := QuerX.FieldByName('VALOR_QUITADA').AsFloat;
//      Comissao_Pessoa.FieldByName('VALOR_COMISSAO_APAGAR').AsFloat := QuerX.FieldByName('TOTAL_COMISSAO').AsFloat;
////      if Comissao_Pessoa.FieldByName('VALOR_COMISSAO_APAGAR').AsFloat = 0 then
////        Comissao_Pessoa.FieldByName('GERA_COMISSAO').AsString := 'N';
//      Comissao_Pessoa.Post;
//    end;
//  finally
//    QuerX.Free;
//  end;
//end;


//procedure TFrmComissao.AlteraGeraComissao(const AStatus: string; AComissao_Financeiro: TDataset);
//begin
//  if AStatus = 'Deferida' then
//    AComissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := 'S'
//  else
//    AComissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := 'N';
//end;

//procedure TFrmComissao.BtnAddTabelaPrecoClick(Sender: TObject);
//begin
//  inherited;
//  AlteraDataSet(Cadastro);
////  EdtPorcentTabelaPreco.Value := 100 - RdT(EdtValorTabelaPreco.Value * 100 / Produto.FieldByName('VALOR').AsFloat, -6);
//  if (Comissao_Meta.FieldByName('TIPO').AsString = 'Acima de') and Comissao_Meta.Locate('TIPO', 'Acima de', []) then
//  begin
//    ShowMessageWR('Só é possível adicionar um (01) valor do tipo "Acima De".');
//    Exit;
//  end;
//  Comissao_Meta.DisableControls;
//  try
//    Comissao_Meta.First;
//    while not Comissao_Meta.Eof do
//    begin
//      if Comissao_Meta.FieldByName('TIPO').AsString = 'Acima de' then
//      begin
//        if Comissao_Meta.FieldByName('VALOR').AsFloat > EdtMetaComissao.Value then
//        begin
//          FrmPrincipal.ActivateBalloonHint(EdtMetaComissao, 'Atenção',
//                                           'O tipo "Acima de" deve ser informado após o tipo "Até"' + sLineBreak +
//                                           'e a quantidade deve ser igual a maior quantidade do tipo "Até".'
//                                           + sLineBreak +
//                                           'Maior Quant.: ' + Comissao_Meta.FieldByName('VALOR').AsString);
////          ShowMessageWR('Existe um valor com quantidade acima do especificado. Valores do tipo "Acima De" devem ' +
////                        'ter o maior valor de quantidade da Tabela de Preços.');
//          Exit;
//        end;
//      end else if Comissao_Meta.FieldByname('TIPO').AsString = 'Até' then
//      begin
//        if (Comissao_Meta.FieldByName('TIPO').AsString = 'Acima de') and
//           (Comissao_Meta.FieldByName('VALOR').AsFloat <= EdtMetaComissao.Value) then
//        begin
//          ShowMessageWR('Existe um valor com quantidade acima do especificado. Valores do tipo "Acima De" devem ' +
//                        'ter o maior valor de quantidade da Tabela de Preços.');
//          Exit;
//        end;
//        if EdtDEComissao.Value < Comissao_Meta.FieldByName('VALOR').AsFloat  then
//        begin
//          ShowMessageWR('Já existe uma especificação "ATÉ" de valor para esta quantidade.');
//          Exit;
//        end;
//        if Comissao_Meta.FieldByName('DE').AsFloat > EdtDEComissao.Value then
//        begin
//          ShowMessageWR('Já existe uma especificação "DE" de valor para esta quantidade.');
//          Exit;
//        end;
//      end;
//      Comissao_Meta.Next;
//    end;
//  finally
//    Comissao_Meta.EnableControls;
//  end;
//  if (EdtPorcentComissao.Text = '') or (EdtMetaComissao.Text = '') or (EdtDEComissao.Text = '') then
//  begin
//    //ShowMessageWR('Campo obrigatório não preenchido.');
//    if (EdtMetaComissao.Text = '') then
//    begin
//       EdtMetaComissao.SetFocusWR;
//       FrmPrincipal.ActivateBalloonHint(EdtMetaComissao, '', 'Informe a quantidade!');
//    end
//    else if (EdtPorcentComissao.Text = '') then
//    begin
//      EdtPorcentComissao.SetFocusWR;
//      FrmPrincipal.ActivateBalloonHint(EdtPorcentComissao, '', 'Informe o percentual de desconto!');
//    end
//    else if (EdtMetaComissao.Text = '') then
//    begin
//      EdtMetaComissao.SetFocusWR;
////      FrmPrincipal.ActivateBalloonHint(EdtValorComissao, '', 'Informe o valor!');
//    end
//    else if (EdtDEComissao.Text = '') then
//    begin
//      EdtDEComissao.SetFocusWR;
//      FrmPrincipal.ActivateBalloonHint(EdtDEComissao, '', 'Informe a Condição De!');
//    end;
//    Exit;
//  end;
//
//  Comissao_Meta.Insert;
//  Comissao_Meta.FieldByName('CODIGO').AsInteger   := ProximoCodigoTrans(TransaFD, 'COMISSAO_META');
//  Comissao_Meta.FieldByName('TIPO').AsString      := CbTipoComissao.Text;
//  Comissao_Meta.FieldByName('PORCENTAGEM').AsFloat:= EdtPorcentComissao.Value;
//  Comissao_Meta.FieldByName('VALOR').AsFloat      := EdtMetaComissao.Value;
//  Comissao_Meta.FieldByName('DE').AsFloat         := EdtDEComissao.Value;
//  Comissao_Meta.Post;
//
//  EdtPorcentComissao.Clear;
//  EdtMetaComissao.Clear;
//  EdtDEComissao.Clear;
//end;

//procedure TFrmComissao.BtnCancelaLancFinanClick(Sender: TObject);
//var
//  QuerX, QuerZ, QuerConta : TFDQuery;
//begin
//  inherited;
//  Cadastro.Edit;
//  if Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0 then
//  begin
//    if Application.Messagebox('Deseja cancelar este relatório de comissões? O lançamento feito no financeiro ' +
//                              'será cancelado e toda as vendas que foram marcadas com comissão paga voltarão ao ' +
//                              'estado original', 'Atenção!', 1) = mrOk then
//    begin
//      // retorna todas as contas com comissão paga para não paga
//      QuerX := GeraFDQuery(TransaFD);
//      QuerZ := GeraFDQuery(TransaFD);
//      QuerConta := GeraFDQuery(TransaFD);
//      try
//        // Só executa se não tiver nada pago, isso aqui tava no final do código aí ferrava
//        QuerConta.SQL.Text := 'select TIPO, CODCONTA, DATAPAGTO ' +
//                              'from FINANCEIRO ' +
//                              'where (CODPEDIDO = :CodPedido) '+
//                              'and STATUS like ''ATIVO%''';
//        QuerConta.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString + 'C';
//        QuerConta.Open;
//        QuerConta.First;
//        while not QuerConta.Eof do
//        begin
//          ValidarSituacaoContaBanco(QuerConta);
//          if QuerConta.FieldByName('TIPO').AsString = 'PAGA' then
//            abort;
//          QuerConta.Next
//        end;
//      except
//        ShowMessage('Há Comissões já pagas pelo financeiro, não é possivel cancelar.');
//        Exit;
//      end;
//
//      try
//        //Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
//        QuerConta.SQL.Text := 'select TIPO, CODCONTA, DATAPAGTO ' +
//                              'from FINANCEIRO ' +
//                              'where (CODIGO = :Codigo) ' +
//                              '      and (CODEMPRESA = :CodEmpresa) ' +
//                              '      and (CODPEDIDO = :CodPedido)';
//
//        QuerZ.SQL.Text := 'update FINANCEIRO set COMISSAO_STATUS = ''Pendente'' ' +
//                          'where (CODIGO = :Codigo) ' +
//                          '      and (CODEMPRESA = :CodEmpresa) ' +
//                          '      and (CODPEDIDO = :CodPedido)';
//
//        QuerX.SQL.Text := 'select * from COMISSAO_FINANCEIRO where (CODCOMISSAO = :CodComissao)';
//        QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
//        QuerX.Open;
//        while not QuerX.Eof do
//        begin
//          //Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
//          QuerConta.Close;
//          QuerConta.ParamByName('Codigo').AsInteger    := QuerX.FieldByName('CODFINANCEIRO').AsInteger;
//          QuerConta.ParamByName('CodEmpresa').AsString := QuerX.FieldByName('CODEMPRESA').AsString;
//          QuerConta.ParamByName('CodPedido').AsString  := QuerX.FieldByName('CODPEDIDO').AsString;
//          QuerConta.Open;
//          ValidarSituacaoContaBanco(QuerConta);
//
//          QuerZ.ParamByName('Codigo').AsInteger    := QuerX.FieldByName('CODFINANCEIRO').AsInteger;
//          QuerZ.ParamByName('CodEmpresa').AsString := QuerX.FieldByName('CODEMPRESA').AsString;
//          QuerZ.ParamByName('CodPedido').AsString  := QuerX.FieldByName('CODPEDIDO').AsString;
//          QuerZ.ExecSQL;
//          QuerX.Next;
//        end;
//
//
//        QuerX.SQL.Text := 'update FINANCEIRO set STATUS = ''INATIVO CANCELADO'', MOTIVO_EXCLUSAO = ''Cancelamento de Comissão'' ' +
//                          'where (CODPEDIDO = :CodPedido)';
//        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString + 'C';
//        QuerX.ExecSQL;
//      finally
//        QuerZ.Free;
//        QuerX.Free;
//        QuerConta.Free;
//      end;
//      Comissao_Pessoa.First;
////      Comissao_Pessoa.EnableControls;
//
//      Cadastro.FieldByName('DT_FINANCEIRO').Clear;
//      btnConfirmarClick(nil);
//      ShowMessageWR('Procedimento efetuado com sucesso.');
//    end;
//  end else
//    ShowMessageWR('Não há lançamento a ser cancelado.');
//end;

//procedure TFrmComissao.btnExcluirClick(Sender: TdxTileControlItem);
//var
//  APoint : TBookmark;
//  QuerX : TFDQuery;
//begin
////  inherited;
//  if not DS.DataSet.IsEmpty then
//  begin
//    if not (Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime > 0) then
//    begin
//      if ShowMessageWR('Deseja excluir este Relatório de Comissão?', MB_ICONQUESTION) = mrYes then
//      begin
//        QuerX := GeraFDQuery(TransaFD);
//        try
//          QuerX.SQL.Text := 'delete from Comissao_Pessoa where (CODCOMISSAO = :CodComissao)';
//          QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
//          QuerX.ExecSQL;
//        finally
//          QuerX.Free;
//        end;
//        DS.DataSet.Delete;
//        APoint := ds.DataSet.GetBookmark;
//        TransaFD.Commit;
//        TransaFD.StartTransaction;
//        DS.DataSet.Open;
//        if not DS.DataSet.IsEmpty and (APoint <> nil) then
//          DS.DataSet.GotoBookmark(APoint);
////        btnNovo.SetFocusWR;
//      end;
//    end else
//      ShowMessageWR('Este relatório já foi lançado no financeiro e não pode ser excluído. Cancele o lançamento no financeiro para fazer a exclusão.');
//  end;
//end;
//procedure TFrmComissao.BtnLancarFinanceiroClick(Sender: TObject);
//var
//  QuerUp, QuerX, QuerAg: TFDQuery;
//  ADataAtual: TDateTime;
//begin
//  if Comissao_Pessoa.IsEmpty then
//  begin
//    ShowMessageWR('Não há informações a serem lançadas.');
//    Exit;
//  end;
//  if not Cadastro.FieldByName('DT_FINANCEIRO').IsNull then
//  begin
//    ShowMessageWR('Este relatório de comissão já foi lançado.');
//    Exit;
//  end;
//
//  ADataAtual := DataHoraSys;
//  btnAlterarClick(nil);
//
//  QuerUp := GeraFDQuery(TransaFD);
//  QuerX  := GeraFDQuery(TransaFD);
//  Comissao_Pessoa.DisableControls;
//  try
//    //Faz um lançamento no financeiro para cada comissionado, com o valor da comissão
//    Financeiro.Open;
//    Comissao_Pessoa.First;
//    while not Comissao_Pessoa.Eof do
//    begin
//      if Comissao_Pessoa.FieldByName('GERA_COMISSAO').AsString = 'S' then
//      begin
//        Financeiro.Insert;
//        Financeiro.FieldByName('CODIGO').AsInteger           := Trunc(ProximoCodigoTrans(TransaFD, 'FINANCEIRO'));
//        Financeiro.FieldByName('CODPEDIDO').AsString         := Cadastro.FieldByName('CODIGO').AsString + 'C';
//        Financeiro.FieldByName('CODEMPRESA').AsString        := EmpresaAtiva;
//        Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString   := Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
//        Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//        Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
//        Financeiro.FieldByName('RAZAOSOCIAL').AsString       := Comissao_Pessoa.FieldByName('RAZAOSOCIAL').AsString;
//        Financeiro.FieldByName('EMISSAO').AsDateTime         := ADataAtual;
//        Financeiro.FieldByName('VENCTO').AsDateTime          := ADataAtual;
//        Financeiro.FieldByName('VALOR').AsFloat              := RoundTo(Comissao_Pessoa.FieldByName('VALOR_COMISSAO').AsFloat, -2);
//        Financeiro.FieldByName('TIPOPAGTO').AsString         := 'DINHEIRO';
//        Financeiro.FieldByName('CONDICAOPAGTO').AsString     := 'AVISTA';
//        Financeiro.FieldByName('CODCONDICAOPAGTO').AsInteger := 1;
//        Financeiro.FieldByName('PARCELA').AsInteger          := 1;
//        Financeiro.FieldByName('CODCONTA').AsInteger         := 1;
//        Financeiro.FieldByName('CODPLANOCONTAS').AsString    := TConfig.ReadString('COMISSAO_PLANO_CONTAS_PADRAO');
//        Financeiro.FieldByName('CODUSUARIO').AsInteger       := CodigoUsuario;
//        Financeiro.FieldByName('TIPO').AsString              := 'A PAGAR';
//        Financeiro.FieldByName('STATUS').AsString            := 'ATIVO';
//        Financeiro.FieldByName('HISTORICO').AsString         := 'COMISSÃO RELATIVA A DATA DE REFERÊNCIA ' + Cadastro.FieldByName('DATA').AsString;
//        Financeiro.Post;
//      end;
//      Comissao_Pessoa.Next;
//    end;
//
//    //Itera em todos os lançamentos financeiros usados para calcular as comissões e assinala a flag de que a comissão
//    //daquele lançamento já foi paga (ou pelo menos lançada como A PAGAR)
//
//    //QuerZ.SQL.Text := 'select * from COMISSAO_PESSOA where (CODCOMISSAO = :CodComissao) and (STATUS = ''RECEBIDA'')';
//    QuerX.SQL.Text := 'select C.DATA, F.STATUS, F.AGRUPADOR, CF.CODFINANCEIRO, CF.CODEMPRESA, CF.CODPEDIDO, CF.COMISSAO_STATUS ' +
//                      'from COMISSAO_FINANCEIRO CF ' +
//                      'left join FINANCEIRO F on (F.CODIGO = CF.CODFINANCEIRO and (F.CODPEDIDO = CF.CODPEDIDO) and F.CODEMPRESA = CF.CODEMPRESA) ' +
//                      'left join COMISSAO C on (C.CODIGO = CF.CODCOMISSAO) ' +
//                      'where (CF.CODCOMISSAO = :Cod) ' +
//                      'and CF.COMISSAO_STATUS in (''Deferida'',''Cancelada'') ';
////                      '      and (CF.GERA_COMISSAO = ''S'')';
//    QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
//    QuerX.Open;
//    while not QuerX.Eof do
//    begin
//      QuerUp.SQL.Text := 'update FINANCEIRO set COMISSAO_STATUS = :ComissaoStatus ' +
//                         'where (CODIGO = :Codigo) ' +
//                         '      and (CODEMPRESA = :CodEmpresa) ' +
//                         '      and (CODPEDIDO = :CodPedido)';
//
//
//      QuerUp.ParamByName('ComissaoStatus').AsString := QuerX.FieldByName('COMISSAO_STATUS').AsString;
//      if QuerX.FieldByName('STATUS').AsString = 'INATIVO AGRUPADO' then
//      begin
//        {$REGION 'Parcela agrupada'}
//        QuerUp.SQL.Add('and (AGRUPADOR = :Agrupador) ' +
//                       'and (DATAPAGTO is not null) ' +
//                       'and (DATAPAGTO <= :Data)');
//
//        QuerAg := GeraFDQuery(TransaFD);
//        try
//          QuerAg.SQL.Text := 'select CODIGO, CODEMPRESA, CODPEDIDO ' +
//                             'from FINANCEIRO ' +
//                             'where (AGRUPADOR = :Agrupador) ' +
//                             '      and (DATAPAGTO <= :Data)';
//          QuerAg.ParamByName('Agrupador').AsInteger := QuerX.FieldByName('AGRUPADOR').AsInteger;
//          QuerAg.ParamByName('Data').AsDateTime     := EndOfTheDay(Cadastro.FieldByName('DATA').AsDateTime);
//          QuerAg.Open;
//          QuerAg.First;
//          while not QuerAg.Eof do
//          begin
//            QuerUp.ParamByName('Codigo').AsInteger    := QuerAg.FieldByName('CODIGO').AsInteger;
//            QuerUp.ParamByName('CodEmpresa').AsString := QuerAg.FieldByName('CODEMPRESA').AsString;
//            QuerUp.ParamByName('CodPedido').AsString  := QuerAg.FieldByName('CODPEDIDO').AsString;
//            QuerUp.ParamByName('Agrupador').AsInteger := QuerX.FieldByName('AGRUPADOR').AsInteger;
//            QuerUp.ParamByName('Data').AsDateTime     := EndOfTheDay(Cadastro.FieldByName('DATA').AsDateTime);
//            QuerUp.ExecSQL;
//            QuerAg.Next;
//          end;
//
//          QuerAg.Close;
//          QuerAg.SQL.Text := 'select first 1 1 ' +
//                             'from FINANCEIRO F ' +
//                             'where (F.AGRUPADOR = :AGRUPADOR) ' +
//                             '      and (F.STATUS = ''ATIVO AGRUPADO'') ' +
//                             '      and ((F.DATAPAGTO is null) or (F.DATAPAGTO > :Data))';
//          QuerAg.ParamByName('Agrupador').AsInteger := QuerX.FieldByName('AGRUPADOR').AsInteger;
//          QuerAg.ParamByName('DATA').AsDateTime     := EndOfTheDay(Cadastro.FieldByName('DATA').AsDateTime);
//          QuerAg.Open;
//          if QuerAg.IsEmpty then
//          begin
//            QuerAg.Close;
//            QuerAg.SQL.Text := 'update FINANCEIRO F set F.COMISSAO_PAGA = ''S'' ' +
//                               'where (F.AGRUPADOR = :AGRUPADOR) ' +
//                               '      and (F.STATUS = ''INATIVO AGRUPADO'')';
//            QuerAg.ParamByName('Agrupador').AsInteger := QuerX.FieldByName('AGRUPADOR').AsInteger;
//            QuerAg.ExecSQL;
//          end;
//        finally
//          QuerAg.Free;
//        end;
//        {$ENDREGION}
//      end else
//      begin
//        QuerUp.ParamByName('Codigo').AsInteger    := QuerX.FieldByName('CODFINANCEIRO').AsInteger;
//        QuerUp.ParamByName('CodEmpresa').AsString := QuerX.FieldByName('CODEMPRESA').AsString;
//        QuerUp.ParamByName('CodPedido').AsString  := QuerX.FieldByName('CODPEDIDO').AsString;
//        QuerUp.ExecSQL;
//      end;
//      QuerX.Next;
//    end;
//    Cadastro.FieldByName('DT_FINANCEIRO').AsDateTime := ADataAtual;
//    btnConfirmarClick(nil);
//  finally
//    QuerUp.Free;
//    QuerX.Free;
//    Comissao_Pessoa.EnableControls;
//  end;
//  ShowMessageWR('Lançamento feito com sucesso.');
//end;

//procedure TFrmComissao.btnMetaClick(Sender: TObject);
//begin
//  inherited;
//  ShowPanelForm(pnlMetas,bsSizeToolWin, EdtDEComissao);
//end;
//
//procedure TFrmComissao.BtnRemoveTabelaPrecoClick(Sender: TObject);
//begin
//  inherited;
//  if Comissao_Meta.RecordCount > 0 then
//    Comissao_Meta.Delete;
//end;

//procedure TFrmComissao.BuscaComissoesNew;
//var
//  QuerX: TFDQuery;
//  AValorProduto, AValorComissao, APerc, ADiff: Double;
//begin
//  QuerX := GeraFDQuery;
//  try
//    QuerX.SQL.Text := 'select F.CODIGO, F.CODPEDIDO, F.CODEMPRESA, F.VALOR, F.TIPO, F.DATAPAGTO, F.VENCTO, ' +
//                      '       CP.FATOR_COMERCIAL, V.DT_COMPETENCIA, V.DT_EMISSAO, V.DT_FATURAMENTO, V.TOTAL, V.SUB_TOTAL, ' +
//                      '       V.NF_VFRETE, F.AGRUPADOR, F.STATUS, F.TIPO, F.DOCUMENTO, VP.TOTAL as TOTAL_PRODUTO, ' +
//                      '       VPC.CODPESSOA as CODCOMISSIONADO, VPC.PERCENTUAL as PERC_COMISSAO ' +
//                      'from FINANCEIRO F ' +
//                      'left join CONDICAOPAGTO CP on (F.CODCONDICAOPAGTO = CP.CODIGO) ' +
//                      'inner join VENDA V on (F.CODPEDIDO = V.CODIGO) ' +
//                      'inner join VENDA_PRODUTO VP on (F.CODPEDIDO = VP.CODVENDA) ' +
//                      'inner join VENDA_PRODUTO_COMISSAO VPC on (VPC.CODVENDA = VP.CODVENDA) and (VPC.CODVENDA_PRODUTO = VP.CODIGO) ' +
//                      'where (coalesce(F.COMISSAO_PAGA, ''N'') <> ''S'') ' +
//                      '      and (F.VALOR > 0) ' +
//                      '      and (F.TIPO in (''RECEBIDA'', ''A RECEBER'')) ' +
//                      '      and (((F.STATUS like ''ATIVO%'') ' +
//                      '      and (F.STATUS <> ''ATIVO AGRUPADO'')) ' +
//                      '      or (F.STATUS = ''INATIVO AGRUPADO'')) ' +
//                      '      and (F.EMISSAO <= :DATA) ' +
//                      '      and ((F.DATAPAGTO is null) ' +
//                      '      or (F.DATAPAGTO <= :DATA) ' +
//                      '      or (exists(select first 1 1 ' +
//                      '                 from FINANCEIRO F2 ' +
//                      '                 where F2.AGRUPADOR = F.AGRUPADOR ' +
//                      '                       and F2.TIPO = ''RECEBIDA'' ' +
//                      '                       and F2.STATUS = ''ATIVO AGRUPADO'' ' +
//                      '                       and coalesce(F2.COMISSAO_PAGA, ''N'') <> ''S'' ' +
//                      '                       and F2.DATAPAGTO <= :DATA)))';
//    QuerX.ParamByName('Data').AsDateTime := EndOfTheDay(Cadastro.FieldByName('DATA').AsDateTime);
//    QuerX.Open;
//    while not QuerX.Eof do
//    begin
//      AValorProduto := QuerX.FieldByName('TOTAL_PRODUTO').AsFloat;
//
//      //--Caso tenha diferença, imbute o proporcional da diferença sobre o valor do produto
//      {O percentual da comissão é sobre o Produto, então calculamos se há diferença entre o total da venda e o dos produtos}
//      ADiff := QuerX.FieldByName('TOTAL').AsFloat - QuerX.FieldByName('SUB_TOTAL').AsFloat;
//      if not IsZero(ADiff) then
//      begin
//        APerc := PercRelativo(QuerX.FieldByName('TOTAL_PRODUTO').AsFloat, QuerX.FieldByName('SUB_TOTAL').AsFloat);
//        AValorProduto := AValorProduto + PercValor(ADiff, APerc);
//      end;
//      //--
//
//      //Calcula a comissão que seria relativo ao produto todo
//      AValorComissao := PercValor(AValorProduto, QuerX.FieldByName('PERC_COMISSAO').AsFloat);
//
//      //Extrai a relação entre o valor da parcela e o total da venda
//      APerc := PercRelativo(QuerX.FieldByName('VALOR').AsFloat, QuerX.FieldByName('TOTAL').AsFloat);
//
//      //Agora mantem no valor da comissão apenas o proporcional que a parcela tem sobre a venda
//      AValorComissao := RdT(PercValor(AValorComissao, APerc), -2);
//
//      QuerX.Next;
//    end;
//  finally
//    QuerX.Free;
//  end;
//end;

//procedure TFrmComissao.CadastraComissao(ACodigo, ATipo: string; ASequencia: Integer; AComissao: Double;
//  QuerParcelas: TFDQuery);
//var
//  QuerAgrupado, QuerTotalInativo: TFDQuery;
//  ATotalInativo, AValor: Double;
//  ADataRelatorio: TDateTime;
//begin
//  if Trim(ACodigo) = '' then
//    Exit;
//
//  if not Comissao_Pessoa.Locate('PESSOA_RESPONSAVEL_CODIGO', ACodigo, []) then
//  begin
//    Comissao_Pessoa.Insert;
//    Comissao_Pessoa.FieldByName('CODIGO').AsInteger                       := GetProximoCodigoComissao('COMISSAO_PESSOA');
//    Comissao_Pessoa.FieldByName('CODCOMISSAO').AsInteger                  := Cadastro.FieldByName('CODIGO').AsInteger;
//    Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := ACodigo;
//    Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := ATipo;
//    Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := ASequencia;
//    if AComissao > 0 then
//      Comissao_Pessoa.FieldByName('GERA_COMISSAO').AsString     := 'S'
//    else
//      Comissao_Pessoa.FieldByName('GERA_COMISSAO').AsString     := 'N';
//    Comissao_Pessoa.Post;
//  end;
//
//  Inc(FCodFinanceiro);
//  Comissao_Financeiro.Insert;
//  Comissao_Financeiro.FieldByName('CODIGO').AsInteger          := FCodFinanceiro; //GetProximoCodigoComissao('COMISSAO_FINANCEIRO');
//  Comissao_Financeiro.FieldByName('CODCOMISSAO').AsInteger     := Cadastro.FieldByName('CODIGO').AsInteger;
//  Comissao_Financeiro.FieldByName('CODFINANCEIRO').AsInteger   := QuerParcelas.FieldByName('CODIGO').AsInteger;
//  Comissao_Financeiro.FieldByName('CODPEDIDO').AsString        := QuerParcelas.FieldByName('CODPEDIDO').AsString;
//  Comissao_Financeiro.FieldByName('CODEMPRESA').AsInteger      := QuerParcelas.FieldByName('CODEMPRESA').AsInteger;
//  Comissao_Financeiro.FieldByName('FATOR_COMERCIAL').AsFloat   := StrToFloatDef(QuerParcelas.FieldByName('FATOR_COMERCIAL').AsString, 1);
//  Comissao_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := ACodigo;
//  Comissao_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString   := ATipo;
//  Comissao_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := ASequencia;
//  Comissao_Financeiro.FieldByName('VALOR').AsFloat             := QuerParcelas.FieldByName('VALOR').AsFloat * Comissao_Financeiro.FieldByName('FATOR_COMERCIAL').AsFloat;
//  Comissao_Financeiro.FieldByName('RAZAOSOCIAL').AsString      := QuerParcelas.FieldByName('RAZAOSOCIAL').AsString;
//
//  {$REGION 'Cascata'}
//  {O recurso de Cascata foi desativado pois era usado apenas pelo cliente Colmeia. Ninguém entendeu direito o motivo
//   pelo qual ele usava isso, pois o Markup já garante os valores. Caso algum cliente precise deste recurso, abaixo
//   segue como estava
//
//  if Cadastro.FieldByName('CASCATA').AsString = 'S' then
//  begin
//    if AComissaoRepresentante > 0 then
//      Comissao_FinanceiroVALOR.AsFloat := Comissao_FinanceiroVALOR.AsFloat * (1 - (AComissaoRepresentante /100));
//    if AComissaoAgencia > 0 then
//      Comissao_FinanceiroVALOR.AsFloat := Comissao_FinanceiroVALOR.AsFloat * (1 - (AComissaoAgencia /100));
//  end;}
//  {$ENDREGION}
//
//  // A Comissão pode variar pela Metas
//  Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat := VerificaMetas(AComissao, ACodigo, QuerParcelas);
//  Comissao_Financeiro.FieldByName('DT_VENCIMENTO').Value   := QuerParcelas.FieldByName('VENCTO').Value;
//  Comissao_Financeiro.FieldByName('DT_PAGAMENTO').Value    := QuerParcelas.FieldByName('DATAPAGTO').Value;
//
//  {$REGION 'Valor Agência e Frete'}
////  Comissao_Financeiro.FieldByName('VALOR_AGENCIA').AsFloat := CalculaValorRateio(QuerParcelas.FieldByName('VALOR_AGENCIA').AsFloat,
////                                                                 QuerParcelas.FieldByName('TOTAL').AsFloat,
////                                                                 QuerParcelas.FieldByName('VALOR').AsFloat, -8);
//
//  Comissao_Financeiro.FieldByName('VALOR_FRETE').AsFloat := CalculaValorRateio(QuerParcelas.FieldByName('NF_VFRETE').AsFloat,
//                                                               QuerParcelas.FieldByName('TOTAL').AsFloat,
//                                                               QuerParcelas.FieldByName('VALOR').AsFloat, -8);
//  {$ENDREGION}
//
//  if (QuerParcelas.FieldByName('STATUS').AsString = 'INATIVO AGRUPADO') then
//  begin
//    {$REGION 'Comissão para faturas agrupadas'}
//    ATotalInativo := 0;
//    QuerTotalInativo := GeraFDQuery;
//    try
//      {$REGION 'Calcula o total das parcelas Inativas'}
//      QuerTotalInativo.SQL.Text := 'select (coalesce(F.VALOR, 0) + ' +
//                                   '        coalesce(F.JUROS, 0) - ' +
//                                   '        coalesce(F.DESCONTO, 0)) as TOTAL ' +
//                                   'from FINANCEIRO F ' +
//                                   'where F.AGRUPADOR = :Agrupador ' +
//                                   'and F.STATUS = ''INATIVO AGRUPADO''';
//      QuerTotalInativo.ParamByName('Agrupador').AsInteger := QuerParcelas.FieldByName('AGRUPADOR').AsInteger;
//      QuerTotalInativo.Open;
//      while not QuerTotalInativo.Eof do
//      begin
//        ATotalInativo := ATotalInativo + QuerTotalInativo.FieldByName('TOTAL').AsFloat;
//        QuerTotalInativo.Next;
//      end;
//      {$ENDREGION}
//
//      {$REGION 'Calcula o valor rateando o valor da parcela Inativa pelo total recebido Agrupado'}
//      QuerTotalInativo.Close;
//      QuerTotalInativo.SQL.Add('and F.DOCUMENTO = :DOCUMENTO');
//      QuerTotalInativo.ParamByName('DOCUMENTO').AsString := QuerParcelas.FieldByName('DOCUMENTO').AsString;
//      QuerTotalInativo.Open;
//      QuerTotalInativo.First;
//      while not QuerTotalInativo.Eof do
//      begin
//        QuerAgrupado := GeraFDQuery;
//        try
//          QuerAgrupado.SQL.Text := 'select sum(coalesce(F.VALOR, 0) + ' +
//                                   '           coalesce(F.JUROS, 0) - ' +
//                                   '           coalesce(F.DESCONTO, 0)) as TOTAL ' +
//                                   'from FINANCEIRO F ' +
//                                   'where (F.AGRUPADOR = :Agrupador) ' +
//                                   '      and (coalesce(F.COMISSAO_PAGA, '''') <> ''S'') ' +
//                                   '      and (F.STATUS = ''ATIVO AGRUPADO'') ' +
//                                   IfThen(Cadastro.FieldByName('TIPO_FINANCEIRO').AsString <> 'S',
//                                   '      and (F.TIPO = ''RECEBIDA'') ',
//                                   '      and (F.TIPO in (''RECEBIDA'', ''A RECEBER''))');
//          QuerAgrupado.ParamByName('Agrupador').AsInteger := QuerParcelas.FieldByName('AGRUPADOR').AsInteger;
//          QuerAgrupado.Open;
//          while not QuerAgrupado.Eof do
//          begin
//            if Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat > 0 then
//            begin
//              Comissao_Financeiro.FieldByName('STATUS').AsString        := 'RECEBIDA';
//              Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat := ((QuerTotalInativo.FieldByName('TOTAL').AsFloat / ATotalInativo)
//                                                                    * QuerAgrupado.FieldByName('TOTAL').AsFloat)
//                                                                    * Perc(Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat);
//            end else
//            begin
//              Comissao_Financeiro.FieldByName('STATUS').AsString        := 'RECEBIDA';
//              Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat := 0;
//            end;
//            QuerAgrupado.Next;
//          end;
//        finally
//          QuerAgrupado.Free;
//        end;
//        QuerTotalInativo.Next;
//      end;
//      {$ENDREGION'}
//    finally
//      QuerTotalInativo.Free;
//    end;
//    {$ENDREGION}
//  end else
//  begin
//    {$REGION 'Comissão para faturas normais'}
//    if Comissao_Financeiro.FieldByName('CODPEDIDO').AsString <> '0' then
//    begin
//      AValor := (Comissao_Financeiro.FieldByName('VALOR').AsFloat
////                 - Comissao_Financeiro.FieldByName('VALOR_AGENCIA').AsFloat
//                 - Comissao_Financeiro.FieldByName('VALOR_FRETE').AsFloat);
//
//      //Primeiro vimos qual era o valor do produto antes de aplicar a comissão
//      AValor := PercValorInicial(AValor, QuerParcelas.FieldByName('TOTAL_PERC_COMISSAO_COBRADA').AsFloat);
//
//      //Agora podemos simplesmente aplicar o percentual sobre o valor calculado
//      Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat := PercValor(AValor, Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat);
//    end else
//      Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat := (Comissao_Financeiro.FieldByName('VALOR').AsFloat
////                                                  - Comissao_Financeiro.FieldByName('VALOR_AGENCIA').AsFloat
//                                                  - Comissao_Financeiro.FieldByName('VALOR_FRETE').AsFloat) *
//                                                        Perc(Comissao_Financeiro.FieldByName('PERC_COMISSAO').AsFloat);
//    {$ENDREGION}
//  end;
//
//  {$REGION 'Define o tipo do lançamento das parcelas na Comissão'}
//  if Comissao_Financeiro.FieldByName('STATUS').AsString <> 'RECEBIDA' then
//  begin
//    ADataRelatorio := DateOf(EdtDataLimite.Date);
//
//    if Cadastro.FieldByName('TIPO_FINANCEIRO').AsString = 'S' then
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'RECEBIDA'
//    else
//    //Regra para lançamento que entra na comissão
//    if (QuerParcelas.FieldByName('TIPO').AsString = 'RECEBIDA') and
//       (DateOf(QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) <= ADataRelatorio) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'RECEBIDA';
//    end else
//    //Regra para lançamentos em Aberto
//    if (
//        (QuerParcelas.FieldByName('TIPO').AsString = 'A RECEBER') or
//        (DateOf({QuerX}QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) > ADataRelatorio)
//       ) and
//       (DateOf(QuerParcelas.FieldByName('VENCTO').AsDateTime) >= ADataRelatorio) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'ABERTO';
//    end else
//    //Regra para lançamentos vencidos
//    if (DateOf(QuerParcelas.FieldByName('VENCTO').AsDateTime) <= ADataRelatorio) and
//       ((QuerParcelas.FieldByName('TIPO').AsString = 'A RECEBER') or
//        ((QuerParcelas.FieldByName('TIPO').AsString = 'RECEBIDA') and
//         (DateOf(QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) > ADataRelatorio))) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'VENCIDA';
//    end else
//      Comissao_Financeiro.Cancel;
//  end;
//  {$ENDREGION}
//
//  if ((Cadastro.FieldByName('TIPO_FINANCEIRO').AsString = 'Todas as Parcelas Emitidas') and (Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat > 0)) or
//     ((Cadastro.FieldByName('TIPO_FINANCEIRO').AsString = 'Todas as Parcelas Recebidas') and (Comissao_Financeiro.FieldByName('STATUS').AsString = 'RECEBIDA')
//     and (Comissao_Financeiro.FieldByName('VALOR_COMISSAO').AsFloat > 0)) then
//    Comissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := 'S';
//  //Se for por VendaInteira quitada faz no final de tudo
//  //if Comissao_Financeiro.FieldByName('CODEMPRESA').AsString = 'Apenas as Parcelas de Vendas Quitadas' then
//  //Se não caiu em nenhuma regra acima, o lançamento é cancelado
//  if (Comissao_Financeiro.State = dsInsert) then
//    Comissao_Financeiro.Post;
//end;

//procedure TFrmComissao.GridVendaDBTableView1DblClick(Sender: TObject);
//begin
//  inherited;
//  if DS.AutoEdit = True then
//    AlteraDataSet(DS.DataSet);
//
////  TFrmComissoes_Financeiro.MostrarDetalhes(Self);
//
//  BringToFront;
//  CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//  Calc;
//end;


//function TFrmComissao.GetProximoCodigoComissao(const ATabelaFilha: string): Integer;
//var
//  QuerX: TFDQuery;
//begin
//  QuerX := GeraFDQuery(TransaFD);
//  try
//    QuerX.SQL.Text:= 'select max(CODIGO) ' +
//                     'from ' + ATabelaFilha +
//                     ' where (CODCOMISSAO = :Cod)';
//    QuerX.Params[0].AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
//    QuerX.Open;
//    Result := QuerX.Fields[0].AsInteger + 1;
//  finally
//    QuerX.Free;
//  end;
//end;

//procedure TFrmComissao.MarcaDesmarcaPessoa(const AMarcar: Boolean);
//var
//  APoint: TBookmark;
//begin
//  if Comissao_Pessoa.IsEmpty then
//    Exit;
//
//  AlteraDataSet(Cadastro);
//  Comissao_Financeiro.DisableControls;
//  try
//    //Marca ou Desmarca todas as parcelas da pessoa
//    APoint := Comissao_Financeiro.GetBookmark;
//    Comissao_Financeiro.First;
//    while not Comissao_Financeiro.Eof do
//    begin
//      if Comissao_Financeiro.FieldByName('GERA_COMISSAO').AsString <> BoolToStrDB(AMarcar) then
//      begin
//        Comissao_Financeiro.Edit;
//        Comissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := BoolToStrDB(AMarcar);
//        Comissao_Financeiro.Post;
//      end;
//      Comissao_Financeiro.Next;
//    end;
//    GotoBookmark(Comissao_Financeiro, APoint);
//
//    //Atualiza a Pessoa
//    AlteraDataSet(Comissao_Pessoa);
//    Comissao_Pessoa.FieldByName('GERA_COMISSAO').AsString := BoolToStrDB(AMarcar);
//    Comissao_Pessoa.Post;
//    CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//  finally
//    Comissao_Financeiro.EnableControls;
//  end;
//end;

//procedure TFrmComissao.MarcartodasasparcelasdestapessoacomoCANCELADA1Click(
//  Sender: TObject);
//begin
//  inherited;
//  TrocaStatusParcelas('Cancelada', Comissao_Pessoa, Comissao_Financeiro);
//
//  //Atualiza a Pessoa
//  CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//end;

//procedure TFrmComissao.MarcartodasasparcelasdestapessoacomoDEFERIDA1Click(
//  Sender: TObject);
//begin
//  inherited;
//  TrocaStatusParcelas('Deferida', Comissao_Pessoa, Comissao_Financeiro);
//
//  //Atualiza a Pessoa
//  CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//end;

//procedure TFrmComissao.MarcartodasasparcelasdestapessoacomoPendente1Click(
//  Sender: TObject);
//begin
//  inherited;
//  TrocaStatusParcelas('Pendente', Comissao_Pessoa, Comissao_Financeiro);
//
//  //Atualiza a Pessoa
//  CalculaTotal(Cadastro.FieldByName('CODIGO').AsInteger, Comissao_Pessoa.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//end;

//procedure TFrmComissao.TrocaStatusParcelas(const AStatus: string; AComissao_Pessoa, AComissao_Financeiro: TDataset);
//var
//  APoint: TBookmark;
//begin
//  if AComissao_Pessoa.IsEmpty then
//    Exit;
//
//  AComissao_Financeiro.DisableControls;
//  try
//    //Marca ou Desmarca todas as parcelas da pessoa
//    APoint := AComissao_Financeiro.GetBookmark;
//    AComissao_Financeiro.First;
//    while not AComissao_Financeiro.Eof do
//    begin
//      AComissao_Financeiro.Edit;
//      AComissao_Financeiro.FieldByName('COMISSAO_STATUS').AsString := AStatus;
//
//      if AStatus = 'Deferida' then
//        AComissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := 'S'
//      else
//        AComissao_Financeiro.FieldByName('GERA_COMISSAO').AsString := 'N';
//
//      AComissao_Financeiro.Post;
//      AComissao_Financeiro.Next;
//    end;
//    GotoBookmark(AComissao_Financeiro, APoint);
//
//  finally
//    AComissao_Financeiro.EnableControls;
//  end;
//end;

//procedure TFrmComissao.popupMarcarTodasParcelasClick(Sender: TObject);
//begin
//  inherited;
//  MarcaDesmarcaPessoa(True);
//end;

//procedure TFrmComissao.MenuGridPopup(Sender: TObject);
//begin
//  inherited;
//  popupMarcarTodasParcelas.Enabled    := DS.AutoEdit;
//  popupDesmarcarTodasParcelas.Enabled := DS.AutoEdit;
//end;

//procedure TFrmComissao.ValidaEmissao;
//begin
//  if not (DS.State in [dsEdit, dsInsert]) then
//  begin
//    if Cadastro.IsEmpty then
//      btnNovo.Click
//    else if btnAlterar.Enabled then
//      btnAlterar.Click
//    else
//      GeraExcecao('Alteração não permitida.');
//  end;
//  if not (EdtDataLimite.Date > 0) then
//  begin
//    EdtDataLimite.SetFocusWR;
//    GeraExcecao('Selecione uma data para calcular as comissões.');
//  end;
////    if ADataRelatorio > DateOf(ADataAtual) then
////    begin
////      EdtDataLimite.SetFocusWR;
////      raise EWRException.Create('A data limite não pode ser além do dia atual.');
////    end;
//  if EdtDescricao.Text = '' then
//  begin
//    EdtDescricao.SetFocusWR;
//    GeraExcecao('Favor colocar a Descrição');
//  end;
//end;

//function TFrmComissao.VerificaMetas(AComissao: Double; const ACodMissionado: string; AQuerParcelas: TDataSet): Double;
//var
//  ATotalDeVenda: Double;
//  QuerX: TFDQuery;
//  ADtReferencia: TDate;
//begin
//  Result := AComissao;
//  if (Trim(ACodMissionado) = '') or Comissao_Meta.IsEmpty then
//    Exit;
//
//  //Consulta vendas do período da parcela
//  QuerX := GeraFDQuery(TransaFD);
//  try
//    QuerX.SQL.Text:= 'select sum(V.TOTAL - coalesce(V.NF_TOTAL_IMPOSTOS, 0)) as TOTAL ' +
//                     'from VENDA V ' +
//                     'left join VENDA_TIPO VT on (VT.DESCRICAO = V.VENDA_TIPO) ' +
//                     'where (V.DT_FATURAMENTO is not null) ' +
//                     '      and (V.STATUS like ''ATIVO%'') ' +
//                     '      and (VT.MODELO = ''Venda'') ' +
//                     '      and ((V.PESSOA_FUNCIONARIO_CODIGO = :COMISSIONADO) or ' +
//                     '           (V.PESSOA_REPRESENTANTE_CODIGO = :COMISSIONADO) or ' +
//                     '           (V.PESSOA_AGENCIA_CODIGO = :COMISSIONADO))';
//
//    if edtDataReferencia.Text = 'Emissão das Vendas' then
//    begin
//      QuerX.SQL.Add('and (V.DT_EMISSAO between :DataIni and :DataFim)');
//      ADtReferencia := AQuerParcelas.FieldByName('DT_EMISSAO').AsDateTime;
//    end
//    else if edtDataReferencia.Text = 'Competência das Vendas' then
//    begin
//      QuerX.SQL.Add('and (V.DT_COMPETENCIA between :DataIni and :DataFim)');
//      ADtReferencia := AQuerParcelas.FieldByName('DT_COMPETENCIA').AsDateTime;
//    end else // 'Faturamento'
//    begin
//      QuerX.SQL.Add('and (V.DT_FATURAMENTO between :DataIni and :DataFim)');
//      ADtReferencia := AQuerParcelas.FieldByName('DT_FATURAMENTO').AsDateTime;
//    end;
//    QuerX.ParamByName('DataIni').AsDateTime    := StartOfTheMonth(ADtReferencia);
//    QuerX.ParamByName('DataFim').AsDateTime    := EndOfTheMonth(ADtReferencia);
//    QuerX.ParamByName('COMISSIONADO').AsString := ACodMissionado;
//    ShowMessage(Querx.SQL.Text);
//    QuerX.Open;
//    ATotalDeVenda := QuerX.FieldByName('Total').AsFloat;
//  finally
//    QuerX.Free;
//  end;
//
//  Comissao_Meta.First;
//  while not Comissao_Meta.Eof do
//  begin
//    if Comissao_Meta.FieldByName('TIPO').AsString = 'Até' then //ATÉ:
//    begin
//      if ATotalDeVenda <= Comissao_Meta.FieldByName('VALOR').AsFloat then
//      begin
//        Result := Comissao_Meta.FieldByName('PORCENTAGEM').AsFloat;
//        Exit;
//      end;
//    end else
//    if Comissao_Meta.FieldByName('TIPO').AsString = 'Acima De' then  //ACIMA DE:
//    begin
//      if ATotalDeVenda >= Comissao_Meta.FieldByName('VALOR').AsFloat then
//      begin
//        Result := Comissao_Meta.FieldByName('PORCENTAGEM').AsFloat;
//        Exit;
//      end;
//    end;
//    Comissao_Meta.Next;
//  end;
//end;

//procedure TFrmComissao.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
//begin
//  inherited;
// //
// with WREventosCadastro do
//  begin
//    with AddForm(Self) do
//    begin
//      AddValorInicial('COMISSAO_FINANCEIRO', 'COMISSAO_STATUS', nil, 'Pendente');
//    end;
//  end;
//end;

//function TFrmComissao.CalculaStatusComissaoParcela(AMemFinanceiro: TFDMemTable): string;
//begin
//  Result := '';
//
//  if AMemFinanceiro.FieldByName('TIPO').AsString = 'RECEBIDA' then
//  begin
//    Result := 'RECEBIDA';
//  end
//  else
//  begin
//    if AMemFinanceiro.FieldByName('VENCTO').AsDateTime < DataHoraSys then
//      Result := 'VENCIDA'
//    else
//      Result := 'EM ABERTO';
//
//  end;

  // Versão antiga que dependia de uma data alimentada pelo usuário
//  if Comissao_Financeiro.FieldByName('STATUS').AsString <> 'RECEBIDA' then
//  begin
//    ADataRelatorio := DateOf(EdtDataLimite.Date);
//
//    if Cadastro.FieldByName('TIPO_FINANCEIRO').AsString = 'S' then
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'RECEBIDA'
//    else
//    //Regra para lançamento que entra na comissão
//    if (QuerParcelas.FieldByName('TIPO').AsString = 'RECEBIDA') and
//       (DateOf(QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) <= ADataRelatorio) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'RECEBIDA';
//    end else
//    //Regra para lançamentos em Aberto
//    if (
//        (QuerParcelas.FieldByName('TIPO').AsString = 'A RECEBER') or
//        (DateOf({QuerX}QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) > ADataRelatorio)
//       ) and
//       (DateOf(QuerParcelas.FieldByName('VENCTO').AsDateTime) >= ADataRelatorio) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'ABERTO';
//    end else
//    //Regra para lançamentos vencidos
//    if (DateOf(QuerParcelas.FieldByName('VENCTO').AsDateTime) <= ADataRelatorio) and
//       ((QuerParcelas.FieldByName('TIPO').AsString = 'A RECEBER') or
//        ((QuerParcelas.FieldByName('TIPO').AsString = 'RECEBIDA') and
//         (DateOf(QuerParcelas.FieldByName('DATAPAGTO').AsDateTime) > ADataRelatorio))) then
//    begin
//      Comissao_Financeiro.FieldByName('STATUS').AsString := 'VENCIDA';
//    end else
//      Comissao_Financeiro.Cancel;
//  end;
//end;

//procedure TFrmComissao.popupDesmarcarTodasParcelasClick(Sender: TObject);
//begin
//  inherited;
//  MarcaDesmarcaPessoa(False);
//end;

//procedure TFrmComissao.FormCreate(Sender: TObject);
//begin
//  inherited;
{ CarregaConfigGrid(cxGrid2DBTableView1, 'GridFaturasVencidas');
  CarregaConfigGrid(cxGrid3DBTableView1, 'GridFaturasEmAberto');
  CarregaConfigGrid(cxGrid4DBTableView1, 'GridComissionados');
  CarregaConfigGrid(cxGrid5DBTableView1, 'GridVendas');
  cxPageControl2.ActivePageIndex := 0;
  cxPageControl1.ActivePageIndex := 0; }
//end;

{$ENDREGION}

initialization
  RegisterClass(TFrmComissao);
  RegisterFrameCad(Tag_Comissao, TFrmComissao);
end.
