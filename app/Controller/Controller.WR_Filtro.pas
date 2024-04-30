unit Controller.WR_Filtro;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Filtro_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_Filtro(AQuerFiltro: TFDQuery);
  procedure CadastraOuEdita_WR_Filtro(AQuer: TFDQuery; AFiltro: TWR_Filtro);

implementation

Uses UnitFuncoes, Classes.WR, SQL.WR_Filtro, wr.Filtro, StrUtils, Tag.Filtro;

procedure ControllerWR_Filtro_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuerFiltro: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_FILTRO') < Versao_Inicializa_WR_FILTRO then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuerFiltro := SQLWR_Filtro_BuscaTodos(ATransa);
      InsertBloco_WR_Filtro(AQuerFiltro);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_FILTRO', Versao_Inicializa_WR_FILTRO);
    except
      ATransa.Rollback;
    end;
  end;
end;

procedure InsertBloco_WR_Filtro(AQuerFiltro: TFDQuery);
var
  i: integer;
begin
  for i := Tag_Filtro_First to Tag_Filtro_Last do
  begin
    if not Assigned(AWR_Filtro[i]) then Continue;

    CadastraOuEdita_WR_Filtro(AQuerFiltro, AWR_Filtro[i]);
  end;
end;

procedure CadastraOuEdita_WR_Filtro(AQuer: TFDQuery; AFiltro: TWR_Filtro);
begin
  if not AQuer.Locate('CODIGO', AFiltro.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := AFiltro.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('Nome').AsString            := AFiltro.Nome;
  AQuer.FieldByName('DESCRICAO').AsString       := AFiltro.Descricao;
  AQuer.FieldByName('CODWR_FORM').AsInteger     := AFiltro.CodWR_Form;
  AQuer.FieldByName('CODWR_APP').AsInteger      := AFiltro.CodWR_APP;
  AQuer.FieldByName('SQL').AsString             := AFiltro.SQL;
  AQuer.FieldByName('ATIVO').AsString           := IfThen(AFiltro.ATIVO,'S','N');
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime  := DataHoraSys;
  AQuer.Post;
end;

end.
