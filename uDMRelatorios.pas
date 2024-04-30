unit uDMRelatorios;

interface

uses
  SysUtils, Classes, frxCross, DB, DBClient, Provider, IBX.IBCustomDataSet, IBX.IBQuery, frxClass, frxDBSet,
  frxIBXComponents, DataModuleImpressao, WREventos, System.Generics.Collections;

type
  TTipoRelatorio = (trFuncionarioControleDePonto, trProdutoEntradasSaidas, trProdutoGradeCorte);
  TDadosRelatorio = record
    DtInicio : TDateTime;
    DtFim : TDateTime;
    Tipo : TTipoRelatorio;
    TipoFiltro : Integer;
    Extras : Integer;
    ProdutoGrupo: String;
    ProdutoTipo: String;
    Descricao : String;
    Codigo : String;
    PorPeriodo : Boolean;
    Flags: Array of Boolean;
    TodosFuncionarios: Boolean;
  end;

  TDMRelatorios = class(TDataModule)
    frxDados: TfrxDBDataset;
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    ProdutoESTOQUE: TFloatField;
    ProdutoSaldoInicial: TFloatField;
    ProdutoSaldoFinal: TFloatField;
    ProdutoEntrada: TFloatField;
    ProdutoSaida: TFloatField;
    IBQuery1: TIBQuery;
    DataSetProvider1: TDataSetProvider;
    CDSEntSai: TClientDataSet;
    CDSSaldoInicial: TClientDataSet;
    CDSSaldoFinal: TClientDataSet;
    CdsFornecedor: TClientDataSet;
    DSGradeProdutos: TDataSource;
    GradeProdutos: TIBQuery;
    GradeFamilia: TIBQuery;
    frxGradeFamilia: TfrxDBDataset;
    frxGradeProdutos: TfrxDBDataset;
    Funcionario: TIBQuery;
    frxFuncionario: TfrxDBDataset;
    CdsFuncionario: TClientDataSet;
    ProdutoDESCRICAO: TIBStringField;
    WREventosCadastro1: TWREventosCadastro;
    procedure GradeFamiliaBeforeOpen(DataSet: TDataSet);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
    procedure ProdutoCalcFields(DataSet: TDataSet);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
  private
    { Private declarations }
  public
    AuxDtInicio: TDateTime;
    AuxDtFim: TDateTime;
    FDadosImpressao: TDadosRelatorio;
  end;

  procedure ExecutaRelatorio(DadosRelatorio: TDadosRelatorio; AForm: TComponent);

  {Relatórios}
  procedure FuncionarioControleDePonto(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
  procedure ProdutoEntradasSaidas(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
  procedure ProdutoGradeCorte(DadosRelatorio: TDadosRelatorio; AForm: TComponent);

var
  DMRelatorios: TDMRelatorios;

implementation

uses
  DateUtils, UnitFuncoes, wrConstantes, wrFuncoes, StrUtils, Base, Tag.Report;

{$R *.dfm}

procedure ExecutaRelatorio(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
begin
  if DadosRelatorio.DtInicio > DadosRelatorio.DtFim then
  begin
    ShowMessageWR('A data final não pode ser anterior a data inicial.');
    Exit;
  end;
  DMRelatorios.AuxDtFim    := DadosRelatorio.DtFim;
  DMRelatorios.AuxDtInicio := DadosRelatorio.DtInicio;
  case DadosRelatorio.Tipo of
         trProdutoEntradasSaidas : ProdutoEntradasSaidas(DadosRelatorio, AForm);
             trProdutoGradeCorte : ProdutoGradeCorte(DadosRelatorio, AForm);
    trFuncionarioControleDePonto : FuncionarioControleDePonto(DadosRelatorio, AForm);
  end;
end;

procedure FuncionarioControleDePonto(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
begin
  DMRelatorios.FDadosImpressao := DadosRelatorio;
  if DadosRelatorio.TodosFuncionarios then
//    DMImpressaoImprimirPorNome(DMRelatorios, RelatorioListaImpressoesPadroes('FR0019'))
    DMImpressao.ImprimirTag(AForm, Tag_Report_Funcionario_Ponto_Diario)
  else
  begin
    DMRelatorios.Funcionario.Close;
    DMRelatorios.Funcionario.ParamByName('CodFuncionario').AsString := DadosRelatorio.Codigo;
    DMRelatorios.Funcionario.Open;
//    DMImpressaoImprimirPorNome(DMRelatorios, RelatorioListaImpressoesPadroes('FR0020'));
    DMImpressao.ImprimirTag(AForm, Tag_Report_Funcionario_Ponto);
  end;
end;

procedure ProdutoEntradasSaidas(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
var
  QuerX : TIBQuery;
begin
  QuerX := GeraQuery;
  try
    with DMRelatorios do
    begin
      if DadosRelatorio.ProdutoTipo <> 'Todos' then
      begin
        QuerX.SQL.Text := 'SELECT CODIGO FROM PRODUTO_TIPO WHERE (DESCRICAO = ' + QuotedStr(DadosRelatorio.ProdutoTipo) + ')';
        QuerX.Open;
        Produto.SQL[4] := 'AND (CODPRODUTO_TIPO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
        QuerX.Close;
      end;
      if DadosRelatorio.ProdutoGrupo <> 'Todos' then
      begin
        QuerX.SQL.Text := 'SELECT CODIGO FROM PRODUTO_GRUPO WHERE (DESCRICAO = ' + QuotedStr(DadosRelatorio.ProdutoGrupo) + ')';
        QuerX.Open;
        Produto.SQL[5] := 'and (CODPRODUTO_GRUPO = ' + QuotedStr(QuerX.FieldByName('CODIGO').AsString) + ')';
        QuerX.Close;
      end;
      if DadosRelatorio.Descricao <> '' then
        Produto.SQL[6] := 'and (upper(DESCRICAO) like ' + QuotedStr(AnsiUpperCase('%' + DadosRelatorio.Descricao + '%')) + ')';
      if DadosRelatorio.Codigo <> '' then
        Produto.SQL[7] := 'and (PESSOA_FORNECEDOR_CODIGO = ' + QuotedStr(DadosRelatorio.Codigo) + ')';

      CDSEntSai.Params.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DadosRelatorio.DtInicio);
      CDSEntSai.Params.ParamByName('DtFim').AsDateTime    := EndOfTheDay(DadosRelatorio.DtFim);
      CDSEntSai.Params.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
      CDSEntSai.Open;
      CDSSaldoInicial.Params.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DadosRelatorio.DtInicio);
      CDSSaldoInicial.Params.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
      CDSSaldoInicial.Open;
      CDSSaldoFinal.Params.ParamByName('DtFim').AsDateTime := EndOfTheDay(DadosRelatorio.DtFim);
      CDSSaldoFinal.Params.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
      CDSSaldoFinal.Open;
      Produto.Open;
      DMRelatorios.FDadosImpressao := DadosRelatorio;
//      DMImpressaoImprimirPorNome(DMRelatorios, RelatorioListaImpressoesPadroes('FR0021'));
      DMImpressao.ImprimirTag(AForm, Tag_Report_Produtos_Entrada_Saida);
  //    FrmRelatorios.BtnGerar.Caption := 'Aguarde...';
  //    FrmRelatorios.BtnGerar.Enabled := False;
  //    FrmRelatorios.BtnFechar.Enabled := False;
  //    FrmRelatorios.BtnGerar.Caption := 'Gerar Relatório';
  //    FrmRelatorios.BtnGerar.Enabled := True;
  //    FrmRelatorios.BtnFechar.Enabled := True;
      CDSSaldoFinal.Close;
      CDSSaldoInicial.Close;
      CDSEntSai.Close;
      IBQuery1.Close;
      Produto.Close;
      Produto.SQL[4] := '';
      Produto.SQL[5] := '';
      Produto.SQL[6] := '';
    end;
  finally
    QuerX.Free;
  end;
end;

procedure ProdutoGradeCorte(DadosRelatorio: TDadosRelatorio; AForm: TComponent);
begin
  with DMRelatorios do
  begin
    if DadosRelatorio.TipoFiltro = 0 then
    begin
      GradeProdutos.SQL[6] := 'WHERE (V.DT_FATURAMENTO BETWEEN :DtInicial AND :DtFinal)';
      GradeFamilia.SQL[6]  := 'WHERE (V.DT_FATURAMENTO BETWEEN :DtInicial AND :DtFinal)';
    end
    else if DadosRelatorio.TipoFiltro = 1 then
    begin
      GradeProdutos.SQL[6] := 'WHERE (V.DT_EMISSAO BETWEEN :DtInicial AND :DtFinal)';
      GradeFamilia.SQL[6]  := 'WHERE (V.DT_EMISSAO BETWEEN :DtInicial AND :DtFinal)';
    end;
    GradeProdutos.ParamByName('DtInicial').AsDateTime := StartOfTheDay(DadosRelatorio.DtInicio);
    GradeProdutos.ParamByName('DtFinal').AsDateTime   := EndOfTheDay(DadosRelatorio.DtFim);
    GradeProdutos.Open;
    GradeProdutos.Last;
    GradeProdutos.First;
    GradeFamilia.Open;
//    DMImpressaoImprimirPorNome(DMRelatorios, RelatorioListaImpressoesPadroes('FR0022'));
    DMImpressao.ImprimirTag(AForm, Tag_Report_Produtos_Grade_Corte);
//    FrmRelatorios.BtnGerar.Caption := 'Aguarde...';
//    FrmRelatorios.BtnGerar.Enabled := False;
//    FrmRelatorios.BtnFechar.Enabled := False;
//    FrmRelatorios.BtnGerar.Caption := 'Gerar Relatório';
//    FrmRelatorios.BtnGerar.Enabled := True;
//    FrmRelatorios.BtnFechar.Enabled := True;
    GradeFamilia.Close;
    GradeProdutos.Close;
  end;
end;

procedure TDMRelatorios.GradeFamiliaBeforeOpen(DataSet: TDataSet);
begin
  GradeFamilia.ParamByName('DtInicial').AsDateTime := StartOfTheDay(AuxDtInicio);
  GradeFamilia.ParamByName('DtFinal').AsDateTime   := EndOfTheDay(AuxDtFim);
end;

procedure TDMRelatorios.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  Produto.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
end;

procedure TDMRelatorios.ProdutoCalcFields(DataSet: TDataSet);
var
  SaldoInicial, SaldoFinal : Real;
begin
  with DMRelatorios do
  begin
    { Entrada }
    CDSEntSai.Filtered := False;
    CDSEntSai.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                     'AND (TIPO_MOVIMENTO = ' + QuotedStr('E') + ')';
    CDSEntSai.Filtered := True;
    Produto.FieldByName('Entrada').AsFloat  := CDSEntSai.FieldByName('SUMQUANT').AsFloat;

    { Saída }
    CDSEntSai.Filtered := False;
    CDSEntSai.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                     'AND (TIPO_MOVIMENTO = ' + QuotedStr('S') + ')';
    CDSEntSai.Filtered := True;
    Produto.FieldByName('Saida').AsFloat    := CDSEntSai.FieldByName('SUMQUANT').AsFloat;

    { Saldo Inicial }
    CDSSaldoInicial.Filtered := False;
    CDSSaldoInicial.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                             'AND (TIPO_MOVIMENTO = ' + QuotedStr('E') + ')';
    CDSSaldoInicial.Filtered := True;
    SaldoInicial := Produto.FieldByName('ESTOQUE').AsFloat - CDSSaldoInicial.FieldByName('SUMQUANT').AsFloat;

    CDSSaldoInicial.Filtered := False;
    CDSSaldoInicial.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                             'AND (TIPO_MOVIMENTO = ' + QuotedStr('S') + ')';
    CDSSaldoInicial.Filtered := True;
    SaldoInicial := SaldoInicial + CDSSaldoInicial.FieldByName('SUMQUANT').AsFloat;
    Produto.FieldByName('SaldoInicial').AsFloat := SaldoInicial;

    { Saldo Final }
    CDSSaldoFinal.Filtered := False;
    CDSSaldoFinal.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                              'AND (TIPO_MOVIMENTO = ' + QuotedStr('E') + ')';
    CDSSaldoFinal.Filtered := True;
    SaldoFinal := Produto.FieldByName('ESTOQUE').AsFloat - CDSSaldoFinal.FieldByName('SUMQUANT').AsFloat;

    CDSSaldoFinal.Filtered := False;
    CDSSaldoFinal.Filter := '(CODPRODUTO = ' + QuotedStr(Produto.FieldByName('CODIGO').AsString) + ') ' +
                              'AND (TIPO_MOVIMENTO = ' + QuotedStr('S') + ')';
    CDSSaldoFinal.Filtered := True;
    SaldoFinal := SaldoFinal + CDSSaldoFinal.FieldByName('SUMQUANT').AsFloat;
    Produto.FieldByName('SaldoFinal').AsFloat := SaldoFinal;
  end;
end;

procedure TDMRelatorios.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  AReport: TfrxReport;
begin
  AReport := WREventosCadastro1.Impressao.Report;

  AReport.Variables['DtInicio'] := Fr3Data(FDadosImpressao.DtInicio);
  AReport.Variables['DtFim']    := Fr3Data(FDadosImpressao.DtFim);
  if MatchStr(WREventosCadastro1.Impressao.IDInterno, ['FR0019', 'FR0020']) then
  begin
    AReport.Variables['CodFuncionario'] := QuotedStr(FDadosImpressao.Codigo);
    AReport.Variables['Mes']            := QuotedStr(MESES_NOMES[StrToInt(FormatDateTime('MM', FDadosImpressao.DtInicio))]);
    AReport.Variables['Ano']            := QuotedStr(FormatDateTime('yyyy', FDadosImpressao.DtInicio));
    AReport.Variables['PorPeriodo']     := FDadosImpressao.PorPeriodo or FDadosImpressao.TodosFuncionarios;
  end;
  if WREventosCadastro1.Impressao.IDInterno = 'FR0021' then
  begin
    AReport.Variables['FlgSomenteMovimentados'] := FDadosImpressao.Flags[0];
    AReport.Variables['CodPessoa'] := FDadosImpressao.Codigo;
  end;
  if WREventosCadastro1.Impressao.IDInterno = 'FR0022' then
    AReport.Variables['CodPessoa'] := FDadosImpressao.Codigo;
end;

initialization
  RegisterClass(TDMRelatorios);

end.
