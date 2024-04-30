unit Controller.Contrato;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  ACBrBoleto, SysUtils, IBX.IBQuery, IBX.IBCustomDataSet ;

function ControllerContrato_GerarMensalidade(ACodigo : Integer; out ACampoErro : string; ATransa : TFDCustomTransaction = nil) : boolean;

implementation

Uses UnitFuncoes, wrConversao, Services.Financeiro, Classes.Financeiro;


function ControllerContrato_GerarMensalidade(ACodigo : Integer; out ACampoErro : string; ATransa : TFDCustomTransaction = nil) : boolean;
var
  ACodAgenda, AIntervalo: Integer;
  ACod : Real;
  QuerX, QuerZ: TFDQuery;
  APeriodo: TPeriodo;
  ATransaLocal : TFDCustomTransaction;
  AMsg, AHistorico: string;
begin
  Result := False;
  if ATransa = nil then
    ATransaLocal := GeraFDTransacao
  else
    ATransaLocal := ATransa;
  QuerX := GeraFDQuery(ATransaLocal);
  QuerZ := GeraFDQuery(ATransaLocal);
  try
    QuerX.SQL.Text := 'select C.CODIGO, C.CODCONTRATO_TIPO, C.PESSOA_CLIENTE_TIPO, C.PESSOA_CLIENTE_CODIGO, ' +
                      'C.CODCONTA, P.RAZAOSOCIAL, C.DOCUMENTO, C.CODPLANOCONTAS, C.VALOR, C.DT_PROXIMA_FATURA, ' +
                      'P.FANTASIA ' +
                      'from CONTRATO C ' +
                      'left join PESSOAS P on (P.CODIGO = C.PESSOA_CLIENTE_CODIGO) '+
                      'where C.CODIGO = ?';
    QuerX.Params[0].AsString := IntToStr(ACodigo);
    QuerX.Open;

//    if ShowMessageWR('Gerar mensalidade desse Contrato?' + sLineBreak + 'Será enviado para financeiro.', MB_ICONQUESTION) <> mrYes then
//      Exit;

    if QuerX.FieldByName('VALOR').AsFloat = 0 then
    begin
      ACampoErro := 'VALOR';
      raise Exception.Create('Informe o valor no Contrato: ' + sLineBreak + '    ' +
                    QuerX.FieldByName('CODIGO').AsString + ' - ' + QuerX.FieldByName('FANTASIA').AsString + '.');
    end;
    if QuerX.FieldByName('DT_PROXIMA_FATURA').AsDateTime = 0 then
    begin
      ACampoErro := 'DT_PROXIMA_FATURA';
      raise Exception.Create('Informe a data da próxima fatura no Contrato: ' + sLineBreak + '    ' +
                    QuerX.FieldByName('CODIGO').AsString + ' - ' + QuerX.FieldByName('FANTASIA').AsString + '.');
    end;

    QuerZ.SQL.Text := 'select INTERVALO, INTERVALO_TIPO, HISTORICO ' +
                      'from CONTRATO_TIPO ' +
                      'where (CODIGO = ?)';
    QuerZ.Params[0].Value := QuerX.FieldByName('CODCONTRATO_TIPO').Value;
    QuerZ.Open;
    APeriodo   := TPeriodo.GetFromCodigo(QuerZ.FieldByName('INTERVALO_TIPO').AsString);
    AIntervalo := QuerZ.FieldByName('INTERVALO').AsInteger;
    AHistorico := Trim(QuerZ.FieldByName('HISTORICO').AsString);

    ACod := GetProximoCodigoGen('CR_FINANCEIRO', ATransaLocal);

    if QuerX.FieldByName('VALOR').AsFloat <> 0 then
    begin
      ServicesFinanceiro_Lancamento_Financeiro(
        ATransaLocal,
        ACod,
        FinanceiroTipoToStr(fitAReceber),
        QuerX.FieldByName('PESSOA_CLIENTE_TIPO').AsString,
        QuerX.FieldByName('CODCONTA').AsInteger,
        QuerX.FieldByName('PESSOA_CLIENTE_CODIGO').AsString,
        QuerX.FieldByName('RAZAOSOCIAL').AsString,
        QuerX.FieldByName('DOCUMENTO').AsString,
        '',
        '',
        'BOLETO',
        '',
        '',
        QuerX.FieldByName('CODPLANOCONTAS').AsString,
        AHistorico + ' ' + QuerX.FieldByName('DOCUMENTO').AsString,
        fisAtivo.Codigo,
        QuerX.FieldByName('CODIGO').AsString + 'M',
        '',
        '1',
        '',
        CodigoUsuario,
        '',
        EmpresaAtiva,
        QuerX.FieldByName('VALOR').AsFloat,
        0,
        0,
        0,
        '',
        DataHoraSys,
        QuerX.FieldByName('DT_PROXIMA_FATURA').AsDateTime,
        0,
        0);
    end;

    QuerX.Edit;
    QuerX.FieldByName('DT_PROXIMA_FATURA').AsDateTime := APeriodo.IncPeriodo(QuerX.FieldByName('DT_PROXIMA_FATURA').AsDateTime, AIntervalo);
    QuerX.Post;
  finally
    QuerX.Free;
    QuerZ.Free;
  end;

  if Atransa = nil then
    AtransaLocal.Commit;
  Result := True;
end;


end.
