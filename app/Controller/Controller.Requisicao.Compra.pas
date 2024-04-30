unit Controller.Requisicao.Compra;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

function Controller_SolicitaRequisicaoPelaCompra(ATransaction: TFDTransaction; ACadastro, ANF_Entrada_Produto: TDataset; ATipoCompra: String): Boolean;
procedure ValidaRegras_RequisicaoPelaCompra(ACadastro, AProduto: TDataSet);

implementation

Uses UnitFuncoes, Services.Requisicao, Utils.Requisicao.Compra, Controller.Requisicao;

function Controller_SolicitaRequisicaoPelaCompra(ATransaction: TFDTransaction; ACadastro, ANF_Entrada_Produto: TDataset; ATipoCompra: String): Boolean;
var
  AEntradaSaida, ALocalEstoque, ATipo, ACodOS, AObservacao: String;
  ACodEmpresa, ACodCentroTrabalho: Integer;
begin
  // Regras de Entrada aqui
  ValidaRegras_RequisicaoPelaCompra(ACadastro, ANF_Entrada_Produto);
  try
    // Se entrar aqui não pode dar erro pra executar, tudo o que pode dar erro tem que ser pego antes de entrar aqui.
    Services_SolicitaRequisicaoEmBloco(ATransaction, ACadastro, ANF_Entrada_Produto,
                                       'COMPRA', AEntradaSaida, ACodOS, AObservacao, ALocalEstoque,
                                       ACodCentroTrabalho, ACodEmpresa);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.message);
    end;
  end;
end;

procedure ValidaRegras_RequisicaoPelaCompra(ACadastro, AProduto: TDataSet);
begin
  if ACadastro.FieldByName('TIPO').AsString = '' then
    raise EWRException.Create('Tipo de compra obrigatório');

  AProduto.First;
  while not AProduto.Eof do
  begin
    ValidacoesRegrasDaRequisicaoBase(TipoDeCompraToEntradaOuSaida(ACadastro.FieldByName('TIPO').AsString),
                                     AProduto.FieldByName('CODNF_ENTRADA').AsString,
                                     AProduto.FieldByName('QUANT').AsFloat,
                                     StrCodigoToCodEmpresa(AProduto.FieldByName('CODNF_ENTRADA').AsString));
    AProduto.Next;
  end;
end;

end.
