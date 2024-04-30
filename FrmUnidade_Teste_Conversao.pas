unit FrmUnidade_Teste_Conversao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, Vcl.ExtCtrls;

type
  TFormUnidade_Teste_Conversao = class(TForm)
    LiedtQtdaDePeca_Rendimento: TdxLayoutItem;
    edtQtdaDePeca: TcxDBCurrencyEdit;
    LiedtComp_Rendimento: TdxLayoutItem;
    edtComp_Rendimento: TcxDBCurrencyEdit;
    LiedtLarg_Rendimento: TdxLayoutItem;
    edtLarg_Rendimento: TcxDBCurrencyEdit;
    LiedtEspessura_Rendimento: TdxLayoutItem;
    edtEspessura_Rendimento: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtRendimento: TcxDBCurrencyEdit;
    LiCbUnidade: TdxLayoutItem;
    edtUNIDADE: TcxDBComboBox;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    WRCalc: TWRCalculaConfiguracoes;
    dxLayoutItem3: TdxLayoutItem;
    edtFormula: TcxDBComboBox;
    DSPai: TDataSource;
    pnlTestarFormula: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    edtPAIPecas: TcxCurrencyEdit;
    edtPAIComprimento: TcxCurrencyEdit;
    edtPAIEspessura: TcxCurrencyEdit;
    edtPAILargura: TcxCurrencyEdit;
    edtPAIQuant: TcxCurrencyEdit;
    lblExpressaoCalculada: TcxLabel;
    lblExpressaoSimples: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    GrupoProdutoComposto: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    lIedtPAIComprimento: TdxLayoutItem;
    lIedtPAILargura: TdxLayoutItem;
    LIedtPAIEspessura: TdxLayoutItem;
    LiedtPAIQuant: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    liedtFormula_Avancada: TdxLayoutItem;
    edtFormula_Avancada: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edtUNIDADEPropertiesChange(Sender: TObject);
    procedure edtQtdaDePeca_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtComp_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtLarg_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtEspessura_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtFormulaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtFormulaPropertiesChange(Sender: TObject);
    procedure edtQtdPecaAvanco1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure AtualizaFormula;
  public
    { Public declarations }
    Class procedure Abrir(ASender: TWinControl; AComposicao: Boolean);
  end;

var
  FormUnidade_Teste_Conversao: TFormUnidade_Teste_Conversao;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Classes.WR;

{$R *.dfm}

class procedure TFormUnidade_Teste_Conversao.Abrir(ASender: TWinControl; AComposicao: Boolean);
var
  ARendimento: TFormUnidade_Teste_Conversao;
begin
  ARendimento:= TFormUnidade_Teste_Conversao.Create(ASender.Owner);
  try
    ARendimento.PopupMode     := pmAuto;
//    ARendimento.WRCalc        := AWRCalc;
//    ARendimento.DS.DataSet    := ADataSet;
//    ARendimento.DSPai.DataSet := ADataSetPai;
//    ARendimento.DS.AutoEdit   := ARendimento.WRCalc.DSProduto.AutoEdit;
    ARendimento.GrupoProdutoComposto.Visible:= AComposicao;
    PosicionarControleAbaixoDe(ARendimento, ASender);
    ARendimento.ShowModal;
  finally
    ARendimento.Free;
  end;
end;

procedure TFormUnidade_Teste_Conversao.AtualizaFormula;
Var
  AIndice: Integer;
  AUnidade: String;
begin
  // tEM QUE VERIFICAR SE TEM pAI
  if (not Assigned(WRCalc.Treelist.FocusedNode) or (WRCalc.Treelist.FocusedNode.Parent = WRCalc.Treelist.Root)) and Assigned(DSPai.DataSet) then    // Acha o Node Pai e Pega os valores para a fórmula
  begin
    WRCalc.SprAplicaFormula(DS.DataSet,
                            DS.DataSet.FieldByName('FORMULA').AsString,
                            0,
                            DSPai.DataSet.FieldByName('UNIDADE').AsString,
                            DSPai.DataSet.FieldByName('QTDADEPECA').AsString,
                            DSPai.DataSet.FieldByName('COMP').AsString,
                            DSPai.DataSet.FieldByName('LARG').AsString,
                            DSPai.DataSet.FieldByName('ESPESSURA').AsString);// mais 1 parametro  Com dataSet do Pai
  end else
  begin
    if (WRCalc.SPrTipoCalc = tssCalcCadastro)and (WRCalc.Treelist.FocusedNode.Parent = WRCalc.Treelist.Root)then
      AUnidade:= WRCalc.DBProduto.FieldByName('UNIDADE').AsString
    else
      AUnidade:=TreeListGetValorNodeString(WRCalc.Treelist.FocusedNode.Parent,'UNIDADE');
    AIndice:= wrcalc.LGetRelativeIndex(WRCalc.Treelist.FocusedNode, WRCalc.Treelist.FocusedNode.Parent);
    WRCalc.SprAplicaFormula(DS.DataSet, DS.DataSet.FieldByName('FORMULA').AsString, AIndice,
                            AUnidade,
                            '','','','');
  end;
end;

procedure TFormUnidade_Teste_Conversao.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUnidade_Teste_Conversao.edtFormulaPropertiesChange(Sender: TObject);
begin
 { LiedtQtdPecaAvanco1.Visible:= False;
  liedtQtdPecaAvanco2.Visible:= False;

  LiedtCompAvanco1.Visible:= False;
  LiedtCompAvanco2.Visible:= False;

  LiedtLargAvanco1.Visible:= False;
  LiedtLargAvanco2.Visible:= False;

  LiedtEspAvanco1.Visible:= False;
  LiedtEspAvanco2.Visible:= False;

  if edtFormula.Text =  'ILHÓS' then
  begin
    LiedtQtdPecaAvanco1.Caption:= 'Espaçamento(Obrigatório)';
    liedtQtdPecaAvanco2.Caption:= 'Sobra %';

    LiedtQtdPecaAvanco1.Visible:= True;
    liedtQtdPecaAvanco2.Visible:= True;
  end;
  if edtFormula.Text =  'A CADA' then
  begin
//    LiedtQtdPecaAvanco1.Caption:= 'Avanço';
    liedtQtdPecaAvanco2.Caption:= 'Sobra %';

//    LiedtQtdPecaAvanco1.Visible:= True;
    liedtQtdPecaAvanco2.Visible:= True;
  end;
  if edtFormula.Text =  'BARRAS' then
  begin
    LiedtQtdPecaAvanco1.Caption:= 'Comp. da Barra(Obrigatório)';
    liedtQtdPecaAvanco2.Caption:= 'Sobra %';

    LiedtQtdPecaAvanco1.Visible:= True;
    liedtQtdPecaAvanco2.Visible:= True;


  end;
  if edtFormula.Text =  'PROPORCIONAL' then
  begin
    LiedtQtdPecaAvanco2.Caption:= 'Avanço(%)';
    LiedtCompAvanco1.Caption:= 'Metros';
    LiedtLargAvanco1.Caption:= 'Metros';
    LiedtEspAvanco1.Caption:= 'Metros';

    LiedtQtdPecaAvanco2.Visible:= True;
    LiedtCompAvanco1.Visible:= True;
    LiedtLargAvanco1.Visible:= True;
    LiedtEspAvanco1.Visible:= True;

    edtQtdPecaAvanco2.Text := DS.DataSet.FieldByName('QTDADEPECA_AVANCO2').AsString;
    edtCompAvanco1.Text := DS.DataSet.FieldByName('COMP_AVANCO1').AsString;
    edtLargAvanco1.Text := DS.DataSet.FieldByName('LARG_AVANCO1').AsString;
    edtEspAvanco1.Text := DS.DataSet.FieldByName('ESPESSURA_AVANCO1').AsString;
  end;    }
end;

procedure TFormUnidade_Teste_Conversao.edtFormulaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
Var
  AIndice: Integer;
  AUnidade: String;
begin
  // tEM QUE VERIFICAR SE TEM pAI
  if (WRCalc.Treelist.FocusedNode.Parent = WRCalc.Treelist.Root)and Assigned(DSPai.DataSet) then    // Acha o Node Pai e Pega os valores para a fórmula
  begin
    WRCalc.SprAplicaFormula(DS.DataSet,
                            DisplayValue,
                            0,
                            DSPai.DataSet.FieldByName('UNIDADE').AsString,
                            DSPai.DataSet.FieldByName('QTDADEPECA').AsString,
                            DSPai.DataSet.FieldByName('COMP').AsString,
                            DSPai.DataSet.FieldByName('LARG').AsString,
                            DSPai.DataSet.FieldByName('ESPESSURA').AsString);// mais 1 parametro  Com dataSet do Pai
  end else
  begin
    if (WRCalc.SPrTipoCalc = tssCalcCadastro)and (WRCalc.Treelist.FocusedNode.Parent = WRCalc.Treelist.Root)then
      AUnidade:= WRCalc.DBProduto.FieldByName('UNIDADE').AsString
    else
      AUnidade:=TreeListGetValorNodeString(WRCalc.Treelist.FocusedNode.Parent,'UNIDADE');
    AIndice:= wrcalc.LGetRelativeIndex(WRCalc.Treelist.FocusedNode, WRCalc.Treelist.FocusedNode.Parent);
    WRCalc.SprAplicaFormula(DS.DataSet, DisplayValue, AIndice,
                            AUnidade,
                            '','','','');
  end;
end;

procedure TFormUnidade_Teste_Conversao.edtQtdaDePeca_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DS.DataSet.FieldByName('QTDADEPECA_COMPOSICAO').Value:= DisplayValue;
  AtualizaFormula;
end;

procedure TFormUnidade_Teste_Conversao.edtQtdPecaAvanco1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  DS.DataSet.FieldByName(TcxDBCurrencyEdit(Sender).DataBinding.DataField).Value:= DisplayValue;
  AtualizaFormula;
end;

procedure TFormUnidade_Teste_Conversao.edtComp_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DS.DataSet.FieldByName('COMP_COMPOSICAO').Value:= DisplayValue;
  AtualizaFormula;
end;

procedure TFormUnidade_Teste_Conversao.edtLarg_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DS.DataSet.FieldByName('LARG_COMPOSICAO').Value:= DisplayValue;
  AtualizaFormula;
end;

procedure TFormUnidade_Teste_Conversao.edtEspessura_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  DS.DataSet.FieldByName('ESPESSURA_COMPOSICAO').Value:= DisplayValue;
  AtualizaFormula;
end;

procedure TFormUnidade_Teste_Conversao.edtUNIDADEPropertiesChange(Sender: TObject);
begin
  ProdutoAtualizaViewUnidade(edtUNIDADE.Text, liedtComp_Rendimento, liedtLarg_Rendimento, liedtEspessura_Rendimento);
//  Grupo_Comp.Visible := liedtComp_Rendimento.Visible;
//  Grupo_Larg.Visible := liedtLarg_Rendimento.Visible;
//  Grupo_Espessura.Visible := liedtEspessura_Rendimento.Visible;
//  ProdutoAtualizaViewFormula(edtUNIDADE.Text, Grupo_Comp, Grupo_Larg, Grupo_Espessura);
end;

procedure TFormUnidade_Teste_Conversao.FormCreate(Sender: TObject);
begin
  PreencheComboBoxUnidade(edtUNIDADE);
  // TODO: Tem que Colocar os Labels corretos aqui
  edtPAIPecas.Properties.DisplayFormat      := DecimalQuantidade;
  edtPAIComprimento.Properties.DisplayFormat:= DecimalQuantidade;
  edtPAILargura.Properties.DisplayFormat    := DecimalQuantidade;
  edtPAIEspessura.Properties.DisplayFormat  := DecimalQuantidade;
  edtPAIQuant.Properties.DisplayFormat      := DecimalQuantidade;
end;

end.
