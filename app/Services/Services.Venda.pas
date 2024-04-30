unit Services.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes;


//Funções de entrada
procedure ServicesVenda_SituacaoFinanceira(const ACodPedido: string);
procedure EditVenda_PreencheDataRequisicao(ACadastro: TDataset; ADataHora: TDateTime);

implementation

Uses UnitFuncoes, SQL.Contas, SQL.Boleto, Utils.Boleto.Retorno, Utils.Financeiro, SQL.Financeiro, SQL.Financeiro_boleto,
  SQL.Financeiro_Boleto_Historico, wrConversao ;

//Funções de entrada

//procedure DoAtualizaSituacaoFinanceiraDaVenda(const ACodPedido: string);
procedure ServicesVenda_SituacaoFinanceira(const ACodPedido: string);
var
  QuerX: TFDQuery;
  ATransa: TFDTransaction;
  ASituacao: TVendaSituacaoFinanceira;
  AValor : Real;
begin
  if MatchStr(ACodPedido, ['', '0']) then
    Exit;
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select DT_FATURAMENTO  ' +
                      'from VENDA ' +
                      'where (CODIGO = :Cod1)';
    QuerX.Params[0].AsString := ACodPedido;
    QuerX.Open;
    ASituacao := vsfQuitada;
    AValor:=0;
    if not QuerX.Fields[0].IsNull then
    begin
      QuerX.Close;
      QuerX.SQL.Text := ' select F.TIPO, Sum(F.VALOR) AS VALOR,Sum(F.JUROS)AS JUROS,Sum(F.DESCONTO)AS DESCONTO, Count(1)as Quant ' +           // Preciso do Sum Valor acrescimo desconto, agrupado por
                        ' from FINANCEIRO F ' +
                        ' where (F.CODPEDIDO = :Cod1) ' +
                        '      and (F.STATUS like ''ATIVO%'') ' +
//                        '      and not (F.TIPO = ''RECEBIDA'') ' +
                        ' Group by F.TIPO ' +

                        ' union ' +

                        ' select F.TIPO,Sum(F.VALOR) AS VALOR,Sum(F.JUROS)AS JUROS,Sum(F.DESCONTO)AS DESCONTO, Count(1)as Quant ' +
                        ' from FINANCEIRO F ' +
                        ' left join FINANCEIRO F2 on (F.AGRUPADOR = F2.AGRUPADOR) ' +
                        ' where (F.CODPEDIDO = :Cod2) ' +
                        '      and (F2.STATUS like ''ATIVO%'') ' +
//                        '      and not (F2.TIPO = ''RECEBIDA'')' +
                        ' Group by F.TIPO ';    // Agrupar por
      QuerX.ParamByName('Cod1').AsString := ACodPedido;
      QuerX.ParamByName('Cod2').AsString := ACodPedido;
      QuerX.Open;
      IF QuerX.Locate('TIPO', 'A RECEBER',[]) then
      begin
//        if QuerX.FieldByName('Quant').AsInteger = 0 then
        ASituacao := vsfEmAberto;
      end;
      IF QuerX.Locate('TIPO', 'RECEBIDA',[]) then
      begin
        AValor:= QuerX.FieldByName('VALOR').AsFloat+
                 QuerX.FieldByName('JUROS').AsFloat-
                 QuerX.FieldByName('DESCONTO').AsFloat; // Preciso do valor pago
      end;
    end;
    Try
      QuerX.Close;
      QuerX.SQL.Text := 'update VENDA set SITUACAOFINANCEIRA = :Situacao, ' +
                        ' ValorFinanceiroPago = :Valor '+
                        'where (CODIGO = :Cod)';
      QuerX.ParamByName('Cod').AsString      := ACodPedido;
      QuerX.ParamByName('Situacao').AsString := VendaSituacaoFinanceiraToStr(ASituacao);
      QuerX.ParamByName('Valor').AsFloat     := AValor;
      QuerX.ExecSQL;
    except

    end;
    ATransa.Commit;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

procedure EditVenda_PreencheDataRequisicao(ACadastro: TDataset; ADataHora: TDateTime);
begin
  try
    ACadastro.FieldByName('DT_REQUISICAO').AsDateTime := ADataHora;
  except
    raise EWRException.Create('Não foi possível preencher o campo DT_REQUISICAO.');
  end;
end;


end.

