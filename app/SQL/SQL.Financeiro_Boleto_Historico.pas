unit SQL.Financeiro_Boleto_Historico;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;


function SQLFinanceiro_Boleto_Historico(ATransa : TFDTransaction; ACodFinanceiro_Boleto: Integer): TFDQuery;
function SQLFinanceiro_Boleto_Historico_ListaRetornosAnteriores(ANossoNumero: String; ACodFinanceiro_Boleto: Integer): TFDQuery;


implementation

Uses UnitFuncoes;

function SQLFinanceiro_Boleto_Historico(ATransa : TFDTransaction; ACodFinanceiro_Boleto: Integer): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);                                                //  descricao+codConta+codigo+data_arquivo
  Result.SQL.Text := 'select * ' +
                     'from FINANCEIRO_BOLETO_HISTORICO ' +
                     'where (CODFINANCEIRO_BOLETO = :CodFinanceiro_Boleto)';
  Result.ParamByName('CodFinanceiro_Boleto').AsInteger := ACodFinanceiro_Boleto;
  Result.Open;
end;

function SQLFinanceiro_Boleto_Historico_ListaRetornosAnteriores(ANossoNumero: String; ACodFinanceiro_Boleto: Integer): TFDQuery;
begin
  Result := GeraFDQuery;
	Result.SQL.Text := 'select FBH.CODFINANCEIRO_BOLETO ' +
	  ' from FINANCEIRO_BOLETO_HISTORICO FBH ' +
	  ' where (FBH.BOLETO_NOSSO_NR = :NossoNumero) ' +
	  '      and (FBH.CODFINANCEIRO_BOLETO <> :CodFinanceiro_Boleto)';
	Result.ParamByName('NossoNumero').AsString := ANossoNumero;
  Result.ParamByName('CodFinanceiro_Boleto').AsInteger := ACodFinanceiro_Boleto;
  Result.Open;
end;

{
function SQLFinanceiro_Boleto_Historico(ATransa : TFDTransaction; ACodFinanceiro_Boleto: Integer): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);                                                //  descricao+codConta+codigo+data_arquivo
  Result.SQL.Text := 'select * ' +
                     'from FINANCEIRO_BOLETO_HISTORICO ' +
                     'where (CODFINANCEIRO_BOLETO = :CodFinanceiro_Boleto)';
  Result.ParamByName('CodFinanceiro_Boleto').AsInteger := ACodFinanceiro_Boleto;
  Result.Open;
end;
}

end.
