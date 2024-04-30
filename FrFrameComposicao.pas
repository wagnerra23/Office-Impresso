unit FrFrameComposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  cxClasses, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxDBLabel,
  Vcl.ExtCtrls, cxLabel, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControl,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog, cxInplaceContainer, cxTLData, cxDBTL,
  cxCalendar, cxEditRepositoryItems, Data.DB, dxCore, dxCoreClasses, Principal, Generics.Collections,
  dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils,
  dxBarBuiltInMenu, dxSpreadSheet, uWRCalculaConfiguracoes, DataModule, System.Math,
  cxImageComboBox, wrConstantes, dxSpreadSheetCoreFormulas, uControleWR, dxSkinsDefaultPainters, dxLayoutLookAndFeels,
  uWRFormataCamposDataSet, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CadProducao_Roteiro_Wizard, dxSpreadSheetFormulaBar, FrFrameMestre, uWRFrameEventos, UCBase,
  Vcl.Grids, Vcl.DBGrids, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTimeEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmFrameComposicao = class(TFrmFrameMestre)
    ActionListFrameComposicao: TActionList;
    ActTreeListFullExpand: TAction;
    ActTreeListFullCollapse: TAction;
    ActTreeListCollapseChildren: TAction;
    ActTreeListExpandChildren: TAction;
    ImgListActionsFrameComposicao: TcxImageList;
    edtCompoCodProdutoÎProduto: TcxButtonEdit;
    BtnAdicionarCompo: TcxButton;
    BtnRemoverCompo: TcxButton;
    LbTituloFrameComposicao: TcxLabel;
    SpAcimaDoValor: TShape;
    edtCompoQTDADePeca: TcxDBButtonEdit;
    edtCompoValor: TcxDBCurrencyEdit;
    edtCompoTotal: TcxDBCurrencyEdit;
    BtnTreeListExpand: TcxButton;
    BtnTreeListCollapse: TcxButton;
    BtnMenuComposicao: TcxButton;
    liedtCompoCodProdutoÎProduto: TdxLayoutItem;
    LiBtnCompAdd: TdxLayoutItem;
    LiBtnCompRemover: TdxLayoutItem;
    LiLbTituloFrameComposicao: TdxLayoutItem;
    GrupoAdicionaComposicao: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    liedtCompoQTDADePeca: TdxLayoutItem;
    liedtCompoValor: TdxLayoutItem;
    liedtCompoTotal: TdxLayoutItem;
    LiBtnTreeListExpand: TdxLayoutItem;
    LiBtnTreeListCollapse: TdxLayoutItem;
    LiBtnMenuComposicao: TdxLayoutItem;
    LiGridComposicaoTree: TdxLayoutItem;
    GridComposicaoTree: TcxDBTreeList;
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
    GridComposicaoTreeVALOR: TcxDBTreeListColumn;
    GridComposicaoTreeCUSTO_RENDIMENTO: TcxDBTreeListColumn;
    GridComposicaoTreeTOTAL: TcxDBTreeListColumn;
    GridComposicaoTreeMedidas: TcxDBTreeListColumn;
    GridComposicaoTreeVALOR_RENDIMENTO: TcxDBTreeListColumn;
    GridComposicaoTreeTOTAL_RENDIMENTO: TcxDBTreeListColumn;
    GridComposicaoTreeDT_ALTERACAO: TcxDBTreeListColumn;
    GridComposicaoTreeORDEM: TcxDBTreeListColumn;
    GridComposicaoTreeCODPRODUTO_COMPOSICAO: TcxDBTreeListColumn;
    GridComposicaoTreePRODUCAO: TcxDBTreeListColumn;
    GridComposicaoTreeTIPO: TcxDBTreeListColumn;
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
    MenuComposicao: TPopupMenu;
    N6: TMenuItem;
    Expandirtudo1: TMenuItem;
    Expandirfilhos1: TMenuItem;
    Retrairtudo1: TMenuItem;
    Retrairfilhos1: TMenuItem;
    EditRepositorioFrameComposicao: TcxEditRepository;
    PropIconeComFormula: TcxEditRepositoryButtonItem;
    PropIconeSemFormula: TcxEditRepositoryButtonItem;
    RepEstiloFrameComposicao: TcxStyleRepository;
    EstiloSegoeSB14: TcxStyle;
    EstiloSegoe12: TcxStyle;
    EstiloSegoe14: TcxStyle;
    EstiloSegoe8: TcxStyle;
    EstiloGrupo: TcxStyle;
    EstiloGrupoInterno: TcxStyle;
    EstiloSegoe14Verde: TcxStyle;
    cxStyle1: TcxStyle;
    Quant: TcxStyle;
    EstiloCusto: TcxStyle;
    EstiloValor: TcxStyle;
    PmComposicao: TwrProdutoMemoria;
    DSPmComposicao: TDataSource;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    Duplicar1: TMenuItem;
    GridComposicaoTreeTEM_COMPOSICAO: TcxDBTreeListColumn;
    cxImageList1: TcxImageList;
    ActComposicaoAbrirCadastro: TAction;
    IrparaoCadastro1: TMenuItem;
    WRCalc: TWRCalculaConfiguracoes;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    LiGrupoComposicao: TdxLayoutGroup;
    DSComposicao: TDataSource;
    GrupoTopFrame: TdxLayoutGroup;
    MostrarEcxel1: TMenuItem;
    LiedtQtdaDePeca: TdxLayoutItem;
    edtQtdaDePeca: TcxDBCurrencyEdit;
    liedtComp: TdxLayoutItem;
    edtComp: TcxDBCurrencyEdit;
    liedtLarg: TdxLayoutItem;
    edtLarg: TcxDBCurrencyEdit;
    liedtEspessura: TdxLayoutItem;
    edtEspessura: TcxDBCurrencyEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    chkTem_Composicao: TcxDBCheckBox;
  	dxLayoutItem1233: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cbxUnidade: TcxDBComboBox;
    edtCompoDescricao: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    LibtnTestarRoteiro: TdxLayoutItem;
    btnTestarRoteiro: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnNovo: TcxButton;
    LiPerguntas: TdxLayoutGroup;
    LiSprFormula: TdxLayoutItem;
    SprFormula: TdxSpreadSheet;
    LiFormulaFuncao: TdxLayoutItem;
    dxSpreadSheetFormulaBar1: TdxSpreadSheetFormulaBar;
    liFormulas: TdxLayoutGroup;
    GrupoMateriais: TdxLayoutGroup;
    SpreadSheet_Referencia: TFDQuery;
    dxLayoutGroup4: TdxLayoutGroup;
    LiEdtCalc_Qpeso_Bruto: TdxLayoutItem;
    edtCalc_Qpeso_Bruto: TcxDBCurrencyEdit;
    LiedtCalc_Qpeso_Liquido: TdxLayoutItem;
    edtCalc_Qpeso_Liquido: TcxDBCurrencyEdit;
    N3: TMenuItem;
    N4: TMenuItem;
    dxLayoutItem7: TdxLayoutItem;
    btnMostrarSpr: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LicbxUnidade_Conversao: TdxLayoutItem;
    cbxUnidade_Conversao: TcxDBComboBox;
    LibtnAtualizarPrecos: TdxLayoutItem;
    btnAtualizarPrecos: TcxButton;
    pnlSprMemoria: TPanel;
    SprMemoria: TdxSpreadSheet;
    GridComposicaoTreeDESPERDICIO: TcxDBTreeListColumn;
    edtCompoQuant: TcxDBButtonEdit;
    LiedtRendimento: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    LiedtTotal: TdxLayoutItem;
    edtTotal: TcxDBCurrencyEdit;
    LiedtCusto_Total: TdxLayoutItem;
    edtCusto_Total: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxButton2: TcxButton;
    LibtnCustos: TdxLayoutItem;
    btnCustos: TcxButton;
    LibtnMarkup: TdxLayoutItem;
    btnMarkup: TcxButton;
    lichkTem_Wizard: TdxLayoutItem;
    chkTem_Wizard: TcxDBCheckBox;
    GridComposicaoTreecxDBTreeListPARENT: TcxDBTreeListColumn;
    liedtCompoCOMP: TdxLayoutItem;
    edtCompoCOMP: TcxDBButtonEdit;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    lIedtCompoLARG: TdxLayoutItem;
    edtCompoLARG: TcxDBButtonEdit;
    lIedtCompoESPESSURA: TdxLayoutItem;
    edtCompoESPESSURA: TcxDBButtonEdit;
    LiedtFormula: TdxLayoutItem;
    edtFormula: TcxDBComboBox;
    GridComposicaoTreeFORMULA: TcxDBTreeListColumn;
    dxLayoutItem12: TdxLayoutItem;
    cxButton3: TcxButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DSProdutoClone: TDataSource;
    procedure ActTreeListFullExpandExecute(Sender: TObject);
    procedure ActTreeListFullCollapseExecute(Sender: TObject);
    procedure ActTreeListCollapseChildrenExecute(Sender: TObject);
    procedure ActTreeListExpandChildrenExecute(Sender: TObject);
    procedure EdtCompCodProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure GridComposicaoTreeCustomDrawDataCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure GridComposicaoTreeCustomDrawIndentCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListIndentCellViewInfo; var ADone: Boolean);
    procedure GridComposicaoTreeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridComposicaoTreeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure GridComposicaoTreeGetCellHint(Sender: TcxCustomTreeList; ACell: TObject; var AText: string;
      var ANeedShow: Boolean);
    procedure GridComposicaoTreeCOMPGetDisplayText(Sender: TcxTreeListColumn; ANode: TcxTreeListNode;
      var Value: string);
    procedure GridComposicaoTreeLARGGetDisplayText(Sender: TcxTreeListColumn; ANode: TcxTreeListNode;
      var Value: string);
    procedure GridComposicaoTreeESPESSURAGetDisplayText(Sender: TcxTreeListColumn; ANode: TcxTreeListNode;
      var Value: string);
    procedure BtnRemoverCompoClick(Sender: TObject);
    procedure SprFormulaEditValueChanged(Sender: TdxSpreadSheetCustomView);
    procedure GridComposicaoTreeQUANT_RENDIMENTOValidateDrawValue(Sender: TcxTreeListColumn; ANode: TcxTreeListNode;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure GridComposicaoTreeEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ActComposicaoAbrirCadastroExecute(Sender: TObject);
    procedure MostrarEcxel1Click(Sender: TObject);
    procedure BtnAdicionarCompoClick(Sender: TObject);
    procedure btnTestarRoteiroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure dxLayoutGroup3TabChanged(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure WRFormataCamposDataSetsCarregaDataSets(Sender: TObject);
    procedure GridComposicaoTreeCODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure PmComposicaoBeforeClose(DataSet: TDataSet);
    procedure SprMemoriaEditValueChanged(Sender: TdxSpreadSheetCustomView);
    procedure btnMostrarSprClick(Sender: TObject);
    procedure cbxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure edtCompoQTDADePecaPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnAtualizarPrecosClick(Sender: TObject);
    procedure pnlSprMemoriaExit(Sender: TObject);
    procedure btnCustosClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnMarkupClick(Sender: TObject);
    procedure edtCompoQuantPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtTotalPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbxUnidade_ConversaoPropertiesChange(Sender: TObject);
    procedure edtCompoLARGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCompoESPESSURAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridComposicaoFORMULAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure edtFormulaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridComposicaoTreeQTDADEPECAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridComposicaoTreeCOMPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridComposicaoTreeLARGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridComposicaoTreeESPESSURAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCompoQTDADePecaPropertiesChange(Sender: TObject);
    procedure edtCompoCOMPPropertiesChange(Sender: TObject);
    procedure edtCompoLARGPropertiesChange(Sender: TObject);
    procedure edtCompoESPESSURAPropertiesChange(Sender: TObject);
    procedure GridComposicaoTreeEditing(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; var Allow: Boolean);
    procedure GridComposicaoTreeQTDADEPECAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtQtdaDePecaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCompPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtLargPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtEspessuraPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtCompoCOMPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure DSStateChange(Sender: TObject);
  private
    FFrmProducao_Roteiro_Wizard: TFrmProducao_Roteiro_Wizard;
    procedure VerificaSeMarcaTemWizard;
  public
    class procedure CarregaFrame(var AFrame: TFrmFrameComposicao; AParent: TWinControl; AWRCalc: TWRCalculaConfiguracoes;
      APmComposicao: TWRProdutoMemoria);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base_Produto, wrFuncoes, Classes.WR, wrConversao, StrUtils, wrFormataCampo, wrPreencheLookup,
  Excel, wrFuncoes_Office, wrForms, FrmRendimento, FrmRendimento_Formula, Frame_CadProduto_Mestre;

{ TFrmFrameComposicaoCabecalho }

class procedure TFrmFrameComposicao.CarregaFrame(var AFrame: TFrmFrameComposicao; AParent: TWinControl;
  AWRCalc: TWRCalculaConfiguracoes; APmComposicao: TWRProdutoMemoria);                         // Por tem dois Eventos?
begin
  if AFrame = nil then  // Create
  begin
    AFrame := TFrmFrameComposicao.Create(AParent, AWRCalc.DSProduto);
    AFrame.WRCalc            := AWRCalc;
    APmComposicao.DataSource := AFrame.DSPmComposicao;
    AFrame.PmComposicao      := APmComposicao;
    AFrame.wrFrameEventos.DoOnInicializar;         // Essa bosta é chamada o seguno evento
  end;
//  AFrame.DSComposicao.AutoEdit := AWRCalc.DSComposicao.AutoEdit;
end;

procedure TFrmFrameComposicao.wrFrameEventosInicializar(Sender: TObject);       // Por tem dois Eventos? iniciar e criar?
begin
  SpreadSheet_Referencia.Close;
  SpreadSheet_Referencia.ParamByName('SpreadSheet').AsString := 'CalcProduto';
  SpreadSheet_Referencia.Open;

  WRCalc.TreeListEmMemoria := False;
  WRCalc.TreeList   := GridComposicaoTree;
  WRCalc.SprFormula := SprFormula;

  PmComposicao.DataSource := DSPmComposicao;

  WRCalcMemoria.ProdutoMemoriaConfiguracao := PmComposicao;
  DSPmComposicao.DataSet := PmComposicao.Produto;
  DSComposicao.DataSet   := WRCalc.DBComposicao;
  PmComposicao.AbrirVazio;
  LibtnMarkup.Visible    := TConfig.ReadBoolean('MARKUP');
  LibtnCustos.Visible             := GetPodeVerCustos;
  GridComposicaoTreeCUSTO.Visible := GetPodeVerCustos;
  PreencheComboBoxUnidade(cbxUnidade);
  PreencheComboBoxUnidade(cbxUnidade_Conversao);
  ProdutoControleUnidades.AtualizaCaptionsLayoutControl(dxLayoutControl1);
  ProdutoControleUnidades.AtualizaCaptionsTreeView(GridComposicaoTree);
  GridComposicaoTreeCOMP_COMPOSICAO.Caption.Text:=GridComposicaoTreeCOMP.Caption.Text;
  GridComposicaoTreeLARG_COMPOSICAO.Caption.Text:=GridComposicaoTreeLARG.Caption.Text;
  GridComposicaoTreeESPESSURA_COMPOSICAO.Caption.Text:=GridComposicaoTreeESPESSURA.Caption.Text;
  GridComposicaoTreeQTDADEPECA_COMPOSICAO.Caption.Text:=GridComposicaoTreeQTDADEPECA.Caption.Text;
  DSProdutoClone.DataSet := PMComposicao.Composicao;
  DBGrid2.DataSource := DSProdutoClone;
  DBGrid1.DataSource := DSProdutoClone;

  if WRCalc.TipoCalculo = tcVenda then
  begin
    LibtnAtualizarPrecos.Visible := False;
    LibtnCustos.Visible := False;
    LibtnMarkup.Visible := False;
    dxLayoutItem9.Visible := False;
    dxLayoutItem12.Visible := False;
    lichkTem_Wizard.Visible := False;
    dxLayoutItem1.Visible := False;
    LiBtnMenuComposicao.Visible := False;
    LiedtCusto_Total.Visible := False;
    LiEdtCalc_Qpeso_Bruto.Enabled := False;
    LiedtCalc_Qpeso_Liquido.Enabled := False;
    LibtnCustos.Visible             := False;
    GridComposicaoTreeCUSTO.Visible := False;
    GridComposicaoTreeCUSTO.Options.Hidden := True;
    GridComposicaoTreeCUSTO_RENDIMENTO.Visible := False;
    GridComposicaoTreeCUSTO_RENDIMENTO.Options.Hidden := True;
  end;

end;

procedure TFrmFrameComposicao.ActComposicaoAbrirCadastroExecute(Sender: TObject);
begin
  if not GridComposicaoTree.DataController.DataSet.IsEmpty then
    TFrmProduto.Create(self).ShowCadastroModalItem(0,WRCalc.DBComposicao.FieldByName('CODPRODUTO').AsString);
end;

procedure TFrmFrameComposicao.ActTreeListCollapseChildrenExecute(Sender: TObject);
begin
  if GridComposicaoTree.FocusedNode <> nil then
    GridComposicaoTree.FocusedNode.Collapse(True);
end;

procedure TFrmFrameComposicao.ActTreeListExpandChildrenExecute(Sender: TObject);
begin
  if GridComposicaoTree.FocusedNode <> nil then
    GridComposicaoTree.FocusedNode.Expand(True);
end;

procedure TFrmFrameComposicao.ActTreeListFullCollapseExecute(Sender: TObject);
begin
  GridComposicaoTree.FullCollapse;
end;

procedure TFrmFrameComposicao.ActTreeListFullExpandExecute(Sender: TObject);
begin
  GridComposicaoTree.FullExpand;
end;

procedure TFrmFrameComposicao.BtnAdicionarCompoClick(Sender: TObject);
var
  AUnidade, AUnidadePai : TUnidade;
  AOrdem, QualOParentCorreto: Integer;
begin
//  btnMostrarSprClick(nil);
  SprMemoria.Visible:=False;
  if PmComposicao.Produto.IsEmpty then
    Exit;
  // FFrmFrameComposicao.GridComposicaoTree.Count
  // Aqui deve inserir as linhas novas e copiar as fórmulas
  AlteraDataSet(WRCalc.DBProduto);  // Verifica se pode
  AOrdem:= WRCalc.DBComposicao.RecordCount+1;
//  WRCalcMemoria.SprInserirLinhas(WRCalc.DBComposicao.RecordCount);    //+1   tem o produto principal, tem que ir para indice 1, se não colocar vai para o 0
//  WRCalcMemoria.DBProduto.Refresh;   //<-- Necessário para os Left Joins
//  WRCalcMemoria.DBComposicao.Refresh;   //<-- Necessário para os Left Joins
  WRCalc.DBComposicao.Insert;
//  liFormulas.MakeVisible;
  DSCopiarCamposIguais(PmComposicao.Produto, WRCalc.DBComposicao,
    ['DT_CADASTRO', 'CODIGO', 'PARENT', 'ORDEM', 'CODPRODUTO_COMPOSICAO']);

//  WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger  := AOrdem;
  if WRCalc.DBComposicao is TFDMemTable then
  begin
    WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger   := WRCalc.DBComposicao.RecordCount + 1;
    WRCalc.DBComposicao.FieldByName('CODPRODUTO_COMPOSICAO').AsString := WRCalc.DBProduto.FieldByName('CODIGO').AsString;
  end
  else
  if WRCalc.DBComposicao.FieldByName('CODIGO').IsNull then
  begin
    WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger   := GetProximoCodigo('PRODUTO_COMPOSICAO', TFDQuery(WRCalc.DBComposicao).Transaction);
    WRCalc.DBComposicao.FieldByName('CODPRODUTO_COMPOSICAO').AsString := WRCalc.DBProduto.FieldByName('CODIGO').AsString;
  end;

//  WRCalc.DBComposicao.FieldByName('PARENT').Clear;  // Diferença
  WRCalc.DBComposicao.FieldByName('PARENT').Clear;  // Diferença
  WRCalc.DBComposicao.FieldByName('ORDEM').AsInteger:=AOrdem;  // Diferença
  if Trim(PmComposicao.Produto.FieldByName('CODIGO').AsString) <> '' then
    WRCalc.DBComposicao.FieldByName('CODPRODUTO').Value := PmComposicao.Produto.FieldByName('CODIGO').Value;  // Diferença

 { WRCalc.SprAplicaFormula(cbxUnidade.Text,
                          cbxUnidade_Conversao.Text,
                          edtFormula.Text,
                          WRCalc.DBProduto.FieldByName('QTDADEPECA').Value,
                          WRCalc.DBProduto.FieldByName('COMP').Value,
                          WRCalc.DBProduto.FieldByName('LARG').Value,
                          WRCalc.DBProduto.FieldByName('ESPESSURA').Value,
                          AOrdem);
     }


  WRCalc.SprAplicaFormula(WRCalc.DBComposicao,
                          WRCalc.DBComposicao.FieldByName('FORMULA').AsString,
                          AOrdem,
                          WRCalc.DBProduto.FieldByName('UNIDADE').AsString,'','','','',       // Importante essa linha, tem que ser nil
                          True);
  // Nesse Momento não pode recopiar a Fórmula da composição quando muda a fórmula do principal

  QualOParentCorreto:= WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger;

  WRCalc.DBComposicao.Post;

  if WRCalc.DBComposicao is TFDMemTable then
    TFDMemTable(WRCalc.DBComposicao).IndexFieldNames := 'ORDEM';

  PmComposicao.Composicao.First;
  try
    if WRCalc.DBComposicao is TFDMemTable then
    begin
      InternalDataSetCopiaFilhosRecursivoSequencia(PmComposicao.Composicao, WRCalc.DBComposicao,
                            WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger,  // ÚnicaDiferenca achar o novo parent mestre
                            ['CODIGO', 'CODPRODUTO_COMPOSICAO'],
                            PmComposicao.TreeListComposicao.GetTreeList.Root,
                            WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger,     // Isso gera masi 1
                            WRCalc.DBProduto.FieldByName('CODIGO').Value);           // Vincula
    end else
    begin
  //    aqui deve ter a Nova Ordem FALTA APENAS A NOVA ORDEM
      DataSetCopiaRecursivoCamposIguais(PmComposicao.Composicao, WRCalc.DBComposicao,
                            WRCalc.DBComposicao.FieldByName('CODIGO').AsInteger, // ÚnicaDiferenca achar o novo parent mestre
                            ['CODIGO', 'CODPRODUTO_COMPOSICAO'],
                            PmComposicao.TreeListComposicao.GetTreeList);  // Isso ordena para passar uma única vez
     end;
  finally
  end;

  Application.ProcessMessages;
  if WRCalc.DBComposicao is TFDQuery then
    WRCalc.DBComposicao.Refresh   //<-- Necessário para os Left Joins
  else
  begin
    TFDMemTable(WRCalc.DBComposicao).IndexFieldNames := 'ORDEM';
    WRCalc.SprFechaMemTables;
  end;

  WRCalc.CalcBuild;
  WRCalc.SuperCalc;
  VerificaSeMarcaTemWizard;
  edtCompoCodProdutoÎProduto.Clear;
end;

procedure TFrmFrameComposicao.btnAtualizarPrecosClick(Sender: TObject);
begin
  inherited;
  // Atualizar Precos
  WRCalc.DBComposicao.Refresh;   //<-- Necessário para os Left Joins
  WRCalc.AtualizaOsPrecosComposicao(TFDQuery(DS.DataSet).Transaction);
end;

procedure TFrmFrameComposicao.btnCustosClick(Sender: TObject);
begin
  inherited;
  MostraColunaSpreadSheet(SprFormula, 'I1','I1');
  MostraColunaSpreadSheet(SprFormula, 'K1','K1');
end;

procedure TFrmFrameComposicao.btnMarkupClick(Sender: TObject);
Var
  ALinhaInicio: Integer;
begin
  inherited;
  btnCustosClick(nil);
  ALinhaInicio:= WRCalc.SprCriaReferenciaDS('LinhaProduto').Row + WRCalc.DBComposicao.RecordCount + 1;
//  20 pOSIÇÕES
  MostraLinhaSpreadSheet(SprFormula, 'A'+ ALinhaInicio.ToString ,'A'+ IntToStr(ALinhaInicio+20) );
end;

procedure TFrmFrameComposicao.btnMostrarSprClick(Sender: TObject);
begin
  inherited;
  SprMemoria.Visible := not SprMemoria.Visible;
  if SprMemoria.Visible then
    MostrarGridAbaixoDe(SprMemoria, edtCompoCodProdutoÎProduto);
end;

procedure TFrmFrameComposicao.BtnRemoverCompoClick(Sender: TObject);  // Isso aqui da problema, pois pode estar tirando alguma referencia de fórmula, tem que fazer na memória antes de poder retirar
begin
  if not WRCalc.DBComposicao.IsEmpty then
  begin
    AlteraDataSet(WRCalc.DBProduto);
//    liFormulas.MakeVisible;
    WRCalc.SprDeleteLinha; // Precisa calucar quantos nodes ele vai excluir, Quantos nodes filhos
//    WRCalc.CalcBuild;
    // So pode ser um ou outro, se não der com o de cima tentar esse
//    ShowMessage( GridComposicaoTree.FocusedNode.Count.ToString);

//    if WRCalc.DBComposicao is TFDQuery then
//      WRCalc.DBComposicao.Refresh   //<-- Necessário para os Left Joins
//    else
//      TFDMemTable(WRCalc.DBComposicao).IndexFieldNames := 'ORDEM';

      GridComposicaoTree.FullRefresh;
      WRCalc.SuperCalc;   // << Soma no produto principal
  end;
  VerificaSeMarcaTemWizard;
end;

procedure TFrmFrameComposicao.cbxUnidadePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if WRCalc.DBProduto.FindField('UNIDADE') <> nil then
    ProdutoAtualizaViewUnidade(WRCalc.DBProduto.FieldByName('UNIDADE').AsString, liedtComp, liedtLarg, liedtEspessura);
end;

procedure TFrmFrameComposicao.cbxUnidade_ConversaoPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ProdutoAtualizaViewUnidade(cbxUnidade_Conversao.Text, liedtCompoCOMP, liedtCompoLARG, lIedtCompoESPESSURA);
end;

procedure TFrmFrameComposicao.cxButton2Click(Sender: TObject);
begin
  inherited;
  MostraColunaSpreadSheet(SprFormula, 'X1','AA1');
end;

procedure TFrmFrameComposicao.cxButton3Click(Sender: TObject);
begin
  inherited;
  ds.DataSet.edit;
  WRCalc.CalcBuild(False);
  WRCalc.SprCopiarFormula;
end;

procedure TFrmFrameComposicao.DSStateChange(Sender: TObject);
begin
  inherited;
  if (DS.DataSet.State = DSEdit) and (WRCalc.DBProduto.State <> dsInactive) then
    AlteraDataSet(WRCalc.DBProduto);
end;

procedure TFrmFrameComposicao.btnNovoClick(Sender: TObject);  // Isso é show de bola, mais ja foi retirado a função de selecionar no grid.
begin                                                        // é fazer e desfazer, alguem vai tirar essa função novamente
  AlteraDataSet(WRCalc.DBProduto);
  WRCalc.DBComposicao.DisableControls;
  try
    DSPost(WRCalc.DBComposicao);
    WRCalc.DBComposicao.Insert;
    WRCalc.DBComposicao.FieldByName('DESCRICAO').AsString := 'Escolha o Produto';
    WRCalc.DBComposicao.FieldByName('TIPO').AsString      := 'Produto';
    WRCalc.DBComposicao.Post;
  finally
    WRCalc.DBComposicao.EnableControls;
  end;
end;

procedure TFrmFrameComposicao.dxLayoutGroup3TabChanged(Sender: TObject);  // Aqui quando traca de tela tem que dar refresh,
begin                                                                     // não seria aqui o problema, pois ja deveria estar calculado
  if liFormulas.ActuallyVisible then                                      // esse erro foi corrigido aqui, mais não é o evento adequado
  begin
    DS.DataSet.Edit;
    SprFormula.Refresh;
    SprFormula.SetFocus;
    WRCalc.CalcBuild;
  end;
  btnNovo.Enabled             := GrupoMateriais.ActuallyVisible;
  BtnTreeListExpand.Enabled   := GrupoMateriais.ActuallyVisible;
  BtnTreeListCollapse.Enabled := GrupoMateriais.ActuallyVisible;
  BtnMenuComposicao.Enabled   := GrupoMateriais.ActuallyVisible;
end;

procedure TFrmFrameComposicao.btnTestarRoteiroClick(Sender: TObject); // Esse modelo de produto, as rotas(etapas) da produção
begin                                                                 // Deveria poder colocar as etapase arrastar ela para o centro de trabanho correspondente. Ficaria show de bola
//  TFrmProducao_Roteiro_Wizard.ExecutaWizard(FFrmProducao_Roteiro_Wizard , DS.DataSet.FieldByName('CODPRODUCAO_ROTEIRO').AsInteger, WRCalcMemoria);
  TFrmProducao_Roteiro_Wizard.ExecutaWizard(FFrmProducao_Roteiro_Wizard , 0, WRCalcMemoria);   // Cade isso aqui? Isso é a parte fácil da composição, pois permitiria a escolha dos materiaís
{  WRCalc.DBProdutoMemoria.Locate('Codigo', Ds.DataSet.fieldByName('codigo').AsString, []);
//  DataSource1.DataSet:= WRCalc.DBProdutoMemoria;
//  WRCalc.DBProdutoMemoria.Refresh;
  WRCalc.DBProdutoMemoria.Filter:= 'codigo='+Ds.DataSet.fieldByName('codigo').AsString;
  WRCalc.DBProdutoMemoria.Filtered:= True;
  WRCalc.CalcBuild;   }
end;

procedure TFrmFrameComposicao.EdtCompCodProdutoPropertiesEditValueChanged(Sender: TObject);
var
  AUnidade : TUnidade;
begin
  inherited;
  WRCalcMemoria.SprFechaMemTables;
  PmComposicao.ProcuraProduto(Barras_Trata(edtCompoCodProdutoÎProduto.Text).Codigo, '', Empresa.FieldByName('CODIGO').AsInteger);
  // Aqui deveria fechar os clones, mais como sabe esta dentro da classe da memória sem acesso(Isso é uma merda)
  if Not PmComposicao.Produto.IsEmpty then
  begin
    WRCalcMemoria.CalcBuild;                // O Caralho do negócio precisa dar o build para funcionar, cacete, Dai tudo funciona
    // tem bixo aqui nesse código
    AlteraDataSet(PmComposicao.Produto);    // Sempre vai estar em edição, pois tem código na change da unidade
     // Isso é chamado quando seleciona o produto na primeira linha dessa rotina
   { WRCalcMemoria.DBProduto.FieldByName('QTDADEPECA_COMPOSICAO').Value := WRCalcMemoria.DBProduto.FieldByName('QTDADEPECA').Value;
    WRCalcMemoria.DBProduto.FieldByName('COMP_COMPOSICAO').Value       := WRCalcMemoria.DBProduto.FieldByName('COMP').Value;
    WRCalcMemoria.DBProduto.FieldByName('LARG_COMPOSICAO').Value       := WRCalcMemoria.DBProduto.FieldByName('LARG').Value;
    WRCalcMemoria.DBProduto.FieldByName('ESPESSURA_COMPOSICAO').Value  := WRCalcMemoria.DBProduto.FieldByName('ESPESSURA').Value;
    WRCalcMemoria.DBProduto.FieldByName('FORMULA').Value:= 'SEM FÓRMULA'; }
    WRCalcMemoria.SprAplicaFormula(WRCalcMemoria.DBProduto,
                                   'SEM FÓRMULA',
                                   0,
                                   WRCalc.DBProduto.FieldByName('UNIDADE').AsString,
                                   WRCalc.DBProduto.FieldByName('QTDADEPECA').AsString,
                                   WRCalc.DBProduto.FieldByName('COMP').AsString,
                                   WRCalc.DBProduto.FieldByName('LARG').AsString,
                                   WRCalc.DBProduto.FieldByName('ESPESSURA').AsString);

    /// oLHAR O CHANGE DA UNIDADE
//    WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', 1);  // Ja calcula tudo
  end;
  PosicionarControleAbaixoDe(SprMemoria, edtCompoCodProdutoÎProduto);  // Posiciona O SpeadSheet, tava posicionando uma coisa e não mostrava
  SprMemoria.Visible:= WRCalcMemoria.DBComposicao.RecordCount > 0;     // Deixa isso aparecendo Quero ver o Cálculo, bosta
end;

procedure TFrmFrameComposicao.edtCompoCOMPPropertiesChange(Sender: TObject);
begin
  inherited;
  edtCompoCOMP.Properties.Buttons[0].Visible:= StartsText('=', WRCalcMemoria.DBProduto.FieldByName('COMP_FORMULA').AsString);
  edtCompoCOMP.Properties.ReadOnly:=edtCompoCOMP.Properties.Buttons[0].Visible;
  if edtCompoCOMP.Properties.Buttons[0].Visible then
    edtCompoCOMP.Style.Color:= clWebYellow
  else
    edtCompoCOMP.Style.Color:= clWhite;
end;

procedure TFrmFrameComposicao.edtCompoCOMPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ValidaCampoMedidas('COMP', DisplayValue);
end;

procedure TFrmFrameComposicao.edtCompoESPESSURAPropertiesChange(
  Sender: TObject);
begin
  inherited;
  edtCompoESPESSURA.Properties.Buttons[0].Visible:= StartsText('=', WRCalcMemoria.DBProduto.FieldByName('ESPESSURA_FORMULA').AsString);
  edtCompoESPESSURA.Properties.ReadOnly:=Not edtCompoESPESSURA.Properties.Buttons[0].Visible;
  if edtCompoESPESSURA.Properties.Buttons[0].Visible then
    edtCompoESPESSURA.Style.Color:= clWebYellow
  else
    edtCompoESPESSURA.Style.Color:= clWhite;
end;

procedure TFrmFrameComposicao.edtCompoESPESSURAPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  WRCalcMemoria.ValidaCampoMedidas('ESPESSURA', DisplayValue);
end;

procedure TFrmFrameComposicao.edtCompoLARGPropertiesChange(Sender: TObject);
begin
  inherited;
  edtCompoLARG.Properties.Buttons[0].Visible:= StartsText('=', WRCalcMemoria.DBProduto.FieldByName('LARG_FORMULA').AsString);
  edtCompoLARG.Properties.ReadOnly:=edtCompoLARG.Properties.Buttons[0].Visible;
  if edtCompoLARG.Properties.Buttons[0].Visible then
    edtCompoLARG.Style.Color:= clWebYellow
  else
    edtCompoLARG.Style.Color:= clWhite;
end;

procedure TFrmFrameComposicao.edtCompoLARGPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ValidaCampoMedidas('LARG', DisplayValue);
end;

procedure TFrmFrameComposicao.edtCompoQTDADePecaPropertiesChange(
  Sender: TObject);
begin
  inherited;
  edtCompoQTDADePeca.Properties.Buttons[0].Visible:= StartsText('=', WRCalcMemoria.DBProduto.FieldByName('QTDADEPECA_FORMULA').AsString);
  edtCompoQTDADePeca.Properties.ReadOnly:=edtCompoQTDADePeca.Properties.Buttons[0].Visible;
  if edtCompoQTDADePeca.Properties.Buttons[0].Visible then
    edtCompoQTDADePeca.Style.Color:= clWebYellow
  else
    edtCompoQTDADePeca.Style.Color:= clWhite;
end;

procedure TFrmFrameComposicao.edtCompoQTDADePecaPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalcMemoria.ValidaCampoMedidas('QTDADEPECA', DisplayValue);
end;

procedure TFrmFrameComposicao.edtCompoQuantPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormRendimento_Formula.Abrir(edtCompoQuant, WRCalcMemoria, WRCalcMemoria.DBProduto, DS.DataSet);
end;

procedure TFrmFrameComposicao.edtCompPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('COMP', DisplayValue);
end;

procedure TFrmFrameComposicao.edtEspessuraPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('ESPESSURA', DisplayValue);
end;

procedure TFrmFrameComposicao.edtFormulaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  // Aqui eu tenho que fazer a fórmula na Unha, pois os valores estão no pai
  try
    WRCalcMemoria.SprAplicaFormula(WRCalcMemoria.DBProduto,
                                 DisplayValue,
                                 0,
                                 WRCalc.DBProduto.FieldByName('UNIDADE').AsString,
                                 WRCalc.DBProduto.FieldByName('QTDADEPECA').AsString,
                                 WRCalc.DBProduto.FieldByName('COMP').AsString,
                                 WRCalc.DBProduto.FieldByName('LARG').AsString,
                                 WRCalc.DBProduto.FieldByName('ESPESSURA').AsString);// mais 1 parametro  Com dataSet do Pai

  except
    ShowMessage('Algo errado ocorreu.');
    PmComposicao.Produto.FieldByName('FORMULA').AsString := 'SEM FÓRMULA';
    edtFormula.EditValue := 'SEM FÓRMULA';
  end;
end;

procedure TFrmFrameComposicao.edtLargPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('LARG', DisplayValue);
end;

procedure TFrmFrameComposicao.edtQtdaDePecaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if not (WRCalc.DBProduto.state in dsEditModes) then
    exit;
  WRCalc.ValidaCampoMedidas('QTDADEPECA', DisplayValue);
end;

procedure TFrmFrameComposicao.edtTotalPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarTotal(DisplayValue);
end;

procedure TFrmFrameComposicao.WRFormataCamposDataSetsCarregaDataSets(Sender: TObject);
begin
  inherited;
//  FormatarEdit(DecimalQuantidade, edtCompoQTDADePeca);
//
//  FormatarEdit(DecimalQuantidade, edtCompoComp);
//  FormatarEdit(DecimalQuantidade, edtCompoLarg);
//  FormatarEdit(DecimalQuantidade, edtCompoEspessura);
//  FormatarEdit(DecimalQuantidade, edtCompoQuant);

  FormatarEdit(DecimalFinanceiro, edtCompoValor);
  FormatarEdit(DecimalFinanceiro, edtCompoTotal);
end;

procedure TFrmFrameComposicao.GridComposicaoFORMULAPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
Var
  ANodePai : TcxTreeListNode;
  AIndice: Integer;
  AUnidadePai:String;
begin
  inherited;
//  Neste momento sempre pega por fórmula,

  if WRCalc.DBComposicao.FieldByName('PARENT').IsNull then
    AUnidadePai:=WRCalc.DBProduto.FieldByName('UNIDADE').AsString
  else
    AUnidadePai:=TreeListGetValorNode(GridComposicaoTree.FocusedNode.Parent,'UNIDADE');

  WRCalc.SprAplicaFormula(WRCalc.DBComposicao,
                          DisplayValue,
                          WRCalc.DBComposicao.FieldByName('ORDEM').AsInteger - ( GridComposicaoTree.FocusedNode.Parent.AbsoluteIndex + 1),
                          AUnidadePai, '','','','');
end;

procedure TFrmFrameComposicao.GridComposicaoTreeCODPRODUTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
 { if not (WRCalc.DBProduto.State in dsEditModes) then     // TODO : Isso deve funcionar igual a Compra.
    Exit;
  ControleFormsAbrirConsulta(TConsuProduto);}
end;

procedure TFrmFrameComposicao.GridComposicaoTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
const
  LCORES: TArray<TColor> = [clWebGhostWhite, clWebLavender, clWebBeige, clWebCornSilk, clWebIvory, clWebLavenderBlush];
Var
  AFormula : String;
  AIndice  : integer;
  AUnidade : TUnidade;
begin
  inherited;
  if not (AViewInfo.Column = GridComposicaoTreeQUANT) then
    ACanvas.Brush.Color := LCORES[AViewInfo.Node.Level mod 6];

  if (AViewInfo.Column.ItemIndex in [GridComposicaoTreeQTDADEPECA.ItemIndex,
                                     GridComposicaoTreeCOMP.ItemIndex,
                                     GridComposicaoTreeLARG.ItemIndex,
                                     GridComposicaoTreeESPESSURA.ItemIndex ]) then
  begin
    AFormula := TreeListGetValorNodeString(AViewInfo.Node, TcxDBTreeListColumn(AViewInfo.Column).DataBinding.FieldName + '_FORMULA');
    if StartsStr('=', AFormula) then
    begin
      AIndice:= WRCalc.LGetRelativeIndex(AViewInfo.Node,AViewInfo.Node.Parent);
      if (pos('R[-'+AIndice.ToString, AFormula)>0)or
         (pos('C[-'+AIndice.ToString, AFormula)>0) then
//      TreeListGetValorNode(GridProdutoTree.FocusedNode,'CODIGO');
        ACanvas.Brush.Color := clWebLightGreen
      else
        ACanvas.Brush.Color := clWebRed;
      if TreeListGetValorNodeString(AViewInfo.Node, 'FORMULA')= 'PERSONALIZADA' then
        ACanvas.Brush.Color := clWebYellow
    end;{ else
      ACanvas.Brush.Color := clWebLightGreen;  clWebYellow}
//     clWebViolet roxo
    // Se for fórmula padrão Roxo.

   {   if not AUnidade.CalcComprimento then
        GridComposicaoTreeCOMP.Styles.Content.Color:=clSilver;
      if not AUnidade.CalcLargura then
        GridComposicaoTreeLARG.Styles.Content.Color:=clSilver;
      if not AUnidade.CalcEspessura then
        GridComposicaoTreeESPESSURA.Styles.Content.Color:=clSilver;}
  end;
  if (AViewInfo.Column = GridComposicaoTreeORDEM) then
  begin
    if TreeListGetValorNodeAsFloat(AViewInfo.Node, 'ORDEM') <> AViewInfo.Node.AbsoluteIndex+1  then
    begin
//      wrcalc.LGetRelativeIndex(Sender,)
//      TreeListGetValorNode(GridProdutoTree.FocusedNode,'CODIGO');
      ACanvas.Brush.Color := clWebRed;
    end else
      ACanvas.Brush.Color := clWebLightGreen;
  end;

  if AViewInfo.Column = GridComposicaoTreeCUSTO then
  begin
    if not AViewInfo.Selected then
      ACanvas.Brush.Color := clCream;
  end;
  if (AViewInfo.Column = GridComposicaoTreeTOTAL_RENDIMENTO) then
  begin
    if not AViewInfo.Selected then
      ACanvas.Font.Color := $00C08000;
    ACanvas.Font.Style := [fsBold];
  end;

  if AViewInfo.Selected then
  begin
    ACanvas.Font.Color := $00484848;
    ACanvas.Font.Style := [fsBold];
  end;

end;

procedure TFrmFrameComposicao.GridComposicaoTreeCustomDrawIndentCell(Sender: TcxCustomTreeList;   // Ok, só pinta, não quero nem olhar
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndentCellViewInfo; var ADone: Boolean);              // tomara que funcione
const
  LCORES: TArray<TColor> = [clWebGhostWhite, clWebLavender, clWebBeige, clWebCornSilk, clWebIvory, clWebLavenderBlush];
var
  ACor: TColor;
  ARect: TRect;
begin
  inherited;
  AViewInfo.Draw(ACanvas);
  ACor := LCORES[AViewInfo.LevelNode.Level mod 6];
  if [ilVertUp, ilVertDown] * AViewInfo.Lines <> [] then
  begin
    ARect := AViewInfo.VertTreeLine;
    ACanvas.FillRect(ARect, ACor);
  end;
  if ilHorz in AViewInfo.Lines then
  begin
    ARect := AViewInfo.HorzTreeLine;
    ACanvas.FillRect(ARect, ACor);
  end;
  with AViewInfo do
  begin
    if Button then
      Painter.DrawScaledSmallExpandButton(ACanvas, GlyphRect, IsExpanded, ACor, ScaleFactor, ViewParams.Color);
  end;
  ADone := True;
end;

procedure TFrmFrameComposicao.GridComposicaoTreeDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if TcxDBTreeList(Sender).GetNodeAt(X, Y) = nil then // não copiar isso onde não for composição e produto , tipo venda compra produção
  begin                                               // nas opções antes de inserir, calculo em memória, mais lá ainda não aparece o trrelist~. Se Aparecer TreeList pode.
    AlteraDataSet(WRCalc.DBComposicao);
    WRCalc.DBComposicao.FieldByName('PARENT').Clear;  // TODO: Isso vai dar erro na Venda_Produto e Na Compra, lá o nível base tem preenchido
  end;
end;

procedure TFrmFrameComposicao.GridComposicaoTreeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
var
  AHitTest: TcxTreeListHitTest;
begin
  Accept := False; // Desativado até funcionar
  Exit;
  Accept := (Sender = Source);
  // Erro eminente, se deixar isso aqui tem que fazer tudo na memória do ecxel, depois copiar
  // Copiar sem calcular fechar e abrir tudo denovo. Show de bola, mais difícil de planejar.

  // TODO: Provavelmente é aqui que deve perguntar se quer criar um segundo produto como serviço, para poder agrupar os arrastados
  // Algo do tipo se não for Composição sim, deve duplicar

{  if Accept then
  begin
    AHitTest := GridComposicaoTree.HitTest;
    try
      if AHitTest.HitAtNode then
        Accept := TreeListGetValorNodeString(AHitTest.HitNode,'COMPOSICAO') = 'S';
    except
      Accept:=False;
    end;
  end;    }
end;

procedure TFrmFrameComposicao.GridComposicaoTreeEditing(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
Var
  ATemFormula: Boolean;
  AUnidade : TUnidade;
begin
  inherited;
  // Isso é bacana, se tiver valor calculado não deixa alterar tbm, muito difícil de gerenciar isso
  if MatchObj(AColumn, [GridComposicaoTreeQTDADEPECA, GridComposicaoTreeCOMP, GridComposicaoTreeLARG, GridComposicaoTreeESPESSURA]) then
  begin
//    Allow  := not ;
    ATemFormula:=StartsStr('=', TreeListGetValorNodeString(GridComposicaoTree.FocusedNode, TcxDBTreeListColumn(AColumn).DataBinding.FieldName + '_FORMULA'));
    if ATemFormula then
      GridComposicaoTree.Hint:='Esse campo tem fórmula e não pode ser alterado por aqui.'+ LineBreakWR +
                  'Fórmula : '+  TreeListGetValorNodeString(GridComposicaoTree.FocusedNode, TcxDBTreeListColumn(AColumn).DataBinding.FieldName + '_FORMULA')
    else
      GridComposicaoTree.Hint:='';
    AColumn.Properties.ReadOnly := ATemFormula;
    if AColumn.Properties.Buttons.Count>0 then
      AColumn.Properties.Buttons.Items[0].Visible := ATemFormula;
    if Not ATemFormula then
    begin
      AUnidade := ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(GridComposicaoTree.FocusedNode, 'UNIDADE'));
      if AColumn.ItemIndex =  GridComposicaoTreeCOMP.ItemIndex then
        AColumn.Properties.ReadOnly  := Not AUnidade.CalcComprimento;
      if AColumn.ItemIndex =  GridComposicaoTreeLARG.ItemIndex then
        AColumn.Properties.ReadOnly  := Not AUnidade.CalcLargura;
      if AColumn.ItemIndex =  GridComposicaoTreeESPESSURA.ItemIndex then
        AColumn.Properties.ReadOnly  := Not AUnidade.CalcEspessura;
    end;
  end;

end;

procedure TFrmFrameComposicao.GridComposicaoTreeEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  // Erro
  if WRCalc.DBComposicao.State in dsEditModes then
  begin
    AlteraDataSet(WRCalc.DBProduto);
    DSPost(WRCalc.DBComposicao); // Ok
  end;
  // Aqui tem que adicionar linha onde o node vai cair, recortar e colar, o grupo de linhas correnspondente
  // Isso vai fazer os cáculos de fórmulas funcionarem
  // * primeiro no excel depois
  // * Copiar tudo novamente com as fórmulas arrumadas e as posições da ordem corretas

//  ReorderTreeList(TcxDBTreeList(Sender));   // Isso aqui é uma bosta, não pode mecher na ordenação antes de recalcular as fórmulas antes
  ///   ATENÇÃO - Isso aqui é código bomba, vai funcionar quando não tem fórmulas dependentes deassa linha
end;

procedure TFrmFrameComposicao.GridComposicaoTreeCOMPGetDisplayText(Sender: TcxTreeListColumn;
  ANode: TcxTreeListNode; var Value: string);
begin
  if (StrToFloatDef(Value, 0) = 0 ) or not ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(ANode, 'UNIDADE')).CalcComprimento then
    Value := '-'; // Fica bonito
end;

procedure TFrmFrameComposicao.GridComposicaoTreeCOMPPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalC.ValidaCampoMedidasComposicao('COMP', DisplayValue);
end;

procedure TFrmFrameComposicao.GridComposicaoTreeESPESSURAGetDisplayText(Sender: TcxTreeListColumn;
  ANode: TcxTreeListNode; var Value: string);
begin
  if (StrToFloatDef(Value, 0) = 0 ) or not ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(ANode, 'UNIDADE')).CalcEspessura then
    Value := '-'; // Fica bonito
end;

procedure TFrmFrameComposicao.GridComposicaoTreeESPESSURAPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalC.ValidaCampoMedidasComposicao('ESPESSURA', DisplayValue);
end;

procedure TFrmFrameComposicao.GridComposicaoTreeLARGGetDisplayText(Sender: TcxTreeListColumn;
  ANode: TcxTreeListNode; var Value: string);
begin
  if (StrToFloatDef(Value, 0) = 0 ) or not ProdutoControleUnidades.GetUnidade(TreeListGetValorNodeString(ANode, 'UNIDADE')).CalcLargura then
    Value := '-'; // Fica bonito
end;

procedure TFrmFrameComposicao.GridComposicaoTreeLARGPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalC.ValidaCampoMedidasComposicao('LARG', DisplayValue);
end;

procedure TFrmFrameComposicao.GridComposicaoTreeGetCellHint(Sender: TcxCustomTreeList; ACell: TObject;  // Ok - Hint Bonitinho
  var AText: string; var ANeedShow: Boolean);
var
  ANode: TcxTreeListNode;

  procedure LAdd(const ACaption, ACampo: string);
  begin
    if TreeListGetValorNodeString(ANode, ACampo) = '' then
      Exit;
    if AText = '' then
      AText := 'Fórmulas aplicadas nas medidas' + sLineBreak;
    AText := AText + sLineBreak + ACaption + ': ' + TreeListGetValorNodeString(ANode, ACampo);
  end;
begin
  inherited;
  // Isso é legal
  if ACell is TcxTreeListEditCellViewInfo then
  begin
    {if TcxTreeListEditCellViewInfo(ACell).Column = GridComposicaoTreeQUANT_COMPOSICAO then
    begin
      ANode := TcxTreeListEditCellViewInfo(ACell).Node;
      if ANode = nil then
        Exit;
      AText := '';
      LAdd(ProdutoControleUnidades.CaptionComprimento.Descricao, 'COMP_FORMULA');
      LAdd(ProdutoControleUnidades.CaptionLargura.Descricao, 'LARG_FORMULA');
      LAdd(ProdutoControleUnidades.CaptionEspessura.Descricao, 'ESPESSURA_FORMULA');
      LAdd('Qtdade. Peça', 'QTDADEPECA_FORMULA');
      ANeedShow := (AText <> '');
    end;   }

    {if FFormVenda.VendaDT_FATURAMENTO.IsNull and ProdutoIsCustoComposicaoDiferente(ARecord) then
    begin
      AHintTextRect.Offset(0, 25);
      AHintText := 'O custo deste produto está diferente do cadastro. Você precisa atualizar os custos/valores';
    end;

    if FFormVenda.VendaDT_FATURAMENTO.IsNull then
    begin
      AHintText := ProdutoGetValorHintComposicaoDiferenca(ARecord, DS.DataSet);
      AHintTextRect.Offset(0, 25);
    end; }
  end;
end;

procedure TFrmFrameComposicao.GridComposicaoTreeQTDADEPECAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormRendimento_Formula.Abrir(TWinControl(Sender), WRCalc, WRCalc.DBComposicao, nil);
end;

procedure TFrmFrameComposicao.GridComposicaoTreeQTDADEPECAPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalC.ValidaCampoMedidasComposicao('QTDADEPECA', DisplayValue);
end;

procedure TFrmFrameComposicao.GridComposicaoTreeQUANT_RENDIMENTOValidateDrawValue(Sender: TcxTreeListColumn;
  ANode: TcxTreeListNode; const AValue: Variant; AData: TcxEditValidateInfo);
begin
  if (TreeListGetValorNodeString(ANode, 'COMP_FORMULA') <> '') or
     (TreeListGetValorNodeString(ANode, 'LARG_FORMULA') <> '') or
     (TreeListGetValorNodeString(ANode, 'ESPESSURA_FORMULA') <> '') or
     (TreeListGetValorNodeString(ANode, 'QTDADEPECA_FORMULA') <> '') then
  begin
    ImgListActionsFrameComposicao.GetImage(5, AData.ErrorIcon);
    AData.ErrorType := eetCustom;
  end;
end;

procedure TFrmFrameComposicao.MostrarEcxel1Click(Sender: TObject);
begin
  TFrmExcel.Abrir(WRCalc, 'CalcProduto');
end;

procedure TFrmFrameComposicao.PmComposicaoBeforeClose(DataSet: TDataSet);
begin
  inherited;
  WRCalcMemoria.SprFechaMemTables;
end;

procedure TFrmFrameComposicao.pnlSprMemoriaExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlSprMemoria);
end;

procedure TFrmFrameComposicao.SprFormulaEditValueChanged(Sender: TdxSpreadSheetCustomView);
begin
  AlteraDataSet(WRCalc.DBProduto);
  WRCalc.SprCopiarFormula;
  // Aqui deveria copiar o valor do produto caso, seja formado pela composição, O superCalc tem essa função e esta correta
  //TODO: Permissão -  A troca da formação de preço do produto deve ter senha e manter o histórico.
end;

procedure TFrmFrameComposicao.SprMemoriaEditValueChanged(Sender: TdxSpreadSheetCustomView);    // Por que isso aqui, pode mecher no spreedSheets de baixar??
begin
  AlteraDataSet(WRCalcMemoria.DBProduto);
  WRCalcMemoria.SprCopiarFormula;
end;

procedure TFrmFrameComposicao.VerificaSeMarcaTemWizard;
begin
  DSComposicao.DataSet.First;
  while not DSComposicao.DataSet.eof do
  begin
    if DSComposicao.DataSet.FieldByName('TEM_VARIACAO').AsString = 'S' then
    begin
      DS.DataSet.FieldByName('TEM_WIZARD').AsString := 'S';
      Exit;
    end;
    DSComposicao.DataSet.next;
  end;
  DS.DataSet.FieldByName('TEM_WIZARD').AsString := 'N';
end;

end.

