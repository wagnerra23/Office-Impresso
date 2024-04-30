unit CadProdutoFrameEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxCheckBox, cxCurrencyEdit, cxTextEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxButtonEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit,
  Vcl.ExtCtrls, cxMaskEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, uControleWR,
  uButtonFlat, dxLayoutLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCustomListBox, cxCheckListBox, FrFrameMestre, UCBase, System.ImageList, Vcl.ImgList,
  uWRFrameEventos, uWRFormataCamposDataSet, cxGridChartView, cxGridDBChartView,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameCadProduto_Estoque = class(TFrmFrameMestre)
    edtDisponivel: TcxCurrencyEdit;
    EdtPendente: TcxCurrencyEdit;
    edtEstoque_Min: TcxDBCurrencyEdit;
    edtEstoque_Max: TcxDBCurrencyEdit;
    edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit;
    edtLocalÎLocal: TcxDBButtonEdit;
    PnlTabHistoricoMovimento: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    edtMovAno: TcxSpinEdit;
    cbxMovMes: TcxComboBox;
    btnMovMostrarMovimento: TcxButton;
    cxLabel14: TcxLabel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    liedtMovAno: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    licbxMes: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2SeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutControl2SeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem13: TdxLayoutSeparatorItem;
    dxLayoutItem60: TdxLayoutItem;
    PnlTabFornecedores: TPanel;
    dxLayoutControl9: TdxLayoutControl;
    GridProdutoFornecedor: TcxGrid;
    GridProdutoFornecedorView2: TcxGridDBTableView;
    GridProdutoFornecedorView2ATIVO: TcxGridDBColumn;
    GridProdutoFornecedorView2PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn;
    GridProdutoFornecedorView2PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn;
    GridProdutoFornecedorView2RAZAOSOCIAL: TcxGridDBColumn;
    GridProdutoFornecedorView2DT_ULTIMA_COMPRA: TcxGridDBColumn;
    GridProdutoFornecedorView2VALOR: TcxGridDBColumn;
    GridProdutoFornecedorView2CODFABRICA: TcxGridDBColumn;
    GridProdutoFornecedorView2FANTASIA: TcxGridDBColumn;
    GridProdutoFornecedorView2OBSERVACAO: TcxGridDBColumn;
    GridProdutoFornecedorLevel1: TcxGridLevel;
    edtFornecedorValor: TcxCurrencyEdit;
    btnAdicionarFornecedor: TcxButton;
    btnRemoverFornecedor: TcxButton;
    lblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL: TcxLabel;
    edtFornecedorDataUltimaCompra: TcxDateEdit;
    edtObservacao: TcxTextEdit;
    edtFornecedoresAdicionarÎPessoas: TcxButtonEdit;
    edtFornecedorÎPessoas: TcxDBButtonEdit;
    lblFornecedorÎPessoasÎRAZAOSOCIAL: TcxLabel;
    cxLabel20: TcxLabel;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9Item1: TdxLayoutItem;
    dxLayoutControl9Group1: TdxLayoutGroup;
    liedtFornecedorValor: TdxLayoutItem;
    libtnAdicionarFornecedor: TdxLayoutItem;
    libtnRemoverFornecedor: TdxLayoutItem;
    lilblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    liedtFornecedorDataUltimaCompra: TdxLayoutItem;
    liedtObservacao: TdxLayoutItem;
    liedtFornecedoresAdicionarÎPessoas: TdxLayoutItem;
    liedtFornecedorÎPessoas: TdxLayoutItem;
    lilblFornecedorÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    GrupoFornecedorPrincipal: TdxLayoutGroup;
    GrupoOutrosFornecedores: TdxLayoutGroup;
    dxLayoutItem69: TdxLayoutItem;
    dxLayoutSeparatorItem19: TdxLayoutSeparatorItem;
    PnlTabHistoricoCompras: TPanel;
    dxLayoutControl11: TdxLayoutControl;
    GridNF_Entrada_Produto: TcxGrid;
    GridNF_Entrada_ProdutoView2: TcxGridDBTableView;
    GridNF_Entrada_ProdutoView2CODIGO: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2DATA: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2NUN_NF: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2FORNECEDOR: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2QUANT: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2CUSTO_FABR: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2VALOR: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2CODFABRICA: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2TIPO: TcxGridDBColumn;
    GridNF_Entrada_ProdutoView2Situacao: TcxGridDBColumn;
    GridNF_Entrada_ProdutoLevel1: TcxGridLevel;
    btnFiltrarTiposNota: TcxButton;
    chkMostrarComprasEmAberto: TcxCheckBox;
    dxLayoutControl11Group_Root: TdxLayoutGroup;
    dxLayoutControl11Item1: TdxLayoutItem;
    dxLayoutItem113: TdxLayoutItem;
    dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup;
    lichkMostrarComprasEmAberto: TdxLayoutItem;
    edtReservado: TcxCurrencyEdit;
    btnVerficar: TcxButton;
    chkTem_Lote: TcxDBCheckBox;
    cxGridVenda: TcxGrid;
    cxGridVendaView2: TcxGridDBTableView;
    cxGridVendaView2DT_EMISSAO: TcxGridDBColumn;
    cxGridVendaView2CODVENDA: TcxGridDBColumn;
    cxGridVendaView2QUANT: TcxGridDBColumn;
    cxGridVendaView2RAZAOSOCIAL: TcxGridDBColumn;
    cxGridVendaView2DT_FATURAMENTO: TcxGridDBColumn;
    cxGridVendaLevel1: TcxGridLevel;
    lblGeralEstoque: TcxLabel;
    GridSemDataset: TcxGrid;
    GridSemDatasetView2: TcxGridDBTableView;
    GridSemDatasetView2CODIGO: TcxGridDBColumn;
    GridSemDatasetView2CODPRODUTO: TcxGridDBColumn;
    GridSemDatasetView2REFERENCIA: TcxGridDBColumn;
    GridSemDatasetView2PESSOA_CLIENTE_SEQUENCIA: TcxGridDBColumn;
    GridSemDatasetView2PESSOA_CLIENTE_TIPO: TcxGridDBColumn;
    GridSemDatasetView2PESSOA_CLIENTE_CODIGO: TcxGridDBColumn;
    GridSemDatasetView2QUANTIDADE: TcxGridDBColumn;
    GridSemDatasetView2DESCRICAO: TcxGridDBColumn;
    GridSemDatasetView2DT_ALTERACAO: TcxGridDBColumn;
    GridSemDatasetView2RAZAOSOCIAL: TcxGridDBColumn;
    GridSemDatasetLevel1: TcxGridLevel;
    lblControleEstoqueLote: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    chkPode_Retornar_Ao_Estoque: TcxDBCheckBox;
    chkMostrarVendasAberto: TcxCheckBox;
    chkMostrarVendasFinalizadas: TcxCheckBox;
    lblHistoricoVendaMostrandoEmpresa: TcxLabel;
    edtAplicacao: TcxDBTextEdit;
    GrupoEstoque1: TdxLayoutGroup;
    GrupoEstoqueP: TdxLayoutGroup;
    LiGeral: TdxLayoutGroup;
    lilblGeralEstoque: TdxLayoutItem;
    dxLayoutSeparatorItem12: TdxLayoutSeparatorItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    GrupoDisponibilidade: TdxLayoutGroup;
    liedtEstoqueDisponivel: TdxLayoutItem;
    liedtReservado: TdxLayoutItem;
    liEdtPreVenda: TdxLayoutItem;
    libtnVerficar: TdxLayoutItem;
    GrupoQuantidadePadroes: TdxLayoutGroup;
    liedtEstoque_Max: TdxLayoutItem;
    liedtEstoque_Min: TdxLayoutItem;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutAutoCreatedGroup29: TdxLayoutAutoCreatedGroup;
    liedtLocalÎLocal: TdxLayoutItem;
    liedtLocalÎLocalÎDESCRICAO: TdxLayoutItem;
    liedtAplicacao: TdxLayoutItem;
    LiHistoricoMovimento: TdxLayoutItem;
    LiFornecedores: TdxLayoutItem;
    LiGrupoCompras: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutSeparatorItem18: TdxLayoutSeparatorItem;
    LiCompras: TdxLayoutItem;
    LiLotes: TdxLayoutGroup;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutSeparatorItem14: TdxLayoutSeparatorItem;
    lichkTem_Lote: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    GrupoVendas: TdxLayoutGroup;
    dxLayoutItem109: TdxLayoutItem;
    dxLayoutSeparatorItem20: TdxLayoutSeparatorItem;
    LiVendas: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    lichkMostrarVendasFinalizadas: TdxLayoutItem;
    lichkMostrarVendasAberto: TdxLayoutItem;
    lilblHistoricoVendaMostrandoEmpresa: TdxLayoutItem;
    liedtMovSaldoInicial: TdxLayoutItem;
    edtMovSaldoInicial: TcxCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    GridMovimento_Produto: TcxGrid;
    GridMovimento_ProdutoView: TcxGridDBTableView;
    GridMovimento_ProdutoViewDATA: TcxGridDBColumn;
    GridMovimento_ProdutoViewTIPO_MOVIMENTO: TcxGridDBColumn;
    GridMovimento_ProdutoViewQUANT: TcxGridDBColumn;
    GridMovimento_ProdutoViewVALOR: TcxGridDBColumn;
    GridMovimento_ProdutoViewOBSERVACAO: TcxGridDBColumn;
    GridMovimento_ProdutoViewESTOQUE_LOCAL: TcxGridDBColumn;
    GridMovimento_ProdutoViewUSUARIO: TcxGridDBColumn;
    GridMovimento_ProdutoViewFANTASIA: TcxGridDBColumn;
    GridMovimento_ProdutoViewFORM: TcxGridDBColumn;
    GridMovimento_ProdutoViewCODVENDA: TcxGridDBColumn;
    GridMovimento_ProdutoViewCODNF_ENTRADA: TcxGridDBColumn;
    GridMovimento_ProdutoViewCODEMPRESA: TcxGridDBColumn;
    GridMovimento_ProdutoLevel1: TcxGridLevel;
    dxLayoutItem3: TdxLayoutItem;
    EdtMovSaldoFinal: TcxCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    LibtnGeral: TdxLayoutItem;
    btnGeral: TWRButtonFlat;
    dxLayoutItem5: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    dxLayoutItem6: TdxLayoutItem;
    WRButtonFlat2: TWRButtonFlat;
    dxLayoutItem7: TdxLayoutItem;
    WRButtonFlat3: TWRButtonFlat;
    dxLayoutItem8: TdxLayoutItem;
    WRButtonFlat4: TWRButtonFlat;
    dxLayoutItem9: TdxLayoutItem;
    WRButtonFlat5: TWRButtonFlat;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    Divisao_Estoque: TFDQuery;
    DSDivisao_Estoque: TDataSource;
    PopupMenu2: TPopupMenu;
    VisualizarPedido1: TMenuItem;
    VisualizarNotadeEntrada1: TMenuItem;
    RemoverdivergnciasdeEstoque1: TMenuItem;
    RemoverdivergnciasdeEstoque21: TMenuItem;
    Movimento_Produto: TFDQuery;
    DSMovimento_Produto: TDataSource;
    Produto_Lote: TFDQuery;
    DSProduto_Estoque_Lote: TDataSource;
    HistoricoDeCompras: TFDQuery;
    DSHistoricoDeCompras: TDataSource;
    HistoricoVendas: TFDQuery;
    DSRelacaoVendasProdutosPendentes: TDataSource;
    PnlAjusteEstoque: TPanel;
    edtDtAjusteEstoque: TcxDateEdit;
    lblAPartirDoDia: TcxLabel;
    btnAjusteEstoque: TcxButton;
    Estoque_Produto: TFDQuery;
    DSEstoque_Produto: TDataSource;
    PnlSelecaoTiposNotaCompra: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    CkListTiposNotaCompra: TcxCheckListBox;
    cxButton6: TcxButton;
    cxButton9: TcxButton;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutItem110: TdxLayoutItem;
    dxLayoutItem111: TdxLayoutItem;
    dxLayoutItem112: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    Produto_Fornecedor: TFDQuery;
    DSProdutoFornecedor: TDataSource;
    HistoricoDeComprasSituacao: TStringField;
    liedtProduto_Estoque_Local: TdxLayoutItem;
    edtProduto_Estoque_Local: TcxDBLookupComboBox;
    cxGridMovimentoLevel1: TcxGridLevel;
    cxGridMovimento: TcxGrid;
    licxGridMovimento: TdxLayoutItem;
    liDashBoard: TdxLayoutGroup;
    cxGridMovimentoDBChartView1: TcxGridDBChartView;
    cxGridMovimentoDBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGridMovimentoDBChartView1Series1: TcxGridDBChartSeries;
    cxGridMovimentoDBChartView1DataGroup2: TcxGridDBChartDataGroup;
    cxGridMovimentoDBChartView1DataGroup3: TcxGridDBChartDataGroup;
    cxGridMovimentoDBChartView1DataGroup4: TcxGridDBChartDataGroup;
    GridMovimento_ProdutoViewQUANT_ANTIGA: TcxGridDBColumn;
    GridMovimento_ProdutoViewQUANT_ATUAL: TcxGridDBColumn;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    GridMovimento_ProdutoTIPO_USO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    stBalanco: TcxStyle;
    stNormal: TcxStyle;
    liedtDias_Minimo_Compra: TdxLayoutItem;
    edtDias_Minimo_Compra: TcxDBCurrencyEdit;
    liedtDias_Maximo_Compra: TdxLayoutItem;
    edtDias_Maximo_Compra: TcxDBCurrencyEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    procedure btnVerficarClick(Sender: TObject);
    procedure chkMostrarVendasFinalizadasPropertiesEditValueChanged(
      Sender: TObject);
    procedure chkMostrarVendasAbertoPropertiesEditValueChanged(
      Sender: TObject);
    procedure chkTem_LoteClick(Sender: TObject);
    procedure CkMostrarComprasEmAbertoPropertiesChange(Sender: TObject);
    procedure btnFiltrarTiposNotaClick(Sender: TObject);
    procedure btnAdicionarFornecedorClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure GridMovimento_ProdutoViewDblClick(Sender: TObject);
    procedure btnMovMostrarMovimentoClick(Sender: TObject);
    procedure CbMovMesPropertiesEditValueChanged(Sender: TObject);
    procedure EdtMovAnoPropertiesEditValueChanged(Sender: TObject);
    procedure Divisao_EstoqueBeforeOpen(DataSet: TDataSet);
    procedure VisualizarPedido1Click(Sender: TObject);
    procedure VisualizarNotadeEntrada1Click(Sender: TObject);
    procedure RemoverdivergnciasdeEstoque1Click(Sender: TObject);
    procedure RemoverdivergnciasdeEstoque21Click(Sender: TObject);
    procedure Movimento_ProdutoBeforeOpen(DataSet: TDataSet);
    procedure Movimento_ProdutoAfterOpen(DataSet: TDataSet);
    procedure HistoricoVendasBeforeOpen(DataSet: TDataSet);
    procedure HistoricoDeComprasBeforeOpen(DataSet: TDataSet);
    procedure HistoricoDeComprasCalcFields(DataSet: TDataSet);
    procedure btnAjusteEstoqueClick(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure btnGeralClick(Sender: TObject);
    procedure WRButtonFlat1Click(Sender: TObject);
    procedure WRButtonFlat2Click(Sender: TObject);
    procedure WRButtonFlat3Click(Sender: TObject);
    procedure WRButtonFlat4Click(Sender: TObject);
    procedure WRButtonFlat5Click(Sender: TObject);
    procedure Estoque_ProdutoAfterOpen(DataSet: TDataSet);
    procedure Estoque_ProdutoBeforeOpen(DataSet: TDataSet);
    procedure Estoque_ProdutoBeforePost(DataSet: TDataSet);
    procedure Produto_FornecedorBeforePost(DataSet: TDataSet);
    procedure Produto_FornecedorBeforeEdit(DataSet: TDataSet);
    procedure cxGrid4DBTableView2CODFABRICAPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure HistoricoDeComprasAfterOpen(DataSet: TDataSet);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure GridMovimento_ProdutoViewCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FrameEnter(Sender: TObject);
  private
    FDataFiltroProdutoMovimento: TDate;
    FComponentRights_ConsuVenda_LbUCLiberarVerTodasVendas: Boolean;
    procedure SQLMovimento_ProdutoAtualizaFiltro;
    procedure ValidarAlteracaoFornecedorCodFabrica(const ACodFabrica: Variant);
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, Classes.WR, wrConversao, wrFormataCampo, Rotinas, DateUtils, StrUtils,
  Principal, CadProduto_Movimento, Math, UnitFuncoes, NF_Entrada, wrForms, Base, Tag.APP;

procedure TFrameCadProduto_Estoque.ValidarAlteracaoFornecedorCodFabrica(const ACodFabrica: Variant);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select first 1 PF.CODPRODUTO, P.DESCRICAO ' +
                      'from PRODUTO_FORNECEDOR PF ' +
                      'left join PRODUTO P on (P.CODIGO = PF.CODPRODUTO) ' +
                      'where (PF.PESSOA_RESPONSAVEL_CODIGO = :CodFornecedor) ' +
                      '      and (PF.CODFABRICA = :CodFabrica) ' +
                      '      and (PF.CODPRODUTO <> :CodProduto)';
    QuerX.ParamByName('CodFornecedor').AsString := Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    QuerX.ParamByName('CodFabrica').Value       := ACodFabrica;
    QuerX.ParamByName('CodProduto').AsString    := Produto_Fornecedor.FieldByName('CODPRODUTO').AsString;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      ShowMessageWR('Este Código de Fábrica já está sendo utilizado no produto "' +
        QuerX.FieldByName('CODPRODUTO').AsString + ' - ' + QuerX.FieldByName('DESCRICAO').AsString + '".' + sLineBreak +
        'Selecione outro Código de Fábrica ou pressione ESC para cancelar a alteração.');
      Abort;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrameCadProduto_Estoque.SQLMovimento_ProdutoAtualizaFiltro;
begin
  if not ds.DataSet.Active then
    Exit;

  try
    FDataFiltroProdutoMovimento := EncodeDate(Max(EdtMovAno.Value, 1900), Max(cbxMovMes.ItemIndex, 0) + 1, 1);
  except
    GeraExcecao('Data inválida no filtro de movimento do produto.');
  end;
  CloseOpenBookmark(Movimento_Produto);
end;

procedure TFrameCadProduto_Estoque.VisualizarNotadeEntrada1Click(Sender: TObject);
begin
  if Movimento_Produto.FieldByName('CODNF_ENTRADA').AsString <> '' then
    CadastroModalChave(TFrmNF_Entrada, Movimento_Produto.FieldByName('CODNF_ENTRADA').AsString);
end;

procedure TFrameCadProduto_Estoque.VisualizarPedido1Click(Sender: TObject);
begin
  if Movimento_Produto.FieldByName('CODVENDA').AsString <> '' then
    ProcuraPedido(Movimento_Produto.FieldByName('CODVENDA').AsString);
end;

procedure TFrameCadProduto_Estoque.WRButtonFlat1Click(Sender: TObject);
begin
  LiHistoricoMovimento.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.WRButtonFlat2Click(Sender: TObject);
begin
  LiFornecedores.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.WRButtonFlat3Click(Sender: TObject);
begin
  LiGrupoCompras.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.WRButtonFlat4Click(Sender: TObject);
begin
  LiLotes.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.WRButtonFlat5Click(Sender: TObject);
begin
  GrupoVendas.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
  InicializaSQLWhere(Movimento_Produto);
  InicializaSQLWhere(HistoricoDeCompras);
  FComponentRights_ConsuVenda_LbUCLiberarVerTodasVendas := FrmPrincipal.UCControls1.GetComponentRight('ConsuVenda', 'LbUCLiberarVerTodasVendas').Enabled;
  GrupoEstoqueP.TabbedOptions.HideTabs:= True;

  edtMovAno.Value         := YearOf(Now);     // SQL Change - Só se tiver focado
  cbxMovMes.ItemIndex     := MonthOf(Now) - 1;// SQL Change - Só se tiver focado
  PreencheLookupProduto_Estoque_Local(edtProduto_Estoque_Local.Properties);
  //Componentes Formatados
  FormatarEdit(DecimalQuantidade, EdtMovSaldoInicial);
  FormatarEdit(DecimalQuantidade, EdtMovSaldoFinal);
  FormatarEdit(DecimalQuantidade, edtDisponivel);
  FormatarEdit(DecimalQuantidade, EdtPendente);
  //TODO: Bloquear esse campo junto com a aba inteira de fornecedor
  //Quem não pode ver custo não pode saber onde compra a mercadoria
//    cxGrid4DBTableView2VALOR.

  {
  //Sempre 3
  AFrame.GridComposicaoDBTableView2COMP.Caption     := ControleUnidades.CaptionComprimento.Descricao;
  AFrame.GridComposicaoDBTableView2LARG.Caption     := ControleUnidades.CaptionLargura.Descricao;
  AFrame.GridComposicaoDBTableView2ESPESSURA.Caption:= ControleUnidades.CaptionEspessura.Descricao;
  AFrame.GridComposicaoDBTableView2.BeginUpdate;
  try
    AjustaVisibleColuna(GridComposicaoDBTableView2TotalCusto);
    AjustaVisibleColuna(GridComposicaoDBTableView2MARGEM);
    AjustaVisibleColuna(GridComposicaoDBTableView2CustoUnit);
  finally
    AFrame.GridComposicaoDBTableView2.EndUpdate;
  end;

  end;
  AFrame.LayoutControlComposicao.BeginUpdate;
  try
    GrupoComposicaoExtra.Visible          := AFrmProduto.GetPodeVerCustos and (Cadastro.FieldByName('CUSTO_COMPOSICAO_EXTRA').AsFloat <> 0);
    LiLbComposicaoTotalCusto.Visible      := AFrmProduto.GetPodeVerCustos;
    LiLbComposicaoMargem.Visible          := AFrmProduto.GetPodeVerCustos;
  finally
    AFrame.LayoutControlComposicao.EndUpdate(False);
  end;
  }
//    FormatarEdit(DecimalQuantidade, AFrame.EdtLocalEstoqueQuant);
//    AFrame.CbLocalMovimentoEstoque.Hint       := ProdutoLocalMovimentoEstoqueToHintCompleto;
//    AFrame.CbLocalMovimentoEstoque.ShowHint   := True;
//    AFrame.BtnFornecedorRemover.Enabled := UCControls1.GetComponentRight(AFrame.BtnFornecedorAdd).Enabled;

  { Open
  GrupoEstoqueP.TabbedOptions.HideTabs := True;

  ConfigGrid.Atualizar(Self.ClassName);
  ConfigGrid.CarregaConfigGrid(cxGrid3DBTableView1, 'GridMovimentoProduto');
  ConfigGrid.CarregaConfigGrid(cxGrid7DBTableView2, 'GridHistoricoCompras');
  ConfigGrid.CarregaConfigGrid(cxGrid4DBTableView2, 'GrigFornecedores');

  PreencheLookupProdutoLocalMovimentoEstoque(CbLocalMovimentoEstoque.Properties);

  close
  ConfigGrid.GravaConfigGrid(cxGrid3DBTableView1, 'GridMovimentoProduto');
  ConfigGrid.GravaConfigGrid(cxGrid7DBTableView2, 'GridHistoricoCompras');
  ConfigGrid.GravaConfigGrid(cxGrid4DBTableView2, 'GrigFornecedores');}
  {
  FormatarEdit(DecimalQuantidade, AFrame.EdtCompQuant);
  FormatarEdit(DecimalQuantidade, AFrame.EdtCompQuantPeca);
  FormatarEdit(DecimalQuantidade, AFrame.EdtCompLargura);
  FormatarEdit(DecimalQuantidade, AFrame.EdtCompEspessura);
  FormatarEdit(DecimalQuantidade, AFrame.EdtCompComprimento);
  FormatarEdit(DECIMAL_2PF, AFrame.EdtCompMargem);
  FormatarEdit(DecimalFinanceiro, AFrame.EdtCompCustoVenda);
  FormatarEdit(DecimalFinanceiro, AFrame.EdtCompTotal);
  FormatarEdit(DecimalFinanceiro, AFrame.EdtCompValor);

  //Sempre 3
  AFrame.LiEdtCompComprimento.CaptionOptions.Text   := ControleUnidades.CaptionComprimento.Abreviacao;
  AFrame.LiEdtCompLargura.CaptionOptions.Text       := ControleUnidades.CaptionLargura.Abreviacao;
  AFrame.LiEdtCompEspessura.CaptionOptions.Text     := ControleUnidades.CaptionEspessura.Abreviacao;
  }

//  VerificaSePrecisaAbrir(QuerEmpresa);
  Movimento_Produto.Transaction := TFDQuery(DS.DataSet).Transaction;
  Divisao_Estoque.Transaction   := TFDQuery(DS.DataSet).Transaction;
  HistoricoDeCompras.Transaction:= TFDQuery(DS.DataSet).Transaction;
  Produto_Lote.Transaction      := TFDQuery(DS.DataSet).Transaction;
  HistoricoVendas.Transaction   := TFDQuery(DS.DataSet).Transaction;
  Produto_Fornecedor.Transaction:= TFDQuery(DS.DataSet).Transaction;

  VerificaSePrecisaAbrir(Movimento_Produto);
  VerificaSePrecisaAbrir(Divisao_Estoque);
  VerificaSePrecisaAbrir(Produto_Fornecedor);
  VerificaSePrecisaAbrir(HistoricoDeCompras);
  VerificaSePrecisaAbrir(Produto_Lote);
//  VerificaSePrecisaAbrir(AFrame.HistoricoVendas);
end;

procedure TFrameCadProduto_Estoque.btnAjusteEstoqueClick(Sender: TObject);
begin
//  TProdutoArrumarEstoqueProducao.ArrumarEstoque(ds.DataSet.FieldByName('CODIGO').AsString, EdtDtAjusteEstoque.Date);
  FechaPanelForm(PnlAjusteEstoque);
end;

procedure TFrameCadProduto_Estoque.btnAdicionarFornecedorClick(Sender: TObject);
var
  APessoa : TPessoaRetorno;
begin
  inherited;
  if not (ds.DataSet.State in dsEditModes) then
    ds.DataSet.Edit;
  if LblFornecedoresAdicionarÎPessoasÎRAZAOSOCIAL.Caption = '' then
    Exit;

  APessoa := FControleWR.FindComponente(EdtFornecedoresAdicionarÎPessoas).Pessoa;
  if Produto_Fornecedor.Locate('PESSOA_RESPONSAVEL_CODIGO', APessoa.Codigo, []) then
  begin
    if ShowMessageWR('Fornecedor já cadastrado.' + sLineBreak +
                     'Deseja atualizar o Valor e a Data de Compra?', MB_ICONQUESTION) <> mrYes then
      Exit;

    Produto_Fornecedor.Edit;
    Produto_Fornecedor.FieldByName('CUSTO_FABR').AsFloat            := EdtFornecedorValor.Value;
    if not VarIsNull(EdtFornecedorDataUltimaCompra.EditValue) then
      Produto_Fornecedor.FieldByName('DT_ULTIMA_COMPRA').AsDateTime := EdtFornecedorDataUltimaCompra.Date;
    Produto_Fornecedor.Post;
  end else
  begin
    Produto_Fornecedor.Insert;
    Produto_Fornecedor.FieldByName('CODIGO').AsInteger    := Trunc(GetProximoCodigoGen('CR_PRODUTO_FORNECEDOR'));
    Produto_Fornecedor.FieldByName('CODPRODUTO').AsString := ds.DataSet.FieldByName('CODIGO').AsString;
    Produto_Fornecedor.FieldByName('ATIVO').AsString      := 'S';
    Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := APessoa.Codigo;
    Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := APessoa.Tipo.Codigo;
    Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoa.Sequencia;
    Produto_Fornecedor.FieldByName('CUSTO_FABR').AsFloat                     := EdtFornecedorValor.Value;
    if not VarIsNull(EdtFornecedorDataUltimaCompra.EditValue) then
      Produto_Fornecedor.FieldByName('DT_ULTIMA_COMPRA').AsDateTime := EdtFornecedorDataUltimaCompra.Date;
    Produto_Fornecedor.FieldByName('OBSERVACAO').AsString                   := EdtObservacao.Text;
    Produto_Fornecedor.Post;
  end;
  Produto_Fornecedor.Close;
  Produto_Fornecedor.Open;

  FControleWR.FindComponente(EdtFornecedoresAdicionarÎPessoas).ValorComponentePessoa := nil;
  EdtFornecedorValor.Value := 0;
  EdtFornecedorDataUltimaCompra.Clear;
end;

procedure TFrameCadProduto_Estoque.btnRemoverFornecedorClick(Sender: TObject);
begin
  AlteraDataSet(DS.DataSet);
  if not Produto_Fornecedor.IsEmpty then
    Produto_Fornecedor.Delete;
end;

procedure TFrameCadProduto_Estoque.btnGeralClick(Sender: TObject);
begin
  LiGeral.MakeVisible;
end;

procedure TFrameCadProduto_Estoque.btnFiltrarTiposNotaClick(Sender: TObject);
const
  LNOTA_TIPOS: TArray<string> = ['NOTA SIMPLES', 'NOTA FISCAL', 'SOLICITAÇÃO DE COMPRA', 'SAÍDA DE MERCADORIA',
                                 'ENTRADA DE MERCADORIA', 'TRANSFERÊNCIA', 'CONHECIMENTO DE TRANSPORTE',
                                 'NOTA DE SERVIÇO DE TRANSPORTE', 'COTAÇÃO DE COMPRA'];
var
  AItem: TcxCheckListBoxItem;
  I: Integer;
  ATiposSelecionados: TArray<string>;
  ASalvar: string;
begin
  inherited;
  CkListTiposNotaCompra.Clear;
  ATiposSelecionados := TConfig.ReadString('PRODUTO_TIPOS_HISTORICO_COMPRA').Split([';']);
  for I := Low(LNOTA_TIPOS) to High(LNOTA_TIPOS) do
  begin
    AItem := CkListTiposNotaCompra.Items.Add;
    AItem.Text := LNOTA_TIPOS[i];
    if IndexStr(LNOTA_TIPOS[i], ATiposSelecionados) >= 0 then
      AItem.State := cbsChecked
    else
      AItem.State := cbsUnchecked;
  end;
  ASalvar := '';
  if ShowPanelForm(PnlSelecaoTiposNotaCompra, bsSizeable) = mrOk then
  begin
    for I := 0 to CkListTiposNotaCompra.Items.Count - 1 do
    begin
      AItem := CkListTiposNotaCompra.Items[i];
      if AItem.State = cbsChecked then
      begin
        if ASalvar <> '' then
          ASalvar := ASalvar + ';';
        ASalvar := ASalvar + AItem.Text;
      end;
    end;
    TConfig.SaveString('PRODUTO_TIPOS_HISTORICO_COMPRA', ASalvar);

    // Veirifcar a função abaixo
    CloseOpenBookmark(HistoricoDeCompras);
//    CloseOpenGridView(HistoricoDeCompras, cxGrid7DBTableView2);
  end;
end;

procedure TFrameCadProduto_Estoque.btnVerficarClick(Sender: TObject);
begin
  //TODO: Colocar isso no panel show message para não se preocupar em atualizar quando trocar de registro
  // Função pessada em banco com muitas venda
  try
    Estoque_Produto.Open;
    EdtPendente.Value := TProdutoSQLEstoque.GetEstoqueReservado(TFDQuery(ds.DataSet).Transaction, ds.DataSet.FieldByName('CODIGO').AsString);
    if Procura('CLASSIFICACAO', 'PRODUTO_TIPO', ds.DataSet.FieldByName('CODPRODUTO_TIPO').AsString ) <> Produto_TipoClassificacaoToStr(ptcServico) then  // Aqui tem que ser pelo modelo do produto
      edtDisponivel.Value := Estoque_Produto.FieldByName('ESTOQUE').AsFloat - edtPendente.Value
    else
      edtDisponivel.Value := 0;
  finally
    Estoque_Produto.Close;
  end;
end;

procedure TFrameCadProduto_Estoque.btnMovMostrarMovimentoClick(Sender: TObject);
begin
  FDataFiltroProdutoMovimento := 0;
  CloseOpenBookmark(Movimento_Produto);
end;

procedure TFrameCadProduto_Estoque.CbMovMesPropertiesEditValueChanged(Sender: TObject);
begin
  if cbxMovMes.Focused then
    SQLMovimento_ProdutoAtualizaFiltro;
end;

procedure TFrameCadProduto_Estoque.chkMostrarVendasAbertoPropertiesEditValueChanged(Sender: TObject);
begin
  if chkMostrarVendasAberto.Focused then
    CloseOpenBookmark(HistoricoVendas);
end;

procedure TFrameCadProduto_Estoque.chkMostrarVendasFinalizadasPropertiesEditValueChanged(Sender: TObject);
begin
  if chkMostrarVendasFinalizadas.Focused then
    CloseOpenBookmark(HistoricoVendas);
end;

procedure TFrameCadProduto_Estoque.chkTem_LoteClick(Sender: TObject);
begin
  Movimento_Produto.Close;
  Movimento_Produto.SQL[9] := '';
  Movimento_Produto.Open;
  if not Movimento_Produto.IsEmpty then
  begin
    ds.DataSet.FieldByName('LOTE').AsString := 'N';
    ShowMessageWR('Esse Produto já movimentou estoque e não pode ser transformado em lote.');
  end;
end;

procedure TFrameCadProduto_Estoque.CkMostrarComprasEmAbertoPropertiesChange(Sender: TObject);
begin
  if chkMostrarComprasEmAberto.Focused then
    CloseOpenBookmark(HistoricoDeCompras);
end;

procedure TFrameCadProduto_Estoque.GridMovimento_ProdutoViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;

  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
  //    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

begin
  inherited;
  ARecord := AViewInfo.GridRecord;
  if ARecord.Values[GridMovimento_ProdutoViewFORM.Index] = 'FrmBalanco' then
    StyleAssignToCanvas(stBalanco)
  else
    StyleAssignToCanvas(stNormal);
end;

procedure TFrameCadProduto_Estoque.GridMovimento_ProdutoViewDblClick(Sender: TObject);
begin
  if not ComunicacaoVisual then
  begin
    if Movimento_Produto.FieldByName('CODVENDA').AsString <> '' then
      ProcuraPedido(Movimento_Produto.FieldByName('CODVENDA').AsString)
    else if Movimento_Produto.FieldByName('CODNF_ENTRADA').AsString <> '' then
      ProcuraNF_Entrada(Movimento_Produto.FieldByName('CODNF_ENTRADA').AsString);
  end;
end;

procedure TFrameCadProduto_Estoque.cxGrid4DBTableView2CODFABRICAPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    ValidarAlteracaoFornecedorCodFabrica(DisplayValue);
  except
    Error := True;
  end;
end;

procedure TFrameCadProduto_Estoque.Divisao_EstoqueBeforeOpen(DataSet: TDataSet);
begin
  Divisao_Estoque.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
end;

procedure TFrameCadProduto_Estoque.EdtMovAnoPropertiesEditValueChanged(Sender: TObject);
begin
  if EdtMovAno.Focused then
    SQLMovimento_ProdutoAtualizaFiltro;
end;

procedure TFrameCadProduto_Estoque.Estoque_ProdutoAfterOpen(DataSet: TDataSet);
begin
  //Estoque_Produto
  TFloatField(Estoque_Produto.FieldByName('ESTOQUE')).DisplayFormat := DecimalQuantidade;
end;

procedure TFrameCadProduto_Estoque.Estoque_ProdutoBeforeOpen(DataSet: TDataSet);
begin
  Estoque_Produto.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
end;

procedure TFrameCadProduto_Estoque.Estoque_ProdutoBeforePost(DataSet: TDataSet);
begin
  AtualizaDtAlteracao(Estoque_Produto);
end;

procedure TFrameCadProduto_Estoque.FrameEnter(Sender: TObject);
begin
  inherited;
  LiGrupoCompras.Visible  := AWR_APP[TagAPP_Compra].Ativo;
  WRButtonFlat3.Visible   := AWR_APP[TagAPP_Compra].Ativo;
  liedtProduto_Estoque_Local.Visible  := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;
end;

procedure TFrameCadProduto_Estoque.HistoricoDeComprasAfterOpen(DataSet: TDataSet);
begin
  FormatarCampos(HistoricoDeCompras, 'HistoricoDeCompras');
end;

procedure TFrameCadProduto_Estoque.HistoricoDeComprasBeforeOpen(
  DataSet: TDataSet);
var
  ATiposSelecionados: TArray<string>;
  I: Integer;
  ATipos: string;
begin
  inherited;
  LimpaSQLWhere(HistoricoDeCompras);
  ATiposSelecionados := TConfig.ReadString('PRODUTO_TIPOS_HISTORICO_COMPRA').Split([';']);

  ATipos := '';
  for I := Low(ATiposSelecionados) to High(ATiposSelecionados) do
  begin
    if ATipos <> '' then
      ATipos := ATipos + ', ';
    ATipos := ATipos + QuotedStr(ATiposSelecionados[i]);
  end;
  if ATipos <> '' then
    HistoricoDeCompras.SQL.Add('and (N.TIPO in (' + ATipos + '))');

  if not chkMostrarComprasEmAberto.Checked then
    HistoricoDeCompras.SQL.Add('and ((N.GERA_FINANCEIRO = ''S'') or (N.ATUALIZA_ESTOQUE = ''S''))');

  HistoricoDeCompras.SQL.Add('group by 1, 2, 3, 4, 5, 6, 7, 8, 9');
  HistoricoDeCompras.SQL.Add('order by 2 desc');
end;

procedure TFrameCadProduto_Estoque.HistoricoDeComprasCalcFields(DataSet: TDataSet);
begin
  if (HistoricoDeCompras.FieldByName('GERA_FINANCEIRO').AsString <> 'S') and (HistoricoDeCompras.FieldByName('ATUALIZA_ESTOQUE').AsString <> 'S') then
    HistoricoDeCompras.FieldByName('Situacao').AsString := 'Em Aberto'
  else
    HistoricoDeCompras.FieldByName('Situacao').AsString := 'Concluído';
end;

procedure TFrameCadProduto_Estoque.HistoricoVendasBeforeOpen(DataSet: TDataSet);
begin
  if MultiEmpresa then
  begin
    if TConfig.ReadBoolean('PRODUTOS_ESTOQUE_RESERVADO_TODAS_EMPRESAS') then
      lblHistoricoVendaMostrandoEmpresa.Caption := 'Mostrando vendas de todas as empresas'
    else
      lblHistoricoVendaMostrandoEmpresa.Caption := 'Mostrando vendas apenas da empresa "' + Empresa.FieldByName('RazaoSocial').AsString + '"';
  end;
  lilblHistoricoVendaMostrandoEmpresa.Visible := MultiEmpresa;

//  HistoricoVendas.SQL.Text := TProdutoSQLEstoque.GetSQLHistoricoVendas(ds.DataSet.FieldByName('CODIGO').AsString,
//    CkHistoricoVendaMostrarFinalizado.Checked, CkHistoricoVendaMostrarEmAberto.Checked);
end;

procedure TFrameCadProduto_Estoque.Movimento_ProdutoAfterOpen(DataSet: TDataSet);
var
  QuerX: TFDQuery;
  ADtInicio, ADtFim: TDateTime;
begin
  inherited;
//  Revisar
//  FormatarCampos(TForm(ds.DataSet.Owner), HistoricoDeCompras, 'HistoricoDeCompras');

  if FDataFiltroProdutoMovimento > 0 then
  begin
    ADtInicio := StartOfTheMonth(FDataFiltroProdutoMovimento);
    ADtFim    := EndOfTheMonth(FDataFiltroProdutoMovimento);
  end else
  begin
    ADtInicio := 0;
    ADtFim    := Now;
  end;

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select sum(iif(TIPO_MOVIMENTO = ''E'', QUANT, -QUANT)) ' +
                      'from PRODUTO_MOVIMENTO ' +
                      'where (CODPRODUTO = :CodProduto) ' +
                      '      and (CODEMPRESA = :CodEmpresa) ' +
                      '      and (DATA <= :Data)';
    QuerX.ParamByName('CodProduto').AsString := ds.DataSet.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodEmpresa').AsString := Empresa.FieldByName('CODIGO').AsString;

    //Saldo do início do período
    QuerX.ParamByName('Data').AsDateTime := ADtInicio;
    QuerX.Open;
    EdtMovSaldoInicial.Value := QuerX.Fields[0].AsFloat;
    QuerX.Close;

    //Saldo no final do período
    QuerX.ParamByName('Data').AsDateTime := ADtFim;
    QuerX.Open;
    EdtMovSaldoFinal.Value := QuerX.Fields[0].AsFloat;
  finally
    QuerX.Free;
  end;
end;

procedure TFrameCadProduto_Estoque.Movimento_ProdutoBeforeOpen(DataSet: TDataSet);
begin
  //Montagem do SQL
  LimpaSQLWhere(Movimento_Produto);
  if FDataFiltroProdutoMovimento > 0 then
    Movimento_Produto.SQL.Add('and (PM.DATA between :DtInicio and :DtFim)');
  Movimento_Produto.SQL.Add('order by PM.DATA desc');

  //Preenchimento de Parâmetros
  if FDataFiltroProdutoMovimento > 0 then
  begin
    Movimento_Produto.ParamByName('DtInicio').AsDateTime := StartOfTheMonth(FDataFiltroProdutoMovimento);
    Movimento_Produto.ParamByName('DtFim').AsDateTime    := EndOfTheMonth(FDataFiltroProdutoMovimento);
  end;
  Movimento_Produto.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
  Movimento_Produto.ParamByName('PERMISSAO_VER_VENDA').AsString := IfThen(FComponentRights_ConsuVenda_LbUCLiberarVerTodasVendas, 'S');
  Movimento_Produto.ParamByName('CODIGO_FUNCIONARIO_USUARIO').AsString := Usuario.CodigoFuncionario;
end;

procedure TFrameCadProduto_Estoque.PopupMenu2Popup(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited;
  VisualizarPedido1.Enabled := (Movimento_Produto.FieldByName('CODVENDA').AsString <> '');
  VisualizarNotadeEntrada1.Enabled := (Movimento_Produto.FieldByName('CODNF_ENTRADA').AsString <> '');

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select first 1 1 ' +
                      'from PRODUTO_MOVIMENTO PM ' +
                      'where (PM.AJUSTE_SALDO = ''S'') ' +
                      '      and (PM.CODPRODUTO = :CodProduto) ' +
                      '      and (PM.CODEMPRESA = :CodEmpresa)';
    QuerX.ParamByName('CodProduto').AsString := ds.DataSet.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('CodEmpresa').AsString := Empresa.FieldByName('CODIGO').AsString;
    QuerX.Open;
    RemoverdivergnciasdeEstoque1.Visible := not QuerX.IsEmpty;
  finally
    QuerX.Free;
  end;
end;

procedure TFrameCadProduto_Estoque.Produto_FornecedorBeforeEdit(DataSet: TDataSet);
begin
  AlteraDataSet(DS.DataSet);
end;

procedure TFrameCadProduto_Estoque.Produto_FornecedorBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidarAlteracaoFornecedorCodFabrica(Produto_Fornecedor.FieldByName('CODFABRICA').AsString);
end;

procedure TFrameCadProduto_Estoque.RemoverdivergnciasdeEstoque1Click(Sender: TObject);
begin
  if TFrmProduto_Movimento.RemoverDivergenciaSaldoEstoque(nil, Ds.DataSet.FieldByName('CODIGO').AsString, Empresa.FieldByName('CODIGO').AsString) then
  begin
    DS.DataSet.Close;
    DS.DataSet.Open;
  end;
end;

procedure TFrameCadProduto_Estoque.RemoverdivergnciasdeEstoque21Click(Sender: TObject);
begin
  ShowPanelForm(PnlAjusteEstoque, bsSingle);
end;

end.
