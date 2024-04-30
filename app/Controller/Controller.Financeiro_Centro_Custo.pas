unit Controller.Financeiro_Centro_Custo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils, Math, System.Variants, DateUtils;

procedure ControllerFinanceiro_Centro_Custo_Grava_EditaCentroCusto(ACentroCusto: TFDQuery; ACentroCustoDestino: Integer;  AValorParcela, APercDigitado: Double);
procedure ControllerFinanceiro_Centro_Custo_InsereCentroCustoEmMassa(DT_Inicio, DT_Fim: TDateTime; ATabela: String; ATransa: TFDTransaction);
procedure ControllerFinanceiro_Centro_Custo_NovoCentroCusto(AQuerInsert: TFDQuery; ACodFinanceiro, ACodCentroCustoDestino: Integer; ACodPedido, ATipo, AModulo, ATabela: String; APercentual: Double; ADTEmissao: TDateTime);

implementation

uses Services.Financeiro_Centro_Custo, SQL.Financeiro_Centro_Custo, UnitFuncoes, Controller.Interno.Financeiro_Centro_Custo;

procedure ControllerFinanceiro_Centro_Custo_Grava_EditaCentroCusto(ACentroCusto: TFDQuery; ACentroCustoDestino: Integer;  AValorParcela, APercDigitado: Double);
var
  AValor : Double;
begin
  AValor := ControllerInterno_Financeiro_Centro_Custo_ValidaCentroCusto(ACentroCusto, ACentroCustoDestino, AValorParcela, APercDigitado);
  ServicesFinanceiro_Centro_Custo_EditaCentroCusto(ACentroCusto.FieldByName('CODFINANCEIRO').AsInteger, ACentroCustoDestino, APercDigitado, AValor);
end;

procedure ControllerFinanceiro_Centro_Custo_Grava_InsereCentroCusto(ACentroCusto: TFDQuery; ACodFinanceiro, ACentroCustoDestino: Integer; ACodPedido, ATipo, AModulo: String;  AValorParcela, APercDigitado: Double);
var
  AValor : Double;
begin
  AValor := ControllerInterno_Financeiro_Centro_Custo_ValidaCentroCusto(ACentroCusto, ACentroCustoDestino, AValorParcela, APercDigitado);
  ControllerFinanceiro_Centro_Custo_NovoCentroCusto(ACentroCusto, ACodFinanceiro, ACentroCustoDestino, ACodPedido, ATipo, AModulo, '', APercDigitado, DataHoraSys);
end;


procedure ControllerFinanceiro_Centro_Custo_InsereCentroCustoEmMassa(DT_Inicio, DT_Fim: TDateTime; ATabela: String; ATransa: TFDTransaction);
var
  AQuerDeletaDadosAnteriores, AQuerInsert: TFDQuery;
  AQuerMassaDeDadosReceita, AQuerMassaDeDadosDespesa: TFDQuery;
  ACampo: String;
begin
  if (DT_Inicio = 0) then
   raise Exception.Create('É Necessario colocar a data de ínicio');
  if (DT_Fim = 0) then
   raise Exception.Create('É Necessario colocar a data de fim');

  ACampo :=  'COD' + ATabela;


  AQuerMassaDeDadosReceita := SQLFinanceiro_Centro_Custo_SomaCentroCusto_Venda_Produto(DT_Inicio, DT_Fim, ACampo);

  AQuerMassaDeDadosDespesa := SQLFinanceiro_Centro_Custo_SomaCentroCusto_NFEntrada_Produto(DT_Inicio, DT_Fim);

  if (AQuerMassaDeDadosReceita.RecordCount = 0) and (AQuerMassaDeDadosDespesa.RecordCount = 0) then
   raise Exception.Create('Não existe dados no periodo selecionado');

  try
    AQuerDeletaDadosAnteriores := SQLFinanceiro_Centro_Custo_DeletaNoPeriodo(ATransa,DT_Inicio, DT_Fim);
    AQuerDeletaDadosAnteriores.ExecSQL;

    AQuerInsert := SQLFinanceiro_Centro_Custo_AbreTabelaPrincipal(ATransa);
///////////////RECEITA\\\\\\\\\\\\\\\\\\\\\\\
    AQuerMassaDeDadosReceita.First;
    while not AQuerMassaDeDadosReceita.Eof do
    begin
      ControllerFinanceiro_Centro_Custo_NovoCentroCusto(AQuerInsert, AQuerMassaDeDadosReceita.FieldByName('CODFINANCEIRO').AsInteger,
       AQuerMassaDeDadosReceita.FieldByName('CODCENTRO_CUSTO').AsInteger,
       AQuerMassaDeDadosReceita.FieldByName('CODPEDIDO').AsString,
       'RECEITA',
       'VENDA',
       ATabela,
       AQuerMassaDeDadosReceita.FieldByName('PERCENTUAL').AsFloat,
       AQuerMassaDeDadosReceita.FieldByName('EMISSAO').AsDateTime);

      AQuerMassaDeDadosReceita.Next;
    end;
///////////////DESPESA\\\\\\\\\\\\\\\\\\\\\\\
    AQuerMassaDeDadosDespesa.First;
    while not AQuerMassaDeDadosDespesa.Eof do
    begin
      ControllerFinanceiro_Centro_Custo_NovoCentroCusto(AQuerInsert, AQuerMassaDeDadosReceita.FieldByName('CODFINANCEIRO').AsInteger,
       AQuerMassaDeDadosReceita.FieldByName('CODCENTRO_CUSTO').AsInteger,
       AQuerMassaDeDadosReceita.FieldByName('CODPEDIDO').AsString,
       'DESPESA',
       'NF_ENTRADA',
       ATabela,
       AQuerMassaDeDadosReceita.FieldByName('PERCENTUAL').AsFloat,
       AQuerMassaDeDadosReceita.FieldByName('EMISSAO').AsDateTime);

      AQuerMassaDeDadosDespesa.Next;
    end;
  finally
    AQuerInsert.Free;
    AQuerMassaDeDadosReceita.Free;
    AQuerMassaDeDadosDespesa.Free;
  end;
end;

procedure ControllerFinanceiro_Centro_Custo_NovoCentroCusto(AQuerInsert: TFDQuery; ACodFinanceiro, ACodCentroCustoDestino: Integer; ACodPedido, ATipo, AModulo, ATabela: String; APercentual: Double; ADTEmissao: TDateTime);
begin
  AQuerInsert.Insert;
  AQuerInsert.FieldByName('CODFINANCEIRO').AsInteger     := ACodFinanceiro;

  if ACodCentroCustoDestino = null then
    AQuerInsert.FieldByName('CODCENTRO_CUSTO').AsInteger := -1
  else
    AQuerInsert.FieldByName('CODCENTRO_CUSTO').AsInteger := ACodCentroCustoDestino;

  if ACodPedido = null then
    AQuerInsert.FieldByName('CODPEDIDO').AsString  := '0'
  else
    AQuerInsert.FieldByName('CODPEDIDO').AsString  := ACodPedido;

  AQuerInsert.FieldByName('PERCENTUAL').AsFloat          := APercentual;
  AQuerInsert.FieldByName('TIPO').AsString               := ATipo;//'RECEITA,DESPESA';
  AQuerInsert.FieldByName('MODULO').AsString             := AModulo;//'VENDA, NF_ENTRADA';
  AQuerInsert.FieldByName('DT_ALTERACAO').AsDateTime     := ADTEmissao;
  AQuerInsert.FieldByName('TABELA').AsString             := ATabela;
  AQuerInsert.FieldByName('ATIVO').AsString              := 'S';
  AQuerInsert.Post;
end;


end.
