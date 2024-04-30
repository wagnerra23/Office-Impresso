unit SQL.WR_Controle_Parent;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils;

function SQLWR_Controle_Parent(ATransa: TFDTransaction): TFDQuery;   //; ATipo:String; ACodWR_Controle_Parent, ACodOrigem:Integer
function SQLWR_Controle_ParentDelete(ATransa: TFDTransaction): TFDQuery;
function SQLWR_Controle_ParentAchaControle(ATipo:String; ATagForm:Integer): Integer;

implementation

Uses UnitFuncoes, wrFuncoes;

function SQLWR_Controle_Parent(ATransa: TFDTransaction): TFDQuery;      //; ATipo:String; ACodWR_Controle_Parent, ACodOrigem:Integer
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'SELECT * FROM WR_CONTROLE_Parent '+
                     ' Where (Tipo = :Tipo) and '+
                     '       (CodWR_Controle = :CodWR_Controle) and '+
                     '       (CodOrigem = :CodOrigem)';
//  Result.ParamByName('Tipo').AsString           := ATipo;
//  Result.ParamByName('CodWR_Controle').AsInteger:= ATiACodWR_Controle_Parentpo;
//  Result.ParamByName('CodOrigem').AsInteger     := ACodOrigem;
//  Result.Open;
end;

function SQLWR_Controle_ParentDelete(ATransa: TFDTransaction): TFDQuery;
begin
  Result := GeraFDQuery(ATransa);
  Result.SQL.Text := 'delete from wr_controle_parent';
end;

function SQLWR_Controle_ParentAchaControle(ATipo:String; ATagForm:Integer): Integer;
Var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  QuerX.SQL.Text := 'SELECT * FROM WR_CONTROLE_Parent '+
                     ' Where (Tipo = :Tipo) and '+
                     '       (CodOrigem = :CodOrigem)';
  QuerX.ParamByName('Tipo').AsString           := ATipo;
  QuerX.ParamByName('CodOrigem').AsInteger     := ATagForm;
  QuerX.Open;
  Result:= QuerX.FieldByName('CodWR_Controle').AsInteger;
  QuerX.Free;
end;

end.
