unit Routes.Produto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, uWRCalculaConfiguracoes;

  function AlteraValorProduto(ATransacao: TFDCustomTransaction; AWRCalc: TWRCalculaConfiguracoes; AValor: Variant; AProduto_Preco, AProduto_PrecoFilho: TFDQuery): Boolean;

implementation

uses
  UnitFuncoes, Controller.Produto, Services.Produto;

function AlteraValorProduto(ATransacao: TFDCustomTransaction; AWRCalc: TWRCalculaConfiguracoes; AValor: Variant; AProduto_Preco, AProduto_PrecoFilho: TFDQuery): Boolean;
begin
  Result := Controller.Produto.AlteraValorProduto(ATransacao, AWRCalc, AValor, AProduto_Preco, AProduto_PrecoFilho);
end;

end.

