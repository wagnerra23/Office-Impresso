unit Services.Mestre;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils;


//Funções de entrada
function ServicesMestre_Insert(ACadastro: TFDQuery): Integer;
procedure ServicesMestre_Edit(ACadastro: TFDQuery);
procedure ServicesMestre_Cancel(ACadastro: TFDQuery);
Procedure ServicesMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
Procedure ServicesMestre_Delete(ACadastro: TFDQuery);


implementation

Uses UnitFuncoes, SQL.Contas, SQL.Boleto, Utils.Boleto.Retorno, Utils.Financeiro, SQL.Financeiro;

//Funções de entrada
function ServicesMestre_Insert(ACadastro: TFDQuery): Integer;
begin
  ACadastro.Insert;
end;

procedure ServicesMestre_Edit(ACadastro: TFDQuery);
begin
  ACadastro.Edit;
end;

procedure ServicesMestre_Cancel(ACadastro: TFDQuery);
Var
  ATransa :TFDCustomTransaction;
begin
  ATransa := ACadastro.Transaction;
  ACadastro.Cancel;
  ATransa.Rollback;
  ACadastro.Refresh;
end;

Procedure ServicesMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
Var
  ATransa :TFDCustomTransaction;
begin
  ATransa := ACadastro.Transaction;
  try
    ACadastro.Post;
  except
    on E:Exception do
    begin
      if (AnsiContainsText(E.Message, 'Primary') and AnsiContainsText(E.Message, 'Codigo')) or
         (ACadastro.FieldByName('Codigo').AsString = '') then
      begin
        try
          ACadastro.FieldByName('Codigo').AsFloat := ProximoCodigo(ANomeTabela);
          ACadastro.Post;
        except
//            DSStateChange(ACadastro);
          raise Exception.Create('Chave já existente. Não conseguiu Confirmar.');
        end;
      end
      else // if AnsiContainsText(E.Message, 'UNIQUE KEY') then
        raise;
    end;

  end;
  try
    ATransa.Commit;

//    DS.DataSet.Open;
  except
    ATransa.Rollback;
    raise;
  end;
end;

Procedure ServicesMestre_Delete(ACadastro: TFDQuery);
Var
  ATransa :TFDCustomTransaction;
begin
  ATransa := ACadastro.Transaction;
  try
    ACadastro.Delete;
    ATransa.Commit;
  except
    ATransa.Rollback;
    raise;
  end;
end;



end.
