unit CadProduto_Wizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxCheckListBox, cxDBCheckListBox, dxCustomWizardControl, dxWizardControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinscxPCPainter, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, dxLayoutContainer, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxLayoutControl,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, dxLayoutLookAndFeels, System.StrUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxCurrencyEdit, cxLabel, cxDBLabel, Rotinas,  System.Math, cxMemo, cxMaskEdit, cxButtonEdit,
  cxDropDownEdit, cxImageComboBox, Vcl.ImgList, FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, System.Generics.Collections,
  uControleWR, UCBase, cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  Classes.WR, dxDateRanges, uWRCalculaConfiguracoes, dxorgced, dxorgchr, dxdborgc, cxGridWinExplorerView,
  cxGridDBWinExplorerView, uWRFormataCamposDataSet, dxRatingControl, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxImage, cxGridBandedTableView, cxGridDBBandedTableView, FrFrameComposicao,
  Vcl.ExtCtrls, dxScrollbarAnnotations, dxorgcedadv, FrFrameComposicao_Variacao,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Wizard = class(TForm)
    Wizard: TdxWizardControl;
    wizPagina_Produto: TdxWizardControlPage;
    wizPagina_Resposta: TdxWizardControlPage;
    MainLayoutGroup_Root: TdxLayoutGroup;
    MainLayout: TdxLayoutControl;
    DSMateriaPrima: TDataSource;
    DSProduto_Wizard: TDataSource;
    wizPagina_DataHora: TdxWizardControlPage;
    GrupoValores: TdxLayoutGroup;
    EdtPecas: TcxDBCurrencyEdit;
    LayoutItemQtPeca: TdxLayoutItem;
    EdtComprimento: TcxDBCurrencyEdit;
    LayoutItemComprimento: TdxLayoutItem;
    EdtLargura: TcxDBCurrencyEdit;
    LayoutItemLargura: TdxLayoutItem;
    EdtEspessura: TcxDBCurrencyEdit;
    LayoutItemEspessura: TdxLayoutItem;
    EdtQuant: TcxDBCurrencyEdit;
    MainLayoutItem6: TdxLayoutItem;
    EdtValor: TcxDBCurrencyEdit;
    ItemValorProduto: TdxLayoutItem;
    EdtTotal: TcxDBCurrencyEdit;
    ItemTotalProduto: TdxLayoutItem;
    GrupoMedidas: TdxLayoutGroup;
    GrupoCustoEValor: TdxLayoutGroup;
    EdtUnidade: TcxDBTextEdit;
    MainLayoutItem3: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    GrupoCusto: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    LayoutItemArquivo: TdxLayoutItem;
    cxImageList1: TcxImageList;
    MainLayoutValorAdicional: TdxLayoutGroup;
    UCControls1: TUCControls;
    MTMateriaPrima: TFDMemTable;
    MTMateriaPrimaSELECAO: TIntegerField;
    MTMateriaPrimaCODPRODUTO_WIZARD: TIntegerField;
    MTMateriaPrimaCODPRODUTO_MATERIA_PRIMA: TStringField;
    MTMateriaPrimaDESCRICAO_MATERIA_PRIMA: TStringField;
    MTMateriaPrimaUNIDADE: TStringField;
    MTMateriaPrimaQTDADEPECA: TFloatField;
    MTMateriaPrimaQUANT: TFloatField;
    MTMateriaPrimaCOMP: TFloatField;
    MTMateriaPrimaLARG: TFloatField;
    MTMateriaPrimaESPESSURA: TFloatField;
    MTMateriaPrimaCUSTO_LOJA: TFloatField;
    MTMateriaPrimaCUSTO_FABR: TFloatField;
    MTMateriaPrimaVALOR: TFloatField;
    MTMateriaPrimaTOTAL: TFloatField;
    MTMateriaPrimaMARGEM: TFloatField;
    MTMateriaPrimaTIPO_OBS: TStringField;
    MTMateriaPrimaOBS_PRODUCAO: TWideMemoField;
    MTMateriaPrimaARQUIVO: TStringField;
    MTMateriaPrimaARQUIVO_OBRIGATORIO: TStringField;
    MTMateriaPrimaFIXO: TStringField;
    MTMateriaPrimaPERC_ADICIONA: TFloatField;
    dxLayoutItem1: TdxLayoutItem;
    EdtValorSomaTotal: TcxDBCurrencyEdit;
    MTMateriaPrimaCUSTO_COMPOSICAO: TFloatField;
    wizPagina_Upload: TdxWizardControlPage;
    wizPagina_CheckList: TdxWizardControlPage;
    wizPagina_Ornanograma_Completo: TdxWizardControlPage;
    wizPaginaDecisaoRoteiro: TdxWizardControlPage;
    DBTree: TdxDbOrgChart;
    Producao_Roteiro_Organograma: TFDQuery;
    Producao_Roteiro_OrganogramaCODIGO: TIntegerField;
    Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO: TIntegerField;
    Producao_Roteiro_OrganogramaPARENT: TIntegerField;
    Producao_Roteiro_OrganogramaDESCRICAO: TStringField;
    Producao_Roteiro_OrganogramaDT_ALTERACAO: TSQLTimeStampField;
    Producao_Roteiro_OrganogramaRESPONSAVEL: TStringField;
    Producao_Roteiro_OrganogramaWIDTH: TIntegerField;
    Producao_Roteiro_OrganogramaHEIGHT: TIntegerField;
    Producao_Roteiro_OrganogramaTIPO: TStringField;
    Producao_Roteiro_OrganogramaCOR: TIntegerField;
    Producao_Roteiro_OrganogramaIMAGEM: TIntegerField;
    Producao_Roteiro_OrganogramaIMAGEM_ALINHAMENTO: TStringField;
    Producao_Roteiro_OrganogramaORDEM: TIntegerField;
    Producao_Roteiro_OrganogramaALINHAMENTO: TStringField;
    DSProducao_Roteiro_Organograma: TDataSource;
    wizPagina_Resumo_final: TdxWizardControlPage;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO_PERGUNTA: TIntegerField;
    Producao_Roteiro_OrganogramaTIPO_PERGUNTA: TStringField;
    Producao_Roteiro_OrganogramaPERGUNTA: TStringField;
    Producao_Roteiro_OrganogramaOBSERVACAO: TMemoField;
    edtRespostaEmTexto: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    GridConsulta: TcxGrid;
    GridConsultaDBTableView1: TcxGridDBTableView;
    GridConsultaDBTableView1COMPOSICAO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_GRADE: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_TABELA_PRECO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_FLUXO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_WIZARD: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_P: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODNF_NCM: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1ESTRELA: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn;
    GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ULTIMA_COMPRA: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1FORNECEDOR: TcxGridDBColumn;
    GridConsultaDBTableView1COR: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL_APLICACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CLASSIFICACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CustoRef: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_PACRESC_PRAZO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_PDESC_ATACADO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VPRAZO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VATACADO: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn;
    GridConsultaDBLayoutView1: TcxGridDBLayoutView;
    GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup;
    cxGridLevel1: TcxGridLevel;
    edtCodigo: TcxDBTextEdit;
    LiedtCodigo: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Producao_Roteiro_OrganogramaFILTRO: TBlobField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    GridConsultaDBTableView1IMAGEM: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    GridConsultaDBTableView1PADRAO: TcxGridDBColumn;
    GridConsultaDBTableView1QTDADEPECA_FORMULA: TcxGridDBColumn;
    GridConsultaDBTableView1COMP_FORMULA: TcxGridDBColumn;
    GridConsultaDBTableView1LARG_FORMULA: TcxGridDBColumn;
    GridConsultaDBTableView1ESPESSURA_FORMULA: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1FORMULA: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGridDBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    GridConsultaDBWinExplorerView1: TcxGridDBWinExplorerView;
    GridConsultaDBWinExplorerView1IMAGEM: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1CODIGO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DESCRICAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1TIPO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1COMP_FORMULA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1LARG_FORMULA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ESPESSURA_FORMULA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1QTDADEPECA_FORMULA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1FORMULA: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1ATIVO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1DT_ALTERACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBWinExplorerView1OBSERVACAO: TcxGridDBWinExplorerViewItem;
    GridConsultaDBBandedTableView1: TcxGridDBBandedTableView;
    GridConsultaDBBandedTableView1IMAGEM: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DESCRICAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1TIPO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1COMP_FORMULA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LARG_FORMULA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ESPESSURA_FORMULA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1QTDADEPECA_FORMULA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1FORMULA: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ATIVO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1DT_ALTERACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1OBSERVACAO: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    Formulas: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSFormulas: TDataSource;
    WizMonteSeuProduto: TdxWizardControlPage;
    wizProdutoMontado: TdxWizardControlPage;
    dxWizardControlPage2: TdxWizardControlPage;
    dxWizardControlPage3: TdxWizardControlPage;
    pnlComposicao: TPanel;
    edtCodProdutoDescricao: TcxDBTextEdit;
    DSPmPrincipal: TDataSource;
    edtCodProdutoÎPRODUTO: TcxButtonEdit;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    PmPrincipal: TwrProdutoMemoria;
    PmComposicao2: TwrProdutoMemoria;
    TransaFD: TFDTransaction;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    PmComposicao: TwrProdutoMemoria;
    procedure WizardButtonClick(Sender: TObject; AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure cxGrid1DBTableView1SELECAOPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1FocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView, AFocusedView: TcxCustomGridView);
    procedure ViewSelecaoItensFIXOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure WizardTdxWizardControlButtonsTdxWizardControlCustomButtonsButtons0Click(
      Sender: TObject);
    procedure GridConsultaDBWinExplorerView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodProdutoÎPRODUTOPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FControleWR: TControleWR;
    FFrmFrameComposicao: TFrmFrameComposicao_Variacao;
    function ValidarCamposMateriaPrima: Boolean;
    procedure SelecionaAPaginaDeAcordoComaPegunta(ANode: TdxOcNode);
  public
    { Public declarations }
    class function ExecutaWizard(Var AFrmProduto_Wizard : TFrmProduto_Wizard;
                   ACodProduto: String; AWRCalcula: TWRCalculaConfiguracoes; APmSecundario:TwrProdutoMemoria): Boolean;
  end;


implementation

{$R *.dfm}

uses
  UnitFuncoes, Principal, wrFuncoes;

class function TFrmProduto_Wizard.ExecutaWizard(Var AFrmProduto_Wizard : TFrmProduto_Wizard;
  ACodProduto: String; AWRCalcula: TWRCalculaConfiguracoes; APmSecundario :TwrProdutoMemoria): Boolean;
begin
  if (AFrmProduto_Wizard = nil) then
  begin
    AFrmProduto_Wizard := TFrmProduto_Wizard.Create(AWRCalcula.Owner);


//    AFrmProduto_Wizard.WRCalc.ProdutoMemoriaConfiguracao.AbrirVazio;
  end;
  AFrmProduto_Wizard.WRCalcMemoria  := AWRCalcula;
  AFrmProduto_Wizard.PmPrincipal := APmSecundario;

  TFrmFrameComposicao_Variacao.CarregaFrame(AFrmProduto_Wizard.FFrmFrameComposicao,
                                   AFrmProduto_Wizard.pnlComposicao,
                                   AFrmProduto_Wizard.WRCalcMemoria,
                                   AFrmProduto_Wizard.PmComposicao);

  AFrmProduto_Wizard.edtCodProdutoÎPRODUTO.Text := ACodProduto;

//  AFrmProduto_Wizard.PmComposicao         := APmPrincipal;
//  AFrmProduto_Wizard.PmPrincipal          := APmProduto;
//  AFrmProduto_Wizard.WRCalc.CalcBuild;
//  if ACodProduto <> '0' then
//  begin
//    AFrmProduto_Wizard.Producao_Roteiro_Organograma.Close;
////    AFrmProduto_Wizard.Producao_Roteiro_Organograma.ParamByName('Codigo').AsInteger := ACodProduto;
//    AFrmProduto_Wizard.Producao_Roteiro_Organograma.Open;
//    AFrmProduto_Wizard.SelecionaAPaginaDeAcordoComaPegunta(AFrmProduto_Wizard.DBTree.RootNode);
//  end else
//  begin
//    AFrmProduto_Wizard.Formulas.Open;
//    AFrmProduto_Wizard.Wizard.ActivePage:= AFrmProduto_Wizard.wizPagina_Ornanograma_Completo;
//    AFrmProduto_Wizard.SelecionaAPaginaDeAcordoComaPegunta(AFrmProduto_Wizard.DBTree.RootNode);
//  end;
  AFrmProduto_Wizard.Wizard.ActivePage:= AFrmProduto_Wizard.wizProdutoMontado;
  if AFrmProduto_Wizard.ShowModal = mrOk then
    Result := True
  else
    Result := False;
end;

procedure TFrmProduto_Wizard.cxDBTextEdit1PropertiesChange(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  if not (Producao_Roteiro_Organograma.State in dsEditModes) then
  begin
    if Not Producao_Roteiro_Organograma.FieldByName('FILTRO').IsNull then
    begin
      try
        AStream := TMemoryStream.Create;
        TBlobField(Producao_Roteiro_Organograma.FieldByName('FILTRO')).SaveToStream(AStream);
        AStream.Position := 0;
        GridConsultaDBTableView1.DataController.Filter.LoadFromStream(AStream);
      finally
        AStream.Free;
      end;
    end else
      GridConsultaDBTableView1.DataController.Filter.Clear;
  end;
end;

procedure TFrmProduto_Wizard.cxGrid1DBTableView1SELECAOPropertiesChange(Sender: TObject);
var
  ACodWizardMateria : string;
  AUnidade : TUnidade;
begin
   if not ValidarCamposMateriaPrima then
     Exit;

  {if MTMateriaPrima.State = dsEdit then
  begin
    if MTMateriaPrimaSELECAO.AsInteger = 1 then
    begin
      EdtQuant.Value                := 1;
      AUnidade := FControleUnidades.GetUnidade(EdtUnidade.Text);
      LayoutItemComprimento.Visible := AUnidade.ExComprimento;
      LayoutItemLargura.Visible     := AUnidade.ExLargura;
      LayoutItemEspessura.Visible   := AUnidade.ExEspessura;
      LayoutItemQtPeca.Visible      := LayoutItemEspessura.Visible or LayoutItemLargura.Visible or LayoutItemComprimento.Visible;
    end else
//    EdtQuant.Value                := 0;
  end; }
{  if Produto_WizardTIPO.AsString = 'UNICO' then
  begin
//    PostDataSet;
    ACodWizardMateria := MTMateriaPrimaCODPRODUTO_MATERIA_PRIMA.AsString;
    MTMateriaPrima.DisableControls;
    try
      MTMateriaPrima.First;
      while not MTMateriaPrima.Eof do
      begin
        if ACodWizardMateria <> MTMateriaPrimaCODPRODUTO_MATERIA_PRIMA.AsString then
        begin
          MTMateriaPrima.Edit;
          MTMateriaPrimaSELECAO.AsInteger := 0;
          MTMateriaPrima.Post;
        end;
        MTMateriaPrima.Next;
      end;
      MTMateriaPrima.Locate('CODPRODUTO_MATERIA_PRIMA', ACodWizardMateria, []);
    finally
      MTMateriaPrima.EnableControls;
    end;
  end;        }
end;

procedure TFrmProduto_Wizard.cxGrid1FocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
  AFocusedView: TcxCustomGridView);
begin
//  Wizard.Buttons.Next.Enabled := (cxGrid1Level1.GridView = ViewSelecaoItens);
//  Wizard.Buttons.Back.Enabled := (cxGrid1Level1.GridView = ViewSelecaoItens);
//  GrupoValores.Visible        := (cxGrid1Level1.GridView = ViewSelecaoItens);
end;

procedure TFrmProduto_Wizard.edtCodProdutoÎPRODUTOPropertiesEditValueChanged(
  Sender: TObject);
begin
  WRCalcMemoria.SprFechaMemTables;
  WRCalcMemoria.ProdutoMemoriaConfiguracao.ProcuraProduto(edtCodProdutoÎPRODUTO.Text, '', 1);
  WRCalcMemoria.CalcBuild;
  WRCalcMemoria.DBProduto.Edit;
  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', 1);
//  ShowMessage(  WRCalc.DBProduto.FieldByName('DESCRICAO').AsString);
end;

function TFrmProduto_Wizard.ValidarCamposMateriaPrima: Boolean;
begin
  Result := True;
  MTMateriaPrima.DisableControls;
  try
    MTMateriaPrima.First;
    while not MTMateriaPrima.Eof do
    begin
      if MTMateriaPrima.FieldByName('SELECAO').AsInteger = 1 then
      begin
        if AnsiSameText(MTMateriaPrima.FieldByName('TIPO_OBS').AsString, 'Obrigatório') and
           MTMateriaPrima.FieldByName('OBS_PRODUCAO').AsString.Trim.IsEmpty then
        begin
          ShowMessageWR('Obrigatório o preenchimento da Observação para a Produção neste item.');
          Exit(False);
        end;
      end;
      MTMateriaPrima.Next;
    end;
  finally
    MTMateriaPrima.EnableControls;
  end;
end;

procedure TFrmProduto_Wizard.ViewSelecaoItensFIXOGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
//  if VarToStrDef(ARecord.Values[ViewSelecaoItensFIXO.Index], '') = 'S' then
//    AHintText := 'Item Fixo. Não é possível desmarcar.';
end;

//Botões da tela
procedure TFrmProduto_Wizard.WizardButtonClick(Sender: TObject; AKind: TdxWizardControlButtonKind;
  var AHandled: Boolean);
var
  ANode: TdxOcNode;
begin
  case AKind of
      wcbkNext : begin
                   ANode := DBTree.Selected.GetFirstChild; // Próximo Node
                 end;
      wcbkBack : begin
                    ANode:=DBTree.RootNode;
                    MTMateriaPrima.Open;
                 end;
    wcbkCancel : begin
                    ModalResult := mrCancel;   // Aqui fecha a Tela
                 end;
    wcbkFinish : begin
                   WRCalcMemoria.DSComposicao.DataSet.First;
                   while not WRCalcMemoria.DSComposicao.DataSet.eof do
                   begin
                     if WRCalcMemoria.DSComposicao.DataSet.FieldByName('TEM_VARIACAO').AsString = 'S' then
                     begin
                       ShowMessage('Ainda existem Produtos Variáveis pendentes para serem selecionados');
                       Exit;
                     end;
                     WRCalcMemoria.DSComposicao.DataSet.Next;
                   end;
                   ModalResult := mrOk;
//                   ShowMessage('Chegou no Final');
                 end;
  end;
  AHandled := True;
//  if (ANode <> nil) then
//    DBTree.Selected:= ANode;
//  SelecionaAPaginaDeAcordoComaPegunta(ANode);
end;

procedure TFrmProduto_Wizard.WizardTdxWizardControlButtonsTdxWizardControlCustomButtonsButtons0Click(
  Sender: TObject);
var
  ANode: TdxOcNode;
begin
  Exit;
  ANode := DBTree.Selected;
  if (ANode <> nil) then
    DBTree.Selected:= ANode;
  SelecionaAPaginaDeAcordoComaPegunta(ANode);
end;

procedure TFrmProduto_Wizard.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
 { MTMateriaPrima.DisableControls;
  try
    MTMateriaPrimaCUSTO_FABR.DisplayFormat       := DecimalFinanceiro;
    MTMateriaPrimaCUSTO_LOJA.DisplayFormat       := DecimalFinanceiro;
    MTMateriaPrimaCUSTO_COMPOSICAO.DisplayFormat := DecimalFinanceiro;
    MTMateriaPrimaVALOR.DisplayFormat            := DecimalFinanceiro;
    MTMateriaPrimaTotal.DisplayFormat            := '#,##0.00';
    MTMateriaPrimaPERC_ADICIONA.DisplayFormat    := '###,###,##0.00####';

    MTMateriaPrimaQTDADEPECA.DisplayFormat := DecimalQuantidade;
    MTMateriaPrimaQUANT.DisplayFormat      := DecimalQuantidade;
    MTMateriaPrimaCOMP.DisplayFormat       := DecimalQuantidade;
    MTMateriaPrimaLARG.DisplayFormat       := DecimalQuantidade;
    MTMateriaPrimaESPESSURA.DisplayFormat  := DecimalQuantidade;
  finally
    MTMateriaPrima.EnableControls;
  end;     }
end;

procedure TFrmProduto_Wizard.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

procedure TFrmProduto_Wizard.FormShow(Sender: TObject);
begin
//  wizProdutoMontado.Header.Title:= WRCalc.DBProduto.FieldByName('DESCRICAO').AsString;
  DSPmPrincipal.DataSet:= WRCalcMemoria.DBProduto;
  WRCalcMemoria.TreeListEmMemoria := False;
  WRCalcMemoria.TreeList   := FFrmFrameComposicao.GridComposicaoTree;
  WRCalcMemoria.SprFormula := FFrmFrameComposicao.SprFormula;
end;

procedure TFrmProduto_Wizard.GridConsultaDBWinExplorerView1DblClick(Sender: TObject);
begin
//  Aqui cadastra as novas fómulas
  ModalResult:= mrOk;
end;

procedure TFrmProduto_Wizard.SelecionaAPaginaDeAcordoComaPegunta(ANode: TdxOcNode);
begin
  if (ANode = nil) then
  begin
    Wizard.ActivePage := wizPagina_Resumo_final;
//    ShowMessage('Final');
  end else
  if (ANode.Count > 1) then
  begin
    Wizard.ActivePage := wizPaginaDecisaoRoteiro;
//    ShowMessage('Child Duplo');
  end else
  begin
    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'Resposta em Texto') then
    begin
      Wizard.ActivePage := wizPagina_Resposta;
//      ShowMessage('Resposta');
    end;
    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'Multipla Escolha') then // OK
    begin
      Wizard.ActivePage                    := wizPagina_Produto;
      wizPagina_Produto.Header.Description := Producao_Roteiro_Organograma.FieldByName('OBSERVACAO').AsString;
      wizPagina_Produto.Header.Title       := Producao_Roteiro_Organograma.FieldByName('PERGUNTA').AsString;
      GridConsultaDBTableView1.OptionsSelection.MultiSelect:= True;
//      ShowMessage('Multipla');
    end;
    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'Escolha Única') then    // OK
    begin
      Wizard.ActivePage                    := wizPagina_Produto;
      wizPagina_Produto.Header.Description := Producao_Roteiro_Organograma.FieldByName('OBSERVACAO').AsString;
      wizPagina_Produto.Header.Title       := Producao_Roteiro_Organograma.FieldByName('PERGUNTA').AsString;
      GridConsultaDBTableView1.OptionsSelection.MultiSelect:= False;
//      ShowMessage('Radio');
    end;
{    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'UPLOAD') then   // Aqui deve exigir o Arquivo por produto selecionado
    begin
      Wizard.ActivePage := wizPagina_Upload;
//      ShowMessage('Upload');
    end;
    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'DATAHORA') then  // Aqui deve calcular o prazo de produção
    begin
      Wizard.ActivePage := wizPagina_DataHora;
      Wizard.ActivePage.Visible:=True;
      ShowMessage('DataHora');
    end;  }
    if (Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'Check List') then  // Opcionais para saber se perguntou e informaou os perigos para o cliente
    begin                                                                                      // Informativos como condições de pagamento devolução de dinheiro, 50% no ato da venda
      Wizard.ActivePage := wizPagina_CheckList;                            // Aqui deve aparecer se esse Cheklist vai para o produção
//      WizPaginaPerguntas.Header.Description := Producao_Roteiro_Organograma.FieldByName('OBSERVACAO').AsString;
//      WizPaginaPerguntas.Header.Title       := Producao_Roteiro_Organograma.FieldByName('PERGUNTA').AsString;
//      ShowMessage('CheckList');
    end;
  end;
end;

end.
