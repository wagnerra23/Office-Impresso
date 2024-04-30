unit Services.Contas;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes,Classes.APP, IBX.IBQuery,
  IBX.IBCustomDataSet, IBX.IBDatabase, Registry, IBX.IBStoredProc, IBX.IBSQL;

procedure ServicesContas_BoletoTesteInsert(ACodBanco: Integer);
procedure ServicesContas_BoletoTesteDelete(ACodBanco: Integer);
function ServicesContas_GeraNossoNumero(AFinanceiro, AConta: TDataSet; ACodConta: Integer; ACarteira :String): string; // Função restrita

implementation

Uses UnitFuncoes, SQL.Contas;

procedure ServicesContas_BoletoTesteInsert(ACodBanco: Integer);
var
  AQuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  try
    try
      AQuerX := SQLConta_BoletoTestes(-ACodBanco);
      AQuerX.Transaction :=  ATransa;
      AQuerX.Insert;
      AQuerX.FieldByName('CODIGO').AsInteger   := -ACodBanco;         // Usar o código do banco para testar o arquivo
      AQuerX.FieldByName('UF').AsString        := 'SC';
      AQuerX.FieldByName('DESCRICAO').AsString := 'TUBARÃO';
      AQuerX.FieldByName('ESTADO').AsString    := 'SANTA CATARINA';
      AQuerX.FieldByName('PAIS').AsString      := 'BRASIL';
      AQuerX.FieldByName('CODPAIS').AsInteger  := 1058;
      AQuerX.Post;
      ATransa.Commit;
    except
      ATransa.Rollback;
      raise Exception.Create('Erro ao Inserir Contas para boleto teste:'+ IntToStr(ACodBanco));
    end;
  finally
    AQuerX.Free;
    ATransa.Free;
  end;
end;

procedure ServicesContas_BoletoTesteDelete(ACodBanco: Integer);
var
  AQuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  try
    try
      AQuerX := SQLConta_BoletoTestes(-ACodBanco);
      AQuerX.Transaction :=  ATransa;
      AQuerX.Delete;
      ATransa.Commit;
    except
      ATransa.Rollback;
      raise Exception.Create('Erro ao Deletar Contas para boleto teste:'+ IntToStr(-ACodBanco));
    end;
  finally
    AQuerX.Free;
    ATransa.Free;
  end;
end;

function ServicesContas_GeraNossoNumero(AFinanceiro, AConta: TDataSet; ACodConta: Integer; ACarteira :String): string;  // Função restrita
var
  QuerX : TFDQuery;
  ATransa: TFDTransaction;
  ACampo : String;
  AProxNumero : Double;
begin
  try
    if ACarteira = AConta.FieldByName('VARIACAO').AsString then
      ACampo := 'PROXIMO_NUMERO_VARIACAO'
    else
      ACampo := 'PROXIMO_NUMERO_CARTEIRA';
    AProxNumero := Math.Max(AConta.FieldByName(ACampo).AsFloat, 1);


    AConta.FieldByName(ACampo).AsFloat := AProxNumero + 1;
    Result := FloatToStr(AProxNumero);
  except
    on E: Exception do
    begin
      raise Exception.Create(E.Message);
      //    raise Exception.Create('Erro ao gerar o nosso numero');
    end;




  end;





//  ATransa := GeraFDTransacao;
//  QuerX := GeraFDQuery(ATransa);
//  try
//    try
//      QuerX.SQL.Text := 'select * ' +
//                        'from CONTAS ' +
//                        'where (CODIGO = :Cod)';
//      QuerX.Params[0].AsInteger := ACodConta;
//      QuerX.Open;
//      if ACarteira = QuerX.FieldByName('VARIACAO').AsString then
//        ACampo := 'PROXIMO_NUMERO_VARIACAO'
//      else
//        ACampo := 'PROXIMO_NUMERO_CARTEIRA';
//      AProxNumero := Math.Max(QuerX.FieldByName(ACampo).AsFloat, 1);
//
//      QuerX.Close;
//      QuerX.SQL.Text := 'update CONTAS set ' + ACampo + ' = :ProxNum ' +
//                        'where (CODIGO = :Cod)';
//      QuerX.ParamByName('Cod').AsInteger   := ACodConta;
//      QuerX.ParamByName('ProxNum').AsFloat := AProxNumero + 1;
//      QuerX.ExecSQL;
//      ATransa.Commit;
//      Result := FloatToStr(AProxNumero);
//    except
//      ATransa.Rollback;
//      raise Exception.Create('Erro ao gerar o nosso numero');
//    end;
//  finally
//    ATransa.Free;
//    QuerX.Free;
//  end;
end;


end.

