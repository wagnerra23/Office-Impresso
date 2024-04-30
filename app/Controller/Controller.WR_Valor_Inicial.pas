unit Controller.WR_Valor_Inicial;

interface

uses Classes.APP, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, WREventos;

  procedure ControllerWR_Valor_Inicial_ADD(AWREventosCadastro: TWREventosCadastro; ATabela:String);
  procedure ControllerWR_Valor_Inicial_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InternalInsertWR_VALOR_INICIAL_Bloco(AQuerCampo: TFDQuery);
  procedure CadastraOuEdita_WR_VALOR_INICIAL(AQuer: TFDQuery; AValor_Inicial: TWR_Valor_Inicial);

implementation

Uses UnitFuncoes, WR.Valor_Inicial, Classes.WR, SQL.WR_Valor_Inicial, Tag.Valor_Inicial;

procedure ControllerWR_Valor_Inicial_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_VALOR_INICIAL') < Versao_Inicializa_WR_VALOR_INICIAL then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuer := SQLWR_VALOR_INICIAL_BuscaTodos(ATransa);
      InternalInsertWR_VALOR_INICIAL_Bloco(AQuer);
      ATransa.Commit;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_VALOR_INICIAL', Versao_Inicializa_WR_VALOR_INICIAL);
      ARefazer_WR_Controle:=True;
    except
      ATransa.Rollback;
    end;
  end;
end;

procedure InternalInsertWR_VALOR_INICIAL_Bloco(AQuerCampo: TFDQuery);
var
  i: integer;
begin
  for i := TagWR_Valor_Inicial_First to TagWR_Valor_Inicial_Last do
  begin
    if not Assigned(AWR_Valor_Inicial[i]) then Continue;

    CadastraOuEdita_WR_VALOR_INICIAL(AQuerCampo, AWR_Valor_Inicial[i]);
  end;
end;

procedure CadastraOuEdita_WR_VALOR_INICIAL(AQuer: TFDQuery; AValor_Inicial: TWR_Valor_Inicial);
begin
  if not AQuer.Locate('CODIGO', AValor_Inicial.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := AValor_Inicial.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('CAMPO').AsString           := AValor_Inicial.Campo;
  AQuer.FieldByName('TABELA').AsString          := AValor_Inicial.Tabela;
  AQuer.FieldByName('VALOR_INICIAL').AsString   := AValor_Inicial.Valor_Inicial;
  AQuer.FieldByName('TEM_GEN').AsString         := AValor_Inicial.Tem_Gen;
  AQuer.FieldByName('TEM_PK').AsString          := AValor_Inicial.Tem_PK;
  AQuer.FieldByName('TEM_MULTEMPRESA').AsString := AValor_Inicial.Tem_MultEmpresa;
  AQuer.FieldByName('TEM_PADRAO').AsString      := AValor_Inicial.Tem_Padrao;
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime  := DataHoraSys;
  AQuer.FieldByName('ATIVO').AsString           := 'S';
  AQuer.Post;

//  CREATE TABLE WR_CAMPO (
//        CODIGO           INTEGER NOT NULL,
//        TABELA           VARCHAR(50),
//        CAMPO            VARCHAR(200),
//        CAPTION          VARCHAR(50),
//        HINT             VARCHAR(500),
//        GEN              VARCHAR(1),
//        POSSUIPK         VARCHAR(1),
//        DT_ALTERACAO     TIMESTAMP,
//        MULTEMPRESA      VARCHAR(1),
//        VALOR_INICIAL    VARCHAR(500),
//        OBRIGATORIO      VARCHAR(1),
//        TEMPADRAO        VARCHAR(1)
//);
end;

procedure ControllerWR_Valor_Inicial_ADD(AWREventosCadastro: TWREventosCadastro; ATabela:String);
var
  i: Integer;
begin
  for i := TagWR_Valor_Inicial_First to TagWR_Valor_Inicial_Last do
  begin
    if not Assigned(AWR_Valor_Inicial[i]) then Continue;

    if not (AWR_Valor_Inicial[i].Tabela = ATabela) then Continue;      // Aqui colocar penas a tela

    if AWR_Valor_Inicial[i].Tem_PK = 'S' then
    begin
      AWREventosCadastro.AddChavePrimaria(AWR_Valor_Inicial[i].Tabela , AWR_Valor_Inicial[i].Campo , nil);
      if (AWR_Valor_Inicial[i].Tem_Gen = 'S')and (AWR_Valor_Inicial[i].Tem_MultEmpresa = 'S')then
        AWREventosCadastro.AddGeneratorMultEmpresa(nil) // edtCodigo  AWR_Valor_Inicial[i].Tem_MultEmpresa
      else
      if (AWR_Valor_Inicial[i].Tem_Gen = 'S') then        
        AWREventosCadastro.AddGenerator(nil);  // AWR_Valor_Inicial[i].Tem_Gen
    end;
  end;
end;

end.
