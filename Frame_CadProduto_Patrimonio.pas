unit Frame_CadProduto_Patrimonio;

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
  dxScrollbarAnnotations, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_Patrimonio_Frame = class(TFrame_Produto_Mestre)
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Patrimonio_Frame: TFrmProduto_Patrimonio_Frame;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrmProduto_Patrimonio_Frame.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldbyName('TEM_PATRIMONIO').AsString:='S';
end;

procedure TFrmProduto_Patrimonio_Frame.Produto_TipoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if pos('where',Produto_Tipo.SQL.Text)>0 then
    Produto_Tipo.SQL.Add(' and ')
  else
    Produto_Tipo.SQL.Add(' where ');
  Produto_Tipo.SQL.Add('(CLASSIFICACAO = ''PATRIMONIO'')');
  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

procedure TFrmProduto_Patrimonio_Frame.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('PRODUTO', 'TEM_PATRIMONIO', nil,  'S');
      AddValorInicial(FNomeTabela , 'CODPRODUTO_TIPO', cbxCodProduto_Tipo, BuscaCodigoTipoPelaClassificacao('PATRIMONIO'));
    end;
  end;
end;

initialization
  RegisterClass(TFrmProduto_Patrimonio_Frame);
  RegisterFrameCad(Tag_Produto_Patrimonio, TFrmProduto_Patrimonio_Frame);


end.
