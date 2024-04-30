unit FrFrameComposicao_Variacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameComposicao, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCore,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu,
  Vcl.Menus, cxContainer, cxEdit, cxCustomData, cxStyles,
  dxScrollbarAnnotations, cxTL, cxLabel, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxCurrencyEdit, cxImageComboBox, cxTLdxBarBuiltInMenu,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uWRCalculaConfiguracoes, cxEditRepositoryItems, cxImageList, System.Actions,
  Vcl.ActnList, uWRFormataCamposDataSet, uWRFrameEventos, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, dxSpreadSheetFormulaBar, cxDBEdit, cxCheckBox,
  cxInplaceContainer, cxDBTL, cxTLData, cxTextEdit, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxSpreadSheet, Vcl.ExtCtrls, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, frFrameSelecionarVariacao,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmFrameComposicao_Variacao = class(TFrmFrameComposicao)
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    GridComposicaoTreeVARIACAO: TcxDBTreeListColumn;
    DSProdutoPreco: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Produto_Preco: TFDQuery;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1PORCENTAGEM: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    cxGrid1DBTableView1DE: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO_VINCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1SKU: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    Produto_PrecoCODPRODUTO_PRINCIPAL: TStringField;
    procedure GridComposicaoTreeCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure FrameEnter(Sender: TObject);
    procedure FrameExit(Sender: TObject);
    procedure GridComposicaoTreeClick(Sender: TObject);
    procedure GridComposicaoTreeVARIACAOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame(var AFrame: TFrmFrameComposicao_Variacao; AParent: TWinControl;
                    AWRCalc: TWRCalculaConfiguracoes; APmComposicao: TWRProdutoMemoria);
  end;

var
  FrmFrameComposicao_Variacao: TFrmFrameComposicao_Variacao;

implementation

{$R *.dfm}

class procedure TFrmFrameComposicao_Variacao.CarregaFrame(var AFrame: TFrmFrameComposicao_Variacao; AParent: TWinControl;
  AWRCalc: TWRCalculaConfiguracoes; APmComposicao: TWRProdutoMemoria);
begin
  if AFrame = nil then  // Create
  begin
    AFrame := TFrmFrameComposicao_Variacao.Create(AParent, AWRCalc.DSProduto);
    AFrame.WRCalc            := AWRCalc;
    APmComposicao.DataSource := AFrame.DSPmComposicao;
    AFrame.PmComposicao      := APmComposicao;
    AFrame.wrFrameEventos.DoOnInicializar;
    AFrame.Produto_Preco.Open;
  end;
end;

procedure TFrmFrameComposicao_Variacao.FrameEnter(Sender: TObject);
begin
  inherited;
//  Produto_Preco.Open;
end;

procedure TFrmFrameComposicao_Variacao.FrameExit(Sender: TObject);
begin
  inherited;
//  Produto_Preco.Close;
end;

procedure TFrmFrameComposicao_Variacao.GridComposicaoTreeClick(Sender: TObject);
begin
  inherited;
//  ShowMessage(Produto_Preco.FieldByName('CODIGO').AsString);
end;

procedure TFrmFrameComposicao_Variacao.GridComposicaoTreeCustomDrawDataCell(
  Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  if (AViewInfo.Column = GridComposicaoTreeVARIACAO) then
//  begin
//
//  end;
  if TreeListGetValorNodeString(AViewInfo.Node, 'TEM_VARIACAO') = 'S' then
    ACanvas.Brush.Color := $0098FCFA
  else
    ACanvas.Brush.Color := clWebGhostWhite;
end;

procedure TFrmFrameComposicao_Variacao.GridComposicaoTreeVARIACAOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if TFrame_Selecionar_Variacao.Abrir(Self, Produto_Preco) then
  begin
    DSComposicao.DataSet.Edit;
    DSComposicao.DataSet.FieldByName('VALOR').AsCurrency := Produto_Preco.FieldByName('VALOR').AsCurrency;
    DSComposicao.DataSet.FieldByName('TOTAL').AsCurrency := Produto_Preco.FieldByName('VALOR').AsCurrency * DSComposicao.DataSet.FieldByName('QUANT').AsCurrency;
    DSComposicao.DataSet.FieldByName('DESCRICAO').AsString := Produto_Preco.FieldByName('PRODUTO').AsString;
    DSComposicao.DataSet.FieldByName('CODPRODUTO').AsString := Produto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString;
    DSComposicao.DataSet.FieldByName('TEM_VARIACAO').AsString := '';
    DSComposicao.DataSet.Post;
    WRCalc.CalcBuild;
    WRCalc.SuperCalc;
//    WRCalcMemoria.CalcBuild;
  end;
end;

end.
