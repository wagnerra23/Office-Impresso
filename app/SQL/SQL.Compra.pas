unit SQL.Compra;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;


  function SQLNF_Entrada_BuscaCompraPorCodigo(ATransa: TFDCustomTransaction; ACodigo: String): TFDQuery;
  function SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
  function SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
  function SQLNF_Entrada_Tabela_Preco_BuscaPelaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
  function SQLNF_Entrada_Produtos_Afetados_BuscaQuery(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
  function SQLNF_Entrada_Parcelas_Somatorio_Parcelas(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;

implementation

Uses UnitFuncoes;

function SQLNF_Entrada_BuscaCompraPorCodigo(ATransa: TFDCustomTransaction; ACodigo: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'select * ' +
                     'from NF_ENTRADA ' +
                     'where (Codigo = :Codigo)';
  Result.ParamByName('Codigo').AsString:= ACodigo;
  Result.Open;
end;

function SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'select * ' +
                     'from NF_ENTRADA_PRODUTOS ' +
                     'where (CODNF_ENTRADA = :Codigo)';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;

function SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'select * ' +
                     'from NF_ENTRADA_PARCELAS ' +
                     'where (CODNF_ENTRADA = :Codigo)';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;

function SQLNF_Entrada_Tabela_Preco_BuscaPelaCompra(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'select T.*, P.DESCRICAO  ' +
                     'from NF_ENTRADA_TABELA_PRECO T ' +
                     'left join PRODUTO_TABELA P on (P.CODIGO = T.CODPRODUTO_TABELA) ' +
                     'where (T.CODNF_ENTRADA = :Codigo)';
//                     'and (T.CODNF_ENTRADA_PRODUTOS = :CODIGO) ';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;

function SQLNF_Entrada_Produtos_Afetados_BuscaQuery(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text :=  'select NPA.*, P.DESCRICAO ' +
                      'from NF_ENTRADA_PRODUTOS_AFETADOS NPA ' +
                      'left join PRODUTO P on (P.CODIGO = NPA.CODPRODUTO) ' +
                      'where (NPA.CODNF_ENTRADA = :Codigo) ';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;

function SQLNF_Entrada_Parcelas_Somatorio_Parcelas(ATransa: TFDCustomTransaction; ACodCompra: String): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text :=  'Select sum(Valor)as valor FROM NF_ENTRADA_PARCELAS WHERE CODNF_ENTRADA= :Codigo';
  Result.ParamByName('Codigo').AsString:= ACodCompra;
  Result.Open;
end;




end.
