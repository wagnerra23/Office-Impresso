unit FrFrameTabelaPreco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, UCBase, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, uWRCalculaConfiguracoes, uControleWR, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxDBEdit, dxLayoutLookAndFeels, Vcl.Buttons, uWRFrameEventos, uWRFormataCamposDataSet,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmFrameTabelaPreco = class(TFrmFrameMestre)
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtTabelaÎProduto_Tabela: TcxButtonEdit;
    edtDescricao: TdxLayoutItem;
    edtTabelaÎProduto_TabelaÎDESCRICAO: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    edtPercAcrescimo: TcxCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtPercDesconto: TcxCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtProdutoValorFinal: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    GridProduto_Tabela_Preco: TcxGrid;
    GridProduto_Tabela_PrecoDBTableView1: TcxGridDBTableView;
    GridProduto_Tabela_PrecoDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1DESCRICAO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1VALOR: TcxGridDBColumn;
    GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAO: TcxGridDBColumn;
    GridProduto_Tabela_PrecoLevel1: TcxGridLevel;
    dxLayoutItem9: TdxLayoutItem;
    chkManterDesconto: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    DSProduto: TDataSource;
    edtValorOriginal: TcxDBCurrencyEdit;
    liedtValorOriginal: TdxLayoutItem;
    GridProduto_Tabela_PrecoDBTableView1CODPRODUTO_TABELA: TcxGridDBColumn;
    dxLayoutItem3: TdxLayoutItem;
    cxLabel1: TcxLabel;
    btnOk: TBitBtn;
    dxLayoutItem4: TdxLayoutItem;
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure edtValorOriginalPropertiesChange(Sender: TObject);
    procedure edtProdutoValorFinalPropertiesChange(Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure edtPercDescontoPropertiesChange(Sender: TObject);
    procedure edtPercAcrescimoPropertiesChange(Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesChange(
      Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1VALORPropertiesChange(
      Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesChange(
      Sender: TObject);
    procedure GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesChange(
      Sender: TObject);
  private
    function CalculaValorFinal(AValorOriginal, APercDesconto, APercAcrescimo :Double) :Double;
    procedure CalculaDescontoAcrescimo(AValorFinal, AValorOriginal :Double;  var APercDesconto, APercAcrescimo :Double);
  public
    class procedure CarregaFrame(var AFrame: TFrmFrameTabelaPreco; AParent: TWinControl; ADSProduto, ADSTabelaPreco: TDataSource);
  end;

implementation

{$R *.dfm}

uses
  unitfuncoes;

class procedure TFrmFrameTabelaPreco.CarregaFrame(var AFrame: TFrmFrameTabelaPreco; AParent: TWinControl; ADSProduto,
  ADSTabelaPreco: TDataSource);
begin
  if AFrame = nil then
  begin
    AFrame := TFrmFrameTabelaPreco.Create(AParent, ADSTabelaPreco);
    AFrame.DSProduto.DataSet := ADSProduto.DataSet;
    AFrame.wrFrameEventos.DoOnInicializar;
  end;
  AFrame.DSProduto.AutoEdit := ADSProduto.AutoEdit;
  AFrame.DS.AutoEdit        := ADSProduto.AutoEdit;
end;

procedure TFrmFrameTabelaPreco.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
//  DS.AutoEdit := DSProduto.AutoEdit;// AProduto.DataSource.AutoEdit;
end;

{$REGION 'Calculo'}
/////////////////Procedure/funcao\\\\\\\\\\\\\\\\\\\\
procedure TFrmFrameTabelaPreco.CalculaDescontoAcrescimo(AValorFinal, AValorOriginal :Double;  var APercDesconto, APercAcrescimo :Double);
begin
  if AValorFinal < AValorOriginal  then
  begin
    APercAcrescimo := 0;
    APercDesconto := Rdt(PercDescontoAplicado(AValorOriginal, AValorFinal), -2);
  end else
  begin
    APercDesconto  := 0;
    APercAcrescimo := Rdt(PercAplicado(AValorFinal, AValorOriginal), -2);
  end;
end;

function TFrmFrameTabelaPreco.CalculaValorFinal(AValorOriginal, APercDesconto, APercAcrescimo :Double) :Double;
begin
  Result      :=  AValorOriginal
                 - (AValorOriginal * Perc(APercDesconto))
                 + (AValorOriginal * Perc(APercAcrescimo));
end;

///////////////EDITS\\\\\\\\\\\\\\\\\
procedure TFrmFrameTabelaPreco.edtPercAcrescimoPropertiesChange(Sender: TObject);
begin
  inherited;
  if edtPercAcrescimo.Focused then
  begin
    edtPercDesconto.Value := 0;
    edtProdutoValorFinal.Value := CalculaValorFinal(edtValorOriginal.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
  end;
end;

procedure TFrmFrameTabelaPreco.edtPercDescontoPropertiesChange(Sender: TObject);
begin
  inherited;
  if edtPercDesconto.Focused then
  begin
    edtPercAcrescimo.Value := 0;
    edtProdutoValorFinal.Value := CalculaValorFinal(edtValorOriginal.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
  end;
end;

procedure TFrmFrameTabelaPreco.edtProdutoValorFinalPropertiesChange(Sender: TObject);
var
  APercDesconto, APercAcrescimo :Double;
begin
  inherited;
  APercDesconto := edtPercDesconto.Value;
  APercAcrescimo := edtPercAcrescimo.Value;

  CalculaDescontoAcrescimo(edtProdutoValorFinal.Value, edtValorOriginal.Value, APercDesconto, APercAcrescimo);

  edtPercDesconto.Value  := APercDesconto;
  edtPercAcrescimo.Value := APercAcrescimo;
end;

procedure TFrmFrameTabelaPreco.edtValorOriginalPropertiesChange(Sender: TObject);
begin
  inherited;
  edtProdutoValorFinal.Value := CalculaValorFinal(edtValorOriginal.value, edtPercDesconto.Value, edtPercAcrescimo.Value);
end;

/////////////////GRID\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1PERC_ACRESCIMOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
  if DS.DataSet.State = dsBrowse then
    DS.DataSet.Edit;
  DS.DataSet.FieldByName('PERC_DESCONTO').AsFloat := 0;
  DS.DataSet.FieldByName('PERC_ACRESCIMO').AsFloat := strtofloatdef(DisplayValue,0);
  DS.DataSet.FieldByName('VALOR').AsFloat  := CalculaValorFinal(edtValorOriginal.value, DS.DataSet.FieldByName('PERC_DESCONTO').AsFloat, strtofloatdef(DisplayValue,0));{Acrescimo}
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1PERC_DESCONTOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
  if DS.DataSet.State = dsBrowse then
    DS.DataSet.Edit;
  DS.DataSet.FieldByName('PERC_ACRESCIMO').AsFloat := 0;
  DS.DataSet.FieldByName('PERC_DESCONTO').AsFloat := strtofloatdef(DisplayValue,0);
  DS.DataSet.FieldByName('VALOR').AsFloat  := CalculaValorFinal(edtValorOriginal.value, strtofloatdef(DisplayValue,0){Desconto}, DS.DataSet.FieldByName('PERC_ACRESCIMO').AsFloat);
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1TEM_MARGEM_FIXA_CONTIBUICAOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
  if DS.DataSet.State = dsBrowse then
    DS.DataSet.Edit;
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1VALORPropertiesChange(
  Sender: TObject);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
end;

procedure TFrmFrameTabelaPreco.GridProduto_Tabela_PrecoDBTableView1VALORPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  APercDesconto, APercAcrescimo :Double;
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
  if DS.DataSet.State = dsBrowse then
    DS.DataSet.Edit;
  APercDesconto  := DS.DataSet.FieldByName('PERC_DESCONTO').AsFloat;
  APercAcrescimo := DS.DataSet.FieldByName('PERC_ACRESCIMO').AsFloat;

  CalculaDescontoAcrescimo(DisplayValue, edtValorOriginal.Value, APercDesconto, APercAcrescimo);

  DS.DataSet.FieldByName('VALOR').AsFloat := strtofloatdef(DisplayValue,0);

  DS.DataSet.FieldByName('PERC_DESCONTO').AsFloat := APercDesconto;
  DS.DataSet.FieldByName('PERC_ACRESCIMO').AsFloat := APercAcrescimo;
end;

{$ENDREGION}

{$REGION 'Adicionar/Remover'}
procedure TFrmFrameTabelaPreco.btnAdicionarProdutoClick(Sender: TObject);
begin
  inherited;
  ValidaAlteraDataSet(DSProduto.DataSet);
 // AlteraDataSet(DS.DataSet);
  if edtTabelaÎProduto_Tabela.Text = '' then
  begin
    edtTabelaÎProduto_Tabela.SetFocusWR;
    raise EWRException.Create('Informe o código da Tabela');
  end;
  if (edtTabelaÎProduto_Tabela.Text <> '') and (edtTabelaÎProduto_TabelaÎDESCRICAO.Caption = '') then
  begin
    edtTabelaÎProduto_Tabela.SetFocusWR;
    raise EWRException.Create('Tabela Não Cadastrada');
  end;
  if edtProdutoValorFinal.Value < 0 then
  begin
    edtProdutoValorFinal.SetFocusWR;
    raise EWRException.Create('Valor não Permitido!');
  end;

  DS.DataSet.DisableControls;
  try
    if DS.DataSet.Locate('CODPRODUTO_TABELA', edtTabelaÎProduto_Tabela.Text,[]) then
    begin
      ShowMessage('Já existe um preço aplicado para essa tabela');
      edtTabelaÎProduto_Tabela.SetFocusWR;
      Exit;
    end
    else
    begin
      DS.DataSet.Insert;
      DS.DataSet.FieldByName('CODPRODUTO_TABELA').Value := edtTabelaÎProduto_Tabela.EditValue;
//      DS.DataSet.FieldByName('CODPRODUTO').AsString     := DSProduto.DataSet.FieldByName('CODIGO').AsString;
      if DSProduto.DataSet.Name = 'MemTableProduto' then //nivel de gambiarra alto
        DS.DataSet.FieldByName('DESCRICAO').AsString      := edtTabelaÎProduto_TabelaÎDESCRICAO.EditValue;
      DS.DataSet.FieldByName('VALOR').Value             := edtProdutoValorFinal.EditValue;
      DS.DataSet.FieldByName('DT_ALTERACAO').AsDateTime := now;
      DS.DataSet.FieldByName('PERC_DESCONTO').Value     := edtPercDesconto.EditValue;
      DS.DataSet.FieldByName('PERC_ACRESCIMO').Value    := edtPercAcrescimo.EditValue;
    //  DS.DataSet.FieldByName('ATIVO').Value             := 'S';
    end;
    if chkManterDesconto.Checked then
      DS.DataSet.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString := 'S'
    else
      DS.DataSet.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString := 'N';

    DS.DataSet.Post;
    if not (DSProduto.DataSet.Name = 'MemTableProduto') then  //nivel de gambiarra alto
      DS.DataSet.Refresh;

    DS.DataSet.Locate('CODPRODUTO_TABELA', edtTabelaÎProduto_Tabela.Text,[]);
  finally
    DS.DataSet.EnableControls;
  end;
  edtTabelaÎProduto_Tabela.SetFocusWR;
  edtTabelaÎProduto_Tabela.Clear;
  edtProdutoValorFinal.Clear;
  edtPercDesconto.Clear;
end;

procedure TFrmFrameTabelaPreco.btnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if DS.DataSet.IsEmpty then
    Exit;
  ValidaAlteraDataSet(DSProduto.DataSet);
 // AlteraDataSet(DS.DataSet);
  try
    DS.DataSet.Delete;  //INATIVAR
  except
  end;
end;
{$ENDREGION}
end.
