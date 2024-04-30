unit Controller.Requisicao.Producao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Services.Requisicao;


function SolicitaRequisicaoPelaProducao(ATransaction: TFDCustomTransaction; AProducao_Produto: TDataset; AEntradaSaida: String): Boolean;

implementation

Uses UnitFuncoes;

function SolicitaRequisicaoPelaProducao(ATransaction: TFDCustomTransaction; AProducao_Produto: TDataset; AEntradaSaida: String): Boolean;
var
  ADescricao, ACodOS, AObservacao: String;
  ACodEmpresa: Integer;
begin
  try
    AProducao_Produto.First;
    while not AProducao_Produto.Eof do
    begin
      ADescricao    := 'PRODUCAO';
      ACodEmpresa   := StrCodigoToCodEmpresa(AProducao_Produto.FieldByName('CODVENDA').AsString);
      ACodOS        := AProducao_Produto.FieldByName('CODPRODUCAO').AsString;
      AObservacao   := AProducao_Produto.FieldByName('OBSERVACAO').AsString;

//      Services_SolicitaRequisicaoPelaProducao(ATransaction, AProducao_Produto, AEntradaSaida, ADescricao, ACodOS, AObservacao, ACodEmpresa);

      AProducao_Produto.Next;
    end;
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
