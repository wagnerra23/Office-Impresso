unit SQL.PlanoContas;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;
 

function SQLPlanoContas_Ativo: TFDQuery;

implementation

Uses UnitFuncoes, wrFuncoes;

function SQLPlanoContas_Ativo: TFDQuery;
begin
  Result := GeraFDQuery;                                              
Result.SQL.Text := 'select DESCRICAO ' +
				  'from TIPO_PAGAMENTO ' +
				  'where (ATIVO is distinct from ''N'') ' +
				  'order by CODIGO asc';
  Result.Open;
end;


end.
