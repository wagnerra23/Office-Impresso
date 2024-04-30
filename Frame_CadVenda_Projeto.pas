unit Frame_CadVenda_Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadVenda_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, dxCore,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxCalendar, cxLabel,
  cxDropDownEdit, cxTL, cxImageComboBox, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxCurrencyEdit, cxTLdxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uWRNotaFiscal,
  uWRCalculaConfiguracoes, cxImageList, System.Actions, Vcl.ActnList,
  UCHist_WRGeral, dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet,
  UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxSpreadSheetFormulaBar,
  cxInplaceContainer, cxDBTL, cxTLData, cxDBLabel, cxCheckBox, cxDBEdit,
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxSpreadSheet, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxGridChartView, cxGridDBChartView, Base, Tag.Form;

type
  TFrame_Venda_Projeto = class(TFrame_Venda_Mestre)
    dxLayoutItem2: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2DT_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView2VENDA_TIPO: TcxGridDBColumn;
    cxGridDBTableView2TOTAL: TcxGridDBColumn;
    cxGridDBTableView2VOUTRO: TcxGridDBColumn;
    cxGridDBTableView2VDESC: TcxGridDBColumn;
    cxGridDBTableView2NOTAFISCAL: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    TabGeral: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1QUANT: TcxGridDBColumn;
    cxGridDBTableView1UNIDADE: TcxGridDBColumn;
    cxGridDBTableView1TEM_PRODUCAO_ENVIADO: TcxGridDBColumn;
    cxGrid2DBChartView1: TcxGridDBChartView;
    cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid2DBChartView1Series1: TcxGridDBChartSeries;
    cxGridLevel4: TcxGridLevel;
    dxLayoutItem7: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView3DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView3DATAPAGTO: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView3TIPO: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    GridProdutoTreeQUANTFATURADA: TcxDBTreeListColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Venda_Projeto: TFrame_Venda_Projeto;

implementation

{$R *.dfm}


initialization

RegisterClass(TFrame_Venda_Projeto);
RegisterFrameCad(Tag_Venda_Projeto, TFrame_Venda_Projeto);
end.
