unit Classes.Acoes;

interface

uses
  Windows, Messages, StrUtils, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Db, DBCtrls, Mask, Buttons, ExtCtrls, Math,
  ComCtrls, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, Commctrl, SHDocVw, ShellAPI, DBCommon, Rtti,
  Variants, IBX.IBStoredProc, Menus, IdHashMessageDigest, IBX.IBSQL, ZIP, Generics.Collections, UCHistDataset,
  FireDAC.Comp.Client, FireDAC.Stan.Option, FireDAC.Stan.Param, Vcl.StdCtrls, Tlhelp32, Classes.WR, wrConstantes, wrConversao,
  FireDAC.Comp.DataSet, dxLayoutContainer, cxDropDownEdit, cxTL, cxDBTL, cxGridCustomTableView,
  cxDBLookupComboBox, cxGridCustomView, cxGridTableView, cxGraphics, cxButtons, cxGridDBTableView, cxEdit, cxDBEdit, cxSchedulerStorage,
  cxSchedulerStrs, cxScheduler, cxSchedulerDialogs, System.Diagnostics, dxScreenTip, Vcl.ImgList, { ConCep,  }
  dxGDIPlusClasses, dxSpreadSheetFunctions, dxSpreadSheetCore, pcnConversao, cxTextEdit, cxImageComboBox,
  dxSpreadSheetTypes, dxSpreadSheetCoreFormulas, dxUIAdorners, dxTokenEdit, cxDataControllerConditionalFormatting,
  cxVariants, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, cxImage,
  {$IFDEF COMERCIAL} TratarImagem, {$ENDIF} dxSpreadSheet, dxSpreadSheetReportDesigner, dxSpreadSheetUtils, dxRibbon,
  dxBar, uWRNotaFiscal, blcksock, FrDashboardBlocoMestre, FrDashboardBlocoGrafico, FrDashboardBlocoSimples, cxCustomData,
  cxGrid, dxDateRanges, cxDBData, cxGridLevel, dxCore, dxSmartImage, Printers, ACBrNFe, ACBrCTe, ACBrUtil, cxRichEdit,
  dxRichEdit.Control, dxRichEdit.NativeApi, cxHint, cxFilter;

type
//  TWR_Bloqueia = class
//    Mensagem: string;
//  end;

  TWR_Email = class
    CodModelo: integer;
    EnviarPDF: boolean;
    Cliente: boolean;
    Email: string;
  end;

  TWR_Notificacao = class
    Mensagem: string;
    CodUsuario_Seguidor: integer;
    CodPessoa_Seguidor: string;
  end;

  TWR_Execucoes = class
    Email: TList<TWR_Email>;
    Notificacoes: TList<TWR_Notificacao>;
  end;

  TWR_Condicao = class
    Campo_Base: string;
    Comparador: string;
    Tipo_Valor: string;
    Valor_Comparado: variant;
  end;

  TWR_Acao = class
    Codigo: integer;
    Descricao: string;
    Tabela: string;
    Modulo: string;
    SQL: string;

    // Agrupamento
    Agrupamento: String;
    Campo_Categoria: string;

    // Filtro
    Filtro: TMemoryStream;
    FilterText: string;

//    SQLWhere: TStringList;
//    SQLSubGrid: TStrings;
//    SubGridSelecionado: string;

    //Grafico
    Grafico_Tipo: string;
    Formato: string;
    Tem_Quant_Registros: Boolean;
    Quant_Registros: Integer;
    Width: Integer;
    Height: Integer;
    Bloco: string;
    Tag_Tela: Integer;
    Tem_Periodo: Boolean;
    Campo_Periodo: string;
    Grafico_Periodo: string;

    Ativo: string;
    Dt_Alteracao: TDateTime;
    Condicoes: TList<TWR_Condicao>;
    Execucoes: TWR_Execucoes;
//    Bloqueia: TWR_Bloqueia;
//    Cadastro: TWR_Cadastro;
  end;

var
  Acoes_Sistema: TList<TWR_Acao>;
  FListaEmail: TList<TWR_Email>;
  FListaNotificacoes: TList<TWR_Notificacao>;
//  FListaCadastro: TList<TWR_Cadastro>;
//  FListaBloqueia: TList<TWR_Bloqueia>;
  FUCHist: TUCHist_Dataset;

// Essa é a rotina principal
procedure Acoes_Execute_Todos(ATag: integer; AAcao: string; AUCHist: TUCHist_Dataset);
procedure Acoes_Execute_Cadastro(ATag: integer; AAcao: string);

procedure GeraListaEmails(var AListaEmail, AEmails: TList<TWR_Email>);
procedure GeraListaNotificacoes(var AListaNotificacoes, ANotificacoes: TList<TWR_Notificacao>);
//procedure GeraListaCadastro(var AListaCadastro: TList<TWR_Cadastro>; ACadastro: TWR_Cadastro);
//procedure GeraListaBloqueio(var AListaBloqueio: TList<TWR_Bloqueia>; ABloqueia: TWR_Bloqueia);

// Execuções
procedure RotinaDeExecucao;
procedure Acao_EnviarNotificacaoInterna(AListaNotificacoes: TList<TWR_Notificacao>);

// Função auxiliar para testar condição
function Acao_CumpreCondicao(ACondicao: TWR_Condicao; ADataSet: TFDQuery): Boolean;
function Acao_StringToFieldOperator(AFiltro: string): TcxFilterOperatorKind;

procedure Acao_SalvarNoBanco(AAcao: TWR_Acao);
procedure Acao_CarregarDoBanco;
function BuscaIndexAcaoPeloCodigo(ACodigo: integer): integer;

implementation

uses Base, wrFuncoes, Principal, Unitfuncoes, Classes.APP, System.DateUtils;

procedure Acoes_Execute_Todos(ATag: integer; AAcao: string; AUCHist: TUCHist_Dataset);
begin
  if not Assigned(Acoes_Sistema) then
    Exit;

  FUCHist := AUCHist;

  if AAcao = 'CONFIRMAR' then
    Acoes_Execute_Cadastro(ATag, AAcao);

//  if AAcao = 'DRE' then
//    Acoes_Execute_DRE(ATag, AAcao);


end;

procedure RotinaDeExecucao;
begin


//  if Assigned(FListaCadastro) and (FListaCadastro.Count > 0) then
//  begin
//
//  end;
//
//  if Assigned(FListaBloqueia) and (FListaBloqueia.Count > 0) then
//  begin
//
//  end;
end;

procedure Acoes_Execute_Cadastro(ATag: integer; AAcao: string);
var
  I, J: integer;
  ACumpre: boolean;
begin
  for I := 0 to Acoes_Sistema.Count - 1 do
  begin
//    if Acoes_Sistema[I].TagDaTela <> ATag then
//      continue;

    if not Assigned(Acoes_Sistema[I].Condicoes) then
      continue;

    ACumpre := True;  
    for J := 0 to Acoes_Sistema[I].Condicoes.Count - 1 do
    begin
      if Acao_CumpreCondicao(Acoes_Sistema[I].Condicoes[J], TFDQuery(FUCHist.DataSet)) then
        continue;
      ACumpre := False;
    end;

    if not ACumpre then
      continue;

    if Assigned(Acoes_Sistema[I].Execucoes.Email) then
      GeraListaEmails(FListaEmail, Acoes_Sistema[I].Execucoes.Email);

    if Assigned(Acoes_Sistema[I].Execucoes.Notificacoes) then
      GeraListaNotificacoes(FListaNotificacoes, Acoes_Sistema[I].Execucoes.Notificacoes);

//    if Assigned(Acoes_Sistema[I].Cadastro) then
//      GeraListaCadastro(FListaCadastro, Acoes_Sistema[I].Cadastro);
//
//    if Assigned(Acoes_Sistema[I].Bloqueia) then
//      GeraListaBloqueio(FListaBloqueia, Acoes_Sistema[I].Bloqueia);
  end;


  if Assigned(FListaEmail) and (FListaEmail.Count > 0) then
  begin

  end;

    if Assigned(FListaNotificacoes) and (FListaNotificacoes.Count > 0) then
  begin
    Acao_EnviarNotificacaoInterna(FListaNotificacoes);
  end;


end;

procedure GeraListaEmails(var AListaEmail, AEmails: TList<TWR_Email>);
var
  I: integer;
begin
  if not Assigned(AListaEmail) then
    AListaEmail := TList<TWR_Email>.Create;

  for I := 0 to AEmails.Count -1 do
    AListaEmail.Add(AEmails[I]);
end;

procedure GeraListaNotificacoes(var AListaNotificacoes, ANotificacoes: TList<TWR_Notificacao>);
var
  I: integer;
begin
  if not Assigned(AListaNotificacoes) then
    AListaNotificacoes := TList<TWR_Notificacao>.Create;

  for I := 0 to ANotificacoes.Count -1 do
    AListaNotificacoes.Add(ANotificacoes[I]);
end;

//procedure GeraListaCadastro(var AListaCadastro: TList<TWR_Cadastro>; ACadastro: TWR_Cadastro);
//begin
//  if not Assigned(AListaCadastro) then
//    AListaCadastro := TList<TWR_Cadastro>.Create;
//
//  AListaCadastro.Add(ACadastro);
//end;

//procedure GeraListaBloqueio(var AListaBloqueio: TList<TWR_Bloqueia>; ABloqueia: TWR_Bloqueia);
//begin
//  if not Assigned(AListaBloqueio) then
//    AListaBloqueio := TList<TWR_Bloqueia>.Create;
//end;

procedure Acao_EnviarNotificacaoInterna(AListaNotificacoes: TList<TWR_Notificacao>);
var
  QuerHistorico : TFDQuery;
  I: integer;
begin
  QuerHistorico := GeraFDQuery;
  QuerHistorico.sql.text := 'Select * from HISTORICO_NOTIFICACAO WHERE CODIGO = 0';
  QuerHistorico.Open;

  for I := 0 to AListaNotificacoes.Count - 1 do
  begin  

    QuerHistorico.Insert;
    QuerHistorico.FieldByName('CODIGO').Value                     := GetProximoCodigoGen('CR_HISTORICO_NOTIFICACAO');
  //  QuerHistorico.FieldByName('CODHISTORICO').Value               := AChave;
    QuerHistorico.FieldByName('CODUSUARIO').AsInteger             := AListaNotificacoes[I].CodUsuario_Seguidor;
    QuerHistorico.FieldByName('ATIVO').AsString                   := 'S';
    QuerHistorico.FieldByName('CODPESSOA').AsString               := AListaNotificacoes[I].CodPessoa_Seguidor;
    QuerHistorico.FieldByName('FORM').AsString                    := '';//AForm;
    QuerHistorico.FieldByName('DT_ALTERACAO').AsDateTime          := DataHoraSys;
    QuerHistorico.FieldByName('TABELA').AsString                  := UpperCase(FUCHist.Tabela);
    QuerHistorico.FieldByName('MODULO').AsString                  := UpperCase(FUCHist.Modulo);

    if FUCHist.CampoPK1 <> '' then
      QuerHistorico.FieldByName('CHAVE_PK1').AsInteger              := TFDQuery(FUCHist.DataSet).FieldByName(FUCHist.CampoPK1).AsInteger;
    if FUCHist.CampoPK2 <> '' then
      QuerHistorico.FieldByName('CHAVE_PK2').AsString              := TFDQuery(FUCHist.DataSet).FieldByName(FUCHist.CampoPK2).AsString;
    if FUCHist.CampoPK3 <> '' then
      QuerHistorico.FieldByName('CHAVE_PK3').AsString              := TFDQuery(FUCHist.DataSet).FieldByName(FUCHist.CampoPK3).AsString;


  //          AStream :=  Email.TFrmEMail.CarregaModeloTela(2);
  //            QuerHistorico.FieldByName('MENSAGEM_NOTIFICACAO').AsString   := QuerEmail.FieldByName('MODELO').AsString;
    QuerHistorico.Post;
  end;
end;

function Acao_CumpreCondicao(ACondicao: TWR_Condicao; ADataSet: TFDQuery): Boolean;
var
  ACampoBase, AComparador, ATipoValor: string;
  AValorBase, AValorComparar: variant;
  ADataAtual: TDateTime;
begin
  ACampoBase := ACondicao.Campo_Base;
  ATipoValor := ACondicao.Tipo_Valor;

  AValorBase := ADataSet.FieldByName(ACampoBase).AsVariant;

  if ATipoValor = 'VALOR FIXO' then
    AValorComparar := ACondicao.Valor_Comparado
  else
  if ATipoValor = 'DATA ATUAL' then
    AValorComparar := DataHoraSys;
//  else
//    AValorComparar := AQueryBase.FieldByName(AQueryCondicao.FieldByName('CAMPO_COMPARADO').AsString).AsVariant;

  // Aqui eu tenho ValorBase e ValorComparar. Agora é só ver qual tipo de comparação.

  AComparador := ACondicao.Comparador;
  if ATipoValor = 'VALOR FIXO' then
  begin
    if AComparador = 'igual'                then Result := AValorBase = AValorComparar
    else if AComparador = 'diferente'         then Result := AValorBase <> AValorComparar
    else if AComparador = 'menor que'         then Result := AValorBase < AValorComparar
    else if AComparador = 'menor ou igual à'  then Result := AValorBase <= AValorComparar
    else if AComparador = 'maior que'         then Result := AValorBase > AValorComparar
    else if AComparador = 'maior ou igual à'  then Result := AValorBase >= AValorComparar
    else if AComparador = 'esta vazio'        then Result := (VarToStr(AValorBase) = '')
    else if AComparador = 'não está vazio'    then Result := (VarToStr(AValorBase) <> '');
  end
  else
  begin
    ADataAtual := DataHoraSys;

    if AComparador = 'amanhã'                  then Result := AValorComparar >= IncDay(ADataAtual, 1)
    else if AComparador = '7 dias'             then Result := AValorComparar >= IncDay(ADataAtual, 7)
    else if AComparador = '14 dias'            then Result := AValorComparar >= IncDay(ADataAtual, 14)
    else if AComparador = '30 dias'            then Result := AValorComparar >= IncDay(ADataAtual, 30)
    else if AComparador = 'ontem'              then Result := AValorComparar <= IncDay(ADataAtual, -1)
    else if AComparador = 'há uma semana'      then Result := AValorComparar <= IncDay(ADataAtual, -7)
    else if AComparador = 'duas semanas atrás' then Result := AValorComparar <= IncDay(ADataAtual, -14)
    else if AComparador = 'há um mês'          then Result := AValorComparar <= IncDay(ADataAtual, -30)
    else if AComparador = 'há um ano'          then Result := AValorComparar <= IncDay(ADataAtual, -365);

  end;
end;

function Acao_StringToFieldOperator(AFiltro: string): TcxFilterOperatorKind;
begin
  if AFiltro = 'igual'			     	        then Result := foEqual
  else if AFiltro = 'diferente'		  	    then Result := foNotEqual
  else if AFiltro = 'menor que'		  	    then Result := foLess
  else if AFiltro = 'menor ou igual à'	  then Result := foLessEqual
  else if AFiltro = 'maior que' 		      then Result := foGreater
  else if AFiltro = 'maior ou igual à' 	  then Result := foGreaterEqual
//  else if'esta vazio'		       then Result := TcxFilterOperatorKind.
//  else if 'não está vazio'		   then Result := foNonBlanks
  else if AFiltro = 'entre'		            then Result := foBetween
  else if AFiltro = 'não está entre'		  then Result := foNotBetween
  else if AFiltro = 'em'		              then Result := foInList
  else if AFiltro = 'não contém'	        then Result := foNotInList
  else if AFiltro = 'ontem'		            then Result := foYesterday
  else if AFiltro = 'hoje'		            then Result := foToday
  else if AFiltro = 'amanhã'		          then Result := foTomorrow
  else if AFiltro = 'últimos 7 dias'		  then Result := foLast7Days
  else if AFiltro = 'última semana'		    then Result := foLastWeek
  else if AFiltro = 'últimos 14 dias'		  then Result := foLast14Days
  else if AFiltro = 'últimas duas semanas'then Result := foLastTwoWeeks
  else if AFiltro = 'últimos 30 dias'		  then Result := foLast30Days
  else if AFiltro = 'último mês'		      then Result := foLastMonth
  else if AFiltro = 'último ano'		      then Result := foLastYear
  else if AFiltro = 'daqui para trás'		  then Result := foInPast
  else if AFiltro = 'esta semana'		      then Result := foThisWeek
  else if AFiltro = 'este mês'		        then Result := foThisMonth
  else if AFiltro = 'este ano'		        then Result := foThisYear
  else if AFiltro = 'próximos 7 dias'		  then Result := foNext7Days
  else if AFiltro = 'próxima semana'		  then Result := foNextWeek
  else if AFiltro = 'próximos 14 dias'    then Result := foNext14Days
  else if AFiltro = 'próximos dois meses' then Result := foNextTwoWeeks
  else if AFiltro = 'próximos 30 dias'    then Result := foNext30Days
  else if AFiltro = 'próximo mês'		      then Result := foNextMonth
  else if AFiltro = 'próximo ano'		      then Result := foNextYear
  else if AFiltro = 'daqui para frente'   then Result := foInFuture;
end;

procedure Acao_SalvarNoBanco(AAcao: TWR_Acao);
var
  QuerAcao, QuerAcao_Condicao, QuerAcao_Execucao: TFDQuery;
  ATransa: TFDTransaction;
  I: integer;
begin
  ATransa           := GeraFDTransacao;
  QuerAcao          := GeraFDQuery(ATransa);
  QuerAcao_Condicao := GeraFDQuery(ATransa);
  QuerAcao_Execucao := GeraFDQuery(ATransa);
  try
    try
      QuerAcao.SQL.Text := 'SELECT * FROM BI_ACOES WHERE CODIGO = 0';
      QuerAcao_Condicao.SQL.Text := 'SELECT * FROM BI_ACOES_CONDICAO WHERE CODIGO = 0';
      QuerAcao_Execucao.SQL.Text := 'SELECT * FROM BI_ACOES_EXECUCAO WHERE CODIGO = 0';

      QuerAcao.Open;
      QuerAcao.Insert;
      QuerAcao.FieldByName('CODIGO').AsInteger        := Trunc(GetProximoCodigoGen('CR_BI_ACOES'));
      QuerAcao.FieldByName('DESCRICAO').AsString      := AAcao.Descricao;
      QuerAcao.FieldByName('TABELA').AsString         := AAcao.Tabela;
      QuerAcao.FieldByName('MODULO').AsString         := AAcao.Modulo;

      QuerAcao.FieldByName('QUANT_REGISTROS').AsInteger     :=   AAcao.Quant_Registros;
      QuerAcao.FieldByName('GRAFICO_PERIODO').AsString      :=   AAcao.Grafico_Periodo;
      QuerAcao.FieldByName('GRAFICO_TIPO').AsString         :=   AAcao.Grafico_Tipo;
      QuerAcao.FieldByName('WIDTH').AsInteger               :=   AAcao.Width;
      QuerAcao.FieldByName('HEIGHT').AsInteger              :=   AAcao.Height;
      QuerAcao.FieldByName('TEM_PERIODO').AsString          :=   ifthen(AAcao.Tem_Periodo, 'S', 'N');
      QuerAcao.FieldByName('TEM_QUANT_REGISTROS').AsString  :=   ifthen(AAcao.Tem_Quant_Registros, 'S', 'N');
      QuerAcao.FieldByName('SQL').AsString                  :=   AAcao.SQL;
      QuerAcao.FieldByName('FORMATO').AsString              :=   AAcao.Formato;
      QuerAcao.FieldByName('BLOCO').AsString                :=   AAcao.Bloco;
      QuerAcao.FieldByName('AGRUPAMENTO').AsString          :=   AAcao.Agrupamento;
      QuerAcao.FieldByName('CAMPOPERIODO').AsString         :=   AAcao.Campo_Periodo;
      QuerAcao.FieldByName('CAMPO_CATEGORIA').AsString      :=   AAcao.Campo_Categoria;
      QuerAcao.FieldByName('TAG_TELA').AsInteger            :=   AAcao.Tag_tela;

      QuerAcao.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
      TBlobField(QuerAcao.FieldByName('FILTRO')).LoadFromStream(AAcao.Filtro);
      QuerAcao.Post;

      QuerAcao_Execucao.Open;
      if Assigned(AAcao.Execucoes.Notificacoes) then
      begin
        for I := 0 to AAcao.Execucoes.Notificacoes.Count - 1 do
        begin
          QuerAcao_Execucao.Insert;
          QuerAcao_Execucao.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_BI_ACOES_EXECUCAO'));
          QuerAcao_Execucao.FieldByName('CODBI_ACOES').AsInteger            := QuerAcao.FieldByName('CODIGO').AsInteger;
          QuerAcao_Execucao.FieldByName('TIPO').AsString                    := 'Notificação';
          QuerAcao_Execucao.FieldByName('NOTIFICACAO_MENSAGEM').AsString    := AAcao.Execucoes.Notificacoes[I].Mensagem;
          QuerAcao_Execucao.FieldByName('NOTIFICACAO_CODUSUARIO').AsInteger := AAcao.Execucoes.Notificacoes[I].CodUsuario_Seguidor;
          QuerAcao_Execucao.FieldByName('NOTIFICACAO_CODPESSOA').AsString   := AAcao.Execucoes.Notificacoes[I].CodPessoa_Seguidor;
          QuerAcao_Execucao.FieldByName('DT_ALTERACAO').AsDateTime          := DataHoraSys;
          QuerAcao_Execucao.FieldByName('ATIVO').AsString                   := 'S';
          QuerAcao_Execucao.Post;
        end;
      end;

      if Assigned(AAcao.Execucoes.Email) then
      begin
        for I := 0 to AAcao.Execucoes.Email.Count - 1 do
        begin
          QuerAcao_Execucao.Insert;
          QuerAcao_Execucao.FieldByName('CODIGO').AsInteger             := Trunc(GetProximoCodigoGen('CR_BI_ACOES_EXECUCAO'));
          QuerAcao_Execucao.FieldByName('CODBI_ACOES').AsInteger        := QuerAcao.FieldByName('CODIGO').AsInteger;
          QuerAcao_Execucao.FieldByName('TIPO').AsString                := 'Email';
          QuerAcao_Execucao.FieldByName('EMAIL_CODMODELO').AsInteger     := AAcao.Execucoes.Email[I].CodModelo;
          QuerAcao_Execucao.FieldByName('EMAIL_IS_CLIENTE').AsString    := ifthen(AAcao.Execucoes.Email[I].Cliente, 'S', 'N');
          QuerAcao_Execucao.FieldByName('EMAIL_EMAIL').AsString         := AAcao.Execucoes.Email[I].Email;
          QuerAcao_Execucao.FieldByName('DT_ALTERACAO').AsDateTime      := DataHoraSys;
          QuerAcao_Execucao.FieldByName('ATIVO').AsString               := 'S';
          QuerAcao_Execucao.Post;
        end;
        end;

      if Assigned(AAcao.Condicoes) then
      begin
      QuerAcao_Condicao.Open;
        for I := 0 to AAcao.Condicoes.Count - 1 do
        begin
          QuerAcao_Condicao.Insert;
          QuerAcao_Condicao.FieldByName('CODIGO').AsInteger           := Trunc(GetProximoCodigoGen('CR_BI_ACOES_CONDICAO'));
          QuerAcao_Condicao.FieldByName('CODBI_ACOES').AsInteger      := QuerAcao.FieldByName('CODIGO').AsInteger;
          QuerAcao_Condicao.FieldByName('CAMPO_BASE').AsString        := AAcao.Condicoes[I].Campo_Base;
          QuerAcao_Condicao.FieldByName('COMPARADOR').AsString        := AAcao.Condicoes[I].Comparador;
          QuerAcao_Condicao.FieldByName('TIPO_VALOR').AsString        := AAcao.Condicoes[I].Tipo_Valor;
          QuerAcao_Condicao.FieldByName('VALOR_COMPARADO').AsString   := AAcao.Condicoes[I].Valor_Comparado;
          QuerAcao_Condicao.FieldByName('DT_ALTERACAO').AsDateTime    := DataHoraSys;
          QuerAcao_Condicao.FieldByName('ATIVO').AsString             := 'S';
          QuerAcao_Condicao.Post;
        end;
      end;

      ATransa.Commit;
    except
      ATransa.RollBack;
    end;

  finally
    QuerAcao.Free;
    QuerAcao_Condicao.Free;
    QuerAcao_Execucao.Free;
  end;
end;

procedure Acao_CarregarDoBanco;
var
  QuerAcao, QuerAcao_Condicao, QuerAcao_Execucao: TFDQuery;
  ATransa: TFDTransaction;
  I, AIndice: integer;
  AAcao: TWR_Acao;
  ACondicao: TWR_Condicao;
  AEmail: TWR_Email;
  ANotificacao: TWR_Notificacao;
  AData: TDateTime;
  AStream: TMemoryStream;
begin                        //   ta co erro
  ATransa           := GeraFDTransacao;
  QuerAcao          := GeraFDQuery(ATransa);
  QuerAcao_Condicao := GeraFDQuery(ATransa);
  QuerAcao_Execucao := GeraFDQuery(ATransa);
  try
    QuerAcao.SQL.Text := 'SELECT * FROM BI_ACOES';
    QuerAcao.Open;

    QuerAcao.First;
    while not QuerAcao.Eof do
    begin
      AAcao := TWR_Acao.Create;
      AAcao.Codigo            :=  QuerAcao.FieldByName('CODIGO').AsInteger;
      AAcao.Descricao         := QuerAcao.FieldByName('DESCRICAO').AsString;
      AAcao.Tabela            := QuerAcao.FieldByName('TABELA').AsString;
      AAcao.Modulo            := QuerAcao.FieldByName('MODULO').AsString;
      AAcao.Dt_Alteracao      := QuerAcao.FieldByName('DT_ALTERACAO').AsDateTime;

      AAcao.Quant_Registros   := QuerAcao.FieldByName('QUANT_REGISTROS').AsInteger;
      AAcao.Grafico_Periodo   := QuerAcao.FieldByName('GRAFICO_PERIODO').AsString;
      AAcao.Grafico_Tipo      := QuerAcao.FieldByName('GRAFICO_TIPO').AsString;
      AAcao.Width             := QuerAcao.FieldByName('WIDTH').AsInteger;
      AAcao.Height            := QuerAcao.FieldByName('HEIGHT').AsInteger;
      AAcao.Tem_Periodo       := QuerAcao.FieldByName('TEM_PERIODO').AsString = 'S';
      AAcao.Tem_Quant_Registros := QuerAcao.FieldByName('TEM_QUANT_REGISTROS').AsString = 'S';
      AAcao.SQL                 := QuerAcao.FieldByName('SQL').AsString;
      AAcao.Formato             := QuerAcao.FieldByName('FORMATO').AsString;
      AAcao.Bloco               := QuerAcao.FieldByName('BLOCO').AsString;
      AAcao.Agrupamento         := QuerAcao.FieldByName('AGRUPAMENTO').AsString;
      AAcao.Campo_Periodo       := QuerAcao.FieldByName('CAMPOPERIODO').AsString;
      AAcao.Campo_Categoria     := QuerAcao.FieldByName('CAMPO_CATEGORIA').AsString;
      AAcao.Tag_tela 	          := QuerAcao.FieldByName('TAG_TELA').AsInteger;

      if (QuerAcao.FieldByName('FILTRO').AsString <> '') then
      begin
//        AStream := TMemoryStream.Create;
//        AStream.Position := 0;
        AAcao.Filtro := TMemoryStream.Create;
        AAcao.Filtro.Position := 0;
        TBlobField(QuerAcao.FieldByName('FILTRO')).SaveToStream(AAcao.Filtro);

//        TBlobField(AAcao.Filtro).LoadFromStream(AStream);
//        AAcao.Filtro := AStream;
      end;
      QuerAcao_Condicao.Close;
      QuerAcao_Condicao.SQL.Text := 'SELECT * FROM BI_ACOES_CONDICAO WHERE CODBI_ACOES = ' + VarToStr(AAcao.Codigo);
      QuerAcao_Condicao.Open;

      if QuerAcao_Condicao.RecordCount > 0 then
        AAcao.Condicoes := TList<TWR_Condicao>.Create;

      QuerAcao_Condicao.First;
      while not QuerAcao_Condicao.eof do
      begin
        ACondicao := TWR_Condicao.Create;
        with ACondicao do
        begin
          Campo_Base := QuerAcao_Condicao.FieldByName('CAMPO_BASE').AsString;
          Comparador := QuerAcao_Condicao.FieldByName('COMPARADOR').AsString;
          Tipo_Valor := QuerAcao_Condicao.FieldByName('TIPO_VALOR').AsString;

          if TryStrToDateTime(QuerAcao_Condicao.FieldByName('VALOR_COMPARADO').Value, AData) then
            Valor_Comparado := AData
          else
            Valor_Comparado := QuerAcao_Condicao.FieldByName('VALOR_COMPARADO').Value;
        end;
        AAcao.Condicoes.Add(ACondicao);
        QuerAcao_Condicao.Next;
      end;

      QuerAcao_Execucao.Close;
      QuerAcao_Execucao.SQL.Text := 'SELECT * FROM BI_ACOES_EXECUCAO WHERE CODBI_ACOES = ' + VarToStr(AAcao.Codigo);
      QuerAcao_Execucao.Open;

      AAcao.Execucoes := TWR_Execucoes.Create;

      QuerAcao_Execucao.First;
      while not QuerAcao_Execucao.Eof do
      begin
        if QuerAcao_Execucao.FieldByName('TIPO').AsString = 'Email' then
        begin
          if not Assigned(AAcao.Execucoes.Email) then
            AAcao.Execucoes.Email := TList<TWR_Email>.Create;

          AEmail := TWR_Email.Create;
          AEmail.CodModelo := QuerAcao_Execucao.FieldByName('EMAIL_CODMODELO').AsInteger;
          AEmail.Cliente   := QuerAcao_Execucao.FieldByName('EMAIL_IS_CLIENTE').AsString = 'S';
          AEmail.Email     := QuerAcao_Execucao.FieldByName('EMAIL_EMAIL').AsString;

          AAcao.Execucoes.Email.Add(AEmail);
        end;

        if QuerAcao_Execucao.FieldByName('TIPO').AsString = 'Notificação' then
        begin
          if not Assigned(AAcao.Execucoes.Notificacoes) then
            AAcao.Execucoes.Notificacoes := TList<TWR_Notificacao>.Create;

          ANotificacao := TWR_Notificacao.Create;
          ANotificacao.Mensagem             := QuerAcao_Execucao.FieldByName('NOTIFICACAO_MENSAGEM').AsString;
          ANotificacao.CodUsuario_Seguidor  := QuerAcao_Execucao.FieldByName('NOTIFICACAO_CODUSUARIO').AsInteger;
          ANotificacao.CodPessoa_Seguidor   := QuerAcao_Execucao.FieldByName('NOTIFICACAO_CODPESSOA').AsString;
          AAcao.Execucoes.Notificacoes.Add(ANotificacao);
        end;

        QuerAcao_Execucao.Next;
      end;
      if not Assigned(Acoes_Sistema) then
        Acoes_Sistema := TList<TWR_Acao>.Create;

      AIndice := BuscaIndexAcaoPeloCodigo(AAcao.Codigo);

      if AIndice > -1 then
        Acoes_Sistema[AIndice] := AAcao
      else
        Acoes_Sistema.Add(AAcao);

      QuerAcao.Next;
    end;
  finally
    QuerAcao.Free;
    QuerAcao_Condicao.Free;
    QuerAcao_Execucao.Free;
  end;
end;

function BuscaIndexAcaoPeloCodigo(ACodigo: integer): integer;
var
  I: integer;
begin
  Result := -1;
  for I := 0 to Acoes_Sistema.Count - 1 do
  begin
    if Acoes_Sistema[I].Codigo = ACodigo then
    begin
      Result := I;
      Break;
    end;
  end;
end;

end.
