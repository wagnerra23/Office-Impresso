unit Services.Financeiro_Centro_Custo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Classes.WR,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils;

procedure ServicesFinanceiro_Centro_Custo_EditaCentroCusto(ACodFinanceiro, ACentroCustoDestino: Integer; APercDigitado, AValor: Double);

implementation

Uses UnitFuncoes, SQL.Financeiro_Centro_Custo;

procedure ServicesFinanceiro_Centro_Custo_EditaCentroCusto(ACodFinanceiro, ACentroCustoDestino: Integer; APercDigitado, AValor: Double);
var
  ATransa: TFDTransaction;
  AQuerEdit: TFDQuery;
begin
  ATransa := GeraFDTransacao;
  try
    try
      AQuerEdit := SQLFinanceiro_Centro_Custo_LocalizaCodFinanceiro(ATransa, ACodFinanceiro);
      AQuerEdit.Edit;
      AQuerEdit.FieldByName('CODCENTRO_CUSTO').AsInteger     := ACentroCustoDestino;
      AQuerEdit.FieldByName('PERCENTUAL').AsFloat            := APercDigitado;
      AQuerEdit.FieldByName('VALOR').AsFloat                 := AValor;
      AQuerEdit.Post;
      ATransa.Commit;
    except
      ATransa.Rollback;
    end;
  finally
    ATransa.Free;
    AQuerEdit.Free;
  end;
end;



end.
