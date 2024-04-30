unit FrmMarkup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, math, wrFuncoes,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFormMarkup = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtNf_vICMSST: TdxLayoutItem;
    edtNf_vICMSST: TcxDBCurrencyEdit;
    LiedtCalc_VCompra_Extra: TdxLayoutItem;
    edtCalc_VCompra_Extra: TcxDBCurrencyEdit;
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
    edtVOutro: TcxDBCurrencyEdit;
    LiedtVDesc: TdxLayoutItem;
    edtVDesc: TcxDBCurrencyEdit;
    LiLucro: TdxLayoutItem;
    edtLucro: TcxDBCurrencyEdit;
    LiedtNF_Calc_VCompra_Extra: TdxLayoutItem;
    edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit;
    LiedtNF_Calc_VCusto_Variavel: TdxLayoutItem;
    edtCusto_Variavel: TcxDBCurrencyEdit;
    LiedtCALC_PVENDA_CUSTO_FINANCEIRO: TdxLayoutItem;
    edtCusto_Financeiro: TcxDBCurrencyEdit;
    LiedtCALC_PVENDA_COMISSAO_REP: TdxLayoutItem;
    edtCusto_Representante: TcxDBCurrencyEdit;
    LiedtCALC_PVENDA_COMISSAO_FUN: TdxLayoutItem;
    edtComissaoFuncionario: TcxDBCurrencyEdit;
    LiedtCALC_PVENDA_COMISSAO_AGENCIA: TdxLayoutItem;
    edtComissao_Agencia: TcxDBCurrencyEdit;
    LiedtLiedtCALC_PVENDA_COMISSAO_PRODUCAO: TdxLayoutItem;
    edtComissaoProducao: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    lblPVendaTotal: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    LiedtCALC_PMARGEM_CONTRIBUICAO: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LibtnAplicaValorSugerido: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    LibtnAplicaPrecoMinimo: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lblVImpostos: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    lblVCustosVariaveis: TcxLabel;
    dxLayoutItem17: TdxLayoutItem;
    lblVCustosFixos: TcxLabel;
    dxLayoutItem18: TdxLayoutItem;
    lblVCustosFinanceiros: TcxLabel;
    dxLayoutItem19: TdxLayoutItem;
    lblVOutrosCustos: TcxLabel;
    dxLayoutItem20: TdxLayoutItem;
    lblVComissaoRep: TcxLabel;
    dxLayoutItem21: TdxLayoutItem;
    lblVComissaoFun: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    Label8: TLabel;
    dxLayoutItem22: TdxLayoutItem;
    lblVComissaoAg: TcxLabel;
    dxLayoutItem23: TdxLayoutItem;
    lblVComissaoProd: TcxLabel;
    dxLayoutItem24: TdxLayoutItem;
    lblVFrete: TcxLabel;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem25: TdxLayoutItem;
    lblVValorSugerido: TcxLabel;
    dxLayoutItem26: TdxLayoutItem;
    lblVSaldoSemMateriais: TcxLabel;
    dxLayoutItem27: TdxLayoutItem;
    lblPCustoMateriais: TcxLabel;
    dxLayoutItem28: TdxLayoutItem;
    lblVCustoMateriais: TcxLabel;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    lblPLucroEfetivo: TcxLabel;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem31: TdxLayoutItem;
    lblVLucroEfetivo: TcxLabel;
    LiedtPPerdasProducao: TdxLayoutItem;
    edtPPerdasProducao: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    lblVPerdasProducao: TcxLabel;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
    procedure cxDBCurrencyEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxDBCurrencyEdit2PropertiesChange(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
  end;

var
  FormMarkup: TFormMarkup;
  ABaseCalculoValor: Double;
  AAbriu: Boolean;

implementation

Uses wrFuncoes_Office, UnitFuncoes;

{$R *.dfm}

{ TForm1 }

class procedure TFormMarkup.Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
var
  AFormMarkup: TFormMarkup;
  APodeAlterar: Boolean;
begin
  AAbriu := False;
  AFormMarkup:= TFormMarkup.Create(ASender.Owner);
  try
    AFormMarkup.PopupMode := pmAuto;
    AFormMarkup.WRCalc    := AWRCalc;
    AFormMarkup.DS.DataSet:= AFormMarkup.WRCalc.DBProduto;
    AFormMarkup.DS.AutoEdit:= AFormMarkup.WRCalc.DSProduto.AutoEdit;
    PosicionarControleAbaixoDe(AFormMarkup, ASender);

    if AFormMarkup.WRCalc.TipoCalculo = tcVenda then
    begin
      // Verifica se a venda pode ser editada, retorna true se puder ser alterada
      APodeAlterar := (AFormMarkup.WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(AFormMarkup.WRCalc.DBProduto.FieldByName('EM_PRODUCAO').AsString = 'S');

      // Dá enable nos campos
      AFormMarkup.LiedtNF_IPI_VIPI.Enabled                           :=  APodeAlterar;
      AFormMarkup.LiedtNf_vICMSST.Enabled                            :=  APodeAlterar;
      AFormMarkup.LiedtNF_Calc_VCompra_Extra.Enabled                 :=  APodeAlterar;
      AFormMarkup.LiedtNF_Calc_VCusto_Variavel.Enabled               :=  APodeAlterar;
      AFormMarkup.LiedtCALC_PVENDA_CUSTO_FINANCEIRO.Enabled          :=  APodeAlterar;
      AFormMarkup.LiedtVOutro.Enabled                                :=  APodeAlterar;
      AFormMarkup.LiedtCALC_PVENDA_COMISSAO_REP.Enabled              :=  APodeAlterar;
      AFormMarkup.LiedtCALC_PVENDA_COMISSAO_FUN.Enabled              :=  APodeAlterar;
      AFormMarkup.LiedtCALC_PVENDA_COMISSAO_AGENCIA .Enabled         :=  APodeAlterar;
      AFormMarkup.LiedtLiedtCALC_PVENDA_COMISSAO_PRODUCAO.Enabled    :=  APodeAlterar;
      AFormMarkup.LiedtNF_VFrete.Enabled                             :=  APodeAlterar;
      AFormMarkup.LiLucro.Enabled                                    :=  APodeAlterar;
      AFormMarkup.LiedtVDesc.Enabled                                 :=  APodeAlterar;
      AFormMarkup.LiedtCALC_PMARGEM_CONTRIBUICAO.Enabled             :=  APodeAlterar;
      AFormMarkup.LibtnAplicaPrecoMinimo.Enabled                     :=  APodeAlterar;
      AFormMarkup.LibtnAplicaValorSugerido.Enabled                   :=  APodeAlterar;
      AFormMarkup.LiedtPPerdasProducao.Enabled                       :=  APodeAlterar;
    end;
    AFormMarkup.ShowModal;
  finally
    AFormMarkup.Free;
  end;
end;

procedure TFormMarkup.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMarkup.cxButton2Click(Sender: TObject);
begin
  if (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat >= 100) then
  begin
    ShowMessageWR('O somatório dos custos não pode exceder 100%', MB_ICONWARNING);
    Exit;
  end;
  AlteraDataSet(WRCalc.DBProduto);
//  WRCalc.ProdutoAlterarValor(DS.DataSet.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat);
  WRCalc.ProdutoAlterarValor(ABaseCalculoValor);
  Close;
end;

procedure TFormMarkup.cxButton3Click(Sender: TObject);
begin
  if (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat >= 100) then
  begin
    ShowMessageWR('O somatório dos custos não pode exceder 100%', MB_ICONWARNING);
    Exit;
  end;
  AlteraDataSet(WRCalc.DBProduto);
  DS.DataSet.FieldByName('VALOR_VENDA_MINIMO').AsFloat:=DS.DataSet.FieldByName('CALC_VENDA_MINIMO_VALOR').AsFloat;
  ShowMessage('Valor mínimo de Venda configurado corretamente!');
end;

procedure TFormMarkup.cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
begin
//  AlteraDataSet(WRCalc.DBProduto);
//  DS.DataSet.FieldByName('CALC_PVENDA_DESCONTO').AsFloat:= (DS.DataSet.FieldByName('VALOR').AsFloat - (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat/100) * DS.DataSet.FieldByName('VALOR').AsFloat - DS.DataSet.FieldByName('CUSTO').AsFloat)/(DS.DataSet.FieldByName('VALOR').AsFloat) * 100;

end;

procedure TFormMarkup.cxDBCurrencyEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas(TcxDBCurrencyEdit(Sender).DataBinding.DataField, DisplayValue);
  WRCalc.ProdutoAlterarDescontoPermitido;
end;

procedure TFormMarkup.cxDBCurrencyEdit2PropertiesChange(Sender: TObject);
var
  ALucro, ASaldoSemMateriais : Double;
begin
  // Na venda quando abre, a base de cálculo é o valor do produto. Muda quando faz alguma alteração.
  if not AAbriu then // Só roda assim que abrir a tela, depois ele ignora
  begin
    ABaseCalculoValor := WRCalc.DBProduto.FieldByName('Valor').AsFloat;
    dxLayoutItem25.CaptionOptions.Text := 'Valor de Venda';
    AAbriu := true;
  end else
  begin
    ABaseCalculoValor := WRCalc.DBProduto.FieldByName('CALC_VVENDA_SUGERIDO').AsFloat;
    dxLayoutItem25.CaptionOptions.Text := 'Valor Sugerido de Venda';
  end;
// Daqui pra frente calcula o valor dos campos. -----------------------------------

  // R$ Valor Sugerido de venda (Superior da Tela)
  if ABaseCalculoValor <> 0 then
  begin
    lblVValorSugerido.Caption := 'R$ ' + FormatFloat('0.00', RoundTo(ABaseCalculoValor, -2));
    lblVValorSugerido.Style.TextColor := clDefault;
  end else
  begin
    lblVValorSugerido.Caption := '0,00';
    lblVValorSugerido.Style.TextColor := clDefault;
  end;

  // % Custo de materiais (Superior da Tela)
  if DS.DataSet.FieldByName('CUSTO').AsFloat <> 0 then
  begin
    lblPCustoMateriais.Caption := FormatFloat('0.00', RoundTo((DS.DataSet.FieldByName('CUSTO').AsFloat / ABaseCalculoValor) * 100, -2)) + '%';
  end else
  begin
    lblPCustoMateriais.Caption := '0,00';
    lblPCustoMateriais.Style.TextColor := clDefault;
  end;

  // R$ Custo de Materiais de venda (Superior da Tela)
  if DS.DataSet.FieldByName('CUSTO').AsFloat <> 0 then
  begin
    lblVCustoMateriais.Caption := 'R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CUSTO').AsFloat , -2));
    lblVCustoMateriais.Style.TextColor := clRed;
  end else
  begin
    lblVCustoMateriais.Caption := '0,00';
    lblVCustoMateriais.Style.TextColor := clDefault;
  end;

  // R$ Saldo sem materiais (Superior da Tela)
  if ABaseCalculoValor <> 0 then
  begin
    ASaldoSemMateriais := RoundTo(ABaseCalculoValor - DS.DataSet.FieldByName('CUSTO').AsFloat, -2);
    lblVSaldoSemMateriais.Caption := 'R$ ' + FormatFloat('0.00', ASaldoSemMateriais) ;
    lblVSaldoSemMateriais.Style.TextColor := clBlue;
  end else
  begin
    lblVSaldoSemMateriais.Caption := '0,00';
    lblVSaldoSemMateriais.Style.TextColor := clDefault;
  end;

  // R$ Impostos
  if DS.DataSet.FieldByName('CALC_PVENDA_IMPOSTOS').AsFloat <> 0 then
  begin
    lblVImpostos.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_IMPOSTOS').AsFloat / 100 * DS.DataSet.FieldByName('CALC_VVENDA_SUGERIDO').AsFloat, -2));
    lblVImpostos.Style.TextColor := clRed;

  end else
  begin
    lblVImpostos.Caption := '0,00';
    lblVImpostos.Style.TextColor := clDefault;
  end;

  // R$ Custos Fixos
  if DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_FIXO').AsFloat <> 0 then
  begin
    lblVCustosFixos.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_FIXO').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVCustosFixos.Style.TextColor := clRed;
  end else
  begin
    lblVCustosFixos.Caption := '0,00';
    lblVCustosFixos.Style.TextColor := clDefault;
  end;

  // R$ Custos Variáveis
  if DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_VARIAVEL').AsFloat <> 0 then
  begin
    lblVCustosVariaveis.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_VARIAVEL').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVCustosVariaveis.Style.TextColor := clRed;
  end else
  begin
    lblVCustosVariaveis.Caption := '0,00';
    lblVCustosVariaveis.Style.TextColor := clDefault;
  end;

  // R$ Custos Financeiros
  if DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_FINANCEIRO').AsFloat <> 0 then
  begin
    lblVCustosFinanceiros.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_CUSTO_FINANCEIRO').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVCustosFinanceiros.Style.TextColor := clRed;
  end else
  begin
    lblVCustosFinanceiros.Caption := '0,00';
    lblVCustosFinanceiros.Style.TextColor := clDefault;
  end;

  // R$ Outros Custos
  if DS.DataSet.FieldByName('CALC_PVENDA_OUTRO').AsFloat <> 0 then
  begin
    lblVOutrosCustos.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_OUTRO').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVOutrosCustos.Style.TextColor := clRed;
  end else
  begin
    lblVOutrosCustos.Caption := '0,00';
    lblVOutrosCustos.Style.TextColor := clDefault;
  end;

  if DS.DataSet.FieldByName('CALC_PVENDA_PERDA_PRODUCAO').AsFloat <> 0 then
  begin
    lblVPerdasProducao.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_PERDA_PRODUCAO').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVPerdasProducao.Style.TextColor := clRed;
  end else
  begin
    lblVPerdasProducao.Caption := '0,00';
    lblVPerdasProducao.Style.TextColor := clDefault;
  end;

  // R$ Comissão Representante
  if DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_REP').AsFloat <> 0 then
  begin
    lblVComissaoRep.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_REP').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVComissaoRep.Style.TextColor := clRed;
  end else
  begin
    lblVComissaoRep.Caption := '0,00';
    lblVComissaoRep.Style.TextColor := clDefault;
  end;

  // R$ Comissão Funcionário
  if DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_FUN').AsFloat <> 0 then
  begin
    lblVComissaoFun.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_FUN').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVComissaoFun.Style.TextColor := clRed;
  end else
  begin
    lblVComissaoFun.Caption := '0,00';
    lblVComissaoFun.Style.TextColor := clDefault;
  end;

  // R$ Comissão Agência
  if DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_AGENCIA').AsFloat <> 0 then
  begin
    lblVComissaoAg.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_AGENCIA').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVComissaoAg.Style.TextColor := clRed;
  end else
  begin
    lblVComissaoAg.Caption := '0,00';
    lblVComissaoAg.Style.TextColor := clDefault;
  end;

  // R$ Comissão Produção
  if DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_PRODUCAO').AsFloat <> 0 then
  begin
    lblVComissaoProd.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_COMISSAO_PRODUCAO').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVComissaoProd.Style.TextColor := clRed;
  end else
  begin
    lblVComissaoProd.Caption := '0,00';
    lblVComissaoProd.Style.TextColor := clDefault;
  end;

  // R$ Frete
  if DS.DataSet.FieldByName('CALC_PVENDA_FRETE').AsFloat <> 0 then
  begin
    lblVFrete.Caption := '-R$ ' + FormatFloat('0.00', RoundTo(DS.DataSet.FieldByName('CALC_PVENDA_FRETE').AsFloat / 100 * ABaseCalculoValor, -2));
    lblVFrete.Style.TextColor := clRed;
  end else
  begin
    lblVFrete.Caption := '0,00';
    lblVFrete.Style.TextColor := clDefault;
  end;

  // R$ Lucro Efetivo
  if ABaseCalculoValor <> 0 then
  begin
    ALucro := RoundTo(ABaseCalculoValor -
                       DS.DataSet.FieldByName('CUSTO').AsFloat -
                      (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat *
                      ABaseCalculoValor / 100)  +
                      (DS.DataSet.FieldByName('CALC_PVENDA_LUCRO_DESEJADO').AsFloat *
                      ABaseCalculoValor / 100), -2);
    lblVLucroEfetivo.Caption := 'R$ ' + FormatFloat('0.00', ALucro);
    lblVLucroEfetivo.Style.TextColor := clBlue;
  end else
  begin
    lblVLucroEfetivo.Caption := '0,00';
    lblVLucroEfetivo.Style.TextColor := clDefault;
  end;

  // %Perc Lucro Efetivo
  if ABaseCalculoValor <> 0 then
  begin
    lblPLucroEfetivo.Caption := FormatFloat('0.00', RoundTo(((ABaseCalculoValor -
                                                                    DS.DataSet.FieldByName('CUSTO').AsFloat -
                                                                    (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat *
                                                                    ABaseCalculoValor / 100)  +
                                                                    (DS.DataSet.FieldByName('CALC_PVENDA_LUCRO_DESEJADO').AsFloat *
                                                                    ABaseCalculoValor / 100)) /
                                                                    ABaseCalculoValor) * 100, -2)) + '%';
    lblPLucroEfetivo.Style.TextColor := clBlue;
  end else
  begin
    lblPLucroEfetivo.Caption := '0,00';
    lblPLucroEfetivo.Style.TextColor := clDefault;
  end;

   if (DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat >= 100) then
  begin
    lblPVendaTotal.Value := DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat;
    lblPVendaTotal.Style.TextColor := clRed;
    lblPVendaTotal.Style.BorderStyle := ebsThick;
    lblPVendaTotal.Style.BorderColor := clRed;
    lblPVendaTotal.Hint := 'O valor da venda total não pode ser maior ou igual a 100%';
  end else
  if DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat <> 0 then
  begin
    lblPVendaTotal.Value := DS.DataSet.FieldByName('CALC_PVENDA_TOTAL').AsFloat;
    lblPVendaTotal.Style.TextColor := clWindowText;
    lblPVendaTotal.Style.BorderStyle := ebsSingle;
    lblPVendaTotal.Style.BorderColor := clSilver;
    lblPVendaTotal.Hint := '';
  end else

  // Regra de colorização do Lucro
  if ALucro < 0 then
  begin
    lblVLucroEfetivo.Style.TextColor := clRed;
    lblPLucroEfetivo.Style.TextColor := clRed;
  end else
  if ALucro = 0 then
  begin
    lblVLucroEfetivo.Style.TextColor := clDefault;
    lblPLucroEfetivo.Style.TextColor := clDefault;
  end;
  if ASaldoSemMateriais = 0 then
    lblVSaldoSemMateriais.Style.TextColor := clDefault
  else
  if ASaldoSemMateriais < 0 then
    lblVSaldoSemMateriais.Style.TextColor := clRed;

end;

procedure TFormMarkup.DSStateChange(Sender: TObject);
begin
  // Quando é na venda, assim que troca qualquer valor, a base de cálculo passa a ser o sugerido
  //ABaseCalculoValor := WRCalc.DBProduto.FieldByName('CALC_VVENDA_SUGERIDO').AsFloat
end;

procedure TFormMarkup.edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas(TcxDBCurrencyEdit(Sender).DataBinding.DataField, DisplayValue);
  WRCalc.ProdutoAlterarMargemContribuicao;
 end;

end.
