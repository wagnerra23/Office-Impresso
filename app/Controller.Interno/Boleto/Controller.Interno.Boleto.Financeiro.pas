unit Controller.Interno.Boleto.Financeiro;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows, Vcl.Controls, DateUtils, frxExportBaseDialog, frxExportPDF,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  uWeb, Classes.Boletos, UCHistDataset, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, IBX.IBStoredProc, IBX.IBSQL;



//Geração
procedure ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto: TACBrBoleto; AFinanceiro, AFinanceiro_Boleto: TDataset; out ALinhaDigitavel: string);

// Email
//procedure UtilsBoleto_EmailsEnviarBoleto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet; AEnviarDireto: Boolean);
procedure UtilsBoleto_EmailsGerarPDFBoletos(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);
procedure UtilsBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet);
procedure UtilsBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);

function UtilsBoleto_GeraMemDadosBoleto(ADadosBoletos: TBoletosEmail; ADataSetFinanceiro, ADataSetBoletos: TDataSet): TFDMemTable;
function UtilsBoleto_RetonaListaBoletosSelecionados(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;
function UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AListaRecords : TList<Integer>; AFinanceiro, ABoleto, AConta: TDataSet): TFDMemTable;

// Isso aqui WS do Inter
function UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro :TDataSet): TFDMemTable;
function UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;

procedure ControllerBoleto_GeraBoleto_ComDadosPadrao(AFinanceiro, ABoletos: TDataSet);
procedure ControllerInternoBoleto_EditaBoleto_Ocorrencia(AFinanceiro, ABoletos: TDataSet; ANovaOcorrencia: String; UCHist_Cadastro: TUCHist_DataSet);


implementation

Uses UnitFuncoes, Financeiro_Boleto, Aguarde, wrFuncoes, GeraEmailsBoletos, Email, ACBrBoletoFCFortesFr, ACBrBoletoFCFR,
  SQL.Contas, SQL.Financeiro_Boleto, SQL.Boleto, SQL.Arquivo_Relatorio, SQL.Pessoas,
  Utils.Boleto, Services.Boleto, Controller.Boleto, Services.Financeiro;

procedure ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto: TACBrBoleto; AFinanceiro, AFinanceiro_Boleto: TDataSet; out ALinhaDigitavel: string);
var
  QuerConta : TFDQuery;
begin
  AACBrBoleto.ListadeBoletos.Clear;
  try
    QuerConta := SQLConta_CarregaDoBoleto(AFinanceiro.FieldByName('CODCONTA').AsInteger);   //, ABoleto.FieldByName('CODBANCO').AsInteger

    AACBrBoleto.Banco.TipoCobranca:=UtilsBoleto_ConfiguraBanco(QuerConta.FieldByName('CODBANCO').AsInteger,
                                               QuerConta.FieldByName('CARTEIRA').AsString,
                                               QuerConta.FieldByName('COOPERATIVA').AsString,
                                               QuerConta.FieldByName('TIPO_CONVENIO').AsString);

    UtilsBoleto_ConfiguraCedente(AACBrBoleto, QuerConta);
    // Tem aqui de tirar a Razao social ainda não sei por que, mais vai aparecer em breve
    // cbImpressao  nÃO PODE COLOCAR A RAZAOSOCIAL
    UtilsBoleto_Titulo_ADD(AACBrBoleto, AFinanceiro, AFinanceiro_Boleto, QuerConta);


    AACBrBoleto.DataArquivo := DataHoraSys;
    AACBrBoleto.ACBrBoletoFC.NomeArquivo := UtilsBoleto_GetNomeBoleto(AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString.Trim,
                                                          AFinanceiro.FieldByName('RAZAOSOCIAL').AsString.Trim,
                                                          AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString.Trim,
                                                          AFinanceiro.FieldByName('DOCUMENTO').AsString);
    AACBrBoleto.ACBrBoletoFC.TituloPreview:=AACBrBoleto.ACBrBoletoFC.NomeArquivo;


    // Reativar isso não sei como integrar
    FfrxPDFExport.FileName:=AACBrBoleto.ACBrBoletoFC.NomeArquivo;  //Sem isso O PDF salva com nome errado

    if AFinanceiro_Boleto.FieldByName('TIPO').AsString = 'Carnê' then
    begin
      AACBrBoleto.ACBrBoletoFC.LayOut := lCarne;
//      ATitulo.TipoImpressao           := tipCarne;
    end else
    begin
      AACBrBoleto.ACBrBoletoFC.LayOut := lPadrao;
//      ATitulo.TipoImpressao           := tipNormal;
    end;

    if QuerConta.FieldByName('VERSAO_ARQUIVO').AsInteger<>0 then
      AACBrBoleto.Banco.LayoutVersaoArquivo := QuerConta.FieldByName('VERSAO_ARQUIVO').AsInteger;
    if QuerConta.FieldByName('VERSAO_LAYOUT').AsInteger<>0 then
      AACBrBoleto.Banco.LayoutVersaoLote := QuerConta.FieldByName('VERSAO_LAYOUT').AsInteger;

  finally
    QuerConta.Free;
  end;

  UtilsBoleto_BaixaLogo(AACBrBoleto.ACBrBoletoFC.ArquivoLogo);

  ALinhaDigitavel := UtilsBoleto_RetornaLinhaDigitavel(AACBrBoleto);
end;

procedure UtilsBoleto_EmailsGerarPDFBoletos(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet);
var
  I: Integer;
  AListaRecords: TList<Integer>;
  ALinhaDigitavel : String;
begin  //  BoletoImpClick
  AListaRecords := UtilsBoleto_RetonaListaBoletosSelecionados(cxGridFinanceiro);
  try
    if AListaRecords.Count = 0 then Exit; // Se não retornar boleto sai
    ABoleto.Open;
    for I := 0 to AListaRecords.Count - 1 do
    begin
      if True then // Se não tiver gerado Gera ou Registra

      ControllerBoleto_GeraBoleto_ComDadosPadrao(AFinanceiro, ABoleto);      // Aqui Gera boleto
      ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
      AACBrBoleto.GerarPDF;
      // Aqui tem que commitar, Comit Obrigatório,Criar tabela temporária e vincular tudo no final
    end;
    ABoleto.Close;
  finally
    AListaRecords.Free;
  end;
{  if Imprimir_Direto = 'Sim' then
    ComitaTransacao;
  Imprimir_Direto := 'Não';    }
end;

function UtilsBoleto_GeraMemDadosBoleto(ADadosBoletos: TBoletosEmail; ADataSetFinanceiro, ADataSetBoletos: TDataSet): TFDMemTable;
var
  ATmpMemTable: TFDMemTable;

  procedure _LAddField(AFieldName: string; AFieldClass: TFieldClass; ASize: Integer);
  var
    AField: TField;
  begin
    AField := AFieldClass.Create(ATmpMemTable);
    AField.FieldName := AFieldName;
    AField.DataSet := ATmpMemTable;
    AField.Size := ASize;
  end;

  function LGetTagDadosBoletos(ACodConta: Integer; AListTagsMensagem: TList<TBoletoTagsMensagem>): string;
  var
    AStringList: TStringList;
    I: Integer;
    QuerX: TFDQuery;
    AExibirDocumento, AExibirVencimento, AExibirNotaFiscal, AExibirValor, AExibirHistorico: Boolean;
    ATipoExibicaoDados: TBoletosEmailTipoExibicaoDados;
  begin
    QuerX := SQLConta_ParamentrosEmail(ACodConta);
    try
      AExibirDocumento := QuerX.FieldByName('EMAIL_EXIBIR_DOCUMENTO').AsString = 'S';
      AExibirVencimento := QuerX.FieldByName('EMAIL_EXIBIR_VENCIMENTO').AsString = 'S';
      AExibirNotaFiscal := QuerX.FieldByName('EMAIL_EXIBIR_NOTA').AsString = 'S';
      AExibirValor := QuerX.FieldByName('EMAIL_EXIBIR_VALOR').AsString = 'S';
      AExibirHistorico := QuerX.FieldByName('EMAIL_EXIBIR_HISTORICO').AsString = 'S';
      ATipoExibicaoDados := TBoletosEmailTipoExibicaoDados(QuerX.FieldByName('EMAIL_TIPO_EXIBICAO_DADOS').AsInteger);
    finally
      QuerX.Free;
    end;

    AStringList := TStringList.Create;
    try
      case ATipoExibicaoDados of
        betedColunas:
          begin
            AStringList.Add(IfThen(AExibirDocumento, PadRight('Documento', 23, ' '), '') + IfThen(AExibirVencimento, PadRight('Vencimento', 18, ' '), '') +
              IfThen(AExibirNotaFiscal, PadRight('Nota Fiscal', 18, ' '), '') + IfThen(AExibirValor, PadRight('Valor', 15, ' '), ''));
            for I := 0 to AListTagsMensagem.Count - 1 do
            begin
              AStringList.Add(IfThen(AExibirDocumento, PadRight(AListTagsMensagem[I].Documento.Trim, 23, ' '), '') + IfThen(AExibirVencimento,
                PadRight(AListTagsMensagem[I].Vencto.Trim, 18, ' '), '') + IfThen(AExibirNotaFiscal, PadRight(AListTagsMensagem[I].NotaFiscal.Trim, 18, ' '),
                '') + IfThen(AExibirValor, PadRight(AListTagsMensagem[I].Valor.Trim, 15, ' '), ''));

              if AExibirHistorico then
                AStringList.Add(AListTagsMensagem[I].Historico);
            end;
          end;
        betedLinhas:
          begin
            AStringList.Add('...');
            for I := 0 to AListTagsMensagem.Count - 1 do
            begin
              AStringList.Add(IfThen(AExibirDocumento, PadRight('Documento: ' + AListTagsMensagem[I].Documento.Trim, 34, ' '), '') + IfThen(AExibirVencimento,
                PadRight('Vencimento: ' + AListTagsMensagem[I].Vencto.Trim, 31, ' '), '') + IfThen(AExibirNotaFiscal,
                PadRight('Nota Fiscal: ' + AListTagsMensagem[I].NotaFiscal.Trim, 33, ' '), '') + IfThen(AExibirValor,
                PadRight('Valor: ' + AListTagsMensagem[I].Valor.Trim, 22, ' '), ''));

              if AExibirHistorico then
                AStringList.Add(AListTagsMensagem[I].Historico);
            end;
            AStringList.Add('...');
          end;
      end;
      Result := AStringList.Text;
    finally
      AStringList.Free;
    end;
  end;

begin
  // Cria um dataset em memória contendo todos os campos disponíveis na tela para o usuário poder utilizar no modelo de email
  ATmpMemTable := TFDMemTable.Create(nil);
  try
    _LAddField('EmpresaRAZAOSOCIAL', TStringField, 300);
    _LAddField('EmpresaFANTASIA', TStringField, 300);
    _LAddField('PessoasRAZAOSOCIAL', TStringField, 300);
    _LAddField('PessoasFANTASIA', TStringField, 300);
    _LAddField('DadosBoletos', TMemoField, 0);

    Result := TFDMemTable(UnificaDataSets([ADataSetFinanceiro, ATmpMemTable, ADataSetBoletos]));
  finally
    ATmpMemTable.Free;
  end;

  Result.Edit;
  Result.FieldByName('EmpresaRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'EMPRESA', ADadosBoletos.CodEmpresa);
  Result.FieldByName('EmpresaFANTASIA').AsString := Procura('FANTASIA', 'EMPRESA', ADadosBoletos.CodEmpresa);
  Result.FieldByName('PessoasRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'PESSOAS', ADadosBoletos.CodPessoa);
  Result.FieldByName('PessoasFANTASIA').AsString := Procura('FANTASIA', 'PESSOAS', ADadosBoletos.CodPessoa);
  Result.FieldByName('DadosBoletos').AsString := LGetTagDadosBoletos(ADadosBoletos.CodConta, ADadosBoletos.MensagemEmail);
  Result.Post;
end;

function UtilsBoleto_RetonaListaBoletosSelecionados(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;
Var
  I:Integer;
begin
  Result:= TList<Integer>.Create;
  with cxGridFinanceiro.Controller do
  begin
    for I := 0 to SelectedRecordCount - 1 do
    begin
      with SelectedRecords[I] do
      begin
        if VarToStrDef(Values[cxGridFinanceiro.GetColumnByFieldName('TIPOPAGTO').Index], '') <> 'BOLETO' then      // Aqui verificar se o banco inter ja foi Registrado
        begin
          Result.Clear;
          raise Exception.Create('Um ou mais lançamentos selecionados não são do tipo "BOLETO".');
        end;
        Result.Add(RecordIndex); //cxGrid_Financeiro.Controller.SelectedRecords[I].RecordIndex;
      end;
    end;
  end;
end;

function UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AListaRecords : TList<Integer>; AFinanceiro, ABoleto, AConta: TDataSet): TFDMemTable;
var
  AFrmAguarde: TFrmAguarde;
  ALinhaDigitavel: string;
  I: Integer;
  AListaBoletosComErros: TStringList;
  APoint: TBookmark;
begin
  if (AListaRecords.Count =0) then
    raise Exception.Create('Não há boletos Selecionados');

  AListaBoletosComErros := TStringList.Create;
  AConta.Close;
  TIBDataset(AConta).ParamByName('CODCONTA').AsInteger := AFinanceiro.FieldByName('CODCONTA').AsInteger;

//  (ShowMessageWR('Há ' + AListaRecords.Count.ToString + ' boletos pendentes para ' +
//  'serem gerados. Deseja gerar estes boletos antes de gerar o Email em Massa?', MB_ICONQUESTION) = mrYes) then
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    try
      AConta.Open;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      AConta.Edit;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      ABoleto.Open;
      AFrmAguarde.Show;
      AFrmAguarde.Mensagem := 'Gerando Boletos..';
      AFrmAguarde.ProgressoMaximo := AListaRecords.Count;
  //      Imprimir_Direto := 'Email';
      for I := 0 to AListaRecords.Count - 1 do
      begin
        try
          cxGridFinanceiro.DataController.ChangeFocusedRecordIndex(AListaRecords[I]);
          try
            ControllerBoleto_GeraBoleto_ComDadosPadrao(AFinanceiro, ABoleto); // Email
          Except
            on E: Exception do
            begin
              if E.Message = 'Erro ao gerar dados Padrões do boleto' then
              begin
                AListaBoletosComErros.Add(AFinanceiro.FieldByName('RAZAOSOCIAL').AsString + ' ' + 'Documento: ' + AFinanceiro.FieldByName('DOCUMENTO').AsString);
                Continue;
              end;
            end;
          end;                     // VerificaBoleto(AListaRecords[I], 'Email' );

          try
            if Not ControllerBoleto_PossuiNossoNumero(AACBrBoleto, AFinanceiro, ABoleto) then
              ControllerBoleto_Registrar_NossoNumero(AACBrBoleto, AFinanceiro, ABoleto, AConta);
          Except
            on E: Exception do
            begin
              if E.Message = 'Erro ao gerar o nosso numero' then
              begin
                AListaBoletosComErros.Add(AFinanceiro.FieldByName('RAZAOSOCIAL').AsString + ' ' + 'Documento: ' + AFinanceiro.FieldByName('DOCUMENTO').AsString);
                Continue;
              end;
            end;
          end;
          ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel); // Aqui gera o Número ou Registra WS
          AACBrBoleto.ImprimirMensagemPadrao := False;
          AACBrBoleto.ACBrBoletoFC.MostrarPreview := False;
          AACBrBoleto.ACBrBoletoFC.MostrarSetup   := False;
          AACBrBoleto.GerarPDF;
  //          ImprimirBolClick(nil);           // Só pode clicar no imprimirbol se tiver permissão
          // Aqui tem que commitar      Comit Obrigatório
        except
          on E: Exception do
          begin
            if not(E is EAbort) then
              raise;
          end;
        end;
        AFrmAguarde.AvancarProgresso;
      end;
      Result := UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro, AFinanceiro);  //AQUI GERA O MENTABLE ANTES DE COMITAR, PQ DEPOIS PERDE

      AConta.Post;
      APoint := AFinanceiro.GetBookmark;
      AFinanceiro.DisableControls;
      /////////////////////COMMIT\\\\\\\\\\\\\\\\\\\\\\
      ServicesFinanceiro_Boleto_CommitaBoleto(AFinanceiro);
      /////////////////////COMMIT\\\\\\\\\\\\\\\\\\\\\\
      AFinanceiro.Open;
      AFinanceiro.EnableControls;
//      DSStateChange(nil);
      AFinanceiro.GotoBookmark(APoint);
      ABoleto.Close;
      ABoleto.Close;

      if AListaBoletosComErros.Count > 0 then
      begin
        raise Exception.Create('Os Seguintes Boletos não foram gerados: ' + AListaBoletosComErros.Text);
      end;
    finally
      AFrmAguarde.Free;
    end;
  except
    on E: Exception do
    begin
      if ContainsStr(E.Message,'deadlock') then
      begin
        raise Exception.Create('A Conta: ' + AConta.FieldByName('DESCRICAO').AsString + '. Está sendo utilizada por outra pessoa');
      end else
        raise Exception.Create(E.Message);
    end
  end;
end;

procedure UtilsBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet);
var
  AListaRecords: TList<Integer>;
  FSelecao_Financeiro: TFDMemTable;
begin
  AListaRecords := UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro);
  try
    FSelecao_Financeiro := UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto,cxGridFinanceiro, AListaRecords, AFinanceiro, ABoleto, AContas);   // passado para uma function por causa do commit;

//    FSelecao_Financeiro := UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro, AFinanceiro);
    if FSelecao_Financeiro.RecordCount = 0 then
      raise Exception.Create('Selecione os boletos para Gerar Email em massa');
    try
      TFrmGeraEmailsBoletos.AbrirFromSelecaoFinanceiro(FSelecao_Financeiro);
    finally
      FSelecao_Financeiro.Free;
    end;
  finally
    AListaRecords.Free;
  end;
end;

procedure UtilsBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);
var
  AListaRecords: TList<Integer>;
  FSelecao_Financeiro: TFDMemTable;
begin
  AListaRecords := UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro);
  try
    FSelecao_Financeiro := UtilsBoleto_ListaBoletosGera_Pendentes(AACBrBoleto,cxGridFinanceiro, AListaRecords, AFinanceiro, ABoleto, AContas);   // Imprime tudo que esta pendente

    FSelecao_Financeiro := UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro, AFinanceiro);
    if FSelecao_Financeiro.RecordCount = 0 then
      raise Exception.Create('Não possui Boletos a serem gerados.');
    try
      TFrmGeraEmailsBoletos.AbrirFromFinanceiro(ADataFiltro, AItemIndex);
    finally
      FSelecao_Financeiro.Free;
    end;
  finally
    AListaRecords.Free;
  end;
end;

function UtilsBoleto_ListaBoletos_Pendente(cxGridFinanceiro: TcxGridDBTableView): TList<Integer>;
Var
  I:Integer;
begin
  Result := TList<Integer>.Create;
  for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
  begin
    Result.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
//    if (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('TIPO').Index, '') = 'A RECEBER')   and
//       (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('TIPOPAGTO').Index, '') = 'BOLETO') and
//       (VarToStrDef(cxGridFinanceiro.GetColumnByFieldName('BOLETO_NOSSO_NR').Index, '') = '') then
//      Result.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
  end;
end;

function UtilsBoleto_ListaBoletosCopy_Pendente(cxGridFinanceiro: TcxGridDBTableView; AFinanceiro :TDataSet): TFDMemTable;
var
  I: Integer;
begin
  Result := TFDMemTable.Create(nil);
  Result.CopyDataSet(AFinanceiro, [coStructure]);
  Result.Open;
  for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
  begin
    with cxGridFinanceiro.DataController do
    begin
      ChangeFocusedRecordIndex(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
      Result.Append;
      Result.CopyRecord(AFinanceiro);
      Result.Post;
    end;
  end;
end;

procedure ControllerBoleto_GeraBoleto_ComDadosPadrao(AFinanceiro, ABoletos: TDataSet);
begin

  if AFinanceiro.FieldByName('TIPOPAGTO').AsString <> 'BOLETO' then
    raise Exception.Create('Essa lançamento não é um Boleto.');

  if AFinanceiro.FieldByName('CODCONTA').AsString = '' then
    raise Exception.Create('Escolha uma conta');

  if (AFinanceiro.FieldByName('CODCONTA').AsString = '77')and(AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '') then
    raise Exception.Create('Registre o boleto do banco Inter antes de imprimir!!');

  // Aqui deve ser chamada o Services do Baleto para poder Editar ou Inserir o Padrão do novo boleto
//  if ABoletos.RecordCount = 0 then
    ServicesBoleto_GeraBoleto_ComDadosPadrao(ABoletos, AFinanceiro);

end;

procedure ControllerInternoBoleto_EditaBoleto_Ocorrencia(AFinanceiro, ABoletos: TDataSet; ANovaOcorrencia: String; UCHist_Cadastro: TUCHist_DataSet);
begin

  if AFinanceiro.FieldByName('TIPOPAGTO').AsString <> 'BOLETO' then
    raise Exception.Create('Essa lançamento não é um Boleto.');

  if AFinanceiro.FieldByName('CODCONTA').AsString = '' then
    raise Exception.Create('Escolha uma conta');

  if (AFinanceiro.FieldByName('CODCONTA').AsString = '77')and(AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '') then
    raise Exception.Create('Registre o boleto do banco Inter antes de imprimir!!');

  // Aqui deve ser chamada o Services do Baleto para poder Editar ou Inserir o Padrão do novo boleto
//  if ABoletos.RecordCount = 0 then
    if UCHist_Cadastro.MensagemHistorico.Text = '' then
      UCHist_Cadastro.MensagemHistorico.Text:='Gerado Nova Ocorrencia: '+ ANovaOcorrencia +' pelo usuario: '+ Usuario.Login;
    UCHist_Cadastro.MensagemHistorico.Add('Usuário ' + Usuario.Login + ' Gerou uma nova ocorrencia para o boleto Nº: '+ AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString +' pelo sistema.');
    UCHist_Cadastro.MensagemHistorico.Add('');

  ServicesBoleto_EditaBoleto_Ocorrencia(ABoletos, AFinanceiro, ANovaOcorrencia);

end;



{$REGION 'Antigas'}

//procedure UtilsBoleto_EmailsEnviarBoleto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto: TDataSet; AEnviarDireto: Boolean);        // Essa rotina tem que ser dividida para ficar nos seus contextos
//var                                                                     // Email
//  I, j: Integer;                                                        // Tratamento de texto
//  AListaRecords: TList<Integer>;                                        // Tem deixar nos seus contextos
//  AListaBoletosEmail: TListaBoletosEmail;
//  ABoletosEmail: TBoletosEmail;
//  APoint: TBookmark;
//  // AEmailEnvio : TEmail;
//  ABoletoTagsMensagem: TBoletoTagsMensagem;
//  AMemDados: TFDMemTable;
//  AAssunto: string;
//  ACodModelo: Integer;
//  QuerConta: TFDQuery;
//  ALinhaDigitavel: String;
//
//  function LReplaceTagsSimples(ATexto: string): string;
//  begin
//    Result := ATexto.Replace('$RazaoSocial$', AMemDados.FieldByName('EmpresaRAZAOSOCIAL').AsString)
//      .Replace('$Fantasia$', AMemDados.FieldByName('EmpresaFANTASIA').AsString).Replace('$Cliente_RazaoSocial$',
//      AMemDados.FieldByName('PessoasRAZAOSOCIAL').AsString).Replace('$Cliente_Fantasia$', AMemDados.FieldByName('PessoasFANTASIA').AsString);
//  end;
//
//  function LGetTagDadosBoletos(ACodConta: Integer; AListTagsMensagem: TList<TBoletoTagsMensagem>): string;
//  var
//    AStringList: TStringList;
//    I: Integer;
//    QuerX: TFDQuery;
//    AExibirDocumento, AExibirVencimento, AExibirNotaFiscal, AExibirValor, AExibirHistorico: Boolean;
//    ATipoExibicaoDados: TBoletosEmailTipoExibicaoDados;
//  begin
//    QuerX := GeraFDQueryFast;
//    try
//      QuerX.SQL.Text := 'select EMAIL_EXIBIR_DOCUMENTO, EMAIL_EXIBIR_VENCIMENTO,  ' +
//        '       EMAIL_EXIBIR_NOTA, EMAIL_EXIBIR_VALOR,            ' +
//        '       EMAIL_EXIBIR_HISTORICO, EMAIL_TIPO_EXIBICAO_DADOS ' +
//        'from CONTAS                                              ' +
//        'where (CODIGO = :Cod)';
//      QuerX.Params[0].AsInteger := ACodConta;
//      QuerX.Open;
//
//      AExibirDocumento := QuerX.FieldByName('EMAIL_EXIBIR_DOCUMENTO').AsString = 'S';
//      AExibirVencimento := QuerX.FieldByName('EMAIL_EXIBIR_VENCIMENTO').AsString = 'S';
//      AExibirNotaFiscal := QuerX.FieldByName('EMAIL_EXIBIR_NOTA').AsString = 'S';
//      AExibirValor := QuerX.FieldByName('EMAIL_EXIBIR_VALOR').AsString = 'S';
//      AExibirHistorico := QuerX.FieldByName('EMAIL_EXIBIR_HISTORICO').AsString = 'S';
//      ATipoExibicaoDados := TBoletosEmailTipoExibicaoDados(QuerX.FieldByName('EMAIL_TIPO_EXIBICAO_DADOS').AsInteger);
//    finally
//      QuerX.Free;
//    end;
//
//    AStringList := TStringList.Create;
//    try
//      case ATipoExibicaoDados of
//        betedColunas:
//          begin
//            AStringList.Add(IfThen(AExibirDocumento, PadRight('Documento', 23, ' '), '') + IfThen(AExibirVencimento, PadRight('Vencimento', 18, ' '), '') +
//              IfThen(AExibirNotaFiscal, PadRight('Nota Fiscal', 18, ' '), '') + IfThen(AExibirValor, PadRight('Valor', 15, ' '), ''));
//            for I := 0 to AListTagsMensagem.Count - 1 do
//            begin
//              AStringList.Add(IfThen(AExibirDocumento, PadRight(AListTagsMensagem[I].Documento.Trim, 23, ' '), '') + IfThen(AExibirVencimento,
//                PadRight(AListTagsMensagem[I].Vencto.Trim, 18, ' '), '') + IfThen(AExibirNotaFiscal, PadRight(AListTagsMensagem[I].NotaFiscal.Trim, 18, ' '),
//                '') + IfThen(AExibirValor, PadRight(AListTagsMensagem[I].Valor.Trim, 15, ' '), ''));
//
//              if AExibirHistorico then
//                AStringList.Add(AListTagsMensagem[I].Historico);
//            end;
//          end;
//        betedLinhas:
//          begin
//            AStringList.Add('...');
//            for I := 0 to AListTagsMensagem.Count - 1 do
//            begin
//              AStringList.Add(IfThen(AExibirDocumento, PadRight('Documento: ' + AListTagsMensagem[I].Documento.Trim, 34, ' '), '') + IfThen(AExibirVencimento,
//                PadRight('Vencimento: ' + AListTagsMensagem[I].Vencto.Trim, 31, ' '), '') + IfThen(AExibirNotaFiscal,
//                PadRight('Nota Fiscal: ' + AListTagsMensagem[I].NotaFiscal.Trim, 33, ' '), '') + IfThen(AExibirValor,
//                PadRight('Valor: ' + AListTagsMensagem[I].Valor.Trim, 22, ' '), ''));
//
//              if AExibirHistorico then
//                AStringList.Add(AListTagsMensagem[I].Historico);
//            end;
//            AStringList.Add('...');
//          end;
//      end;
//      Result := AStringList.Text;
//    finally
//      AStringList.Free;
//    end;
//  end;
//
//  function LCriaMemDados: TFDMemTable;
//  var
//    ATmpMemTable: TFDMemTable;
//
//    procedure _LAddField(AFieldName: string; AFieldClass: TFieldClass; ASize: Integer);
//    var
//      AField: TField;
//    begin
//      AField := AFieldClass.Create(ATmpMemTable);
//      AField.FieldName := AFieldName;
//      AField.DataSet := ATmpMemTable;
//      AField.Size := ASize;
//    end;
//
//  begin
//    // Cria um dataset em memória contendo todos os campos disponíveis na tela para o usuário poder utilizar no modelo de email
//    ATmpMemTable := TFDMemTable.Create(nil);
//    try
//      _LAddField('EmpresaRAZAOSOCIAL', TStringField, 300);
//      _LAddField('EmpresaFANTASIA', TStringField, 300);
//      _LAddField('PessoasRAZAOSOCIAL', TStringField, 300);
//      _LAddField('PessoasFANTASIA', TStringField, 300);
//      _LAddField('DadosBoletos', TMemoField, 0);
//
//      Result := TFDMemTable(UnificaDataSets([AFinanceiro, ATmpMemTable, ABoleto]));
//    finally
//      ATmpMemTable.Free;
//    end;
//  end;
//
//  procedure LPreencheDadosMem(ADadosBoletos: TBoletosEmail);
//  begin
//    AMemDados.Edit;
//    AMemDados.FieldByName('EmpresaRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'EMPRESA', ADadosBoletos.CodEmpresa);
//    AMemDados.FieldByName('EmpresaFANTASIA').AsString := Procura('FANTASIA', 'EMPRESA', ADadosBoletos.CodEmpresa);
//    AMemDados.FieldByName('PessoasRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'PESSOAS', ADadosBoletos.CodPessoa);
//    AMemDados.FieldByName('PessoasFANTASIA').AsString := Procura('FANTASIA', 'PESSOAS', ADadosBoletos.CodPessoa);
//    AMemDados.FieldByName('DadosBoletos').AsString := LGetTagDadosBoletos(ADadosBoletos.CodConta, ADadosBoletos.MensagemEmail);
//    AMemDados.Post;
//  end;
//
//begin
//
////  Imprimir_Direto := 'Email';
//  AListaRecords := TList<Integer>.Create;
//  AListaBoletosEmail := TListaBoletosEmail.Create;
//  try
//
//    for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
//      AListaRecords.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
//
//    for I := 0 to AListaRecords.Count - 1 do
//    begin
//      cxGridFinanceiro.DataController.ChangeFocusedRecordIndex(AListaRecords[I]);
//      ControllerInternoBoleto_GeraNossoNumero(AFinanceiro, ABoleto); // Email
//      ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
//
////      UtilsBoleto_Imprimir(AACBrBoleto, AFinanceiro, ABoleto); // Financeiro.FieldByName('EMAIL').AsString;
//
//      AACBrBoleto.GerarPDF;
//      // Aqui tem que commitar      Comit Obrigatório
//
//      ABoletosEmail := AListaBoletosEmail.GetBoletosEmail(Procura('EMAIL', 'PESSOAS', AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString),
//        AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, AFinanceiro.FieldByName('CODCONTA').AsInteger, AFinanceiro.FieldByName('CODEMPRESA').AsString);
//      if ABoletosEmail = nil then
//      begin
//        ABoletosEmail := TBoletosEmail.Create;
//
//        ABoletosEmail.Email := Procura('EMAIL', 'PESSOAS', AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
//        ABoletosEmail.CodPessoa := AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
//        ABoletosEmail.CodConta := AFinanceiro.FieldByName('CODCONTA').AsInteger;
//        ABoletosEmail.CodEmpresa := AFinanceiro.FieldByName('CODEMPRESA').AsString;
//        QuerConta := GeraFDQueryFast;
//        try
//          QuerConta.SQL.Text := 'select CODEMAIL_MODELO, EMAIL_ASSUNTO ' + 'from CONTAS ' + 'where (CODIGO = :Cod)';
//          QuerConta.Params[0].AsInteger := ABoletosEmail.CodConta;
//          QuerConta.Open;
//          ABoletosEmail.EmailCodModelo := QuerConta.FieldByName('CODEMAIL_MODELO').AsInteger;
//          ABoletosEmail.EmailAssunto := QuerConta.FieldByName('EMAIL_ASSUNTO').AsString;
//        finally
//          QuerConta.Free;
//        end;
//
//        AListaBoletosEmail.Add(ABoletosEmail);
//      end;
//      ABoletosEmail.PDFBoletos.Add(UtilsBoleto_GetNomeBoleto(AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, AFinanceiro.FieldByName('RAZAOSOCIAL').AsString,
//        AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString, AFinanceiro.FieldByName('DOCUMENTO').AsString));
//
//      ABoletoTagsMensagem.NotaFiscal := AFinanceiro.FieldByName('NOTAFISCAL').AsString;
//      ABoletoTagsMensagem.Documento := AFinanceiro.FieldByName('DOCUMENTO').AsString;
//      ABoletoTagsMensagem.NossoNumero := AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString;
//      ABoletoTagsMensagem.Historico := AFinanceiro.FieldByName('HISTORICO').AsString;
//      ABoletoTagsMensagem.Valor := FormatFloat('###,###,##0.00', AFinanceiro.FieldByName('Total').AsFloat);
//      ABoletoTagsMensagem.Vencto := FormatDateTime('DD/MM/YYYY', AFinanceiro.FieldByName('VENCTO').AsDateTime);
//
//      ABoletosEmail.MensagemEmail.Add(ABoletoTagsMensagem);
//      // ABoletosEmail.NotasFiscais.Add(FinanceiroNOTAFISCAL.AsString);
//      // ABoletosEmail.OrdensServicos.Add(FinanceiroDOCUMENTO.AsString);
//      // ABoletosEmail.MensagemEmail.Add(FinanceiroBOLETO_NOSSO_NR.AsString + ': ' + FinanceiroHISTORICO.AsString);
//      Application.ProcessMessages;
//    end;
//
//    { TODO: Testar o envio automatico de email sem abrir a visualização ou a tela para para o envio do email }
//
////    if AEnviarDireto then
////      AFrmAguarde.ProgressoMaximo := AListaBoletosEmail.Count;
//    for I := 0 to AListaBoletosEmail.Count - 1 do
//    begin
////      AFrmAguarde.Show;
//      AMemDados := UtilsBoleto_GeraMemDadosBoleto(AListaBoletosEmail[I], AFinanceiro, ABoleto); // LCriaMemDados;
//      try
//        // LPreencheDadosMem(AListaBoletosEmail[i]);
//        AAssunto := AListaBoletosEmail[I].EmailAssunto;
//        if AAssunto <> '' then
//          AAssunto := LReplaceTagsSimples(AAssunto)
//        else
//          AAssunto := 'Departamento de Cobrança - Boleto';
//
////        if not AEnviarDireto then
////          AFrmAguarde.Close;
//        TFrmEmail.GerarEmailCodModelo(TCustomForm(AACBrBoleto.Owner), AListaBoletosEmail[I].Email, AAssunto, AListaBoletosEmail[I].EmailCodModelo, AListaBoletosEmail[I].PDFBoletos,
//          AEnviarDireto, AMemDados);
//        Application.ProcessMessages;
//      finally
//        AMemDados.Free;
//      end;
////      if AEnviarDireto then
////        AFrmAguarde.AvancarProgresso;
//    end;
//  finally
//    AListaRecords.Free;
//    AListaBoletosEmail.Free;
//  end;
////  ComitaTransacao;
// { if Imprimir_Direto = 'Email' then
//  begin
//    // inherited btnConfirmarClick(nil);
//    APoint := ds.DataSet.GetBookmark;
//    ds.DataSet.DisableControls;
//    try
//      Transa.Commit;
//      Transa.StartTransaction;
//      ds.DataSet.Open;
//    finally
//      ds.DataSet.EnableControls;
//    end;
//    DSStateChange(nil);
//    if not ds.DataSet.IsEmpty and (APoint <> nil) then
//      ds.DataSet.GotoBookmark(APoint);
//  end;
////  Imprimir_Direto := 'Não';
//end;

(*
class function TDMBoletos.GeraNossoNumero(ACodConta: Integer; ACarteira :String): string; // Função restrita
var
  QuerX : TFDQuery;
  ACampo : String;
  AProxNumero : Double;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select * ' +
                      'from CONTAS ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodConta;
    QuerX.Open;
    if ACarteira = QuerX.FieldByName('VARIACAO').AsString then
      ACampo := 'PROXIMO_NUMERO_VARIACAO'
    else
      ACampo := 'PROXIMO_NUMERO_CARTEIRA';
    AProxNumero := Math.Max(QuerX.FieldByName(ACampo).AsFloat, 1);

    QuerX.Close;
    QuerX.SQL.Text := 'update CONTAS set ' + ACampo + ' = :ProxNum ' +
                      'where (CODIGO = :Cod)';
    QuerX.ParamByName('Cod').AsInteger   := ACodConta;
    QuerX.ParamByName('ProxNum').AsFloat := AProxNumero + 1;
    QuerX.ExecSQL;
    ATransa.Commit;
    Result := FloatToStr(AProxNumero);
  finally
    QuerX.Free;
  end;
end;

class function TDMBoletos.Verifica_BancoGeraNossoNumero(ACodBanco: Integer): Boolean;   //    Rotina central
begin
  if ACodBanco = 77 then
    Result := False
  else
  if ACodBanco = 1 then
  begin
//    Gera o numero e registra o boleto, marca o aOK como true
//    RegistrarBoletoWS_ConBoleto
  end else
    Result := True;
end;

class function TDMBoletos.FormataLinhaDigitavel(const ALinhaDigitavel: string): string;
begin
  Result := OnlyNumberWR(ALinhaDigitavel);
  if Length(Result) <> 47 then
  begin
    ShowMessageWR('Linha Digitável Inválida');
    Exit;
  end;

  Result := Copy(Result, 1, 5) + '.' +
            Copy(Result, 6, 5) + ' ' +
            Copy(Result, 11, 5) + '.' +
            Copy(Result, 16, 6) + ' ' +
            Copy(Result, 22, 5) + '.' +
            Copy(Result, 27, 6) + ' ' +
            Copy(Result, 33, 1) + ' ' +
            Copy(Result, 34, 14);
end;

*)
{$ENDREGION}





end.

