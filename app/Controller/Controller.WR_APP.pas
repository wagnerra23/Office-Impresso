unit Controller.WR_APP;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;
  procedure ControllerWR_APP_Telas;
  procedure ControllerWR_APP_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_APP(AQuer: TFDQuery);
  procedure CadastraOuEdita_WR_APP(AQuer: TFDQuery; AAPP: TWR_APP);

implementation

Uses UnitFuncoes, SQL.WR_APP, StrUtils, wr.Modulo, Classes.wr, Tag.APP, Tag.Form, Tag.Modulo;

procedure ControllerWR_APP_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_APP') < Versao_Inicializa_WR_APP then
  begin
    ATransa := GeraFDTransacao;
    try
      try
        AQuer := SQLWR_APP_BuscaTodos(ATransa);
        InsertBloco_WR_APP(AQuer);
        ATransa.Commit;
        ARefazer_WR_Controle:=True;
        TConfig.SaveInteger('VERSAO_CONTROLE_WR_APP', Versao_Inicializa_WR_APP);
      except
        ATransa.Rollback;
        // Aqui tem que guardar Log do erro, nãopode mostrar para usuário, ele não vai fazer nada com essa informação
      end;
    finally
      AQuer.Free;
      ATransa.Free;
    end;
  end;
end;

procedure InsertBloco_WR_APP(AQuer: TFDQuery);
var
  i: integer;
begin
  for i := TagAPP_First to TagAPP_Last do //0 to Length(AWR_APP)-1 do
  begin
    if not Assigned(AWR_APP[i]) then Continue;

    CadastraOuEdita_WR_APP(AQuer, AWR_APP[i]);
  end;
end;

procedure CadastraOuEdita_WR_APP(AQuer: TFDQuery; AAPP: TWR_APP);
begin
  if not AQuer.Locate('CODIGO', AAPP.Tag_APP, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := AAPP.Tag_APP;
  end else
    AQuer.Edit;
  AQuer.FieldByName('DESCRICAO').AsString       := AAPP.Nome;
  AQuer.FieldByName('CODModulo').AsInteger      := AAPP.Tag_Modulo;
  AQuer.FieldByName('ATIVO').AsString           := IfThen(AAPP.ATIVO,'S','N');
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime  := DataHoraSys;
  AQuer.Post;
end;

procedure ControllerWR_APP_Telas;
var
 I, J : Integer;
begin
  for i := TagAPP_First to TagAPP_Last do
    for j := Tag_Form_First to Tag_Form_Last do
    begin
      if Not Assigned(AWR_Form[j]) then  Continue;

      if AWR_APP[i].Tag_APP = AWR_Form[j].Tag_App  then
        AWR_APP[i].TagTelas.Add(AWR_Form[j].Codigo);
    end;
  // Ativa Módulos
  for i := TagModulo_First to TagModulo_Last do
    for j := TagAPP_First to TagAPP_Last do
    begin
      if (i = AWR_APP[j].Tag_Modulo) and (AWR_APP[j].Ativo)then
        AWR_Modulo[i].Ativo:=True;
    end;
  AWR_Modulo[TagModulo_Geral].Ativo:=True;
end;


end.
