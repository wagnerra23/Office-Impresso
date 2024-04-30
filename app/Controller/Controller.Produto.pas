unit Controller.Produto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  function AlteraValorProduto(ATransaction: TFDCustomTransaction; AWRCalc: TWRCalculaConfiguracoes; AValor: Variant; AProduto_Preco, AProduto_PrecoFilho: TFDQuery): Boolean;

implementation

Uses UnitFuncoes, Utils.Produto, Services.Produto, Services.Produto.Variacao;

function AlteraValorProduto(ATransaction: TFDCustomTransaction; AWRCalc: TWRCalculaConfiguracoes; AValor: Variant; AProduto_Preco, AProduto_PrecoFilho: TFDQuery): Boolean;
var
  AValorPai: Double;
begin
  try
    AWRCalc.ProdutoAlterarValor(AValor);  // Aqui deve alterar o valor do pai

    // Se a flag MANTEM_VALORES estiver marcada, ele não atualiza os valores do produto filho.
    if AWRCalc.DBProduto.FieldByName('TEM_FILHO_PRECO_INDIVIDUAL').AsString <> 'S' then
      ServiceProdutoVariacao_AtualizaValoresPelaVariacaoPai(AProduto_Preco, AValor);

    // Se ele for filho de alguem deve editar - FUNÇÃO TEMPORÁRIA
    if AProduto_PrecoFilho.RecordCount > 0 then
      ServiceProdutoVariacao_AtualizaDescontoDoFilhoPeloNovoValor(AProduto_PrecoFilho, AValor);

    Result := True;
  except
    on E:EWRException do
    begin
      ATransaction.RollBack;
      Result := False;
      raise E;
    end;
  end;
end;


end.
