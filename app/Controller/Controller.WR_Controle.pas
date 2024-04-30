unit Controller.WR_Controle;

interface

Uses Classes.APP, Variants, SysUtils, Forms, Menu, Generics.Collections, System.StrUtils, wr_memoria, System.Classes, FireDac.Stan.Intf, Data.DB,
    DataModuleBanco, FireDAC.Comp.Client, System.JSON, dxCustomTileControl;

  procedure ControllerWR_Controle_Salvar;
  procedure ControllerWR_Controle_ShowCadastro(ASender:TObject);

  procedure InsertBloco_WR_Controle(AQuer, AQuerParent: TFDQuery);
  procedure Insert_WR_Controle(AQuer: TFDQuery; AReferencia, ADescricao, AObservacao, ANuvem_Tags:String; ATag, ATag_APP:Integer; AAtivo:Boolean);
  procedure Insert_WR_Controle_Parent(AQuerParent :TFDQuery; ATipo:String; ATag_WR_Controle, ATagOrigem:Integer; ATem_Na_Consulta:String);    // Aqui deveria ou Inserir ou Salvar se atualizar o Register

implementation

Uses UnitFuncoes, SQL.WR_Controle, SQL.WR_Controle_Parent, Classes.WR, Base,
     Tag.Valor_Inicial, Tag.APP, Tag.Report, Tag.Config, Tag.KPI, Tag.Filtro, Tag.Form, Tag.Agrupador;

procedure ControllerWR_Controle_Salvar;
var
  AQuer, AQuerParent, AQuerParentDelete : TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  try
    try
      AQuer             := SQLWR_Controle_BuscaTodos(ATransa);
      AQuerParent       := SQLWR_Controle_Parent(ATransa);
      AQuerParentDelete := SQLWR_Controle_ParentDelete(ATransa);
      AQuerParentDelete.ExecSQL;
      InsertBloco_WR_Controle(AQuer, AQuerParent);
      ATransa.Commit;
    except
      ATransa.Rollback;
      // Aqui tem que guardar Log do erro, não pode mostrar para usuário, ele não vai fazer nada com essa informação
    end;
  finally
    AQuer.Free;
    AQuerParent.Free;
    AQuerParentDelete.Free;
    ATransa.Free;
  end;
end;

procedure InsertBloco_WR_Controle(AQuer, AQuerParent: TFDQuery);
var
  I, J: integer;
begin
  // Lista de controles possíveis:
  //  Módulos
  //  - APP
  //    - KPI
  //    - Relatórios
  //    - Configurações
  //    - Telas
  //      - Permissões
  //        - Campo
  //        - Função
  //      - Validações
  //        - Campo
  //        - Função (Dupicidade, Obrigatoriedade)
  //      - Valor Inicial
  //        - Campo
  //        - Função


  // Campo - (Permissões, Validações, Valor Inicial)
  for i := TagWR_Valor_Inicial_First to TagWR_Valor_Inicial_Last do     // Aqui deve ter todos os controles possíveis, Pois depois vou unir eles com os parents
  begin
    if not Assigned(AWR_Valor_Inicial[i]) then Continue;

   { if AWR_Valor_Inicial[i].Tem_duplicidade = 'S' then
    begin
      Insert_WR_Controle(AQuer, 'Duplicidade'+IntToStr(AWR_Valor_Inicial[i].Codigo), 'Duplicidade - '+AWR_Valor_Inicial[i].Campo, AWR_Valor_Inicial[i].Tabela+' '+ AWR_Valor_Inicial[i].Campo ,  AWR_Valor_Inicial[i].Codigo, AWR_Valor_Inicial[i].Codigo, AWR_Valor_Inicial[i].Ativo);
      Insert_WR_Controle_Parent(AQuerParent,'Obrigatório', AQuer.FieldbyName('Codigo').AsInteger, AWR_Valor_Inicial[i].Codigo,'S');
    end;
    if AWR_Valor_Inicial[i].Tem_Obrigatorio = 'S' then
    begin
      Insert_WR_Controle(AQuer, 'Obrigatório'+IntToStr(AWR_Valor_Inicial[i].Codigo), 'Obrigatório - '+AWR_Valor_Inicial[i].Campo, AWR_Valor_Inicial[i].Tabela+' '+ AWR_Valor_Inicial[i].Campo ,  AWR_Valor_Inicial[i].Codigo, AWR_Valor_Inicial[i].Codigo, AWR_Valor_Inicial[i].Ativo);
      Insert_WR_Controle_Parent(AQuerParent,'Obrigatório', AQuer.FieldbyName('Codigo').AsInteger, AWR_Valor_Inicial[i].Codigo,'S');
    end;  }

    //    O valor inicial deve serconfigurado por tela,No cadastro de Pessoas são multplicado por 5 vezes kkkkkkkk (Todos, Representante, Associado, Cliente, Funcionário) se tiver mais avisa ai

    if AWR_Valor_Inicial[i].Tem_PK = 'S' then
    begin
      Insert_WR_Controle(AQuer, 'Chave-Primária'+IntToStr(AWR_Valor_Inicial[i].Codigo), 'Chave-Primária - '+AWR_Valor_Inicial[i].Campo,
                         AWR_Valor_Inicial[i].Observacao, AWR_Valor_Inicial[i].Nuvem_Tags, AWR_Valor_Inicial[i].Codigo, AWR_Form[AWR_Valor_Inicial[i].Tag_Tela].Tag_App, AWR_Valor_Inicial[i].Ativo);
      Insert_WR_Controle_Parent(AQuerParent,'Valor-Inicial', AQuer.FieldbyName('Codigo').AsInteger, AWR_Valor_Inicial[i].Codigo,'S');
    end;

    if AWR_Valor_Inicial[i].Valor_Inicial <> '' then
    begin
      Insert_WR_Controle(AQuer, 'Valor-Inicial'+IntToStr(AWR_Valor_Inicial[i].Codigo), 'Valor-Inicial - '+AWR_Valor_Inicial[i].Campo,
                         AWR_Valor_Inicial[i].Observacao, AWR_Valor_Inicial[i].Nuvem_Tags, AWR_Valor_Inicial[i].Codigo, AWR_Form[AWR_Valor_Inicial[i].Tag_Tela].Tag_App, AWR_Valor_Inicial[i].Ativo);
      Insert_WR_Controle_Parent(AQuerParent,'Valor-Inicial', AQuer.FieldbyName('Codigo').AsInteger, AWR_Valor_Inicial[i].Codigo, 'S');
    end;
  end;

  for i := Tag_Report_First to Tag_Report_last do     // Aqui deve ter todos os controles possíveis, Pois depois vou unir eles com os parents
  begin
    if not Assigned(AWR_Report[i]) then Continue;

    Insert_WR_Controle(AQuer, 'Report'+IntToStr(AWR_Report[i].Codigo), 'Relatório - '+AWR_Report[i].Nome, AWR_Report[i].NomeArquivo+' '+ AWR_Report[i].Observacao,
                      AWR_Report[i].Nuvem_Tags, AWR_Report[i].Codigo, AWR_Report[i].Tag_App, AWR_Report[i].Ativo);

    // Verifica se o Parent esta ativo, FAZ SQL
    Insert_WR_Controle_Parent(AQuerParent, 'Impressões e Relatórios', AQuer.FieldbyName('Codigo').AsInteger, AWR_Report[i].Codigo,'S');
  end;

  for i := TagWR_Config_First to TagWR_Config_Last do     // Aqui deve ter todos os controles possíveis, Pois depois vou unir eles com os parents
  begin
    if not Assigned(AWR_Config[i]) then Continue;

    Insert_WR_Controle(AQuer, 'Config'+IntToStr(AWR_Config[i].TagWR_Config), 'Configuração - '+AWR_Config[i].Descricao,
                       AWR_Config[i].Observacao, AWR_Config[i].Nuvem_Tags, AWR_Config[i].TagWR_Config, AWR_Config[i].TagWR_App, AWR_Config[i].Ativo);

    // Verifica se o Parent esta ativo, FAZ SQL
    Insert_WR_Controle_Parent(AQuerParent, 'Configurações', AQuer.FieldbyName('Codigo').AsInteger, AWR_Config[i].TagWR_Config,'S');
  end;

  for i := Tag_KPI_First to Tag_KPI_Last do     // Aqui deve ter todos os controles possíveis, Pois depois vou unir eles com os parents
  begin
    if not Assigned(AWR_KPI[i]) then Continue;

    Insert_WR_Controle(AQuer, 'KPI'+IntToStr(AWR_KPI[i].Tag_KPI), 'KPI - '+AWR_KPI[i].Titulo,
                       AWR_KPI[i].Observacao, AWR_KPI[i].Nuvem_Tags, AWR_KPI[i].Tag_KPI, AWR_KPI[i].TagWR_App, AWR_KPI[i].Ativo);

    // Verifica se o Parent esta ativo, FAZ SQL
    Insert_WR_Controle_Parent(AQuerParent, 'KPI', AQuer.FieldbyName('Codigo').AsInteger, AWR_KPI[i].Tag_KPI,'S');
  end;

  for i := Tag_Filtro_First to Tag_Filtro_Last do
  begin
    if not Assigned(AWR_Filtro[i]) then Continue;

    Insert_WR_Controle(AQuer, 'FILTROS'+IntToStr(AWR_Filtro[i].Codigo), 'Tela - Filtros - '+AWR_Filtro[i].Nome+' '+AWR_Filtro[i].Descricao,
                       AWR_Filtro[i].Observacao, AWR_Filtro[i].Nuvem_Tags, AWR_Filtro[i].Codigo, AWR_Filtro[i].CodWR_APP, AWR_Filtro[i].Ativo);

    // Verifica se o Parent esta ativo, FAZ SQL
    Insert_WR_Controle_Parent(AQuerParent, 'Tela - Filtros', AQuer.FieldbyName('Codigo').AsInteger, AWR_Filtro[i].Codigo,'S');
  end;

  for i := Tag_Agrupador_First to Tag_Agrupador_Last do
  begin
    if not Assigned(AWR_Agrupador[i]) then Continue;

    Insert_WR_Controle(AQuer, 'AGRUPADOR'+IntToStr(AWR_Agrupador[i].Codigo), 'Tela - Agrupador - '+AWR_Agrupador[i].Nome+' '+AWR_Agrupador[i].Descricao,
                      '','' {AWR_Agrupador[i].Observacao, AWR_Agrupador[i].Nuvem_Tags}, AWR_Agrupador[i].Codigo, AWR_Agrupador[i].CodWR_APP, AWR_Agrupador[i].Ativo);


    Insert_WR_Controle_Parent(AQuerParent, 'Agrupadores', AQuer.FieldbyName('Codigo').AsInteger, AWR_Agrupador[i].Codigo,'N'); // Esse não deve aparecer na cansulta, Acho que deve ficar False o Ativo
  end;

  for i := Tag_Form_First to Tag_Form_Last do
  begin
    if not Assigned(AWR_Form[i]) then Continue;

    Insert_WR_Controle(AQuer, 'FORM'+IntToStr(AWR_Form[i].Codigo), 'Tela - '+AWR_Form[i].Descricao,
                       AWR_Form[i].Descricao, '', AWR_Form[i].Codigo, AWR_Form[i].Tag_App, AWR_Form[i].Ativo);
    Insert_WR_Controle_Parent(AQuerParent, 'Tela', AQuer.FieldbyName('Codigo').AsInteger, AWR_Form[i].Codigo, 'S');

    // Todos os controles ligados a Tela
    // Verificar e duplicar todos os controles para poder ter aesso tbm quando acessar a tela
    for J := Tag_Filtro_First to Tag_Filtro_Last do
    begin
      if not Assigned(AWR_Filtro[J]) then Continue;
      if AWR_Filtro[J].CodWR_Form = i then
        Insert_WR_Controle_Parent(AQuerParent, 'Tela - Filtros', AQuer.FieldbyName('Codigo').AsInteger, AWR_Filtro[J].Codigo,'N'); // Esse não deve aparecer na cansulta, Acho que deve ficar False o Ativo
    end;

    for J := Tag_KPI_First to Tag_KPI_Last do
    begin
      if not Assigned(AWR_KPI[J]) then Continue;

      if AWR_KPI[J].TagWR_APP = AWR_Form[i].Tag_App then
        Insert_WR_Controle_Parent(AQuerParent, 'KPI', AQuer.FieldbyName('Codigo').AsInteger, AWR_KPI[J].Tag_KPI,'N'); // Esse não deve aparecer na cansulta, Acho que deve ficar False o Ativo
    end;

    for J := Tag_Agrupador_First to Tag_Agrupador_Last do
    begin
      if not Assigned(AWR_Agrupador[J]) then Continue;

      if AWR_Agrupador[J].CodWR_App = AWR_Form[i].Tag_App then
        Insert_WR_Controle_Parent(AQuerParent, 'Agrupadores', AQuer.FieldbyName('Codigo').AsInteger, AWR_Agrupador[J].Codigo,'N'); // Esse não deve aparecer na cansulta, Acho que deve ficar False o Ativo
    end;

  end;

end;

procedure Insert_WR_Controle(AQuer: TFDQuery; AReferencia, ADescricao, AObservacao, ANuvem_Tags:String; ATag, ATag_APP:Integer; AAtivo: Boolean);    // Aqui deveria ou Inserir ou Salvar se atualizar o Register
begin
  if not AQuer.Locate('REFERENCIA', AReferencia, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger       := GetProximoCodigo('WR_CONTROLE', AQuer.Transaction);   // Chave
    AQuer.FieldByName('REFERENCIA').AsString    := AReferencia;
  end else
    AQuer.Edit;
  AQuer.FieldByName('DESCRICAO').AsString       := ADescricao;
  AQuer.FieldByName('CODWR_APP').AsInteger      := ATag_APP;
  AQuer.FieldByName('Observacao').AsString      := AObservacao;
  AQuer.FieldByName('NUVEM_TAGS').AsString      := ANuvem_Tags;
//  AQuer.FieldByName('ATIVO').AsString           := ifthen(AAtivo,'S','N');
  AQuer.FieldByName('ATIVO').AsString           := 'S';
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime  := DataHoraSys;
  AQuer.Post;
end;

procedure Insert_WR_Controle_Parent(AQuerParent :TFDQuery; ATipo:String; ATag_WR_Controle, ATagOrigem : Integer; ATem_Na_Consulta:String);    // Aqui deveria ou Inserir ou Salvar se atualizar o Register
begin
  AQuerParent.ParamByName('Tipo').AsString           := ATipo;
  AQuerParent.ParamByName('CodWR_Controle').AsInteger:= ATag_WR_Controle;
  AQuerParent.ParamByName('CodOrigem').AsInteger     := ATagOrigem;
  AQuerParent.Open;
  if AQuerParent.RecordCount = 0 then
  begin
    AQuerParent.Insert;   //Deve inserir no parent Tambem
    AQuerParent.FieldByName('CODWR_CONTROLE').AsInteger := ATag_WR_Controle;
    AQuerParent.FieldByName('CODORIGEM').AsInteger      := ATagOrigem;
    AQuerParent.FieldByName('TIPO').AsString            := ATipo;
    AQuerParent.FieldByName('TEM_NA_CONSULTA').AsString := ATem_Na_Consulta;
    AQuerParent.Post;
  end;
  AQuerParent.Close;
end;

procedure ControllerWR_Controle_ShowCadastro(ASender:TObject);
Var
  ACodWR_Controle, ATagForm:Integer;
begin
  ATagForm       := TFrmBase(TForm(ASender).Owner).tcBase.Tag;
  ACodWR_Controle:= SQLWR_Controle_ParentAchaControle('Tela', ATagForm);
  with ABaseClass_Normal[Tag_WR_Controle].Create(TForm(ASender).Owner) do
    ShowCadastroModalItem(Tag_WR_Controle, ACodWR_Controle);
end;


end.
