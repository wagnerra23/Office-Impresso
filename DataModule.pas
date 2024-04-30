unit DataModule;

interface

uses
  SysUtils, Classes, DB, System.Variants, IBX.IBCustomDataSet, IBX.IBDatabase, Vcl.Forms, UCHistDataset,
  uWRCalculaConfiguracoes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  wrConversao,  FireDAC.UI.Intf, Winapi.Windows, Vcl.Controls, StrUtils, FireDAC.Comp.Client, cxTL, cxDBTL,
  IBX.IBQuery, dxLayoutContainer, cxDropDownEdit, Math, UnitFuncoes, Generics.Collections, System.Diagnostics,
  ACBrNFe, pcnNFe, pcnConversao, Classes.WR;// {$IFDEF COMERCIAL}, Classes.WR {$ENDIF} ;

type
  TDM = class(TDataModule)
    UCHistProduto: TUCHist_DataSet;
    DSProduto: TDataSource;
    DSProduto_Composicao: TDataSource;
    DSProduto_Centro_Trabalho: TDataSource;
    DSProduto_Fornecedor: TDataSource;
    DSVenda_Produto: TDataSource;
    DSVenda_Composicao: TDataSource;
    DSVenda_Produto_Custo_Adicional: TDataSource;
    UCVenda_Produto: TUCHist_DataSet;
    WRCalc: TWRCalculaConfiguracoes;
    Produto: TFDQuery;
    ProdutoPerimetro: TFloatField;
    ProdutoAreaQuadrada: TFloatField;
    ProdutoAreaCubica: TFloatField;
    Produto_Composicao: TFDQuery;
    Produto_Centro_Trabalho: TFDQuery;
    Produto_Fornecedor: TFDQuery;
    Pessoas: TFDQuery;
    DSPessoas: TDataSource;
    UCHistPessoas: TUCHist_DataSet;
    Venda: TFDQuery;
    Venda_Produto: TFDQuery;
    Venda_Composicao: TFDQuery;
    Venda_Produto_Custo_Adicional: TFDQuery;
    DSVenda: TDataSource;
    UCVenda: TUCHist_DataSet;
    DSNota_Fiscal_Produto: TDataSource;
    DSNota_Fiscal_Financeiro: TDataSource;
    UCHistNota_Fiscal_Produto: TUCHist_DataSet;
    Nota_Fiscal: TFDQuery;
    Nota_Fiscal_Produto: TFDQuery;
    Nota_Fiscal_Financeiro: TFDQuery;
    DSNota_Fiscal: TDataSource;
    UCHistNota_Fiscal: TUCHist_DataSet;
    Produto_Tabela_Preco: TFDQuery;
    DSProduto_Tabela_Preco: TDataSource;
    Configuracao_Componente_Nota_Fiscal: TFDQuery;
    procedure Produto_ComposicaoAfterInsert(DataSet: TDataSet);
  protected
//    type
//      TModoDataSets = (mdRegistrosUnicos, mdMestreDetalhe);
  private
//    FModoDataSets: TModoDataSets;
//    procedure SetModoDataSets(const Value: TModoDataSets);
//    constructor CreatePrivate(AOwner: TComponent);
  protected
//    property ModoDataSets: TModoDataSets read FModoDataSets write SetModoDataSets;
  public
    procedure DefineTransacaoFD(const ATransa: TFDCustomTransaction);
//    constructor CreateModoRegistrosUnicos(AOwner: TComponent);
//    constructor CreateModoMestreDetalhe(AOwner: TComponent);
    constructor Create(AOwner: TComponent); override;
  end;

  function SQLAgendaMaxOrdenacao(ATransa: TComponent): TWRDataSet;
  procedure SQLCidadeCadastrar(const ACodCidade: Integer; const ACidade, AUF: string);

  function SQLCentrosTrabalho: TFDQuery;
  function SQLCentrosTrabalho_Funcionario(ACodigo:Variant): TFDQuery;
  function SQLQuantOSDia: Integer;
  function SQLEnderecoResponsavel(const ACodResponsavel: string): TFDQuery;
  function SQLFinanceiroVerificaParcelasEmAberto(const ATransa: TComponent; const ACodResponsavel: string): TWRDataSet;
  function SQLPessoaDescontoProduto(const ACodPessoa, ACodProduto: string): TFDQuery;

  function SQLProdutoBuscaPeloCodFabrica(const ATransa: TComponent; const ACodFabrica, ACodFornecedor: string): TWRDataSet;
  function SQLProdutoBuscaSeExistePelaDescricaoProdutoTipo(const ADescProdutoTipo: string): TFDQuery;
  function SQLProdutoBuscaSeExistePeloCodProdutoTipo(const ACodProdutoTipo: Integer): TFDQuery;
  function SQLProdutoEstoqueCusto(const ACodProduto: string; const ACodEmpresa: Integer): TFDQuery;
  function SQLProdutosEstoqueBaixo(const ACodEmpresa: Integer; ACodForncedor:String): TFDQuery;
  function SQLProdutoMaxFamilia: TFDQuery;
  function SQLProdutoMaxProdutoComposicao(const ATransacao: TComponent; const ACodProduto: string): TWRDataSet;
  function SQLProdutoListaCodigos: TFDQuery;

  function SQLNCMDescricao(const ACodigo, ATipo: string): TFDQuery;
  function SQLNF_Entrada_ProdutosMaxCodigo(const ANFEntrada: TFDQuery): TFDQuery;
  function SQLRegra: TFDQuery;
  function SQLProducao_Situacao: TFDQuery;
  function SQLUnidades: TIBQuery;
  function SQLUsuarios(const AIncluirPerfis: Boolean): TFDQuery;
//  function SQLVendaProdutoMaxCodigo(const ATransacao: TComponent; const ACodVenda: string): TWRDataSet;
  function SQLVendaTipoBuscaModelos(const AModelos: TArray<TVendaTipoModelo>): TFDQuery;
  function SQLVendaTipoBusca(const ADescVendaTipo: string): TFDQuery;
  function SQLVendaTipoModeloBuscaPelaVendaTipo(const AVendaTipo: string): TFDQuery;
  function SQLVendaMaxSequencia(const ATransa: TFDTransaction; const AVendaTipo: string): Integer;
  function SQLProducao_ComposicaoMaxCodigo(const ATransacao: TComponent; const ACodProducao: variant): TWRDataSet;
  function SQLProducao_CheckListMaxCodigo(const ATransacao: TComponent; const ACodProducao: string): TWRDataSet;
  function SQLProdcaoMaxCodProducao(const ATransa: TFDTransaction): Integer;
  function SQLProducaoMaxSequencia(const ATransa: TFDTransaction; AProtocolo_Principal: String): Integer;
  function SQLSpreadSheetReferencias(const ANomeSpreadSheet: string): TFDQuery;
  function SQLCentro_Trabalho_PlanoContasMaxCodigo(const ATransacao: TComponent): TWRDataSet;

  function SQLProducao_RoterioMaxCodigo(const ATransacao: TFDTransaction; const ACodProducao_Roterio: string): TFDQuery;

  function SQLProximoCodigoProduto_Roteiro_Ficha_Tecnica(const ATransacao: TFDTransaction; const ACodRoteiro_Pergunta: integer): Integer;
  function NF_EntradaCodProdutoFromCodFabrica(const ATransa: TComponent; const ACodFabrica, ACodFornecedor: string): string;
  procedure NF_EntradaProdutoCarregaCustoEstoqueAnterior(Const ADataSetProduto: TDataSet; ACodEmpresa :Integer);

//  procedure ProdutoCalcularCustosUnico(const ATransa: TFDTransaction; const ACodProduto: string);

//  procedure DM_VendaConfirmar(const AVenda: TDataSet);
//  function DM_VendaCopiarParaNotaFiscal(const AVenda, AVendaProduto, AVendaFinanceiro, AVendaProdutoCustoAdicional: TDataSet): Integer;
  procedure DM_VendaProdutoEventoAfterInsert(const AVenda, AVendaProduto: TFDQuery);
  procedure DM_ProdutoComposicaoEventoAfterInsert(const ADataSetProduto, ADataSetComposicao: TDataSet);

  //Produção
//  procedure DM_VendaEnviarProducao(const AWRCalcVenda: TWRCalculaConfiguracoes; AObservacao: String; ATransa :TFDTransaction; historico :TUCHist_DataSet);

  procedure DM_ProdutoArrumarEstoqueProducaoAplicaAlteracoesEstoque(t: TProdutoArrumarEstoqueProducao);   // Recriar, Onde vai ser usada e quando?
  procedure DM_ProdutoQuantMovimentosVendaExcluiMovimentosEstoque(t: TProdutoQuantMovimentosVenda);       // Recriar, Onde vai ser usada e quando?

  procedure DM_Clientes_ProdutoAtualizar(ADataSetProduto_Tabela_Preco: TDataSet; AValor_Novo: Double);
  /// <summary>Recarrega a composição de todos os produtos dependentes</summary>
  /// <param name="ACodProduto">Produto que será feita a busca pelos produtos dependentes e que possui a composição que será aplicada nos dependentes</param>
  /// <param name="AProdutoMemoria">Instância do ProdutoMemoria que será utilizada para carregar os produtos e composições e aplicar nos produtos encontrados</param>
  /// <remarks>
  /// Faz uma busca de todos os produtos que dependem do produto em ACodProduto e atualiza a composição deles para
  /// conter a composição atual do cadastro
  /// </remarks>


  procedure DM_Email_ModeloSalvar(const ACodigo: Variant; const ADescricao, AForm, AAssunto: string;
    const ATornarPadrao: Boolean; const AModelo: TStream);

implementation

{$R *.dfm}

uses
  DateUtils, wrFuncoes, Aguarde{$IFDEF COMERCIAL}, wrFuncoes_Office {$ENDIF};

function SQLProdutoEstoqueCusto(const ACodProduto: string; const ACodEmpresa: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select P.CUSTO, PE.ESTOQUE, P.UNIDADE ' +
                     'from PRODUTO P ' +
                     'left join PRODUTO_ESTOQUE PE on (PE.CODPRODUTO = P.CODIGO) and (PE.CODEMPRESA = :CodEmpresa) ' +
                     'where (P.CODIGO = :CodProduto)';
  Result.ParamByName('CodProduto').AsString  := ACodProduto;
  Result.ParamByName('CodEmpresa').AsInteger := ACodEmpresa;
  Result.Open;
end;

function SQLProdutosEstoqueBaixo(const ACodEmpresa: Integer; ACodForncedor:String): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select P.CODIGO, P.ESTOQUE_MIN, P.ESTOQUE_MAX, PE.ESTOQUE ' +
                     'from PRODUTO P ' +
                     'left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (PE.CODEMPRESA = :CodEmpresa) ' +
                     'where (coalesce(PE.ESTOQUE, 0) < P.ESTOQUE_MIN) ' +
                     '      and (P.TEM_COMPOSICAO = ''N'') ' +
                     '      and (P.PODE_ALTERAR_ESTOQUE = ''S'') ' +
                     '      and (P.PESSOA_RESPONSAVEL_CODIGO = :CodPessoa) ' +
                     '      and (P.ATIVO = ''S'')';
  Result.ParamByName('CodEmpresa').AsInteger := ACodEmpresa;
  Result.ParamByName('CodPessoa').AsString   := ACodForncedor;
  Result.Open;
end;

function SQLRegra: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from REGRA';
  Result.Open;
end;

function SQLProducao_Situacao: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from Producao_Situacao';
  Result.Open;
end;

function SQLUnidades: TIBQuery;
begin
  {$IFDEF PAF}
  Result := GeraQuery(TDefinicoesBancoIB.BancoPAFServidor);
  {$ELSE}
  Result := GeraQuery;
  {$ENDIF}
  Result.SQL.Text := 'select * from UNIDADE';
  Result.Open;
end;

function SQLUsuarios(const AIncluirPerfis: Boolean): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select CODIGO, USUARIO, LOGIN, PRIVILEGED, PROFILE, INATIVO, TYPEREC ' +
                     'from USUARIO';
  if not AIncluirPerfis then
    Result.SQL.Add('where (TYPEREC = ''U'')');
  Result.Open;
end;

function SQLFinanceiroVerificaParcelasEmAberto(const ATransa: TComponent; const ACodResponsavel: string): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransa);
  Result.SQL.Text := 'select first 1 1 ' +
                     'from FINANCEIRO ' +
                     'where (PESSOA_RESPONSAVEL_CODIGO = :Cod) ' +
                     '      and (TIPO = :Tipo) ' +
                     '      and (STATUS like ''ATIVO%'')';
  Result.ParamByName('Cod').AsString  := ACodResponsavel;
  Result.ParamByName('Tipo').AsString := FinanceiroTipoToStr(fitAReceber);
  Result.Open;
end;

function SQLProdutoListaCodigos: TFDQuery;    // Rotina não esta funcionando, Ativar
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select CODIGO ' +
                     'from PRODUTO';
  Result.Open;
end;

function SQLProdutoMaxFamilia: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select max(CODFAMILIA) ' +
                     'from PRODUTO';
  Result.Open;
end;

function SQLProdutoMaxProdutoComposicao(const ATransacao: TComponent; const ACodProduto: string): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransacao);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from PRODUTO_COMPOSICAO ' +
                     'where (CODPRODUTO_COMPOSICAO = :CodProduto)';
  Result.Params[0].AsString := ACodProduto;
  Result.Open;
end;

function SQLProdutoBuscaPeloCodFabrica(const ATransa: TComponent; const ACodFabrica, ACodFornecedor: string): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransa);
  Result.SQL.Text := 'select first 1 PF.CODPRODUTO ' +
                     'from PRODUTO_FORNECEDOR PF ' +
                     'left join PRODUTO P on (P.CODIGO = PF.CODPRODUTO) ' +
                     'where (PF.PESSOA_RESPONSAVEL_CODIGO = :CodFornecedor) ' +
                     '      and (PF.CODFABRICA = :CodFabrica) or (PF.CODFABRICA_ORIGINAL = :CodFabrica_Original) ' +
                     '      and (P.ATIVO = ''S'')';
  Result.ParamByName('CodFabrica').AsString := ACodFabrica;
  Result.ParamByName('CodFabrica_Original').AsString := NF_EntradaLimpaCodProduto(ACodFabrica);
  Result.ParamByName('CodFornecedor').AsString := ACodFornecedor;
  Result.Open;
end;

function SQLProdutoBuscaSeExistePeloCodProdutoTipo(const ACodProdutoTipo: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select first 1 1 ' +
                     'from PRODUTO ' +
                     'where (CODPRODUTO_TIPO = :Cod)';
  Result.Params[0].AsInteger := ACodProdutoTipo;
  Result.Open;
end;

function SQLProdutoBuscaSeExistePelaDescricaoProdutoTipo(const ADescProdutoTipo: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select 1 ' +
                     'from PRODUTO_TIPO ' +
                     'where (DESCRICAO = :Desc)';
  Result.Params[0].AsString := ADescProdutoTipo;
  Result.Open;
end;

function SQLNCMDescricao(const ACodigo, ATipo: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select DESCRICAO ' +
                     'from NF_NCM ' +
                     'where (CODIGO = :Codigo) ' +
                     '      and (TIPO = :Tipo) ' +
                     '      and (EX_TIPI = 0)';
  Result.ParamByName('Codigo').AsString := ACodigo;
  Result.ParamByName('Tipo').AsString   := ATipo;
  Result.Open;
end;

function SQLNF_Entrada_ProdutosMaxCodigo(const ANFEntrada: TFDQuery): TFDQuery;
begin
  Result := GeraFDQuery(ANFEntrada.Transaction);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from NF_ENTRADA_PRODUTOS ' +
                     'where (CODNF_ENTRADA = :Cod)';
  Result.Params[0].AsString := ANFEntrada.FieldByName('CODIGO').AsString;
  Result.Open;
end;

//function SQLVendaProdutoMaxCodigo(const ATransacao: TComponent; const ACodVenda: string): TWRDataSet;
//begin
//  Result := TWRDataSet.Create(ATransacao);
//  Result.SQL.Text := 'select max(CODIGO) ' +
//                     'from VENDA_PRODUTO ' +
//                     'where (CODVENDA = :Cod)';
//  Result.Params[0].AsString := ACodVenda;
//  Result.Open;
//end;

function SQLVendaTipoBusca(const ADescVendaTipo: string): TFDQuery;     // Morte
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select CODIGO, ENTRADA_SAIDA, NF_FINALIDADE, MODELO, TABELA ' +
                     'from VENDA_TIPO ' +
                     'where (DESCRICAO = :Desc)';
  Result.Params[0].AsString := ADescVendaTipo;
  Result.Open;
end;

function SQLVendaTipoModeloBuscaPelaVendaTipo(const AVendaTipo: string): TFDQuery;   // defunto
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select MODELO ' +
                     'from VENDA_TIPO ' +
                     'where (DESCRICAO = :Desc)';
  Result.Params[0].AsString := AVendaTipo;
  Result.Open;
end;

function SQLVendaTipoBuscaModelos(const AModelos: TArray<TVendaTipoModelo>): TFDQuery;
var
  AModelo: TVendaTipoModelo;
  ASQL: string;
begin
  {Retorna a DESCRICAO de todos os tipos de venda que são dos modelos informados}
  ASQL := '';
  for AModelo in AModelos do
  begin
    if ASQL <> '' then
      ASQL := ASQL + ', ';
    ASQL := ASQL + QuotedStr(VendaTipoModeloToStr(AModelo));
  end;

  Result := GeraFDQuery;
  Result.SQL.Text := 'select DESCRICAO ' +
                     'from VENDA_TIPO ' +
                     'where (ATIVO = ''S'') ' +
                     '      and (MODELO in (' + ASQL + '))';
  Result.Open;
end;

function SQLVendaMaxSequencia(const ATransa: TFDTransaction; const AVendaTipo: string): Integer;
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  QuerX.SQL.Text := 'select max(SEQUENCIA)  ' +
                     'from VENDA ' +
                     'where (VENDA_TIPO = :Tipo) ' +
                     '      and (CODIGO like :Codigo)';
  QuerX.ParamByName('Tipo').AsString   := AVendaTipo;
  QuerX.ParamByName('Codigo').AsString := '%-' + Empresa.FieldByName('CODIGO').AsString;
  QuerX.Open;
  Result:= QuerX.Fields[0].AsInteger + 1;
  QuerX.Free;
end;

function SQLProdcaoMaxCodProducao(const ATransa: TFDTransaction): Integer;
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  QuerX.SQL.Text := 'select max(CODPRODUCAO)  ' +
                     'from PRODUCAO ';
  QuerX.Open;
  Result:= QuerX.Fields[0].AsInteger + 1;
  QuerX.Free;
end;

function SQLProducaoMaxSequencia(const ATransa: TFDTransaction; AProtocolo_Principal: String): Integer;
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(ATransa);
  QuerX.SQL.Text := ' select max(SEQUENCIA_PROTOCOLO)  ' +
                    ' from PRODUCAO '+
                    ' where PROTOCOLO_PRINCIPAL = :Protocolo_Principal';
  QuerX.ParamByName('Protocolo_Principal').AsString:=AProtocolo_Principal;
  QuerX.Open;
  Result := QuerX.Fields[0].AsInteger + 1;
  QuerX.Free;
end;

function SQLProducao_RoterioMaxCodigo(const ATransacao: TFDTransaction; const ACodProducao_Roterio: string): TFDQuery;
begin
  Result := GeraFDQuery(ATransacao);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from PRODUCAO_ROTEIRO_ORGANOGRAMA ' +
                     'where (CODPRODUCAO_ROTEIRO = :CodProducao_Roterio)';
  Result.ParamByName('CodProducao_Roterio').AsString := ACodProducao_Roterio;
  Result.Open;
end;

function SQLProducao_ComposicaoMaxCodigo(const ATransacao: TComponent; const ACodProducao: Variant): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransacao);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from PRODUCAO_PRODUTO ' +
                     'where (CODPRODUCAO = :CodProducao)';
  Result.ParamByName('CodProducao').Value := ACodProducao;
  Result.Open;
end;

function SQLCentro_Trabalho_PlanoContasMaxCodigo(const ATransacao: TComponent): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransacao);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from Centro_Trabalho_PlanoContas ';
  Result.Open;
end;

function SQLProducao_CheckListMaxCodigo(const ATransacao: TComponent; const ACodProducao: string): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransacao);
  Result.SQL.Text := 'select max(CODIGO) ' +
                     'from PRODUCAO_CHECKLIST ' +
                     'where (CODPRODUCAO = :CodProducao)';
  Result.ParamByName('CodProducao').AsString := ACodProducao;
  Result.Open;
end;

function SQLProximoCodigoProduto_Roteiro_Ficha_Tecnica(const ATransacao: TFDTransaction; const ACodRoteiro_Pergunta: Integer): Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(ATransacao);
  try
  QuerX.SQL.Text := 'select max(CODIGO) + 1 ' +
                     'from PRODUTO_ROTEIRO_FICHA_TECNICA ' +
                     'where (CODROTEIRO_PERGUNTA = :CodRoteiro_Pergunta)';
  QuerX.ParamByName('CodRoteiro_Pergunta').AsInteger := ACodRoteiro_Pergunta;
  QuerX.Open;
  Result := QuerX.Fields[0].AsInteger;
  finally
    QuerX.Free;
  end;
end;

function SQLQuantOSDia: Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select count(codigo) as QUANT from producao where dt_emissao > current_date';
    QuerX.Open;
    Result := QuerX.FieldByName('QUANT').AsInteger;
  finally
    QuerX.Free;
  end;
end;

function SQLCentrosTrabalho: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select CODIGO, DESCRICAO, ICONE ' +
                     'from CENTRO_TRABALHO WHERE ATIVO = ''S'' order by Descricao asc ';
  Result.Open;
end;

function SQLCentrosTrabalho_Funcionario(ACodigo: Variant): TFDQuery;
Var
  QuerVerificaRecurso: TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := ' select CODIGO, FANTASIA as DESCRICAO ' +
                     ' from PESSOAS where PODE_PRODUCAO = ''S'' Order By RAZAOSOCIAL';
  if VarToStrDef(ACodigo,'') <> '' then
  begin
    QuerVerificaRecurso := GeraFDQuery;
    try
      QuerVerificaRecurso.SQL.Text := 'select CTR.* ' +
                                      'from CENTRO_TRABALHO_RECURSO CTR ' +
                                      'where CTR.CODCENTRO_TRABALHO = ' + IntToStr(ACodigo);
      QuerVerificaRecurso.Open;
      if QuerVerificaRecurso.RecordCount > 0 then
      begin
        Result.SQL.Text :='select P.CODIGO, P.FANTASIA as DESCRICAO ' +
                          ' from CENTRO_TRABALHO_RECURSO CTR ' +
                          ' left join PESSOAS P on P.CODIGO = CTR.PESSOA_FUNCIONARIO_CODIGO ' +
                          ' where P.PODE_PRODUCAO = ''S'' AND ' +
                          ' CTR.CODCENTRO_TRABALHO = ' + IntToStr(ACodigo);
      end;
    Finally
      QuerVerificaRecurso.Free;
    end;
  end;
  Result.Open;
end;

function SQLEnderecoResponsavel(const ACodResponsavel: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select P.*, C.DESCRICAO as CIDADE ' +
                     'from PESSOAS P ' +
                     'left join CIDADES C on (P.CODCIDADE = C.CODIGO) '+
                     'where (P.CODIGO = ' + QuotedStr(ACodResponsavel) + ')';
  Result.Open;
end;

function SQLAgendaMaxOrdenacao(ATransa: TComponent): TWRDataSet;
begin
  Result := TWRDataSet.Create(ATransa);
  Result.SQL.Text := 'select max(A.ORDENACAO) ' +
                     'from AGENDA A ' +
                     'where (A.DT_FATURAMENTO is null) ' +
                     '      and (A.ATIVO = ''S'') ' +
                     '      and (A.STATUS = 0)';
  Result.Open;
end;

procedure SQLCidadeCadastrar(const ACodCidade: Integer; const ACidade, AUF: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from CIDADES ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodCidade;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger   := ACodCidade;
      QuerX.FieldByName('DESCRICAO').AsString := ACidade;
      Querx.FieldByName('UF').AsString        := AUF;
      QuerX.FieldByName('PAIS').AsString      := 'BRASIL';
      QuerX.FieldByName('CODPAIS').AsString   := '1058';
      QuerX.Post;
      ATransa.Commit;
    end;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

function SQLPessoaDescontoProduto(const ACodPessoa, ACodProduto: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select PERC_DESCONTO ' +
                     'from CLIENTES_PRODUTO ' +
                     'where (CODCLIENTE = :CodPessoa) ' +
                     '      and (CODPRODUTO = :CodProduto)';
  Result.ParamByName('CodPessoa').AsString  := ACodPessoa;
  Result.ParamByName('CodProduto').AsString := ACodProduto;
  Result.Open;
end;

function SQLSpreadSheetReferencias(const ANomeSpreadSheet: string): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text := 'select * ' +
                     'from SPREADSHEET_REFERENCIA ' +
                     'where (SPREADSHEET = ' + QuotedStr(ANomeSpreadSheet) + ')';
  Result.Open;
end;

{ TDM }

constructor TDM.Create(AOwner: TComponent);   //Ok
begin
//  raise Exception.Create('Não usar este Create');
  inherited Create(AOwner);

  InicializaSQLWhere(Venda);
  InicializaSQLWhere(Venda_Produto);
  InicializaSQLWhere(Venda_Composicao);

//  InicializaSQLWhere(Nota_Fiscal);
//  InicializaSQLWhere(Nota_Fiscal_Produto);
//  InicializaSQLWhere(Nota_Fiscal_Financeiro);

  InicializaSQLWhere(Pessoas);
end;

//constructor TDM.CreateModoMestreDetalhe(AOwner: TComponent);    //Ok
//begin
//  CreatePrivate(AOwner);
//  ModoDataSets := mdMestreDetalhe;
//end;

//constructor TDM.CreateModoRegistrosUnicos(AOwner: TComponent);    //Ok
//begin
//  CreatePrivate(AOwner);
//  ModoDataSets := mdRegistrosUnicos;
//end;

//constructor TDM.CreatePrivate(AOwner: TComponent);    //Ok
//begin
//  inherited Create(AOwner);
//  InicializaSQLWhere(Producao);
//  InicializaSQLWhere(Producao_Produto);
//
//  InicializaSQLWhere(Venda);
//  InicializaSQLWhere(Venda_Produto);
//  InicializaSQLWhere(Venda_Composicao);
//
////  InicializaSQLWhere(Nota_Fiscal);
////  InicializaSQLWhere(Nota_Fiscal_Produto);
////  InicializaSQLWhere(Nota_Fiscal_Financeiro);
//
//  InicializaSQLWhere(Pessoas);
//end;

procedure TDM.DefineTransacaoFD(const ATransa: TFDCustomTransaction);
begin
  //Produto
  Produto.Transaction            := ATransa;
  Produto_Composicao.Transaction := ATransa;
  Produto_Fornecedor.Transaction := ATransa;
  Produto_Centro_Trabalho.Transaction := ATransa;
  Produto_Tabela_preco.Transaction := ATransa;

  //Pessoas
  Pessoas.Transaction := ATransa;

  //Venda
  Venda.Transaction                         := ATransa;
  Venda_Produto.Transaction                 := ATransa;
  Venda_Composicao.Transaction              := ATransa;

  //Nota Fiscal
  Nota_Fiscal.Transaction                  := ATransa;
  Nota_Fiscal_Produto.Transaction          := ATransa;
  Nota_Fiscal_Financeiro.Transaction       := ATransa;
end;

procedure TDM.Produto_ComposicaoAfterInsert(DataSet: TDataSet);
begin
  DM_ProdutoComposicaoEventoAfterInsert(Produto, Produto_Composicao);
end;
//
//procedure TDM.SetModoDataSets(const Value: TModoDataSets);
//begin
////  FModoDataSets := Value;
//
//  {$REGION 'Produção'}
//  LimpaSQLWhere(Producao_Produto);
//  case ModoDataSets of
//    mdRegistrosUnicos: Producao_Produto.SQL.Add('where (PP.CODIGO = :Codigo) ' +
//                                                '      and (PP.CODPRODUCAO = :CodProducao)');
//    mdMestreDetalhe:   Producao_Produto.SQL.Add('where (PP.CODPRODUCAO = :CodProducao)');
//  end;
//  {$ENDREGION}
//
//  {$REGION 'Venda'}
//  LimpaSQLWhere(Venda_Produto);
//  case ModoDataSets of
//    mdRegistrosUnicos: Venda_Produto.SQL.Add('where (CODIGO = :Codigo) ' +
//                                             'and (CODVENDA = :CodVenda)');
//    mdMestreDetalhe:   Venda_Produto.SQL.Add('where (CODVENDA = :CodVenda)');
//  end;
//
//  LimpaSQLWhere(Venda_Composicao);
//  case ModoDataSets of
//    mdRegistrosUnicos: Venda_Composicao.SQL.Add('where (CODIGO = :Codigo) ' +
//                                                '      and (CODVENDA = :CodVenda) ' +
//                                                '      and (CODVENDA_PRODUTO = :CodVendaProduto)');
//    mdMestreDetalhe:   Venda_Composicao.SQL.Add('where (CODVENDA = :CodVenda) ' +
//                                                '      and (CODVENDA_PRODUTO = :CodVendaProduto)');
//  end;
//
//  {$ENDREGION}
//
//  {$REGION 'Nota Fiscal'}
//  LimpaSQLWhere(Nota_Fiscal_Produto);
//  case ModoDataSets of
//    mdRegistrosUnicos: Nota_Fiscal_Produto.SQL.Add('where (CODIGO = :Codigo) ' +
//                                                   '      and (CODNOTA_FISCAL = :CodNotaFiscal)');
//    mdMestreDetalhe:   Nota_Fiscal_Produto.SQL.Add('where (CODNOTA_FISCAL = :CodNotaFiscal)');
//  end;
//
//  LimpaSQLWhere(Nota_Fiscal_Financeiro);
//  case ModoDataSets of
//    mdRegistrosUnicos: Nota_Fiscal_Financeiro.SQL.Add('where (CODIGO = :Codigo) ' +
//                                                      '      and (CODNOTA_FISCAL = :CodNotaFiscal)');
//    mdMestreDetalhe:   Nota_Fiscal_Financeiro.SQL.Add('where (CODNOTA_FISCAL = :CodNotaFiscal)');
//  end;
//  {$ENDREGION}
//end;

procedure DM_ProdutoComposicaoEventoAfterInsert(const ADataSetProduto, ADataSetComposicao: TDataSet);
var
  QuerX: TWRDataSet;
begin
  QuerX := SQLProdutoMaxProdutoComposicao(ADataSetComposicao, ADataSetProduto.FieldByName('CODIGO').AsString);
  try
    ADataSetComposicao.FieldByName('CODIGO').AsInteger               := QuerX.Fields[0].AsInteger + 1;
    ADataSetComposicao.FieldByName('CODPRODUTO_COMPOSICAO').AsString := ADataSetProduto.FieldByName('CODIGO').AsString;
    ADataSetComposicao.FieldByName('QUANT_COMPOSICAO').AsFloat       := 1;     // isso aqui ta com uma cara estranha, 0 número 1 deve ser fórmula
  finally
    QuerX.Free;
  end;
end;

//procedure DM_VendaEnviarProducao(const AWRCalcVenda: TWRCalculaConfiguracoes; AObservacao: String;
//   ATransa :TFDTransaction; historico :TUCHist_DataSet);
//var
//  ADM: TDM;
//begin
//  ADM := TDM.Create(Nil);
//  try
//    ADM.DefineTransacaoFD(WRGetTransacao(AWRCalcVenda.DBVendaOuCompra) as TFDCustomTransaction);
//    ADM.Producao.Open;
//    ADM.Producao_Produto.Open;
//    ADM.Configuracao_Componente_Producao.Open;
//    ADM.Configuracao_Componente_Producao_Produto.Open;
//
//    DM_ProducaoCriaNovaProducao(AWRCalcVenda, ATransa, ADM.Producao, ADM.Producao_Produto, ADM.Configuracao_Componente_Producao,
//      ADM.Configuracao_Componente_Producao_Produto, AWRCalcVenda.TreeList.Root, 0, Null, AObservacao, historico);
//    ADM.Producao.Transaction.Commit;
//  finally
//    ADM.Free;
//  end;
//end;
{
procedure DM_VendaConfirmar(const AVenda: TDataSet);
begin
  AVenda.Post;
  ComitaTransacao(WRGetTransacao(AVenda));
end;

function DM_VendaCopiarParaNotaFiscal(const AVenda, AVendaProduto, AVendaFinanceiro, AVendaProdutoCustoAdicional: TDataSet): Integer;
var
  ADM: TDM;
begin
  Result := 0;
  ADM := TDM.CreateModoRegistrosUnicos(nil);
  try
    ADM.DefineTransacaoFD(WRGetTransacao(AVenda) as TFDCustomTransaction);
    ADM.Nota_Fiscal.Open;
    ADM.Nota_Fiscal_Produto.Open;
    ADM.Nota_Fiscal_Financeiro.Open;
    ADM.Configuracao_Componente_Nota_Fiscal.Open;
    if VendaCopiaParaNotaFiscal(AVenda, AVendaProduto, AVendaFinanceiro, ADM.Nota_Fiscal,
      ADM.Nota_Fiscal_Produto, ADM.Nota_Fiscal_Financeiro,ADM.Configuracao_Componente_Nota_Fiscal) then
      Result := ADM.Nota_Fiscal.FieldByName('CODIGO').AsInteger;
  finally
    ADM.Free;
  end;
end;    }

procedure DM_VendaProdutoEventoAfterInsert(const AVenda, AVendaProduto: TFDQuery);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(AVendaProduto.Transaction);
  QuerX.SQL.Text := 'select max(CODIGO)as Codigo, max(Ordem)as Ordem  ' +
                     'from VENDA_PRODUTO ' +
                     'where (CODVENDA = :Cod)';
  QuerX.Params[0].AsString := AVenda.FieldByName('CODIGO').AsString;
  QuerX.Open;
  try
    AVendaProduto.FieldByName('CODIGO').AsInteger := QuerX.FieldByName('CODIGO').AsInteger + 1;
    AVendaProduto.FieldByName('ORDEM').AsInteger  := QuerX.FieldByName('ORDEM').AsInteger + 1;
  finally
    QuerX.Free;
  end;
  AVendaProduto.FieldByName('CODVENDA').AsString := AVenda.FieldByName('CODIGO').AsString;
end;

function NF_EntradaCodProdutoFromCodFabrica(const ATransa: TComponent; const ACodFabrica, ACodFornecedor: string): string;
var
  QuerX: TWRDataSet;
begin
  QuerX := SQLProdutoBuscaPeloCodFabrica(ATransa, ACodFabrica, ACodFornecedor);
  try
    Result := QuerX.Fields[0].AsString;
  finally
    QuerX.Free;
  end;
  // Aqui
end;

procedure DM_ProdutoArrumarEstoqueProducaoAplicaAlteracoesEstoque(t: TProdutoArrumarEstoqueProducao);     // Remover e colocar e descomentar o aguarde
var                                                                                                      // Essa rotina mexe no estoque, sem ser a rotina mestre esta errada
  I, J: Integer;
  QuerX, QuerEstoque: TFDQuery;
  AProduto: TProdutoQuantPair;
  AVenda: TProdutoQuantMovimentosVenda;
begin
{$IFDEF COMERCIAL}
  QuerX := GeraFDQuery(t.FTransa);
  QuerEstoque := GeraFDQuery(t.FTransa);                // Perigo
  try
 {   if FFrmAguarde <> nil then
    begin
      FFrmAguarde.Mensagem := 'Aplicando ajustes no estoque';
      FFrmAguarde.ProgressoMaximo := FListaQuantMovimentar.Count;
      FFrmAguarde.Progresso       := 0;
    end;  }

    QuerX.SQL.Text := 'update PRODUTO_ESTOQUE set PRINCIPAL = PRINCIPAL - :Quant ' +
                      'where (CODPRODUTO = :CodProduto) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerEstoque.SQL.Text := 'update PRODUTO_ESTOQUE set ESTOQUE = ' + ProdutoArrumarEstoqueProducaoGetSQLCamposEstoque +
                            ' where (CODPRODUTO = :CodProduto) ' +
                            '      and (CODEMPRESA = :CodEmpresa)';
    for i := 0 to t.FListaQuantMovimentar.Count - 1 do
    begin
      AProduto := t.FListaQuantMovimentar[i];

      for J := 0 to AProduto.Vendas.Count - 1 do
      begin
        AVenda := AProduto.Vendas[J];

        QuerX.ParamByName('CodProduto').AsString := AProduto.CodProduto;
        QuerX.ParamByName('CodEmpresa').AsString := AProduto.CodEmpresa;
        QuerX.ParamByName('Quant').AsFloat       := AVenda.Quant;
        QuerX.ExecSQL;

        QuerEstoque.ParamByName('CodProduto').AsString := AProduto.CodProduto;
        QuerEstoque.ParamByName('CodEmpresa').AsString := AProduto.CodEmpresa;
        QuerEstoque.ExecSql;

        DM_ProdutoQuantMovimentosVendaExcluiMovimentosEstoque(AVenda);
      end;
    end;
  finally
    QuerX.Free;
    QuerEstoque.Free;
  end;
{$ENDIF}
end;

procedure DM_ProdutoArrumarEstoqueProducaoAtivaInativaTrigger(AAtivado: Boolean);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'alter trigger PRODUTO_MOVIMENTO_BD0 ' + IfThen(AAtivado, 'ACTIVE', 'INACTIVE');
    QuerX.ExecSQL;
    ComitaTransacao(ATransa);
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure DM_ProdutoQuantMovimentosVendaExcluiMovimentosEstoque(t: TProdutoQuantMovimentosVenda);
var
  QuerX: TFDQuery;
  I: Integer;
begin
  DM_ProdutoArrumarEstoqueProducaoAtivaInativaTrigger(False);
  QuerX := GeraFDQuery(t.FOwner.FTransa);
  try
    QuerX.SQL.Text := 'delete from PRODUTO_MOVIMENTO ' +
                      'where (CODIGO = :Codigo) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    for I := 0 to t.ListaExcluir.Count - 1 do
    begin
      QuerX.ParamByName('Codigo').AsInteger    := t.ListaExcluir[i].Codigo;
      QuerX.ParamByName('CodEmpresa').AsString := t.ListaExcluir[i].CodEmpresa;
      QuerX.ExecSQL;
    end;
  finally
    DM_ProdutoArrumarEstoqueProducaoAtivaInativaTrigger(True);
    QuerX.Free;
  end;
end;

procedure DM_Clientes_ProdutoAtualizar(ADataSetProduto_Tabela_Preco: TDataSet; AValor_Novo: Double);  // Funcão deve Morrer
var                                                                                                   // Essa funcao foi feita nova e não foi modificada
  AValor, APercAplicado: Double;
  ADataAtual: TDateTime;
  ACampoAtualizar, ACampoZerar: string;
begin
  //DONE: GRAVE - Revisar valores com 0, arrumar o SQL
  try
    ADataAtual := 0;
    {QuerXProduto_Tabela_Preco.SQL.Text :=
      'update PRODUTO_TABELA_PRECO P set ' +
      '    P.VALOR = iif(P.TEM_MARGEM_FIXA_CONTIBUICAO = ''S'', (cast(:NovoValor as double precision) - (cast(:NovoValor as double precision) * (P.PERC_DESCONTO / 100))), P.VALOR), ' +
      '    P.PERC_DESCONTO = iif(P.TEM_MARGEM_FIXA_CONTIBUICAO = ''S'', P.PERC_DESCONTO, (-(((P.VALOR / cast(:NovoValor as double precision)) - 1) * 100))), ' +
      '    P.DT_ALTERACAO = current_timestamp ' +
      'where (P.CODPRODUTO = :CodProduto)';
    QuerXProduto_Tabela_Preco.ParamByName('CodProduto').AsString := ACodProduto;
    QuerXProduto_Tabela_Preco.ParamByName('NovoValor').AsFloat   := AValor_Novo;
    QuerXProduto_Tabela_Preco.ExecSQL;}

    ADataSetProduto_Tabela_Preco.DisableControls;
    try
      ADataSetProduto_Tabela_Preco.First;
      while not ADataSetProduto_Tabela_Preco.Eof do
      begin
        ADataSetProduto_Tabela_Preco.Edit;
        if ADataSetProduto_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'S' then
        begin
          if ADataSetProduto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat > 0 then
            AValor := PercAdd(AValor_Novo, ADataSetProduto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat)
          else
            AValor := PercDesconto(AValor_Novo, ADataSetProduto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat);
          if not SameValue(AValor, ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat := AValor;
        end else
        begin
          APercAplicado := PercAplicado(ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat, AValor_Novo);
          if APercAplicado > 0 then
          begin
            ACampoAtualizar := 'PERC_ACRESCIMO';
            ACampoZerar     := 'PERC_DESCONTO';
          end else
          begin
            ACampoAtualizar := 'PERC_DESCONTO';
            ACampoZerar     := 'PERC_ACRESCIMO';
            APercAplicado   := -APercAplicado;
          end;

          if not SameValue(APercAplicado, ADataSetProduto_Tabela_Preco.FieldByName(ACampoAtualizar).AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName(ACampoAtualizar).AsFloat := APercAplicado;

          if not IsZero(ADataSetProduto_Tabela_Preco.FieldByName(ACampoZerar).AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName(ACampoZerar).AsFloat := 0;
        end;

        //Grava somente se algo mudou
        if ADataSetProduto_Tabela_Preco.Modified then
        begin
          if ADataAtual = 0 then
            ADataAtual := DataHoraSys;
          ADataSetProduto_Tabela_Preco.FieldByName('DT_ALTERACAO').AsDateTime := ADataAtual;
          ADataSetProduto_Tabela_Preco.Post;
        end else
          ADataSetProduto_Tabela_Preco.Cancel;
        ADataSetProduto_Tabela_Preco.Next;
      end;
      ADataSetProduto_Tabela_Preco.First;
    finally
      ADataSetProduto_Tabela_Preco.EnableControls;
    end;
  except

  end;
end;

procedure DM_Email_ModeloSalvar(const ACodigo: Variant; const ADescricao, AForm, AAssunto: string;
  const ATornarPadrao: Boolean; const AModelo: TStream);
var
  ATransa: TFDTransaction;
  QuerX: TFDQuery;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    if ATornarPadrao and (AForm <> '') then
    begin
      //Quando for pra tornar padrão, remove o padrão de qualquer outro modelo que seja da mesma form
      QuerX.SQL.Text := 'update EMAIL_MODELO set PADRAO = null ' +
                        'where (FORM = :Form)';
      QuerX.Params[0].AsString := AForm;
      QuerX.ExecSQL;
      QuerX.Params.Clear;
    end;

    QuerX.SQL.Text := 'select CODIGO, DESCRICAO, MODELO, FORM, ASSUNTO, PADRAO ' +
                      'from EMAIL_MODELO ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].Value := ACodigo;
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').AsInteger := GetProximoCodigo('EMAIL_MODELO', ATransa);
    end else
      QuerX.Edit;
    QuerX.FieldByName('DESCRICAO').AsString := ADescricao;
    QuerX.FieldByName('FORM').AsNotEmpty    := AForm;
    QuerX.FieldByName('ASSUNTO').AsNotEmpty := AAssunto;
    if ATornarPadrao and (AForm <> '') then
      QuerX.FieldByName('PADRAO').AsString := 'S';
    TBlobField(QuerX.FieldByName('MODELO')).LoadFromStream(AModelo);
    QuerX.Post;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure NF_EntradaProdutoCarregaCustoEstoqueAnterior(Const ADataSetProduto :TDataSet; ACodEmpresa: Integer);
var
  QuerX: TFDQuery;
begin                                                       //codigo não pode executar isso no cadatro e venda
  QuerX := SQLProdutoEstoqueCusto(ADataSetProduto.FieldByName('CODPRODUTO').AsString, ACodEmpresa);
  try
    ADataSetProduto.FieldByName('CALC_VANTERIOR_CUSTO').AsFloat       := QuerX.FieldByName('CUSTO').AsFloat;
    if TConfig.ReadBoolean('CUSTO_MEDIO_PONDERADO') then
      ADataSetProduto.FieldByName('CALC_QANTERIOR_ESTOQUE').AsFloat   := QuerX.FieldByName('ESTOQUE').AsFloat
    else
      ADataSetProduto.FieldByName('CALC_QANTERIOR_ESTOQUE').AsFloat   := 0;
  finally
    QuerX.Free;
  end;
end;

{$REGION 'Reativar Código para: ProdutoCalcularCustosTodos'}
// Reativar se posível, Faltou a transação como parametro
(*
procedure ProdutoCalcularCustosTodos; // Legal essa função,  Não esta sendo usada, reativar no cadastro do produto
var
  QuerControle: TFDQuery;
  AFrmAguarde: TFrmAguarde;
  FTransacao : TFDTransaction;
begin
  AFrmAguarde  := TFrmAguarde.Create(nil);
//  FTransacao   := TFDTransaction.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Recalculando produtos...';

    QuerControle := SQLProdutoListaCodigos;
    try
      QuerControle.FetchAll;
      AFrmAguarde.ProgressoMaximo := QuerControle.RecordCount;
      while not QuerControle.Eof do
      begin
//        ProdutoCalcularCustosUnico(FTransacao, QuerControle.Fields[0].AsString);
        AFrmAguarde.AvancarProgresso;
        QuerControle.Next;
      end;
    finally
      QuerControle.Free;
    end;

    if FTransacao.Active then
      FTransacao.Commit;
  finally
    AFrmAguarde.Free;
  end;
end;
// Só é usada na função decima, mais não é chamada em lugar nenuhm
procedure ProdutoCalcularCustosUnico(const ATransa: TFDTransaction; const ACodProduto: string);
var
  ATotal, AMargem: Double;
  ADM: TDM;
begin
  ADM := TDM.CreateModoMestreDetalhe(nil);
  try
    ADM.DefineTransacaoFD(ATransa);

    ADM.Produto.ParamByName('Codigo').AsString := ACodProduto;
    ADM.Produto.Open;

    //Pode ocorrer de esta rotina ser chamada pelo cálculo da composição e o item da composição está com o código
    //de produto inválido
    if ADM.Produto.IsEmpty then
      Exit;

    //O total deve ser obtido aqui logo após abrir a query. O total é alterado antes do Calc pelos eventos dos datasets
    ATotal  := ADM.Produto.FieldByName('TOTAL').AsFloat;
    AMargem := ADM.Produto.FieldByName('MARGEM').AsFloat;

    ADM.Produto_Composicao.ParamByName('CodProdutoComposicao').AsString := ACodProduto;
    ADM.Produto_Composicao.Open;

    ADM.Produto_Centro_Trabalho.ParamByName('CodProduto').AsString := ACodProduto;
    ADM.Produto_Centro_Trabalho.Open;

    //Efetua o Calc
    ADM.Produto.Edit;

    {CadProdutoApenasCalc(ADM.DSProduto, ADM.DSProduto_Composicao, ADM.DSProduto_Centro_Trabalho, ADM.DSProduto_Custo_Adicional);
    ACalculo.Calc;

    //Se é pra atualizar o preço do produto, então apenas mantem a margem, reaplica ela que o preço é recalculado
    if FListaProdutosAtualizarPreco.IndexOf(ACodProduto) >= 0 then
      ACalculo.AlterarMargemProduto(AMargem)
    else //Senão reaplica o preço do produto para garantir que se mantem o mesmo
      ACalculo.AlterarTotalProduto(ATotal);}
    ADM.Produto.Post;
  finally
    ADM.Free;
  end;
end;    *)

{$ENDREGION}

end.

