unit Frame_CadFinanceiro_Centro_Custo_Produto_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadFinanceiro_Centro_Custo_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxCurrencyEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet,
  UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase, dxLayoutLookAndFeels, cxClasses, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, dxStatusBar, cxLabel, cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TFrame_Financeiro_Centro_Custo_Produto_Categoria = class(TFrame_Financeiro_Centro_Custo_Mestre)
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    cxButtonEdit1: TcxButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    procedure btnAdicionarCentroCustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Financeiro_Centro_Custo_Produto_Categoria: TFrame_Financeiro_Centro_Custo_Produto_Categoria;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_Financeiro_Centro_Custo_Produto_Categoria.btnAdicionarCentroCustoClick(
  Sender: TObject);
begin
  inherited;
//
end;

initialization
  RegisterClass(TFrame_Financeiro_Centro_Custo_Produto_Categoria);
  RegisterFrameCad(Tag_Financeiro_Centro_Custo_Produto_Categoria, TFrame_Financeiro_Centro_Custo_Produto_Categoria);

end.
