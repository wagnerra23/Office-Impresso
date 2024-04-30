unit Frame_CadProduto_Variacao;

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
  cxGridCustomView, cxGrid, dxLayoutControl, frFrameVariacao, Frame_CadProduto_Mestre,
  dxScrollbarAnnotations, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrame_FrmProduto_Variacao = class(TFrame_Produto_Mestre)
    tiVariacao: TdxTileControlItem;
    tcTabsGroup3: TdxTileControlGroup;
    procedure tiVariacaoActivateDetail(Sender: TdxTileControlItem);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure Produto_TipoBeforeOpen(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure Produto_PrecoAfterPost(DataSet: TDataSet);
    procedure Produto_PrecoBeforeDelete(DataSet: TDataSet);
    procedure edtDescricaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    FVariacaoCodigosAlterados: TStringList;
    FFrmProduto_Frame: TFrame_Produto_Mestre;
  public
    FFrameVariacao : TFrmFrameVariacao;
    { Public declarations }
  end;

var
  Frame_FrmProduto_Variacao: TFrame_FrmProduto_Variacao;

implementation

{$R *.dfm}

Uses Base, unitFuncoes, Routes.Produto.Variacao, Tag.Form;

procedure TFrame_FrmProduto_Variacao.btnConfirmarClick(
  Sender: TdxTileControlItem);
begin
  try
    Routes.Produto.Variacao.AtualizaProdutosVinculados(FVariacaoCodigosAlterados, Cadastro, Produto_Preco);
    inherited;
  except
    on E:Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFrame_FrmProduto_Variacao.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldbyName('TEM_VARIACAO').AsString:='S';
end;

procedure TFrame_FrmProduto_Variacao.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto_Grade.Open;
end;

procedure TFrame_FrmProduto_Variacao.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produto_Grade.Close;
end;

procedure TFrame_FrmProduto_Variacao.edtDescricaoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  try
    Routes.Produto.Variacao.AdicionaTodosOsProdutosNaListaDeAlteracao(FVariacaoCodigosAlterados, Cadastro, Produto_Preco);
  except end;
end;

procedure TFrame_FrmProduto_Variacao.Produto_PrecoAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    Routes.Produto.Variacao.AdicionaProdutoNaListaDeAlteracao(FVariacaoCodigosAlterados, Cadastro, Produto_Preco);
  except end;
end;

procedure TFrame_FrmProduto_Variacao.Produto_PrecoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  try
    Routes.Produto.Variacao.RemoveProdutoDaListaDeAlteracao(FVariacaoCodigosAlterados, Produto_Preco);
  except end;
end;

procedure TFrame_FrmProduto_Variacao.Produto_TipoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if pos('where',Produto_Tipo.SQL.Text)>0 then
    Produto_Tipo.SQL.Add(' and ')
  else
    Produto_Tipo.SQL.Add(' where ');
  Produto_Tipo.SQL.Add('(CLASSIFICACAO = ''VARIACAO'')');
  Produto_Tipo.SQL.Add('order by DESCRICAO asc');
end;

procedure TFrame_FrmProduto_Variacao.tiVariacaoActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  TFrmFrameVariacao.CarregaFrame(FFrameVariacao, Sender, Ds, DSProduto_Grade, DSProdutoPreco, WRCalc, FVariacaoCodigosAlterados);
end;

procedure TFrame_FrmProduto_Variacao.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('PRODUTO', 'TEM_VARIACAO', nil,  'S');
      AddValorInicial(FNomeTabela , 'CODPRODUTO_TIPO', cbxCodProduto_Tipo, BuscaCodigoTipoPelaClassificacao('VARIACAO'));
    end;
  end;
end;

initialization
  RegisterClass(TFrame_FrmProduto_Variacao);
  RegisterFrameCad(Tag_Produto_Variacao, TFrame_FrmProduto_Variacao);


end.
