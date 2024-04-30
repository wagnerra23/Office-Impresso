unit Services.Financeiro;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, System.Classes,
  IBX.IBDatabase, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBStoredProc, Classes.Financeiro, Utils.Financeiro;

//Atualização de Saldo
procedure ServicesFinanceiro_AtualizaSaldo(ATransa: TComponent; ACodConta: Integer; ADtVencto, ADtPagto: TDate);
procedure ServicesFinanceiro_AtualizaSaldoCompleto;

//procedure ValidarSituacaoContaBanco(const AFinanceiro: TDataSet);
procedure ServicesFinanceiro_DuplicaContasPagas(ATransacao: TIBTransaction; ACodigo: Real; ACodFornecedor, ADescricao, ADocumento,
  ANotaFiscal, ADtEmissao, ACodTipoPagto, ACodCondicaoPagto: string; AValor: Real; AVencto: TDateTime; ACodPlanoContas,
  AHistorico, AStatus, ACodNF_Entrada, AParcela: string);
procedure ServicesFinanceiro_DuplicaContasAReceber(ATransacao: TIBTransaction; ACodigo: Real; ACodCliente, ADescricao, ADocumento,
  ANotaFiscal, ADtEmissao, ACodTipoPagto, ACodCondicaoPagto: string; AValor: Real; AVencto: TDateTime; AContatos,
  AHistorico, ACodPedido: string);
procedure ServicesFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0; ABoletoNossoNR: String = '');
function ServicesFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo,
  ATipoResponsavel: string; ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto,
  ATipoPagto, ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;

procedure ServiceFinanceiro_ConciliarContas(AFinanceiro: TDataSet);

// Boletos
procedure ServicesFinanceiro_Boleto_GerarBoleto(AFinanceiro: TDataSet; ANossoNumero: String; ATemWS: Boolean);
procedure ServicesFinanceiro_Boleto_PreencheNossoNumero(AFinanceiro:TDataSet; ANossoNumero: String; AWebService: Boolean);
function  ServicesFinanceiro_Boleto_RegistraRetornoDoWS(AFinanceiro: TDataSet; ANossoNumero: String): String;
function ServicesFinanceiro_Edita_Conta(AFinanceiro: TDataset): TIBQuery;
procedure ServicesFinanceiro_Boleto_CommitaBoleto(AFinanceiro: TDataSet);


implementation

Uses UnitFuncoes, SQL.Financeiro, SQL.Contas, Controller.Contas, wrConversao, Classes.APP, Base, wrFuncoes, Utils.PlanoContas, Tag.APP;


// Antiga UFinancneiro
procedure ServicesFinanceiro_AtualizaSaldo(ATransa: TComponent; ACodConta: Integer; ADtVencto, ADtPagto: TDate);
var
  QuerX, QuerUp: TWRDataSet;
  ASaldoEfetivo, ASaldoPrevisionado: Currency;
begin

  Assert(ATransa <> nil, '[Utils.Financeiro.AtualizaSaldo] A Transação deve ser preenchida');

  if (ACodConta = 0) or ((ADtVencto <= 0) and (ADtPagto <= 0)) then
    Exit;

  QuerX := TWRDataSet.Create(ATransa);
  try
    //Saldo Efetivo
    if ADtPagto > 0 then
    begin
      QuerX.SQL.Text := 'select sum(VALOR + coalesce(JUROS, 0) - coalesce(DESCONTO, 0) * iif(TIPO = ' + QuotedStr(FinanceiroTipoToStr(fitPaga)) + ', -1, 1)) ' +
                        'from FINANCEIRO ' +
                        'where (STATUS like ''ATIVO%'') ' +
                        '      and (TIPO in (' + FinanceiroTipoToSQL([fitRecebida, fitPaga]) + '))' +
                        '      and (CODCONTA = :CodConta) ' +
                        '      and (DATAPAGTO between :DtInicio and :DtFim)';
      QuerX.ParamByName('CodConta').AsInteger  := ACodConta;
      QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheDay(ADtPagto);
      QuerX.ParamByName('DtFim').AsDateTime    := EndOfTheDay(ADtPagto);
      QuerX.Open;
      ASaldoEfetivo := QuerX.Fields[0].AsCurrency;
      QuerX.Close;
    end;

    //Saldo Previsionado
    if ADtVencto > 0 then
    begin
      QuerX.SQL.Text := 'select sum(VALOR + coalesce(JUROS, 0) - coalesce(DESCONTO, 0) * iif(TIPO = ' + QuotedStr(FinanceiroTipoToStr(fitAPagar)) + ', -1, 1)) ' +
                        'from FINANCEIRO ' +
                        'where (STATUS like ''ATIVO%'') ' +
                        '      and (TIPO in (' + FinanceiroTipoToSQL([fitAPagar, fitAReceber]) + '))' +
                        '      and (CODCONTA = :CodConta) ' +
                        '      and (VENCTO between :DtInicio and :DtFim)';
      QuerX.ParamByName('CodConta').AsInteger  := ACodConta;
      QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheDay(ADtVencto);
      QuerX.ParamByName('DtFim').AsDateTime    := EndOfTheDay(ADtVencto);
      QuerX.Open;
      ASaldoPrevisionado := QuerX.Fields[0].AsCurrency;
    end;

    QuerX.Free;
    QuerX := TWRDataSet.Create(ATransa); //No FD teria que limpar os parâmetros, assim é mais garantido...

    //Atualização do Saldo Previsionado
    if ADtVencto > 0 then
    begin
      QuerX.SQL.Text := 'update or insert into FINANCEIRO_SALDO (CODCONTA, DATA, SALDO_PREVISIONADO) ' +
                        'values (:CODCONTA, :DATA, :SALDO_PREVISIONADO) ' +
                        'matching (CODCONTA, DATA)';
      QuerX.ParamByName('CODCONTA').AsInteger         := ACodConta;
      QuerX.ParamByName('DATA').AsDateTime            := DateOf(ADtVencto);
      QuerX.ParamByName('SALDO_PREVISIONADO').AsFloat := ASaldoPrevisionado;
      QuerX.ExecSQL;
    end;

    //Atualização do Saldo Efetivo
    if ADtPagto > 0 then
    begin
      QuerX.SQL.Text := 'update or insert into FINANCEIRO_SALDO (CODCONTA, DATA, SALDO_EFETIVO) ' +
                        'values (:CODCONTA, :DATA, :SALDO_EFETIVO) ' +
                        'matching (CODCONTA, DATA)';
      QuerX.ParamByName('CODCONTA').AsInteger    := ACodConta;
      QuerX.ParamByName('DATA').AsDateTime       := DateOf(ADtPagto);
      QuerX.ParamByName('SALDO_EFETIVO').AsFloat := ASaldoEfetivo;
      QuerX.ExecSQL;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure ServicesFinanceiro_AtualizaSaldoCompleto;
var
  ATransa: TFDTransaction;
  QuerUp, QuerSaldo: TFDQuery;
begin
  ATransa   := GeraFDTransacao;
  QuerUp    := GeraFDQuery(ATransa);
  QuerSaldo := GeraFDQueryFast;
  try
    //Saldo Efetivo
    QuerUp.SQL.Text := 'update or insert into FINANCEIRO_SALDO (CODCONTA, DATA, SALDO_EFETIVO) ' +
                       'values (:CODCONTA, :DATA, :SALDO_EFETIVO) ' +
                       'matching (CODCONTA, DATA)';

    QuerSaldo.SQL.Text := 'select cast(F.DATAPAGTO as date) as DATA, F.CODCONTA, ' +
                          '       sum(F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO, 0) * iif(F.TIPO = ' + QuotedStr(FinanceiroTipoToStr(fitPaga)) + ', -1, 1)) as SALDO ' +
                          'from FINANCEIRO F ' +
                          'inner join CONTAS C on (C.CODIGO = F.CODCONTA) ' + //Inner apenas para não trazer contas inválidas
                          'where (F.STATUS like ''ATIVO%'') ' +
                          '      and (F.TIPO in (' + FinanceiroTipoToSQL([fitPaga, fitRecebida]) + '))' +
                          '      and not (F.DATAPAGTO is null) ' +
                          '      and not (F.CODCONTA is null) ' +
                          'group by 1, 2';
    QuerSaldo.Open;
    while not QuerSaldo.Eof do
    begin
      QuerUp.ParamByName('CODCONTA').Value           := QuerSaldo.FieldByName('CODCONTA').Value;
      QuerUp.ParamByName('DATA').AsDate              := DateOf(QuerSaldo.FieldByName('DATA').AsDateTime);
      QuerUp.ParamByName('SALDO_EFETIVO').AsCurrency := QuerSaldo.FieldByName('SALDO').AsCurrency;
      QuerUp.ExecSQL;

      QuerSaldo.Next;
    end;
    QuerSaldo.Close;
    QuerUp.Params.Clear;

    //Saldo Previsionado
    QuerUp.SQL.Text := 'update or insert into FINANCEIRO_SALDO (CODCONTA, DATA, SALDO_PREVISIONADO) ' +
                       'values (:CODCONTA, :DATA, :SALDO_PREVISIONADO) ' +
                       'matching (CODCONTA, DATA)';

    QuerSaldo.SQL.Text := 'select cast(F.VENCTO as date) as DATA, F.CODCONTA, ' +
                          '       sum(F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO, 0) * iif(F.TIPO = ' + QuotedStr(FinanceiroTipoToStr(fitAPagar)) + ', -1, 1)) as SALDO ' +
                          'from FINANCEIRO F ' +
                          'inner join CONTAS C on (C.CODIGO = F.CODCONTA) ' + //Inner apenas para não trazer contas inválidas
                          'where (F.STATUS like ''ATIVO%'') ' +
                          '      and (F.TIPO in (' + FinanceiroTipoToSQL([fitAPagar, fitAReceber]) + '))' +
                          '      and not (F.VENCTO is null) ' +
                          '      and not (F.CODCONTA is null) ' +
                          'group by 1, 2';
    QuerSaldo.Open;
    while not QuerSaldo.Eof do
    begin
      QuerUp.ParamByName('CODCONTA').Value                := QuerSaldo.FieldByName('CODCONTA').Value;
      QuerUp.ParamByName('DATA').AsDate                   := DateOf(QuerSaldo.FieldByName('DATA').AsDateTime);
      QuerUp.ParamByName('SALDO_PREVISIONADO').AsCurrency := QuerSaldo.FieldByName('SALDO').AsCurrency;
      QuerUp.ExecSQL;

      QuerSaldo.Next;
    end;

    ATransa.Commit;
  finally
    QuerSaldo.Free;
    QuerUp.Free;
    ATransa.Free;
  end;
end;

procedure ServicesFinanceiro_Lancamento_Financeiro(Transacao: TComponent; ACodigo: Double; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada, AParcela,
  AContatos: string; ACodUsuario: Integer; ACodFinanceiroGrupo, ACodEmpresa: string; AValor, ADesconto, AJuros,
  AValorPrevisao: Real; AChequeNumero: string; ADtEmissao, ADtVencto, ADtPagto, ADtNotaFiscal: TDateTime;
  AOrigem: string = ''; ACodFinOriginal: Integer = 0; AAgrupador: string = ''; ADtCompetencia: TDateTime = 0; ABoletoNossoNR: String = '');
var
  QuerX: TWRDataSet;
begin
  {$IFDEF COMERCIAL}
  if AWR_APP[TagAPP_Financeiro_Caixa].Ativo then
  begin
  {$ENDIF}
    if ADtPagto > 0 then
      if GetSituacaoCaixaSQL(Transacao, ADtPagto, ACodConta).Situacao = scCaixaFechado then
        Abort;
  {$IFDEF COMERCIAL}
  end;
  {$ENDIF}

  QuerX := TWRDataSet.Create(Transacao);
  try
//    QuerX.Database := TDefinicoesBancoIB.Banco;
//    QuerX.Transaction := Transacao;
    {$IFDEF NO_PESSOAS}
    QuerX.SQL.Text := 'insert into FINANCEIRO (CODPLANOCONTAS, CODCONDICAOPAGTO, CODCONTA, CODIGO, CODPEDIDO, ' +
                      '  CODRESPONSAVEL, CODTIPOPAGTO, CODUSUARIO, CONDICAOPAGTO, CONTATOS, DATAPAGTO, DESCONTO, ' +
                      '  DOCUMENTO, EMISSAO, HISTORICO, JUROS, NOTAFISCAL, PARCELA, RAZAOSOCIAL, STATUS, TIPO, ' +
                      '  TIPO_RESPONSAVEL, DT_NOTAFISCAL, TIPOPAGTO, VALOR, VENCTO, CODNF_ENTRADA, CODFINANCEIRO_GRUPO, ' +
                      '  CODEMPRESA, AGRUPADOR, CHEQUE_NUMERO, CODUSUARIO_CONTA) ' +
                      'values (:CODPLANOCONTAS, :CODCONDICAOPAGTO, :CODCONTA, :CODIGO, :CODPEDIDO, :CODRESPONSAVEL, ' +
                      '  :CODTIPOPAGTO, :CODUSUARIO, :CONDICAOPAGTO, :CONTATOS, :DATAPAGTO, :DESCONTO, :DOCUMENTO, ' +
                      '  :EMISSAO, :HISTORICO, :JUROS, :NOTAFISCAL, :PARCELA, :RAZAOSOCIAL, :STATUS, :TIPO, ' +
                      '  :TIPO_RESPONSAVEL, :DT_NOTAFISCAL, :TIPOPAGTO, :VALOR, :VENCTO, :CODNF_ENTRADA, ' +
                      '  :CODFINANCEIRO_GRUPO, :CODEMPRESA, :AGRUPADOR, :CHEQUE_NUMERO, :CODUSUARIO_CONTA)';
    QuerX.ParamByName('TIPO_RESPONSAVEL').AsString := ATipoResponsavel;
    QuerX.ParamByName('CODRESPONSAVEL').AsString   := ACodResponsavel;
    {$ELSE}
    QuerX.SQL.Text := 'insert into FINANCEIRO (CODPLANOCONTAS, CODCONDICAOPAGTO, CODCONTA, CODIGO, CODPEDIDO, ' +
                    '  PESSOA_RESPONSAVEL_CODIGO, CODTIPOPAGTO, CODUSUARIO, CONDICAOPAGTO, CONTATOS, DATAPAGTO, ' +
                    '  DESCONTO, DOCUMENTO, EMISSAO, HISTORICO, JUROS, NOTAFISCAL, PARCELA, RAZAOSOCIAL, STATUS, ' +
                    '  TIPO, PESSOA_RESPONSAVEL_TIPO, DT_NOTAFISCAL, TIPOPAGTO, VALOR, VENCTO, CODNF_ENTRADA, ' +
                    '  CODFINANCEIRO_GRUPO, CODEMPRESA, PESSOA_RESPONSAVEL_SEQUENCIA, PREVISAO, AGRUPADOR, ' +
                    '  CHEQUE_NUMERO, DT_COMPETENCIA, CODUSUARIO_CONTA) ' +
                    'values (:CODPLANOCONTAS, :CODCONDICAOPAGTO, :CODCONTA, :CODIGO, :CODPEDIDO, ' +
                    '  :PESSOA_RESPONSAVEL_CODIGO, :CODTIPOPAGTO, :CODUSUARIO, :CONDICAOPAGTO, :CONTATOS, :DATAPAGTO, ' +
                    '  :DESCONTO, :DOCUMENTO, :EMISSAO, :HISTORICO, :JUROS, :NOTAFISCAL, :PARCELA, :RAZAOSOCIAL, ' +
                    '  :STATUS, :TIPO, :PESSOA_RESPONSAVEL_TIPO, :DT_NOTAFISCAL, :TIPOPAGTO, :VALOR, :VENCTO, ' +
                    '  :CODNF_ENTRADA, :CODFINANCEIRO_GRUPO, :CODEMPRESA, :PESSOA_RESPONSAVEL_SEQUENCIA, :PREVISAO, ' +
                    '  :AGRUPADOR, :CHEQUE_NUMERO, :DT_COMPETENCIA, :CODUSUARIO_CONTA)';
    QuerX.ParamByName('PESSOA_RESPONSAVEL_TIPO').Value := ATipoResponsavel;
    QuerX.ParamByName('PESSOA_RESPONSAVEL_CODIGO').Value := ACodResponsavel;
    if ATipoResponsavel <> '' then
      QuerX.ParamByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := PessoaSequencia(nil, ACodResponsavel, ATipoResponsavel);
    {$ENDIF}
    //    QuerX.ParamByName('CHEQUE_NUMERO').AsString    := CHEQUE_NUMERO;
    QuerX.ParamByName('CODIGO').AsInteger      := Trunc(ACodigo);
    QuerX.ParamByName('TIPO').AsString         := ATipo;
    QuerX.ParamByName('RAZAOSOCIAL').AsString  := ARazaoSocial;
    QuerX.ParamByName('DOCUMENTO').Value       := LeftStr(ADocumento, 20);
    QuerX.ParamByName('NOTAFISCAL').AsNotEmpty := ANotaFiscal;
    if ACodTipoPagto <> '' then //Ajustar o tipo para Integer
      QuerX.ParamByName('CODTIPOPAGTO').AsInteger := StrToInt(ACodTipoPagto);
    QuerX.ParamByName('TIPOPAGTO').AsString := ATipoPagto;
    if ACodCondicaoPagto <> '' then //Ajustar o tipo para Integer
      QuerX.ParamByName('CODCONDICAOPAGTO').AsInteger := StrToInt(ACodCondicaoPagto);
    QuerX.ParamByName('CONDICAOPAGTO').AsNotEmpty       := ACondicaoPagto;
    QuerX.ParamByName('CODPLANOCONTAS').AsNotEmpty      := ACodPlanoContas;
    QuerX.ParamByName('HISTORICO').AsNotEmpty           := AHistorico;
    QuerX.ParamByName('STATUS').AsString                := AStatus;
    QuerX.ParamByName('CODCONTA').AsNotEmpty            := ACodConta;
    QuerX.ParamByName('CODPEDIDO').AsString             := IfThen(Trim(ACodPedido) = '', '0', ACodPedido);
    QuerX.ParamByName('CODNF_ENTRADA').AsNotEmpty       := ACodNFEntrada;
    QuerX.ParamByName('CODFINANCEIRO_GRUPO').AsNotEmpty := ACodFinanceiroGrupo;
    QuerX.ParamByName('PARCELA').AsNotEmpty             := AParcela;
    QuerX.ParamByName('CONTATOS').AsNotEmpty            := AContatos;
    QuerX.ParamByName('CODUSUARIO').AsInteger           := ACodUsuario;
    QuerX.ParamByName('VALOR').AsFloat                  := AValor;
    QuerX.ParamByName('PREVISAO').AsFloat               := AValorPrevisao;
    QuerX.ParamByName('DESCONTO').AsFloat               := ADesconto;
    QuerX.ParamByName('JUROS').AsFloat                  := AJuros;
    QuerX.ParamByName('EMISSAO').AsDateTime             := ADtEmissao;
    QuerX.ParamByName('VENCTO').AsDateTime              := ADtVencto;
    QuerX.ParamByName('CHEQUE_NUMERO').AsString         := AChequeNumero;
    QuerX.ParamByName('DATAPAGTO').AsNotEmpty           := ADtPagto;
    QuerX.ParamByName('DT_NOTAFISCAL').AsNotEmpty       := ADtNotaFiscal;
    QuerX.ParamByName('CODEMPRESA').AsString            := ACodEmpresa;
    QuerX.ParamByName('CODUSUARIO_CONTA').AsInteger     := Usuario.Codigo;
    if AAgrupador <> '' then
      QuerX.ParamByName('AGRUPADOR').AsInteger := AAgrupador.ToInteger;

    if ADtCompetencia > 0 then
      QuerX.ParamByName('DT_COMPETENCIA').AsDateTime := ADtCompetencia
    else if ADtPagto > 0 then
      QuerX.ParamByName('DT_COMPETENCIA').AsDateTime := ADtPagto
    else
      QuerX.ParamByName('DT_COMPETENCIA').AsDateTime := ADtEmissao;


    {$IF Defined(COMERCIAL) or Defined(ASSOCIACAO)}
    wrFuncoesValidarSituacaoContaBanco(QuerX.DataSet);
    {$IFEND}

    {$IF Defined(COMERCIAL) or Defined(ASSOCIACAO)}
    VerificaPlanoContasFinanceiro(Transacao, ACodPlanoContas);
    {$IFEND}

    QuerX.ExecSQL;

    //Atualiza o saldo do dia
//    AtualizaSaldo(Transacao, ACodConta, ADtVencto, ADtPagto);
  finally
    QuerX.Free;
  end;
end;

procedure ServicesFinanceiro_DuplicaContasPagas(ATransacao: TIBTransaction; ACodigo: Real; ACodFornecedor, ADescricao, ADocumento,
  ANotaFiscal, ADtEmissao, ACodTipoPagto, ACodCondicaoPagto: string; AValor: Real; AVencto: TDateTime; ACodPlanoContas,
  AHistorico, AStatus, ACodNF_Entrada, AParcela: string);
var
  QuerX: TIBQuery;
begin
  QuerX := GeraQuery(ATransacao);
  try
    QuerX.SQL.Text:=' INSERT INTO CONTASAPAGAR '+
                   ' (CODIGO, CODFORNECEDOR, RAZAOSOCIAL, DOCUMENTO, NOTAFISCAL, EMISSAO, CODTIPOPAGTO,CODCONDICAOPAGTO, VALOR, VENCTO, HISTORICO, CODPlanoContas,STATUS,CODNF_ENTRADA,PARCELA) VALUES'+
                   ' (:CODIGO, :CODFORNECEDOR, :RAZAOSOCIAL, :DOCUMENTO, :NOTAFISCAL, :EMISSAO, :CODTIPOPAGTO,:CODCONDICAOPAGTO, :VALOR, :VENCTO, :HISTORICO, :CODPlanoContas,:STATUS,:CODNF_ENTRADA,:PARCELA)';
    QuerX.ParamByName('CODIGO').AsCurrency         := ACodigo;
    QuerX.ParamByName('CODFORNECEDOR').AsString    := ACodFornecedor;
    QuerX.ParamByName('RazaoSocial').AsString      := ADescricao;
    QuerX.ParamByName('Documento').asstring        := ADocumento;
    QuerX.ParamByName('NotaFiscal').AsString       := ANotaFiscal;
    QuerX.ParamByName('Emissao').AsString          := ADtEmissao;
    QuerX.ParamByName('CodTipoPagto').AsString     := ACodTipoPagto;
    QuerX.ParamByName('CodCondicaoPagto').AsString := ACodCondicaoPagto;
    QuerX.ParamByName('Valor').AsFloat             := AValor;
    QuerX.ParamByName('Vencto').AsDateTime         := AVencto;
    QuerX.ParamByName('Historico').AsString        := AHistorico;
    QuerX.ParamByName('CODPlanoContas').AsString   := ACodPlanoContas;
    QuerX.ParamByName('STATUS').AsString           := AStatus;
    QuerX.ParamByName('CODNF_ENTRADA').AsString    := ACodNF_Entrada;
    QuerX.ParamByName('PARCELA').AsString          := AParcela;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

function ServicesFinanceiro_Lancamento_Financeiro_Historico(ATransa: TComponent; ACodFinanceiro: Integer; ATipo, ATipoResponsavel: string;
  ACodConta: Integer; ACodResponsavel, ARazaoSocial, ADocumento, ANotaFiscal, ACodTipoPagto, ATipoPagto,
  ACodCondicaoPagto, ACondicaoPagto, ACodPlanoContas, AHistorico, AStatus, ACodPedido, ACodNFEntrada: string;
  AParcela: Integer; AContatos, ACodUsuario, AChequeNumero, ACodEmpresa: string; AValor, ADesconto, AJuros: Double;
  ADtEmissao, ADtVencto, ADtPagto: TDateTime; AAgrupador: Integer): Real;
var
  QuerX: TWRDataSet;
begin
  Result := GetProximoCodigoGen('CR_FINANCEIRO_HISTORICO');
  QuerX := TWRDataSet.Create(ATransa);
  try
    {$IFDEF NO_PESSOAS}
    QuerX.SQL.Text := 'insert into FINANCEIRO_HISTORICO (CODFINANCEIRO, DATA, CHEQUE_NUMERO, CODPLANOCONTAS, ' +
                      '  CODCONDICAOPAGTO, CODCONTA, CODIGO, CODPEDIDO, CODRESPONSAVEL, CODTIPOPAGTO, CODUSUARIO, ' +
                      '  CONDICAOPAGTO, CONTATOS, DATAPAGTO, DESCONTO, DOCUMENTO, EMISSAO, HISTORICO, ' +
                      '  JUROS, NOTAFISCAL, PARCELA, RAZAOSOCIAL, STATUS, TIPO, TIPO_RESPONSAVEL, ' +
                      '  TIPOPAGTO, VALOR, VENCTO, CODNF_ENTRADA, CODEMPRESA) ' +
                      'values (:CODFINANCEIRO, :DATA, :CHEQUE_NUMERO, :CODPLANOCONTAS, :CODCONDICAOPAGTO, :CODCONTA, ' +
                      '  :CODIGO, :CODPEDIDO, :CODRESPONSAVEL, :CODTIPOPAGTO, :CODUSUARIO, :CONDICAOPAGTO, :CONTATOS, ' +
                      '  :DATAPAGTO, :DESCONTO, :DOCUMENTO, :EMISSAO, :HISTORICO, :JUROS, :NOTAFISCAL, :PARCELA, ' +
                      '  :RAZAOSOCIAL, :STATUS, :TIPO, :TIPO_RESPONSAVEL, :TIPOPAGTO, :VALOR, :VENCTO, :CODNF_ENTRADA, ' +
                      '  :CODEMPRESA)';
    QuerX.ParamByName('TIPO_RESPONSAVEL').AsString := ATipoResponsavel;
    QuerX.ParamByName('CODRESPONSAVEL').AsString   := ACodResponsavel;
    {$ELSE}
    QuerX.SQL.Text := 'insert into FINANCEIRO_HISTORICO (CODFINANCEIRO, DATA, CHEQUE_NUMERO, CODPLANOCONTAS, ' +
                      '  CODCONDICAOPAGTO, CODCONTA, CODIGO, CODPEDIDO, PESSOA_RESPONSAVEL_CODIGO, CODTIPOPAGTO, ' +
                      '  CODUSUARIO, CONDICAOPAGTO, CONTATOS, DATAPAGTO, DESCONTO, DOCUMENTO, EMISSAO, HISTORICO, ' +
                      '  JUROS, NOTAFISCAL, PARCELA, RAZAOSOCIAL, STATUS, TIPO, PESSOA_RESPONSAVEL_TIPO, TIPOPAGTO, ' +
                      '  VALOR, VENCTO, CODNF_ENTRADA, CODEMPRESA, AGRUPADOR) ' +
                      'values (:CODFINANCEIRO, :DATA, :CHEQUE_NUMERO, :CODPLANOCONTAS, :CODCONDICAOPAGTO, :CODCONTA, ' +
                      '  :CODIGO, :CODPEDIDO, :PESSOA_RESPONSAVEL_CODIGO, :CODTIPOPAGTO, :CODUSUARIO, :CONDICAOPAGTO, ' +
                      '  :CONTATOS, :DATAPAGTO, :DESCONTO, :DOCUMENTO, :EMISSAO, :HISTORICO, :JUROS, :NOTAFISCAL, ' +
                      '  :PARCELA, :RAZAOSOCIAL, :STATUS, :TIPO, :PESSOA_RESPONSAVEL_TIPO, :TIPOPAGTO, :VALOR, :VENCTO, ' +
                      '  :CODNF_ENTRADA, :CODEMPRESA, :AGRUPADOR)';
    QuerX.ParamByName('PESSOA_RESPONSAVEL_TIPO').AsString   := ATipoResponsavel;
    QuerX.ParamByName('PESSOA_RESPONSAVEL_CODIGO').AsString := ACodResponsavel;
    {$ENDIF}
    QuerX.ParamByName('CODIGO').AsFloat              := Result;
    QuerX.ParamByName('CODFINANCEIRO').AsInteger     := ACodFinanceiro;
    QuerX.ParamByName('CODPEDIDO').AsString          := ACodPedido;
    QuerX.ParamByName('DATA').AsDateTime             := DataHoraSys;
    QuerX.ParamByName('TIPO').AsString               := ATipo;
    QuerX.ParamByName('RAZAOSOCIAL').AsNotEmpty      := ARazaoSocial;
    QuerX.ParamByName('DOCUMENTO').AsNotEmpty        := ADocumento;
    QuerX.ParamByName('NOTAFISCAL').AsNotEmpty       := ANotaFiscal;
    QuerX.ParamByName('CODTIPOPAGTO').AsNotEmpty     := ACodTipoPagto;
    QuerX.ParamByName('TIPOPAGTO').AsNotEmpty        := ATipoPagto;
    QuerX.ParamByName('CODCONDICAOPAGTO').AsNotEmpty := ACodCondicaoPagto;
    QuerX.ParamByName('CONDICAOPAGTO').AsNotEmpty    := ACondicaoPagto;
    QuerX.ParamByName('CODPLANOCONTAS').AsNotEmpty   := ACodPlanoContas;
    QuerX.ParamByName('HISTORICO').AsNotEmpty        := AHistorico;
    QuerX.ParamByName('STATUS').AsNotEmpty           := AStatus;
    QuerX.ParamByName('CODCONTA').AsNotEmpty         := ACodConta;
    QuerX.ParamByName('CODNF_ENTRADA').AsNotEmpty    := ACodNFEntrada;
    QuerX.ParamByName('PARCELA').AsNotEmpty          := AParcela;
    QuerX.ParamByName('CONTATOS').AsNotEmpty         := AContatos;
    QuerX.ParamByName('CODUSUARIO').AsNotEmpty       := ACodUsuario;
    QuerX.ParamByName('VALOR').AsFloat               := AValor;
    QuerX.ParamByName('DESCONTO').AsFloat            := ADesconto;
    QuerX.ParamByName('JUROS').AsFloat               := AJuros;
    QuerX.ParamByName('EMISSAO').AsNotEmpty          := ADtEmissao;
    QuerX.ParamByName('VENCTO').AsNotEmpty           := ADtVencto;
    QuerX.ParamByName('CHEQUE_NUMERO').AsNotEmpty    := AChequeNumero;
    QuerX.ParamByName('CODEMPRESA').AsString         := ACodEmpresa;
    QuerX.ParamByName('AGRUPADOR').AsNotEmpty        := AAgrupador;
    QuerX.ParamByName('DATAPAGTO').AsNotEmpty        := ADtPagto;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure ServicesFinanceiro_DuplicaContasAReceber(ATransacao: TIBTransaction; ACodigo: Real; ACodCliente, ADescricao, ADocumento,
  ANotaFiscal, ADtEmissao, ACodTipoPagto, ACodCondicaoPagto: string; AValor: Real; AVencto: TDateTime; AContatos,
  AHistorico, ACodPedido: string);
var
  QuerX: TIBQuery;
begin
  QuerX := GeraQuery(ATransacao);
  try
    QuerX.SQL.Text:=' INSERT INTO CONTASARECEBER '+
                   ' (CODIGO, CODCLIENTE, RAZAOSOCIAL, DOCUMENTO, NOTAFISCAL, EMISSAO, CODTIPOPAGTO,CODCONDICAOPAGTO, VALOR, VENCTO, HISTORICO, CONTATOS,CODPEDIDO) VALUES'+
                   ' (:CODIGO, :CODCLIENTE, :RAZAOSOCIAL, :DOCUMENTO, :NOTAFISCAL, :EMISSAO, :CODTIPOPAGTO,:CODCONDICAOPAGTO, :VALOR, :VENCTO, :HISTORICO, :CONTATOS,:CODPEDIDO)';
    QuerX.ParamByName('CODIGO').AsCurrency         := ACodigo;
    QuerX.ParamByName('CODCLIENTE').AsString       := ACodCliente;
    QuerX.ParamByName('RazaoSocial').AsString      := ADescricao;
    QuerX.ParamByName('Documento').asstring        := ADocumento;
    QuerX.ParamByName('NotaFiscal').AsString       := ANotaFiscal;
    QuerX.ParamByName('Emissao').AsString          := ADtEmissao;
    QuerX.ParamByName('CodTipoPagto').AsString     := ACodTipoPagto;
    QuerX.ParamByName('CodCondicaoPagto').AsString := ACodCondicaoPagto;
    QuerX.ParamByName('Valor').AsFloat             := AValor;
    QuerX.ParamByName('Vencto').AsDateTime         := AVencto;
    QuerX.ParamByName('Historico').AsString        := AHistorico;
    QuerX.ParamByName('CONTATOS').AsString         := AContatos;
    QuerX.ParamByName('CODPEDIDO').AsString        := ACodPedido;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure ServiceFinanceiro_ConciliarContas(AFinanceiro: TDataSet);
begin

  try
//  AlteraDataSet;    //Rera sepode editar
    if Not(AFinanceiro.State in dsEditModes)  then
      AFinanceiro.Edit;
    AFinanceiro.FieldByName('DT_CONCILIADO').AsDateTime := DataHoraSys;
    AFinanceiro.Post;
//    TransacaoCommita(AFinanceiro);
  except
    on E:Exception do
    begin
      TransacaoRollback(AFinanceiro);
      raise Exception.Create(E.message);
    end;
  end;
end;


// Boletos
procedure ServicesFinanceiro_Boleto_GerarBoleto(AFinanceiro: TDataSet; ANossoNumero: String; ATemWS: Boolean);
begin
  // Aqui deve escolher se é WebService ou Arquivo
  // Arquivo: GerarNosso numero e fica esperando ser enviado a remessa
  // WebService: Só é gerado o número depois de registrado no caso do Banco Inter

  // Aqui deve ter um if direcionando para arquivo ou para WebService interno
  if ATemWS then  // Arquivo
    ServicesFinanceiro_Boleto_RegistraRetornoDoWS(AFinanceiro, ANossoNumero)     // Essa funcao deve ficar no Boleto.WS
  else
    ServicesFinanceiro_Boleto_PreencheNossoNumero(AFinanceiro, ANossoNumero, False);     // Essa funcao deve ficar no Boleto.arquivo

end;

// Essas duas funções aqui deve ficar no seu arquivo.pas Boleto.Arquivo.pas e Boleto.WS.pas
Function ServicesFinanceiro_Boleto_RegistraRetornoDoWS(AFinanceiro: TDataSet; ANossoNumero: String): String;
begin
  // Essa funçaão deve ficar no WebService
  ServicesFinanceiro_Boleto_PreencheNossoNumero(AFinanceiro, ANossoNumero, True);
  // Ainda não sei se tem diferença do retorno do WS e da Arquivo


  // Mais se tiver regra de negócio é assim, regra na frente
end;

procedure ServicesFinanceiro_Boleto_PreencheNossoNumero(AFinanceiro: TDataSet; ANossoNumero: String; AWebService: Boolean);
begin

  if ANossoNumero = '' then
    raise EWRException.Create('Nosso número vazio.' );

//  if (AFinanceiro.State in dsEditModes) then                                                                                          // Se caiu nessa linha, rapais deu ruim pois perdeu o número do boleto, precisa criar um insert e desvincular com a tema do finacneiro,
//    raise EWRException.Create('Financeiro Precisa ser a Query da tela do finaceiro e necessario comitar o Nosso numero sem erros');   // Pois o financeiro pode estar em edição na rede ou na máquina mesmo, dando deadlook.

  Try
    // Aqui tem Post Commit;
    if Not(AFinanceiro.State in dsEditModes)  then
      AFinanceiro.Edit;      // Aqui é critico, deve ser insert em tabela auxiliar, depois tentar editar o financeiro
    AFinanceiro.FieldByName('BOLETO_NOSSO_NR').AsString := ANossoNumero;
    if AWebService then
      AFinanceiro.FieldByName('PODE_ENVIAR').AsString   := 'N'
    else
      AFinanceiro.FieldByName('PODE_ENVIAR').AsString   := 'S';      // Aqui se for webService ja foi enviado
    AFinanceiro.Post;
//    TransacaoCommita(AFinanceiro);
  except
    on E:Exception do
    begin
      TransacaoRollback(AFinanceiro);
      raise Exception.Create(E.message);
    end;
  End;
end;

function ServicesFinanceiro_Edita_Conta(AFinanceiro: TDataset): TIBQuery;
var
  QuerConta :TIBQuery;
begin
  QuerConta := GeraQuery(TIBDataset(AFinanceiro).Transaction);
  try
    QuerConta.SQL.Text := 'select * ' +
                      'from CONTAS ' +
                      'where (CODIGO = :Cod)';
    QuerConta.Params[0].AsInteger := AFinanceiro.FieldByName('CODCONTA').AsInteger;
    QuerConta.Open;

    QuerConta.Edit; //AQUI INICIA A TRANSACAO E TRAVA DA TELA DE CONTA
    Result := QuerConta;
  except
    on E: Exception do
    begin
      raise Exception.Create('A Conta: ' + QuerConta.FieldByName('DESCRICAO').AsString + ' esta em edição, favor finalizar a edição e tentar novamente.');
    end;
  end;
end;


Procedure ServicesFinanceiro_Boleto_CommitaBoleto(AFinanceiro: TDataSet);
begin
  try
    TransacaoCommita(AFinanceiro);
  except
    on E:Exception do
    begin
      TransacaoRollback(AFinanceiro);
      raise Exception.Create(E.message);
    end;
  End;
end;


end.

