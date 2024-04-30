unit Utils.PlanoContas;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Comp.Client, FireDAC.Stan.Param, Generics.Collections;

  procedure VerificaPlanoContasFinanceiro(ATransa: TComponent; ACodPC: string);

implementation

uses
  UnitFuncoes, Classes.PlanoContas;

procedure VerificaPlanoContasFinanceiro(ATransa: TComponent; ACodPC: string);
var
  QuerX: TWRDataSet;
begin
  if TPlanoContasTipo.GetFromPC(ACodPC) = pcTitulo then
    GeraExcecao('Não é possível fazer lançamentos financeiros em um Plano de Contas do tipo "' + pcTitulo.Descricao + '".' + sLineBreak +
                'Altere para um Plano de Contas do tipo "' + pcAnalitico.Descricao + '".');

  if ACodPC <> '' then
  begin
    QuerX := TWRDataSet.Create(ATransa);
    try
      QuerX.SQL.Text := 'select ATIVO ' +
                        'from PLANOCONTAS ' +
                        'where (CODIGO = :Cod)';
      QuerX.Params[0].AsString := ACodPC;
      QuerX.Open;
      if QuerX.Fields[0].AsString = 'N' then
        GeraExcecao('Não é possível fazer um lançamento financeiro em um Plano de Contas desativado.');
    finally
      QuerX.Free;
    end;
  end;
end;

end.
