unit Utils.Produto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  function SQLProduto_BuscaValorDaVariacaoPai(ACodProduto: string): Double;
  procedure SQLProduto_VariacaoPaiBloqueouFilhos(ACodProduto: string; var ABloqueiaPreco: Boolean; var ABloqueiaDescricao: Boolean);

implementation

Uses UnitFuncoes;

function SQLProduto_BuscaValorDaVariacaoPai(ACodProduto: string): Double;
var
  AQuery: TFDQuery;
begin
  Result := 0;
  AQuery := GeraFDQuery;
  try
    AQuery.SQL.Text := 'SELECT VALOR FROM PRODUTO WHERE CODIGO = :Codigo';
    AQuery.ParamByName('Codigo').AsString := ACodProduto;
    AQuery.Open;
    Result := AQuery.FieldByName('VALOR').AsFloat;
  finally
    AQuery.Free;
  end;
end;

procedure SQLProduto_VariacaoPaiBloqueouFilhos(ACodProduto: string; var ABloqueiaPreco: Boolean; var ABloqueiaDescricao: Boolean);
var
  AQuery: TFDQuery;
begin
  AQuery := GeraFDQuery;
  try
    AQuery.SQL.Text := 'SELECT TEM_FILHO_PRECO_INDIVIDUAL, TEM_FILHO_DESCRICAO_INDIVIDUAL FROM PRODUTO WHERE CODIGO = :Codigo';
    AQuery.ParamByName('Codigo').AsString := ACodProduto;
    AQuery.Open;
    ABloqueiaPreco := AQuery.FieldByName('TEM_FILHO_PRECO_INDIVIDUAL').AsString <> 'S';
    ABloqueiaDescricao  := AQuery.FieldByName('TEM_FILHO_DESCRICAO_INDIVIDUAL').AsString <> 'S';
  finally
    AQuery.Free;
  end;
end;


end.
