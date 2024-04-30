unit CadNF_Natureza_Operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxLayoutLookAndFeels,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters, IBX.IBCustomDataSet, UCBase, cxClasses, cxDBEdit,
  System.ImageList, Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridDBTableView, cxGrid,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxTextEdit, cxDBNavigator, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxStatusBar, dxSkinsCore, WREventos, cxDataControllerConditionalFormattingRulesManagerDialog,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, FireDAC.Stan.Async,
  FireDAC.DApt, UCHistDataset, frxClass, frxDBSet, dxUIAdorners, cxButtonEdit,
  fs_iinterpreter, System.Generics.Collections, cxLabel, uWRNotaFiscal,
  dxDateRanges, cxCheckBox, unitFuncoes, WRButtonsEditAdd, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmNF_Natureza_Operacao = class(TFrmCadM)
    cbxTipo_NF: TcxDBLookupComboBox;
    licbxTipo_NF: TdxLayoutItem;
    MemTipoNF: TFDMemTable;
    DSMemTipoNF: TDataSource;
    MemTipoNFCODIGO: TStringField;
    MemTipoNFDESCRICAO: TStringField;
    edtNFSeCodigo: TcxDBCurrencyEdit;
    liedtNFSeCodigo: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    cbxEntrada_Saida: TcxDBComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    edtOpercao: TcxDBComboBox;
    cbxConsumidor_Final: TcxDBComboBox;
    dxLayoutItem2: TdxLayoutItem;
    GridGruposVinculadosDBTableView1: TcxGridDBTableView;
    GridGruposVinculadosLevel1: TcxGridLevel;
    GridGruposVinculados: TcxGrid;
    Grid: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    DSProduto_Grupo_Vinculado: TDataSource;
    Produto_Grupo_Vinculado: TFDQuery;
    GridGruposVinculadosDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn;
    GridGruposVinculadosDBTableView1CODNF_CST: TcxGridDBColumn;
    GridGruposVinculadosDBTableView1CODNF_CFOP: TcxGridDBColumn;
    GridGruposVinculadosDBTableView1CODNF_CFOP_FORA: TcxGridDBColumn;
    GridGruposVinculadosDBTableView1DESCRICAO: TcxGridDBColumn;
    Panel2: TPanel;
    CbxCST_IPI: TcxDBLookupComboBox;
    cbPIEEstado: TcxComboBox;
    EdtPIEMVA: TcxCurrencyEdit;
    EdtPIEPrecoPauta: TcxCurrencyEdit;
    EdtPIEICMSST: TcxCurrencyEdit;
    EdtPIEICMS: TcxCurrencyEdit;
    EdtPREDBCST: TcxCurrencyEdit;
    EdtFCPUFDest: TcxCurrencyEdit;
    cxGrid1: TcxGrid;
    DBTableView1: TcxGridDBTableView;
    DBTableView1ESTADO: TcxGridDBColumn;
    DBTableView1MVA: TcxGridDBColumn;
    DBTableView1PRECO_PAUTA: TcxGridDBColumn;
    DBTableView1PICMSST: TcxGridDBColumn;
    DBTableView1PICMS: TcxGridDBColumn;
    DBTableView1PREDBCST: TcxGridDBColumn;
    DBTableView1PFCP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    CbDeterminacaoBaseIcms: TcxDBLookupComboBox;
    DBEpRedBC: TcxDBCurrencyEdit;
    edtPREDBC: TcxDBCurrencyEdit;
    DBEdit2: TcxDBCurrencyEdit;
    CbDeterminacaoBaseIcmsST: TcxDBLookupComboBox;
    DBEpRedBCST: TcxDBCurrencyEdit;
    DBEpMVAST: TcxDBCurrencyEdit;
    CbxCST_PIS: TcxDBLookupComboBox;
    DBEdit5: TcxDBTextEdit;
    DBEdit4: TcxDBCurrencyEdit;
    DBEIPI_pIPI: TcxDBCurrencyEdit;
    edtCodEnquadramento: TcxDBTextEdit;
    DBEPIS_pPIS: TcxDBCurrencyEdit;
    DBEdit3: TcxDBCurrencyEdit;
    DBEPISST_pPIS: TcxDBCurrencyEdit;
    CbCST_CONFINS: TcxDBLookupComboBox;
    CbSimNaoII: TcxDBLookupComboBox;
    DBEII_pII: TcxDBCurrencyEdit;
    DBEII_pIOF: TcxDBCurrencyEdit;
    GridVendaTipo: TcxGrid;
    GridVendaTipoDBTableView2: TcxGridDBTableView;
    GridVendaTipoDBTableView2DESCRICAO: TcxGridDBColumn;
    GridVendaTipoDBTableView2CODNF_CFOP: TcxGridDBColumn;
    GridVendaTipoDBTableView2CODNF_CFOP_FORA: TcxGridDBColumn;
    GridVendaTipoLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    EdtCFOPÎNF_CFOP: TcxDBButtonEdit;
    LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel;
    cxLabel2: TcxLabel;
    EdtCFOPForaÎNF_CFOP: TcxDBButtonEdit;
    LblCFOPForaÎNF_CFOPÎDESCRICAO: TcxLabel;
    DBEISSQN_pALIQ: TcxDBCurrencyEdit;
    CbISSQNcSitTrib: TcxDBLookupComboBox;
    CbindISSRet: TcxDBLookupComboBox;
    CbindIncentivo: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    CbSimNaoICMS: TcxDBLookupComboBox;
    CbSimNaoICMS_ST: TcxDBLookupComboBox;
    CbSimNaoPIS: TcxDBLookupComboBox;
    CbSimNaoIPI: TcxDBLookupComboBox;
    CbSimNaoCONFINS: TcxDBLookupComboBox;
    DBECOFINS_pCOFINS: TcxDBCurrencyEdit;
    DBEdit6: TcxDBCurrencyEdit;
    DBEdit8: TcxDBTextEdit;
    DBECOFINSST_pCOFINS: TcxDBCurrencyEdit;
    CBSimNaoISSQN: TcxDBLookupComboBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    CbImpostoPafEcf: TcxDBLookupComboBox;
    CbNF_CST: TcxDBLookupComboBox;
    CBSimNaoTem_Diferimento: TcxDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    edtcBenef: TcxDBTextEdit;
    radConsumidor_Final: TRadioGroup;
    radEntrada_Saida: TRadioGroup;
    RadioGroup3: TRadioGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    TabConfiguracaoImpostos: TdxLayoutGroup;
    GrupoFiltros: TdxLayoutGroup;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    MainLayoutGroup3: TdxLayoutGroup;
    GrupoNaturezaOperacao: TdxLayoutGroup;
    MainLayoutItem80: TdxLayoutItem;
    GrupoICMS: TdxLayoutGroup;
    GrupoCFOP: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    MainLayoutGroup23: TdxLayoutGroup;
    MainLayoutItem74: TdxLayoutItem;
    MainLayoutGroup22: TdxLayoutAutoCreatedGroup;
    MainLayoutItem73: TdxLayoutItem;
    MainLayoutItem75: TdxLayoutItem;
    MainLayoutGroup25: TdxLayoutGroup;
    MainLayoutItem78: TdxLayoutItem;
    MainLayoutGroup24: TdxLayoutAutoCreatedGroup;
    MainLayoutItem77: TdxLayoutItem;
    MainLayoutItem79: TdxLayoutItem;
    MainLayoutGroup13: TdxLayoutGroup;
    MainLayoutGroup15: TdxLayoutGroup;
    GrupoICMSCalculos: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    MainLayoutItem3: TdxLayoutItem;
    MainLayoutItem19: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    MainLayoutItem22: TdxLayoutItem;
    MainLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    MainLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    MainLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    GrupoDiferencial: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    liedtcBenef: TdxLayoutItem;
    GrupoICMSSTCalculos: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    MainLayoutItem5: TdxLayoutItem;
    MainLayoutItem25: TdxLayoutItem;
    MainLayoutItem26: TdxLayoutItem;
    GrupoPIS: TdxLayoutGroup;
    MainLayoutItem29: TdxLayoutItem;
    GrupoPISDados: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    GrupoPISCalculos: TdxLayoutGroup;
    GrupoPISCalculosInt: TdxLayoutGroup;
    MainLayoutItem31: TdxLayoutItem;
    MainLayoutItem33: TdxLayoutItem;
    GrupoPISSTCalculos: TdxLayoutGroup;
    MainLayoutItem32: TdxLayoutItem;
    GrupoIPI: TdxLayoutGroup;
    MainLayoutItem34: TdxLayoutItem;
    GrupoIPIDados: TdxLayoutGroup;
    GrupoIPICalculos: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    MainLayoutItem35: TdxLayoutItem;
    MainLayoutItem37: TdxLayoutItem;
    MainLayoutItem38: TdxLayoutItem;
    MainLayoutItem39: TdxLayoutItem;
    GrupoCOFINS: TdxLayoutGroup;
    MainLayoutItem40: TdxLayoutItem;
    MainLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    GrupoCOFINSCalculos: TdxLayoutGroup;
    MainLayoutGroup4: TdxLayoutGroup;
    MainLayoutItem42: TdxLayoutItem;
    MainLayoutItem44: TdxLayoutItem;
    MainLayoutItem45: TdxLayoutItem;
    MainLayoutGroup6: TdxLayoutGroup;
    MainLayoutItem43: TdxLayoutItem;
    GrupoISS: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    GrupoISSQN: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    MainLayoutItem47: TdxLayoutItem;
    MainLayoutItem41: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    GrupoImpostoPorEstado: TdxLayoutGroup;
    MainLayoutGroup18: TdxLayoutGroup;
    MainLayoutItem58: TdxLayoutItem;
    MainLayoutItem59: TdxLayoutItem;
    MainLayoutItem60: TdxLayoutItem;
    MainLayoutItem61: TdxLayoutItem;
    MainLayoutItem62: TdxLayoutItem;
    MainLayoutItem63: TdxLayoutItem;
    MainLayoutItem64: TdxLayoutItem;
    MainLayoutItem68: TdxLayoutItem;
    MainLayoutItem66: TdxLayoutItem;
    MainLayoutItem65: TdxLayoutItem;
    GroupOutrosImpostos: TdxLayoutGroup;
    MainLayoutGroup11: TdxLayoutGroup;
    GrupoII: TdxLayoutGroup;
    MainLayoutItem48: TdxLayoutItem;
    GrupoIICalculos: TdxLayoutGroup;
    MainLayoutItem50: TdxLayoutItem;
    GrupoIOF: TdxLayoutGroup;
    MainLayoutItem51: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    Produto_Grupo_ImpostoUF: TFDQuery;
    DSProdutoGrupoImpostoUF: TDataSource;
    chkTributacaoPadrao: TcxDBCheckBox;
    dxLayoutItem34: TdxLayoutItem;
    btnReplicaTodos: TcxButton;
    LibtnReplicaTodos: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    edtCodigoÎPRODUTO_GRUPO: TcxButtonEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    TabGruposVinculados: TdxLayoutGroup;
    dxLayoutItem36: TdxLayoutItem;
    edtCodigoÎPRODUTO_GRUPOÎDESCRICAO: TcxTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    btnAdicionarVinculo: TcxButton;
    dxLayoutItem38: TdxLayoutItem;
    btnRemoverVinculo: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    GridGruposVinculadosDBTableView1CONSUMIDOR_FINAL: TcxGridDBColumn;
    MigrarNaturezadeoperao1: TMenuItem;
    procedure CbNotasFiscaisPossiveisPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure Produto_Grupo_VinculadoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkTributacaoPadraoClick(Sender: TObject);
    procedure chkTributacaoPadraoPropertiesEditValueChanged(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAdicionarVinculoClick(Sender: TObject);
    procedure dxLayoutGroup1TabChanged(Sender: TObject);
    procedure btnReplicaTodosClick(Sender: TObject);
    procedure radConsumidor_FinalClick(Sender: TObject);
    procedure GridGruposVinculadosDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MigrarNaturezadeoperao1Click(Sender: TObject);
    procedure Produto_Grupo_VinculadoBeforeInsert(DataSet: TDataSet);
    procedure btnRemoverVinculoClick(Sender: TObject);

  public
    { Public declarations }
  end;

implementation

uses
  wrConversao, wrPreencheLookup, wrFuncoes, Classes.WR, frFrameHistorico;

{$R *.dfm}

procedure TFrmNF_Natureza_Operacao.BitBtn1Click(Sender: TObject);
begin
  Produto_Grupo_ImpostoUF.DisableControls;
  try
    if Produto_Grupo_ImpostoUF.Locate('ESTADO', cbPIEEstado.GetItemSelecionado, []) then
    begin
      ShowMessage('Já existe um registro para este estado. Caso necessite alterar os valores deste registro, faça a ' +
                  'alteração diretamente na tabela de Impostos por Estado.');
      Exit;
    end;

    VerificaSePodeAlteraDataSet;
    Produto_Grupo_ImpostoUF.Insert;
    Produto_Grupo_ImpostoUF.FieldByName('ESTADO').AsString     := cbPIEEstado.GetItemSelecionado;
    Produto_Grupo_ImpostoUF.FieldByName('MVA').AsFloat         := EdtPIEMVA.Value;
    Produto_Grupo_ImpostoUF.FieldByName('PRECO_PAUTA').AsFloat := EdtPIEPrecoPauta.Value;
    Produto_Grupo_ImpostoUF.FieldByName('PICMSST').AsFloat     := EdtPIEICMSST.Value; //Não deve haver o ST no nome do campo
    Produto_Grupo_ImpostoUF.FieldByName('PICMS').AsFloat       := EdtPIEICMS.Value;
    Produto_Grupo_ImpostoUF.FieldByName('PREDBCST').AsFloat    := EdtPREDBCST.Value;
    Produto_Grupo_ImpostoUF.FieldByName('PFCP').AsFloat        := EdtFCPUFDest.Value;
    Produto_Grupo_ImpostoUF.Post;
    CbPIEEstado.Clear;
    EdtPIEMVA.Clear;
    EdtPIEPrecoPauta.Clear;
    EdtPIEICMSST.Clear;
    EdtPIEICMS.Clear;
    EdtPREDBCST.Clear;
  finally
    Produto_Grupo_ImpostoUF.EnableControls;
  end;
  cbPIEEstado.SetFocusWR;
end;

procedure TFrmNF_Natureza_Operacao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if not Produto_Grupo_ImpostoUF.IsEmpty then
  begin
    VerificaSePodeAlteraDataSet;
    Produto_Grupo_ImpostoUF.Delete;
  end;
end;

procedure TFrmNF_Natureza_Operacao.btnAdicionarVinculoClick(Sender: TObject);
begin
  inherited;
  if (edtCodigoÎPRODUTO_GRUPO.Text = '') or (edtCodigoÎPRODUTO_GRUPOÎDESCRICAO.Text = '') then
  begin
    ShowMessageWR('Necessário preencher todos os campos.');
    edtCodigoÎPRODUTO_GRUPO.SetFocusWR;
    Exit;
  end;
  VerificaSePodeAlteraDataSet;

  if Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO', edtCodigoÎPRODUTO_GRUPO.Text) then
  begin
    ShowMessageWR('Já existe um lançamento para o Grupo Selecionado.');
    edtCodigoÎPRODUTO_GRUPO.Text := '';
    edtCodigoÎPRODUTO_GRUPO.SetFocusWR;
    Exit;
  end;

  try
    Produto_Grupo_Vinculado.Insert;
    Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString := edtCodigoÎPRODUTO_GRUPO.Text;
    Produto_Grupo_Vinculado.FieldByName('CODNF_NATUREZA_OPERACAO').AsString := Cadastro.FieldByName('CODIGO').AsString;
    Produto_Grupo_Vinculado.FieldByName('ATIVO').AsString := 'S';

    if radConsumidor_Final.ItemIndex = 0 then
      Produto_Grupo_Vinculado.FieldByName('CONSUMIDOR_FINAL').AsString := 'N'
    else
      Produto_Grupo_Vinculado.FieldByName('CONSUMIDOR_FINAL').AsString := 'S';

    Produto_Grupo_Vinculado.Post;
  finally
    edtCodigoÎPRODUTO_GRUPO.Text := '';
    Produto_Grupo_Vinculado.Refresh;
  end;
end;

procedure TFrmNF_Natureza_Operacao.btnConfirmarClick(Sender: TObject);
begin
  DSPost(Produto_Grupo_Vinculado);
  inherited;

end;

procedure TFrmNF_Natureza_Operacao.btnRemoverVinculoClick(Sender: TObject);
begin
  inherited;
  if not Produto_Grupo_Vinculado.IsEmpty then
  begin
    VerificaSePodeAlteraDataSet;
    Produto_Grupo_Vinculado.Delete;
  end;
end;

procedure TFrmNF_Natureza_Operacao.btnReplicaTodosClick(Sender: TObject);
var
  QuerX : TFDQuery;
  ATabelaMemTable : TFDMemTable;
begin
  inherited;
  if MessageDlg('Este procedimento replicará o registro selecionado e atualizará os grupos já existentes. Deseja continuar?',
                  mtConfirmation, mbYesNo, 0) <> mrYes then
  begin
    ShowMessage('Operação Cancelada.');
    Exit;
  end;

  if GridGruposVinculadosDBTableView1.Controller.SelectedRecordCount = 0 then
  begin
    if Produto_Grupo_Vinculado.RecordCount = 0 then
    begin
      ShowMessage('Necessário realizar a configuração adicional. Adicione um grupo abaixo antes de utilizar esta opção.');
      Exit;
    end
    else
    begin
      ShowMessage('Selecionar um produto para replicar.');
      Exit;
    end;
  end;

  ATabelaMemTable := TFDMemTable.Create(Self);
  ATabelaMemTable.Data := Produto_Grupo_Vinculado.Data;
  try
    QuerX := GeraFDQUery;
    QuerX.SQL.Text := 'SELECT DISTINCT PG.CODIGO FROM PRODUTO_GRUPO PG';
    QuerX.Open;
    QuerX.First;
    QuerX.FetchAll;

    while not QuerX.Eof do
    begin
      if not Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO', QuerX.FieldByName('CODIGO').AsString) then
      begin
        Produto_Grupo_Vinculado.Insert;
        DSCopiarCamposIguais(ATabelaMemTable, Produto_Grupo_Vinculado, ['CODPRODUTO_GRUPO', 'DESCRICAO', 'CONSUMIDOR_FINAL']);
        Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString := QuerX.FieldByName('CODIGO').AsString;
        Produto_Grupo_Vinculado.FieldByName('CONSUMIDOR_FINAL').AsString := 'S';
        Produto_Grupo_Vinculado.Post;
      end
      else
      begin
        Produto_Grupo_Vinculado.Edit;
        DSCopiarCamposIguais(ATabelaMemTable, Produto_Grupo_Vinculado, ['CODPRODUTO_GRUPO', 'DESCRICAO', 'CONSUMIDOR_FINAL']);
        Produto_Grupo_Vinculado.Post;
      end;
      QuerX.Next;
    end;
    ShowMessage('Tributação selecionada Replicada para todos os Grupos.');
  finally
    QuerX.Free;
    ATabelaMemTable.Free;
  end;
  Produto_Grupo_Vinculado.Refresh;
end;

procedure TFrmNF_Natureza_Operacao.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Grupo_Vinculado.Open;
  Produto_Grupo_ImpostoUF.Open;
end;

procedure TFrmNF_Natureza_Operacao.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produto_Grupo_Vinculado.Close;
  Produto_Grupo_ImpostoUF.Close;
end;

procedure TFrmNF_Natureza_Operacao.CbNotasFiscaisPossiveisPropertiesChange(
  Sender: TObject);
begin
  inherited;
  EdtNFSeCodigo.Enabled := Cadastro.FieldByName('TIPO_NF').AsString = NotaFiscalTipoPossiveisToStr(nfprNFSe);
end;

procedure TFrmNF_Natureza_Operacao.chkTributacaoPadraoClick(Sender: TObject);
var
  QuerX: TFDQuery;
  ATabelaMemTable : TFDMemTable;
begin
  inherited;
  if chkTributacaoPadrao.Checked then
  begin
    try
      QuerX := GeraFDQuery;
      QuerX.SQL.Text := 'SELECT NFNATOP.CODNF_NATUREZA_OPERACAO FROM NF_NATUREZA_OPERACAO_PRODGRUPO NFNATOP ' +
                        ' WHERE NFNATOP.CODNF_NATUREZA_OPERACAO = :NF_NAT_OP ' +
                        ' AND NFNATOP.CODPRODUTO_GRUPO = :CODPRODUTO_GRUPO ';
      QuerX.ParamByName('NF_NAT_OP').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
      QuerX.ParamByName('CODPRODUTO_GRUPO').AsString := '0';
      QuerX.Open;

      ATabelaMemTable := TFDMemTable.Create(Self);
      ATabelaMemTable.Data := Produto_Grupo_Vinculado.Data;
      if QuerX.RecordCount = 0 then
      begin
        Produto_Grupo_Vinculado.Insert;
        DSCopiarCamposIguais(ATabelaMemTable, Produto_Grupo_Vinculado, ['DESCRICAO', 'CODNF_NATUREZA_OPERACAO','CODPRODUTO_GRUPO']);
        Produto_Grupo_Vinculado.FieldByName('CODNF_NATUREZA_OPERACAO').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
        Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString          := '0';
        Produto_Grupo_Vinculado.FieldByName('ENTRADA_SAIDA').AsString             := Cadastro.FieldByName('ENTRADA_SAIDA').AsString;
        Produto_Grupo_Vinculado.FieldByName('OPERACAO').AsString                  := Cadastro.FieldByName('OPERACAO').AsString;
        Produto_Grupo_Vinculado.FieldByName('CONSUMIDOR_FINAL').AsString          := 'S';
        Produto_Grupo_Vinculado.Post;
      end;
      Produto_Grupo_Vinculado.Refresh;
    finally
      QuerX.Free;
      ATabelaMemTable.Free;
    end;
  end;
end;

procedure TFrmNF_Natureza_Operacao.chkTributacaoPadraoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TabGruposVinculados.Visible := not (chkTributacaoPadrao.Checked);
  GrupoFiltros.Visible := not (chkTributacaoPadrao.Checked);
  Produto_Grupo_Vinculado.Close;

  if TabGruposVinculados.Visible then
  begin
    Produto_Grupo_Vinculado.SQL[5] := ' AND CODPRODUTO_GRUPO <> ''0'' ';
    TabGruposVinculados.MakeVisible;
    LibtnReplicaTodos.Visible := True;
  end
  else
  begin
    Produto_Grupo_Vinculado.SQL[5] := ' AND CODPRODUTO_GRUPO = ''0''' ;
    TabConfiguracaoImpostos.MakeVisible;
    LibtnReplicaTodos.Visible := False;
  end;

  Produto_Grupo_Vinculado.Open;
//
//  if not (Produto_Grupo_Vinculado.State in [dsEdit]) then
//    Produto_Grupo_Vinculado.Edit;
end;

procedure TFrmNF_Natureza_Operacao.dxLayoutGroup1TabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmNF_Natureza_Operacao.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupNotaFiscalPossiveis(cbxTipo_NF.Properties);
  GrupoICMS.Visible             := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //ICMS
  GrupoPIS.Visible              := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //PIS
  GrupoIPI.Visible              := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //IPI
  GrupoCOFINS.Visible           := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //COFINS
  GrupoISSQN.Visible            := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //ISSQN
  GrupoII.Visible               := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //Imposto de importação
  GrupoImpostoPorEstado.Visible := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //Impostos por Estado
  GrupoISS.Visible              := (Empresa.FieldByName('EMITE_NFE').AsString = 'S'); //Serviço
//  GrupoCFOP.Visible := FEmiteNfe;

  PreencheLookupCST_ICMS(CbNF_CST.Properties);
  PreencheLookupCST_PIS_COFINS(CbxCST_PIS.Properties);
  PreencheLookupCST_PIS_COFINS(CbCST_CONFINS.Properties);
  PreencheLookupCST_IPI(CbxCST_IPI.Properties);
  PreencheLookupindIncentivo(CbindIncentivo.Properties);
  PreencheLookupindISSRet(CbindISSRet.Properties);
  PreencheLookupDeterminacaoBaseIcms(CbDeterminacaoBaseIcms.Properties);
  PreencheLookupDeterminacaoBaseIcmsST(CbDeterminacaoBaseIcmsST.Properties);
  PreencheLookupTpcnISSQNcSitTrib(CbISSQNcSitTrib.Properties);
  PreencheLookupImpostoPafEcf(CbImpostoPafEcf.Properties);
//  PreencheLookupCSTICMST_CSOSN(CbNF_CST.Properties);

  PreencheLookupSimNao(CbSimNaoII.Properties);       // Não esta padrão
  PreencheLookupSimNao(CbSimNaoICMS.Properties);     // Não esta padrão
  PreencheLookupSimNao(CbSimNaoICMS_ST.Properties);  // Não esta padrão
  PreencheLookupSimNao(CbSimNaoPIS.Properties);      // Não esta padrão
  PreencheLookupSimNao(CbSimNaoIPI.Properties);      // Não esta padrão
  PreencheLookupSimNao(CbSimNaoCONFINS.Properties);  // Não esta padrão
  PreencheLookupSimNao(CBSimNaoISSQN.Properties);    // Não esta padrão
  PreencheLookupSimNao(CBSimNaoTem_Diferimento.Properties);    // Não esta padrão

  radConsumidor_Final.ItemIndex := 1;
end;

procedure TFrmNF_Natureza_Operacao.GridGruposVinculadosDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.GridRecord.Values[GridGruposVinculadosDBTableView1CONSUMIDOR_FINAL.Index] = 'S' then
    radConsumidor_Final.ItemIndex := 1
  else
    radConsumidor_Final.ItemIndex := 0;
end;

procedure TFrmNF_Natureza_Operacao.MigrarNaturezadeoperao1Click(
  Sender: TObject);
var
  AGruposMemTable, ANaturezasDeOperacao : TFDMemTable;
  QuerGrupos, QuerNaturezas : TFDQuery;
begin
//  inherited;
//  AGruposMemTable := TFDMemTable.Create(Self);
//  ANaturezasDeOperacao := TFDMemTable.Create(Self);
//  QuerGrupos := GeraFDQuery;
//  QuerNaturezas := GeraFDQuery;
//  QuerNatOpProdGrupo := GeraFDQuery;
//
//  QuerGrupos.SQL.Text := 'SELECT pg.* from produto_grupo pg
//                         ' where pg.codnf_natureza_operacao = 0 ';
//  QuerGrupos.Open;
//
//  QuerNatOpProdGrupo.SQL.Text :=  'SELECT NFN.CODNF_NATUREZA_OPERACAO, NFN.CODPRODUTO_GRUPO  ' +
//                                  ' FROM NF_NATUREZA_OPERACAO_PRODGRUPO NFN ';
//
//  QuerNaturezas.SQL.Text := 'SELECT nfnat.codigo from nf_natureza_operacao nfnat ' +
//                            ' WHERE nfnat.codigo not in ' +
//                            ' (SELECT nfn.codnf_natureza_operacao
//                            ' from NF_NATUREZA_OPERACAO_PRODGRUPO nfn where nfn.codproduto_grupo = :GRUPO)  ' +
//                            ' and nfnat.tipo_nf like ''NFe%'' ';
//
//  QuerGrupos.First;
//  while not QuerGrupos.eof do
//  begin
//    QuerNaturezas.Close;
//    QuerNaturezas.ParamByName('GRUPO').AsString := QuerGrupos.FieldByName('CODIGO').AsString;
//    QuerNaturezas.Open;
//    QuerNaturezas.First;
//    while not QuerNaturezas.eof do
//    begin
//
//    end;
//    QuerGrupos.Next;
//  end;
//
//  ANaturezasDeOperacao.Data := Produto_Grupo_Vinculado.Data;

end;

procedure TFrmNF_Natureza_Operacao.Produto_Grupo_VinculadoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrmNF_Natureza_Operacao.Produto_Grupo_VinculadoBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrmNF_Natureza_Operacao.radConsumidor_FinalClick(Sender: TObject);
var
  ATabelaMemTable : TFDMemTable;
begin
  inherited;
  if radConsumidor_Final.ItemIndex = 0 then
  begin
    ATabelaMemTable := TFDMemTable.Create(Self);
    ATabelaMemTable.CloneCursor(Produto_Grupo_Vinculado as TFDDataSet,False,False);
    ATabelaMemTable.Insert;
    ATabelaMemTable.CopyRecord(Produto_Grupo_Vinculado);
    ATabelaMemTable.Post;
    if not Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO;CODNF_NATUREZA_OPERACAO;CONSUMIDOR_FINAL',
                                           varArrayOf([Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString,
                                                       Produto_Grupo_Vinculado.FieldByName('CODNF_NATUREZA_OPERACAO').AsString,
                                                       'N'])) then
    begin

      try
        Produto_Grupo_Vinculado.Insert;
        DSCopiarCamposIguais(ATabelaMemTable, Produto_Grupo_Vinculado, ['DESCRICAO', 'CONSUMIDOR_FINAL']);
        Produto_Grupo_Vinculado.FieldByName('CONSUMIDOR_FINAL').AsString := 'N';
        Produto_Grupo_Vinculado.Post;
      finally

      end;
      Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO;CODNF_NATUREZA_OPERACAO;CONSUMIDOR_FINAL',
                                           varArrayOf([Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString,
                                                       Produto_Grupo_Vinculado.FieldByName('CODNF_NATUREZA_OPERACAO').AsString,
                                                       'N']));
    end;
    ATabelaMemTable.Free;
  end
  else
  if radConsumidor_Final.ItemIndex = 1 then
  begin
    Produto_Grupo_Vinculado.Locate('CODPRODUTO_GRUPO;CODNF_NATUREZA_OPERACAO;CONSUMIDOR_FINAL',
                                           varArrayOf([Produto_Grupo_Vinculado.FieldByName('CODPRODUTO_GRUPO').AsString,
                                                       Produto_Grupo_Vinculado.FieldByName('CODNF_NATUREZA_OPERACAO').AsString,
                                                       'S']));
  end;
  Produto_Grupo_Vinculado.Refresh;
end;

initialization
  RegisterClass(TFrmNF_Natureza_Operacao);

end.
