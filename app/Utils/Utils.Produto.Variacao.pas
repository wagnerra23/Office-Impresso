unit Utils.Produto.Variacao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Classes;

  // Lista de alteração - Edita na variação e edita depois ao commitar
  procedure AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);
  procedure AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);
  procedure RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);

implementation

Uses UnitFuncoes;

procedure AdicionaProdutoNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);
begin
  try
    if not Assigned(AListaDeAlteracao) then
      AListaDeAlteracao := TStringList.Create;

    AListaDeAlteracao.AddIfNotExists(AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString);
  except
    raise EWRException.Create('WRError: Erro ao adicionar produto na lista de alteração.');
  end;
end;

procedure AdicionaTodosOsProdutosNaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);
begin
  try
    AProduto_Preco.First;
    while not AProduto_Preco.eof do
    begin
      Utils.Produto.Variacao.AdicionaProdutoNaListaDeAlteracao(AListaDeAlteracao, AProduto_Preco);
      AProduto_Preco.Next;
    end;
  except
    raise EWRException.Create('WRError: Erro ao adicionar todos os produtos na lista de alteração.');
  end;
end;

procedure RemoveProdutoDaListaDeAlteracao(var AListaDeAlteracao: TStringList; AProduto_Preco: TDataset);
begin
  try
    if Assigned(AListaDeAlteracao) then
      AListaDeAlteracao.DeleteIfExists(AProduto_Preco.FieldByName('CODPRODUTO_VINCULADO').AsString);
  except
    raise EWRException.Create('WRError: Erro ao remover produto da lista de alteração.');
  end;
end;


end.
