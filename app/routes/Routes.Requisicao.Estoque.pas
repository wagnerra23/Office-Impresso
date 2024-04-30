unit Routes.Requisicao.Estoque;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, Classes;

  function SolicitaRequisicao(ATransaction: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer): Boolean;
  function BaixaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
                           ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao :String): Boolean;
  function RecusarRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function CancelaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
  function EditaBaixaRequisicao(ATransaction: TFDCustomTransaction; AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;

implementation

uses
  UnitFuncoes, Controller.Requisicao.Estoque;

function SolicitaRequisicao(ATransaction: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer): Boolean;
begin
  Result := Controller.Requisicao.Estoque.SolicitaRequisicao(ATransaction, AProduto, AEntradaSaida, ADescricao, ACodOS, AObservacao, ACodEmpresa);
end;

function BaixaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
                           ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao :String): Boolean;
begin
  Result := Controller.Requisicao.Estoque.BaixaRequisicao(ATransaction, ACodigo, AQuerRequisicao, AQuant, AStatus,
                                                  ACodFuncionario, ACodCentroTrabalho, ACodMotivo, AObservacao);
end;

function RecusarRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
  Result := Controller.Requisicao.Estoque.RecusarRequisicao(ATransaction, ACodigo, AQuerRequisicao);
end;

function CancelaRequisicao(ATransaction: TFDCustomTransaction; ACodigo: Integer; AQuerRequisicao: TFDQuery): Boolean;
begin
  Result := Controller.Requisicao.Estoque.RecusarRequisicao(ATransaction, ACodigo, AQuerRequisicao);
end;

function EditaBaixaRequisicao(ATransaction: TFDCustomTransaction; AQuerRequisicao: TFDQuery; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer): Boolean;
begin
  Result := Controller.Requisicao.Estoque.EditaBaixaRequisicao(ATransaction, AQuerRequisicao, AStatus, AQuantUtilizada, ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento);
end;

end.

