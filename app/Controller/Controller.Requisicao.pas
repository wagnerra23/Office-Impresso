unit Controller.Requisicao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, StrUtils;

  procedure ValidacoesRegrasDaRequisicaoBase(AEntradaSaida, ACodOS: String; AQuant: Double; ACodEmpresa: Integer);
  function BaixaRequisicao(ACodigo: Integer; AQuant: Double; AStatus :String;
                           ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao :String): Boolean;
  function RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function EditaBaixaRequisicao(AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;

implementation

Uses UnitFuncoes, wrFuncoes, Services.Requisicao, Utils.Requisicao;

procedure ValidacoesRegrasDaRequisicaoBase(AEntradaSaida, ACodOS: String; AQuant: Double; ACodEmpresa: Integer);
begin
  if not MatchStr(AEntradaSaida, ['S', 'E']) then
    raise EWRException.Create('Tipo de compra obrigatório.');

  if AQuant = 0 then
    raise EWRException.Create('Quantidade deve ser diferente de zero.');

  if ACodOS = '' then
    raise EWRException.Create('Obrigatório vincular a uma compra, produção ou venda.');

  if ACodEmpresa <= 0 then
    raise EWRException.Create('Código de empresa obrigatório.');
end;

function BaixaRequisicao(ACodigo: Integer; AQuant: Double; AStatus :String;
                         ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao: String): Boolean;
begin
  try
    Services.Requisicao.BaixaRequisicao(ACodigo, AQuant, AStatus,
                                        ACodFuncionario, ACodCentroTrabalho, ACodMotivo, AObservacao);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

function RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
  if AQuerRequisicao.FieldByName('STATUS').AsString <> 'Pendente' then
    raise EWRException.Create('Não é possivel recusar uma requisição que não esta pendente');
  try
    Services.Requisicao.EditProdutoRequisicao_RecusarRequisicao(ACodigo, AQuerRequisicao);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

function CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
  if AQuerRequisicao.FieldByName('STATUS').AsString <> 'Pendente' then
    raise EWRException.Create('Não é possivel Cancelar uma requisição que não esta pendente, Entre em contato com o Estoquista');
  try
    Services.Requisicao.EditProdutoRequisicao_CancelaRequisicao(ACodigo, AQuerRequisicao);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

function EditaBaixaRequisicao(AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;
begin
  try
    Services.Requisicao.EditProdutoRequisicao_EditaBaixaRequisicao(AQuerRequisicao, AStatus, AQuantUtilizada, ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento);
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
