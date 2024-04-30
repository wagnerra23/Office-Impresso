unit CadProducao_Roteiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, cxContainer,
  cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxMemo, cxImageComboBox, cxImageList, fs_iinterpreter, dxUIAdorners, dxorgced, dxorgchr, dxdborgc,
  cxImage, cxStyles, cxInplaceContainer, cxVGrid, cxDBVGrid, dxColorEdit, cxSpinEdit, CadProducao_Roteiro_Wizard,
  uWRCalculaConfiguracoes, cxButtonEdit, cxCurrencyEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSdxDBOCLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPSGraphicLnk, dxPSdxOCLnk,
  dxSpreadSheetReportDesigner, dxSpreadSheetCore, cxCustomData, cxTL, cxLabel, cxDBLookupComboBox, cxCalendar,
  cxTLdxBarBuiltInMenu, cxDBTL, cxTLData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxPSRichEditControlLnk, System.Generics.Collections, WRButtonsEditAdd;

type
  TdxCustomOrgChartAccess = class(TdxCustomOrgChart);

  TFrmProducao_Roteiro = class(TFrmCadM)
    liedtClassificacao: TdxLayoutItem;
    edtClassificacao: TcxDBImageComboBox;
    dxLayoutItem1: TdxLayoutItem;
    edtPerguntaTexto: TcxDBMemo;
    ImgProduto_Tipo16x16: TcxImageList;
    ImgProduto_Tipo32x32: TcxImageList;
    LiDBTree: TdxLayoutItem;
    DBTree: TdxDbOrgChart;
    GrupoTop: TdxLayoutGroup;
    Producao_Roteiro_Organograma: TFDQuery;
    DSProducao_Roteiro_Organograma: TDataSource;
    dxLayoutItem3: TdxLayoutItem;
    imgImagem: TcxDBImage;
    dxLayoutGroup2: TdxLayoutGroup;
    menuRoteiro: TPopupMenu;
    Novo1: TMenuItem;
    NovoFilho1: TMenuItem;
    Excluir1: TMenuItem;
    Renomear1: TMenuItem;
    N3: TMenuItem;
    Expandir1: TMenuItem;
    Encolher1: TMenuItem;
    dxLayoutGroup1: TdxLayoutGroup;
    N4: TMenuItem;
    EditarPropriedades1: TMenuItem;
    dxLayoutGroup3: TdxLayoutGroup;
    LibtnTreeListExpand: TdxLayoutItem;
    btnTreeListExpand: TcxButton;
    LibtnTreeListCollapse: TdxLayoutItem;
    btnTreeListCollapse: TcxButton;
    LibtnMenuComposicao: TdxLayoutItem;
    btnMenuComposicao: TcxButton;
    ImgListActionsFrameComposicao: TcxImageList;
    LibtnFluxoMaximizar: TdxLayoutItem;
    btnFluxoMaximizar: TcxButton;
    LibtnFluxoMinimizar: TdxLayoutItem;
    btnFluxoMinimizar: TcxButton;
    LibtnFluxoExluir: TdxLayoutItem;
    btnFluxoExluir: TcxButton;
    LibtnFluxoNovo: TdxLayoutItem;
    btnFluxoNovo: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    LibtnGirar: TdxLayoutItem;
    btnGirar: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    btnFluxoNovoFilho: TcxButton;
    GridPropriedades: TcxDBVerticalGrid;
    LiGridPropriedades: TdxLayoutItem;
    SplitterPropriedades: TdxLayoutSplitterItem;
    dxLayoutGroup5: TdxLayoutGroup;
    GridPropriedadesCODIGO: TcxDBEditorRow;
    GridPropriedadesCODPRODUCAO_ROTEIRO: TcxDBEditorRow;
    GridPropriedadesCODPRODUCAO_ROTEIRO_PERGUNTA: TcxDBEditorRow;
    GridPropriedadesPARENT: TcxDBEditorRow;
    GridPropriedadesDESCRICAO: TcxDBEditorRow;
    GridPropriedadesDT_ALTERACAO: TcxDBEditorRow;
    GridPropriedadesRESPONSAVEL: TcxDBEditorRow;
    GridPropriedadesWIDTH: TcxDBEditorRow;
    GridPropriedadesHEIGHT: TcxDBEditorRow;
    GridPropriedadesTIPO: TcxDBEditorRow;
    GridPropriedadesCOR: TcxDBEditorRow;
    GridPropriedadesIMAGEM: TcxDBEditorRow;
    GridPropriedadesIMAGEM_ALINHAMENTO: TcxDBEditorRow;
    GridPropriedadesORDEM: TcxDBEditorRow;
    GridPropriedadesALINHAMENTO: TcxDBEditorRow;
    dxLayoutItem4: TdxLayoutItem;
    btnTestarRoteiro: TcxButton;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    PmPrincipal: TwrProdutoMemoria;
    Producao_Roteiro_OrganogramaCODIGO: TIntegerField;
    Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO: TIntegerField;
    Producao_Roteiro_OrganogramaCODPRODUCAO_ROTEIRO_PERGUNTA: TIntegerField;
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
    Producao_Roteiro_OrganogramaTIPO_PERGUNTA: TStringField;
    Producao_Roteiro_OrganogramaPERGUNTA: TStringField;
    Producao_Roteiro_OrganogramaOBSERVACAO: TMemoField;
    GridPropriedadesTIPO_PERGUNTA: TcxDBEditorRow;
    GridPropriedadesPERGUNTA: TcxDBEditorRow;
    GridPropriedadesOBSERVACAO: TcxDBEditorRow;
    GridPropriedadesCategoryRow1: TcxCategoryRow;
    GridPropriedadesCategoryRow2: TcxCategoryRow;
    GridPropriedadesCategoryRow3: TcxCategoryRow;
    GridPropriedadesCategoryRow4: TcxCategoryRow;
    AbrirPerguntaVinculada1: TMenuItem;
    N5: TMenuItem;
    dxLayoutItem5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    Organograma: TdxDBOrgChartReportLink;
    dxLayoutItem6: TdxLayoutItem;
    dxSpreadSheetReportDesigner1: TdxSpreadSheetReportDesigner;
    ReportDesignerDetail1: TdxSpreadSheetReportDetail;
    dxLayoutItem8: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton3: TcxButton;
    LiGridTree: TdxLayoutItem;
    GridTree: TcxDBTreeList;
    GridComposicaoTreeCODIGO: TcxDBTreeListColumn;
    GridComposicaoTreeCODPRODUTO: TcxDBTreeListColumn;
    GridComposicaoTreeDESCRICAO: TcxDBTreeListColumn;
    GridComposicaoTreeUNIDADE: TcxDBTreeListColumn;
    GridComposicaoTreeQTDADEPECA: TcxDBTreeListColumn;
    GridComposicaoTreeCOMP: TcxDBTreeListColumn;
    GridComposicaoTreeLARG: TcxDBTreeListColumn;
    GridComposicaoTreeESPESSURA: TcxDBTreeListColumn;
    GridComposicaoTreeQUANT: TcxDBTreeListColumn;
    GridComposicaoTreeCUSTO: TcxDBTreeListColumn;
    GridComposicaoTreeMARGEM: TcxDBTreeListColumn;
    GridComposicaoTreeVALOR: TcxDBTreeListColumn;
    GridComposicaoTreeQUANT_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeCUSTO_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeTOTAL: TcxDBTreeListColumn;
    GridComposicaoTreeVALOR_POR_PECA: TcxDBTreeListColumn;
    GridComposicaoTreeFORMULA_PERFIL: TcxDBTreeListColumn;
    GridComposicaoTreeMedidas: TcxDBTreeListColumn;
    GridComposicaoTreeVALOR_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeTOTAL_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeDT_ALTERACAO: TcxDBTreeListColumn;
    GridComposicaoTreeTotalPeso: TcxDBTreeListColumn;
    GridComposicaoTreeCODPRODUTO_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreePRODUCAO: TcxDBTreeListColumn;
    GridComposicaoTreePERC_LUCRO_DESEJADO: TcxDBTreeListColumn;
    GridComposicaoTreePESO: TcxDBTreeListColumn;
    GridComposicaoTreeESTOQUE: TcxDBTreeListColumn;
    GridComposicaoTreeCODPRODUTO_TIPO: TcxDBTreeListColumn;
    GridComposicaoTreeCUSTO_ATUAL: TcxDBTreeListColumn;
    GridComposicaoTreeVALOR_ATUAL: TcxDBTreeListColumn;
    GridComposicaoTreePARENT: TcxDBTreeListColumn;
    GridComposicaoTreeCOMP_FORMULA: TcxDBTreeListColumn;
    GridComposicaoTreeLARG_FORMULA: TcxDBTreeListColumn;
    GridComposicaoTreeESPESSURA_FORMULA: TcxDBTreeListColumn;
    GridComposicaoTreeQTDADEPECA_FORMULA: TcxDBTreeListColumn;
    GridComposicaoTreeCOMP_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeLARG_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeESPESSURA_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeQTDADEPECA_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreeProdutoTipoClassificacao: TcxDBTreeListColumn;
    GridComposicaoTreeTEM_COMPOSICAO: TcxDBTreeListColumn;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtCheckListAssunto: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    btnAdicionarCheckList: TButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem10: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure DBTreeCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure Novo1Click(Sender: TObject);
    procedure NovoFilho1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Renomear1Click(Sender: TObject);
    procedure Producao_Roteiro_OrganogramaAfterInsert(DataSet: TDataSet);
    procedure Expandir1Click(Sender: TObject);
    procedure Encolher1Click(Sender: TObject);
    procedure btnGirarClick(Sender: TObject);
    procedure btnFluxoMinimizarClick(Sender: TObject);
    procedure btnMenuComposicaoClick(Sender: TObject);
    procedure GridPropriedadesTIPOEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridPropriedadesALINHAMENTOEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridPropriedadesCOREditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure Producao_Roteiro_OrganogramaBeforeEdit(DataSet: TDataSet);
    procedure btnTestarRoteiroClick(Sender: TObject);
    procedure GridPropriedadesHEIGHTEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridPropriedadesWIDTHEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure menuRoteiroPopup(Sender: TObject);
    procedure AbrirPerguntaVinculada1Click(Sender: TObject);
    procedure GridPropriedadesCODPRODUCAO_ROTEIRO_PERGUNTAÎPRODUCAO_ROTEIRO_PERGUNTAEditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure Producao_Roteiro_OrganogramaBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    FFrmProducao_Roteiro_Wizard: TFrmProducao_Roteiro_Wizard;
    function AddNode(AChild: Boolean): TdxOcNode;
  public
    function GetImageAlign(const AAlignName: string): TdxOcImageAlign;
    function GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
    function GetShape(const AShapeName: string): TdxOcShape;
  end;

var
  FrmProducao_Roteiro: TFrmProducao_Roteiro;

implementation

{$R *.dfm}

Uses
  wrPreencheLookup, DataModule, Classes.WR, Principal, CadProducao_Roteiro_Pergunta, ConProducao_Roteiro_Pergunta,
  wrFuncoes, wrForms;

procedure TFrmProducao_Roteiro.btnFluxoMinimizarClick(Sender: TObject);
begin
  inherited;
  DBTree.Zoom := Not DBTree.Zoom;
end;

procedure TFrmProducao_Roteiro.btnGirarClick(Sender: TObject);
begin
  inherited;
  DBTree.Rotated:= Not DBTree.Rotated;
end;

procedure TFrmProducao_Roteiro.btnMenuComposicaoClick(Sender: TObject);
begin
  inherited;
  LiGridPropriedades.Visible  := Not LiGridPropriedades.Visible;
  SplitterPropriedades.Visible:= Not SplitterPropriedades.Visible;
end;

procedure TFrmProducao_Roteiro.btnTestarRoteiroClick(Sender: TObject);
begin
  inherited;
  if Cadastro.State in dsEditModes then
    btnConfirmar.Click;
  TFrmProducao_Roteiro_Wizard.ExecutaWizard(FFrmProducao_Roteiro_Wizard , Cadastro.FieldByName('Codigo').AsInteger, WRCalcMemoria);
end;

procedure TFrmProducao_Roteiro.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Producao_Roteiro_Organograma.Close;
end;

procedure TFrmProducao_Roteiro.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Producao_Roteiro_Organograma.Open;
end;

procedure TFrmProducao_Roteiro.cxButton1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True, nil);
end;

procedure TFrmProducao_Roteiro.cxButton2Click(Sender: TObject);
begin
  inherited;
  LiDBTree.Visible  := Not LiDBTree.Visible;
  LiGridTree.Visible:= Not LiGridTree.Visible;
end;

procedure TFrmProducao_Roteiro.DBTreeCreateNode(Sender: TObject; Node: TdxOcNode);
begin
  inherited;
  with Node, Producao_Roteiro_Organograma do
  begin
    if FindField('width').AsInteger > 50 then
      Width := FindField('width').AsInteger;
    if FindField('height').AsInteger > 50 then
      Height := FindField('height').AsInteger;
    Shape := GetShape(FindField('tipo').AsString);
    Color := FindField('cor').AsInteger;
    Node.ChildAlign := GetNodeAlign(FindField('alinhamento').AsString);
    Node.ImageAlign := GetImageAlign(FindField('Imagem_alinhamento').AsString);
  end;
end;

procedure TFrmProducao_Roteiro.Encolher1Click(Sender: TObject);
begin
  inherited;
  DBTree.FullCollapse;
end;

procedure TFrmProducao_Roteiro.Excluir1Click(Sender: TObject);
var
  ANode: TdxOcNode;
begin
  ANode := DBTree.Selected;
  if ANode <> nil then
    DBTree.Delete(ANode);
end;

procedure TFrmProducao_Roteiro.Expandir1Click(Sender: TObject);
begin
  inherited;
  DBTree.FullExpand;
  GridTree.FullExpand;
end;

procedure TFrmProducao_Roteiro.FormCreate(Sender: TObject);
begin
  inherited;
//  PreencheImageComboBoxProduto_Wizard(edtClassificacao.Properties);
//  InitializeLookAndFeelState;

//  DBTree.ChAlignFieldName := 'Align_num';
//  DBTree.ImAlignFieldName := 'ImageAlign_num';
//  DBTree.ShapeFieldName := 'Type_num';
  DBTree.WidthFieldName  := 'WIDTH';
  DBTree.HeightFieldName := 'HEIGHT';
  DBTree.ColorFieldName := 'COR';
end;

procedure TFrmProducao_Roteiro.Novo1Click(Sender: TObject);
begin
  inherited;
  Producao_Roteiro_Organograma.DisableControls;
  try
    AddNode(False);
  finally
    Producao_Roteiro_Organograma.EnableControls;
  end;
end;

procedure TFrmProducao_Roteiro.NovoFilho1Click(Sender: TObject);
begin
  inherited;
  Producao_Roteiro_Organograma.DisableControls;
  try
    AddNode(True);
  finally
    Producao_Roteiro_Organograma.EnableControls;
  end;
end;

procedure TFrmProducao_Roteiro.Producao_Roteiro_OrganogramaAfterInsert(DataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := SQLProducao_RoterioMaxCodigo(TransaFD, Cadastro.FieldByName('CODIGO').AsString);
  try
    DataSet.FieldByName('CODIGO').AsInteger := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
  DataSet.FieldByName('CODPRODUCAO_ROTEIRO').Value := Cadastro.FieldByName('CODIGO').Value;
  Producao_Roteiro_Organograma.FieldByName('TIPO').Value := 'Round Rect';
  Producao_Roteiro_Organograma.FieldByName('WIDTH').Value  := 120;
  Producao_Roteiro_Organograma.FieldByName('HEIGHT').Value := 90;
  Producao_Roteiro_Organograma.FieldByName('COR').Value    := clGreen;
  Producao_Roteiro_Organograma.FieldByName('alinhamento').Value        := 'Center';
  Producao_Roteiro_Organograma.FieldByName('Imagem_alinhamento').Value := 'Top-Center';
end;

procedure TFrmProducao_Roteiro.Producao_Roteiro_OrganogramaBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
end;

procedure TFrmProducao_Roteiro.Producao_Roteiro_OrganogramaBeforePost(DataSet: TDataSet);
begin
  inherited;
  Producao_Roteiro_Organograma.FieldByName('RESPONSAVEL').AsString    := Usuario.Login;
  Producao_Roteiro_Organograma.FieldByName('DT_ALTERACAO').AsDateTime := Now;
end;

procedure TFrmProducao_Roteiro.Renomear1Click(Sender: TObject);
begin
  inherited;
  if DBTree.Selected <> nil then
    DBTree.ShowEditor;
end;

procedure TFrmProducao_Roteiro.AbrirPerguntaVinculada1Click(Sender: TObject);
begin
  inherited;
  // Abrir o cadastro da Pergunta
end;

function TFrmProducao_Roteiro.AddNode(AChild: Boolean): TdxOcNode;
begin
  if DBTree.Selected = nil then
    Result := DBTree.Add(nil, nil)
  else
  begin
    if AChild then
      Result := DBTree.AddChild(DBTree.Selected, nil)
    else
      Result := DBTree.Insert(DBTree.Selected, nil);
    DBTree.Selected.Expanded := True;
  end;
  Result.Text := 'Novo tópico';
  DBTree.Selected := Result;
end;

function TFrmProducao_Roteiro.GetNodeAlign(const AAlignName: string): TdxOcNodeAlign;
const
  AlignMap: array[TdxOcNodeAlign] of string = ('Left', 'Center', 'Right');
var
  AIndex: TdxOcNodeAlign;
begin
  Result := Low(TdxOcNodeAlign);
  for AIndex := Low(TdxOcNodeAlign) to High(TdxOcNodeAlign) do
    if SameText(AlignMap[AIndex], AAlignName) then
    begin
      Result := AIndex;
      Break;
    end;
end;

function TFrmProducao_Roteiro.GetShape(const AShapeName: String): TdxOcShape;
const
  ShapeMap: array[TdxOcShape] of string = ('Rectange', 'Round Rect', 'Ellipse', 'Diamond');
var
  AIndex: TdxOcShape;
begin
  Result := Low(TdxOcShape);
  for AIndex := Low(TdxOcShape) to High(TdxOcShape) do
    if SameText(ShapeMap[AIndex], AShapeName) then
    begin
      Result := AIndex;
      Break;
    end;
end;

procedure TFrmProducao_Roteiro.GridPropriedadesALINHAMENTOEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DSProducao_Roteiro_Organograma.State in dsEditModes then
    DBTree.Selected.ChildAlign := GetNodeAlign(DisplayValue);
end;

procedure TFrmProducao_Roteiro.GridPropriedadesCODPRODUCAO_ROTEIRO_PERGUNTAÎPRODUCAO_ROTEIRO_PERGUNTAEditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  VerificaSePodeAlteraDataSet(Producao_Roteiro_Organograma);
  if AButtonIndex = 0 then
    Producao_Roteiro_Organograma.FieldByName('CODPRODUCAO_ROTEIRO_PERGUNTA').Value:=ConsultaModalFiltro(TConsuProducao_Roteiro_Pergunta,'');
  if AButtonIndex = 1 then
    Producao_Roteiro_Organograma.FieldByName('CODPRODUCAO_ROTEIRO_PERGUNTA').Value:=CadastroModalChave(TFrmProducao_Roteiro_Pergunta, Producao_Roteiro_Organograma.FieldByName('CODPRODUCAO_ROTEIRO_PERGUNTA').Value);

  Producao_Roteiro_Organograma.Post;
  Producao_Roteiro_Organograma.Refresh;
  if Producao_Roteiro_Organograma.FieldByName('TIPO_PERGUNTA').AsString = 'Multipla Escolha' then
  begin
    DBTree.Selected.Shape := GetShape('Ellipse');
    DBTree.Selected.ImageIndex := 7;
    DBTree.Selected.Color := clYellow;
  end;
end;

procedure TFrmProducao_Roteiro.GridPropriedadesCOREditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DSProducao_Roteiro_Organograma.State in dsEditModes then
    DBTree.Selected.Color := DisplayValue;
end;

procedure TFrmProducao_Roteiro.GridPropriedadesHEIGHTEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DSProducao_Roteiro_Organograma.State in dsEditModes then
    DBTree.Selected.Height := DisplayValue;
end;

procedure TFrmProducao_Roteiro.GridPropriedadesTIPOEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DSProducao_Roteiro_Organograma.State in dsEditModes then
    DBTree.Selected.Shape := GetShape(DisplayValue);
end;

procedure TFrmProducao_Roteiro.GridPropriedadesWIDTHEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DSProducao_Roteiro_Organograma.State in dsEditModes then
    DBTree.Selected.Width := DisplayValue;
end;

procedure TFrmProducao_Roteiro.menuRoteiroPopup(Sender: TObject);
begin
  inherited;
  AbrirPerguntaVinculada1.Enabled:= Producao_Roteiro_Organograma.FieldByName('CODPRODUCAO_ROTEIRO_PERGUNTA').AsInteger>0;
end;

function TFrmProducao_Roteiro.GetImageAlign(const AAlignName: string): TdxOcImageAlign;
const
  AlignMap: array[TdxOcImageAlign] of string = (
   'None',
   'Left-Top', 'Left-Center', 'Left-Bottom',
   'Right-Top', 'Right-Center', 'Right-Bottom',
   'Top-Left', 'Top-Center', 'Top-Right',
   'Bottom-Left', 'Bottom-Center', 'Bottom-Right');
var
  AIndex: TdxOcImageAlign;
begin
  Result := Low(TdxOcImageAlign);
  for AIndex := Low(TdxOcImageAlign) to High(TdxOcImageAlign) do
    if SameText(AlignMap[AIndex], AAlignName) then
    begin
      Result := AIndex;
      Break;
    end;
end;

initialization
  RegisterClass(TFrmProducao_Roteiro);

end.
