unit SQL.WR_Agrupador;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils;

function SQLWR_Agrupador_BuscaTodos(ATransa: TFDTransaction): TFDQuery;

implementation

Uses UnitFuncoes, wrFuncoes;

function SQLWR_Agrupador_BuscaTodos(ATransa: TFDTransaction): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'SELECT * FROM WR_AGRUPADOR';
  Result.Open;
end;

end.
