unit Controller.WR_Permissao;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Permissao_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_Permissao(AQuer: TFDQuery);
  procedure CadastraOuEdita_Permissao(AQuer: TFDQuery; APermissao: TWR_Permissao);

implementation

Uses UnitFuncoes, SQL.WR_Permissao, Classes.WR, wr.Permissao, Tag.Permissao;

procedure ControllerWR_Permissao_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_PERMISSAO') < Versao_Inicializa_Permissao then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuer := SQLWR_Permissao_BuscaTodos(ATransa);
      InsertBloco_Permissao(AQuer);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_PERMISSAO', Versao_Inicializa_Permissao);
    except
      ATransa.Rollback;
    end;
  end;
end;

procedure InsertBloco_Permissao(AQuer: TFDQuery);
var
  i: integer;
begin
  for i := 0 to Length(AWR_Permissao) - 1 do
  begin
    if not Assigned(AWR_Permissao[i]) then Continue;

    CadastraOuEdita_Permissao(AQuer, AWR_Permissao[i]);
  end;
end;

procedure CadastraOuEdita_Permissao(AQuer: TFDQuery; APermissao: TWR_Permissao);
begin
  if not AQuer.Locate('CODIGO', APermissao.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger        := APermissao.Codigo;
  end else
    AQuer.Edit;
//  AQuer.FieldByName('DESCRICAO').AsString        := APermissao.Descricao;
//  AQuer.FieldByName('HINT').AsString             := APermissao.HINT;
  AQuer.FieldByName('ATIVO').AsString            := 'S';
  AQuer.FieldByName('TEM_PADRAO').AsString       := 'S';
//  AQuer.FieldByName('CODWR_CONDICAO').AsInteger  := APermissao.TagWR_Condicao;
//  AQuer.FieldByName('CODWR_COMPONENTE').AsInteger:= APermissao.TagWR_Componente;
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime   := DataHoraSys;

  AQuer.Post;
end;

end.
