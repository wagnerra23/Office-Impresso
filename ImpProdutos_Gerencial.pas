unit ImpProdutos_Gerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB,
  IBX.IBCustomDataSet, IBX.IBQuery, StrUtils, StdCtrls, Buttons, Gradient, ImpMestre, cxCalendar, cxButtonEdit,
  ComCtrls, UCHist_WRGeral, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxCore, cxDateUtils, cxDropDownEdit, cxTextEdit, cxMaskEdit, QRPDFFilt, QRExport, QRWebFilt, 
  DataModuleImpressao, frxClass, frxDBSet, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, uControleWR, cxCheckBox,
  WREventos, System.Generics.Collections, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TImpriProdutos_Gerencial = class(TImpriMestre)
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Grupo_Produto: TIBQuery;
    QRDBText9: TQRDBText;
    Produtos: TIBQuery;
    DS: TDataSource;
    Gradient3: TGradient;
    Label1: TLabel;
    LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    EdtFornecedorÎPessoas: TcxButtonEdit;
    EdtGrupoÎProduto_Grupo: TcxButtonEdit;
    QRLbCustoVenda: TQRLabel;
    QRTextCustoVenda: TQRDBText;
    QRDBText3: TQRDBText;
    ProdutosCODIGO: TIBStringField;
    ProdutosCODFABRICA: TIBStringField;
    ProdutosESTOQUE: TFloatField;
    ProdutosVALOR: TFloatField;
    QRDBText4: TQRDBText;
    ProdutosReferencia: TStringField;
    LblGrupoÎProduto_GrupoÎDESCRICAO: TLabel;
    ProdutosDESCRICAO: TIBStringField;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    RgCustos: TRadioGroup;
    Label6: TLabel;
    Soma: TIBQuery;
    SomaTOTAL_CUSTO: TFloatField;
    SomaTOTAL_ESTOQUE: TFloatField;
    SomaTOTAL_VALOR: TFloatField;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Label3: TLabel;
    EditDescProduto: TEdit;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    ProdutosCUSTOEST: TFloatField;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    LbTotalEstoque: TQRLabel;
    LbTotalValor: TQRLabel;
    LbTotalLucro: TQRLabel;
    LbTotalCusto: TQRLabel;
    Label7: TLabel;
    RgEstoque: TRadioGroup;
    Bevel1: TBevel;
    Label8: TLabel;
    DtCadastro: TcxDateEdit;
    LbAsterisco: TQRLabel;
    LbLucroNegativoSummary: TQRLabel;
    UCHistWRGeral1: TUCHistWRGeral;
    Bevel2: TBevel;
    Label9: TLabel;
    cbOrdernarPor: TComboBox;
    frxGrupo_Produto_Gerencial: TfrxDBDataset;
    frxProdutos_Gerencial: TfrxDBDataset;
    frxSoma_Gerencial: TfrxDBDataset;
    CbProdutoTipo: TcxLookupComboBox;
    CbLocalEstoque: TcxLookupComboBox;
    ProdutosMinMax: TStringField;
    ProdutosCUSTO: TFloatField;
    SomaTOTAL_LUCRO: TFloatField;
    ProdutosESTOQUE_MIN: TFloatField;
    ProdutosESTOQUE_MAX: TFloatField;
    CheckBox1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    CkPrazo: TcxCheckBox;
    CheckBox4: TcxCheckBox;
    CkCustoVenda: TcxCheckBox;
    CheckBox7: TcxCheckBox;
    CkLucro: TcxCheckBox;
    CheckBox9: TcxCheckBox;
    CkGrupoProduto: TcxCheckBox;
    WREventosCadastro1: TWREventosCadastro;
    ProdutosVALOR_COMPRA: TFloatField;
    ProdutosCALC_VLUCRO: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ProdutosCalcFields(DataSet: TDataSet);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SomaBeforeOpen(DataSet: TDataSet);
    procedure SomaCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
  private
    FControleWR: TControleWR;
    FHouveLucroNegativo: Boolean;
    FTotalCusto, FTotalValor, FTotalLucro, FTotalEstoque: Double;
  public
  end;

var
  ImpriProdutos_Gerencial: TImpriProdutos_Gerencial;

implementation

{$R *.dfm}
uses
  UnitFuncoes, ConProduto_Grupo, DateUtils, wrFuncoes, wrConstantes, Base;

procedure TImpriProdutos_Gerencial.BitBtn1Click(Sender: TObject);
var
  ALocalEstoque, ACodFornecedor: string;
//  AFDMImpressao : TDMImpressao;
  ASQL: TStringList;
begin
  inherited;
//  QRLabel8.Enabled   := CkPrazo.Checked;
//  QRDBText10.Enabled := CkPrazo.Checked;
  QRLabel3.Enabled   := CheckBox1.Checked;
  QRDBText3.Enabled  := CheckBox1.Checked;
//  QRLabel7.Enabled   := CheckBox2.Checked;
//  QRDBText5.Enabled  := CheckBox2.Checked;
  QRLabel5.Enabled   := CheckBox4.Checked;
  QRDBText7.Enabled  := CheckBox4.Checked;
  QRLabel9.Enabled   := RgCustos.ItemIndex = 3;
  QRDBText4.Enabled  := RgCustos.ItemIndex = 3;
  QRLbCustoVenda.Enabled    := CkCustoVenda.Checked;
  QRTextCustoVenda.Enabled  := CkCustoVenda.Checked;
  QRLabel12.Enabled  := CkLucro.Checked;
  QRDBText11.Enabled := CkLucro.Checked;
  QRLabel15.Enabled  := CheckBox9.Checked;
  QRDBText16.Enabled := CheckBox9.Checked;

  QRLabel14.Enabled        := CheckBox4.Checked;
  LbTotalEstoque.Enabled   := CheckBox4.Checked;
  QRLabel13.Enabled        := CheckBox9.Checked;
  LbTotalCusto.Enabled     := CheckBox9.Checked;
  QRLabel16.Enabled        := CheckBox1.Checked;
  LbTotalValor.Enabled     := CheckBox1.Checked;
  QRLabel17.Enabled        := CkLucro.Checked;
  LbTotalLucro.Enabled     := CkLucro.Checked;
  Soma.Close;
  LimpaSQLWhere(Soma);
  Produtos.Close;
  LimpaSQLWhere(Produtos);
  Grupo_Produto.Close;
  Grupo_Produto.SQL[1] := '';
  Produtos.DataSource := nil;
  QuickRep1.DataSet := nil;

  ASQL := TStringList.Create;
  try
    if CkGrupoProduto.Checked then
    begin
      if EdtGrupoÎProduto_Grupo.Text <> '' then
      begin
        Grupo_Produto.SQL[1] := 'where (CODIGO like ' + QuotedStr(EdtGrupoÎProduto_Grupo.Text) + ')';
        Soma.SQL.Add('and (P.CODPRODUTO_GRUPO like ' + QuotedStr(EdtGrupoÎProduto_Grupo.Text) + ')');
      end;
      ASQL.Add('and (P.CODPRODUTO_GRUPO = :Codigo)');
      Produtos.DataSource := DS;
      QuickRep1.DataSet := Grupo_Produto;
    end;

    ACodFornecedor := FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas);
    if ACodFornecedor <> '' then
      ASQL.Add('and exists(select first 1 1 ' +
               '           from PRODUTO_FORNECEDOR PF ' +
               '           where (PF.CODPRODUTO = P.CODIGO) ' +
               '                 and (PF.PESSOA_FORNECEDOR_CODIGO = ' + QuotedStr(ACodFornecedor) + '))');

    if trim(EditDescProduto.Text) <> '' then
    begin
      EditDescProduto.Text := UpperCase(EditDescProduto.Text);
      ASQL.Add('and (upper(P.DESCRICAO) like ' + QuotedStr('%' + UpperCase(EditDescProduto.Text) + '%') + ')');
    end;

    if not VarIsNull(CbProdutoTipo.EditValue) then
      ASQL.Add('and (P.CODPRODUTO_TIPO = ' + VarToStr(CbProdutoTipo.EditValue) + ')');

    ALocalEstoque := 'EP.ESTOQUE';
    if not VarIsNull(CbLocalEstoque.EditValue) then
      ALocalEstoque := 'EP.' + VarToStr(CbLocalEstoque.EditValue);

    Produtos.SQL[2] := 'coalesce(' + ALocalEstoque + ', 0) as ESTOQUE, (P.CUSTO * coalesce(' + ALocalEstoque + ', 0)) as CUSTOEST';
    Soma.SQL[0]     := 'select sum(' + ALocalEstoque + ') as TOTAL_ESTOQUE, ' +
                       '       sum(' + ALocalEstoque + ' * P.CUSTO) as TOTAL_CUSTO, ' +
                       '       sum(' + ALocalEstoque + ' * P.VALOR) as TOTAL_VALOR, ' +
                       '       sum(' + ALocalEstoque + ' * P.CALC_VLUCRO) as TOTAL_LUCRO';

    if RgEstoque.ItemIndex > 0 then
    begin
      if RgEstoque.ItemIndex = 1 then
        ASQL.Add('and (coalesce(' + ALocalEstoque + ', 0) < P.ESTOQUE_MIN)');
      if RgEstoque.ItemIndex = 2 then
        ASQL.Add('and (coalesce(' + ALocalEstoque + ', 0) > P.ESTOQUE_MAX)');
    end;

    if DtCadastro.Date > 0 then
      ASQL.Add('and (P.DT_CADASTRO > ' + QuotedStr(FormatDateTime(DATA_HORA_FB, StartOfTheDay(DtCadastro.Date))) + ')');

    if CkGrupoProduto.Checked then
      Grupo_Produto.Open
    else
      QR_Titulo.Enabled := False;

    Produtos.SQL.Add(ASQL.Text);

    case cbOrdernarPor.ItemIndex of
      0: Produtos.SQL.Add('order by cast(P.CODIGO as integer)');
      1: Produtos.SQL.Add('order by P.DESCRICAO');
    end;

    try
//      showmessage(produtos.sql.text);
//      showmessage(soma.sql.text);
      Produtos.Open;
    except
      on E:Exception do
      begin
        if ContainsText(E.Message, 'conversion error from string') then
        begin
          Produtos.SQL[Produtos.SQL.Count - 1] := 'order by P.CODIGO';
          Produtos.Open;
        end else
          raise;
      end;
    end;
    Soma.SQL.Add(ASQL.Text);
    Soma.Open;

    if not DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0005'), Sender, True) then
      QuickRep1.PreviewModal;

    Grupo_Produto.Close;
    Produtos.Close;
  finally
    ASQL.Free;
  end;
end;

procedure TImpriProdutos_Gerencial.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TImpriProdutos_Gerencial.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produtos.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
end;

procedure TImpriProdutos_Gerencial.ProdutosCalcFields(DataSet: TDataSet);
begin
  inherited;
  case RgCustos.ItemIndex of
    0: Produtos.FieldByName('Referencia').AsString := AnsiReplaceText(FormatFloat('000000000', Produtos.FieldByName('CUSTO').AsFloat), ',', '');
    1: Produtos.FieldByName('Referencia').AsString := AnsiReplaceText(FormatFloat('000000.00', Produtos.FieldByName('VALOR_COMPRA').AsFloat), ',', '');
    2: Produtos.FieldByName('Referencia').AsString := AnsiReplaceText(FormatFloat('000000.00', Produtos.FieldByName('CUSTO').AsFloat), ',', '');
    3: Produtos.FieldByName('Referencia').AsString := '';
  end;
  Produtos.FieldByName('MinMax').AsString := '(' + FormatFloat(DECIMAL_0, Produtos.FieldByName('ESTOQUE_MIN').AsFloat) + '/' +
                                                   FormatFloat(DECIMAL_0, Produtos.FieldByName('ESTOQUE_MAX').AsFloat) + ')';
end;

procedure TImpriProdutos_Gerencial.FormCreate(Sender: TObject);
begin
  inherited;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  PreencheLookupProduto_TipoComTodos(CbProdutoTipo.Properties);
  PreencheLookupProduto_Estoque_LocalComTodos(CbLocalEstoque.Properties);

  InicializaSQLWhere(Soma);
  InicializaSQLWhere(Produtos);

  DtCadastro.Clear;

  // Formatação de casas decimais
  ProdutosESTOQUE.DisplayFormat      := DecimalQuantidade;
  ProdutosVALOR.DisplayFormat        := DecimalFinanceiro;
  ProdutosCUSTO.DisplayFormat        := DecimalFinanceiro;
  ProdutosCALC_VLUCRO.DisplayFormat  := DecimalFinanceiro;
  ProdutosCUSTOEST.DisplayFormat     := DecimalFinanceiro;
  ProdutosVALOR_COMPRA.DisplayFormat := DecimalFinanceiro;
  SomaTOTAL_CUSTO.DisplayFormat      := DecimalFinanceiro;
  SomaTOTAL_ESTOQUE.DisplayFormat    := DecimalQuantidade;
  SomaTOTAL_LUCRO.DisplayFormat      := DecimalFinanceiro;
  SomaTOTAL_VALOR.DisplayFormat      := DecimalFinanceiro;
end;

procedure TImpriProdutos_Gerencial.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
  inherited;
end;

procedure TImpriProdutos_Gerencial.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  LbLucroNegativoSummary.Enabled := FHouveLucroNegativo and Produtos.Eof;
end;

procedure TImpriProdutos_Gerencial.QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FTotalCusto   := 0;
  FTotalEstoque := 0;
  FTotalLucro   := 0;
  FTotalValor   := 0;
//  if Produtos.RecordCount<1 then PrintBand:=False
//  else PrintBand:=True;
end;

procedure TImpriProdutos_Gerencial.QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  LbTotalCusto.Caption   := FormatFloat(DecimalFinanceiro, FTotalCusto);
  LbTotalEstoque.Caption := FormatFloat(DecimalQuantidade, FTotalEstoque);
  LbTotalLucro.Caption   := FormatFloat(DecimalFinanceiro, FTotalLucro);
  LbTotalValor.Caption   := FormatFloat(DecimalFinanceiro, FTotalValor);
end;

procedure TImpriProdutos_Gerencial.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FTotalEstoque := FTotalEstoque + Produtos.FieldByName('ESTOQUE').AsFloat;
  FTotalCusto   := FTotalCusto + (Produtos.FieldByName('CUSTO').AsFloat       * Produtos.FieldByName('ESTOQUE').AsFloat);
  FTotalLucro   := FTotalLucro + (Produtos.FieldByName('CALC_VLUCRO').AsFloat * Produtos.FieldByName('ESTOQUE').AsFloat);
  FTotalValor   := FTotalValor + (Produtos.FieldByName('VALOR').AsFloat       * Produtos.FieldByName('ESTOQUE').AsFloat);
  LbAsterisco.Enabled := (Produtos.FieldByName('CALC_VLUCRO').AsFloat < 0);
  FHouveLucroNegativo := FHouveLucroNegativo or LbAsterisco.Enabled;
end;

procedure TImpriProdutos_Gerencial.QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  FHouveLucroNegativo := False;
end;

procedure TImpriProdutos_Gerencial.SomaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Soma.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
end;

procedure TImpriProdutos_Gerencial.SomaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SomaTotal_Lucro.Value < 0 then
    QRDBText15.Font.Color := ClRed
  else
    QRDBText15.Font.Color := ClBlack;
end;

procedure TImpriProdutos_Gerencial.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
    AReport := WREventosCadastro1.Impressao.Report;
  //      AFDMImpressao.Report.Variables['CodFornecedor']     := Fr3String(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas));
  AReport.Variables['CodGrupoParcial']   := CkGrupoProduto.Checked.ToInteger;
  AReport.Variables['CodGrupoProduto']   := Fr3String(EdtGrupoÎProduto_Grupo.Text);
  AReport.Variables['LocalEstoque']      := Fr3String(CbLocalEstoque.Text);
  AReport.Variables['TipoProduto']       := Fr3String(CbProdutoTipo.Text);
  AReport.Variables['TipoCusto']         := RgCustos.ItemIndex;
  AReport.Variables['TipoEstoque']       := RgEstoque.ItemIndex;
  AReport.Variables['ExibeCustoVenda']   := CkCustoVenda.Checked.ToInteger;
  AReport.Variables['ExibeLucro']        := CkLucro.Checked.ToInteger;
  AReport.Variables['ExibeValorAtacado'] := CheckBox2.Checked.ToInteger;
  AReport.Variables['ExibeEstoque']      := CheckBox4.Checked.ToInteger;
  AReport.Variables['ExibeValorCusto']   := CheckBox9.Checked.ToInteger;
  AReport.Variables['ExibeTotais']       := CheckBox7.Checked.ToInteger;
  AReport.Variables['ExibeValorVarejo']  := CheckBox1.Checked.ToInteger;
  AReport.Variables['ExibeValorPrazo']   := CkPrazo.Checked.ToInteger;
  AReport.Variables['DataCadastro']      := Fr3String(FormatDateTime('MM/DD/YYYY HH:MM:SS', StartOfTheDay(DtCadastro.Date)));
  AReport.Variables['OrdenarPor']        := Fr3String(cbOrdernarPor.Items[cbOrdernarPor.ItemIndex]);
end;

initialization
  RegisterClass(TImpriProdutos_Gerencial);

end.
