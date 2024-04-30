unit Services.Estoque;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, StrUtils, Classes, Math;

//function InsertProdutoMovimento_MovimentaEstoque(ATransa: TFDTransaction; ACodProduto, ACodEmpresa, AEstoqueLocal, AFornecedorCodigo: string;
//  ADataCompra: TDateTime; AObservacao: string; AQuant: Double; ACodLote, ACodUsuario: Integer; ACodNFEntrada: string;
//  ACodVenda: string; ACustoFabr, ACustoVendaTotal, AValor: Double; AForm,
//  ATipoUso, ANatureza :String; var ACodMovimento :Integer): Boolean;
//function Service_Estoque(ATransa: TFDTransaction; ACodProduto, ACodEmpresa, AEstoqueLocal: string; AQuant: Double; ACodLote: Integer; var AQuantAntiga, AQuantAtual: Double): Boolean;

implementation

Uses UnitFuncoes, Services.Requisicao;

//function InsertProdutoMovimento_MovimentaEstoque(ATransa: TFDTransaction; ACodProduto, ACodEmpresa, AEstoqueLocal, AFornecedorCodigo: string;
//  ADataCompra: TDateTime; AObservacao: string; AQuant: Double; ACodLote, ACodUsuario: Integer; ACodNFEntrada: string;
//  ACodVenda: string; ACustoFabr, ACustoVendaTotal, AValor: Double; AForm,
//  ATipoUso, ANatureza :String; var ACodMovimento :Integer): Boolean;
//var
//  Produto_MovimentoX: TWRDataSet;
//  AQuantAntiga, AQuantAtual: Double;
//begin
//  WRLog('...Inicia a Movimentação de estoque...' );
//  WRLog('Produto: ' + ACodProduto);
//  AQuantAntiga := 0;
//  AQuantAtual  := 0;
//  if AForm = '' then
//    AForm := 'Sem Tela';
//  if ATipoUso = '' then
//    ATipoUso := 'Não Definido';
//  if ANatureza = '' then
//    ANatureza := 'Sem Natureza';
//
//  if AEstoqueLocal = '' then  //TRATA CASO O PRODUTO LOCAL ESTOQUE SEJA VAZIO
//    AEstoqueLocal := 'PRINCIPAL';
//  WRLog('O Local de estoque foi decido: ' + AEstoqueLocal);
//  WRLog('..Entrando na função de alterar o estoque..');
//  Result := Service_Estoque(ATransa, ACodProduto, ACodEmpresa, AEstoqueLocal, AQuant, ACodLote, AQuantAntiga, AQuantAtual);
//  Produto_MovimentoX := TWRDataSet.Create(ATransa);
//  WRLog('..Saindo da função de alterar o estoque..');
//  try
//    WRLog('Inicia o Insert no Produto Movimento');
//    Produto_MovimentoX.SQL.Text := 'insert into PRODUTO_MOVIMENTO (CODIGO, CODPRODUTO, CODEMPRESA, CODPRODUTO_LOTE, ' +
//                                   '  TIPO_MOVIMENTO, PRODUTO_ESTOQUE_LOCAL, QUANT, PESSOA_FORNECEDOR_CODIGO, DATA, ' +
//                                   '  DT_ALTERACAO, OBSERVACAO, CODUSUARIO, CODNF_ENTRADA, CODVENDA, CUSTO_FABR, CUSTO_VENDA_TOTAL, VALOR, FORM, TIPO_USO, QUANT_ANTIGA, QUANT_ATUAL, ATIVO, NATUREZA) ' +
//                                   'values (:CODIGO, :CODPRODUTO, :CODEMPRESA, :CODPRODUTO_LOTE, :TIPO_MOVIMENTO, ' +
//                                   '  :PRODUTO_ESTOQUE_LOCAL, :QUANT, :PESSOA_FORNECEDOR_CODIGO, :DATA, :DT_ALTERACAO, ' +
//                                   '  :OBSERVACAO, :CODUSUARIO, :CODNF_ENTRADA, :CODVENDA, :CUSTO_FABR, :CUSTO_VENDA_TOTAL, :VALOR, :FORM, :TIPO_USO, :QUANT_ANTIGA, :QUANT_ATUAL, :ATIVO, :NATUREZA)';
//
//    ACodMovimento := Trunc(GetProximoCodigoGen('CR_PRODUTO_MOVIMENTO', ATransa));
//    Produto_MovimentoX.SetParam('CODIGO', ACodMovimento);
//    Produto_MovimentoX.SetParam('CODPRODUTO', ACodProduto);
//    Produto_MovimentoX.SetParam('CODEMPRESA', ACodEmpresa);
//    Produto_MovimentoX.SetParam('CODPRODUTO_LOTE', ACodLote);
//    if AQuant > 0 then
//    begin
//      Produto_MovimentoX.SetParam('TIPO_MOVIMENTO', 'E');
//      Produto_MovimentoX.SetParam('QUANT', AQuant);
////      WRLog('Foi Definido que vai ser um ENTRADA de: ' + FloatToStr(AQuant));
//    end else
//    begin
//      Produto_MovimentoX.SetParam('TIPO_MOVIMENTO', 'S');
//      Produto_MovimentoX.SetParam('QUANT', -AQuant);
////      WRLog('Foi Definido que vai ser um Saida de: ' + FloatToStr(AQuant));
//    end;
//    Produto_MovimentoX.SetParam('PRODUTO_ESTOQUE_LOCAL', AEstoqueLocal);
//    Produto_MovimentoX.SetParam('PESSOA_FORNECEDOR_CODIGO', AFornecedorCodigo);
//    if ADataCompra <= 0 then
//      Produto_MovimentoX.SetParam('DATA', DataHoraSys)
//    else
//      Produto_MovimentoX.SetParam('DATA', ADataCompra);
//    Produto_MovimentoX.SetParam('DT_ALTERACAO', DataHoraSys); //A DT_ALTERAÇÃO É PREENCHIDA SOMENTE AQUI!
//    Produto_MovimentoX.SetParam('OBSERVACAO', AObservacao);
//    Produto_MovimentoX.SetParam('CODUSUARIO', ACodUsuario);
//    Produto_MovimentoX.SetParam('CODNF_ENTRADA', ACodNFEntrada);
//    Produto_MovimentoX.SetParam('CODVENDA', ACodVenda);
//    Produto_MovimentoX.SetParam('CUSTO_FABR', ACustoFabr);
//    Produto_MovimentoX.SetParam('CUSTO_VENDA_TOTAL', ACustoVendaTotal);
//    Produto_MovimentoX.SetParam('VALOR', AValor);
//    Produto_MovimentoX.SetParam('FORM', AForm);
//    Produto_MovimentoX.SetParam('TIPO_USO', ATipoUso);
//    Produto_MovimentoX.SetParam('QUANT_ANTIGA', AQuantAntiga);
//    Produto_MovimentoX.SetParam('QUANT_ATUAL', AQuantAtual);
//    Produto_MovimentoX.SetParam('ATIVO', 'S');
//    Produto_MovimentoX.SetParam('NATUREZA', ANatureza);
//    Produto_MovimentoX.ExecSQL;
////    WRLog('ExecSQL da no Produto Movimento');
//  finally
//    Produto_MovimentoX.Free;
//  end;
////   WRLog('...Finaliza a Movimentação de Estoque...');
// //Estoque(Transa, ACodProduto, ACodEmpresa, AEstoqueLocal, AQuant, ACodLote);
//end;
//
//function Service_Estoque(ATransa: TFDTransaction; ACodProduto, ACodEmpresa, AEstoqueLocal: string; AQuant: Double; ACodLote: Integer; var AQuantAntiga, AQuantAtual: Double): Boolean;
//var
//  ProdutoX, LoteX, QuerEstoqueProduto, QuerComposicao: TWRDataSet;
//  ATemp: Real;
//  i: Integer;
//  AListaCampos: TStringList;
//begin
////  WRLog('.Inicia a baixa do estoque.');
//  Result := True;
//  try
//    ProdutoX := TWRDataSet.Create(ATransa);         // Não pode ter isso aqui
//    try
//      ProdutoX.SQL.Text := 'select TEM_LOTE ' +
//                           'from PRODUTO ' +
//                           'where (CODIGO = :Cod)';
//      ProdutoX.SetParam('Cod', ACodProduto);
//      ProdutoX.Open;
//
//      //Atualiza Lote
////      WRLog('Verifica se tem lote');
//      if ProdutoX.FieldByName('TEM_LOTE').AsString = 'S' then
//      begin
//        WRLog('Tem Lote');
//        if ACodLote = 0 then
//        begin
////          ShowMessage('Há Produto(s) sem código de Lote, a operação será fechada para garantir a integridade do estoque');
////          Abort;
//        end;
//        LoteX := TWRDataSet.Create(ATransa);
//        try
//          LoteX.SQL.Text := 'select QUANTIDADE ' +
//                            'from PRODUTO_LOTE ' +
//                            'where (CODIGO = :CodLote) ' +
//                            '      and (CODPRODUTO = :CodProduto)';
//          LoteX.SetParam('CodLote', ACodLote);
//          LoteX.SetParam('CodProduto', ACodProduto);
//          LoteX.Open;
//          if not LoteX.IsEmpty and (ACodLote > 0) Then
//          begin
//            ATemp := LoteX.FieldByName('QUANTIDADE').AsFloat;
//            LoteX.Close;
//            LoteX.ClearParams;
//
//            LoteX.SQL.Text := 'update PRODUTO_LOTE set QUANTIDADE = :Est, DT_ALTERACAO = current_timestamp ' +
//                              'where (CODIGO = :CodLote) ' +
//                              '      and (CODPRODUTO = :CodProduto)';
//            LoteX.SetParam('CodLote', ACodLote);
//            LoteX.SetParam('Est', Math.RoundTo(ATemp + AQuant, -8));
//            LoteX.SetParam('CodProduto', ACodProduto);
//            LoteX.ExecSQL;
//          end else
//          begin
////            ShowMessageWR('Não Existe Lote para esse Produto', MB_ICONWARNING);
////            Abort;
//          end;
//        finally
//          LoteX.Free;
//        end;
//      end;
//    finally
//      ProdutoX.Free;
//    end;
//
//    //Atualiza ou cria tabela PRODUTO_ESTOQUE
//    QuerEstoqueProduto := TWRDataSet.Create(ATransa);
//    try
//      QuerEstoqueProduto.SQL.Text := 'select * ' +
//                                     'from PRODUTO_ESTOQUE ' +
//                                     'where (CODPRODUTO = :CodProduto) ' +
//                                     '      and (CODEMPRESA = :CodEmpresa)';
//      QuerEstoqueProduto.SetParam('CodProduto', ACodProduto);
//      QuerEstoqueProduto.SetParam('CodEmpresa', ACodEmpresa);
//      QuerEstoqueProduto.Open;
//
//
//
//      //Trata caso o produto local estoque seja vazio
//      if AEstoqueLocal = '' then
//        AEstoqueLocal := 'PRINCIPAL';
//
//      AQuantAntiga :=  QuerEstoqueProduto.FieldByName('ESTOQUE').AsFloat; //PREENCHE ESTOQUE ANTES DE SER ALTERADO
////      WRLog('Inicio do Update do estoque');
//      if not QuerEstoqueProduto.IsEmpty then
//      begin
////        WRLog('Se entrou aqui o produto ja existe na tabela Produto_estoque');
//        ATemp := QuerEstoqueProduto.FieldByName(AEstoqueLocal).AsFloat;
//        QuerEstoqueProduto.Close;
//        QuerEstoqueProduto.ClearParams;
//
//        QuerEstoqueProduto.SQL.Text := 'update PRODUTO_ESTOQUE set ' + AEstoqueLocal + ' = :Est, DT_ALTERACAO = current_timestamp ' +
//                                       'where (CODPRODUTO = :CodProduto) ' +
//                                       '      AND (CODEMPRESA = :CodEmpresa)';
//        QuerEstoqueProduto.SetParam('Est', Math.RoundTo(ATemp + AQuant, -8));
//        QuerEstoqueProduto.SetParam('CodProduto', ACodProduto);
//        QuerEstoqueProduto.SetParam('CodEmpresa', ACodEmpresa);
//        QuerEstoqueProduto.ExecSQL;
////        WRLog('ExecSql da alteração do estoque');
//      end else
//      begin
////        WRLog('Se entrou aqui o produto vai ser criado  na tabela Produto_estoque');
//        QuerEstoqueProduto.Close;
//        QuerEstoqueProduto.ClearParams;
//
//        QuerEstoqueProduto.SQL.Text := 'insert into PRODUTO_ESTOQUE (CODPRODUTO, CODEMPRESA, ' + AEstoqueLocal + ', ' +
//                                       '  DT_ALTERACAO) values (:CODPRODUTO, :CODEMPRESA, :ESTOQUE, current_timestamp)';
//        QuerEstoqueProduto.SetParam('CODPRODUTO', ACodProduto);
//        QuerEstoqueProduto.SetParam('CODEMPRESA', ACodEmpresa);
//        QuerEstoqueProduto.SetParam('ESTOQUE', Math.RoundTo(AQuant, -8));
//        QuerEstoqueProduto.ExecSQL;
////        WRLog('ExecSql da alteração do estoque');
//      end;
//    finally
//      QuerEstoqueProduto.Free;
//    end;
//
//    //Soma todos os locais de estoque
////    WRLog('inicia a soma de todos locais de estoque');
//    QuerComposicao := TWRDataSet.Create(ATransa);
//    try
//      QuerComposicao.SQL.Text := 'select DESCRICAO ' +
//                                 'from PRODUTO_ESTOQUE_LOCAL';
//      QuerComposicao.Open;
//      AListaCampos := TStringList.Create;
//      try
//        while not QuerComposicao.Eof do
//        begin
//          AListaCampos.Add(AnsiUpperCase(QuerComposicao.Fields[0].AsString));
//          QuerComposicao.Next;
//        end;
//        QuerComposicao.Close;
//        ATemp := 0;
//        if AListaCampos.IndexOf('PRINCIPAL') < 0 then
//          AListaCampos.Add('PRINCIPAL');
//        i := 0;
//        while i <= AListaCampos.Count - 1 do
//        begin
//          QuerComposicao.Close;
//          QuerComposicao.SQL.Text := 'select ' + AListaCampos[i] + ' ' +
//                                     'from PRODUTO_ESTOQUE ' +
//                                     'where (CODPRODUTO = :Cod) ' +
//                                     '      and (CODEMPRESA = :Emp)';
//          QuerComposicao.SetParam('Cod', ACodProduto);
//          QuerComposicao.SetParam('Emp', ACodEmpresa);
//          QuerComposicao.Open;
//          ATemp := ATemp + QuerComposicao.FieldByName(AListaCampos[i]).AsFloat;
//          i := i + 1;
//        end;
//      finally
//        AListaCampos.Free;
//      end;
//      QuerComposicao.Close;
//      QuerComposicao.ClearParams;
//      QuerComposicao.SQL.Text := 'update PRODUTO_ESTOQUE set ESTOQUE = :Est ' +
//                                 'where (CODPRODUTO = :CodProduto) ' +
//                                 '      and (CODEMPRESA = :CodEmpresa)';
//      QuerComposicao.SetParam('CodProduto', ACodProduto);
//      QuerComposicao.SetParam('CodEmpresa', ACodEmpresa);
//      QuerComposicao.SetParam('Est', Math.RoundTo(ATemp, -8));
//
//      AQuantAtual := Math.RoundTo(ATemp, -8);
//
//      QuerComposicao.ExecSql;
////      WRLog('ExecSql da soma dos locais estoque');
//    finally
//      QuerComposicao.Free;
//    end;
//  except
//    on E:Exception do
//    begin
//      Result := False;
//      RollbackTransacao(ATransa);
////      WRLog(E.Message);
//      ShowMessageWR('Há informações que não estão corretas, a operação será fechada para garantir a integridade do estoque' +
//        sLineBreak + 'Erro: ' + E.Message, MB_ICONWARNING);
//      Abort;
//    end;
//  end;
////  WRLog('.Finaliza a baixa do estoque.');
//end;

end.
