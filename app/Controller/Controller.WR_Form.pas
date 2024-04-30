unit Controller.WR_Form;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Frame_CadProduto_Mestre;

  procedure ControllerWR_Form_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_FORM(AQuerForm: TFDQuery);
  procedure CadastraOuEdita_WR_FORM(AQuer: TFDQuery; AForm: TWR_Form);

implementation

Uses UnitFuncoes, SQL.WR_Form, Classes.WR, wr.Form, StrUtils, Tag.Form;

procedure ControllerWR_Form_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuerForm: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_FORM') < Versao_Inicializa_WR_FORM then
  begin
    ATransa := GeraFDTransacao;
    try
      try
        AQuerForm := SQLWR_Form_BuscaTodos(ATransa);
        InsertBloco_WR_Form(AQuerForm);
        ATransa.Commit;
        TConfig.SaveInteger('VERSAO_CONTROLE_WR_FORM', Versao_Inicializa_WR_FORM);
        ARefazer_WR_Controle:=True;
      except
        ATransa.Rollback;
        // Aqui tem que guardar Log do erro, nãopode mostrar para usuário, ele não vai fazer nada com essa informação
      end;
    finally
      AQuerForm.Free;
      ATransa.Free;
    end;
  end;
end;

procedure InsertBloco_WR_FORM(AQuerForm: TFDQuery);
var
  i: integer;
begin
  for i := 0 to Length(AWR_Form)-1 do
  begin
    if not Assigned(AWR_Form[i]) then Continue;

    CadastraOuEdita_WR_FORM(AQuerForm, AWR_Form[i]);
  end;
end;

procedure CadastraOuEdita_WR_FORM(AQuer: TFDQuery; AForm: TWR_Form);
begin
  if not AQuer.Locate('CODIGO', AForm.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := AForm.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('CODWR_APP').AsInteger      := AForm.Tag_APP;
  AQuer.FieldByName('DESCRICAO').AsString       := AForm.Descricao;
  AQuer.FieldByName('CAPTION').AsString         := AForm.Caption;
//  AQuer.FieldByName('WIDTH').AsInteger          := AForm.Width;      // não pra que serve isso
//  AQuer.FieldByName('HEIGHT').AsInteger         := AForm.Height;     // não pra que serve isso
//  AQuer.FieldByName('TEXT1').AsString           := AForm.Text1;      // não pra que serve isso
  AQuer.FieldByName('ATIVO').AsString           := IfThen(AForm.ATIVO,'S','N');
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime  := DataHoraSys;
  AQuer.Post;
end;


end.
