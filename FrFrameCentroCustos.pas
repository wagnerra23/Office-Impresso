unit FrFrameCentroCustos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel,
  cxClasses, dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxSpinEdit, cxTimeEdit,
  uWRFrameEventos, uWRFormataCamposDataSet, dxScrollbarAnnotations;

type
  TFrmFrameCentroCustos = class(TFrmFrameMestre)
    dxLayoutItem2: TdxLayoutItem;
    edtCentroÎCentro_TrabalhoÎDESCRICAO: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    edtCentroÎCentro_Trabalho: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtPerc: TcxCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    GridProduto_Tabela_Preco: TcxGrid;
    GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView;
    GridProduto_Tabela_PrecoLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    edtTempoEstimado: TcxTimeEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtValor: TcxCurrencyEdit;
    DSCentro_Custo: TDataSource;
    GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1PERCENTUAL: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1TEMPO: TcxGridDBColumn;
    dxLayoutItem10: TdxLayoutItem;
    edtRestante: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem11: TdxLayoutItem;
    TempoTotal: TcxTimeEdit;
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure FrameExit(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1PERCENTUALPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    procedure VerificaPercentual(var APercentual :Double);
  public
    { Public declarations }
  end;

var
  FrmFrameCentroCustos: TFrmFrameCentroCustos;

implementation

{$R *.dfm}
uses
  unitfuncoes, wrfuncoes;

{$REGION 'Adcionar/Remover'}


procedure TFrmFrameCentroCustos.btnAdicionarProdutoClick(Sender: TObject);
var
  APercentual : Double;
begin
  inherited;
  ValidaAlteraDataSet(DS.DataSet);
  if edtCentroÎCentro_Trabalho.Text = '' then
  begin
    edtCentroÎCentro_Trabalho.SetFocusWR;
    raise EWRException.Create('Informe o código do Centro de Trabalho');
  end;
  if (edtCentroÎCentro_Trabalho.Text <> '') and (edtCentroÎCentro_TrabalhoÎDESCRICAO.Caption = '') then
  begin
    edtCentroÎCentro_Trabalho.SetFocusWR;
    raise EWRException.Create('Centro de Trabalho Não Cadastrada');
  end;
  if edtPerc.Value < 0 then
  begin
    edtPerc.SetFocusWR;
    raise EWRException.Create('Percentual não Permitido!');
  end;
  if edtValor.Value < 0 then
  begin
    edtValor.SetFocusWR;
    raise EWRException.Create('Valor não Permitido!');
  end;
  APercentual := 0;
  DSCentro_Custo.DataSet.Open;
  VerificaPercentual(APercentual);

  if (APercentual + edtPerc.Value) > 100 then
  begin
    ShowMessage('Não pode passar de 100%');
    exit;
  end;

  DSCentro_Custo.DataSet.DisableControls;
  try
    if DSCentro_Custo.DataSet.Locate('CODCENTRO_TRABALHO', edtCentroÎCentro_Trabalho.Text,[]) then
    begin
      ShowMessage('Já existe um rateio aplicado para esse Centro de Trabalho');
      edtCentroÎCentro_Trabalho.SetFocusWR;
      Exit;
    end
    else
    begin
      DSCentro_Custo.DataSet.Insert;
      DSCentro_Custo.DataSet.FieldByName('CODFINANCEIRO').Value            := DS.DataSet.FieldByName('CODIGO').Value;
      DSCentro_Custo.DataSet.FieldByName('CODCENTRO_TRABALHO').Value       := edtCentroÎCentro_Trabalho.EditValue;
      DSCentro_Custo.DataSet.FieldByName('DESCRICAO').Value                := edtCentroÎCentro_TrabalhoÎDESCRICAO.EditValue;
      DSCentro_Custo.DataSet.FieldByName('PERCENTUAL').Value               := edtPerc.Value;
//      DSCentro_Custo.DataSet.FieldByName('TEMPO').Value                    := edtPerc.Value / 100 * TempoTotal.EditValue;// := edtTempoEstimado.Time;
//      DSCentro_Custo.DataSet.FieldByName('VALOR').Value                    := edtPerc.Value / 100 * DS.DataSet.FieldByName('VALOR').Value;
    end;
    DSCentro_Custo.DataSet.Post;
  finally
    DSCentro_Custo.DataSet.EnableControls;
  end;
  edtCentroÎCentro_Trabalho.SetFocusWR;
  edtCentroÎCentro_Trabalho.Clear;
  edtTempoEstimado.Time := 1;
  edtPerc.Clear;
  edtValor.Clear;
  APercentual := 0;
  VerificaPercentual(APercentual);
  edtRestante.Value := APercentual - 100;
end;

procedure TFrmFrameCentroCustos.btnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if DSCentro_Custo.DataSet.IsEmpty then
    Exit;
  ValidaAlteraDataSet(DS.DataSet);
  try
    DSCentro_Custo.DataSet.Delete;
  except
  end;
end;

{$ENDREGION}

procedure TFrmFrameCentroCustos.VerificaPercentual(var APercentual :Double);
begin
  DSCentro_Custo.DataSet.First;
  while not DSCentro_Custo.DataSet.EoF do
  begin
    APercentual := APercentual +  DSCentro_Custo.DataSet.FieldByName('PERCENTUAL').Value;
    DSCentro_Custo.DataSet.next;
  end;
end;

procedure TFrmFrameCentroCustos.FrameExit(Sender: TObject);
var
  ATotal : Double;
begin
  inherited;
  if DSCentro_Custo.DataSet.IsEmpty or (DS.DataSet.FieldByName('VALOR').Value) then
    Exit;
  ATotal := 0;
  DSCentro_Custo.DataSet.DisableControls;
  try
    DSCentro_Custo.DataSet.First;
    while not DSCentro_Custo.DataSet.Eof do
    begin
      ATotal := ATotal + DSCentro_Custo.DataSet.FieldByName('Valor').AsFloat;
      DSCentro_Custo.DataSet.Next;
    end;
    if ATotal <= 0 then
    begin
     // CanClose := False;
      ShowMessageWR('O valor total atribuído ao(s) Centro(s) de Custo deve ser maior que Zero.' + sLineBreak +
                    'Ajuste os valores no(s) Centro(s) de Custo.');
    end
    else if ATotal > DS.DataSet.FieldByName('VALOR').Value then
    begin
     // CanClose := False;
      ShowMessageWR('O valor total atribuído ao(s) Centro(s) de Custo é maior do que o valor do lançamento financeiro.' + sLineBreak +
                    'Ajuste os valores no(s) Centro(s) de Custo.');
    end;
  finally
    DSCentro_Custo.DataSet.EnableControls;
  end;
end;

procedure TFrmFrameCentroCustos.GridProduto_Tabela_PrecoDBTableView1PERCENTUALPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(DS.DataSet);
  if DSCentro_Custo.DataSet.State = dsBrowse then
    DSCentro_Custo.DataSet.Edit;
  DSCentro_Custo.DataSet.FieldByName('VALOR').Value := DisplayValue / 100 * DS.DataSet.FieldByName('VALOR').Value;
end;
end.
