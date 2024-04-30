unit Routes.Requisicao.Compra;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, Classes;

  function SolicitaRequisicaoPelaCompra(ATransaction: TFDTransaction; ACadastro, ANF_Entrada_Produto: TDataset; ATipoDeCompra: String): Boolean;

implementation

uses
  UnitFuncoes, Controller.Requisicao.Compra;

function SolicitaRequisicaoPelaCompra(ATransaction: TFDTransaction; ACadastro, ANF_Entrada_Produto: TDataset; ATipoDeCompra: String): Boolean;
begin
  Result := Controller.Requisicao.Compra.Controller_SolicitaRequisicaoPelaCompra(ATransaction, ACadastro, ANF_Entrada_Produto, ATipoDeCompra);
end;

end.
