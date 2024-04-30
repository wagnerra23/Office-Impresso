unit Controller.Requisicao.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

function SolicitaRequisicaoPelaVenda(ATransaction: TFDTransaction; ACadastro, AVenda_Produto: TDataset; NF_Entrada_Saida: String): Boolean;

implementation

Uses UnitFuncoes, Controller.Requisicao, Utils.Requisicao.Venda, Services.Requisicao;

function SolicitaRequisicaoPelaVenda(ATransaction: TFDTransaction; ACadastro, AVenda_Produto: TDataset; NF_Entrada_Saida: String): Boolean;
var
  AEntradaSaida, ALocalEstoque, ATipo, ACodOS, AObservacao: String;
  ACodEmpresa, ACodCentroTrabalho: Integer;
begin
//  if not (ACadastro.State = dsEdit) then
//    raise EWRException.Create('A Venda deve estar em EDIÇÃO para realizar as requisições.');

  // Preenche os parâmetros necessário para inserção da requisição
  ACodEmpresa   := StrCodigoToCodEmpresa(AVenda_Produto.FieldByName('CODVENDA').AsString);  // Busca código da empresa pelo código da compra
  AEntradaSaida := Utils.Requisicao.Venda.NF_Entrada_SaidaToEntradaOuSaida(NF_Entrada_Saida);
  ACodOS        := AVenda_Produto.FieldByName('CODVENDA').AsString;
  AObservacao   := AVenda_Produto.FieldByName('OBS_PRODUCAO').AsString;
  ACodCentroTrabalho := 0;
  ALocalEstoque := 'PRINCIPAL';
  ATipo := 'VENDA';

//  ValidaRegras(AEntradaSaida,
//               ACodOS,
//               AVenda_Produto.FieldByName('QUANT').AsFloat,
//               ACodEmpresa);
  try
    Services_SolicitaRequisicaoEmBloco(ATransaction, ACadastro, AVenda_Produto,
                                       ATipo, AEntradaSaida, ACodOS, AObservacao, ALocalEstoque,
                                       ACodCentroTrabalho, ACodEmpresa);

    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

end.
