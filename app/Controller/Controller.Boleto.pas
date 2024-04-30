unit Controller.Boleto;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, GeraEmailsBoletos, DataModuleBoletos,
  Classes.Boletos, cxGridDBTableView, System.Generics.Collections, System.Classes, Classes.WR, ACBrBoletoConversao, ACBrUtil, Forms,
  frxExportBaseDialog, frxExportPDF, UCHistDataset, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, Registry, IBX.IBStoredProc, IBX.IBSQL;


// Arquivo Funciona para WS e Arquivo

// Retorno
function  ControllerBoleto_RetornoBusca(AACBrBoleto: TACBrBoleto; AConta :TFDQuery;  AArquivo:String): Integer;
function  ControllerBoleto_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer; AArquivo:String): Integer;
procedure ControllerBoleto_Retorno_GravaBlob(AArquivo: string);

// Remessa
function ControllerBoleto_Remessa_BoletosPendentesFinanceiro(AFinanceiro_Boleto, AContas, AFinanceiro_Boleto_Historico, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Integer;
procedure ControllerBoleto_Remessa_RemoverEenviarNaProximaRemessa(AFinanceiro_Boleto_Historico, AFinanceiro_Boleto :TFDQuery);

function ControllerBoleto_Remessa_Gerar_BoletoTeste(ACodConta: Integer; ANossoNumero: string; AValor: Double; ADtVencto: TDate;
  AExcluirAposGerar: Boolean = True; ASilent: Boolean = False; AModoImpressao: TModoImpressaoBoleto = mibApenasPDF): TBoletoTeste;

// Impressões dos boletos, Só pode ter isso se tudo esta certo
// Controles que devem gerar o Número do boleto antes de imprimir, ou gerar PDF, Ou Email
procedure ControllerBoleto_PDF_SalvarComo(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet; AArquivo:String);

// Financeiro , Cuidado aqui gera despesa
procedure ControllerBoletoFinanceiro_ConfiguraACBrBoleto(AACBrBoleto: TACBrBoleto);   // Isso chama no inicira da tela no financeiro
function  ControllerBoleto_Verifica_BoletoCancelado(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Boolean;

// Email , Cuidado aqui gera despesa
procedure ControllerBoleto_EmailsEnviarBoleto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet; AEnviarDireto: Boolean);
procedure ControllerBoleto_EmailsGerarPDFBoletos(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
procedure ControllerBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
procedure ControllerBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);

// Geração e Impressão de Boletos   , Cuidado aqui gera despesa
procedure ControllerBoleto_VisualizarBoleto(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet);
procedure ControllerBoleto_ImprimirGerarPDFBoletosDireto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
function  ControllerBoleto_PossuiNossoNumero(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet): Boolean;


function  ControllerBoleto_GeraMemDadosBoleto(ADadosBoletos: TBoletosEmail; ADataSetFinanceiro, ADataSetBoletos: TDataSet): TFDMemTable;
procedure ControllerBoleto_Registrar_NossoNumero(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoletos, AConta: TDataSet);
procedure Valida_Boleto(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet);

procedure BoletoBeforePost(ADataset: TDataSet);


implementation

Uses UnitFuncoes,
  Utils.Boleto, Utils.Boleto.Retorno, wrConversao, Email, ACBrBoletoFCFortesFr, ACBrBoletoFCFR,
  SQL.Financeiro_boleto, SQL.Contas, SQL.Boleto,
  Controller.Interno.Boleto.Arquivo, Controller.Interno.Boleto.WS, Controller.Interno.Boleto.Financeiro,
  Controller.Financeiro, Services.Boleto, Controller.Interno.Contas, Services.Financeiro,
  Services.Boleto.WS, Services.Boleto.Arquivo, wrfuncoes, Winapi.Windows, Vcl.Controls, FrmRegistroAviso,
  Controller.Historico_Editando;

function ControllerBoleto_RetornoBusca(AACBrBoleto: TACBrBoleto; AConta :TFDQuery; AArquivo: String): Integer;
begin
  // Função de entrada
  if AArquivo <> '' then
    Result := ControllerBoletoArquivo_Retorno_E_Busca(AACBrBoleto, AConta, AArquivo)
  else begin
    ControllerBoletoWS_Retorno_E_Busca(AACBrBoleto, AConta.FieldByName('CODIGO').AsInteger);
    // Aqui deve ter uma rota só para o services, assim fica mais fácil de auditar
    Result := SevicesBoleto_Retorno_Tratar(AACBrBoleto, AConta.FieldByName('CODIGO').AsInteger, AArquivo);
  end;
end;

function ControllerBoleto_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer; AArquivo:String): Integer;
begin
  if AArquivo <> '' then
    Result := ControllerBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto, ACodConta)
  else
    SevicesBoletoWS_Retorno_Inserir(AACBrBoleto, ACodConta);
end;

procedure ControllerBoleto_Retorno_GravaBlob(AArquivo: string);
begin
  if AArquivo <> '' then
    ControllerBoletoArquivo_Retorno_GravaBlob(AArquivo);
//  else
//    ControllerBoletoWS_Retorno;   /// Isso aqui não grava o arquivo de retorno do WS, assim não da para saber oque aconteceu se der erro aqui, se tuver no banco fica mais fácil debugar
  SevicesBoletoArquivo_RetornoGravaBlob(AArquivo);
end;

// Remessa tete de Homologação
function ControllerBoleto_Remessa_Gerar_BoletoTeste(ACodConta: Integer; ANossoNumero: string; AValor: Double; ADtVencto: TDate;
  AExcluirAposGerar: Boolean = True; ASilent: Boolean = False; AModoImpressao: TModoImpressaoBoleto = mibApenasPDF): TBoletoTeste;
begin

end;

// Rotinas WS
procedure ControllerBoleto_PDF_SalvarComo(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AContas: TDataSet; AArquivo:String);
var
  I: Integer;
  ALinhaDigitavel : String;
begin

  if AArquivo = '' then
    raise Exception.Create('Informe o caminho do arquivo.');

  if Not ControllerBoleto_PossuiNossoNumero(AACBrBoleto, AFinanceiro, ABoleto) then
    ControllerBoleto_Registrar_NossoNumero(AACBrBoleto, AFinanceiro, ABoleto, AContas);

  if AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '' then
    raise Exception.Create('Para gerar o PDF do Boleto precisa, Gerar o Nosso número ou Registrar boleto no web Service.');

  // Aqui deve chamar os Emails
  if not ABoleto.Active then
    ABoleto.Open;

  ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
  AACBrBoleto.ACBrBoletoFC.MostrarPreview := True;
  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := True;
  AACBrBoleto.ACBrBoletoFC.NomeArquivo    := AArquivo;  // Maravilha isso aqui
  AACBrBoleto.GerarPDF;
end;

procedure ControllerBoletoFinanceiro_ConfiguraACBrBoleto(AACBrBoleto: TACBrBoleto);
Var
  FACBrBoletoFCRL : TACBrBoletoFCFortes;
  FACBrBoletoFCFR : TACBrBoletoFCFR;
//  FACBrBoletoFPDF : TACBrBoletoFPDF;
begin
  // Primeira vez do Componente
//FACBrMail   := TACBrMail.Create(FACBrBoleto);
  FACBrBoletoFCRL   := TACBrBoletoFCFortes.Create(AACBrBoleto);
  FACBrBoletoFCFR   := TACBrBoletoFCFR.Create(AACBrBoleto);
//  FACBrBoletoFPDF   := TACBrBoletoFPDF.Create(AACBrBoleto);

  if FileExists(GetDirTemp + 'Boleto.fr3') or UtilsBoleto_ExtrairTempFR3 then
  begin
    AACBrBoleto.ACBrBoletoFC       := FACBrBoletoFCFR;
    FACBrBoletoFCFR.FastReportFile := GetDirTemp + 'Boleto.fr3';
  end else
    AACBrBoleto.ACBrBoletoFC := FACBrBoletoFCRL;
  if not Assigned(FfrxPDFExport) then
    FfrxPDFExport  := TfrxPDFExport.Create(AACBrBoleto);
end;

function  ControllerBoleto_Verifica_BoletoCancelado(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Boolean;
var
  ACodUsuarioQueAutorizou :Integer;
begin
  // Se for arquivo, Apagar nosso número e colocar na´próxima remessa
  // Pois tem que informar o banco para dar baixa no boleto

  // TODO: Aqui deve conter o boleto cancelado por uma remessa ou pelo gerenciamento de cancelamento do WebService
  // Para poder gerar novo Boleto tem que saber se o anterior ja foi cancelado, gera despesa e cobrança duplicado, isso da processo, cobrar 2 vezes a mesma conta do cliente, Isso é muito grave
  if ABoletos.FieldByName('REMESSA').AsString <> '' then
    raise Exception.Create('Esse boleto ja foi gerado remessa. ' + sLineBreak + 'Lembre-se de cancelar o boleto no banco, caso a remessa já tenha sido Enviada.');

  if not SolicitaPermissao('Financeiro_Boleto_HistoricoBOLETO_NOSSO_NR',ACodUsuarioQueAutorizou) then
  begin
    raise Exception.Create('Usuario não foi autorizado');
    Exit;
  end;
  if UCHist_Cadastro.MensagemHistorico.Text = '' then
    UCHist_Cadastro.MensagemHistorico.Text:='Boleto Cancelado: '+ Usuario.Login;
  UCHist_Cadastro.MensagemHistorico.Add('Usuário ' + GetNomeUsuario(ACodUsuarioQueAutorizou) + ' Cancelou o boleto Nº: '+ AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString +' pelo sistema, confirmando que o mesmo foi cancelado pelo banco');
  UCHist_Cadastro.MensagemHistorico.Add('');
  ServicesBoleto_Verifica_BoletoCancelado(AFinanceiro, ABoletos);
  Result := True;


  // Aqui deve Veririfcar se ja esta em alguma remessa, e comlocar a intrução de cancelamento de Bolato
//
  //  AFinanceiro.FieldByName('TIPOOCORRENCIA').AsString:= 'CacelarBoletono banco'; << achar o código paracalar
  // Se for web service deve enviar o Cancelamento

//  AFinanceiro.Edit;
//  AFinanceiro.FieldByName('BOLETO_NOSSO_NR').Clear;
////  ABoletos.Delete;  DEUS NÃO
//  Result:=True;

  // Se for WebService tem que ir no WebService e comunicar o banco salvar o retorno.
end;

// Email
procedure ControllerBoleto_EmailsEnviarBoleto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet; AEnviarDireto: Boolean);
var                                                                     // Email
  I, j: Integer;                                                        // Tratamento de texto
  AListaRecords: TList<Integer>;                                        // Tem deixar nos seus contextos
  AListaBoletosEmail: TListaBoletosEmail;
  ABoletosEmail: TBoletosEmail;
  APoint: TBookmark;
  // AEmailEnvio : TEmail;
  ABoletoTagsMensagem: TBoletoTagsMensagem;
  AMemDados, AMemFinanceiro: TFDMemTable;
  AAssunto: string;
  ACodModelo: Integer;
  QuerConta: TFDQuery;
  ALinhaDigitavel: String;
  AListaBoletosComErros: TStringList;

  function LReplaceTagsSimples(ATexto: string): string;
  begin
    Result := ATexto.Replace('$RazaoSocial$', AMemDados.FieldByName('EmpresaRAZAOSOCIAL').AsString)
      .Replace('$Fantasia$', AMemDados.FieldByName('EmpresaFANTASIA').AsString).Replace('$Cliente_RazaoSocial$',
      AMemDados.FieldByName('PessoasRAZAOSOCIAL').AsString).Replace('$Cliente_Fantasia$', AMemDados.FieldByName('PessoasFANTASIA').AsString);
  end;

  function LGetTagDadosBoletos(ACodConta: Integer; AListTagsMensagem: TList<TBoletoTagsMensagem>): string;
  var
    AStringList: TStringList;
    I: Integer;
    QuerX: TFDQuery;
    AExibirDocumento, AExibirVencimento, AExibirNotaFiscal, AExibirValor, AExibirHistorico: Boolean;
    ATipoExibicaoDados: TBoletosEmailTipoExibicaoDados;
  begin
    QuerX := GeraFDQueryFast;
    try
      QuerX.SQL.Text := 'select EMAIL_EXIBIR_DOCUMENTO, EMAIL_EXIBIR_VENCIMENTO,  ' +
        '       EMAIL_EXIBIR_NOTA, EMAIL_EXIBIR_VALOR,            ' +
        '       EMAIL_EXIBIR_HISTORICO, EMAIL_TIPO_EXIBICAO_DADOS ' +
        'from CONTAS                                              ' +
        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsInteger := ACodConta;
      QuerX.Open;

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

  function LCriaMemDados: TFDMemTable;
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

  begin
    // Cria um dataset em memória contendo todos os campos disponíveis na tela para o usuário poder utilizar no modelo de email
    ATmpMemTable := TFDMemTable.Create(nil);
    try
      _LAddField('EmpresaRAZAOSOCIAL', TStringField, 300);
      _LAddField('EmpresaFANTASIA', TStringField, 300);
      _LAddField('PessoasRAZAOSOCIAL', TStringField, 300);
      _LAddField('PessoasFANTASIA', TStringField, 300);
      _LAddField('DadosBoletos', TMemoField, 0);

      Result := TFDMemTable(UnificaDataSets([AFinanceiro, ATmpMemTable, ABoleto]));
    finally
      ATmpMemTable.Free;
    end;
  end;

  procedure LPreencheDadosMem(ADadosBoletos: TBoletosEmail);
  begin
    AMemDados.Edit;
    AMemDados.FieldByName('EmpresaRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'EMPRESA', ADadosBoletos.CodEmpresa);
    AMemDados.FieldByName('EmpresaFANTASIA').AsString := Procura('FANTASIA', 'EMPRESA', ADadosBoletos.CodEmpresa);
    AMemDados.FieldByName('PessoasRAZAOSOCIAL').AsString := Procura('RAZAOSOCIAL', 'PESSOAS', ADadosBoletos.CodPessoa);
    AMemDados.FieldByName('PessoasFANTASIA').AsString := Procura('FANTASIA', 'PESSOAS', ADadosBoletos.CodPessoa);
    AMemDados.FieldByName('DadosBoletos').AsString := LGetTagDadosBoletos(ADadosBoletos.CodConta, ADadosBoletos.MensagemEmail);
    AMemDados.Post;
  end;

begin
  if cxGridFinanceiro.Controller.SelectedRecordCount > 0 then
  begin
    AListaRecords := TList<Integer>.Create;
    AListaBoletosComErros := TStringList.Create;
//  Imprimir_Direto := 'Email';
    AListaBoletosEmail := TListaBoletosEmail.Create;
    AConta.Close;
    TIBDataset(AConta).ParamByName('CODCONTA').AsInteger := AFinanceiro.FieldByName('CODCONTA').AsInteger;
    try
      try
        AConta.Open;
        /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
        AConta.Edit;
        /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
        ABoleto.Open;

        for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
          AListaRecords.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);

        for I := 0 to AListaRecords.Count - 1 do
        begin
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
          end;

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

          ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);

          AACBrBoleto.GerarPDF;

          ABoletosEmail := AListaBoletosEmail.GetBoletosEmail(Procura('EMAIL', 'PESSOAS', AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString),
            AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, AFinanceiro.FieldByName('CODCONTA').AsInteger, AFinanceiro.FieldByName('CODEMPRESA').AsString);
          if ABoletosEmail = nil then
          begin
            ABoletosEmail := TBoletosEmail.Create;

            ABoletosEmail.Email := Procura('EMAIL', 'PESSOAS', AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
            ABoletosEmail.CodPessoa := AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
            ABoletosEmail.CodConta := AFinanceiro.FieldByName('CODCONTA').AsInteger;
            ABoletosEmail.CodEmpresa := AFinanceiro.FieldByName('CODEMPRESA').AsString;
            QuerConta := GeraFDQueryFast;
            try
              QuerConta.SQL.Text := 'select CODEMAIL_MODELO, EMAIL_ASSUNTO ' + 'from CONTAS ' + 'where (CODIGO = :Cod)';
              QuerConta.Params[0].AsInteger := ABoletosEmail.CodConta;
              QuerConta.Open;
              ABoletosEmail.EmailCodModelo := QuerConta.FieldByName('CODEMAIL_MODELO').AsInteger;
              ABoletosEmail.EmailAssunto := QuerConta.FieldByName('EMAIL_ASSUNTO').AsString;
            finally
              QuerConta.Free;
            end;

            AListaBoletosEmail.Add(ABoletosEmail);
          end;
          ABoletosEmail.PDFBoletos.Add(UtilsBoleto_GetNomeBoleto(AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, AFinanceiro.FieldByName('RAZAOSOCIAL').AsString,
            AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString, AFinanceiro.FieldByName('DOCUMENTO').AsString));

          ABoletoTagsMensagem.NotaFiscal := AFinanceiro.FieldByName('NOTAFISCAL').AsString;
          ABoletoTagsMensagem.Documento := AFinanceiro.FieldByName('DOCUMENTO').AsString;
          ABoletoTagsMensagem.NossoNumero := AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString;
          ABoletoTagsMensagem.Historico := AFinanceiro.FieldByName('HISTORICO').AsString;
          ABoletoTagsMensagem.Valor := FormatFloat('###,###,##0.00', AFinanceiro.FieldByName('Total').AsFloat);
          ABoletoTagsMensagem.Vencto := FormatDateTime('DD/MM/YYYY', AFinanceiro.FieldByName('VENCTO').AsDateTime);

          ABoletosEmail.MensagemEmail.Add(ABoletoTagsMensagem);
          // ABoletosEmail.NotasFiscais.Add(FinanceiroNOTAFISCAL.AsString);
          // ABoletosEmail.OrdensServicos.Add(FinanceiroDOCUMENTO.AsString);
          // ABoletosEmail.MensagemEmail.Add(FinanceiroBOLETO_NOSSO_NR.AsString + ': ' + FinanceiroHISTORICO.AsString);
          Application.ProcessMessages;
        end;
        AMemFinanceiro := TFDMemTable(UnificaDataSets([AFinanceiro]));
        AConta.Post;
        APoint := AFinanceiro.GetBookmark;
        AFinanceiro.DisableControls;
        ServicesFinanceiro_Boleto_CommitaBoleto(AFinanceiro);
        AFinanceiro.Open;
        AFinanceiro.EnableControls;
  //      DSStateChange(nil);
        AFinanceiro.GotoBookmark(APoint);


        { TODO: Testar o envio automatico de email sem abrir a visualização ou a tela para para o envio do email }

    //    if AEnviarDireto then
    //      AFrmAguarde.ProgressoMaximo := AListaBoletosEmail.Count;
        for I := 0 to AListaBoletosEmail.Count - 1 do
        begin
    //      AFrmAguarde.Show;
          AMemDados := UtilsBoleto_GeraMemDadosBoleto(AListaBoletosEmail[I], AMemFinanceiro, ABoleto); // LCriaMemDados; AFinanceiro
          try
            // LPreencheDadosMem(AListaBoletosEmail[i]);
            AAssunto := AListaBoletosEmail[I].EmailAssunto;
            if AAssunto <> '' then
              AAssunto := LReplaceTagsSimples(AAssunto)
            else
              AAssunto := 'Departamento de Cobrança - Boleto';

    //        if not AEnviarDireto then
    //          AFrmAguarde.Close;
            TFrmEmail.GerarEmailCodModelo(TCustomForm(AACBrBoleto.Owner), AListaBoletosEmail[I].Email, AAssunto, AListaBoletosEmail[I].EmailCodModelo, AListaBoletosEmail[I].PDFBoletos,
              AEnviarDireto, AMemDados);
            Application.ProcessMessages;
          finally
            AMemDados.Free;
          end;
    //      if AEnviarDireto then
    //        AFrmAguarde.AvancarProgresso;
        end;
        ABoleto.Close;
      except
        on E: Exception do
        begin
          if ContainsStr(E.Message,'deadlock') then
          begin
            raise Exception.Create('A Conta: ' + AConta.FieldByName('DESCRICAO').AsString + '. Está sendo utilizada por outra pessoa');
          end else
            raise Exception.Create(E.Message);
        end;
      end;
    finally
      AMemFinanceiro.Free;
      AListaRecords.Free;
      AListaBoletosEmail.Free;
    end;
  //  ComitaTransacao;
   { if Imprimir_Direto = 'Email' then
    begin
      // inherited btnConfirmarClick(nil);
      APoint := ds.DataSet.GetBookmark;
      ds.DataSet.DisableControls;
      try
        Transa.Commit;
        Transa.StartTransaction;
        ds.DataSet.Open;
      finally
        ds.DataSet.EnableControls;
      end;
      DSStateChange(nil);
      if not ds.DataSet.IsEmpty and (APoint <> nil) then
        ds.DataSet.GotoBookmark(APoint);
    end;
  //  Imprimir_Direto := 'Não';
  }
  end else
  begin
    raise Exception.Create('Nenhum Boleto Selecionado');
  end;
end;

procedure ControllerBoleto_EmailsGerarPDFBoletos(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
var
  I: Integer;
  ALinhaDigitavel, BoletosComErro : String;
  AListaRecords: TList<Integer>;
  AListaBoletosComErros: TStringList;
  APoint: TBookmark;
begin
  if cxGridFinanceiro.Controller.SelectedRecordCount > 0 then
  begin
    AListaRecords := TList<Integer>.Create;
    AListaBoletosComErros := TStringList.Create;
    AConta.Close;
    TIBDataset(AConta).ParamByName('CODCONTA').AsInteger := AFinanceiro.FieldByName('CODCONTA').AsInteger;
    try
      AConta.Open;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      AConta.Edit;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      ABoleto.Open;
      try

//        with cxGridFinanceiro.Controller do
//        begin
//          for I := 0 to SelectedRecordCount - 1 do
//          begin
//            with SelectedRecordCount[I] do
//            begin
//              if VarToStrDef(Values[cxGridFinanceiroTIPOPAGTO.Index], '') <> 'BOLETO' then
//              begin
//                raise Exception.Create('Um ou mais lançamentos selecionados não são do tipo "BOLETO".');
//                Exit;
//              end;
//            end;
//          end;
//        end;


        for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
          AListaRecords.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);

        for I := 0 to AListaRecords.Count - 1 do
        begin
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
          end;



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
          ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
          AACBrBoleto.ImprimirMensagemPadrao := False;
          AACBrBoleto.ACBrBoletoFC.MostrarPreview := False;
          AACBrBoleto.ACBrBoletoFC.MostrarSetup   := False;
          AACBrBoleto.GerarPDF;
        end;
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

        if AListaBoletosComErros.Count > 0 then
        begin
          raise Exception.Create('Os Seguintes Boletos não foram gerados: ' + AListaBoletosComErros.Text);
        end;


      finally
        AListaRecords.Free;
      end;
    Except
      on E: Exception do
      begin
        if ContainsStr(E.Message,'deadlock') then
        begin
          raise Exception.Create('A Conta: ' + AConta.FieldByName('DESCRICAO').AsString + '. Está sendo utilizada por outra pessoa');
        end else
          raise Exception.Create(E.Message);
      end;
    end;
  end else
  begin
    raise Exception.Create('Nenhum Boleto Selecionado');
  end;
  // Aqui dve chamar os Emails
//  ABoleto.Open;
//  ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
//  AACBrBoleto.ACBrBoletoFC.MostrarPreview := False;
//  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := False;
//  AACBrBoleto.GerarPDF;
//  ABoleto.Close;
//  AACBrBoleto.ACBrBoletoFC.MostrarPreview := True;
//  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := True;
end;

procedure ControllerBoleto_EmailsGerarEmMassa(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
begin
  UtilsBoleto_EmailsGerarEmMassa(AACBrBoleto, cxGridFinanceiro, AFinanceiro, ABoleto, AConta);//ControllerFinanceiro_Boleto_EmailsGerarEmMassa(AACBrBoleto, cxGridFinanceiro, AFinanceiro, ABoleto);
end;

procedure ControllerBoleto_EmailsGerarEmMassaPorData(AACBrBoleto : TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet;
  ADataFiltro : TDate; AItemIndex : integer);
begin
  UtilsBoleto_EmailsGerarEmMassaPorData(AACBrBoleto, cxGridFinanceiro, AFinanceiro, ABoleto, AConta, ADataFiltro, AItemIndex);
end;

// Geração e Impressão de Boletos
procedure ControllerBoleto_VisualizarBoleto(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet);
var
  I: Integer;
  ALinhaDigitavel : String;
begin
  ABoleto.Open;
  ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
  AACBrBoleto.ImprimirMensagemPadrao := False;
  AACBrBoleto.ACBrBoletoFC.MostrarPreview := True;
  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := True;
  AACBrBoleto.Imprimir;
  AACBrBoleto.GerarPDF;
  ABoleto.Close;
end;

procedure ControllerBoleto_ImprimirGerarPDFBoletosDireto(AACBrBoleto: TACBrBoleto; cxGridFinanceiro: TcxGridDBTableView; AFinanceiro, ABoleto, AConta: TDataSet);
var
  I: Integer;
  ALinhaDigitavel, BoletosComErro : String;
  AListaRecords: TList<Integer>;
  AListaBoletosComErros: TStringList;
  APoint: TBookmark;
begin
  if cxGridFinanceiro.Controller.SelectedRecordCount > 0 then
  begin
    AListaRecords := TList<Integer>.Create;
    AListaBoletosComErros := TStringList.Create;
    AConta.Close;
    TIBDataset(AConta).ParamByName('CODCONTA').AsInteger := AFinanceiro.FieldByName('CODCONTA').AsInteger;
    try
      AConta.Open;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      AConta.Edit;
      /////////////////////START COMMIT\\\\\\\\\\\\\\\\\\\\\\
      ABoleto.Open;
      try
        for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
          AListaRecords.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);

        for I := 0 to AListaRecords.Count - 1 do
        begin
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
          end;

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
          ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
          AACBrBoleto.ImprimirMensagemPadrao := False;
          AACBrBoleto.ACBrBoletoFC.MostrarPreview := True;
          AACBrBoleto.ACBrBoletoFC.MostrarSetup   := True;
          AACBrBoleto.Imprimir;
          AACBrBoleto.GerarPDF;
        end;
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

        if AListaBoletosComErros.Count > 0 then
          raise Exception.Create('Os Seguintes Boletos não foram gerados: ' + AListaBoletosComErros.Text);

      finally
        AListaRecords.Free;
      end;
    Except
      on E: Exception do
      begin
        if ContainsStr(E.Message,'deadlock') then
        begin
          raise Exception.Create('A Conta: ' + AConta.FieldByName('DESCRICAO').AsString + '. Está sendo utilizada por outra pessoa');
        end else
          raise Exception.Create(E.Message);
      end;
    end;
  end else
    raise Exception.Create('Nenhum Boleto Selecionado');

//  Try
//    AConta.Edit;  //Aqui trava a conta com a transaction do financeiro;
//    ABoleto.Open;
//
//    AListaRecords := TList<Integer>.Create;
//    for I := 0 to cxGridFinanceiro.Controller.SelectedRecordCount - 1 do
//    begin
//    //AQUI VERIFICA SE TODOS SAO DA MESMA CONTA
////      if (AConta.FieldByName('CODIGO').AsInteger) <> (cxGridFinanceiro.Controller.SelectedRecords[I].Values[cxGridFinanceiroCODCONTA.Index]) then
////        raise Exception.Create('Todos os boletos devem ser da mesma conta: ' + AConta.FieldByName('DESCRICAO').AsString);
//      AListaRecords.Add(cxGridFinanceiro.Controller.SelectedRecords[I].RecordIndex);
//    end;
//
//    for I := 0 to AListaRecords.Count - 1 do
//    begin
//      cxGridFinanceiro.DataController.ChangeFocusedRecordIndex(AListaRecords[I]);
//      ControllerBoleto_GeraBoleto_ComDadosPadrao(AFinanceiro, ABoleto);
//
//
//      if Not ControllerBoleto_PossuiNossoNumero(AACBrBoleto, AFinanceiro, ABoleto) then   // Aqui deve ver se o boleto esta registrado, ou gerado
//      begin
//        ControllerBoleto_Registrar_NossoNumero(AFinanceiro, ABoleto, AConta);
//
//        ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
//        AACBrBoleto.ACBrBoletoFC.MostrarPreview := False;
//        AACBrBoleto.ACBrBoletoFC.MostrarSetup   := False;
//        AACBrBoleto.GerarPDF;
//        ABoleto.Close;
//      end;
//    end;
//    ServicesFinanceiro_Boleto_CommitaBoleto(AFinanceiro);
//  except
//    on E: Exception do
//    begin
////      AFinanceiro.transaction.RollBack;
//      raise Exception.Create(E.Message);
//    end;
//  End;
//
//  if Not ControllerBoleto_PossuiNossoNumero(AACBrBoleto, AFinanceiro, ABoleto) then
//    ControllerBoleto_Registrar_NossoNumero(AFinanceiro, ABoleto);


//  ControllerInternoBoletoFinanceiro_MontarBoletoNoACBr(AACBrBoleto, AFinanceiro, ABoleto, ALinhaDigitavel);
//  AACBrBoleto.ACBrBoletoFC.MostrarPreview := False;
//  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := False;
//  AACBrBoleto.GerarPDF;
//  ABoleto.Close;
//  AACBrBoleto.ACBrBoletoFC.MostrarPreview := True;
//  AACBrBoleto.ACBrBoletoFC.MostrarSetup   := True;
end;

function ControllerBoleto_GeraMemDadosBoleto(ADadosBoletos: TBoletosEmail; ADataSetFinanceiro, ADataSetBoletos: TDataSet): TFDMemTable;
begin
  Result:= UtilsBoleto_GeraMemDadosBoleto(ADadosBoletos, ADataSetFinanceiro, ADataSetBoletos);
end;

function ControllerBoleto_PossuiNossoNumero(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet): Boolean;
begin
  if AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '' then
    Result:= False
  else
    Result:= True;
end;

procedure ControllerBoleto_Registrar_NossoNumero(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoletos, AConta: TDataSet);
Var
  ATemWS: Boolean;
  QuerConta :TFDQuery;
  ANossoNumero, ACarteira: String;
begin
  if AFinanceiro.FieldByName('TIPOPAGTO').AsString <> 'BOLETO' then
    raise Exception.Create('Essa conta não é um boleto. Tipo de Conta: '+AFinanceiro.FieldByName('TIPOPAGTO').AsString);

  if AFinanceiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString = '' then
    raise Exception.Create('Não é permitida a impressão de boleto para clientes não cadastrados');

  if AFinanceiro.FieldByName('CODCONTA').AsString = '' then
    raise Exception.Create('Escolha uma conta');

  if (AFinanceiro.FieldByName('CODCONTA').AsString = '77')and(AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '') then
    raise Exception.Create('Registre o boleto do banco Inter.'+ sLineBreak +'Antes de imprimir!! Configure pelo WebService no Cadastro de Conta');

  if AFinanceiro.FieldByName('DOCUMENTO').AsString = '' then
    raise Exception.Create('Informe o número do documento.');

  // Fazer SQL para entender se arquivo ou WebService
  ACarteira := AConta.FieldByName('CARTEIRA').AsString;
  ATemWS    := AConta.FieldByName('TEM_WS').AsString = 'S';


  // Aqui tem que ter uma chamada para ver se é WebService ou Arquivo
  // Chamar cada um no seu arquivo especívico
  if AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString <> '' then
    raise Exception.Create('Esse boleto já esta gerado.'+ sLineBreak + 'Possui nosso número:' + AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString);

  // Aqui deve chamar a rotina que gera ou registra o boleto no webservice
  // Deve chamar ControllerBoleto e lá Dentro encaminhar para Arquivo ou WS

  // Aqui tem que gerar o Número se for arquivo
  if ATemWS then  // Arquivo
    ANossoNumero := ControllerContas_GeraNossoNumeroAtravesdoRegistroNoWS(AACBrBoleto, AFinanceiro, AConta, ABoletos)
  else
    ANossoNumero := ControllerContas_GeraNossoNumero(AFinanceiro, AFinanceiro.FieldByName('CODCONTA').AsInteger, ACarteira, AConta); //AQUI TEM COMMIT FD PARA NAO TER DUPLICIDADE

  if ANossoNumero = '' then
    raise EWRException.Create('Não foi possivel gerar o nosso numero.' );

  // Aqui chama a rotina de Serviço do Financeiro, e lá dentro chama o service do boleto, ou seja não pode ter service do boleto na uses aqui
  ServicesFinanceiro_Boleto_GerarBoleto(AFinanceiro, ANossoNumero, ATemWS);   // Deve ter acesso ao Boleto? e ter acesso a se é webService ou não
end;

function ControllerBoleto_Remessa_BoletosPendentesFinanceiro(AFinanceiro_Boleto, AContas, AFinanceiro_Boleto_Historico, ABoletos: TDataSet; UCHist_Cadastro: TUCHist_DataSet): Integer;
var
  ACodFinanceiro_Boleto: Integer;
begin
  ABoletos.Close;
  if ABoletos is TFDQuery then
    TFDQuery(ABoletos).SQL.Text:= SQLBoleto_GerarRemessaBoletos(AContas.FieldByName('Codigo').AsInteger);     // Aqui tem que pegr os boletos a serem gerados na remessa
  ABoletos.Open;
  if ABoletos.IsEmpty then
    raise Exception.Create('Não existem Boletos para serem gerados.');

  ACodFinanceiro_Boleto :=  AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;

  AFinanceiro_Boleto.Close;
  if AFinanceiro_Boleto is TFDQuery then
    TFDQuery(AFinanceiro_Boleto).SQL.Text:= SQLBoleto_AchaFianceiroBoletoSemDataGeracao;
  AFinanceiro_Boleto.Open;

  // Verifica se tem remessa pendente seleciona ela, se não cria e manda pra última função
  if AFinanceiro_Boleto.IsEmpty then
    ACodFinanceiro_Boleto := ServicesBoleto_Remessa_CriaRemessaBoletosFinanceiro(AFinanceiro_Boleto, AContas, AFinanceiro_Boleto_Historico, UCHist_Cadastro);   // aqui da um insert e retorna AFinanceiro_Boleto   Atenção aqui, função escondida

  ServicesBoleto_Remessa_BoletosPendentesFinanceiro(AFinanceiro_Boleto, AFinanceiro_Boleto_Historico, ABoletos, UCHist_Cadastro);

  AFinanceiro_Boleto.Close;
  if AFinanceiro_Boleto is TFDQuery then
    TFDQuery(AFinanceiro_Boleto).SQL.Text:= SQLBoleto_FinanceiroBoletoOriginal;
  AFinanceiro_Boleto.Open;
  AFinanceiro_Boleto.Locate('CODIGO', ACodFinanceiro_Boleto,[]);
end;

procedure ControllerBoleto_Remessa_RemoverEenviarNaProximaRemessa(AFinanceiro_Boleto_Historico, AFinanceiro_Boleto :TFDQuery);
begin
  if AFinanceiro_Boleto.FieldByName('STATUS').AsString = 'REMESSA CONFIRMADA' then
    raise Exception.Create('Esta remessa já foi confirmada. Não é possivel remover.');

  ServicesBoleto_Remessa_RemoverEenviarNaProximaRemessa(AFinanceiro_Boleto_Historico);
end;

procedure Valida_Boleto(AACBrBoleto: TACBrBoleto; AFinanceiro, ABoleto: TDataSet);
begin
  if AFinanceiro.FieldByName('TIPOPAGTO').AsString <> 'BOLETO' then
    raise Exception.Create('Tipo de pagamento diferente de BOLETO');

  if AFinanceiro.FieldByName('CODCONTA').AsString = '' then
    raise Exception.Create('Escolha uma conta.');

  if (AFinanceiro.FieldByName('CODCONTA').AsString = '77')and(AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '') then
    raise Exception.Create('Registre o boleto do banco Inter.'+ sLineBreak +'Antes de imprimir!!');

  if (AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString = '') then
    raise Exception.Create('Gere um número para esse boleto primeiro.'+ sLineBreak +'Antes de imprimir!!');
end;

procedure BoletoBeforePost(ADataset: TDataSet);
begin
  if ADataSet.FindField('TIPOPAGTO') = nil then
    raise Exception.Create('Não existe o campo "TIPOPAGTO".'+ sLineBreak +'Para poder editar o Boleto Faça left join com o Financeiro');
  if ADataSet.FindField('STATUS') = nil then
    raise Exception.Create('Não existe o campo "STATUS".'+ sLineBreak +'Para poder editar o Boleto Faça left join com o Financeiro');

  if (ADataSet.FieldByName('TIPOPAGTO').AsString = 'BOLETO')and
     (Copy(ADataSet.FieldByName('STATUS').AsString,1,5) = 'ATIVO')and
     (ADataSet.FieldByName('REMESSA').AsString = '') then
    ADataSet.FieldByName('PODE_ENVIAR').AsString:='S'
  else
    ADataSet.FieldByName('PODE_ENVIAR').AsString:='N';

//    ABoletos.FieldByName('REMESSA').AsInteger      := AFinanceiro_Boleto.FieldByName('REMESSA').AsInteger;
//    ABoletos.FieldByName('PODE_ENVIAR').AsString   := 'N';
//    ABoletos.FieldByName('DT_REMESSA').AsDateTime  := AFinanceiro_Boleto.FieldByName('DATA').AsDateTime;

//       'and (F.TIPOPAGTO = ''BOLETO'')' + #13#10 +
//      'and (F.STATUS like ''ATIVO%'')' + #13#10 +
//      'and (B.PODE_ENVIAR = ''S'')' + #13#10 +
end;

end.

