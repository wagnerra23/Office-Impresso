unit Controller.WR_Obrigatorio;

interface

uses Classes.APP, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, WREventos;

  procedure ControllerWR_Obrigatorio_ADD(AWREventosCadastro: TWREventosCadastro; ATabela:String);
  procedure ControllerWR_Obrigatorio_Salvar(Var ARefazer_WR_Controle:Boolean);
  procedure InsertBloco_WR_Obrigatorio(AQuer: TFDQuery);
  procedure CadastraOuEdita_WR_Obrigatorio(AQuer: TFDQuery; AObrigatorio: TWR_Obrigatorio);

  /// Funções extras de Obrigação
  procedure VincularComponenteNaRegra(AComponente: TComponent; ATagComponente, ATagCondicao: Integer; AFuncao: String);
  procedure VincularComponenteNaRegraGrid(AComponente: TComponent; ATagComponente, ATagCondicao: Integer; AFuncao: String);


implementation

Uses UnitFuncoes, SQL.WR_Obrigatorio, Classes.WR, wr.Obrigatorio, Tag.Obrigatorio, Tag.Componente;

procedure ControllerWR_Obrigatorio_Salvar(Var ARefazer_WR_Controle:Boolean);
var
  AQuer: TFDQuery;
  ATransa: TFDTransaction;
begin
  if TConfig.ReadInteger('VERSAO_CONTROLE_WR_OBRIGATORIO') < Versao_Inicializa_WR_Obrigatorio then
  begin
    ATransa := GeraFDTransacao;
    try
      AQuer := SQLWR_OBRIGATORIO_BuscaTodos(ATransa);
      InsertBloco_WR_OBRIGATORIO(AQuer);
      ATransa.Commit;
      ARefazer_WR_Controle:=True;
      TConfig.SaveInteger('VERSAO_CONTROLE_WR_OBRIGATORIO', Versao_Inicializa_WR_Obrigatorio);
    except
      ATransa.Rollback;
    end;
  end;
end;

procedure InsertBloco_WR_OBRIGATORIO(AQuer: TFDQuery);
var
  i: integer;
begin
  for i := 0 to Length(AWR_Obrigatorio) - 1 do
  begin
    if not Assigned(AWR_Obrigatorio[i]) then Continue;

    CadastraOuEdita_WR_Obrigatorio(AQuer, AWR_Obrigatorio[i]);
  end;
end;

procedure CadastraOuEdita_WR_Obrigatorio(AQuer: TFDQuery; AObrigatorio: TWR_Obrigatorio);
begin
  if not AQuer.Locate('CODIGO', AObrigatorio.Codigo, []) then
  begin
    AQuer.Insert;
    AQuer.FieldByName('CODIGO').AsInteger        := AObrigatorio.Codigo;
  end else
    AQuer.Edit;
  AQuer.FieldByName('DESCRICAO').AsString        := AObrigatorio.Descricao;
  AQuer.FieldByName('HINT').AsString             := AObrigatorio.HINT;
  AQuer.FieldByName('ATIVO').AsString            := 'S';
  AQuer.FieldByName('TEM_PADRAO').AsString       := 'S';
  AQuer.FieldByName('CODWR_CONDICAO').AsInteger  := AObrigatorio.TagWR_Condicao;
  AQuer.FieldByName('CODWR_COMPONENTE').AsInteger:= AObrigatorio.TagWR_Componente;
  AQuer.FieldByName('DT_ALTERACAO').AsDateTime   := DataHoraSys;

  AQuer.Post;
end;


//// Funções extras de obrigação
procedure ControllerWR_Obrigatorio_ADD(AWREventosCadastro: TWREventosCadastro; ATabela:String);
var
  i: Integer;
begin
  for i := TagWR_Obrigatorio_First to TagWR_Obrigatorio_Last do
  begin
    if not Assigned(AWR_Obrigatorio[i]) then Continue;

    if not (AWR_Componente[AWR_Obrigatorio[i].TagWR_Componente].Tabela = ATabela) then Continue;      // Aqui colocar apenas a tabela

   { if AWR_Obrigatorio[i].Tem_PK = 'S' then
    begin
      AddChavePrimaria(AWREventosCadastro.WR_Obrigatorio[i].Tabela , AWREventosCadastro.WR_Obrigatorio[i].Campo , edtCodigo);
      if (AWREventosCadastro.WR_Valor_Inicial[i].Tem_Gen = 'S')and (AWREventosCadastro.WR_Valor_Inicial[i].Tem_MultEmpresa = 'S')then
        AddGeneratorMultEmpresa(AWREventosCadastro.WR_Obrigatorio[i].Tem_MultEmpresa ) // edtCodigo
      else
        AddGenerator(AWREventosCadastro.WR_Obrigatorio[i].Tem_Gen);
    end;   }
  end;
end;

procedure VincularComponenteNaRegra(AComponente: TComponent; ATagComponente, ATagCondicao: Integer; AFuncao: String);
begin

end;

procedure VincularComponenteNaRegraGrid(AComponente: TComponent; ATagComponente, ATagCondicao: Integer; AFuncao: String);
begin

end;

(*
function ValidaObrigatorio(AWR_Validacao: TWR_Validacao; AValue: Variant; var ErrorText: TCaption): boolean;
var
  AEdit: TcxCustomEdit;
  ADataBinding: TcxDBEditDataBinding;
  ATrataMsg: TStringList;
  I: Integer;
begin
  {Este método valida apenas Edits, para TreeLists temos outra classe responsável por validar}
  Result := False;
  if AWR_Validacao.ExpressaoPadrao = 'S' then
  begin
    OnValidaComponente(AWR_Validacao.Componente_Principal, Result, ErrorText );
    AWR_Validacao.Informacao:=ErrorText;
    ErrorText:='';
  end else
  begin
    if not (AWR_Validacao.Componente_Principal is TcxCustomEdit) then
      Exit;
    AEdit := TcxCustomEdit(AWR_Validacao.Componente_Principal);

    {Peguei um problema aqui. Quando o Validate é chamado para um componente DB e o DataSet dele não está aberto,
     o Validate pode retornar erros aleatórios, imprevisíveis... Então aqui tratamos isso, caso o dataset esteja fechado,
     não validamos}
    ADataBinding := GetDevDataBinding(AEdit);
    if ADataBinding <> nil then
    begin
      if not ADataBinding.DataSource.DataSet.Active then
        Exit;
    end;
    if AWR_Validacao.ExpressaoVazio = 'S' then
    begin
      if Trim(VarToStrDef(AValue,'')) = '' then
      begin
        Result := True;
        ErrorText:= AWR_Validacao.Informacao;
      end;
    end else
    if AWR_Validacao.ExpressaoPersonalizada = 'S' then
      Result := ValidaExpressao(AWR_Validacao.ExpressaoPadrao, ADataBinding.DataSource.DataSet );
  end;
end;

function TWREventosCadastro.ValidaExpressao(AExpressao: string;
  ADataSet: TDataSet): Boolean;
var
  I: Integer;
  AValue :Variant;
begin
  Result := False;
  try
   for I := 0 to ADataSet.FieldCount-1 do
   begin
     AValue:=ADataSet.Fields[i].Value;
     case ADataSet.Fields[i].DataType of
       ftDate:      AValue := FormatDateTime('YYYY-MM-DD', AValue);
       ftTime:      AValue := FormatDateTime('hh:nn:ss', AValue);
       ftTimeStamp,
       ftDateTime:  AValue := FormatDateTime('YYYY-MM-DD hh:nn:ss.zzz', StrToFloatDef(AValue,0));
       ftString:    AValue := QuotedStr(VarToStrDef(AValue,''));
       ftFloat,
       ftInteger:   AValue := StrToIntDef(AValue,0);
     end;
     AExpressao:= ReplaceStr(AExpressao, ADataSet.Fields[i].FieldName, AValue );
   end;
  except
//    ShowMessage(ADataSet.Fields[i].FieldName);
  end;
  try
    Result :=  FfsScript.Evaluate(AExpressao);
  except
//    ShowMessage(ADataSet.Fields[i].FieldName);
  end;
end;

function TWREventosCadastro.ValidaCamposObrigatorio(AFormCadastro: TWinControl; AAcaoTabela: String): Boolean;
var
  ARegras : TDictionary<string, boolean>;
  AOk, Error : Boolean;
  i, J : Integer;
  ErrorText : TCaption;
  AValor: Variant;
  FAcaoTabelaInterna: TWR_AcaoTabela;
begin
//  Saber Quais Acoes podem ser Julgadas
  // VERIFICA SE O USUÁRIO CUMPRIU TODAS AS TAREFAS DA TELA, ANTES DE FINALIZAR A ACAO, O PARAMETRO É
  // AS GUIDElINE ATIVAS, SHOW DE BOLA
  AcaoTabelaAtiva:=AAcaoTabela;
  ValidaPadraoDatela:=False;
  MemValidacoes.Open;
  MemValidacoes.EmptyDataSet;
  Result:=False;
  for I := 0 to Validacao.Count -1 do
  begin
    ErrorText:='';
    Error := False;
    if Assigned(Validacao[i].Componente_Principal) then
    begin
      if Not (Validacao[i].Componente_Principal is TcxCustomEdit) then
        AValor := null
      else
        AValor := TcxCustomEdit(Validacao[i].Componente_Principal).EditValue;
      if Validacao[i].Obrigatorio = 'S' then
      begin
        if Assigned(Validacao[i].AcaoTabelaComponente) then
        begin
          FAcaoTabelaInterna:= BuscaAcaoComponente(Validacao[i].AcaoTabelaComponente, AAcaoTabela);
          if Assigned(FAcaoTabelaInterna)and (FAcaoTabelaInterna.ObrigatorioNaAcao = 'S') then   // Verificar a acao ObrigatorioNaAcao
          begin                                                                                  // ShowMessageWR('Não é cx '+ Validacao[i].Componente_Principal.Name);
            Error := ValidaObrigatorio(Validacao[i], AValor , ErrorText);                        // Se chegar aqui é por que a regra esta ativa
          end;
        end;
      end;
      if Not Error and Validacao[i].Impedir_duplicidade then
        Error := ValidaDuplicidade(Validacao[i], AValor, ErrorText);
      if Error then
      begin
        MemValidacoes.Insert;
        MemValidacoes.FieldByName('Campo').Value        := Validacao[i].Campo;
        if Validacao[i].Caption <> '' then
          MemValidacoes.FieldByName('Label').Value      := Validacao[i].Caption
        else begin
          MemValidacoes.FieldByName('Label').Value      := GetDevCaption(Validacao[i].Componente_Principal);
        end;
        MemValidacoes.FieldByName('Descricao').Value    := Validacao[i].Informacao;  //ErrorText;
        MemValidacoes.FieldByName('Componente').Value   := Validacao[i].Componente_Principal.Name;
       { if FConfiguracao_Acoes_Regra.FieldByName('PODE_CONFIRMAR').AsString = 'S' then
          MemValidacoes.FieldByName('VALIDACAO').AsString := 'Atenção'
        else }
          MemValidacoes.FieldByName('VALIDACAO').AsString := 'Erro';
        if AAcaoTabela <> 'TUDO' then
          MemValidacoes.FieldByName('ACAO').AsString      := AAcaoTabela;
        MemValidacoes.FieldByName('OBSERVACAO').AsString:= Validacao[i].Informacao;
  //    MemValidacoes.FieldByName('Link').AsString      := FConfiguracao_Acoes_Regra.FieldByName('Link').Value;
        MemValidacoes.Post;
      end;
    end;
  end;
  ValidaPadraoDatela:=True;
  AcaoTabelaAtiva:='';
  if MemValidacoes.RecordCount > 0 then
  begin
    {$IFDEF COMERCIAL}
    if not (TFrmValidacoes.ValidacaoCampos(TForm(AFormCadastro), MemValidacoes) = mrOK) then
    begin
      AplicaConfiguracoes(AFormCadastro.ClassName);
      Abort;
    end;
    {$ENDIF}
    AplicaConfiguracoes(AFormCadastro.ClassName);
  end;
end;

procedure TWREventosCadastro.ValidaBuscaComponetesFrame(AFormCadastro: TWinControl);
var
  i : Integer;
begin
  for I := 0 to Validacao.Count -1 do
  begin
    if (Validacao[i].Componente_PrincipalNome <> '') and
        not Assigned(Validacao[i].Componente_Principal) then
      Validacao[i].Componente_Principal :=  BuscaComponenteForm(AFormCadastro, Validacao[i].Componente_PrincipalNome);
  end;
end;

*)



end.
