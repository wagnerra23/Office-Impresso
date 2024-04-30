unit Controller.WR_Componente;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Componente_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_COMPONENTE(AQuerComponente: TFDQuery);
  procedure CadastraOuEdita_WR_COMPONENTE(AQuer: TFDQuery; AComponente: TWR_Componente);

implementation

Uses UnitFuncoes, SQL.WR_Componente, StrUtils, Tag.Componente;

procedure ControllerWR_Componente_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuerComponente: TFDQuery;
  ATransa: TFDTransaction;
begin
//  ATransa := GeraFDTransacao;
//  try
//    AQuerComponente := SQLWR_COMPONENTE_BuscaTodos(ATransa);
//    InsertBloco_WR_COMPONENTE(AQuerComponente);
//    ATransa.Commit;
//    ARefazer_WR_Controle:=True;
//  except
//    ATransa.Rollback;
//  end;
end;

procedure InsertBloco_WR_COMPONENTE(AQuerComponente: TFDQuery);
var
  i: integer;
begin
  for i := 0 to Length(AWR_Componente)-1 do
  begin
    if not Assigned(AWR_Componente[i]) then Continue;

    CadastraOuEdita_WR_COMPONENTE(AQuerComponente, AWR_Componente[i]);
  end;
end;

procedure CadastraOuEdita_WR_COMPONENTE(AQuer: TFDQuery; AComponente: TWR_Componente);
begin
  if not AQuer.Locate('CODIGO', AComponente.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := AComponente.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('FORM').AsInteger           := AComponente.CodWR_Form;
  AQuer.FieldByName('COMPONENT').AsString       := AComponente.Component;
  AQuer.FieldByName('ATIVO').AsString           := ifthen(AComponente.Ativo,'S','N');
  AQuer.Post;
end;

end.
