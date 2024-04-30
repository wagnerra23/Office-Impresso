unit frFrameCustos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxContainer,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxCurrencyEdit, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutControl, dxLayoutLookAndFeels,
  uControleWR, cxDataControllerConditionalFormattingRulesManagerDialog, IBX.IBCustomDataSet, IBX.IBQuery, cxRadioGroup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLabel, cxDBEdit, Vcl.ExtCtrls, dxDateRanges, uWRCalculaConfiguracoes, FrFrameMestre,
  cxImageComboBox, dxSkinsDefaultPainters, uWRFrameEventos, UCBase, System.ImageList, Vcl.ImgList,
  uWRFormataCamposDataSet, DataModule, FireDAC.Stan.Async, FireDAC.DApt,
  cxGridChartView, cxGridDBChartView, dxScrollbarAnnotations, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrameCustos = class(TFrmFrameMestre)
    DSCustoExtra: TDataSource;
    cxLabel18: TcxLabel;
    EdtMargem: TcxDBCurrencyEdit;
    dxLayoutItem108: TdxLayoutItem;
    GrupoTabCusto: TdxLayoutGroup;
    LiCusctoComposicao: TdxLayoutGroup;
    dxLayoutGroup59: TdxLayoutGroup;
    GrupoConfiguracaoVenda: TdxLayoutGroup;
    LiEdtMargem: TdxLayoutItem;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    LiValor: TdxLayoutItem;
    EdtValor: TcxDBCurrencyEdit;
    edtCalc_VAnterior_Custo: TcxDBCurrencyEdit;
    liedtCalc_VAnterior_Custo: TdxLayoutItem;
    liedtCusto: TdxLayoutItem;
    edtCusto: TcxDBCurrencyEdit;
    btnBuscaCustoAnterior: TcxButton;
    libtnBuscaCustoAnterior: TdxLayoutItem;
    GrupoCustoAnterior: TdxLayoutGroup;
    WRCalc: TWRCalculaConfiguracoes;
    liedt_VCompra_Total: TdxLayoutItem;
    edt_VCompra_Total: TcxDBCurrencyEdit;
    liedtCalc_QAnterior_Estoque: TdxLayoutItem;
    edtCalc_QAnterior_Estoque: TcxDBCurrencyEdit;
    GrupoCustoUnitario: TdxLayoutGroup;
    liedtValor_Compra: TdxLayoutItem;
    edtValor_Compra: TcxDBCurrencyEdit;
    GrupoRendimentoCompra: TdxLayoutGroup;
    lichkPode_Ser_Comprado: TdxLayoutItem;
    chkPode_Ser_Comprado: TcxDBCheckBox;
    liGurpoCusto: TdxLayoutGroup;
    lichkPode_Ser_Vendido: TdxLayoutItem;
    chkPode_Ser_Vendido: TcxDBCheckBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem5: TdxLayoutItem;
    lichkTem_Margem_Fixa_Contribuicao: TdxLayoutItem;
    chkTem_Margem_Fixa_Contribuicao: TcxDBCheckBox;
    lichkPode_Atualizar_Markup: TdxLayoutItem;
    chkPode_Atualizar_Markup: TcxDBCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    edtvVenda_Custo_Minimo: TcxDBCurrencyEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    LibtnCopiaCustoCompra: TdxLayoutItem;
    btnCopiaCustoCompra: TcxButton;
    lblCalc_VCompra_Extra: TcxDBButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    LiedtRendimento: TdxLayoutItem;
    edtRendimento: TcxDBButtonEdit;
    LiedtCalc_PMarkup: TdxLayoutItem;
    edtCalc_PMarkup: TcxDBButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    chkPode_Alterar_Estoque: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem4: TdxLayoutItem;
    edtCalc_Venda_Minimo_Quant: TcxDBCurrencyEdit;
    LiedtLucroPrevisto: TdxLayoutItem;
    edtLucroPrevisto: TcxDBCurrencyEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    GrupoCentroCusto: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    edtCentro_CustoÎCentro_Custo: TcxButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    edtPercentual: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    btnAdicionarCentroCusto: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    btnRemoverCentroCusto: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    DSQuantVenda: TDataSource;
    QuantVenda: TFDQuery;
    QuantVendaVENDAS: TFloatField;
    QuantVendaCODIGO: TStringField;
    QuantVendaDESCRICAO: TStringField;
    QuantVendaTOTAL: TFloatField;
    QuantVendaDIV: TFloatField;
    QuantVendaMAX: TStringField;
    cxGrid2DBChartView1: TcxGridDBChartView;
    cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid2DBChartView1Series1: TcxGridDBChartSeries;
    btnUltimaCompra: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    edtUnidadeRendimento: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    procedure btnBuscaCustoAnteriorClick(Sender: TObject);
    procedure edtvVenda_Custo_MinimoPropertiesChange(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure btnCopiaCustoCompraClick(Sender: TObject);
    procedure edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCalc_VAnterior_CustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtCalc_QAnterior_EstoquePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtCustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtCalc_PMarkupPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure lblCalc_VCompra_ExtraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtRendimentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCalc_PMarkupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnUltimaCompraClick(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
  public
    class procedure CarregaFrame(var AFrame: TFrameCustos; AParent: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, StrUtils, Math, wrConversao, wrConstantes, wrFuncoes, wrPreencheLookup, wrFuncoes_Office, FrmExtras,
  FrmRendimento, FrmMarkup, Classes.WR, frFrameLucro, Base, Tag.APP;


  // Esse evento esta em:  CUSTO_FABR, CUSTO_ANTERIOR, CUSTO, MARKUP, PERC_MARGEM_CONTRIBUICAO, VALOR,
  // PERC_LUCRO_DESEJADO

class procedure TFrameCustos.CarregaFrame(var AFrame: TFrameCustos; AParent: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameCustos.Create(AParent, AWRCalc.DSProduto);
    AFrame.WRCalc := AWRCalc;
    AFrame.wrFrameEventos.DoOnInicializar;
  end;
end;

procedure TFrameCustos.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
  // Não deve ter uma função escondida aqui quando atribui tem códigos colcando os eventos
  DS.AutoEdit := WRCalc.DSProduto.AutoEdit;
  GrupoCustoAnterior.Visible:= (WRCalc.TipoCalculo = tcCompra)and (TConfig.ReadBoolean('CUSTO_MEDIO_PONDERADO'));
  LibtnCopiaCustoCompra.Visible:= (WRCalc.TipoCalculo = tcCadastro);

  // Tem que sumir tudo do Markup
//  LiedtCalc_PMarkup.Visible   := TConfig.ReadBoolean('MARKUP');

  // Tem que sumir o Campo Rendimento
//  LiedtRendimento.Visible    := TConfig.ReadBoolean('NF_ENTRADA_RENDIMENTO');

  GrupoCentroCusto.Visible := False;
end;

{$REGION 'Change Cuidado'}
procedure TFrameCustos.edtCalc_PMarkupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormMarkup.Abrir(TWinControl(Sender), WRCalc);
end;

procedure TFrameCustos.edtCalc_PMarkupPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarCALC_PMARKUP(DisplayValue);
end;

procedure TFrameCustos.edtCalc_QAnterior_EstoquePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarEstoque_Anterior(DisplayValue);
end;

procedure TFrameCustos.edtCalc_VAnterior_CustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarCusto_Anterior(DisplayValue);
end;

procedure TFrameCustos.edtCustoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarCusto(DisplayValue);
end;

procedure TFrameCustos.btnCopiaCustoCompraClick(Sender: TObject);
begin
  inherited;
  AlteraDataSet(WRCalc.DBProduto);
  if StrToIntDef(WRCalc.DBProduto.FieldByName('QUANT_RENDIMENTO').AsString, 1) > 0 then
    WRCalc.DBProduto.FieldByName('CUSTO').AsFloat:=WRCalc.DBProduto.FieldByName('CALC_VCOMPRA_TOTAL').AsFloat/WRCalc.DBProduto.FieldByName('QUANT_RENDIMENTO').AsFloat
  else
    WRCalc.DBProduto.FieldByName('CUSTO').AsFloat:=WRCalc.DBProduto.FieldByName('CALC_VCOMPRA_TOTAL').AsFloat;
  WRCalc.CalcBuild;
  WRCalc.SprCopiarFormula;
end;

procedure TFrameCustos.btnUltimaCompraClick(Sender: TObject);
begin
  inherited;

end;

{$ENDREGION}

// Ok - 24/06/2020
procedure TFrameCustos.btnBuscaCustoAnteriorClick(Sender: TObject);
begin
  AlteraDataSet(WRCalc.DBProduto);
  NF_EntradaProdutoCarregaCustoEstoqueAnterior(WRCalc.DBProduto,  StrCodigoToCodEmpresa(DS.DataSet.FieldByName('CODNF_ENTRADA').AsString));
  WRCalc.CalcBuild;
  WRCalc.SprCopiarFormula;
end;

// Precisa de uma função para validar as regras de exclusão
procedure TFrameCustos.EdtMargemPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarMargem(DisplayValue);
end;

procedure TFrameCustos.edtRendimentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormRendimento.Abrir(TWinControl(Sender), WRCalc, WRCalc.DBProduto);
end;

procedure TFrameCustos.EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarValor(DisplayValue);
end;

procedure TFrameCustos.edtValor_CompraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarValor_Compra(DisplayValue);
end;

procedure TFrameCustos.edtvVenda_Custo_MinimoPropertiesChange(Sender: TObject);
begin
  if ds.DataSet.FieldByName('CALC_VLUCRO').AsFloat < 0 then
  begin
    edtLucroPrevisto.Style.TextColor          := clRed;
    edtvVenda_Custo_Minimo.Style.TextColor  := clRed;
  end
  else if ds.DataSet.FieldByName('VALOR').AsFloat < ds.DataSet.FieldByName('VALOR_VENDA_MINIMO').AsFloat then
  begin
    edtLucroPrevisto.Style.TextColor          := $000080FF;
    edtvVenda_Custo_Minimo.Style.TextColor  := $000080FF;
  end else
  begin
    edtLucroPrevisto.Style.TextColor          := $00676767;
    edtvVenda_Custo_Minimo.Style.TextColor  := clGreen;

  end;
end;

procedure TFrameCustos.FrameEnter(Sender: TObject);
begin
  inherited;
  LiedtCalc_PMarkup.Visible :=  AWR_APP[TagAPP_Markup].Ativo;
  GrupoRendimentoCompra.Visible := AWR_APP[TagAPP_Compra].Ativo;
  dxLayoutItem3.Visible := AWR_APP[TagAPP_Estoque].Ativo;
end;

procedure TFrameCustos.lblCalc_VCompra_ExtraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFormExtras.Abrir(TWinControl(Sender), WRCalc, ds.DataSet);
end;

end.
