unit Controller.Compra;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uWRCalculaConfiguracoes, Math, System.Classes;

function Controller_FinalizarCompra(ACodCompra: string; AWRCalc: TWRCalculaConfiguracoes): Boolean;
function Controller_CancelarFinalizacaoCompra(ACodCompra: string): Boolean;
function Controller_VerificaSeAtualizaPrecoPorCFOP(ANF_Entrada_Produto: TFDQuery): String;
procedure ValidaRegras_FinalizacaoPelaCompra(ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos, ANF_SomaDasParcelas: TDataSet;
                                             AAtualizaFinanceiro, AAtualizaEstoque: Boolean);
implementation

Uses UnitFuncoes, ConfiguracoesM, Classes.WR, Controller.Contas, Controller.Financeiro,
     Controller.Requisicao.Compra, Services.Compra, Controller.Requisicao, SQL.Compra,
     Controller.Compra.Estoque, SQL.Contas;

function Controller_FinalizarCompra(ACodCompra: string; AWRCalc: TWRCalculaConfiguracoes): Boolean;
var
  AAtualizaFinanceiro, AAtualizaEstoque, AAtualizaPreco: Boolean;
  AQuerConta, ANF_SomaDasParcelas, ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos: TFDQuery;
begin
//  if (ANF_Entrada.State in [dsEdit, dsInsert]) then
//    raise EWRException.Create('A compra não pode estar em edição.');

  ANF_Entrada          := SQLNF_Entrada_BuscaCompraPorCodigo(nil, ACodCompra);
  ANF_Entrada_Produtos := SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(nil, ACodCompra);
  ANF_Entrada_Parcelas := SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(nil, ACodCompra);
  ANF_SomaDasParcelas  := SQLNF_Entrada_Parcelas_Somatorio_Parcelas(nil, ACodCompra);
  AQuerConta           := SQLContas(ANF_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger);
  AAtualizaFinanceiro  := IfThenVar(ANF_Entrada.FieldByName('ENVIA_FINANCEIRO').AsString = 'S', True, False);
  AAtualizaEstoque     := IfThenVar(ANF_Entrada.FieldByName('ENVIA_ESTOQUE').AsString = 'S', True, False);
  AAtualizaPreco       := IfThenVar(ANF_Entrada.FieldByName('ENVIA_PRECO').AsString = 'S', True, False);

  ValidaRegras_FinalizacaoPelaCompra(ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos, ANF_SomaDasParcelas, AAtualizaFinanceiro, AAtualizaEstoque);
  ValidaRegras_MovimentacaoEstoquePelaCompra(ANF_Entrada);
  ValidaRegras_RequisicaoPelaCompra(ANF_Entrada, ANF_Entrada_Produtos);
  ControllerContas_ValidarSituacaoContaBanco(ANF_Entrada_Parcelas, AQuerConta);
  ControllerContas_VerificaAberturaDeCaixa(ANF_Entrada_Parcelas);

  {$REGION 'Código comentado'}
  //  if Cadastro.FieldByName('CODUSUARIO_ESTOQUE').IsNull then
//  begin
//    if not ConferenciaMateriais then
//    begin
//      showmessage('A conferencia de compra não foi autorizada, não é possivel atualizar');
//      Exit;
//    end;
//  end;

    /////////DELETA TODO O FINANCERO REFERENTE A ESSE LANÇAMENTO (SE EXISTIR É CLARO)////////////
    //Quer.SQL.Text := 'DELETE FROM FINANCEIRO WHERE CODNF_ENTRADA= :Codigo';
    //Quer.ParamByName('Codigo').AsString:=Cadastro.FieldByName('CODIGO').AsString;
    //Quer.ExecSQL;
{$ENDREGION}
  try
    Service_FinalizarCompra(ANF_Entrada.FieldByName('CODIGO').AsString, AWRCalc, AAtualizaFinanceiro, AAtualizaEstoque, AAtualizaPreco);
    Result := true;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

function Controller_VerificaSeAtualizaPrecoPorCFOP(ANF_Entrada_Produto: TFDQuery): String;
var
  AlistaCFOP: TStringList;
  I: Integer;
  QuerX :TFDQuery;
begin
//  AlistaCFOP := Controller_GeraListaCFOPDevolucao;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select * from nf_cfop c where c.PODE_DEVOLUCAO = ''S''';
    QuerX.Open;
    QuerX.First;
    ANF_Entrada_Produto.First;
    while not ANF_Entrada_Produto.Eof do
    begin
      while not QuerX.Eof do
      begin
        if ANF_Entrada_Produto.FieldByName('CODNF_CFOP').AsString = QuerX.FieldByName('CODIGO').AsString then
        begin
          Result := 'S';
        end;
        QuerX.Next;
      end;
      ANF_Entrada_Produto.Next;
    end;
  finally
    QuerX.free;
  end;
end;

//function Controller_GeraListaCFOPDevolucao: AListaCFOP;
//var
//  AlistaCFOP: TStringList;
//begin
//  AlistaCFOP := TStringList.Create;
//  //Devolução de venda de produção do estabelecimento.
//  AlistaCFOP.Add('1201');
//  AlistaCFOP.Add('2201');
//  //Devolução de venda de mercadoria adquirida ou recebida de terceiros.
//  AlistaCFOP.Add('1202');
//  AlistaCFOP.Add('2202');
//  //Devolução de compra para industrialização.
//  AlistaCFOP.Add('1411');
//  AlistaCFOP.Add('2411');
//  //Devolução de compra para comercialização.
//  AlistaCFOP.Add('1412');
//  AlistaCFOP.Add('2412');
//  //Devolução de mercadoria recebida em consignação mercantil.
//  AlistaCFOP.Add('1415');
//  AlistaCFOP.Add('2415');
//  //Devolução de mercadoria remetida em consignação mercantil.
//  AlistaCFOP.Add('1416');
//  AlistaCFOP.Add('2416');
//  //Devolução de compra de bem para o ativo imobilizado.
//  AlistaCFOP.Add('1555');
//  AlistaCFOP.Add('2555');
//  //Devolução de compra de material para uso ou consumo.
//  AlistaCFOP.Add('1556');
//  AlistaCFOP.Add('2556');
//  //Retorno de mercadoria ou bem recebido para conserto ou reparo.
//  AlistaCFOP.Add('5916');
//  //Devolução de mercadoria recebida em consignação mercantil ou industrial.
//  AlistaCFOP.Add('5918');
//end;

function Controller_CancelarFinalizacaoCompra(ACodCompra: string): Boolean;
var
  AAtualizaFinanceiro, AAtualizaEstoque: Boolean;
  AQuerConta, ANF_SomaDasParcelas, ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos: TFDQuery;
begin
//  if (ANF_Entrada.State in [dsEdit, dsInsert]) then
//    raise EWRException.Create('A compra não pode estar em edição.');

  ANF_Entrada := SQLNF_Entrada_BuscaCompraPorCodigo(nil, ACodCompra);
  ANF_Entrada_Produtos := SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(nil, ACodCompra);
  ANF_Entrada_Parcelas := SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(nil, ACodCompra);
  ANF_SomaDasParcelas := SQLNF_Entrada_Parcelas_Somatorio_Parcelas(nil, ACodCompra);
  AQuerConta := SQLContas(ANF_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger);
  AAtualizaFinanceiro := IfThenVar(ANF_Entrada.FieldByName('ENVIA_FINANCEIRO').AsString = 'S', True, False);
  AAtualizaEstoque := IfThenVar(ANF_Entrada.FieldByName('ENVIA_ESTOQUE').AsString = 'S', True, False);

//  ValidaRegras_FinalizacaoPelaCompra(ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos, ANF_SomaDasParcelas, AAtualizaFinanceiro, AAtualizaEstoque);
//  ValidaRegras_MovimentacaoEstoquePelaCompra(ANF_Entrada);
//  ValidaRegras_RequisicaoPelaCompra(ANF_Entrada, ANF_Entrada_Produtos);
  ControllerContas_ValidarSituacaoContaBanco(ANF_Entrada_Parcelas, AQuerConta);
  ControllerContas_VerificaAberturaDeCaixa(ANF_Entrada_Parcelas);
  try
    Service_CancelarFinalizacaoCompra(ANF_Entrada.FieldByName('CODIGO').AsString, AAtualizaFinanceiro, AAtualizaEstoque);
    Result := true;
  except
    on E:EWRException do
    begin
      Result := False;
      raise EWRException.Create(E.Message);
    end;
  end;
end;

procedure ValidaRegras_FinalizacaoPelaCompra(ANF_Entrada, ANF_Entrada_Parcelas, ANF_Entrada_Produtos, ANF_SomaDasParcelas: TDataSet;
                                             AAtualizaFinanceiro, AAtualizaEstoque: Boolean);
begin
  if not ANF_Entrada.FieldByName('DT_FATURAMENTO').IsNull then
    raise EWRException.Create('A Compra já está Finalizada');

  if AAtualizaFinanceiro and (ANF_Entrada_Parcelas.RecordCount = 0) then
    raise EWRException.Create('Você ainda não gerou as parcelas. Selecione a Condição de Pagamento correta e clique em "Gerar Parcelas".');

  if AAtualizaEstoque and (ANF_Entrada_Produtos.RecordCount = 0) then
    raise EWRException.Create('Não há itens para serem enviados ao estoque');

  if RoundTo(ANF_Entrada.FieldByName('TOTAL').AsCurrency,2) > RoundTo(ANF_SomaDasParcelas.FieldByName('VALOR').AsCurrency,2) then
    raise EWRException.Create('Valor da nota fiscal é "Superior" a soma das parcelas');

  if RoundTo(ANF_Entrada.FieldByName('TOTAL').AsCurrency,2) < RoundTo(ANF_SomaDasParcelas.FieldByName('VALOR').AsCurrency,2) then
    raise EWRException.Create('Valor da nota fiscal é "Inferior" a soma das parcelas');
end;

end.
