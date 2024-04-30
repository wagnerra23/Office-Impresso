unit FrmUnidadeSubunidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, cxImage, dxGDIPlusClasses, dxCustomTileControl, dxTileControl, cxCheckBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxButtonEdit, cxDBLabel,
  Vcl.ExtCtrls, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFormUnidadeSubunidade = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtQtdaDePeca_Rendimento: TdxLayoutItem;
    edtQtdaDePeca: TcxCurrencyEdit;
    LiedtComp: TdxLayoutItem;
    edtComp: TcxCurrencyEdit;
    LiedtLarg: TdxLayoutItem;
    edtLarg: TcxCurrencyEdit;
    LiedtEspessura: TdxLayoutItem;
    edtEspessura: TcxCurrencyEdit;
    liedtRendimento: TdxLayoutItem;
    edtRendimento: TcxCurrencyEdit;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    Grupo_Pecas: TdxLayoutGroup;
    Grupo_Medidas: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    lblConverter: TcxLabel;
    dxLayoutGroup2: TdxLayoutGroup;
    Unidade_SubUnidade: TFDQuery;
    DSPai: TDataSource;
    dxLayoutItem3: TdxLayoutItem;
    liExpressao: TcxLabel;
    Unidade: TFDQuery;
    dxLayoutItem1: TdxLayoutItem;
    edtEspecificacao: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    ckTem_Divisao_Material: TcxCheckBox;
    edtDescricaoPersonalizada: TcxTextEdit;
    LiedtDescricao: TdxLayoutItem;
    dxLayoutStandardLookAndFeelEquacao: TdxLayoutStandardLookAndFeel;
    SubUnidade_Selecionada: TFDQuery;
    DS_SubUnidade_Selecionada: TDataSource;
    DSExterno: TDataSource;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tciAdcionar: TdxTileControlItem;
    tcMenuItem1: TdxTileControlItem;
    tcExcluir: TdxTileControlItem;
    tiAlterar: TdxTileControlItem;
    lblUnidade: TcxDBLabel;
    dxLayoutItem44: TdxLayoutItem;
    Panel1: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    lblAtencaonaImagem: TcxLabel;
    cxImage1: TcxImage;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    ImgComprimento: TcxImage;
    ImgLargura: TcxImage;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel11: TcxLabel;
    cxImage2: TcxImage;
    lblEquacaoPesoUnitarioKGM2: TcxLabel;
    cxLabel15: TcxLabel;
    edtPesoValorTotalCompra: TcxCurrencyEdit;
    edtPesoValorUnitario: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    lblPesoUnitario: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxImage3: TcxImage;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxImage4: TcxImage;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxImage5: TcxImage;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    GrupoAtencao: TdxLayoutGroup;
    TabAtencao: TdxLayoutGroup;
    liPadrao: TdxLayoutGroup;
    dxLayoutItem34: TdxLayoutItem;
    li_UNparaM2: TdxLayoutGroup;
    lilblAtencao: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    li_UNparaM3: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    liUNparaPCT_CX: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    liUNparaUN: TdxLayoutGroup;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    liUNparaKG: TdxLayoutGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    li_UNparaMT: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    li_RoloParaM2: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    li_MTparaM2: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    li_M2paraUN: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    li_PCTparaUN: TdxLayoutGroup;
    lilblEmbalagem: TdxLayoutItem;
    li_RoloParaMT: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    li_KGparaMT: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    li_KGparaM2: TdxLayoutGroup;
    liKG_M2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    liedtPesoValorTotalCompra: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    liedtPesoValorUnitario: TdxLayoutItem;
    lilblPesoUnitario: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    liKG_Aviso_Vermelho: TdxLayoutItem;
    liImgQuantParaQuant: TdxLayoutItem;
    liImgNaoImplementada: TdxLayoutItem;
    liImgComprimentoLargura: TdxLayoutItem;
    liImgQuant: TdxLayoutItem;
    liImgComprimento: TdxLayoutItem;
    liImgLargura: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    cxLabel32: TcxLabel;
    lblRendimento: TcxLabel;
    dxLayoutItem45: TdxLayoutItem;
    edtSubUNIDADE: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    Grupo_Comp: TdxLayoutGroup;
    Grupo_Larg: TdxLayoutGroup;
    Grupo_Espessura: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel38: TcxLabel;
    dxLayoutGroup7: TdxLayoutGroup;
    liedtQuantSecundaria: TdxLayoutItem;
    edtQuantSecundaria: TcxCurrencyEdit;
    liPrecisaAjuda: TdxLayoutGroup;
    liedtQuantBase: TdxLayoutItem;
    edtQuantBase: TcxCurrencyEdit;
    dxLayoutItem49: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem48: TdxLayoutItem;
    edtResultado: TcxCurrencyEdit;
    tcMenuItem2: TdxTileControlItem;
    dxLayoutItem51: TdxLayoutItem;
    lblFormula: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem20: TdxLayoutItem;
    cxCheckBox1: TcxCheckBox;
    GrupoValores: TdxLayoutGroup;
    GrupoDimencoes: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    cxLabel39: TcxLabel;
    liReduzirQuantidades: TdxLayoutGroup;
    dxLayoutItem47: TdxLayoutItem;
    cxLabel40: TcxLabel;
    dxLayoutItem53: TdxLayoutItem;
    cxLabel41: TcxLabel;
    dxLayoutGroup5: TdxLayoutGroup;
    lblSubUnidade: TcxLabel;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    GrupoConverter: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxEditStyleController1: TcxEditStyleController;
    dxLayoutGroup8: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure tcMenuItem1Click(Sender: TdxTileControlItem);
    procedure tciAdcionarClick(Sender: TdxTileControlItem);
    procedure edtSubUNIDADEPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckTem_Divisao_MaterialPropertiesEditValueChanged(Sender: TObject);
    procedure tcExcluirClick(Sender: TdxTileControlItem);
    procedure OnEditChange(Sender: TObject);

    // Verificação dos tipos para questões de cálculo e layout
    function VerificaSeApenasQuantidade(ADataSetUnidade: TDataSet): Boolean;
    function VerificaSeLinear(ADataSetUnidade: TDataSet): Boolean;
    function VerificaSeQuadrado(ADataSetUnidade: TDataSet): Boolean;
    function VerificaSeCubico(ADataSetUnidade: TDataSet): Boolean;
    function VerificaSePeso(ADataSetUnidade: TDataSet): Boolean;

    // Tratamento dataset Pais e Filhos
    procedure DesabilitaCamposMedidasExtra(ADataSetPai, ADataSetFiho: TDataSet);
    procedure tiAlterarClick(Sender: TdxTileControlItem);
    procedure cxButton2Click(Sender: TObject);
    procedure tcMenuItem2Click(Sender: TdxTileControlItem);
    procedure cxButton3Click(Sender: TObject);
    procedure edtPesoValorUnitarioExit(Sender: TObject);
    procedure edtQuantBasePropertiesChange(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
//    procedure ckTem_FornecedorPropertiesEditValueChanged(Sender: TObject);

  private
    { Private declarations }
    procedure AtualizaFormula(Sender: TObject);
    procedure SetImagemVisivel(ADescricaoImagem: String);
    procedure InsereSubUnidade(ADataSet: TFDQuery);
    procedure CarregaInformacoesSubUnidadeExistente;
  public
    { Public declarations }
    class procedure AbrirAdicionar(AUnidade: String);
    class procedure AbrirEditar(AUnidadePai: String; ACodUnidade_SubUnidade: Integer); static;
    class function AbrirExterno(AUnidade, AUn_SubUnidade: String; QueryExterno: TFDQuery): String;
  end;

var
  FormUnidadeSubunidade: TFormUnidadeSubunidade;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Classes.WR, wrFuncoes, StrUtils, Principal;

{$R *.dfm}

class procedure TFormUnidadeSubunidade.AbrirAdicionar(AUnidade: String);
var
  ASubUnidade: TFormUnidadeSubunidade;
begin
  ASubUnidade := TFormUnidadeSubunidade.Create(nil);
  try
    ASubUnidade.Unidade.ParamByName('Unidade').AsString := AUnidade;
    ASubUnidade.Unidade.Open;

    //Layout Inserindo
    ASubUnidade.tciAdcionar.Visible := True;
    ASubUnidade.tiAlterar.Visible := False;
    ASubUnidade.tcExcluir.Visible := False;

    ASubUnidade.ShowModal;
  finally
    ASubUnidade.Free;
  end;
end;

class function TFormUnidadeSubunidade.AbrirExterno(AUnidade, AUn_SubUnidade: String; QueryExterno: TFDQuery): String;
var
  ASubUnidade: TFormUnidadeSubunidade;
begin
  ASubUnidade := TFormUnidadeSubunidade.Create(nil);
  try
    ASubUnidade.Unidade.ParamByName('Unidade').AsString := AUnidade;
    ASubUnidade.DSExterno.DataSet := QueryExterno;
    ASubUnidade.Unidade.Open;

    //Layout Inserindo
    ASubUnidade.tciAdcionar.Visible := True;
    ASubUnidade.tiAlterar.Visible := False;
    ASubUnidade.tcExcluir.Visible := False;

    ASubUnidade.edtSubUNIDADE.Text := AUn_SubUnidade;
    ASubUnidade.ShowModal;
  finally
    Result := ASubUnidade.DSExterno.DataSet.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
    ASubUnidade.Free;
  end;
end;

class procedure TFormUnidadeSubunidade.AbrirEditar(AUnidadePai: String; ACodUnidade_SubUnidade: Integer);
var
  ASubUnidade: TFormUnidadeSubunidade;
begin
  ASubUnidade := TFormUnidadeSubunidade.Create(nil);
  try
    ASubUnidade.Unidade.ParamByName('Unidade').AsString := AUnidadePai;
    ASubUnidade.Unidade.Open;
    ASubUnidade.Unidade_SubUnidade.ParamByName('Codigo').AsInteger := ACodUnidade_SubUnidade;
    ASubUnidade.Unidade_SubUnidade.Open;
    ASubUnidade.edtSubUNIDADE.Text := ASubUnidade.Unidade_SubUnidade.FieldByName('SUBUNIDADE').AsString;
    ASubUnidade.CarregaInformacoesSubUnidadeExistente;

    //Layout Editando
    ASubUnidade.tciAdcionar.Visible := False;
    ASubUnidade.tiAlterar.Visible := True;
    ASubUnidade.tcExcluir.Visible := True;

    ASubUnidade.ShowModal;
  finally
    ASubUnidade.Free;
  end;
end;

procedure TFormUnidadeSubunidade.CarregaInformacoesSubUnidadeExistente;
begin
  edtQtdaDePeca.Value := Unidade_SubUnidade.FieldByName('QTDADEPECA').AsFloat;
  edtComp.Value := Unidade_SubUnidade.FieldByName('COMP').AsFloat;
  edtLarg.Value := Unidade_SubUnidade.FieldByName('LARG').AsFloat;
  edtEspessura.Value := Unidade_SubUnidade.FieldByName('ESPESSURA').AsFloat;
  edtRendimento.Value := Unidade_SubUnidade.FieldByName('RENDIMENTO').AsFloat;
  edtDescricaoPersonalizada.Text := Unidade_SubUnidade.FieldByName('DESCRICAO_PERSONALIZADA').AsString;

  ckTem_Divisao_Material.Checked := Unidade_SubUnidade.FieldByName('TEM_DIVISAO_MATERIAL').AsString = 'S';

  tciAdcionar.Text1.Value := 'Alterar';
  tcExcluir.Visible := True;
end;

procedure TFormUnidadeSubunidade.AtualizaFormula(Sender: TObject);
Var
  AQuantUnidade: Double;
  AUnidade: TUnidade;
begin
  if SubUnidade_Selecionada.FieldByName('IS_PESO').AsString = 'S' then
  begin
//    LiedtQtdaDePeca_Rendimento.Caption := 'Peso unitário do Produto: ';
  end
  else
  if Unidade.FieldByName('IS_PESO').AsString = 'S' then
  begin
//    LiedtQtdaDePeca_Rendimento.Caption := 'Peso por (1)unidade do Produto (' + lblUnidade.Caption + ')';
    ckTem_Divisao_Material.Checked := True;
//    ckTem_Divisao_Material.Enabled := False;
  end
  else
  begin
    AUnidade := ProdutoControleUnidades.GetUnidade(edtSubUNIDADE.Text);
    if ckTem_Divisao_Material.Checked then
      LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = '//'Quantos(as) ' + Unidade.FieldByName('DESCRICAO').AsString + '(s) vem no(a) ' + AUnidade.Descricao
    else
      LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = ';//'Quantos(as) ' + edtSubUNIDADE.Text + '(s) rende em (1) ' + Unidade.FieldByName('DESCRICAO').AsString;
  end;

  LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = ';

  liedtQuantBase.Caption := 'Unidade Base Quantidade Total(' + Unidade.FieldByName('UNIDADE').AsString + ')';
  liedtQuantSecundaria.Caption := 'Converter para Quantidade Total('+ edtSubUNIDADE.Text + ')';

  lblConverter.Caption := 'Converter ' + lblUnidade.Caption + ' em ' + edtSubUNIDADE.text;

  // Matemaática comlicada, não botar a mão nunca mais nisso kkkkkkk
  edtRendimento.Value := 1;
  if Grupo_Comp.Visible then
    edtRendimento.Value := edtRendimento.Value * edtComp.Value;
  if Grupo_Larg.Visible then
    edtRendimento.Value := edtRendimento.Value * edtLarg.Value;
  if Grupo_Espessura.Visible then
    edtRendimento.Value := edtRendimento.Value * edtEspessura.Value;

  if ckTem_Divisao_Material.Checked then
    edtRendimento.Value := edtRendimento.Value/edtQtdaDePeca.Value
  else
    edtRendimento.Value := edtQtdaDePeca.Value*edtRendimento.Value;



  /// Fim da Matemática complicada

  liExpressao.Caption := lblUnidade.Caption + ' ';
  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
    liExpressao.Caption := formatFloat('#,##0.###',edtQtdaDePeca.Value) + liExpressao.Caption;

  liExpressao.Caption := liExpressao.Caption + '(';
  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
    liExpressao.Caption := liExpressao.Caption + formatFloat('#,##0.###',edtComp.Value*edtLarg.Value*edtEspessura.Value)+ ' '
  else
    liExpressao.Caption := liExpressao.Caption + formatFloat('#,##0.###',edtRendimento.Value)+ ' ';
  liExpressao.Caption := liExpressao.Caption + edtSubUNIDADE.text + ') ';
//  liExpressao.Caption := liExpressao.Caption + edtDescricaoPersonalizada.Text;

  edtDescricaoPersonalizada.Text:='';
  if Not ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
    edtDescricaoPersonalizada.Text :=  edtQtdaDePeca.text;
  if Grupo_Comp.Visible then
  begin
    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtComp.text;
  end;
  if Grupo_Larg.Visible then
  begin
    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtLarg.text;
  end;
  if Grupo_Espessura.Visible then
  begin
    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtEspessura.text;
  end;


  // Gera Especificação
  edtEspecificacao.Caption := '';
//  if not ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
//  begin
//    if VerificaSePeso(Unidade) then
      edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',1);
//    else
//      edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',edtComp.Value*edtLarg.Value*edtEspessura.Value)
//  end
//  else
//    edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',edtQtdaDePeca.Value);
  edtEspecificacao.Caption   := edtEspecificacao.Caption + lblUnidade.Caption + ' Rende ';


//  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
//    edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.###',edtComp.Value*edtLarg.Value*edtEspessura.Value)
//  else
    edtEspecificacao.Caption   := edtEspecificacao.Caption + formatFloat('#,##0.########',edtRendimento.Value);

  lblRendimento.Caption := formatFloat('#,##0.########',edtRendimento.Value);

  edtEspecificacao.Caption   := edtEspecificacao.Caption + edtSubUNIDADE.text;

  // KG -> TUDO - Muda tudo se for peso.
//  if VerificaSePeso(Unidade) then
//    edtEspecificacao.Caption:= formatFloat('#,##0.###',edtQtdaDePeca.Value) + ' ' + edtUNIDADE.text+ ' Rende ' + formatFloat('#,##0.###',edtComp.Value * edtLarg.Value * edtEspessura.Value) + ' ' + edtSubUNIDADE.text;

end;

procedure TFormUnidadeSubunidade.FormCreate(Sender: TObject);
begin
//  PreencheComboBoxUnidade(edtUNIDADE);
  PreencheComboBoxUnidade(edtSubUNIDADE);
  TabAtencao.TabbedOptions.HideTabs := True;
end;

procedure TFormUnidadeSubunidade.FormShow(Sender: TObject);
begin
  FechaPanelForm(Panel1);
  edtSubUNIDADEPropertiesChange(nil);
  edtQuantBasePropertiesChange(nil);
end;

procedure TFormUnidadeSubunidade.OnEditChange(Sender: TObject);
begin
  AtualizaFormula(Sender);
end;

procedure TFormUnidadeSubunidade.edtPesoValorUnitarioExit(Sender: TObject);
var
  AResultado: Double;
begin
  //calcular rendimento, se tiver o valor unitario, calcular rendimento
  //IF PERGUNTA THEN
  edtComp.Value := 1;
  edtLarg.Value := 1;
  edtEspessura.Value := 1;
  AResultado := (edtPesoValorTotalCompra.Value / edtPesoValorUnitario.Value);
  edtResultado.Value := AResultado / edtQuantBase.Value;
  lblFormula.Caption := 'Seu índice de conversão é: ' + FloatToStr(edtResultado.Value);
end;

procedure TFormUnidadeSubunidade.edtQuantBasePropertiesChange(
  Sender: TObject);
begin
  if DSPai.DataSet.FieldByName('IS_PESO').AsString = 'N' then
    edtResultado.Value := edtQuantSecundaria.Value / edtQuantBase.Value
  else
    edtResultado.Value := edtQuantBase.Value/edtQuantSecundaria.Value;

  lblFormula.Caption := 'Seu índice de conversão é: ' + FloatToStr(edtResultado.Value);

  lblPesoUnitario.Caption := formatFloat('#,##0.###',edtQuantBase.Value/edtQuantSecundaria.Value)+ ' '+ lblUnidade.Caption;
  //aqui deve calcular o rendimento
  // aqui dedizer se o rendimento é positivo ou negativo
  AtualizaFormula(Sender);
  edtPesoValorUnitario.Value := edtPesoValorTotalCompra.Value/(edtRendimento.Value*edtQuantBase.Value);
end;

procedure TFormUnidadeSubunidade.cxButton1Click(Sender: TObject);
begin
  FrmPrincipal.ActivateBalloonHint(cxButton1, '', 'Exemplo: 1000 unidades, transformar em 10 pacotes. Informar quanto vai em cada pacote');
end;

procedure TFormUnidadeSubunidade.cxButton2Click(Sender: TObject);
begin
  edtComp.value := 1;
  edtLarg.Value := 1;
  edtEspessura.Value := 1;
  if edtResultado.Value >= 1 then
  begin
    edtQtdaDePeca.Value := edtResultado.Value;
    ckTem_Divisao_Material.Checked := False;
  end
  else
  begin
    edtQtdaDePeca.Value := edtQuantBase.Value/edtQuantSecundaria.Value;
    ckTem_Divisao_Material.Checked := True;
  end;


  FechaPanelForm(Panel1);
end;

procedure TFormUnidadeSubunidade.edtSubUNIDADEPropertiesChange(Sender: TObject);
  Procedure VerificaZeroVisivel(Var AValue: TcxCurrencyEdit);
  begin
    if (AValue.Value = 0)or(Not AValue.Visible) then
      AValue.Value := 1;
  end;
begin
  dxLayoutControl1.BeginUpdate;

  SubUnidade_Selecionada.Close;
  SubUnidade_Selecionada.ParamByName('Unidade').AsString := edtSubUNIDADE.EditValue;
  SubUnidade_Selecionada.Open;

  ProdutoAtualizaViewUnidade(edtSubUNIDADE.text, LiedtComp, LiedtLarg, LiedtEspessura);

  LiedtComp.Caption := 'Qual é a ' + LiedtComp.Caption + ' do Material?';
  LiedtLarg.Caption := 'Qual é a ' + LiedtLarg.Caption + ' do Material?';
  LiedtEspessura.Caption := 'Qual é a ' + LiedtEspessura.Caption + ' do Material?';



  Grupo_Comp.Visible := LiedtComp.Visible;
  Grupo_Larg.Visible := LiedtLarg.Visible;
  Grupo_Espessura.Visible := LiedtEspessura.Visible;
  GrupoDimencoes.Visible :=  LiedtComp.Visible;


//  AUnidade := ProdutoControleUnidades.GetUnidade(Unidade.FieldByName('UNIDADE').AsString);

  if ckTem_Divisao_Material.Checked then
    GrupoConverter.Visible := True
  else
    GrupoConverter.Visible := not(LiedtComp.Visible);


  lblSubUnidade.Caption :=  edtSubUNIDADE.Text;



  tcExcluir.Visible := False;

  VerificaZeroVisivel(edtQtdaDePeca);
  VerificaZeroVisivel(edtComp);
  VerificaZeroVisivel(edtLarg);
  VerificaZeroVisivel(edtEspessura);

  AtualizaFormula(Sender);

  liPadrao.MakeVisible;
  SetImagemVisivel('QuantidadeParaPacote');

  if VerificaSeApenasQuantidade(Unidade) and VerificaSeApenasQuantidade(SubUnidade_Selecionada) then
  begin
    liUNparaUN.MakeVisible;
    SetImagemVisivel('QuantidadeParaQuantidade');
  end;

  if VerificaSeApenasQuantidade(Unidade) and MatchStr(edtSubUNIDADE.Text, ['PCT', 'PCE', 'CX']) then
  begin
    liUNparaPCT_CX.MakeVisible;
    SetImagemVisivel('QuantidadeParaPacote');
  end;

  if VerificaSeApenasQuantidade(Unidade) and VerificaSeLinear(SubUnidade_Selecionada) then
  begin
    li_UNparaMT.MakeVisible;
    cxLabel13.Caption := 'Para realizar a conversão, você precisará informar no painel ao lado quantos '+ edtSubUNIDADE.Text +' para cada '+ lblUnidade.Caption +' do material.';
    SetImagemVisivel('QuantidadeParaLinear');

  end;

  if VerificaSeLinear(Unidade) and VerificaSeQuadrado(SubUnidade_Selecionada) then
  begin
    li_MTparaM2.MakeVisible;
    SetImagemVisivel('Largura');
  end;

  if VerificaSeApenasQuantidade(Unidade) and VerificaSeQuadrado(SubUnidade_Selecionada) then
  begin
    li_UNparaM2.MakeVisible;
    SetImagemVisivel('QuantidadeParaQuadrado');
    cxLabel14.Caption := 'Para realizar a conversão de ' + lblUnidade.Caption + ' para ' + edtSubUNIDADE.Text + ' é necessário obter as medidas do material: ';
    cxLabel24.Caption := ProdutoControleUnidades.CaptionComprimento.Descricao + ' (A)';
    cxLabel22.Caption := ProdutoControleUnidades.CaptionLargura.Descricao + ' (B)';
  end;

  if VerificaSeApenasQuantidade(Unidade) and VerificaSeCubico(SubUnidade_Selecionada) then
  begin
    li_UNParaM3.MakeVisible;
    SetImagemVisivel('QuantidadeParaCubico');
    cxLabel14.Caption := 'Para realizar a conversão de ' + lblUnidade.Caption + ' para ' + edtSubUNIDADE.Text + ' é necessário obter as medidas do material: ';
    cxLabel16.Caption := ProdutoControleUnidades.CaptionComprimento.Descricao + ' (A)';
    cxLabel17.Caption := ProdutoControleUnidades.CaptionLargura.Descricao + ' (B)';
    cxLabel18.Caption :=   ProdutoControleUnidades.CaptionEspessura.Descricao + ' (C)';
  end;

  if VerificaSeApenasQuantidade(Unidade) and VerificaSePeso(SubUnidade_Selecionada) then
  begin
    liUNparaKG.MakeVisible;
    SetImagemVisivel('QuantidadeParaPeso');
//    OutputDebugString('QuantidadeParaPeso');
  end;

  if VerificaSeQuadrado(Unidade) and VerificaSeApenasQuantidade(SubUnidade_Selecionada) then
    li_M2paraUN.MakeVisible;


  if VerificaSeQuadrado(Unidade) and VerificaSeApenasQuantidade(SubUnidade_Selecionada) then
    li_M2paraUN.MakeVisible;

//  if  ckTem_Divisao_Material.Checked
//  and VerificaSeApenasQuantidade(Unidade)
//  and VerificaSeApenasQuantidade(SubUnidade_Selecionada)
//  then
//  begin
//    li_PCTparaUN.MakeVisible;
//    SetImagemVisivel('Quantidade');
//  end;


//  if  VerificaSeApenasQuantidade(Unidade)
//  and VerificaSeApenasQuantidade(SubUnidade_Selecionada)
//  then
//  begin
//    li_PCTparaUN.MakeVisible;
//    SetImagemVisivel('Quantidade');
//  end;

  if VerificaSePeso(Unidade) and VerificaSeLinear(SubUnidade_Selecionada) then
    li_KGparaMT.MakeVisible;

  if VerificaSePeso(Unidade) and VerificaSeQuadrado(SubUnidade_Selecionada) then
    li_KGparaM2.MakeVisible;

  lilblEmbalagem.Visible := Not lilblAtencao.Visible;

  dxLayoutControl1.EndUpdate;
end;

function TFormUnidadeSubunidade.VerificaSeApenasQuantidade(ADataSetUnidade: TDataSet): Boolean;
begin
  Result := False;
  if  (ADataSetUnidade.FieldByName('CALC_COMPRIMENTO').AsInteger = 0) and
      (ADataSetUnidade.FieldByName('CALC_LARGURA').AsInteger = 0)    and
      (ADataSetUnidade.FieldByName('CALC_ESPESSURA').AsInteger = 0)
  then
    Result := True;
end;

function TFormUnidadeSubunidade.VerificaSeLinear(ADataSetUnidade: TDataSet): Boolean;
begin
  Result := False;
  if  (ADataSetUnidade.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
      (ADataSetUnidade.FieldByName('CALC_LARGURA').AsInteger = 0)    and
      (ADataSetUnidade.FieldByName('CALC_ESPESSURA').AsInteger = 0)
  then
    Result := True;
end;

function TFormUnidadeSubunidade.VerificaSeQuadrado(ADataSetUnidade: TDataSet): Boolean;
begin
  Result := False;
  if  (ADataSetUnidade.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
      (ADataSetUnidade.FieldByName('CALC_LARGURA').AsInteger = 1)     and
      (ADataSetUnidade.FieldByName('CALC_ESPESSURA').AsInteger = 0)
  then
    Result := True;
end;

function TFormUnidadeSubunidade.VerificaSeCubico(ADataSetUnidade: TDataSet): Boolean;
begin
  Result := False;
  if  (ADataSetUnidade.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
      (ADataSetUnidade.FieldByName('CALC_LARGURA').AsInteger = 1)     and
      (ADataSetUnidade.FieldByName('CALC_ESPESSURA').AsInteger = 1)
  then
    Result := True;
end;

procedure TFormUnidadeSubunidade.DesabilitaCamposMedidasExtra(ADataSetPai,
  ADataSetFiho: TDataSet);
begin
  LiedtEspessura.Enabled := True;
  LiedtLarg.Enabled := True;
  LiedtComp.Enabled := True;

  if (ADataSetPai.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
     (ADataSetFiho.FieldByName('CALC_COMPRIMENTO').AsInteger = 1)
  then
    LiedtComp.Enabled := False;

  if (ADataSetPai.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
     (ADataSetFiho.FieldByName('CALC_COMPRIMENTO').AsInteger = 1)
  then
    LiedtLarg.Enabled := False;

  if (ADataSetPai.FieldByName('CALC_ESPESSURA').AsInteger = 1) and
     (ADataSetFiho.FieldByName('CALC_ESPESSURA').AsInteger = 0)
  then
  begin
    LiedtEspessura.Enabled := True;
    LiedtLarg.Enabled := False;
    LiedtComp.Enabled := False;
  end;

  if (ADataSetPai.FieldByName('CALC_LARGURA').AsInteger = 1) and
     (ADataSetFiho.FieldByName('CALC_LARGURA').AsInteger = 0)
  then
  begin
    LiedtEspessura.Enabled := True;
    LiedtLarg.Enabled := True;
    LiedtComp.Enabled := False;
  end;

  if (ADataSetPai.FieldByName('CALC_COMPRIMENTO').AsInteger = 1) and
     (ADataSetFiho.FieldByName('CALC_COMPRIMENTO').AsInteger = 0)
  then
  begin
    LiedtEspessura.Enabled := True;
    LiedtLarg.Enabled := True;
    LiedtComp.Enabled := True;
  end;
end;



procedure TFormUnidadeSubunidade.cxButton3Click(Sender: TObject);
begin
  FechaPanelForm(Panel1);
end;

procedure TFormUnidadeSubunidade.cxCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  GrupoValores.Visible := cxCheckBox1.Checked;
end;

function TFormUnidadeSubunidade.VerificaSePeso(ADataSetUnidade: TDataSet): Boolean;
begin
  Result := False;
  if ADataSetUnidade.FieldByName('IS_PESO').AsString = 'S' then
    Result := True;
end;

procedure TFormUnidadeSubunidade.SetImagemVisivel(ADescricaoImagem: String);
begin
  liImgComprimentoLargura.Visible := False;
  liImgComprimento.Visible := False;
  liImgLargura.Visible := False;
  liImgQuant.Visible := False;
  liImgNaoImplementada.Visible := False;
  liImgQuantParaQuant.Visible := False;

  if ADescricaoImagem = 'QuantidadeParaQuadrado' then
    liImgComprimentoLargura.Visible := True
  else
  if ADescricaoImagem = 'QuantidadeParaLinear' then
    liImgComprimento.Visible := True
  else
  if ADescricaoImagem = 'Largura' then
    liImgLargura.Visible := True
  else
  if ADescricaoImagem = 'Quantidade' then
    liImgQuant.Visible := True
  else
  if ADescricaoImagem = 'QuantidadeParaQuantidade' then
    liImgQuantParaQuant.Visible := True
  else
    liImgNaoImplementada.Visible := True;
end;

procedure TFormUnidadeSubunidade.ckTem_Divisao_MaterialPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtSubUNIDADEPropertiesChange(nil);
  AtualizaFormula(Sender);
end;

//procedure TFormUnidadeSubunidade.ckTem_FornecedorPropertiesEditValueChanged(
//  Sender: TObject);
//begin
////  GrupoFornecedor.Visible := ckTem_Fornecedor.Checked;
////  if not ckTem_Fornecedor.Checked then
////    Unidade_SubUnidade.FieldByName('PESSOA_FORNECEDOR_CODIGO').Clear;
////
////  AtualizaFormula(Sender);
//end;

procedure TFormUnidadeSubunidade.tcExcluirClick(Sender: TdxTileControlItem);
begin
  if ShowMessageWR('Deseja excluir esta Sub Unidade?', MB_ICONQUESTION) = mrYes then
  begin
    Unidade_SubUnidade.Delete;
    Close;
  end
end;

procedure TFormUnidadeSubunidade.tciAdcionarClick(Sender: TdxTileControlItem);
begin
  if DSExterno.DataSet <> nil then
    InsereSubUnidade(TFDQuery(DSExterno.DataSet))
  else
    InsereSubUnidade(Unidade_SubUnidade);
  Close;
end;

procedure TFormUnidadeSubunidade.InsereSubUnidade(ADataSet : TFDQuery);
begin
  if not ADataSet.Active then
    ADataSet.Open;

  ADataSet.Insert;
//  if DSExterno.DataSet <> nil then
//    ADataSet.FieldByName('CODIGO').AsInteger             := GetProximoCodigo('PRODUTO_SUBUNIDADE')
//  else
  ADataSet.FieldByName('CODIGO').AsInteger             := GetProximoCodigo('UNIDADE_SUBUNIDADE');


  ADataSet.FieldByName('CODUNIDADE').AsInteger         := Unidade.FieldByName('CODIGO').AsInteger;
  ADataSet.FieldByName('SUBUNIDADE').AsString          := edtSubUNIDADE.text;


  if ckTem_Divisao_Material.Checked = True then
    ADataSet.FieldByName('TEM_DIVISAO_MATERIAL').AsString := 'S'
  else
    ADataSet.FieldByName('TEM_DIVISAO_MATERIAL').AsString := 'N';

  ADataSet.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString := liExpressao.Caption;
  ADataSet.FieldByName('QTDADEPECA').AsFloat               := edtQtdaDePeca.Value;
  ADataSet.FieldByName('COMP').AsFloat                     := edtComp.Value;
  ADataSet.FieldByName('LARG').AsFloat                     := edtLarg.Value;
  ADataSet.FieldByName('ESPESSURA').AsFloat                := edtEspessura.Value;
  ADataSet.FieldByName('Rendimento').AsFloat               := edtRendimento.Value;
  ADataSet.FieldByName('DESCRICAO_PERSONALIZADA').AsString := edtDescricaoPersonalizada.Text;
  ADataSet.FieldByName('ESPECIFICACAO').AsString           := edtEspecificacao.Caption;
  ADataSet.Post;
end;

procedure TFormUnidadeSubunidade.tcMenuItem1Click(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TFormUnidadeSubunidade.tcMenuItem2Click(Sender: TdxTileControlItem);
begin
  liPrecisaAjuda.MakeVisible;
  ShowPanelForm(Panel1, bsSingle);
end;

procedure TFormUnidadeSubunidade.tiAlterarClick(Sender: TdxTileControlItem);
begin
  if Unidade_SubUnidade.State <> dsEdit then
    Unidade_SubUnidade.Edit;

  Unidade_SubUnidade.FieldByName('QTDADEPECA').AsFloat                := edtQtdaDePeca.Value;
  Unidade_SubUnidade.FieldByName('COMP').AsFloat                      := edtComp.Value;
  Unidade_SubUnidade.FieldByName('LARG').AsFloat                      := edtLarg.Value;
  Unidade_SubUnidade.FieldByName('ESPESSURA').AsFloat                 := edtEspessura.Value;
  Unidade_SubUnidade.FieldByName('RENDIMENTO').AsFloat                := edtRendimento.Value;
  Unidade_SubUnidade.FieldByName('DESCRICAO_PERSONALIZADA').AsString  := edtDescricaoPersonalizada.Text;
  Unidade_SubUnidade.FieldByName('ESPECIFICACAO').AsString            := edtEspecificacao.Caption;
  Unidade_SubUnidade.FieldByName('SUBUNIDADE').AsString               := edtSubUNIDADE.Text;
  Unidade_SubUnidade.FieldByName('TEM_DIVISAO_MATERIAL').AsString     := ifThen(ckTem_Divisao_Material.Checked, 'S', 'N');
  Unidade_SubUnidade.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString            := liExpressao.Caption;

  Unidade_SubUnidade.Post;

  Close;
end;

end.
