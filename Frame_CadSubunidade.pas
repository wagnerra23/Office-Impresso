unit Frame_CadSubunidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, cxLabel, cxDBLabel, cxCheckBox, cxCurrencyEdit, Frame_Cad, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxUIAdorners;

type
  TFrame_Subunidade = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    edtSubUNIDADE: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    lblUnidade: TcxDBLabel;
    dxLayoutItem3: TdxLayoutItem;
    ckTem_Divisao_Material: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    LiedtQtdaDePeca_Rendimento: TdxLayoutItem;
    edtQtdaDePeca: TcxCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    lblSubUnidade: TcxLabel;
    liedtComp: TdxLayoutItem;
    edtComp: TcxCurrencyEdit;
    liedtLarg: TdxLayoutItem;
    edtLarg: TcxCurrencyEdit;
    liedtEspessura: TdxLayoutItem;
    edtEspessura: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtDescricaoPersonalizada: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtRendimento: TcxCurrencyEdit;
    GrupoReduzirMaterial: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Unidade: TFDQuery;
    UnidadeCodTabela: TStringField;
    UnidadeSituacaoProducao: TStringField;
    UnidadeCustoPorPeca: TFloatField;
    procedure edtSubUNIDADEPropertiesChange(Sender: TObject);
    procedure ckTem_Divisao_MaterialPropertiesEditValueChanged(Sender: TObject);
    procedure edtCompPropertiesChange(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
  private
    procedure AtualizaFormula(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Subunidade: TFrame_Subunidade;

implementation

{$R *.dfm}

uses
  Base, Tag.Form;

procedure TFrame_Subunidade.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Unidade.Open;
end;

procedure TFrame_Subunidade.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Unidade.Close;
end;

procedure TFrame_Subunidade.ckTem_Divisao_MaterialPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  edtSubUNIDADEPropertiesChange(nil);
  AtualizaFormula(Sender);
end;

procedure TFrame_Subunidade.edtCompPropertiesChange(Sender: TObject);
begin
  inherited;
  AtualizaFormula(Sender);
end;

procedure TFrame_Subunidade.edtSubUNIDADEPropertiesChange(Sender: TObject);
  Procedure VerificaZeroVisivel(Var AValue: TcxCurrencyEdit);
  begin
    if (AValue.Value = 0)or(Not AValue.Visible) then
      AValue.Value := 1;
  end;
begin
//  dxLayoutControl1.BeginUpdate;

//  SubUnidade_Selecionada.Close;
//  SubUnidade_Selecionada.ParamByName('Unidade').AsString := edtSubUNIDADE.EditValue;
//  SubUnidade_Selecionada.Open;

//  ProdutoAtualizaViewUnidade(edtSubUNIDADE.text, LiedtComp, LiedtLarg, LiedtEspessura);

  LiedtComp.Caption := 'Qual é a ' + LiedtComp.Caption + ' do Material?';
  LiedtLarg.Caption := 'Qual é a ' + LiedtLarg.Caption + ' do Material?';
  LiedtEspessura.Caption := 'Qual é a ' + LiedtEspessura.Caption + ' do Material?';



//  Grupo_Comp.Visible := LiedtComp.Visible;
//  Grupo_Larg.Visible := LiedtLarg.Visible;
//  Grupo_Espessura.Visible := LiedtEspessura.Visible;
//  GrupoDimencoes.Visible :=  LiedtComp.Visible;


//  AUnidade := ProdutoControleUnidades.GetUnidade(Unidade.FieldByName('UNIDADE').AsString);

//  if ckTem_Divisao_Material.Checked then
//    GrupoConverter.Visible := True
//  else
//    GrupoConverter.Visible := not(LiedtComp.Visible);


  lblSubUnidade.Caption :=  edtSubUNIDADE.Text;




  VerificaZeroVisivel(edtQtdaDePeca);
  VerificaZeroVisivel(edtComp);
  VerificaZeroVisivel(edtLarg);
  VerificaZeroVisivel(edtEspessura);

  AtualizaFormula(Sender);
end;

procedure TFrame_Subunidade.AtualizaFormula(Sender: TObject);
Var
  AQuantUnidade: Double;
begin
//  if SubUnidade_Selecionada.FieldByName('IS_PESO').AsString = 'S' then
//  begin
////    LiedtQtdaDePeca_Rendimento.Caption := 'Peso unitário do Produto: ';
//  end
//  else
  if Unidade.FieldByName('IS_PESO').AsString = 'S' then
  begin
//    LiedtQtdaDePeca_Rendimento.Caption := 'Peso por (1)unidade do Produto (' + lblUnidade.Caption + ')';
    ckTem_Divisao_Material.Checked := True;
//    ckTem_Divisao_Material.Enabled := False;
  end
  else
  begin

    if ckTem_Divisao_Material.Checked then
      LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = '//'Quantos(as) ' + Unidade.FieldByName('DESCRICAO').AsString + '(s) vem no(a) ' + AUnidade.Descricao
    else
      LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = ';//'Quantos(as) ' + edtSubUNIDADE.Text + '(s) rende em (1) ' + Unidade.FieldByName('DESCRICAO').AsString;
  end;

  LiedtQtdaDePeca_Rendimento.Caption := '1 ' + Unidade.FieldByName('UNIDADE').AsString + '  = ';

//  liedtQuantBase.Caption := 'Unidade Base Quantidade Total(' + Unidade.FieldByName('UNIDADE').AsString + ')';
//  liedtQuantSecundaria.Caption := 'Converter para Quantidade Total('+ edtSubUNIDADE.Text + ')';

//  lblConverter.Caption := 'Converter ' + lblUnidade.Caption + ' em ' + edtSubUNIDADE.text;

  // Matemaática comlicada, não botar a mão nunca mais nisso kkkkkkk
  edtRendimento.Value := 1;
  if liedtComp.Visible then
    edtRendimento.Value := edtRendimento.Value * edtComp.Value;
  if liedtLarg.Visible then
    edtRendimento.Value := edtRendimento.Value * edtLarg.Value;
  if liedtEspessura.Visible then
    edtRendimento.Value := edtRendimento.Value * edtEspessura.Value;

  if ckTem_Divisao_Material.Checked then
    edtRendimento.Value := edtRendimento.Value/edtQtdaDePeca.Value
  else
    edtRendimento.Value := edtQtdaDePeca.Value*edtRendimento.Value;



  /// Fim da Matemática complicada

//  liExpressao.Caption := lblUnidade.Caption + ' ';
//  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
//    liExpressao.Caption := formatFloat('#,##0.###',edtQtdaDePeca.Value) + liExpressao.Caption;
//
//  liExpressao.Caption := liExpressao.Caption + '(';
//  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
//    liExpressao.Caption := liExpressao.Caption + formatFloat('#,##0.###',edtComp.Value*edtLarg.Value*edtEspessura.Value)+ ' '
//  else
//    liExpressao.Caption := liExpressao.Caption + formatFloat('#,##0.###',edtRendimento.Value)+ ' ';
//  liExpressao.Caption := liExpressao.Caption + edtSubUNIDADE.text + ') ';
//  liExpressao.Caption := liExpressao.Caption + edtDescricaoPersonalizada.Text;

//  edtDescricaoPersonalizada.Text:='';
//  if Not ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
//    edtDescricaoPersonalizada.Text :=  edtQtdaDePeca.text;
//  if Grupo_Comp.Visible then
//  begin
//    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
//    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtComp.text;
//  end;
//  if Grupo_Larg.Visible then
//  begin
//    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
//    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtLarg.text;
//  end;
//  if Grupo_Espessura.Visible then
//  begin
//    if edtDescricaoPersonalizada.Text<>'' then  edtDescricaoPersonalizada.Text:=edtDescricaoPersonalizada.Text+'x';
//    edtDescricaoPersonalizada.Text :=  edtDescricaoPersonalizada.Text+edtEspessura.text;
//  end;

//
//  // Gera Especificação
//  edtEspecificacao.Caption := '';
////  if not ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
////  begin
////    if VerificaSePeso(Unidade) then
//      edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',1);
////    else
////      edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',edtComp.Value*edtLarg.Value*edtEspessura.Value)
////  end
////  else
////    edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.#######',edtQtdaDePeca.Value);
//  edtEspecificacao.Caption   := edtEspecificacao.Caption + lblUnidade.Caption + ' Rende ';
//
//
////  if ckTem_Divisao_Material.Checked {and (edtQtdaDePeca.Value <> 1)} then
////    edtEspecificacao.Caption := edtEspecificacao.Caption + formatFloat('#,##0.###',edtComp.Value*edtLarg.Value*edtEspessura.Value)
////  else
//    edtEspecificacao.Caption   := edtEspecificacao.Caption + formatFloat('#,##0.########',edtRendimento.Value);
//
//  lblRendimento.Caption := formatFloat('#,##0.########',edtRendimento.Value);
//
//  edtEspecificacao.Caption   := edtEspecificacao.Caption + edtSubUNIDADE.text;

  // KG -> TUDO - Muda tudo se for peso.
//  if VerificaSePeso(Unidade) then
//    edtEspecificacao.Caption:= formatFloat('#,##0.###',edtQtdaDePeca.Value) + ' ' + edtUNIDADE.text+ ' Rende ' + formatFloat('#,##0.###',edtComp.Value * edtLarg.Value * edtEspessura.Value) + ' ' + edtSubUNIDADE.text;

end;

initialization
  RegisterClass(TFrame_Subunidade);
  RegisterFrameCad(Tag_ProdutoSubUnidade, TFrame_Subunidade);

end.
