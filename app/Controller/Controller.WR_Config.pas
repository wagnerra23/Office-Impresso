unit Controller.WR_Config;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes,
  Frame_CadProduto_Mestre;

  procedure ControllerWR_Config_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_Config(AQuerWR_Config: TFDQuery);
  procedure CadastraOuEdita_WR_Config(AQuerWR_Config: TFDQuery; AWR_Config: TWR_Config);

implementation

Uses UnitFuncoes, SQL.WR_Config, StrUtils, wr.Modulo, Classes.WR, TAg.Config;

procedure ControllerWR_Config_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuerWR_Config: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_CONFIG') < Versao_Inicializa_WR_Config then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuerWR_Config := SQLWR_Config_BuscaTodos(ATransa);
      InsertBloco_WR_Config(AQuerWR_Config);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_CONFIG', Versao_Inicializa_WR_Config);
    except
      ATransa.Rollback;
//      raise EWRException.Create('Erro ao inserir WR_GRUPO');
    end;
  end;
end;

procedure InsertBloco_WR_Config(AQuerWR_Config: TFDQuery);
var
  i: integer;
begin
  for i := TagWR_Config_First to TagWR_Config_Last do
  begin
    if not Assigned(AWR_Config[i]) then Continue;

    CadastraOuEdita_WR_Config(AQuerWR_Config, AWR_Config[i]);
  end;
end;

procedure CadastraOuEdita_WR_Config(AQuerWR_Config: TFDQuery; AWR_Config: TWR_Config);
begin
  if not AQuerWR_Config.Locate('CODIGO', AWR_Config.TagWR_Config, []) then
  begin
    AQuerWR_Config.Insert;
    AQuerWR_Config.FieldByName('CODIGO').AsInteger       := AWR_Config.TagWR_Config;
  end else
    AQuerWR_Config.Edit;
  AQuerWR_Config.FieldByName('DESCRICAO').AsString      := AWR_Config.Descricao;
  AQuerWR_Config.FieldByName('OBSERVACAO').AsString     := AWR_Config.Observacao;

  AQuerWR_Config.FieldByName('TIPO').AsString           := AWR_Config.Tipo;
  AQuerWR_Config.FieldByName('CONFIG').AsString         := AWR_Config.Config;
  AQuerWR_Config.FieldByName('SUB').AsString            := AWR_Config.Sub;
  AQuerWR_Config.FieldByName('DICA').AsString           := AWR_Config.Dica;

  AQuerWR_Config.FieldByName('CODWR_APP').AsInteger     := AWR_Config.TagWR_App;

  AQuerWR_Config.FieldByName('ATIVO').AsString          := IfThen(AWR_Config.Ativo,'S','N');
  AQuerWR_Config.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;

  //POR:
  // * USUÁRIO
  // * EMPRESA
  AQuerWR_Config.Post;
end;


end.
