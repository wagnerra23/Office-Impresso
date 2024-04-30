unit Services.Boleto.Arquivo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, ACBrBoleto, Classes.WR, ACBrBoletoRetorno,
  Math, System.Variants, DateUtils, System.SysUtils, StrUtils, Services.Mestre, Classes;

//Funções de entrada
procedure SevicesBoletoArquivo_RetornoGravaBlob(Arquivo: string);
function SevicesBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;

implementation

Uses UnitFuncoes, SQL.Contas, SQL.Boleto, Utils.Boleto, Utils.Boleto.Retorno, Utils.Financeiro, SQL.Financeiro, SQL.Financeiro_boleto,
  SQL.Financeiro_Boleto_Historico, Services.Boleto, Services.Interno.Boleto.Arquivo, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBStoredProc, IBX.IBSQL;

//Funções de entrada
procedure SevicesBoletoArquivo_RetornoGravaBlob(Arquivo: string);
var
  QuerX, QuerInsert: TFDQuery;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'select first 1 1 from ARQUIVOS  where (DESCRICAO = :Desc) and (TIPO = ''RETORNO_BANCO'') ' +
      '      and (FORM = ''FrmFinanceiro_Boleto'')';
    QuerX.Params[0].AsString := ExtractFileName(Arquivo);
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      if FileExists(Arquivo) then
      begin
        QuerInsert := GeraFDQuery(ATransa);
        try
          QuerInsert.SQL.Text := 'insert into ARQUIVOS (DESCRICAO, TIPO, ARQUIVO, FORM, DT_ALTERACAO)     ' +
            '              values (:DESCRICAO, :TIPO, :ARQUIVO, :FORM, :DT_ALTERACAO)';
          QuerInsert.ParamByName('DESCRICAO').AsString := ExtractFileName(Arquivo);
          QuerInsert.ParamByName('TIPO').AsString := 'RETORNO_BANCO';
          QuerInsert.ParamByName('ARQUIVO').LoadFromFile(Arquivo, ftBlob);
          QuerInsert.ParamByName('FORM').AsString := 'FrmFinanceiro_Boleto';
          QuerInsert.ParamByName('DT_ALTERACAO').AsDateTime := now;
          QuerInsert.ExecSQL;
          ATransa.Commit;
        finally
          QuerInsert.Free;
        end;
      end;
    end;
  finally
    QuerX.Free;
    ATransa.Free;
  end;
end;

function SevicesBoletoArquivo_Retorno_TratarArquivo(AACBrBoleto: TACBrBoleto; ACodConta :Integer): Integer;
Var
  ATransa :TFDTransaction;
  AContas, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico : TFDQuery;
begin
  // Cria uma transação independente
  ATransa := GeraFDTransacao;
  ATransa.StartTransaction;
  AContas := SQLContas(ACodConta);

  // Busca Retorno
  AFinanceiro_Boleto := SQLFinanceiro_boleto_RetornoArquivo(ATransa, ACodConta, AACBrBoleto.NumeroArquivo, AACBrBoleto.DataArquivo);
  Try
    try
      // Cria novo Retorno
      if AFinanceiro_Boleto.RecordCount = 0 then  // Se não acho Cria
      begin
        Repo_InsertFinanceiro_BoletoArquivo_Novo(ATransa,
                                     AFinanceiro_boleto,
                                     AACBrBoleto.DataArquivo,
                                     AACBrBoleto.NumeroArquivo,
                                     ACodConta);

        Repo_EditContas(AContas, AFinanceiro_Boleto.FieldByName('RETORNO').AsInteger);
      end;
      // Consulta os boletos do retorno
      AFinanceiro_Boleto_Historico:= SQLFinanceiro_Boleto_Historico(ATransa, AFinanceiro_Boleto.FieldByName('Codigo').AsInteger);

      //  Processa o retorno
      Repo_InsertBoleto_Registra_HistoricoArquivo(AACBrBoleto, AFinanceiro_Boleto, AFinanceiro_Boleto_Historico);


      //  Registra os boletos retornados, Baixa no financiero
      Repo_EditFinanceiro_BaixaDeBoleto(ATransa, AFinanceiro_Boleto_Historico, AFinanceiro_Boleto);  //Aqui deve procurar financeiro

      // Deve Baixar aqui o bagulho, tem que baixar os valores na venda, Bucha, Buxa, Bucha mesmo!!!!
      AtualizaVendaParcelasBaixadas(AFinanceiro_Boleto_Historico);

      Result := AFinanceiro_Boleto.FieldByName('CODIGO').AsInteger;
      //  Baixa no financeiro, os boletos Vinculados
//      InsertFinanceiro_GeraDebitoValorDespesaCobranca(ATransa, Transa_Conta); // Tarifas
      ATransa.Commit;
    except
      on E: Exception do
      begin
        ATransa.Rollback;
        raise Exception.Create(E.Message);
      end;
    end;
  Finally
    ATransa.Free;
    AContas.Free;
    AFinanceiro_Boleto.Free;
  End;
// Remessa
// Pergunta se Silencio ou não
// GeraNumero_Registro_ou_ProximoCodigo
// Ja foi gerado Remessa Hoje deseja Incluir os novos Itens

// Baixa os boletos no financeiro.
// Close open Financeiro
// Achar Remessa ou
// Gerar Numero novo
// Caso não tenha Cria
// Reenviar Boletos, não registrados
// Os boletos tem Operações
// Buscar(Componente, Dia)
// Se tiver remessa ativa anterior abre incli e envia até fechar o dia
end;

end.

