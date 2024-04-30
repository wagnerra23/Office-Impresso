unit Frame_CadProduto_ProdutoSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCurrencyEdit, cxDBLookupComboBox, cxTimeEdit, cxContainer, Vcl.Menus,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, uWRCalculaConfiguracoes, System.Actions, Vcl.ActnList,
  cxEditRepositoryItems, Vcl.ExtDlgs, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar,
  dxCustomTileControl, dxTileControl, dxSpreadSheetReportDesigner, dxSpreadSheetCore, cxImageComboBox, cxDBEdit, uButtonFlat, dxRatingControl,
  dxDBRatingControl, cxSpinEdit, cxDBLabel, cxImage, cxCheckBox, cxDropDownEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, Vcl.Grids, Vcl.DBGrids, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxButtonEdit, Vcl.StdCtrls, cxButtons, cxLabel, cxMaskEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxLayoutControl, Frame_CadProduto_Mestre,
  dxUIAdorners, dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_ProdutoSimples_Frame = class(TFrame_Produto_Mestre)
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_ProdutoSimples_Frame: TFrmProduto_ProdutoSimples_Frame;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrmProduto_ProdutoSimples_Frame.FrameEnter(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmProduto_ProdutoSimples_Frame.Produto_TipoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if pos('where',Produto_Tipo.SQL.Text)>0 then
    Produto_Tipo.SQL.Add(' and ')
  else
    Produto_Tipo.SQL.Add(' where ');
  Produto_Tipo.SQL.Add('(CLASSIFICACAO = ''PRODUTO'')or(CLASSIFICACAO = ''SERVICO'')');
  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

procedure TFrmProduto_ProdutoSimples_Frame.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('PRODUTO', 'TEM_PRODUTO', nil,  'S');
      AddValorInicial(FNomeTabela , 'CODPRODUTO_TIPO', cbxCodProduto_Tipo, BuscaCodigoTipoPelaClassificacao('PRODUTO'));
    end;
  end;
end;

initialization
  RegisterClass(TFrmProduto_ProdutoSimples_Frame);
  RegisterFrameCad(Tag_Produto_ProdutoSimples, TFrmProduto_ProdutoSimples_Frame);

end.
