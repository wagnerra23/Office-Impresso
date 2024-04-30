unit Controller.WR_Condicao;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Condicao_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_Condicao(AQuer: TFDQuery);
  procedure CadastraOuEdita_WR_Condicao(AQuer: TFDQuery; ACondicao: TWR_Condicao);

implementation

Uses UnitFuncoes, SQL.WR_Condicao, Classes.WR, wr.Condicao, Tag.Condicao;

procedure ControllerWR_Condicao_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_CONDICAO') < Versao_Inicializa_WR_Condicao then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuer := SQLWR_Condicao_BuscaTodos(ATransa);
      InsertBloco_WR_Condicao(AQuer);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_CONDICAO', Versao_Inicializa_WR_Condicao);
    except
      ATransa.Rollback;
    end;
  end;
end;

procedure InsertBloco_WR_Condicao(AQuer: TFDQuery);
var
  i: integer;
begin
  for i := TagCondicao_First to TagCondicao_Last do
  begin
    if not Assigned(AWR_Condicao[i]) then Continue;

    CadastraOuEdita_WR_Condicao(AQuer, AWR_Condicao[i]);
  end;
end;

procedure CadastraOuEdita_WR_Condicao(AQuer: TFDQuery; ACondicao: TWR_Condicao);
begin
  if not AQuer.Locate('CODIGO', ACondicao.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger        := ACondicao.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('DESCRICAO').AsString        := ACondicao.Descricao;
  AQuer.FieldByName('HINT').AsString             := ACondicao.HINT;
  AQuer.FieldByName('ATIVO').AsString            := 'S';
  AQuer.FieldByName('TEM_PADRAO').AsString       := 'S';
  AQuer.FieldByName('CODWR_CONDICAO').AsInteger  := ACondicao.TagWR_Condicao;
  AQuer.FieldByName('CODWR_COMPONENTE').AsInteger:= ACondicao.TagWR_Componente;
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime   := DataHoraSys;

  AQuer.Post;
end;

end.
