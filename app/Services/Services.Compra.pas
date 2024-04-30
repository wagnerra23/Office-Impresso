unit Services.Compra;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Frame_CadProduto_Mestre, SysUtils,
  uWRCalculaConfiguracoes, StrUtils, Math;

  // Finalização
  procedure Service_FinalizarCompra(ACodCompra: String; AWRCalc: TWRCalculaConfiguracoes; AtualizaFinanceiro, AtualizaEstoque, AtualizaPreco: Boolean);
  procedure InsertFinanceiro_CriaPacoteDeParcelas(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Parcelas: TDataset; ARazaoSocialFornecedor: String);


  procedure DM_ProdutoCriaOuAtualizaCadastro(ATransa: TFDCustomTransaction; AWRCalc : TWRCalculaConfiguracoes; Tabela_Preco, ANF_Entrada_Produtos_Afetados, ANF_Entrada_Produtos: TDataSet; AAtualizaPreco: Boolean);
  procedure DoAtualizaEstoque(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Produtos: TFDQuery);
  procedure ProdutosProdutoAfetadosIniciar(ANF_Entrada_Produtos_Afetados : TDataset; ATransa: TFDCustomTransaction; ACodProduto: String; AAtualizaPreco: Boolean; AFrmProduto_Frame: TFrame_Produto_Mestre);  // Pode ser executada dentro da tela do Entrada_produto
  procedure DM_Clientes_ProdutoAtualizar(ADataSetProduto_Tabela_Preco: TDataSet; AValor_Novo: Double);

  // Cancelamento
  procedure Service_CancelarFinalizacaoCompra(ACodCompra: String; AtualizaFinanceiro, AtualizaEstoque: Boolean);
  procedure DoCancelaFinanceiro(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Parcelas: TDataset);
  procedure DoCancelarEstoque(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Produtos: TDataset);

  // Edits
  procedure EditNF_Entrada_EditaGeraFinanceiro(ANF_Entrada: TFDQuery; AGeraFinanceiro: Boolean);
  procedure EditNF_Entrada_EditaAtualizaEstoque(ANF_Entrada: TFDQuery; AAtualiza: Boolean);
  procedure EditNF_Entrada_PreencheDT_FATURAMENTO(ANF_Entrada: TFDQuery);
  procedure EditNF_Entrada_LimpaDT_FATURAMENTO(ANF_Entrada: TFDQuery);
  procedure EditNF_Entrada_PreencheCodUsuario(ANF_Entrada: TFDQuery; ACodUsuario: Integer);
implementation

Uses UnitFuncoes, Utils.Produto, SQL.Compra, SQL.Pessoas, Utils.Financeiro, Services.Requisicao, DataModule, WREventos, wrFuncoes,
      Classes.WR, CadProduto_Movimento, Services.Estoque, Utils.Requisicao.Compra, Services.Financeiro;

procedure Service_FinalizarCompra(ACodCompra: String; AWRCalc: TWRCalculaConfiguracoes; AtualizaFinanceiro, AtualizaEstoque, AtualizaPreco: Boolean);
var
  ANF_Entrada, ANF_Entrada_Produtos, ANF_Entrada_Parcelas, ANF_Entrada_Tabela_Preco, ANF_Entrada_Produtos_Afetados: TFDQuery;
  ARazaoSocialFornecedor: String;
  ATransa: TFDCustomTransaction;
begin
  try
    WRLog('[Finalizar Compra] Iniciou Service');
    ATransa := GeraFDTransacao;
    ATransa.StartTransaction;

    WRLog('[Finalizar Compra] Inicializa Datasets');
    ANF_Entrada := SQLNF_Entrada_BuscaCompraPorCodigo(ATransa, ACodCompra);
    ANF_Entrada_Produtos := SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(ATransa, ACodCompra);
    ANF_Entrada_Parcelas := SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(ATransa, ACodCompra);
    ANF_Entrada_Tabela_Preco := SQLNF_Entrada_Tabela_Preco_BuscaPelaCompra(ATransa, ACodCompra);  //Busca o da compra inteira
    ANF_Entrada_Produtos_Afetados := SQLNF_Entrada_Produtos_Afetados_BuscaQuery(ATransa, ACodCompra);
    ARazaoSocialFornecedor := SQLPessoas_BuscaNomePorCodigo(ATransa, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);

    ANF_Entrada.Edit;

    if AtualizaFinanceiro then
    begin
      WRLog('[Finalizar Compra] Inicia Financeiro');
      InsertFinanceiro_CriaPacoteDeParcelas(ATransa, ANF_Entrada, ANF_Entrada_Parcelas, ARazaoSocialFornecedor);
      WRLog('[Finalizar Compra] Finaliza Financeiro');
    end;

    if AtualizaEstoque then
    begin
      WRLog('[Finalizar Compra] Inicia Estoque');
      DM_ProdutoCriaOuAtualizaCadastro(ATransa, AWRCalc, ANF_Entrada_Tabela_Preco, ANF_Entrada_Produtos_Afetados, ANF_Entrada_Produtos, AtualizaPreco);  // AQUI TEM UM POST-COMMIT ESCONDIDO
      DoAtualizaEstoque(ATransa, ANF_Entrada, ANF_Entrada_Produtos);
      WRLog('[Finalizar Compra] Finaliza Estoque');
    end;

    WRLog('[Finalizar Compra] Inicia Requisição');
    Services.Requisicao.Services_SolicitaRequisicaoEmBloco(ATransa,
                                                           ANF_Entrada,
                                                           ANF_Entrada_Produtos,
                                                           'COMPRA',
                                                           TipoDeCompraToEntradaOuSaida(ANF_Entrada.FieldByName('TIPO').AsString),
                                                           ANF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsString,
                                                           '', 'PRINCIPAL', 0,
                                                           StrCodigoToCodEmpresa(ANF_Entrada_Produtos.FieldByName('CODNF_ENTRADA').AsString));
    WRLog('[Finalizar Compra] Finaliza Requisição');
    WRLog('[Finalizar Compra] Inicia Edits na Compra');
    EditNF_Entrada_EditaGeraFinanceiro(ANF_Entrada, AtualizaFinanceiro);
    EditNF_Entrada_EditaAtualizaEstoque(ANF_Entrada, AtualizaEstoque);
    EditNF_Entrada_PreencheDT_FATURAMENTO(ANF_Entrada);
    EditNF_Entrada_PreencheCodUsuario(ANF_Entrada, CodigoUsuario);
    WRLog('[Finalizar Compra] Finaliza Edits na compra');
    ANF_Entrada.Post;
    ATransa.Commit;

    WRLog('[Finalizar Compra] Commitou');
  except
    on E:Exception do
    begin
      WRLog('Service : Erro no serviço que finaliza a compra:' + E.Message);
      ATransa.RollBack;
      raise EWRException.Create('Erro no serviço que finaliza a compra: ' + E.Message);
    end;
  end;
end;

procedure InsertFinanceiro_CriaPacoteDeParcelas(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Parcelas: TDataset; ARazaoSocialFornecedor: String);
begin
  // GERAR A PARTE FINANCEIRA //
  ANF_Entrada_Parcelas.First;
  while NOT ANF_Entrada_Parcelas.Eof do
  begin
    ServicesFinanceiro_Lancamento_Financeiro(ATransaction,
                          ProximoCodigoTrans(ATransaction, 'Financeiro'),
                          ANF_Entrada_Parcelas.FieldByName('TIPO').AsString,
                          'FOR',
                          ANF_Entrada_Parcelas.FieldByName('CODCONTA').AsInteger,
                          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
                          ARazaoSocialFornecedor,
                          ANF_Entrada_Parcelas.FieldByName('DOCUMENTO').AsString,
                          ANF_Entrada.FieldByName('NUN_NF').AsString,
                          '0',
                          ANF_Entrada_Parcelas.FieldByName('TipoPagto').AsString,
                          ANF_Entrada.FieldByName('CODCONDICAOPAGTO').AsString,
                          ANF_Entrada.FieldByName('CONDICAOPAGTO').AsString,
                          ANF_Entrada_Parcelas.FieldByName('CODPlanoContas').AsString,
                          ANF_Entrada_Parcelas.FieldByName('HISTORICO').AsString,
                          'ATIVO',
                          '0',
                          ANF_Entrada.FieldByName('CODIGO').AsString,
                          ANF_Entrada_Parcelas.FieldByName('CODIGO').AsString,
                          '',
                          CodigoUsuario,
                          '0',
                          EmpresaAtiva,
                          ANF_Entrada_Parcelas.FieldByName('Valor').AsCurrency,
                          ANF_Entrada_Parcelas.FieldByName('DESCONTO').AsFloat,
                          ANF_Entrada_Parcelas.FieldByName('JUROS').AsFloat,
                          0, {TODO: Verificar se o valor de previsão será este mesmo}
                          ANF_Entrada_Parcelas.FieldByName('CHEQUE_NUMERO').AsString,
                          DataHoraSys,
                          ANF_Entrada_Parcelas.FieldByName('VENCTO').AsDateTime,
                          ANF_Entrada_Parcelas.FieldByName('DATAPAGTO').AsDateTime,
                          ANF_Entrada.FieldByName('DT_NOTA').AsDateTime,
                          'NF_ENTRADA',
                          ANF_Entrada_Parcelas.FieldByName('CODIGO').AsInteger,
                          '',
                          ANF_Entrada_Parcelas.FieldByName('DT_COMPETENCIA').AsDateTime);
    ANF_Entrada_Parcelas.Next;
  end;
end;

procedure DM_ProdutoCriaOuAtualizaCadastro(ATransa: TFDCustomTransaction; AWRCalc : TWRCalculaConfiguracoes; Tabela_Preco, ANF_Entrada_Produtos_Afetados, ANF_Entrada_Produtos: TDataSet; AAtualizaPreco: Boolean);
var
  ADM: TDM;
  AConfirma_S_OU_N, ACampo, ACampo2: String;
  AWREventosCadastro: TWREventosCadastro;
  AFrmProduto_Frame: TFrame_Produto_Mestre;
begin
  ADM := TDM.Create(nil);
  try
    ADM.DefineTransacaoFD(ATransa);
    ANF_Entrada_Produtos.First;
    while not ANF_Entrada_Produtos.Eof do
    begin
      ADM.Produto.Close;
      ADM.Produto.ParamByName('CODIGO').AsString:=ANF_Entrada_Produtos.fieldByName('CODPRODUTO').AsString;
      ADM.Produto.Open;
      ADM.Produto_Composicao.Open;
      ADM.Produto_Centro_Trabalho.Open;
      ADM.Produto_Fornecedor.Open;

      if ADM.Produto.RecordCount = 0  then
      begin
        ADM.Produto.Insert;

//        ConfigCamposForm.PreencheValoresIniciaisDataSet(ADM.Produto);        // nÃO
        AWREventosCadastro := TWREventosCadastro.Create(nil);
        AWREventosCadastro.Transacao := TFDTransaction(ATransa);            // Quem é esse cara?
//        AWREventosCadastro.Carregar;
        AWREventosCadastro.Regra_ValorInicial(ADM.Produto, 'PRODUTO', 'TFrmProduto_ProdutoSimples_Frame');

        if (ANF_Entrada_Produtos.fieldByName('CODPRODUTO').AsString = '') then
        begin
          ANF_Entrada_Produtos.Edit;
          ANF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString := ADM.Produto.FieldByName('CODIGO').AsString;
          ANF_Entrada_Produtos.Post;
        end else
          ADM.Produto.FieldByName('CODIGO').AsString := ANF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;
      end else
        ADM.Produto.Edit;

      if not AAtualizaPreco then
      begin
        ACampo := 'VALOR';
        ACampo2 := 'CUSTO';
      end;
      DSCopiarCamposIguais(ANF_Entrada_Produtos, ADM.Produto, ['CODIGO','QUANT', ACampo, ACampo2, 'TOTAL', 'UN_SUBUNIDADE', 'UN_SUBUNIDADE_DESCRICAO']);   // ADICIONADO 'QUANT','TOTAL' VAMOS VER COMO FICA

      if ADM.Produto.FieldByName('UN_PADRAO_COMPRA').IsNull then
        ADM.Produto.FieldByName('UN_PADRAO_COMPRA').AsString := ANF_Entrada_Produtos.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;

      ADM.Produto_Tabela_Preco.Close;
      ADM.Produto_Tabela_Preco.ParamByName('CODIGO').AsString := ANF_Entrada_Produtos.fieldByName('CODPRODUTO').AsString;
      ADM.Produto_Tabela_Preco.Open;
      Tabela_Preco.First;
      while not Tabela_Preco.Eof do
      begin
        if ADM.Produto_Tabela_Preco.Locate('CODPRODUTO_TABELA', Tabela_Preco.FieldByName('CODPRODUTO_TABELA').Value, []) then
          ADM.Produto_Tabela_Preco.Edit
        else
          ADM.Produto_Tabela_Preco.Insert;
        DSCopiarCamposIguais(Tabela_Preco, ADM.Produto_Tabela_Preco, []);
        ADM.Produto_Tabela_Preco.Post;
        Tabela_Preco.Next;
      end;

      AtualizaDtAlteracao(ADM.Produto);

      if ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString = '' then   // Se não tiver padrão, coloca
      begin
        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value    := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value      := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value;
        ADM.Produto.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
      end;
      ADM.Produto.FieldByName('ATIVO').AsString := 'S';
      ADM.Produto.Post;
      Assert(AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString <> '', 'Código do Fornecedor não definido');
      Assert(ANF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString <> '', 'Código do Produto não definido');
      if Not ADM.Produto_Fornecedor.Locate('PESSOA_RESPONSAVEL_CODIGO', AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value,[]) then
      begin
        ADM.Produto_Fornecedor.Insert;
        ADM.Produto_Fornecedor.FieldByName('CODIGO').AsInteger                   := Trunc(GetProximoCodigoGen('CR_PRODUTO_FORNECEDOR'));
        ADM.Produto_Fornecedor.FieldByName('CODPRODUTO').Value                   := ANF_Entrada_Produtos.FieldByName('CODPRODUTO').Value;
        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value    := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value      := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value;
        ADM.Produto_Fornecedor.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := AWRCalc.DBVendaOuCompra.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
      end else
        ADM.Produto_Fornecedor.Edit;


      if ANF_Entrada_Produtos.FieldByName('NF_CODFABRICA').AsString <> '' then
        ADM.Produto_Fornecedor.FieldByName('CODFABRICA').Value        := ANF_Entrada_Produtos.FieldByName('NF_CODFABRICA').Value;
      ADM.Produto_Fornecedor.FieldByName('CODFABRICA_ORIGINAL').Value := ANF_Entrada_Produtos.FieldByName('NF_CODFABRICA_ORIGINAL').Value;
      ADM.Produto_Fornecedor.FieldByName('DT_ULTIMA_COMPRA').Value    := AWRCalc.DBVendaOuCompra.FieldByName('DT_NOTA').Value;
      ADM.Produto_Fornecedor.FieldByName('CUSTO_VENDA').Value         := ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').Value;  //CUSTO_VENDA
      ADM.Produto_Fornecedor.Post;

      if Not Assigned(AFrmProduto_Frame) then
        AFrmProduto_Frame:= TFrame_Produto_Mestre.Create(nil);

      // TODO: Achar os dependentes e atualizar
//      if TConfig.ReadBoolean('ATUALIZA_PRODUTO_FINAL') then
//        AConfirma_S_OU_N := 'S'
//      else
//        AConfirma_S_OU_N := 'N';

      ProdutosProdutoAfetadosIniciar(ANF_Entrada_Produtos_Afetados, ATransa, ADM.Produto.FieldByName('CODIGO').AsString, AAtualizaPreco, AFrmProduto_Frame);

      DM_Clientes_ProdutoAtualizar(ADM.Produto_Tabela_Preco, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat ); // Tabela de preço


      ANF_Entrada_Produtos.Next;
    end;
  finally
    AFrmProduto_Frame.Free;
    ADM.Free;
  end;

end;

procedure DoAtualizaEstoque(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Produtos: TFDQuery);
var
  ACodProduto: string;
  AQuant: Double;
  ACodProduto_Movimento: Integer;
begin
  ANF_Entrada_Produtos.First;
  while not ANF_Entrada_Produtos.Eof do
  begin
    AQuant      := ANF_Entrada_Produtos.FieldByName('QUANT').AsFloat;
    ACodProduto := ANF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;

    if not MatchStr(ANF_Entrada.FieldByName('TIPO').AsString, ['SAÍDA DE MERCADORIA', 'TRANSFERÊNCIA', 'REMESSA DE CONSERTO']) then
    begin
     (* //Composição
      QuerComposicao.Close;
      QuerComposicao.ParamByName('Codigo').AsInteger      := ANF_Entrada_Produtos.FieldByName('CODIGO').AsInteger;
      QuerComposicao.ParamByName('CodNFEntrada').AsString := ANF_Entrada.FieldByName('CODIGO').AsString;
      QuerComposicao.Open;
      if not QuerComposicao.IsEmpty then
      begin
        {Caso exista algum item na composição que informe como será a conversão da unidade, apenas a conversão
         deve dar entrada no estoque. Caso contrário, o produto comprado é que entra}
        while not QuerComposicao.Eof do
        begin
          MovimentaEstoque(ANF_Entrada.Transaction, QuerComposicao.FieldByName('CODPRODUTO').AsString,
            GetCodEmpresaFromCodigo(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, QuerComposicao.FieldByName('LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
            DataHoraSys, 'Modificação realizada através da Composição pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
            QuerComposicao.FieldByName('QUANT').AsFloat, QuerComposicao.FieldByName('CODPRODUTO_LOTE').AsInteger,
            CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString);

          FDM.Produto_Fornecedor.Close;
          FDM.Produto_Fornecedor.ParamByName('CodProduto').AsString    := QuerComposicao.FieldByName('CODPRODUTO').AsString;
          FDM.Produto_Fornecedor.ParamByName('CodFornecedor').AsString := ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
          FDM.Produto_Fornecedor.Open;
          TDM.ProdutoRegistraEntradaFornecedorComposicao(FDM.Produto_Fornecedor, QuerComposicao, ANF_Entrada);
          FDM.Produto_Fornecedor.Post;

          QuerComposicao.Next;
        end;
      end else
      begin      *)

        //Produto principal
        MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Normal', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
//            end;
    end
    else if ANF_Entrada.FieldByName('TIPO').AsString = 'SAÍDA DE MERCADORIA' then
    begin
      MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
        'Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
        -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Devolução', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
    end
    else if ANF_Entrada.FieldByName('TIPO').AsString = 'REMESSA DE CONSERTO' then
    begin
      MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
        'Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
        -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Devolução', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
    end
    else if ANF_Entrada.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA' then
    begin
      if ANF_Entrada.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //0 - Entre Estoques, 1 - Entre Empresas
      begin
        //Retira do estoque de Origem
        MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, ANF_Entrada.FieldByName('CODEMPRESA_ORIGEM').AsString,
          ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
          DataHoraSys, 'Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);

        //Entrada no estoque de Destino
        MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, ANF_Entrada.FieldByName('CODEMPRESA_DESTINO').AsString,
          ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
          DataHoraSys, 'Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
      end else
      begin
        //Retira do estoque de Origem
        MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString,
          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);

        //Entrada no estoque de Destino
        MovimentaEstoque(ANF_Entrada.Transaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString,
          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Transferencia', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
      end;
    end;
    ANF_Entrada_Produtos.Next;
  end;
end;

procedure ProdutosProdutoAfetadosIniciar(ANF_Entrada_Produtos_Afetados : TDataset; ATransa: TFDCustomTransaction; ACodProduto: String; AAtualizaPreco: Boolean; AFrmProduto_Frame: TFrame_Produto_Mestre);  // Pode ser executada dentro da tela do Entrada_produto
var                                                                                             // Deve ser sempre executada na atualização
  APoint: TBookmark;
  QuerX: TFDQuery;
begin
  ANF_Entrada_Produtos_Afetados.DisableControls;
  try
    APoint := ANF_Entrada_Produtos_Afetados.GetBookmark;
    ANF_Entrada_Produtos_Afetados.Open;

    QuerX := GeraFDQuery(ATransa);
    try
      QuerX.SQL.Text := 'select distinct P.CODIGO, P.DESCRICAO, P.CUSTO, P.VALOR ' +
                         'from PRODUTO_COMPOSICAO PC ' +
                         'left join PRODUTO P on (P.CODIGO = PC.CODPRODUTO_COMPOSICAO) ' +
                         'where (PC.CODPRODUTO = :CodProduto)';
      QuerX.ParamByName('CodProduto').Value := ACodProduto;
      QuerX.Open;
      QuerX.FetchAll;

//      DELETA TUDO E COMEÇA DENOVO;
      while NOT ANF_Entrada_Produtos_Afetados.Eof do
        ANF_Entrada_Produtos_Afetados.Delete;

      ANF_Entrada_Produtos_Afetados.Refresh;
      // Aqui deve criar a clase e devolver o form

      // NECESSÁRIO REFACTORAR
//      AguardeBegin;   // aqui deve iniciar o agurade
//      AguardeProgressoMaximo(QuerX.RecordCount);
//      AguardeMensagem('Aguarde enquanto os produtos são atualizados...');

      QuerX.First;
      while not QuerX.Eof do
      begin

        ANF_Entrada_Produtos_Afetados.Insert;
        ANF_Entrada_Produtos_Afetados.FieldByName('CODIGO').AsInteger                 := Trunc(GetProximoCodigoGen('CR_NF_ENTRADA_PRODUTOS_AFETADOS'));
        ANF_Entrada_Produtos_Afetados.FieldByName('CODNF_ENTRADA').AsString           := ANF_Entrada_Produtos_Afetados.FieldByName('CODNF_ENTRADA').AsString;
        ANF_Entrada_Produtos_Afetados.FieldByName('CODNF_ENTRADA_PRODUTOS').AsInteger := ANF_Entrada_Produtos_Afetados.FieldByName('CODIGO').AsInteger;

        with AFrmProduto_Frame do
        try
          Hide;
          CloseOpen_AbrirRegistro(QuerX.FieldByName('CODIGO').AsString);
          ANF_Entrada_Produtos_Afetados.FieldByName('CODPRODUTO').AsString      := Cadastro.FieldByName('CODIGO').AsString;
          ANF_Entrada_Produtos_Afetados.FieldByName('DESCRICAO').AsString       := Cadastro.FieldByName('DESCRICAO').AsString;
          ANF_Entrada_Produtos_Afetados.FieldByName('CUSTO_ANTERIOR').AsFloat   := Cadastro.FieldByName('CUSTO').AsFloat;
          ANF_Entrada_Produtos_Afetados.FieldByName('VALOR_ANTERIOR').AsFloat   := Cadastro.FieldByName('VALOR').AsFloat;
          ANF_Entrada_Produtos_Afetados.FieldByName('CUSTO').AsFloat            := Cadastro.FieldByName('CUSTO').AsFloat;
          ANF_Entrada_Produtos_Afetados.FieldByName('VALOR').AsFloat            := Cadastro.FieldByName('VALOR').AsFloat;

          if AAtualizaPreco then
          begin

            Cadastro.Transaction := ATransa;
            Produto_Composicao.Transaction := ATransa;
            Cadastro.Edit;
            WRCalc.DBComposicao.Refresh;
            WRCalc.AtualizaOsPrecosComposicao(ATransa);
            if Cadastro.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'N' then //QUANDO A MARGEM NÂO É FIXA ELA VARIA DEIXANDO O VALOR NO PRODUTO ORIGINAL, MAS MOSTRANDO O QUANDO PERDE POR
              WRCalc.ProdutoAlterarValor(ANF_Entrada_Produtos_Afetados.FieldByName('VALOR_ANTERIOR').AsFloat); //REALIZAR ESSA AÇÂO.
            ANF_Entrada_Produtos_Afetados.FieldByName('ATUALIZAR_VALOR').AsString := 'S';
            WRCalc.CalcBuild;
            WRCalc.SuperCalc;
            ANF_Entrada_Produtos_Afetados.FieldByName('CUSTO').AsFloat            := Cadastro.FieldByName('CUSTO').AsFloat;
            ANF_Entrada_Produtos_Afetados.FieldByName('VALOR').AsFloat            := Cadastro.FieldByName('VALOR').AsFloat;
            Cadastro.Post;
          end
          else
          begin
            ANF_Entrada_Produtos_Afetados.FieldByName('ATUALIZAR_VALOR').AsString := 'N';
          end;
        finally
        end;
        ANF_Entrada_Produtos_Afetados.Post;

      // PEGA O VALOR ANTIGO
      // AQUI DE CRIAR O CADASTRO DE PRODUTO,
      // ABRIR E RECALCULAR O PREÇO DO PRODUTO, CALCbUILD, SRPcOPIA

      // PODE APERTAR O BOTÃO btnAtualizarPrecosClick, LA ELE APAGA ATÉ A DIFERENÇA LANÇADA MANUALMENTE. ISSO É IMPORTANTE

//        AguardeAvancarProgresso;
        QuerX.Next;
      end;
    finally
      QuerX.Free;
//      FrmProduto.Free;
//      AguardeEnd;
    end;

    if ANF_Entrada_Produtos_Afetados.BookmarkValid(APoint) then
      ANF_Entrada_Produtos_Afetados.GotoBookmark(APoint);
  finally
    ANF_Entrada_Produtos_Afetados.EnableControls;
  end;
end;

procedure DM_Clientes_ProdutoAtualizar(ADataSetProduto_Tabela_Preco: TDataSet; AValor_Novo: Double);  // Funcão deve Morrer
var                                                                                                   // Essa funcao foi feita nova e não foi modificada
  AValor, APercAplicado: Double;
  ADataAtual: TDateTime;
  ACampoAtualizar, ACampoZerar: string;
begin
  //DONE: GRAVE - Revisar valores com 0, arrumar o SQL
  try
    ADataAtual := 0;
    {QuerXProduto_Tabela_Preco.SQL.Text :=
      'update PRODUTO_TABELA_PRECO P set ' +
      '    P.VALOR = iif(P.TEM_MARGEM_FIXA_CONTIBUICAO = ''S'', (cast(:NovoValor as double precision) - (cast(:NovoValor as double precision) * (P.PERC_DESCONTO / 100))), P.VALOR), ' +
      '    P.PERC_DESCONTO = iif(P.TEM_MARGEM_FIXA_CONTIBUICAO = ''S'', P.PERC_DESCONTO, (-(((P.VALOR / cast(:NovoValor as double precision)) - 1) * 100))), ' +
      '    P.DT_ALTERACAO = current_timestamp ' +
      'where (P.CODPRODUTO = :CodProduto)';
    QuerXProduto_Tabela_Preco.ParamByName('CodProduto').AsString := ACodProduto;
    QuerXProduto_Tabela_Preco.ParamByName('NovoValor').AsFloat   := AValor_Novo;
    QuerXProduto_Tabela_Preco.ExecSQL;}

    ADataSetProduto_Tabela_Preco.DisableControls;
    try
      ADataSetProduto_Tabela_Preco.First;
      while not ADataSetProduto_Tabela_Preco.Eof do
      begin
        ADataSetProduto_Tabela_Preco.Edit;
        if ADataSetProduto_Tabela_Preco.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString = 'S' then
        begin
          if ADataSetProduto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat > 0 then
            AValor := PercAdd(AValor_Novo, ADataSetProduto_Tabela_Preco.FieldByName('PERC_ACRESCIMO').AsFloat)
          else
            AValor := PercDesconto(AValor_Novo, ADataSetProduto_Tabela_Preco.FieldByName('PERC_DESCONTO').AsFloat);
          if not VarSameValueWR(AValor, ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat := AValor;
        end else
        begin
          APercAplicado := PercAplicado(ADataSetProduto_Tabela_Preco.FieldByName('VALOR').AsFloat, AValor_Novo);
          if APercAplicado > 0 then
          begin
            ACampoAtualizar := 'PERC_ACRESCIMO';
            ACampoZerar     := 'PERC_DESCONTO';
          end else
          begin
            ACampoAtualizar := 'PERC_DESCONTO';
            ACampoZerar     := 'PERC_ACRESCIMO';
            APercAplicado   := -APercAplicado;
          end;

          if not VarSameValueWR(APercAplicado, ADataSetProduto_Tabela_Preco.FieldByName(ACampoAtualizar).AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName(ACampoAtualizar).AsFloat := APercAplicado;

          if not IsZero(ADataSetProduto_Tabela_Preco.FieldByName(ACampoZerar).AsFloat) then
            ADataSetProduto_Tabela_Preco.FieldByName(ACampoZerar).AsFloat := 0;
        end;

        //Grava somente se algo mudou
        if ADataSetProduto_Tabela_Preco.Modified then
        begin
          if ADataAtual = 0 then
            ADataAtual := DataHoraSys;
          ADataSetProduto_Tabela_Preco.FieldByName('DT_ALTERACAO').AsDateTime := ADataAtual;
          ADataSetProduto_Tabela_Preco.Post;
        end else
          ADataSetProduto_Tabela_Preco.Cancel;
        ADataSetProduto_Tabela_Preco.Next;
      end;
      ADataSetProduto_Tabela_Preco.First;
    finally
      ADataSetProduto_Tabela_Preco.EnableControls;
    end;
  except

  end;
end;

// Cancelamento da compra
procedure Service_CancelarFinalizacaoCompra(ACodCompra: String; AtualizaFinanceiro, AtualizaEstoque: Boolean);
var
  ANF_Entrada, ANF_Entrada_Produtos, ANF_Entrada_Parcelas, ANF_Entrada_Tabela_Preco, ANF_Entrada_Produtos_Afetados: TFDQuery;
  ATransa: TFDCustomTransaction;
begin
  try
    ATransa := GeraFDTransacao;
    ATransa.StartTransaction;
    ANF_Entrada := SQLNF_Entrada_BuscaCompraPorCodigo(ATransa, ACodCompra);
    ANF_Entrada_Produtos := SQLNF_Entrada_Produtos_BuscaProdutosDaCompra(ATransa, ACodCompra);
    ANF_Entrada_Parcelas := SQLNF_Entrada_Parcelas_BuscaParcelasDaCompra(ATransa, ACodCompra);
    ANF_Entrada.Edit;

    if AtualizaFinanceiro then
      DoCancelaFinanceiro(ATransa, ANF_Entrada, ANF_Entrada_Parcelas);

    if AtualizaEstoque then
      DoCancelarEstoque(ATransa, ANF_Entrada, ANF_Entrada_Produtos);

    EditNF_Entrada_EditaGeraFinanceiro(ANF_Entrada, False);
    EditNF_Entrada_EditaAtualizaEstoque(ANF_Entrada, False);
    EditNF_Entrada_LimpaDT_FATURAMENTO(ANF_Entrada);

    ANF_Entrada.Post;
    ATransa.Commit;
  except
    ATransa.RollBack;
  end;
end;

procedure DoCancelaFinanceiro(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Parcelas: TDataset);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(ATransaction);
  try
    //Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
    QuerX.SQL.Text := 'update FINANCEIRO F set F.STATUS = :STATUS,            ' +
                      '                        F.CODUSUARIO = :CODUSUARIO,    ' +
                      '                        F.DT_ALTERACAO = :DT_ALTERACAO ' +
                      'where (CODNF_ENTRADA = :CODNF_ENTRADA)';
    QuerX.ParamByName('CODNF_ENTRADA').AsString  := ANF_Entrada.FieldByName('CODIGO').AsString;
    QuerX.ParamByName('STATUS').AsString         := 'INATIVO EXCLUIDO';
    QuerX.ParamByName('CODUSUARIO').AsInteger    := CodigoUsuario;
    QuerX.ParamByName('DT_ALTERACAO').AsDateTime := now;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

procedure DoCancelarEstoque(ATransaction: TFDCustomTransaction; ANF_Entrada, ANF_Entrada_Produtos: TDataset);
var
  AQuant: Double;
  ACodProduto: String;
  ACodProduto_Movimento: Integer;
begin
  ANF_Entrada_Produtos.First;
  while not ANF_Entrada_Produtos.Eof do
  begin
    AQuant      := ANF_Entrada_Produtos.FieldByName('QUANT').AsFloat;
    ACodProduto := ANF_Entrada_Produtos.FieldByName('CODPRODUTO').AsString;

    if (ANF_Entrada.FieldByName('TIPO').AsString <> 'SAÍDA DE MERCADORIA') and (ANF_Entrada.FieldByName('TIPO').AsString <> 'TRANSFERÊNCIA') and (ANF_Entrada.FieldByName('TIPO').AsString <> 'REMESSA DE CONSERTO') then
    begin
     (* QuerComposicao.Close;
      QuerComposicao.ParamByName('Codigo').AsInteger      := ANF_Entrada_Produtos.FieldByName('CODIGO').AsInteger;
      QuerComposicao.ParamByName('CodNFEntrada').AsString := ANF_Entrada.FieldByName('CODIGO').AsString;
      QuerComposicao.Open;
      while not QuerComposicao.Eof do
      begin
        //Composição
        MovimentaEstoque(ANF_Entrada.Transaction, QuerComposicao.FieldByName('CODPRODUTO').AsString,
          GetCodEmpresaFromCodigo(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, QuerComposicao.FieldByName('LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString,
          DataHoraSys, 'Cancelamento de Modificação realizada através da Composição pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          -QuerComposicao.FieldByName('QUANT').AsFloat, QuerComposicao.FieldByName('CODPRODUTO_LOTE').AsInteger,
          CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString);
        QuerComposicao.Next;
      end;    *)

      //Produto Principal
      MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
        'Cancelamento de Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
        -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelado', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
    end;

    if ANF_Entrada.FieldByName('TIPO').AsString = 'SAÍDA DE MERCADORIA' then
      MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
        'Cancelamento de Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
        AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelado', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);

    if ANF_Entrada.FieldByName('TIPO').AsString = 'REMESSA DE CONSERTO' then
      MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
        'Cancelamento de Modificação realizada pela Entrada de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
        AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelado', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);


    if ANF_Entrada.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA' then
    begin
      if ANF_Entrada.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //0 - Entre Estoques, 1 - Entre Empresas
      begin
        //Entrada no estoque de Origem (Retorno)
        MovimentaEstoque(ATransaction, ACodProduto, ANF_Entrada.FieldByName('CODEMPRESA_ORIGEM').AsString,
          ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);

        //Retirada do estoque de Destino (Retorno)
        MovimentaEstoque(ATransaction, ACodProduto, ANF_Entrada.FieldByName('CODEMPRESA_DESTINO').AsString,
          ANF_Entrada_Produtos.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
      end else
      begin
        //Entrada no estoque de Origem (Retorno)
        MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString,
          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);

        //Retirada do estoque de Destino (Retorno)
        MovimentaEstoque(ATransaction, ACodProduto, StrCodigoToCodEmpresa(ANF_Entrada.FieldByName('CODIGO').AsString).ToString, ANF_Entrada.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString,
          ANF_Entrada.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, DataHoraSys,
          'Cancelamento de Modificação realizada pela Transferência de Mercadoria ' + ANF_Entrada.FieldByName('CODIGO').AsString + ' Nota Nº ' + ANF_Entrada.FieldByName('NUN_NF').AsString,
          -AQuant, ANF_Entrada_Produtos.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, ANF_Entrada.FieldByName('CODIGO').AsString, '', ANF_Entrada_Produtos.FieldByName('VALOR_COMPRA').AsFloat,
          ANF_Entrada_Produtos.FieldByName('CALC_VVENDA_CUSTO').AsFloat, ANF_Entrada_Produtos.FieldByName('VALOR').AsFloat, 'FrmNF_Entrada', 'Cancelamento', ANF_Entrada.FieldByName('TIPO').AsString, ACodProduto_Movimento);
      end;
    end;
    ANF_Entrada_Produtos.Next;
  end;
end;

// Edits
procedure EditNF_Entrada_EditaGeraFinanceiro(ANF_Entrada: TFDQuery; AGeraFinanceiro: Boolean);
begin
  ANF_Entrada.FieldByName('GERA_FINANCEIRO').AsString := IfThen(AGeraFinanceiro, 'S', 'N');
end;

procedure EditNF_Entrada_EditaAtualizaEstoque(ANF_Entrada: TFDQuery; AAtualiza: Boolean);
begin
  ANF_Entrada.FieldByName('ATUALIZA_ESTOQUE').AsString := IfThen(AAtualiza, 'S', 'N');
end;

procedure EditNF_Entrada_PreencheDT_FATURAMENTO(ANF_Entrada: TFDQuery);
begin
  ANF_Entrada.FieldByName('DT_FATURAMENTO').AsDateTime := DataHoraSys;
end;

procedure EditNF_Entrada_LimpaDT_FATURAMENTO(ANF_Entrada: TFDQuery);
begin
  ANF_Entrada.FieldByName('DT_FATURAMENTO').Clear;
end;

procedure EditNF_Entrada_PreencheCodUsuario(ANF_Entrada: TFDQuery; ACodUsuario: Integer);
begin
  ANF_Entrada.FieldByName('CODUSUARIO').AsInteger := ACodUsuario;      //<<<<<<<< isso marca o último responsável
end;

end.
