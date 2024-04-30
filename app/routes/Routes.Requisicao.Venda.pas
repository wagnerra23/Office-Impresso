unit Routes.Requisicao.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, Classes;

  function SolicitaRequisicaoPelaVenda(ATransaction: TFDTransaction; ACadastro, AVenda_Produto: TDataset; NF_Entrada_Saida: String): Boolean;

implementation

uses
  UnitFuncoes, Controller.Requisicao.Venda;

function SolicitaRequisicaoPelaVenda(ATransaction: TFDTransaction; ACadastro, AVenda_Produto: TDataset; NF_Entrada_Saida: String): Boolean;
begin
  Result := Controller.Requisicao.Venda.SolicitaRequisicaoPelaVenda(ATransaction, ACadastro, AVenda_Produto, NF_Entrada_Saida);
end;

end.
