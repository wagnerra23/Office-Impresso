unit Frame_CadProduto_MateriaPrima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxDBLookupComboBox, cxCurrencyEdit,
  cxTimeEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, uWRCalculaConfiguracoes,
  System.Actions, Vcl.ActnList, cxEditRepositoryItems, Vcl.ExtDlgs,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections,
  WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxCustomTileControl, dxTileControl,
  dxSpreadSheetReportDesigner, dxSpreadSheetCore, uButtonFlat, dxRatingControl,
  dxDBRatingControl, cxSpinEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxDBLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxImage, cxCheckBox, cxTextEdit, cxDropDownEdit,
  cxMemo, cxLookupEdit, cxDBLookupEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxButtonEdit, dxLayoutControl, Vcl.Grids, Vcl.DBGrids, Frame_CadProduto_Mestre,
  dxScrollbarAnnotations, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_MateriaPrima_Frame = class(TFrame_Produto_Mestre)
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_MateriaPrima_Frame: TFrmProduto_MateriaPrima_Frame;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrmProduto_MateriaPrima_Frame.Produto_TipoBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if pos('where',Produto_Tipo.SQL.Text)>0 then
    Produto_Tipo.SQL.Add(' and ')
  else
    Produto_Tipo.SQL.Add(' where ');
  Produto_Tipo.SQL.Add('(CLASSIFICACAO = ''MATERIAPRIMA'')');
  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

procedure TFrmProduto_MateriaPrima_Frame.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('PRODUTO', 'TEM_MATERIAPRIMA', nil,  'S');
      AddValorInicial(FNomeTabela , 'CODPRODUTO_TIPO', cbxCodProduto_Tipo, BuscaCodigoTipoPelaClassificacao('MATERIAPRIMA'));
    end;
  end;
end;

initialization
  RegisterClass(TFrmProduto_MateriaPrima_Frame);
  RegisterFrameCad(Tag_Produto_MateriaPrima, TFrmProduto_MateriaPrima_Frame);


end.
