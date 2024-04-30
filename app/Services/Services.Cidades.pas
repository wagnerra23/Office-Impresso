unit Services.Cidades;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes,Classes.APP;

procedure ServicesCidades_BoletoTesteInsert(Acodigo: Integer);

implementation

Uses UnitFuncoes, SQL.Cidades;

procedure ServicesCidades_BoletoTesteInsert(Acodigo: Integer);
var
  AQuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  try
  try
    AQuerX := SQLCidades_BoletoTeste(Acodigo);
    AQuerX.Transaction :=  ATransa;
    AQuerX.Insert;
    AQuerX.FieldByName('CODIGO').AsInteger   := Acodigo;
    AQuerX.FieldByName('UF').AsString        := 'SC';
    AQuerX.FieldByName('DESCRICAO').AsString := 'TUBARÃO';
    AQuerX.FieldByName('ESTADO').AsString    := 'SANTA CATARINA';
    AQuerX.FieldByName('PAIS').AsString      := 'BRASIL';
    AQuerX.FieldByName('CODPAIS').AsInteger  := 1058;
    AQuerX.Post;
    ATransa.Commit;
  except
    ATransa.Rollback;
    raise Exception.Create('Erro ao Inserir Cidade para boleto teste:'+ IntToStr(Acodigo));
  end;
  finally
    AQuerX.Free;
    ATransa.Free;
  end;
end;




end.

