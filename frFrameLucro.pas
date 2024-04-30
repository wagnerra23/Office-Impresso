unit frFrameLucro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, cxButtonEdit;

type
  TFormLucroPrevisto = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtNf_vICMSST: TdxLayoutItem;
    edtNf_vICMSST: TcxDBCurrencyEdit;
    LiedtCalc_VCompra_Extra: TdxLayoutItem;
    edtCalc_PTotal_Impostos: TcxDBCurrencyEdit;
    DS: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    WRCalc: TWRCalculaConfiguracoes;
    LiedtNF_IPI_VIPI: TdxLayoutItem;
    edtNF_IPI_VIPI: TcxDBCurrencyEdit;
    LiedtNF_VFrete: TdxLayoutItem;
    edtNF_VFrete: TcxDBCurrencyEdit;
    LiedtVOutro: TdxLayoutItem;
    edtPOutro: TcxDBCurrencyEdit;
    LiedtVDesc: TdxLayoutItem;
    edtPDesc: TcxDBCurrencyEdit;
    LiedtLucroPrevisto: TdxLayoutItem;
    edtLucroPrevisto: TcxDBCurrencyEdit;
    LiedtNF_Calc_VCompra_Extra: TdxLayoutItem;
    edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtCusto_Variavel: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtCusto_Financeiro: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtCusto_Representante: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtComissaoFuncionario: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtComissao_Agencia: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtComissaoProducao: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxVBaseCalculo: TcxCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBPDesc: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxButton2: TcxButton;
    lIedtValor_Original: TdxLayoutItem;
    edtValor_Original: TcxDBCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    cbxTipo_Desconto: TcxDBComboBox;
    dxLayoutItem17: TdxLayoutItem;
    cxDBPOutro: TcxDBCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    edtVDesc: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    edtVOutro: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBVDesc: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    cxDBVOutro: TcxDBCurrencyEdit;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxVComissaoRepresentante: TcxCurrencyEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxVComissaoFuncionario: TcxCurrencyEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxVComissaoAgencia: TcxCurrencyEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxVComissaoProducao: TcxCurrencyEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    cxVTotalComissoes: TcxCurrencyEdit;
    dxLayoutItem34: TdxLayoutItem;
    cxVTotalCustos: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCurrencyEdit20: TcxDBCurrencyEdit;
    dxLayoutItem35: TdxLayoutItem;
    cxDBButtonEdit3: TcxDBButtonEdit;
    dxLayoutItem36: TdxLayoutItem;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    dxLayoutItem37: TdxLayoutItem;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutItem38: TdxLayoutItem;
    cxDBButtonEdit4: TcxDBButtonEdit;
    dxLayoutItem39: TdxLayoutItem;
    cxDBCurrencyEdit23: TcxDBCurrencyEdit;
    dxLayoutItem40: TdxLayoutItem;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    dxLayoutItem41: TdxLayoutItem;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    dxLayoutItem42: TdxLayoutItem;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    dxLayoutItem43: TdxLayoutItem;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    dxLayoutItem44: TdxLayoutItem;
    cxDBCurrencyEdit28: TcxDBCurrencyEdit;
    dxLayoutItem45: TdxLayoutItem;
    cxDBButtonEdit5: TcxDBButtonEdit;
    dxLayoutItem46: TdxLayoutItem;
    cxDBButtonEdit6: TcxDBButtonEdit;
    dxLayoutItem47: TdxLayoutItem;
    cxDBButtonEdit7: TcxDBButtonEdit;
    dxComissaoAgencia: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxComissaoRepresentante: TdxLayoutAutoCreatedGroup;
    dxComissaoFuncionario: TdxLayoutAutoCreatedGroup;
    dxComissaoProducao: TdxLayoutAutoCreatedGroup;
    LIImpostos: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    DSVenda: TDataSource;
    dxDescontosInternos: TdxLayoutGroup;
    dxAcrescimosInternos: TdxLayoutGroup;
    dxVendaValores: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem30: TdxLayoutItem;
    cxVCustosFinanceiros: TcxCurrencyEdit;
    dxLayoutItem48: TdxLayoutItem;
    cxVCustosVariaveis: TcxCurrencyEdit;
    dxLayoutItem49: TdxLayoutItem;
    cxVCustosFixos: TcxCurrencyEdit;
    dxLayoutItem50: TdxLayoutItem;
    cxVDescProduto: TcxCurrencyEdit;
    dxLayoutItem51: TdxLayoutItem;
    cxVTotalImpostos: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edtLucroPropertiesChange(Sender: TObject);
  private

  public
    { Public declarations }
    procedure CalculaValoresDaTela;
    Class procedure Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
  end;

var
  FormLucroPrevisto: TFormLucroPrevisto;

implementation

Uses wrFuncoes_Office, UnitFuncoes;

{$R *.dfm}

{ TForm1 }

class procedure TFormLucroPrevisto.Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
var
  AFormLucroPrevisto: TFormLucroPrevisto;
begin
  AFormLucroPrevisto:= TFormLucroPrevisto.Create(ASender.Owner);
  try
    AFormLucroPrevisto.PopupMode := pmAuto;
    AFormLucroPrevisto.WRCalc    := AWRCalc;
    AFormLucroPrevisto.DS.DataSet:= AFormLucroPrevisto.WRCalc.DBProduto;
    AFormLucroPrevisto.DS.AutoEdit:= AFormLucroPrevisto.WRCalc.DSProduto.AutoEdit;
    if AWRCalc.TipoCalculo in [tcVenda, tcCompra] then
    begin
      AFormLucroPrevisto.DSVenda.DataSet := AFormLucroPrevisto.WRCalc.DBVendaOuCompra;
      AFormLucroPrevisto.DSVenda.AutoEdit := AFormLucroPrevisto.WRCalc.DSVendaOuCompra.AutoEdit;
      AFormLucroPrevisto.cxVDescProduto.Visible := False;
    end else
    begin
//      AFormLucroPrevisto.dxComissaoProducao.visible := False;
//      AFormLucroPrevisto.dxComissaoRepresentante.visible := False;
//      AFormLucroPrevisto.dxComissaoFuncionario.visible := False;
//      AFormLucroPrevisto.dxComissaoAgencia.visible := False;
      // Cadastro de Produtos
      // Acréscimos
      AFormLucroPrevisto.cxDBPOutro.DataBinding.DataField := 'CALC_PVENDA_OUTRO';

      // Descontos
      AFormLucroPrevisto.cxDBPDesc.DataBinding.DataField := 'CALC_PVENDA_DESCONTO';
      AFormLucroPrevisto.dxLayoutItem50.Visible := True;
      AFormLucroPrevisto.dxLayoutItem15.Visible := False;

      AFormLucroPrevisto.dxVendaValores.visible := False;
    end;


    PosicionarControleAbaixoDe(AFormLucroPrevisto, ASender);
    AFormLucroPrevisto.CalculaValoresDaTela;
    AFormLucroPrevisto.ShowModal;

  finally
    AFormLucroPrevisto.Free;
  end;
end;

procedure TFormLucroPrevisto.CalculaValoresDaTela;
begin
  cxVCustosFixos.Value := ds.Dataset.FieldByName('CALC_PVENDA_CUSTO_FIXO').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVCustosVariaveis.Value := ds.Dataset.FieldByName('CALC_PVENDA_CUSTO_VARIAVEL').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVCustosFinanceiros.Value := ds.Dataset.FieldByName('CALC_PVENDA_CUSTO_FINANCEIRO').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVComissaoProducao.Value := ds.Dataset.FieldByName('CALC_PVENDA_COMISSAO_PRODUCAO').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVComissaoRepresentante.Value := ds.Dataset.FieldByName('CALC_PVENDA_COMISSAO_REP').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVComissaoFuncionario.Value := ds.Dataset.FieldByName('CALC_PVENDA_COMISSAO_FUN').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVComissaoAgencia.Value := ds.Dataset.FieldByName('CALC_PVENDA_COMISSAO_AGENCIA').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;

  cxVTotalCustos.Value := cxVCustosFixos.Value + cxVCustosVariaveis.Value + cxVCustosFinanceiros.Value;
  cxVTotalComissoes.Value :=  cxVComissaoProducao.Value +  cxVComissaoRepresentante.Value +  cxVComissaoFuncionario.Value +  cxVComissaoAgencia.Value;
  cxVDescProduto.Value := ds.Dataset.FieldByName('CALC_PVENDA_DESCONTO').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  cxVTotalImpostos.Value := ds.Dataset.FieldByName('TOTAL_IMPOSTOS').AsFloat * ds.Dataset.FieldByName('VALOR').AsFloat / 100;
  end;

procedure TFormLucroPrevisto.cxButton1Click(Sender: TObject);
begin
  Close;
  //q
end;

procedure TFormLucroPrevisto.cxButton2Click(Sender: TObject);
begin
  AlteraDataSet(WRCalc.DBProduto);
//  WRCalc.ProdutoAlterarValor(DS.DataSet.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat);
  WRCalc.ProdutoAlterarValor(DS.DataSet.FieldByName('CALC_VVENDA_SUGERIDO').AsFloat);
  Close;
end;

procedure TFormLucroPrevisto.cxButton3Click(Sender: TObject);
begin
  AlteraDataSet(WRCalc.DBProduto);
  DS.DataSet.FieldByName('VALOR_VENDA_MINIMO').AsFloat:=DS.DataSet.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat;
  ShowMessage('Valor mínimo de Venda configurado corretamente!');
end;

procedure TFormLucroPrevisto.edtLucroPropertiesChange(Sender: TObject);
begin
  if ds.DataSet.FieldByName('CALC_VLUCRO').AsFloat < 0 then
  begin
    edtLucroPrevisto.Style.TextColor          := clRed;
//    edtvVenda_Custo_Minimo.Style.TextColor  := clRed;
  end
  else if ds.DataSet.FieldByName('VALOR').AsFloat < ds.DataSet.FieldByName('VALOR_VENDA_MINIMO').AsFloat then
  begin
    edtLucroPrevisto.Style.TextColor          := $000080FF;
//    edtvVenda_Custo_Minimo.Style.TextColor  := $000080FF;
  end else
  begin
    edtLucroPrevisto.Style.TextColor          := $00676767;
//    edtvVenda_Custo_Minimo.Style.TextColor  := clGreen;
  end;
end;

procedure TFormLucroPrevisto.edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas(TcxDBCurrencyEdit(Sender).DataBinding.DataField, DisplayValue);
end;

end.
