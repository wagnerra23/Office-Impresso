unit CadUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, Menus, DB, dxLayoutContainer,
  ImgList, IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, ExtCtrls, cxDBEdit, cxGridCustomTableView,
  cxGridDBTableView, StdCtrls, UCHist_WRGeral, UCHistDataset, Rotinas, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxCheckBox, cxGridTableView, UCBase, dxLayoutLookAndFeels, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxDBNavigator, cxButtons, dxLayoutControl, dxStatusBar, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  cxMaskEdit, cxDropDownEdit, frxClass, frxDBSet, dxUIAdorners, cxButtonEdit, fs_iinterpreter,
  System.Generics.Collections, cxLabel, cxCurrencyEdit, uWRFormataCamposDataSet, dxDateRanges, cxTimeEdit, dxCustomTileControl, dxTileControl, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmUnidade = class(TFrmCadM)
    lichkCalc_Comprimento: TdxLayoutItem;
    chkCalc_Comprimento: TcxDBCheckBox;
    dxLayoutGroup2: TdxLayoutGroup;
    lichkCalc_Largura: TdxLayoutItem;
    chkCalc_Largura: TcxDBCheckBox;
    liedtCalc_Esp: TdxLayoutItem;
    edtCalc_Esp: TcxDBCheckBox;
    liedtUnidade: TdxLayoutItem;
    edtUnidade: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtTem_SubUnidade: TcxDBCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    edtFormula_Avançada: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel1: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    dxLayoutGroup4: TdxLayoutGroup;
    GrupoSubUnidades: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    GridProduto_Centro_Trabalho: TcxGrid;
    GridProduto_Centro_TrabalhoView2: TcxGridDBTableView;
    GridProduto_Centro_TrabalhoLevel1: TcxGridLevel;
    liedtCalc_Espessura1: TdxLayoutItem;
    edtCalc_Espessura1: TcxDBCheckBox;
    liedtCalc_Larg: TdxLayoutItem;
    edtCalc_Larg: TcxDBCheckBox;
    liedtCalc_Comprimento: TdxLayoutItem;
    edtCalc_Comprimento: TcxDBCheckBox;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    lblExpressaoCalculada: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    lblExpressaoSimples: TcxLabel;
    dxLayoutItem11: TdxLayoutItem;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    dxTileControlItem1: TdxTileControlItem;
    Unidade_Subunidade: TFDQuery;
    DSUnidade_Subunidade: TDataSource;
    GridProduto_Centro_TrabalhoView2CODIGO: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2CODUNIDADE: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2SUBUNIDADE: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2QTDADEPECA: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2COMP: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2LARG: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2ESPESSURA: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2QUANT: TcxGridDBColumn;
    GridProduto_Centro_TrabalhoView2DESCRICAO: TcxGridDBColumn;
    chkPeso: TcxDBCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    GridProduto_Centro_TrabalhoView2ESPECIFICACAO: TcxGridDBColumn;
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtSubUnidadePropertiesChange(Sender: TObject);
    procedure dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure GridProduto_Centro_TrabalhoView2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  wrFuncoes, StrUtils, Classes.WR, wrFuncoes_Office, wrFormataCampo, UnitFuncoes, FrmRendimento_Formula, FrmUnidade_Teste_Conversao, FrmUnidadeSubunidade;

{$R *.dfm}

procedure TFrmUnidade.btnConfirmarClick(Sender: TObject);
begin
  Cadastro.FieldByName('UNIDADE').AsString := Trim(Cadastro.FieldByName('UNIDADE').AsString);

  inherited;
  TControleUnidades.ReleaseInstance;
end;

procedure TFrmUnidade.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Unidade_Subunidade.Open;
end;

procedure TFrmUnidade.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Unidade_Subunidade.Close;
end;

procedure TFrmUnidade.dxTileControlItem1Click(Sender: TdxTileControlItem);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  TFormUnidadeSubunidade.AbrirAdicionar(Cadastro.FieldByName('UNIDADE').AsString);
  Unidade_Subunidade.Refresh;
end;

procedure TFrmUnidade.edtSubUnidadePropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoSubUnidades.Visible:= (edtTem_SubUnidade.EditValue = 1);
  if GrupoSubUnidades.Visible then
    GrupoSubUnidades.MakeVisible;
end;

procedure TFrmUnidade.GridProduto_Centro_TrabalhoView2DblClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  TFormUnidadeSubunidade.AbrirEditar(Cadastro.FieldByName('UNIDADE').AsString, Unidade_Subunidade.FieldByName('CODIGO').AsInteger);
  Unidade_Subunidade.Refresh;
end;

initialization
  RegisterClass(TFrmUnidade);

end.
