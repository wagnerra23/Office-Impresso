unit Controller.WR_Modulo;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Modulo_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_Modulo(AQuer: TFDQuery);
  procedure CadastraOuEdita_WR_Modulo(AQuer: TFDQuery; AModulo: TWR_Modulo);

implementation

Uses UnitFuncoes, SQL.WR_Modulo, StrUtils, wr.Modulo, Classes.WR, Tag.Modulo;

procedure ControllerWR_Modulo_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  // Verificar se precisa, fazer atualização
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_MODULO') < Versao_Inicializa_WR_Modulo then
  begin
    ATransa := GeraFDTransacao;
    try
      try
        AQuer := SQLWR_Modulo_BuscaTodos(ATransa);
        InsertBloco_WR_Modulo(AQuer);
        ATransa.Commit;
        ARefazer_WR_Controle:=True;
        TConfig.SaveInteger('VERSAO_CONTROLE_WR_MODULO', Versao_Inicializa_WR_Modulo);
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

procedure InsertBloco_WR_Modulo(AQuer: TFDQuery);
var
  i: integer;
begin
  for i := TagModulo_First to TagModulo_Last do
  begin
    if not Assigned(AWR_Modulo[i]) then Continue;

    CadastraOuEdita_WR_Modulo(AQuer, AWR_Modulo[i]);
  end;
end;

procedure CadastraOuEdita_WR_Modulo(AQuer: TFDQuery; AModulo: TWR_Modulo);
begin
  if not AQuer.Locate('CODIGO', AModulo.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger      := AModulo.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('DESCRICAO').AsString      := AModulo.Descricao;
  AQuer.FieldByName('ATIVO').AsString          := IfThen(AModulo.ATIVO,'S','N');
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
  AQuer.Post;
end;


end.
