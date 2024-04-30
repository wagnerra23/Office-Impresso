unit Routes.Produto.Variacao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, Classes;

  function AtualizaProdutosVinculados(AListaCodigosAlterados: TStringList; AProduto, AProduto_Preco: TDataSet): Boolean;
  function AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
  function AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
  function RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset): Boolean;

implementation

uses
  UnitFuncoes, Controller.Produto.Variacao, Services.Produto.Variacao;

function AtualizaProdutosVinculados(AListaCodigosAlterados: TStringList; AProduto, AProduto_Preco: TDataSet): Boolean;
begin
  Result := Controller.Produto.Variacao.AtualizaProdutosVinculados(AListaCodigosAlterados, AProduto, AProduto_Preco);
end;

function AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
begin
  Result := Controller.Produto.Variacao.AdicionaProdutoNaListaDeAlteracao(AListaDeAlteracao, AProduto, AProduto_Preco);
end;

function AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto, AProduto_Preco: TDataset): Boolean;
begin
  Result := Controller.Produto.Variacao.AdicionaTodosOsProdutosNaListaDeAlteracao(AListaDeAlteracao, AProduto, AProduto_Preco);
end;

function RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset): Boolean;
begin
  Result := Controller.Produto.Variacao.RemoveProdutoDaListaDeAlteracao(AListaDeAlteracao, AProduto_Preco);
end;

end.

