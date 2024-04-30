unit Controller.Requisicao.Estoque;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

  function SolicitaRequisicao(ATransaction: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer): Boolean;
  function BaixaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
                           ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao: String): Boolean;
  function RecusarRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function CancelaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function EditaBaixaRequisicao(ATransaction: TFDCustomTransaction; AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;

implementation

Uses UnitFuncoes, wrFuncoes, Controller.Requisicao, Services.Requisicao, Utils.Requisicao;

function SolicitaRequisicao(ATransaction: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer): Boolean;
begin
//  try
//    Controller.Requisicao.SolicitaRequisicao(ATransaction, AProduto, AEntradaSaida, ADescricao, ACodOS, AObservacao, ACodEmpresa);
//    Result := True;
//  except
//    on E:EWRException do
//    begin
//      Result := False;
//      raise E;
//    end;
//  end;
end;

function BaixaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
                         ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao: String): Boolean;
begin
//  try
//    ATransaction.StartTransaction;
//    Controller.Requisicao.BaixaRequisicao(ACodigo, AQuerRequisicao, AQuant, AStatus,
//                                          ACodFuncionario, ACodCentroTrabalho, ACodMotivo, AObservacao);
//    ATransaction.Commit;
//    Result := True;
//  except
//    on E:EWRException do
//    begin
//      Result := False;
//      ATransaction.RollBack;
//      raise EWRException.Create(E.Message);
//    end;
//  end;
end;

function RecusarRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
//  try
//    Controller.Requisicao.RecusarRequisicao(ACodigo, AQuerRequisicao);
//    Result := True;
//  except
//    on E:EWRException do
//    begin
//      Result := False;
//      ATransaction.RollBack;
//      raise E;
//    end;
//  end;
end;

function CancelaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
  if AQuerRequisicao.FieldByName('STATUS').AsString <> 'Pendente' then
    raise EWRException.Create('Não é possivel Cancelar uma requisição que não esta pendente, Entre em contato com o Estoquista');
//  try
//    Controller.Requisicao.CancelaRequisicao(ACodigo, AQuerRequisicao);
//    Result := True;
//  except
//    on E:EWRException do
//    begin
//      Result := False;
//      TFDQuery(AQuerRequisicao).Transaction.RollBack;
//      raise E;
//    end;
//  end;
end;

function EditaBaixaRequisicao(ATransaction: TFDCustomTransaction; AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;
begin
  try
    Controller.Requisicao.EditaBaixaRequisicao(AQuerRequisicao, AStatus, AQuantUtilizada, ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento);
    Result := True;
  except
    on E:EWRException do
    begin
      Result := False;
      AQuerRequisicao.Transaction.RollBack;
      raise E;
    end;
  end;
end;

end.
