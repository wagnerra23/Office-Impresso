unit Frame_CadProduto_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadProduto_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Data.DB, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxDBLookupComboBox, cxCurrencyEdit,
  cxTimeEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, ThdTimer, uWRCalculaConfiguracoes,
  System.Actions, Vcl.ActnList, cxEditRepositoryItems, Vcl.ExtDlgs,
  dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections,
  WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, cxDropDownEdit, dxStatusBar, dxCustomTileControl,
  dxTileControl, dxSpreadSheetReportDesigner, dxSpreadSheetCore, uButtonFlat,
  dxRatingControl, dxDBRatingControl, cxSpinEdit, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxDBLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxImage, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, cxTextEdit, Vcl.StdCtrls, cxButtons, cxButtonEdit,
  Vcl.Grids, Vcl.DBGrids, cxMemo, cxLabel, cxMaskEdit, dxLayoutControl;

type
  TFrame_Produto_Venda = class(TFrame_Produto_Mestre)
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Produto_Venda: TFrame_Produto_Venda;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_Produto_Venda.Produto_TipoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if pos('where',Produto_Tipo.SQL.Text)>0 then
    Produto_Tipo.SQL.Add(' and ')
  else
    Produto_Tipo.SQL.Add(' where ');
  Produto_Tipo.SQL.Add('(CLASSIFICACAO = ''PRODUTO'')or(CLASSIFICACAO = ''SERVICO'')');
  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

procedure TFrame_Produto_Venda.WREventosCadastroConfiguracao_Acoes(
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
  RegisterClass(TFrame_Produto_Venda);
  RegisterFrameCad(Tag_Produto_Venda, TFrame_Produto_Venda);

end.
