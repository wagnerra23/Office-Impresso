unit ImpVendas_Periodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, IBX.IBCustomDataSet, QRExport,
  IBX.IBQuery, StdCtrls, ExtCtrls, Buttons, Gradient, QRCtrls, Rotinas, QuickRpt, ImpMestre, cxButtonEdit, cxCalendar,
  frxClass, frxDBSet, UCHist_WRGeral, UnitFuncoes, DataModuleImpressao,  ComCtrls, Menus, cxButtons,
  cxDateProfileButton, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore,
  cxDateUtils, dxSkinsCore, cxTextEdit, cxMaskEdit, cxDropDownEdit, QRPDFFilt, QRWebFilt, Generics.Collections,
  cxScrollBox, uControleWR, Classes.WR, wrConversao, DataModule, WREventos, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.Generics.Collections, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TImpriVendas_Periodo = class(TImpriMestre)
    Gradient3: TGradient;
    LbDtInicio: TLabel;
    LbDtFim: TLabel;
    Label2: TLabel;
    BtnVisualizar: TBitBtn;
    BtnFechar: TBitBtn;
    RadioTipoSelecao: TRadioGroup;
    ComboEmpresa: TComboBox;
    Produtos_Agrupados: TIBQuery;
    Produtos_AgrupadosCODPRODUTO: TIBStringField;
    Produtos_AgrupadosUNIDADE: TIBStringField;
    Produtos_AgrupadosSOMA_QUANT: TFloatField;
    QRBand_Produto: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    DBCusto: TQRDBText;
    QRBand_produto_Sumario: TQRBand;
    QRLabel6: TQRLabel;
    Produtos: TIBQuery;
    IBStringField1: TIBStringField;
    FloatField6: TFloatField;
    QRLabel_TQuant: TQRLabel;
    QRLabel_TCusto: TQRLabel;
    QRLabel_TLucro: TQRLabel;
    QRBand_Produto_Titulo: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    LbCusto: TQRLabel;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    EdtGrupoProdutoÎProduto_Grupo: TcxButtonEdit;
    QuickRep2: TQuickRep;
    QRBand6: TQRBand;
    QRSysData5: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRImage3: TQRImage;
    QRBand7: TQRBand;
    QRLabel29: TQRLabel;
    QRSysData6: TQRSysData;
    QRBand10: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand11: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand12: TQRBand;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    ProdutosDT_FATURAMENTO: TDateTimeField;
    ProdutosQUANT: TFloatField;
    ProdutosVALOR: TFloatField;
    ProdutosPERC_ACRESC: TFloatField;
    ProdutosPERC_DESC: TFloatField;
    QRLabel44: TQRLabel;
    QRDBText15: TQRDBText;
    ProdutosTotal_Valor: TFloatField;
    QRLabel45: TQRLabel;
    QRDBText16: TQRDBText;
    ProdutosTotal_Custo: TFloatField;
    QRDBText13: TQRDBText;
    ProdutosTotal_Juros_Desc: TFloatField;
    QRLabel32: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel46: TQRLabel;
    ProdutosTotal: TFloatField;
    QRLabel47: TQRLabel;
    LbCodFuncionario: TLabel;
    EdtFuncionarioÎPessoas: TcxButtonEdit;
    LblFuncionarioÎPessoasÎRAZAOSOCIAL: TLabel;
    Produtos_AgrupadosCODPRODUTO_GRUPO: TIBStringField;
    LblMarcaÎProduto_MarcaÎDESCRICAO: TLabel;
    LbCodMarca: TLabel;
    LbCodFornecedor: TLabel;
    LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel;
    EdtMarcaÎProduto_Marca: TcxButtonEdit;
    EdtFornecedorÎPessoas: TcxButtonEdit;
    RadioFiltroData: TRadioGroup;
    QRLabel13: TQRLabel;
    QRLabel_TValor: TQRLabel;
    cartao: TIBQuery;
    avista: TIBQuery;
    crediario: TIBQuery;
    cheque: TIBQuery;
    Label1: TLabel;
    cartaoTOTAL_VALOR: TFloatField;
    avistaTOTAL_VALOR: TFloatField;
    crediarioTOTAL_VALOR: TFloatField;
    chequeTOTAL_VALOR: TFloatField;
    Produtos_AgrupadosTotal_Lucro: TCurrencyField;
    Produtos_AgrupadosSOMA_VALOR: TFloatField;
    Produtos_AgrupadosACRESC: TFloatField;
    Produtos_AgrupadosDESCONTO: TFloatField;
    QRDBText4: TQRDBText;
    ComboTipoProduto: TComboBox;
    LbProdutoTipo: TLabel;
    Produtoslucro_unit: TFloatField;
    LbCodCliente: TLabel;
    EdtClienteÎPessoas: TcxButtonEdit;
    LblClienteÎPessoasÎRAZAOSOCIAL: TLabel;
    LbDesc: TQRLabel;
    DBDesc: TQRDBText;
    QRLabel_TDesc: TQRLabel;
    ComboOrderBy: TComboBox;
    LbOrderBy: TLabel;
    Produtos_AgrupadosSOMA_CUSTO_LOJA: TFloatField;
    LbCodRepresentante: TLabel;
    LblRepresentanteÎPessoasÎRAZAOSOCIAL: TLabel;
    EdtRepresentanteÎPessoas: TcxButtonEdit;
    ReportProdutoPorVenda: TQuickRep;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage2: TQRImage;
    QRLabel20: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand5: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand8: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand9: TQRBand;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    ProdutoPorVenda: TIBQuery;
    QRLabel48: TQRLabel;
    ProdutoPorVendaCODPRODUTO: TIBStringField;
    ProdutoPorVendaQUANTIDADE: TFloatField;
    ProdutoPorVendaVALOR: TFloatField;
    ProdutoPorVendaDT_FATURAMENTO: TDateTimeField;
    ProdutoPorVendaCODVENDA: TIBStringField;
    CkQuant: TCheckBox;
    CkCusto: TCheckBox;
    CkValor: TCheckBox;
    CkDesconto: TCheckBox;
    CkLucro: TCheckBox;
    LbLucroNegativoSummary: TQRLabel;
    LbAsterisco: TQRLabel;
    CbTipoVenda: TComboBox;
    LbVendaTipo: TLabel;
    CkCalcularCubagem: TCheckBox;
    LbUnidade: TQRLabel;
    LbCubagem: TQRLabel;
    Produtos_AgrupadosPADRAO_COMP: TFloatField;
    Produtos_AgrupadosPADRAO_LARG: TFloatField;
    Produtos_AgrupadosPADRAO_ESPESSURA: TFloatField;
    Produtos_AgrupadosCubagem: TFloatField;
    DBUnid: TQRDBText;
    DBCubagem: TQRDBText;
    Produtos_AgrupadosCOMP: TFloatField;
    Produtos_AgrupadosLARG: TFloatField;
    Produtos_AgrupadosESPESSURA: TFloatField;
    Produtos_AgrupadosQTDADEPECA: TFloatField;
    QRLabel_TCub: TQRLabel;
    frxDBDataset1: TfrxDBDataset;
    VendasPorCliente: TIBQuery;
    VendasPorCliente_Produtos: TIBQuery;
    DSVendasPorCliente: TDataSource;
    frxDBDataset3: TfrxDBDataset;
    UCHistWRGeral1: TUCHistWRGeral;
    Produtos_AgrupadosPRODUTO: TIBStringField;
    ProdutosPRODUTO: TIBStringField;
    ProdutoPorVendaPRODUTO: TIBStringField;
    Vendas: TIBQuery;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    Produtos_AgrupadosIMPOSTOS: TFloatField;
    EdtCidadeÎCidades: TcxButtonEdit;
    LblCidadeÎCidadesÎDESCRICAO: TLabel;
    LbCodCidade: TLabel;
    LbCodClienteGrupo: TLabel;
    LblGrupoClienteÎPessoas_GrupoÎDESCRICAO: TLabel;
    EdtGrupoClienteÎPessoas_Grupo: TcxButtonEdit;
    LbCodUsuario: TLabel;
    LblUsuario: TLabel;
    EdtUsuario: TcxButtonEdit;
    VendasComParcelas_Parcelas: TIBQuery;
    DSVendasComParcelas_Parcelas: TDataSource;
    DSVendas: TDataSource;
    frxDBDataset7: TfrxDBDataset;
    cxDateProfileButton1: TcxDateProfileButton;
    LbGrupo: TLabel;
    LblGrupoProdutoÎProduto_GrupoÎDESCRICAO: TLabel;
    LbCodProduto: TLabel;
    EdtProdutoÎProduto: TcxButtonEdit;
    LblProdutoÎProdutoÎDESCRICAO: TLabel;
    CbModeloTipoVenda: TComboBox;
    Label3: TLabel;
    ProdutosCUSTO_VENDA_TOTAL: TFloatField;
    WREventosCadastro1: TWREventosCadastro;
    ComboTipoAgrupamento: TcxLookupComboBox;
    procedure EdtProdutoÎProdutoExit(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure Produtos_AgrupadosCalcFields(DataSet: TDataSet);
    procedure ProdutosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRBand_ProdutoBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure CkCalcularCubagemClick(Sender: TObject);
    procedure CkDescontoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WREventosCadastro1ImpressaoDefineEnableControles(Sender: TObject);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
    procedure ComboTipoAgrupamentoPropertiesEditValueChanged(Sender: TObject);
    procedure Produtos_AgrupadosBeforeOpen(DataSet: TDataSet);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure ProdutoPorVendaBeforeOpen(DataSet: TDataSet);
    procedure VendasPorClienteBeforeOpen(DataSet: TDataSet);
    procedure VendasPorCliente_ProdutosBeforeOpen(DataSet: TDataSet);
    procedure VendasBeforeOpen(DataSet: TDataSet);
    procedure VendasComParcelas_ParcelasBeforeOpen(DataSet: TDataSet);
    procedure chequeBeforeOpen(DataSet: TDataSet);
    procedure crediarioBeforeOpen(DataSet: TDataSet);
    procedure avistaBeforeOpen(DataSet: TDataSet);
    procedure cartaoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FHouveLucroNegativo : Boolean;
    FControleWR : TControleWR;
    FListaProdutoTipo : TList<TCodNome>;
    procedure ImprimirSinteticoDeProdutos;
    procedure ImprimirProdutosPorDia;
    procedure ImprimirProdutosPorVenda;
    procedure ImprimirVendasPorCliente;
    procedure ImprimirVendas;
    function GetCodEmpresa: Integer;
  public
    { Public declarations }
  end;

var
  ImpriVendas_Periodo: TImpriVendas_Periodo;

implementation

{$R *.dfm}

uses
  Principal, DateUtils, frxVariables, StrUtils, ConProduto_Grupo, wrFuncoes, wrFuncoes_Office, Base, Tag.Report;

procedure TImpriVendas_Periodo.BtnVisualizarClick(Sender: TObject);
var
  AOldCaption : String;
begin
  inherited;
  try
    BtnVisualizar.Enabled := False;
    AOldCaption := BtnVisualizar.Caption;
    BtnVisualizar.Caption := 'Aguarde...';
    if RelatorioListaImpressoesPadroes('FR0006') = ComboTipoAgrupamento.Text then
      ImprimirSinteticoDeProdutos
    else
    if RelatorioListaImpressoesPadroes('FR0065') = ComboTipoAgrupamento.Text then
      ImprimirProdutosPorVenda
    else
    if RelatorioListaImpressoesPadroes('FR0066') = ComboTipoAgrupamento.Text then
      ImprimirVendasPorCliente
    else
    if RelatorioListaImpressoesPadroes('FR0011') = ComboTipoAgrupamento.Text then
      ImprimirVendas
    else
    if RelatorioListaImpressoesPadroes('FR0007') = ComboTipoAgrupamento.Text then
      ImprimirSinteticoDeProdutos
    else
    if RelatorioListaImpressoesPadroes('FR0009') = ComboTipoAgrupamento.Text then
      ImprimirSinteticoDeProdutos
    else
    if RelatorioListaImpressoesPadroes('FR0010') = ComboTipoAgrupamento.Text then
      ImprimirSinteticoDeProdutos
    else
    if RelatorioListaImpressoesPadroes('FR0008') = ComboTipoAgrupamento.Text then
      ImprimirSinteticoDeProdutos
    else
//      DMImpressaoImprimirPorNome(Self, ComboTipoAgrupamento.Text);
      DMImpressao.ImprimirTag(Self, ComboTipoAgrupamento.EditValue);
//    case IndexStr(ComboTipoAgrupamento.Text, ['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009',
//      'FR0010', 'FR0008']) of
//      0 : ImprimirSinteticoDeProdutos;
//      1 : ImprimirProdutosPorVenda;
//      2 : ImprimirVendasPorCliente;
//      3 : ImprimirVendas;
//    else
//      TDMImpressao.ImprimirPorNome(Self, ComboTipoAgrupamento.Text);
//    end;

  finally
    BtnVisualizar.Enabled := True;
    BtnVisualizar.Caption := AOldCaption;
  end;
//  ShowMessage(Produtos.Sql[0]+#13+Produtos.Sql[1]+#13+Produtos.Sql[2]+#13+Produtos.Sql[3]+#13+Produtos.Sql[4]+#13+Produtos.Sql[5]);
//  QRBand_produto_Sumario.Enabled:=((ComboBox1.ItemIndex=0) or (ComboBox1.ItemIndex=2));
//  QRBand_Produto.Enabled:=((ComboBox1.ItemIndex=0) or (ComboBox1.ItemIndex=2));
//  QRBand_Produto_Titulo.Enabled:=((ComboBox1.ItemIndex=0) or (ComboBox1.ItemIndex=2));
end;

procedure TImpriVendas_Periodo.cartaoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.chequeBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.avistaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.BtnFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TImpriVendas_Periodo.CkCalcularCubagemClick(Sender: TObject);
begin
  inherited;
  if CkCalcularCubagem.Checked then
  begin
    CkLucro.Checked    := False;
    CkDesconto.Checked := False;
    CkCusto.Checked    := False;
    CkCalcularCubagem.Checked := True; //Necessário pois o onChange dos itens acima desmarca este CheckBox
  end;
end;

procedure TImpriVendas_Periodo.CkDescontoClick(Sender: TObject);
begin
  inherited;
  if CkLucro.Checked or CkDesconto.Checked or CkCusto.Checked then
    CkCalcularCubagem.Checked := False;
end;

procedure TImpriVendas_Periodo.EdtProdutoÎProdutoExit(Sender: TObject);
begin
  inherited;
  if (EdtProdutoÎProduto.Text <> '') and (LblProdutoÎProdutoÎDESCRICAO.Caption = '') Then
    ShowMessage('Produto Não Cadastrado');
end;

procedure TImpriVendas_Periodo.ComboTipoAgrupamentoPropertiesEditValueChanged(Sender: TObject);
var
  AIndex: integer;
  function LIsID(const AIDs: TArray<string>): Boolean;
  begin
    Result := False; //(IndexStr(GetIDImpressao(ComboTipoAgrupamento), AIDs) >= 0);
  end;
begin
  inherited;
  if LIsID(['FR0006', 'FR0065']) then
  begin
    ComboOrderBy.Clear;
    ComboOrderBy.Items.Add('Produto');
    ComboOrderBy.Items.Add('Código');
    ComboOrderBy.Items.Add('Qt. Vendida');
    ComboOrderBy.Items.Add('Valor Custo');
    ComboOrderBy.Items.Add('Valor Venda');
  end
  else if LIsID(['FR0066']) then
  begin
    ComboOrderBy.Clear;
    ComboOrderBy.Items.Add('Produto');
    ComboOrderBy.Items.Add('Código');
    ComboOrderBy.Items.Add('Qt. Vendida');
    ComboOrderBy.Items.Add('Valor Venda');
    ComboOrderBy.Items.Add('Data da Compra');
    ComboOrderBy.Items.Add('Cód. da Venda');
  end
  else if LIsID(['FR0007']) then
  begin
    ComboOrderBy.Clear;
    ComboOrderBy.Items.Add('Cliente');
    ComboOrderBy.Items.Add('Código');
    ComboOrderBy.Items.Add('Funcionario Responsável');
    ComboOrderBy.Items.Add('Qt. Vendida');
    ComboOrderBy.Items.Add('Valor Venda');
  end else
  begin
    ComboOrderBy.Clear;
    ComboOrderBy.Items.Add('Cliente');
    ComboOrderBy.Items.Add('Código');
    ComboOrderBy.Items.Add('Valor Venda');
  end;
  AIndex := ComboTipoAgrupamento.EditValue;
//  DMImpressao.Report.Variables.Clear;
  DMImpressao.CarregaFR3(AWR_Report[AIndex], False);
//  DMImpressaoDefineEnableControles(Self, ComboTipoAgrupamento.Text);  Precisa arrumar essa linha pois não está reconhecendo
  //***ini***
//  CheckDescItem.Enabled                  := (AItemIndex > 7) or (AItemIndex in [0,1,2]);
  EdtProdutoÎProduto.Enabled             := EdtProdutoÎProduto.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0009']);
  EdtGrupoProdutoÎProduto_Grupo.Enabled  := EdtGrupoProdutoÎProduto_Grupo.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066']);
  EdtFuncionarioÎPessoas.Enabled         := EdtFuncionarioÎPessoas.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009', 'FR0010', 'FR0008']);
  EdtRepresentanteÎPessoas.Enabled       := EdtRepresentanteÎPessoas.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009', 'FR0010', 'FR0008']);
  EdtMarcaÎProduto_Marca.Enabled         := EdtMarcaÎProduto_Marca.Enabled or LIsID(['FR0006', 'FR0066']);
  EdtFornecedorÎPessoas.Enabled          := EdtFornecedorÎPessoas.Enabled or LIsID(['FR0006', 'FR0066']);
  EdtClienteÎPessoas.Enabled             := EdtClienteÎPessoas.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009', 'FR0010', 'FR0008']);
  EdtGrupoClienteÎPessoas_Grupo.Enabled  := EdtGrupoClienteÎPessoas_Grupo.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009', 'FR0010', 'FR0008']);
  EdtUsuario.Enabled                     := EdtUsuario.Enabled or LIsID(['FR0006', 'FR0065', 'FR0066', 'FR0011', 'FR0007', 'FR0009', 'FR0010', 'FR0008']);
  EdtCidadeÎCidades.Enabled              := EdtCidadeÎCidades.Enabled or LIsID(['FR0006']);
  //***fim***
  ComboOrderBy.ItemIndex    := 0;
  CkCalcularCubagem.Enabled := LIsID(['FR0006']);
  if not LIsID(['FR0006']) then
    CkCalcularCubagem.Checked := False;

  ComboTipoAgrupamento.Hint := Procura('OBSERVACAO', 'ARQUIVOS_RELATORIO', ComboTipoAgrupamento.EditValue);
end;

procedure TImpriVendas_Periodo.crediarioBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FListaProdutoTipo.Free;
end;

procedure TImpriVendas_Periodo.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  AProdTipo : TCodNome;
  I : Integer;
  ARestricaoEmpresas: Boolean;
  AModelo: TVendaTipoModelo;
begin
  inherited;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  FControleWR.Add(EdtUsuario, 'Usuario');
  FControleWR.FindComponente(EdtUsuario).ClasseCadastro := GetClass('TConsuUsuario');
  FControleWR.FindComponente(EdtUsuario).AddSaida(LblUsuario, 'USUARIO');
  FListaProdutoTipo := TList<TCodNome>.Create; //Liberado no close do form;

  //Carrega o Combo de Empresas, validando a permissão do usuário para cada empresa
  with FrmPrincipal do
  begin
    EmpresaLista.First;
    ARestricaoEmpresas := False;
    Self.ComboEmpresa.Items.Clear;
    while not EmpresaLista.Eof do
    begin
      if UserControl.GetComponentRight(FrmPrincipal.Action_Rel_Vendas, CodigoUsuario, EmpresaLista.FieldByName('CODIGO').AsInteger) then
        Self.ComboEmpresa.Items.AddObject(EmpresaLista.FieldByName('RAZAOSOCIAL').AsString, TObject(EmpresaLista.FieldByName('CODIGO').AsInteger))
      else
        ARestricaoEmpresas := True;
      EmpresaLista.Next;
    end;
  end;

  //Caso o usuário não tenha restrição de empresas, adiciona a opção de ver todas as empresass
  if not ARestricaoEmpresas then
    Self.ComboEmpresa.Items.InsertObject(0, 'TODAS AS EMPRESAS', TObject(0));
  Self.ComboEmpresa.ItemIndex := 0;

  CbModeloTipoVenda.Items.BeginUpdate;
  try
    CbModeloTipoVenda.Items.Clear;
    CbModeloTipoVenda.Items.Add('TODOS');
    for AModelo := Low(TVendaTipoModelo) to High(TVendaTipoModelo) do
      CbModeloTipoVenda.Items.AddObject(VendaTipoModeloToDescricao(AModelo), TObject(AModelo));
    CbModeloTipoVenda.ItemIndex := 0;
  finally
    CbModeloTipoVenda.Items.EndUpdate;
  end;

  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO from PRODUTO_TIPO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AProdTipo.Codigo := QuerX.FieldByName('CODIGO').AsInteger;
      AProdTipo.Nome   := QuerX.FieldByName('DESCRICAO').AsString;
      FListaProdutoTipo.Add(AProdTipo);
      QuerX.Next;
    end;

    ComboTipoProduto.Items.Clear;
    ComboTipoProduto.Items.Add('TODOS');
    for I := 0 to FListaProdutoTipo.Count - 1 do
      ComboTipoProduto.Items.Add(FListaProdutoTipo[i].Nome);
    ComboTipoProduto.ItemIndex := 0;

    CbTipoVenda.Items.Clear;
    CbTipoVenda.Items.Add('TODOS');
    QuerX.SQL.Text := 'select DESCRICAO from VENDA_TIPO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      CbTipoVenda.Items.Add(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
    CbTipoVenda.ItemIndex := 0;

    DMImpressao.PreencheCombo(ComboTipoAgrupamento, Self);
  finally
    QuerX.Free;
  end;
  DataInicial.Date := StartOfTheMonth(Now);
  DataFinal.Date   := Date;
  // Casas decimais
  Produtos_AgrupadosSOMA_QUANT.DisplayFormat      := DecimalQuantidade;
  Produtos_AgrupadosSOMA_VALOR.DisplayFormat      := DecimalFinanceiro;
  Produtos_AgrupadosTOTAL_LUCRO.DisplayFormat     := DecimalFinanceiro;
  Produtos_AgrupadosACRESC.DisplayFormat          := DecimalFinanceiro;
  Produtos_AgrupadosDESCONTO.DisplayFormat        := DecimalFinanceiro;
  Produtos_AgrupadosSOMA_CUSTO_LOJA.DisplayFormat := DecimalFinanceiro;
  Produtos_AgrupadosCubagem.DisplayFormat         := DecimalQuantidade;
end;

procedure TImpriVendas_Periodo.FormShow(Sender: TObject);
begin
  inherited;
  if not VarIsNull(ComboTipoAgrupamento.EditValue) then
    ComboTipoAgrupamentoPropertiesEditValueChanged(ComboTipoAgrupamento);
end;

function TImpriVendas_Periodo.GetCodEmpresa: Integer;
begin
  if ComboEmpresa.ItemIndex >= 0 then
    Result := Integer(ComboEmpresa.Items.Objects[ComboEmpresa.ItemIndex])
  else
    Result := 0;
end;

procedure TImpriVendas_Periodo.ProdutoPorVendaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.ProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  Produtos.FieldByName('Total_Custo').AsFloat     :=Produtos.FieldByName('QUANT').AsFloat*Produtos.FieldByName('CUSTO_LOJA').AsFloat;
  Produtos.FieldByName('Total_Valor').AsFloat     :=Produtos.FieldByName('QUANT').AsFloat*Produtos.FieldByName('VALOR').AsFloat;
  Produtos.FieldByName('Total_Juros_Desc').AsFloat:=(Produtos.FieldByName('Total_Valor').AsFloat*(Produtos.FieldByName('Perc_Acresc').asFloat/100))-(Produtos.FieldByName('Total_Valor').AsFloat*(Produtos.FieldByName('Perc_Desc').asFloat/100));
  Produtos.FieldByName('Total').AsFloat           :=Produtos.FieldByName('Total_Valor').AsFloat+Produtos.FieldByName('Total_Juros_Desc').AsFloat;
  Produtos.FieldByName('Total_Lucro').AsFloat     :=Produtos.FieldByName('Total').AsFloat-Produtos.FieldByName('Total_Custo').AsFloat;
  Produtos.FieldByName('lucro_unit').AsFloat      :=Produtos.FieldByName('Total_Lucro').AsFloat/Produtos.FieldByName('QUANT').AsFloat;
end;

procedure TImpriVendas_Periodo.Produtos_AgrupadosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.Produtos_AgrupadosCalcFields(DataSet: TDataSet);
var
  ACubagem : Double;
  AUnidade : TUnidade;
begin
  inherited;
  //Produtos_Agrupados.FieldByName('Total_Lucro').AsFloat :=(Produtos_Agrupados.FieldByName('SOMA_VALOR').AsFloat+(Produtos_Agrupados.FieldByName('ACRESC').AsFloat-Produtos_Agrupados.FieldByName('DESCONTO').AsFloat))-Produtos_Agrupados.FieldByName('CUSTO_LOJA').AsFloat;
  Produtos_Agrupados.FieldByName('Total_Lucro').AsFloat :=
    (Produtos_Agrupados.FieldByName('SOMA_VALOR').AsFloat +
    (Produtos_Agrupados.FieldByName('ACRESC').AsFloat - Produtos_Agrupados.FieldByName('DESCONTO').AsFloat)) -
    Produtos_Agrupados.FieldByName('SOMA_CUSTO_LOJA').AsFloat;
  if CkCalcularCubagem.Checked then
  begin
    //Mudanças na configuração da unidade poderão causar divergências nos valores calculados neste relatório
    //Os produtos adicionados nas vendas foram calculados com base na unidade que estava em vigor no momento da venda.
    AUnidade := ProdutoControleUnidades.GetUnidade(Produtos_Agrupados.FieldByName('UNIDADE').AsString);
    ACubagem := Produtos_Agrupados.FieldByName('SOMA_QUANT').AsFloat;
    if not AUnidade.CalcComprimento then
      ACubagem := ACubagem * Produtos_Agrupados.FieldByName('PADRAO_COMP').AsFloat;
    if not AUnidade.CalcLargura then
      ACubagem := ACubagem * Produtos_Agrupados.FieldByName('PADRAO_LARG').AsFloat;
    if not AUnidade.CalcEspessura then
      ACubagem := ACubagem * Produtos_Agrupados.FieldByName('PADRAO_ESPESSURA').AsFloat;
    Produtos_Agrupados.FieldByName('Cubagem').AsFloat := ACubagem;
  end;
end;

procedure TImpriVendas_Periodo.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  LbLucroNegativoSummary.Enabled := FHouveLucroNegativo and Produtos_Agrupados.Eof;
end;

procedure TImpriVendas_Periodo.QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QuerX : TIBQuery;
begin
  inherited;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'SELECT * FROM EMPRESA WHERE (CODIGO = :Emp)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    QRLabel23.Caption := QuerX.FieldByName('FANTASIA').AsString;
    QRLabel27.Caption := QuerX.FieldByName('ENDERECO').AsString + ' - ' +
                         QuerX.FieldByName('BAIRRO').AsString + ' - ' +
                         QuerX.FieldByName('CIDADE').AsString + '/' +
                         QuerX.FieldByName('UF').AsString +
                         ' - CEP:' + QuerX.FieldByName('CEP').AsString;

    QRLabel28.Caption := 'CNPJ: '  + QuerX.FieldByName('CNPJCPF').AsString +
                         ' INSC: ' + QuerX.FieldByName('INSCIDENT').AsString +
                         ' Fone: ' + QuerX.FieldByName('FONE1').AsString +
                         '/Fax: '  + QuerX.FieldByName('FAX').AsString;
//    TDMImpressao.CarregaLogoEmpresa(QRImage3.Picture.Bitmap);
    {try
      if FileExists(GetDirSistema + 'Logo_Relatorio.jpg') then
        QRImage3.Picture.LoadFromFile(GetDirSistema + 'Logo_Relatorio.jpg');
    except end;}
  finally
    QuerX.Free;
  end;
end;

procedure TImpriVendas_Periodo.QRBand_ProdutoBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  LbAsterisco.Enabled := (Produtos_Agrupados.FieldByName('Total_Lucro').AsFloat < 0);
  FHouveLucroNegativo := FHouveLucroNegativo or LbAsterisco.Enabled;
end;

procedure TImpriVendas_Periodo.QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  FHouveLucroNegativo := False;
end;

procedure TImpriVendas_Periodo.VendasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.VendasComParcelas_ParcelasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.VendasPorClienteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.VendasPorCliente_ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TImpriVendas_Periodo.WREventosCadastro1ImpressaoDefineEnableControles(Sender: TObject);
  function LGetEnable(const AVar: string): Boolean;
  begin
    Result := (GetReportByNome(ComboTipoAgrupamento.Text) <> nil) or
              (DMImpressao.Report.Variables.IndexOf(AVar) >= 0);
  end;
begin
  inherited;
  DataInicial.Enabled       := LGetEnable('DtInicio');
  LbDtInicio.Enabled        := DataInicial.Enabled;
  DataFinal.Enabled         := LGetEnable('DtFim');
  LbDtFim.Enabled           := DataFinal.Enabled;
  RadioTipoSelecao.Enabled  := LGetEnable('TipoSelecao');
  CbTipoVenda.Enabled       := LGetEnable('TipoVenda');
  LbVendaTipo.Enabled       := CbTipoVenda.Enabled;
  RadioFiltroData.Enabled   := LGetEnable('TipoFiltroData');
  ComboOrderBy.Enabled      := LGetEnable('TipoOrdenacao');
  LbOrderBy.Enabled         := ComboOrderBy.Enabled;
  ComboTipoProduto.Enabled  := LGetEnable('TipoProduto');
  LbProdutoTipo.Enabled     := ComboTipoProduto.Enabled;
  EdtUsuario.Enabled        := LGetEnable('CodUsuario');
  LbCodUsuario.Enabled      := EdtUsuario.Enabled;
  LblUsuario.Enabled        := LbCodUsuario.Enabled;
  EdtCidadeÎCidades.Enabled := LGetEnable('CodCidade');
  LbCodCidade.Enabled       := EdtCidadeÎCidades.Enabled;
  CkQuant.Enabled           := LGetEnable('CkQuant');
  CkCusto.Enabled           := LGetEnable('CkCusto');
  CkValor.Enabled           := LGetEnable('CkValor');
  CkDesconto.Enabled        := LGetEnable('CkDesconto');
  CkLucro.Enabled           := LGetEnable('CkLucro');
  CkCalcularCubagem.Enabled := LGetEnable('CkCubagem');
  LbGrupo.Enabled           := LGetEnable('TipoConsultaProdutoGrupo'); //False = Código

  EdtProdutoÎProduto.Enabled       := LGetEnable('CodProduto');
  LbCodProduto.Enabled             := EdtProdutoÎProduto.Enabled;
  EdtGrupoProdutoÎProduto_Grupo.Enabled := LGetEnable('CodProdutoGrupo');
  LbGrupo.Enabled                  := EdtGrupoProdutoÎProduto_Grupo.Enabled;
  EdtFuncionarioÎPessoas.Enabled   := LGetEnable('CodFuncionario');
  LbCodFuncionario.Enabled         := EdtFuncionarioÎPessoas.Enabled;
  EdtRepresentanteÎPessoas.Enabled := LGetEnable('CodRepresentante');
  LbCodRepresentante.Enabled       := EdtRepresentanteÎPessoas.Enabled;
  EdtMarcaÎProduto_Marca.Enabled   := LGetEnable('CodMarca');
  LbCodMarca.Enabled               := EdtMarcaÎProduto_Marca.Enabled;
  EdtFornecedorÎPessoas.Enabled    := LGetEnable('CodFornecedor');
  LbCodFornecedor.Enabled          := EdtFornecedorÎPessoas.Enabled;
  EdtClienteÎPessoas.Enabled       := LGetEnable('CodCliente');
  LbCodCliente.Enabled             := EdtClienteÎPessoas.Enabled;
  EdtGrupoClienteÎPessoas_Grupo.Enabled := LGetEnable('CodClienteGrupo');
  LbCodClienteGrupo.Enabled := EdtGrupoClienteÎPessoas_Grupo.Enabled;
end;

procedure TImpriVendas_Periodo.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
  //Bug encontrado no FR. Se passar a data 28/02/2013 23:59:59, na variável fica armazenado 01/03/2013.
  AReport := WREventosCadastro1.Impressao.Report;

  AReport.Variables['DtInicio']         := DateOf(DataInicial.Date);
  AReport.Variables['DtFim']            := DateOf(DataFinal.Date);
  AReport.Variables['TipoSelecao']      := RadioTipoSelecao.ItemIndex;
  AReport.Variables['TipoVenda']        := Fr3String(CbTipoVenda.Items[CbTipoVenda.ItemIndex]);
  AReport.Variables['TipoFiltroData']   := RadioFiltroData.ItemIndex;
  AReport.Variables['TipoOrdenacao']    := ComboOrderBy.ItemIndex;
  AReport.Variables['TipoProduto']      := Fr3String(ComboTipoProduto.Items[ComboTipoProduto.ItemIndex]);
  AReport.Variables['CodProduto']       := Fr3String(EdtProdutoÎProduto.Text);
  AReport.Variables['Descricao']          := Fr3String(LblProdutoÎProdutoÎDESCRICAO.Caption);
  AReport.Variables['CodProdutoGrupo']  := Fr3String(EdtGrupoProdutoÎProduto_Grupo.Text);
  AReport.Variables['CodEmpresa']       := Fr3String(GetCodEmpresa.ToString);
  AReport.Variables['TipoConsultaProdutoGrupo'] := Boolean(LbGrupo.Tag); //False = Código
  AReport.Variables['ProdutoGrupo']     := Fr3String(LblGrupoProdutoÎProduto_GrupoÎDESCRICAO.Caption);
  AReport.Variables['CodFuncionario']   := Fr3String(FControleWR.FindComponente(EdtFuncionarioÎPessoas).Pessoa.Codigo);
  AReport.Variables['Funcionario']      := Fr3String(LblFuncionarioÎPessoasÎRAZAOSOCIAL.Caption);
  AReport.Variables['CodRepresentante'] := Fr3String(FControleWR.FindComponente(EdtRepresentanteÎPessoas).Pessoa.Codigo);
  AReport.Variables['Representante']    := Fr3String(LblRepresentanteÎPessoasÎRAZAOSOCIAL.Caption);
  AReport.Variables['CodMarca']         := Fr3String(EdtMarcaÎProduto_Marca.Text);
  AReport.Variables['Marca']            := Fr3String(LblMarcaÎProduto_MarcaÎDESCRICAO.Caption);
  AReport.Variables['CodFornecedor']    := Fr3String(FControleWR.FindComponente(EdtFornecedorÎPessoas).Pessoa.Codigo);
  AReport.Variables['Fornecedor']       := Fr3String(LblFornecedorÎPessoasÎRAZAOSOCIAL.Caption);
  AReport.Variables['CodCliente']       := Fr3String(FControleWR.FindComponente(EdtClienteÎPessoas).Pessoa.Codigo);
  AReport.Variables['Cliente']          := Fr3String(LblClienteÎPessoasÎRAZAOSOCIAL.Caption);
  AReport.Variables['CodClienteGrupo']  := Fr3String(EdtGrupoClienteÎPessoas_Grupo.Text);
  AReport.Variables['ClienteGrupo']     := Fr3String(LblGrupoClienteÎPessoas_GrupoÎDESCRICAO.Caption);
  AReport.Variables['CodUsuario']       := Fr3String(EdtUsuario.Text);
  AReport.Variables['Usuario']          := Fr3String(LblUsuario.Caption);
  AReport.Variables['CodCidade']        := Fr3String(EdtCidadeÎCidades.Text);
  AReport.Variables['CkQuant']          := CkQuant.Checked;
  AReport.Variables['CkCusto']          := CkCusto.Checked;
  AReport.Variables['CkValor']          := CkValor.Checked;
  AReport.Variables['CkDesconto']       := CkDesconto.Checked;
  AReport.Variables['CkLucro']          := CkLucro.Checked;
  AReport.Variables['CkCubagem']        := CkCalcularCubagem.Checked;
  AReport.Variables['EmpresaAtiva']     := EmpresaAtiva;
  if CbModeloTipoVenda.ItemIndex > 0 then
    AReport.Variables['ModeloTipoVenda'] := Fr3String(VendaTipoModeloToStr(TVendaTipoModelo(CbModeloTipoVenda.Items.Objects[CbModeloTipoVenda.ItemIndex])))
  else
    AReport.Variables['ModeloTipoVenda'] := Fr3String('TODOS');
end;

procedure TImpriVendas_Periodo.ImprimirProdutosPorDia;
const
  OrdemProduto : Array[0..4{5}] of String = ('DESCRICAO','CODPRODUTO','QUANT DESC',{'LUCRO_UNIT DESC',}'CUSTO_LOJA DESC','VALOR DESC');
var
  TotQuant, TotCusto, TotValor, TotLucro, TotJuros_Desc, TotTotal : Real;
begin
  //está desativado, foi removido do combo
  TotQuant := 0;
  TotValor := 0;
  TotLucro := 0;
  TotCusto := 0;
  TotJuros_Desc := 0;
  TotTotal := 0;
  Produtos.Close;
  Produtos.Sql[5] := 'WHERE ';
  if GetCodEmpresa > 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + '(V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ') AND ';
  if RadioFiltroData.ItemIndex = 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + '(V.DT_EMISSAO '
  else
    Produtos.Sql[5] := Produtos.Sql[5] + '(V.DT_FATURAMENTO ';
  Produtos.Sql[5] := Produtos.Sql[5] + 'between ' + QuotedStr(FormatDateTime('MM/DD/YYYY 00:00:00', DataInicial.Date)) + ' AND ' +
                                                    QuotedStr(FormatDateTime('MM/DD/YYYY 23:59:59', DataFinal.Date)) + ') ';
  Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.STATUS like ''ATIVO%'')';

  if (Trim(EdtProdutoÎProduto.Text) <> '') then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (VP.CODPRODUTO = ' + QuotedStr(Trim(EdtProdutoÎProduto.Text)) + ')';

  if RadioTipoSelecao.ItemIndex = 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.DT_FATURAMENTO is not null)'
  Else if RadioTipoSelecao.ItemIndex = 1 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' AND (V.DT_FATURAMENTO is null)'
  Else if RadioTipoSelecao.ItemIndex = 2 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (upper(V.STATUS) = ' + QuotedStr('INATIVO CANCELADO') + ')';

  if RadioTipoSelecao.ItemIndex < 2 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and not (upper(coalesce(V.STATUS, 0)) = ' + QuotedStr('INATIVO CANCELADO') + ')';

  if ComboTipoProduto.ItemIndex <> 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (P.CODPRODUTO_TIPO = ' + IntToStr(FListaProdutoTipo[ComboTipoProduto.ItemIndex - 1].Codigo) + ')';
  if GetCodEmpresa > 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ')';
//  if EdtFuncionarioÎPessoas.Text <> '' then
//    Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + ')';
  if CbTipoVenda.ItemIndex > 0 then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.VENDA_TIPO = ' + QuotedStr(CbTipoVenda.Items[CbTipoVenda.ItemIndex]) + ')';

//  if EdtRepresentanteÎPessoas.Text <> '' then
//    Produtos.Sql[5] := Produtos.Sql[5] + ' and (upper(V.PESSOA_REPRESENTANTE_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtRepresentanteÎPessoas)) + '))';

  if EdtGrupoClienteÎPessoas_Grupo.Text <> '' then
    Produtos.Sql[5] := Produtos.Sql[5] + 'and exists(select first 1 1 ' +
                                         '           from PESSOAS PES ' +
                                         '           where (PES.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
                                         '                 and (PES.CODPESSOAS_GRUPO = ' + EdtGrupoClienteÎPessoas_Grupo.Text + '))';

  if EdtGrupoProdutoÎProduto_Grupo.Text <> '' then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (P.CODPRODUTO_GRUPO like ' + QuotedStr(EdtGrupoProdutoÎProduto_Grupo.Text) + ')';
  //else
    //Produtos.Sql[5] := '';
//  if EdtClienteÎPessoas.Text <> '' then
//    Produtos_Agrupados.Sql[15] := Produtos_Agrupados.Sql[15] + ' AND (V.PESSOA_RESPONSAVEL_CODIGO LIKE ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas)) + ')';

  if EdtUsuario.Text <> '' then
    Produtos.Sql[5] := Produtos.Sql[5] + ' and (V.CODUSUARIO = ' + EdtUsuario.Text + ')';

  Produtos.Sql[5] := Produtos.Sql[5] + ' AND NOT (UPPER(COALESCE(V.STATUS, 0)) = ' + QuotedStr('INATIVO CANCELADO AGRUPADO') + ')';
  Produtos.Sql[7] := 'ORDER BY ' + OrdemProduto[ComboOrderBy.ItemIndex];

  Produtos.Open;
  Produtos.First;
  while not Produtos.Eof do
  begin
    TotQuant     := TotQuant + ProdutosQUANT.AsFloat;
    TotCusto     := TotCusto + ProdutosTotal_Custo.AsFloat;
    TotValor     := TotValor + ProdutosTotal_Valor.AsFloat;
    TotJuros_Desc:= TotJuros_Desc + ProdutosTotal_Juros_Desc.AsFloat;
    TotTotal     := TotTotal + ProdutosTotal.AsFloat;
    TotLucro     := TotLucro + (ProdutosTotal_Juros_Desc.AsFloat + ProdutosTotal_Valor.AsFloat) - ProdutosTotal_Custo.AsFloat;
    Produtos.Next;
  end;
  QRLabel31.Caption := FormatFloat('0.##', TotQuant);
  QRLabel33.Caption := FormatFloat('#,##0.00', TotCusto);
  QRLabel34.Caption := FormatFloat('#,##0.00', TotValor);
  QRLabel32.Caption := FormatFloat('#,##0.00', TotJuros_Desc);
  QRLabel46.Caption := FormatFloat('#,##0.00', TotTotal);
  QRLabel36.Caption := FormatFloat('#,##0.00', TotLucro);

{    QRLabel33.Enabled:=(ComboBox1.ItemIndex=4);
  QRLabel36.Enabled:=(ComboBox1.ItemIndex=4);
  QRLabel39.Enabled:=(ComboBox1.ItemIndex=4);
  QRLabel45.Enabled:=(ComboBox1.ItemIndex=4);
  QRDBText11.Enabled:=(ComboBox1.ItemIndex=4);
  QRDBText16.Enabled:=(ComboBox1.ItemIndex=4);   }
  QRLabel12.Caption := 'Início: ' + DataInicial.Text + ' Final: ' + DataFinal.Text;
  QRLabel47.Caption := ComboEmpresa.Text + ' - ' + RadioTipoSelecao.Items[RadioTipoSelecao.ItemIndex] + ' Por data: '+RadioFiltroData.Items[RadioFiltroData.ItemIndex] + ' '+LblClienteÎPessoasÎRAZAOSOCIAL.Caption;
  QuickRep2.PreviewModal;
end;

procedure TImpriVendas_Periodo.ImprimirProdutosPorVenda;
const
  OrdemProdutoPorVenda : Array[0..5] of String = ('VP.DESCRICAO', 'VP.CODPRODUTO', 'QUANTIDADE DESC', 'VALOR DESC', 'V.DT_FATURAMENTO', 'VP.CODVENDA');
var
  TotQuant, TotValor : Real;
  ASQL : TStringList;
begin
  //*********************************************************
  ShowMessageWR('Função desativada');
  Exit;
  //Este relatório foi desativado por ter SQLs sem permissão
  //*********************************************************

  TotQuant := 0;
  TotValor := 0;

  if RadioFiltroData.ItemIndex = 0 then
    ProdutoPorVenda.SQL[5] := 'where (V.DT_EMISSAO between :DtInicio and :DtFim) and (V.IS_VENDA = ''S'')'
  else
    ProdutoPorVenda.SQL[5] := 'where (V.DT_FATURAMENTO between :DtInicio and :DtFim) and (V.IS_VENDA = ''S'')';
  ASQL := TStringList.Create;
  try
    ASQL.Add('and (V.STATUS like ''ATIVO%'')');
    if (Trim(EdtProdutoÎProduto.Text) <> '') then
      ASQL.Add('and (VP.CODPRODUTO = ' + QuotedStr(Trim(EdtProdutoÎProduto.Text)) + ')');

    if Trim(EdtGrupoProdutoÎProduto_Grupo.Text) <> '' then
      ASQL.Add('and (upper(P.CODPRODUTO_GRUPO) = upper(' + QuotedStr(EdtGrupoProdutoÎProduto_Grupo.Text) + '))');

//    if Trim(EdtFuncionarioÎPessoas.Text) <> '' then
//      ASQL.Add('and (upper(V.PESSOA_FUNCIONARIO_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + '))');

//    if Trim(EdtRepresentanteÎPessoas.Text) <> '' then
//      ASQL.Add('and (upper(V.PESSOA_REPRESENTANTE_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtRepresentanteÎPessoas)) + '))');

    if Trim(EdtMarcaÎProduto_Marca.Text) <> '' then
      ASQL.Add('and (P.CODPRODUTO_MARCA = ' + EdtMarcaÎProduto_Marca.Text + ')');

//    if Trim(EdtFornecedorÎPessoas.Text) <> '' then
//      ASQL.Add('and (upper(P.PESSOA_FORNECEDOR_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas)) + '))');

//    if Trim(EdtClienteÎPessoas.Text) <> '' then
//      ASQL.Add('and (upper(V.PESSOA_RESPONSAVEL_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas)) + '))');

    if GetCodEmpresa > 0 then
      ASQL.Add('and (V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ')');

    if ComboTipoProduto.ItemIndex <> 0 then
      ASQL.Add('and (PT.DESCRICAO = ' + QuotedStr(Trim(ComboTipoProduto.Text)) + ')');

    if CbTipoVenda.ItemIndex > 0 then
      ASQL.Add('and (V.VENDA_TIPO = ' + QuotedStr(CbTipoVenda.Items[CbTipoVenda.ItemIndex]) + ')');

    if Trim(EdtUsuario.Text) <> '' then
      ASQL.Add('and (V.CODUSUARIO = ' + EdtUsuario.Text + ')');

    case RadioTipoSelecao.ItemIndex of
      0 : ASQL.Add('and (V.DT_FATURAMENTO is not null)');
      1 : ASQL.Add('AND (V.DT_FATURAMENTO is null)');
      2 : ASQL.Add('and (upper(V.STATUS) = ''INATIVO CANCELADO'')');
    end;

    if RadioTipoSelecao.ItemIndex < 2 then
      ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ''INATIVO CANCELADO'')');

    if EdtGrupoClienteÎPessoas_Grupo.Text <> '' then
      ASQL.Add('and exists(select first 1 1 ' +
               '           from PESSOAS PES ' +
               '           where (PES.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
               '                 and (PES.CODPESSOAS_GRUPO = ' + EdtGrupoClienteÎPessoas_Grupo.Text + '))');

    ProdutoPorVenda.Close;
    ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ''INATIVO CANCELADO AGRUPADO'')');
    ProdutoPorVenda.Sql[6] := ASQL.Text;
    ProdutoPorVenda.Sql[8] := 'order by ' + OrdemProdutoPorVenda[ComboOrderBy.ItemIndex];
  finally
    ASQL.Free;
  end;

  ProdutoPorVenda.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DataInicial.Date);
  ProdutoPorVenda.ParamByName('DtFim').AsDateTime    := EndOfTheDay(DataFinal.Date);
  ProdutoPorVenda.Open;
  while not ProdutoPorVenda.Eof do
  begin
    TotQuant := TotQuant + ProdutoPorVenda.FieldByName('QUANTIDADE').AsFloat;
    TotValor := TotValor + ProdutoPorVenda.FieldByName('Valor').AsFloat;
    ProdutoPorVenda.Next;
  end;
  QRLabel25.Caption := FormatFloat('0.##', TotQuant);
  QRLabel48.Caption := FormatFloat('R$ #,##0.00', TotValor);
  ProdutoPorVenda.First;
  ReportProdutoPorVenda.PreviewModal;
end;

procedure TImpriVendas_Periodo.ImprimirSinteticoDeProdutos;
const
  OrdemAgrupado : Array[0..4{5}] of String = ('DESCRICAO','CODPRODUTO','SOMA_QUANT DESC',{'TOTAL_LUCRO DESC',}'SOMA_CUSTO_LOJA DESC','SOMA_VALOR DESC');
var
  TotQuant, TotCusto, TotValor, TotLucro, TotDesc, TotCubagem : Real;
  ASQL : TStrings;
begin
  //*********************************************************
  ShowMessageWR('Função desativada');
  Exit;
  //Este relatório foi desativado por ter SQLs sem permissão
  //*********************************************************



  TotQuant := 0;
  TotValor := 0;
  TotLucro := 0;
  TotCusto := 0;
  TotDesc  := 0;
  TotCubagem := 0;
  QRLabel8.Enabled       := CkQuant.Checked;
  QRDBText3.Enabled      := CkQuant.Checked;
  QRLabel_TQuant.Enabled := CkQuant.Checked;

  LbCusto.Enabled        := CkCusto.Checked;
  DBCusto.Enabled        := CkCusto.Checked;
  QRLabel_TCusto.Enabled := CkCusto.Checked;

  LbDesc.Enabled        := CkDesconto.Checked;
  DBDesc.Enabled        := CkDesconto.Checked;
  QRLabel_TDesc.Enabled := CkDesconto.Checked;

  QRLabel3.Enabled       := CkLucro.Checked;
  QRDBText4.Enabled      := CkLucro.Checked;
  QRLabel_TLucro.Enabled := CkLucro.Checked;

  QRLabel9.Enabled       := CkValor.Checked;
  QRDBText5.Enabled      := CkValor.Checked;
  QRLabel_TValor.Enabled := CkValor.Checked;

  LbUnidade.Enabled    := CkCalcularCubagem.Checked;
  LbCubagem.Enabled    := CkCalcularCubagem.Checked;
  DBUnid.Enabled       := CkCalcularCubagem.Checked;
  DBCubagem.Enabled    := CkCalcularCubagem.Checked;
  QRLabel_TCub.Enabled := CkCalcularCubagem.Checked;

  Produtos_Agrupados.Close;
  ASQL := TStringList.Create;
  try
    if RadioFiltroData.ItemIndex = 0 then
      ASQL.Add('where (V.DT_EMISSAO ')
    else
      ASQL.Add('where (V.DT_FATURAMENTO ');
    ASQL[0] := ASQL[0] + ' between ' + QuotedStr(FormatDateTime('MM/DD/YYYY 00:00:00', DataInicial.Date)) +
                         ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY 23:59:59', DataFinal.Date)) + ') and (V.IS_VENDA = ''S'') ';

    ASQL.Add('and (V.STATUS like ''ATIVO%'')');
    if (Trim(EdtProdutoÎProduto.Text) <> '') then
      ASQL.Add('and (upper(VP.CODPRODUTO) = upper(' + QuotedStr(EdtProdutoÎProduto.Text) + '))');

    if GetCodEmpresa > 0 then
      ASQL.Add('and (V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ')');

    case RadioTipoSelecao.ItemIndex of
      0 : ASQL.Add('and (V.DT_FATURAMENTO is not null)');
      1 : ASQL.Add('and (V.DT_FATURAMENTO is null)');
      2 : ASQL.Add('and (upper(V.STATUS) = ''INATIVO CANCELADO'')');
    end;

    if RadioTipoSelecao.ItemIndex < 2 then
      ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ''INATIVO CANCELADO'')');

    if ComboTipoProduto.ItemIndex <> 0 then
      ASQL.Add('and (P.CODPRODUTO_TIPO = ' + IntToStr(FListaProdutoTipo[ComboTipoProduto.ItemIndex - 1].Codigo) + ')');

    if EdtGrupoProdutoÎProduto_Grupo.Text <> '' then
      Produtos_Agrupados.SQL[20] := 'having (upper(P.CODPRODUTO_GRUPO) = upper(' + QuotedStr(EdtGrupoProdutoÎProduto_Grupo.Text) + '))'
    else
      Produtos_Agrupados.Sql[20] := '';

//    if EdtFuncionarioÎPessoas.Text <> '' then
//      ASQL.Add('and (V.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + ')');

    if EdtMarcaÎProduto_Marca.Text <> '' then
      ASQL.Add('and (P.CODPRODUTO_MARCA = ' + EdtMarcaÎProduto_Marca.Text + ')');

//    if EdtFornecedorÎPessoas.Text <> '' then
//      ASQL.Add('and (upper(P.PESSOA_FORNECEDOR_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas)) + '))');

//    if EdtRepresentanteÎPessoas.Text <> '' then
//      ASQL.Add('and (upper(V.PESSOA_REPRESENTANTE_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtRepresentanteÎPessoas)) + '))');

//    if EdtClienteÎPessoas.Text <> '' then
//      ASQL.Add('and (upper(V.PESSOA_RESPONSAVEL_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas)) + '))');

    if CbTipoVenda.ItemIndex > 0 then
      ASQL.Add('and (V.VENDA_TIPO = ' + QuotedStr(CbTipoVenda.Items[CbTipoVenda.ItemIndex]) + ')');

    if Trim(EdtUsuario.Text) <> '' then
      ASQL.Add('and (V.CODUSUARIO = ' + EdtUsuario.Text + ')');

    if EdtCidadeÎCidades.Text <> '' then
      ASQL.Text := 'left join PESSOAS C on (C.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
                   ASQL.Text + ' and (C.CODCIDADE = ' + EdtCidadeÎCidades.Text + ')';

    if EdtGrupoClienteÎPessoas_Grupo.Text <> '' then
      ASQL.Add('and exists(select first 1 1 ' +
               '           from PESSOAS PES ' +
               '           where (PES.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
               '                 and (PES.CODPESSOAS_GRUPO = ' + EdtGrupoClienteÎPessoas_Grupo.Text + '))');

    ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ''INATIVO CANCELADO AGRUPADO'')');
    Produtos_Agrupados.SQL[21] := 'order by ' + OrdemAgrupado[ComboOrderBy.ItemIndex];

    Produtos_Agrupados.SQL[18] := ASQL.Text;
  finally
    ASQL.Free;
  end;

  Produtos_Agrupados.Open;
  Produtos_Agrupados.First;
  while not Produtos_Agrupados.Eof do
  begin
    TotQuant   := TotQuant + Produtos_Agrupados.FieldByName('SOMA_QUANT').AsFloat;
    TotCusto   := TotCusto + Produtos_Agrupados.FieldByName('SOMA_CUSTO_LOJA').AsFloat;
    TotValor   := TotValor + Produtos_Agrupados.FieldByName('SOMA_VALOR').AsFloat;
    TotLucro   := TotLucro + Produtos_Agrupados.FieldByName('Total_Lucro').AsFloat;
    TotDesc    := TotDesc  + Produtos_Agrupados.FieldByName('DESCONTO').AsFloat;
    TotCubagem := TotCubagem + Produtos_Agrupados.FieldByName('Cubagem').AsFloat;
    Produtos_Agrupados.Next;
  end;
  QRLabel_TQuant.Caption := FormatFloat(DecimalQuantidade, TotQuant);
  QRLabel_TCusto.Caption := FormatFloat(DecimalFinanceiro, TotCusto);
  QRLabel_TValor.Caption := FormatFloat(DecimalFinanceiro, TotValor);
  QRLabel_TLucro.Caption := FormatFloat(DecimalFinanceiro, TotLucro);
  QRLabel_TDesc.Caption  := FormatFloat(DecimalFinanceiro, TotDesc);
  QRLabel_TCub.Caption   := FormatFloat(DecimalQuantidade, TotCubagem);
  QR_Periodo.Caption     := 'Início: ' + DataInicial.Text + ' Final: ' + DataFinal.Text;
  QRLabel13.Caption      := ComboEmpresa.Text + ' - ' + RadioTipoSelecao.Items[RadioTipoSelecao.ItemIndex] + ' Por data: ' + RadioFiltroData.Items[RadioFiltroData.ItemIndex] + ' ' + LblClienteÎPessoasÎRAZAOSOCIAL.Caption;
  if not DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0006'), nil, True) then
    QuickRep1.PreviewModal;
end;

procedure TImpriVendas_Periodo.ImprimirVendas;
var
  ASQL : TStringList;
const
  OrdemVenda : Array[0..4] of String = ('V.RAZAOSOCIAL', 'V.CODIGO','F.RAZAOSOCIAL','V.QUANTIDADE','V.TOTAL');
begin
  ASQL := TStringList.Create;
  try
    ASQL.Add('and (V.STATUS like ''ATIVO%'')');
    case RadioFiltroData.ItemIndex of
      0 : ASQL.Add('and (V.DT_EMISSAO between :DtInicio AND :DtFim) and (V.IS_VENDA = ''S'')');
      1 : ASQL.Add('and (V.DT_FATURAMENTO between :DtInicio AND :DtFim) and (V.IS_VENDA = ''S'')');
    end;

    if GetCodEmpresa > 0 then
      ASQL.Add('and (V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ')');

    case RadioTipoSelecao.ItemIndex of
      0 : ASQL.Add('and (V.DT_FATURAMENTO is not null)');
      1 : ASQL.Add('and (V.DT_FATURAMENTO is null)');
      2 : ASQL.Add('and (upper(V.STATUS) = ''INATIVO CANCELADO'')');
    end;

    if RadioTipoSelecao.ItemIndex < 2 then
      ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ' + QuotedStr('INATIVO CANCELADO') + ')');

//    if EdtFuncionarioÎPessoas.Text <> '' then
//      ASQL.Add('and (V.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + ')');

//    if EdtRepresentanteÎPessoas.Text <> '' then
//      ASQL.Add('and (upper(V.PESSOA_REPRESENTANTE_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtRepresentanteÎPessoas)) + '))');

//    if EdtClienteÎPessoas.Text <> '' then
//      ASQL.Add('and (upper(V.PESSOA_RESPONSAVEL_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas)) + '))');

    if CbTipoVenda.ItemIndex > 0 then
      ASQL.Add('and (V.VENDA_TIPO = ' + QuotedStr(CbTipoVenda.Items[CbTipoVenda.ItemIndex]) + ')');

    if Trim(EdtUsuario.Text) <> '' then
      ASQL.Add('and (V.CODUSUARIO = ' + EdtUsuario.Text + ')');

    if EdtGrupoClienteÎPessoas_Grupo.Text <> '' then
      ASQL.Add('and exists(select first 1 1 ' +
               '           from PESSOAS PES ' +
               '           where (PES.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
               '                 and (PES.CODPESSOAS_GRUPO = ' + EdtGrupoClienteÎPessoas_Grupo.Text + '))');
//      ASQL.Add('ORDER BY V.PESSOA_FUNCIONARIO_CODIGO, ' + OrdemVenda[ComboOrderBy.ItemIndex]);
      ASQL.Add('ORDER BY ' + OrdemVenda[ComboOrderBy.ItemIndex] + ',V.RAZAOSOCIAL');


    Vendas.Close;
    Vendas.SQL[5] := ASQL.Text;
//    ShowMessage(Vendas.SQL.text);
    Vendas.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DataInicial.Date);
    Vendas.ParamByName('DtFim').AsDateTime    := EndOfTheDay(DataFinal.Date);
    Vendas.Open;

    DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0007'));
  finally
    ASQL.Free;
    Vendas.Close;
  end;
end;

procedure TImpriVendas_Periodo.ImprimirVendasPorCliente;
const
  Ordem : Array[0..2] of String = ('2', '1', '4 DESC');
var
  ASQL : TStringList;
  var
  ADMImpressao : TDMImpressao;
begin
  //*********************************************************
  ShowMessageWR('Função desativada');
  Exit;
  //Este relatório foi desativado por ter SQLs sem permissão
  //*********************************************************

  ASQL := TStringList.Create;
  try
    ASQL.Add('where (V.STATUS like ''ATIVO%'')');
    case RadioFiltroData.ItemIndex of
      0 : ASQL.Add('and (V.DT_EMISSAO between :DtInicio AND :DtFim) and (V.IS_VENDA = ''S'')');
      1 : ASQL.Add('and (V.DT_FATURAMENTO between :DtInicio AND :DtFim) and (V.IS_VENDA = ''S'')');
    end;

    //Não utilizado, gera erro na query, modificar a query caso precise utilizar
//    if CheckDescItem.Checked then
//      ASQL.Add('and (upper(VP.CODPRODUTO) = upper(' + QuotedStr(EdtProdutoÎProduto.Text) + '))');

    if GetCodEmpresa > 0 then
      ASQL.Add('and (V.CODIGO like ' + QuotedStr('%-' + IntToStr(GetCodEmpresa)) + ')');

    case RadioTipoSelecao.ItemIndex of
      0 : ASQL.Add('and (V.DT_FATURAMENTO is not null)');
      1 : ASQL.Add('and (V.DT_FATURAMENTO is null)');
      2 : ASQL.Add('and (upper(V.STATUS) = ' + QuotedStr('INATIVO CANCELADO') + ')');
    end;

    if RadioTipoSelecao.ItemIndex < 2 then
      ASQL.Add('and not (upper(coalesce(V.STATUS, 0)) = ' + QuotedStr('INATIVO CANCELADO') + ')');

    if EdtFuncionarioÎPessoas.Text <> '' then
      ASQL.Add('and (V.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + ')');

    if EdtRepresentanteÎPessoas.Text <> '' then
      ASQL.Add('and (upper(V.PESSOA_REPRESENTANTE_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtRepresentanteÎPessoas)) + '))');

    if EdtClienteÎPessoas.Text <> '' then
      ASQL.Add('and (upper(V.PESSOA_RESPONSAVEL_CODIGO) = upper(' + QuotedStr(FControleWR.GetCodigoPessoa(EdtClienteÎPessoas)) + '))');

    if CbTipoVenda.ItemIndex > 0 then
      ASQL.Add('and (V.VENDA_TIPO = ' + QuotedStr(CbTipoVenda.Items[CbTipoVenda.ItemIndex]) + ')');

    if Trim(EdtUsuario.Text) <> '' then
      ASQL.Add('and (V.CODUSUARIO = ' + EdtUsuario.Text + ')');

    if EdtGrupoClienteÎPessoas_Grupo.Text <> '' then
      ASQL.Add('and exists(select first 1 1 ' +
               '           from PESSOAS PES ' +
               '           where (PES.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
               '                 and (PES.CODPESSOAS_GRUPO = ' + EdtGrupoClienteÎPessoas_Grupo.Text + '))');

    VendasPorCliente_Produtos.Close;
    VendasPorCliente.Close;

    VendasPorCliente.SQL[6] := ASQL.Text;
    VendasPorCliente.SQL[8] := 'order by ' + Ordem[ComboOrderBy.ItemIndex];
    VendasPorCliente.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DataInicial.Date);
    VendasPorCliente.ParamByName('DtFim').AsDateTime    := EndOfTheDay(DataFinal.Date);
    VendasPorCliente.Open;

    ASQL.Delete(0);
    VendasPorCliente_Produtos.SQL[5] := ASQL.Text;
    VendasPorCliente_Produtos.ParamByName('DtInicio').AsDateTime := VendasPorCliente.ParamByName('DtInicio').AsDateTime;
    VendasPorCliente_Produtos.ParamByName('DtFim').AsDateTime    := VendasPorCliente.ParamByName('DtFim').AsDateTime;
    VendasPorCliente_Produtos.Open;

    DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0011'));
  finally
    ASQL.Free;
    VendasPorCliente.Close;
  end;
end;

initialization
  RegisterClass(TImpriVendas_Periodo);

end.

