unit SQL.Arquivo_Relatorio;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;
 

function SQLArquivo_Relatorio_Boleto: TFDQuery;

implementation

Uses UnitFuncoes, wrFuncoes;

function SQLArquivo_Relatorio_Boleto: TFDQuery;
begin
  Result := GeraFDQuery;                                              
  Result.SQL.Text :=' select ARQUIVO_FR3 ' +
                    ' from ARQUIVOS_RELATORIO ' +
                    ' where (DESCRICAO = ''Boleto.fr3'')';
  Result.Open;
end;


end.
