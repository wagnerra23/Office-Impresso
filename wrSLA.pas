unit wrSLA;

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
  dxRichEdit.Control, dxRichEdit.NativeApi, cxHint;

  // Execução - Chamar isso nas telas para executar o SLA
  procedure SLA_Execute(AUCHist: TUCHist_Dataset; AModulo, ATabela, AAcao: string;
                      ACampoFiltro: string; ACodFiltro: string);
  procedure SLA_ExecuteSemFiltro(AUCHist: TUCHist_Dataset; AModulo, ATabela, AAcao: string);

  // Função para carregar seguidores
procedure SLA_CarregarSeguidores(const ADataSet: TDataSet; const AHistDataset: TDataSet; const AUCHist: TUCHist_Dataset;
                                  const ACadastro: TDataSet; ACampoFiltro: string = ''; ACodFiltro: string = '');

  // Funções de validação
  function SLA_VerificaSeTemRegraAtiva(AModulo, ATabela, AAcao: string; ACampoFiltro: string = 'Sem Filtro'; ACodFiltro: string = ''): Integer;
  function SLA_BuscaCodigoSLA(AQuerySLA: TFDQuery; ACampoFiltro: string = ''; ACodFiltro: integer = 0): Integer;
  function SLA_VerificaSeCumpreCondicoes(AQueryTela: TFDQuery; ACodSLA: integer; AAcao: string): Boolean;
//  function SLA_CumpreCondicao(AQueryBase, AQueryCondicao: TFDQuery): Boolean;
  function SLA_BuscaSeguidores(ACodSLA: integer; AAcao: string): TFDQuery;
  
  // Funções para gerar as notificações
  function SLA_GeraModelo(ACodSLA: integer): string;
  procedure SLA_EnviarNotificacaoInterna(AQuerSeguidores, AQueryTela: TFDQuery; AModelo, ATabela, AModulo: string);
  procedure SLA_EnviarEmailParaFilaDeEnvio(AQuerSeguidores: TFDQuery; AModelo: string); 
implementation

uses
  ImpTexto, UnitFuncoes, GraphUtil, cxLabel, dxLayoutControl, cxLookAndFeelPainters, cxClasses ,
  DateUtils {$IFDEF COMERCIAL},Aguarde,  Utils.Financeiro, Agenda, fs_iinterpreter {$ENDIF};

procedure SLA_Execute(AUCHist: TUCHist_Dataset; AModulo, ATabela, AAcao: string;
                      ACampoFiltro: string; ACodFiltro: string);
var
  AQuerySLA, AQuerSeguidores, AQueryTela: TFDQuery;
  AModelo: string;
  ACodSLA: integer;
begin
  AQueryTela := TFDQuery(AUCHist.Dataset);
  ACodSLA := SLA_VerificaSeTemRegraAtiva(AModulo, ATabela, AAcao, ACampoFiltro, ACodFiltro);

  if (ACodSLA > 0) and SLA_VerificaSeCumpreCondicoes(AQueryTela, ACodSLA, AAcao) then
  begin
//    TFrameHistorico. AdicionaHistorico(
    AQuerSeguidores := SLA_BuscaSeguidores(ACodSLA, AAcao);

    if AQuerSeguidores.RecordCount > 0 then
    begin
      AModelo := SLA_GeraModelo(AQuerSeguidores.FieldByName('CODSLA').AsInteger);
      AQuerSeguidores.First;
      while not AQuerSeguidores.eof do
      begin
        if AQuerSeguidores.FieldByName('CODUSUARIO').AsString <> '' then
          SLA_EnviarNotificacaoInterna(AQuerSeguidores, AQueryTela, AModelo, ATabela, AModulo);

        if AQuerSeguidores.FieldByName('ENVIA_EMAIL').AsString = 'S' then
          SLA_EnviarEmailParaFilaDeEnvio(AQuerSeguidores, AModelo);

        AQuerSeguidores.Next;
      end;
    end;
  end;  
end;

procedure SLA_ExecuteSemFiltro(AUCHist: TUCHist_Dataset; AModulo, ATabela, AAcao: string);
begin
  SLA_Execute(AUCHist, AModulo, ATabela, AAcao, 'Sem Filtro', '');
end;

function SLA_VerificaSeTemRegraAtiva(AModulo, ATabela, AAcao: string; ACampoFiltro: string = 'Sem Filtro'; ACodFiltro: string = ''): Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT S.CODIGO FROM SLA S WHERE ' +
                      'S.MODULO = :MODULO ' +
                      'AND S.TABELA = :TABELA ' +
                      'AND S.FILTRO = :FILTRO ' +
                      'AND S.VALOR_FILTRO = :VALORFILTRO ' +
                      'AND S.'+AAcao+' = ''S''';
    QuerX.ParamByName('MODULO').AsString := AModulo;
    QuerX.ParamByName('TABELA').AsString := ATabela;
    QuerX.ParamByName('FILTRO').AsString := ACampoFiltro;
    QuerX.ParamByName('VALORFILTRO').AsString := ACodFiltro;
    QuerX.Open;

    Result := QuerX.FieldByName('CODIGO').AsInteger;
  except
    raise Exception.Create('Erro ao gerar query.');
  end;
end;

function SLA_VerificaSeCumpreCondicoes(AQueryTela: TFDQuery; ACodSLA: integer; AAcao: string): Boolean;
var
  QuerX: TFDQuery;
begin
  Result := False;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT SC.* FROM SLA_CONDICAO SC WHERE ' +
                      'SC.CODSLA = :CODIGO AND ' +
                      'SC.ACAO = :ACAO ';
    QuerX.ParamByName('CODIGO').AsInteger := ACodSLA;
    QuerX.ParamByName('ACAO').AsString := AAcao;
    QuerX.Open;

    Result := True;
    QuerX.First;
    while not QuerX.eof do
    begin
//      if not SLA_CumpreCondicao(AQueryTela, QuerX) then
//      begin
//        Result := False;
//        Break;
//      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

function SLA_BuscaCodigoSLA(AQuerySLA: TFDQuery; ACampoFiltro: string = ''; ACodFiltro: integer = 0): Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
//    if ACampoFiltro <> '' then
//    begin
    AQuerySLA.First;
    while not AQuerySLA.eof do
    begin
      // O filtro do ACampoFiltro não tem ação, pois o SLA é uma condição para o filtro.
      // Aqui o QuerySLA já tem acesso a todas as SLA com a ação selecionada.
      // Neste While deve verificar se o CAMPO de filtro é validado
      QuerX.Close;
      QuerX.SQL.Text := 'SELECT SC.* FROM SLA_CONDICAO SC WHERE ' +
                        'SC.CODSLA = :CODIGO AND ' +
                        'SC.CAMPO_BASE = :CampoFiltro ' +
                        'SC.VALOR_COMPARADO = :CodFiltro ' +
                        'SC.ACAO IS NULL';
      QuerX.ParamByName('CODIGO').AsInteger := AQuerySLA.FieldByName('CODIGO').AsInteger;
      QuerX.ParamByName('CampoFiltro').AsString := ACampoFiltro;
      QuerX.ParamByName('CodFiltro').AsInteger := Trunc(ACodFiltro);
      QuerX.Open;

      if QuerX.RecordCount > 0 then
      begin
        Result := QuerX.FieldByName('CODIGO').AsInteger;
        break;
      end;
    end;
//    end
//    else
//    begin
//      AQuerySLA.First;
//      while not AQuerySLA.eof do
//      begin
//        // Aqui cai se não tiver filtro. Se não tiver filtro quer dizer que
//        // por exemplo todos os produtos que forem excluídos vão ser notificados.
//        // Então deve cair em uma SLA específica que não tenha filtro com ação NULL.
//        QuerX.Close;
//        QuerX.SQL.Text := 'SELECT SC.* FROM SLA_CONDICAO SC WHERE ' +
//                          'SC.CODSLA = :CODIGO AND ' +
//                          'SC.ACAO IS NULL';
//        QuerX.ParamByName('CODIGO').AsInteger := AQuerySLA.FieldByName('CODIGO').AsInteger;
//        QuerX.Open;
//
//        if QuerX.RecordCount = 0 then
//        begin
//          Result := QuerX.FieldByName('CODIGO').AsInteger;
//          break;
//        end;
//      end;
//    end;
  finally
    QuerX.Free;  
  end;
end;



function SLA_GeraModelo(ACodSLA: integer): string;
begin
  Result := 'Modelo Exemplo para Teste, recebido CODSLA = ' + VarToStr(ACodSLA);
end;

function SLA_BuscaSeguidores(ACodSLA: integer; AAcao: string): TFDQuery;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT SS.*, U.CODIGO AS CODUSUARIO, P.EMAIL FROM SLA_SEGUIDOR SS ' +
                      'LEFT JOIN USUARIO U ON U.CODFUNCIONARIO = SS.CODPESSOA ' +
                      'LEFT JOIN PESSOAS P ON P.CODIGO = SS.CODPESSOA ' +
                      'WHERE SS.CODSLA = :CodSLA AND ' +
                      'SS.'+AAcao+' = ''S''';
    QuerX.ParamByName('CodSLA').AsInteger := ACodSLA;
    QuerX.Open;

    Result := QuerX;
  except
    raise Exception.Create('Erro ao buscar seguidores');
  end;
end;

procedure SLA_EnviarNotificacaoInterna(AQuerSeguidores, AQueryTela: TFDQuery; AModelo, ATabela, AModulo: string);
var
  QuerHistorico : TFDQuery;
begin
  QuerHistorico.sql.text := 'Select * from HISTORICO_NOTIFICACAO WHERE CODIGO = 0';
  QuerHistorico.Open;
  QuerHistorico.Insert;
  QuerHistorico.FieldByName('CODIGO').Value                     := GetProximoCodigoGen('CR_HISTORICO_NOTIFICACAO');
//  QuerHistorico.FieldByName('CODHISTORICO').Value               := AChave;
  QuerHistorico.FieldByName('CODUSUARIO').AsInteger             := AQuerSeguidores.FieldByName('CODUSUARIO').AsInteger;
  QuerHistorico.FieldByName('ATIVO').AsString                   := 'S';
  QuerHistorico.FieldByName('CODPESSOA').AsString               := AQuerSeguidores.FieldByName('CODPESSOA').AsString;
  QuerHistorico.FieldByName('FORM').AsString                    := '';//AForm;
  QuerHistorico.FieldByName('DT_ALTERACAO').AsDateTime          := DataHoraSys;
  QuerHistorico.FieldByName('TABELA').AsString                  := ATabela; //UpperCase(UCHist_Cadastro.Tabela);
  QuerHistorico.FieldByName('MODULO').AsString                  := AModulo; //UpperCase(UCHist_Cadastro.Modulo);
  QuerHistorico.FieldByName('CHAVE_PK1').AsInteger              := AQueryTela.fieldbyname('codigo').AsInteger;
//          AStream :=  Email.TFrmEMail.CarregaModeloTela(2);
//            QuerHistorico.FieldByName('MENSAGEM_NOTIFICACAO').AsString   := QuerEmail.FieldByName('MODELO').AsString;
  QuerHistorico.Post;
end;

procedure SLA_EnviarEmailParaFilaDeEnvio(AQuerSeguidores: TFDQuery; AModelo: string); 
begin

end;

procedure SLA_CarregarSeguidores(const ADataSet: TDataSet; const AHistDataset: TDataSet; const AUCHist: TUCHist_Dataset;
                                  const ACadastro: TDataSet; ACampoFiltro: string = ''; ACodFiltro: string = '');
var
  QuerSeguidores: TFDQUery;
begin
  // Passo a passo
  // 1 - Encontra os seguidores para a condição desta SLA
  QuerSeguidores := GeraFDQuery;
  QuerSeguidores.SQL.Text :=  'SELECT SS.*, S.TABELA FROM SLA S ' +
                              'LEFT JOIN SLA_SEGUIDOR SS ON S.CODIGO = SS.CODSLA ' +
                              'WHERE S.tabela = :TABELA ';
  if ACampoFiltro <> '' then
    QuerSeguidores.SQL.Add('AND S.FILTRO = ' + QuotedStr(ACampoFiltro) + ' ')
  else
    QuerSeguidores.SQL.Add('AND COALESCE(S.FILTRO, '''') = '''' ');

  if ACodFiltro <> '' then
    QuerSeguidores.SQL.Add('AND S.VALOR_FILTRO = ' + QuotedStr(ACodFiltro) + ' ')
  else
    QuerSeguidores.SQL.Add('AND COALESCE(S.VALOR_FILTRO, '''') = '''' ');

  QuerSeguidores.ParamByName('TABELA').AsString := AUCHist.Tabela;
  QuerSeguidores.Open;

  // 2 - Adiciona os seguidores para a condição
  QuerSeguidores.First;
  while not QuerSeguidores.eof do
  begin
    if not ADataSet.Locate('CODPESSOA', QuerSeguidores.FieldByName('CODPESSOA').AsString, []) then
    begin
      ADataSet.Insert;
      ADataSet.FieldByName('CODIGO').AsInteger   := Trunc(GetProximoCodigoGen('CR_HISTORICO_SEGUIDOR'));
      ADataSet.FieldByName('CODPESSOA').AsString := QuerSeguidores.FieldByName('CODPESSOA').AsString;
//      ADataSet.FieldByName('CODUSUARIO').AsInteger := -1;
      ADataSet.FieldByName('TABELA').AsString    := QuerSeguidores.FieldByName('TABELA').AsString;

      if AUCHist.CampoPK1 <> '' then
        ADataSet.FieldByName('CHAVE_PK1').AsInteger := ACadastro.FieldByName(AUCHist.CampoPK1).AsInteger;
      if AUCHist.CampoPK2 <> '' then
        ADataSet.FieldByName('CHAVE_PK2').AsString := ACadastro.FieldByName(AUCHist.CampoPK2).AsString;
      if AUCHist.CampoPK3 <> '' then
        ADataSet.FieldByName('CHAVE_PK3').AsString := ACadastro.FieldByName(AUCHist.CampoPK3).AsString;

      if QuerSeguidores.FieldByName('INSERIR').AsString = 'S' then
        ADataSet.FieldByName('TEM_NOVO').AsInteger        := 1
      else
        ADataSet.FieldByName('TEM_NOVO').AsInteger        := 0;

      if QuerSeguidores.FieldByName('MODIFICAR').AsString = 'S' then
        ADataSet.FieldByName('TEM_EDITAR').AsInteger        := 1
      else
        ADataSet.FieldByName('TEM_EDITAR').AsInteger        := 0;

      if QuerSeguidores.FieldByName('EXCLUIR').AsString = 'S' then
        ADataSet.FieldByName('TEM_EXCLUIR').AsInteger        := 1
      else
        ADataSet.FieldByName('TEM_EXCLUIR').AsInteger        := 0;

      if QuerSeguidores.FieldByName('ENVIA_NOTIFICACAO').AsString = 'S' then
        ADataSet.FieldByName('TEM_NOTIFICACAO').AsInteger        := 1
      else
        ADataSet.FieldByName('TEM_NOTIFICACAO').AsInteger        := 0;

      ADataSet.Post;

//      AHistDataset.Insert;
//      AHistDataset.FieldByName('CODIGO').AsInteger     := Trunc(GetProximoCodigoGen('CR_HISTORICO_ADICIONA_SEGUIDOR'));
//      AHistDataset.FieldByName('CODEMPRESA').AsString  := Empresa.FieldByName('CODIGO').AsString;
//      AHistDataset.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
//      AHistDataset.FieldByName('DATA').AsDateTime      := DataHoraSys;
//      AHistDataset.FieldByName('EVENTO').AsString      := 'Adicionado';
//      AHistDataset.FieldByName('MODULO').AsString      := '';
//      AHistDataset.FieldByName('TABELA').AsString      := AUCHist.Tabela;
//      AHistDataset.FieldByName('CODPESSOA').AsString   := QuerSeguidores.FieldByName('CODPESSOA').AsString;
//
//      if AUCHist.CampoPK1 <> '' then
//        AHistDataset.FieldByName('CHAVE_PK1').AsInteger := ACadastro.FieldByName(AUCHist.CampoPK1).AsInteger;
//      if AUCHist.CampoPK2 <> '' then
//        AHistDataset.FieldByName('CHAVE_PK2').AsString := ACadastro.FieldByName(AUCHist.CampoPK2).AsString;
//      if AUCHist.CampoPK3 <> '' then
//        AHistDataset.FieldByName('CHAVE_PK3').AsString := ACadastro.FieldByName(AUCHist.CampoPK3).AsString;
//
//      AHistDataset.FieldByName('IS_CLIENTE').AsString  := 'N';
//      AHistDataset.FieldByName('IS_RESPONSAVEL').AsString := 'N';
//      AHistDataset.Post;

    end;
    QuerSeguidores.Next;
  end;

end;


end.
