unit SQL.Financeiro_Boleto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;



function SQLFinanceiro_Boleto_ExisteRetonoDaCaixaEconomicaPendente(ACodConta: Integer): Boolean;
function SQLFinanceiro_boleto_RetornoWS(ATransa : TFDTransaction; ACodConta :Integer; ADataArquivo: TDateTime): TFDQuery;
function SQLFinanceiro_boleto_RetornoArquivo(ATransa : TFDTransaction; ACodConta, ANumeroArquivo: Integer; ADataArquivo: TDateTime) : TFDQuery;
function SQLFinanceiro_boleto_RetornoArquivoController(ACodConta, ANumeroArquivo: Integer; ADataArquivo: TDateTime): TFDQuery;

function SQLFinanceiro_Boleto_WS_UltimaDataBaixaEncontrada(ACodConta: Integer): TDate;

implementation

Uses UnitFuncoes;

function SQLFinanceiro_Boleto_ExisteRetonoDaCaixaEconomicaPendente(ACodConta: Integer): Boolean;
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerX.SQL.Text := 'select 1 from FINANCEIRO_BOLETO  where (CODCONTA = :CodConta) and (STATUS = ''AGUARDANDO CONFIRMAÇÃO'')';
  QuerX.ParamByName('CodConta').AsInteger := ACodConta;
  QuerX.Open;
  try
    Result := QuerX.IsEmpty;
  finally
    QuerX.Free;
  end;
end;

function SQLFinanceiro_boleto_RetornoWS(ATransa : TFDTransaction; ACodConta :Integer; ADataArquivo: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);                                                //  descricao+codConta+codigo+data_arquivo
  Result.SQL.Text := 'select * ' +
                     'from FINANCEIRO_BOLETO ' +
                     'where (DATA_ARQUIVO = :Data_Arquivo)and(CodConta = :CodConta)and(DESCRICAO = :Descricao)';
  Result.ParamByName('Descricao').AsString     := 'RETORNO';
  Result.ParamByName('Data_Arquivo').AsDateTime:= ADataArquivo;
  Result.ParamByName('CodConta').AsInteger     := ACodConta;
  Result.Open;
end;

function SQLFinanceiro_Boleto_WS_UltimaDataBaixaEncontrada(ACodConta: Integer): TDate;
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerX.SQL.Text := ' select Max(DATA_ARQUIVO)as DATA_ARQUIVO from FINANCEIRO_BOLETO  where (CODCONTA = :CodConta) and (DESCRICAO = ''RETORNO'') '+
                    ' order bY DATA_ARQUIVO desc';
  QuerX.ParamByName('CodConta').AsInteger := ACodConta;
  QuerX.Open;
  try
    Result := QuerX.FieldByName('DATA_ARQUIVO').AsDateTime;
  finally
    QuerX.Free;
  end;
end;
   {
function SQLFinanceiro_boleto_Service_RetornoWS(ATransa : TFDTransaction; ACodConta :Integer; ADataArquivo: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);                                                //  descricao+codConta+codigo+data_arquivo
  Result.SQL.Text := 'select * ' +
                     'from FINANCEIRO_BOLETO ' +
                     'where (DATA_ARQUIVO = :Data_Arquivo)and(CodConta = :CodConta)and(DESCRICAO = :Descricao)';
  Result.ParamByName('Descricao').AsString     := 'RETORNO';
  Result.ParamByName('Data_Arquivo').AsDateTime:= ADataArquivo;
  Result.ParamByName('CodConta').AsInteger     := ACodConta;
  Result.Open;
end;      }


function SQLFinanceiro_boleto_RetornoArquivoController(ACodConta, ANumeroArquivo: Integer; ADataArquivo: TDateTime): TFDQuery;
Var
  ATransa : TFDTransaction;
begin
  ATransa := GeraFDTransacao;    //// Aqui começa a Transaction, Ferrou tudo Aqui
  Result:=SQLFinanceiro_boleto_RetornoArquivo(ATransa, ACodConta, ANumeroArquivo, ADataArquivo);
end;

function SQLFinanceiro_boleto_RetornoArquivo(ATransa: TFDTransaction; ACodConta, ANumeroArquivo: Integer; ADataArquivo: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);
  Result.SQL.Text := 'select * ' +
                     'from FINANCEIRO_BOLETO ' +
                     'where (Chave = :Chave)';
  Result.ParamByName('Chave').AsString := 'RETORNO;' +
                                          IntToStr(ACodConta)+ ';' +
                                          FloatToStr(ANumeroArquivo)+ ';' +
                                          FormatDateTime('DD-MM-YYYY', ADataArquivo);
  Result.Open;
end;



end.
