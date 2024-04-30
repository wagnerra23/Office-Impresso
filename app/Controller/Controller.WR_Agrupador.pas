unit Controller.WR_Agrupador;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Agrupador_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InternalInsertWR_Agrupador_Bloco(AQuerAgrupador: TFDQuery);
  procedure CadastraOuEdita_WR_Agrupador(AQuerAgrupador: TFDQuery; AAgrupador: TWR_Agrupador);

implementation

Uses UnitFuncoes, wr.Agrupador, SQL.WR_Agrupador, Classes.WR, StrUtils, Tag.Agrupador;

procedure ControllerWR_Agrupador_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuerAgrupador: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_AGRUPADOR') < Versao_Inicializa_WR_Agrupador then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuerAgrupador := SQLWR_Agrupador_BuscaTodos(ATransa);
      InternalInsertWR_Agrupador_Bloco(AQuerAgrupador);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_AGRUPADOR', Versao_Inicializa_WR_Agrupador);
    except
      ATransa.Rollback;
    end;
  end;
end;


procedure InternalInsertWR_Agrupador_Bloco(AQuerAgrupador: TFDQuery);
var
  i: integer;
begin
  for i := Tag_Agrupador_First to Tag_Agrupador_Last do
  begin
    if not Assigned(AWR_Agrupador[i]) then Continue;

    CadastraOuEdita_WR_Agrupador(AQuerAgrupador, AWR_Agrupador[i]);
  end;
end;

procedure CadastraOuEdita_WR_Agrupador(AQuerAgrupador: TFDQuery; AAgrupador: TWR_Agrupador);
begin
  if not AQuerAgrupador.Locate('CODIGO', AAgrupador.Codigo, []) then
  begin
    AQuerAgrupador.Insert;
    AQuerAgrupador.FieldByName('CODIGO').AsInteger         := AAgrupador.Codigo;
  end else
    AQuerAgrupador.Edit;
  AQuerAgrupador.FieldByName('NOME').AsString              := AAgrupador.Nome;
  AQuerAgrupador.FieldByName('DESCRICAO').AsString         := AAgrupador.Descricao;
  AQuerAgrupador.FieldByName('CODWR_APP').AsInteger        := AAgrupador.CodWR_App;
  AQuerAgrupador.FieldByName('AGRUPAMENTO').AsString       := AAgrupador.Agrupamento;
  AQuerAgrupador.FieldByName('CAMPO_CATEGORIA').AsString   := AAgrupador.Campo_Categoria;
  AQuerAgrupador.FieldByName('ORDENACAO').AsInteger        := Ord(AAgrupador.Ordenacao);
  AQuerAgrupador.FieldByName('ATIVO').AsString             := ifthen(AAgrupador.Ativo,'S','N');
  AQuerAgrupador.FieldByName('DT_ALTERACAO').AsDateTime    := DataHoraSys;
  AQuerAgrupador.Post;
end;

end.
