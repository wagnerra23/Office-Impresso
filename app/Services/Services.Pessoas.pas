unit Services.Pessoas;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes,Classes.APP;

procedure ServicesPessoas_BoletoTesteInsert(Acodigo: String);

implementation

Uses UnitFuncoes, SQL.Pessoas;

procedure ServicesPessoas_BoletoTesteInsert(Acodigo: String);
var
  AQuerX: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  try
  try
    AQuerX := SQLPessoas_BoletoTeste(Acodigo);
    AQuerX.Transaction :=  ATransa;
    AQuerX.Insert;
    AQuerX.FieldByName('CODIGO').AsString   := Acodigo;
    if AQuerX.IsEmpty then
    begin
      AQuerX.Insert;
      AQuerX.FieldByName('CODIGO').AsString := Acodigo;
    end else
      AQuerX.Edit;
    AQuerX.FieldByName('TIPO').AsString        := 'J';
    AQuerX.FieldByName('CNPJCPF').AsString     := '08061860000147';
    AQuerX.FieldByName('FANTASIA').AsString    := 'WR2 Sistemas';
    AQuerX.FieldByName('RAZAOSOCIAL').AsString := 'WR Comercial LTDA ME';
    AQuerX.FieldByName('ENDERECO').AsString    := 'R Simeão Esmeraldino de Menezes, 400';
    AQuerX.FieldByName('BAIRRO').AsString      := 'Dehon';
    AQuerX.FieldByName('CEP').AsString         := '88704-090';
    AQuerX.FieldByName('CODCIDADE').AsInteger  := 4218707;
    AQuerX.FieldByName('UF').AsString          := 'SC';
    AQuerX.FieldByName('ATIVO').AsString       := 'N';
    AQuerX.Post;
    ATransa.Commit;
  except
    ATransa.Rollback;
    raise Exception.Create('Erro ao Inserir Pessoa Teste para boleto:'+ Acodigo);
  end;
  finally
    AQuerX.Free;
    ATransa.Free;
  end;
end;




end.

