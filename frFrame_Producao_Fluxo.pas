unit frFrame_Producao_Fluxo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxCheckBox,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.ExtCtrls, System.Generics.Collections, WREventos, UCHistDataset,
  cxSpinEdit, cxTimeEdit, FireDAC.Comp.Client, dxCustomTileControl,
  dxTileControl, cxCurrencyEdit, dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrame_Producao_Fluxo = class(TFrmFrameMestre)
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cbxCodProducao_Fluxo: TcxDBLookupComboBox;
    cbxCodProducao_PreRequisito: TcxDBLookupComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    btnAdicionarEtapaFluxo: TcxButton;
    btnRemoverEtapaFluxo: TcxButton;
    GridRecursos: TcxGrid;
    GridEtapas: TcxGridDBTableView;
    GridRecursosLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    GridPreRequisitos: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    btnRemoverPrerequisito: TcxButton;
    btnAdicionarPrerequisito: TcxButton;
    cbxEtapa: TcxLookupComboBox;
    cbxEtapaPreRequisito: TcxLookupComboBox;
    cxGrid4: TcxGrid;
    GridBaixaAutomatica: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cbxEtapaBaixaAutomatica: TcxLookupComboBox;
    cbxProdutoComposicao: TcxLookupComboBox;
    btnAdicionarMaterialBaixa: TcxButton;
    btnRemoverMaterialBaixa: TcxButton;
    dxLayout: TdxLayoutGroup;
    TabFluxo: TdxLayoutGroup;
    GrupoAdicionarFluxo: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    GrupoGridEtapas: TdxLayoutItem;
    TabPreRequisito: TdxLayoutGroup;
    GrupoAdicionarPrerequisito: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    GrupoGridPrerequisito: TdxLayoutItem;
    TabBaixaMateriaisProducao: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    GrupoGridBaixa: TdxLayoutItem;
    DSProdutoEtapa: TDataSource;
    DSPreRequisito: TDataSource;
    DSProdutoBaixaAutomatica: TDataSource;
    UCHist_PreRequisito: TUCHist_DataSet;
    UCHist_ProducaoFluxo: TUCHist_DataSet;
    UCHist_ProdutoBaixaAutomatica: TUCHist_DataSet;
    WREventosCadastro: TWREventosCadastro;
    GridEtapasCODIGO: TcxGridDBColumn;
    GridEtapasDT_ALTERACAO: TcxGridDBColumn;
    GridEtapasEQUIPE: TcxGridDBColumn;
    GridEtapasORDEM: TcxGridDBColumn;
    edtTempo: TcxTimeEdit;
    dxLayoutItem20: TdxLayoutItem;
    GridEtapasTEMPO: TcxGridDBColumn;
    dxLayoutItem2: TdxLayoutItem;
    cbxLookupEquipe: TcxLookupComboBox;
    GridPreRequisitosETAPA: TcxGridDBColumn;
    GridPreRequisitosPREREQUISITO: TcxGridDBColumn;
    GridPreRequisitosORDEM: TcxGridDBColumn;
    GridBaixaAutomaticaORDEM: TcxGridDBColumn;
    GridBaixaAutomaticaDESCRICAO: TcxGridDBColumn;
    GridBaixaAutomaticaEQUIPE: TcxGridDBColumn;
    edtDescricaoServico: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    GridEtapasDESCRICAO: TcxGridDBColumn;
    lblQtdProdutos: TcxLabel;
    lilblQtdProdutos: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tiGerarEtapas: TdxTileControlItem;
    dxLayoutItem21: TdxLayoutItem;
    edtTempoEdit: TcxCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    cbxTipoData: TcxComboBox;
    GridEtapasTEMPOMINUTOS: TcxGridDBColumn;
    GrupoAdicionarBaixaAutomatica: TdxLayoutGroup;
    procedure btnAdicionarEtapaFluxoClick(Sender: TObject);
    procedure btnRemoverEtapaFluxoClick(Sender: TObject);
    procedure btnAdicionarPrerequisitoClick(Sender: TObject);
    procedure btnRemoverPrerequisitoClick(Sender: TObject);
    procedure btnAdicionarMaterialBaixaClick(Sender: TObject);
    procedure btnRemoverMaterialBaixaClick(Sender: TObject);
    procedure GridEtapasStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure GridEtapasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GridEtapasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FrameEnter(Sender: TObject);
  private
    AKeys: Variant;

  public
  class procedure CarregaFrame1; virtual;  abstract;

  end;

implementation

{$R *.dfm}

uses UnitFuncoes, wrFuncoes, System.Threading;

{ TFrame_Producao_Fluxo }

procedure TFrame_Producao_Fluxo.btnAdicionarEtapaFluxoClick(Sender: TObject);
var
  AUltimaOrdem: integer;
begin
  if cbxLookupEquipe.EditText = '' then
  begin
    ShowMessage('Selecione uma equipe para a etapa');
    Abort;
  end;

  inherited;
end;

procedure TFrame_Producao_Fluxo.btnAdicionarMaterialBaixaClick(Sender: TObject);
begin
  inherited;
  if (VarToStr(cbxEtapaBaixaAutomatica.EditValue) = '') or
     (VarToStr(cbxProdutoComposicao.EditValue) = '')
  then
    Abort;
end;

procedure TFrame_Producao_Fluxo.btnAdicionarPrerequisitoClick(Sender: TObject);
begin
  inherited;
  if (VarToStr(cbxEtapa.EditValue) = '') or
     (VarToStr(cbxEtapaPrerequisito.EditValue) = '')
  then
    Abort;
end;

procedure TFrame_Producao_Fluxo.btnRemoverEtapaFluxoClick(Sender: TObject);
var
  AEtapa: integer;
begin
  inherited;
  AlteraDataSet;
  if not DSProdutoEtapa.DataSet.IsEmpty then
    DSProdutoEtapa.DataSet.Delete;

//  DSProdutoEtapa.DataSet.Refresh;
  DSProdutoEtapa.DataSet.First;
  AEtapa := 1;
  while not DSProdutoEtapa.DataSet.eof do
  begin
    DSProdutoEtapa.DataSet.Edit;
    DSProdutoEtapa.DataSet.FieldByName('ORDEM').AsInteger := AEtapa;
    DSProdutoEtapa.DataSet.Post;
    AEtapa := AEtapa + 1;
    DSProdutoEtapa.DataSet.Next;
  end;
end;

procedure TFrame_Producao_Fluxo.btnRemoverMaterialBaixaClick(Sender: TObject);
begin
  inherited;
  AlteraDataSet;
  if not DSProdutoBaixaAutomatica.DataSet.IsEmpty then
    DSProdutoBaixaAutomatica.DataSet.Delete;
end;

procedure TFrame_Producao_Fluxo.btnRemoverPrerequisitoClick(Sender: TObject);
begin
  inherited;
  AlteraDataSet;
  if not DSPreRequisito.DataSet.IsEmpty then
    DSPreRequisito.DataSet.Delete;
end;

procedure TFrame_Producao_Fluxo.FrameEnter(Sender: TObject);
begin
  inherited;
  tiGerarEtapas.Visible := DS.DataSet.FieldByName('TEM_COMPOSICAO').AsString = 'S';
end;

procedure TFrame_Producao_Fluxo.GridEtapasDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    AlteraDataSet;
    HT := ViewInfo.GetHitTest(X, Y);
    ReorderRows(TcxGridTableView(GridView), TcxGridRecordCellHitTest(HT).GridRecord, AKeys);
  end;
  inherited;
end;

procedure TFrame_Producao_Fluxo.GridEtapasDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
  end;
  inherited;
end;

procedure TFrame_Producao_Fluxo.GridEtapasStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
    AKeys := DataController.DataSet.FieldValues['ORDEM'];
  inherited;
end;

end.
