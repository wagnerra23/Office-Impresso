unit Services.Requisicao;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

  procedure Services_SolicitaRequisicaoEmBloco(ATransacao: TFDCustomTransaction; ACadastro, AProduto: TDataSet;
                                               ATipo, AEntradaSaida, ACodOS, AObservacao, ALocalEstoque: String;
                                               ACodCentroTrabalho, ACodEmpresa: Integer);
  procedure Services_SolicitaRequisicaoPelaVenda(ATransacao: TFDTransaction; AProduto: TDataSet; NF_Entrada_Saida: String);
  //procedure Services_SolicitaRequisicaoPeloEstoque(ATransacao: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer);
  //procedure Services_SolicitaRequisicaoPelaProducao(ATransacao: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer);

  procedure BaixaRequisicao(ACodigo: Integer; AQuant: Double; AStatus :String;
                            ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao :String);
  procedure EditProdutoRequisicao_RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
  procedure EditProdutoRequisicao_CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
  procedure EditProdutoRequisicao_EditaBaixaRequisicao(AQuerRequisicao: TDataset; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer);

  function InsertProdutoRequisicao_CriaRequisicao(ADescricao, ACodProduto, AProduto, AUnidade, ACodOS,
     ALocalEstoqueOrigem, ALocalEstoqueDestino, AObservacao, AEntradaSaida: String; AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
     ACodCentroTrabalho, ACodEmpresa, ACodUsuario: Integer; AQuerRequisicao: TDataset; ACodCentro_Custo: Variant;
     AQuant: Double = 0; ACodRequisicao: Integer = 0): Integer;
  procedure InsertProdutoRequisicao_CriaBlocoDeRequisicoes(ATipo: String; AProduto, AQuerRequisicao: TDataset; AEntradaSaida, ALocalEstoque, ACodOS, AObservacao: String; ACodEmpresa, ACodCentroTrabalho: Integer);

implementation

Uses UnitFuncoes, wrFuncoes, CadProduto_Movimento, Controller.Requisicao, Utils.Requisicao,
Utils.Requisicao.Venda, Utils.Requisicao.Compra, SQL.Produto_Requisicao, Services.Venda;

procedure Services_SolicitaRequisicaoEmBloco(ATransacao: TFDCustomTransaction; ACadastro, AProduto: TDataSet;
                                             ATipo, AEntradaSaida, ACodOS, AObservacao, ALocalEstoque: String;
                                             ACodCentroTrabalho, ACodEmpresa: Integer);
var
  AQuerRequisicao: TFDQuery;
begin
  // Aqui não tem transação envolvida, pois a transação vem da finalização da compra
  AQuerRequisicao := SQLProduto_Requisicao_SelectVazio(ATransacao);

  // Função que insere
  InsertProdutoRequisicao_CriaBlocoDeRequisicoes(ATipo, AProduto, AQuerRequisicao, AEntradaSaida, ALocalEstoque, ACodOS, AObservacao, ACodEmpresa, ACodCentroTrabalho);

  // Aqui deve preencher o DT_REQUISICAO da compra ou da venda
  EditVenda_PreencheDataRequisicao(ACadastro, DataHoraSys);
end;

procedure InsertProdutoRequisicao_CriaBlocoDeRequisicoes(ATipo: String; AProduto, AQuerRequisicao: TDataset; AEntradaSaida, ALocalEstoque, ACodOS, AObservacao: String; ACodEmpresa, ACodCentroTrabalho: Integer);
begin
  AProduto.First;
  while not AProduto.eof do
  begin
    InsertProdutoRequisicao_CriaRequisicao(ATipo,
                                          AProduto.FieldByName('CODPRODUTO').AsString,
                                          AProduto.FieldByName('DESCRICAO').AsString,
                                          AProduto.FieldByName('UNIDADE').AsString,
                                          ACodOS,
                                          AProduto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                                          ALocalEstoque,//ALocalEstoqueDestino,
                                          AObservacao,
                                          AEntradaSaida,
                                          AProduto.FieldByName('QUANT').AsFloat,
                                          AProduto.FieldByName('CUSTO').AsFloat,
                                          AProduto.FieldByName('VALOR').AsFloat,
                                          AProduto.FieldByName('VALOR_COMPRA').AsFloat,
                                          ACodCentroTrabalho,//ACodCentroTrabalho,
                                          ACodEmpresa,
                                          Usuario.Codigo,
                                          AQuerRequisicao,
                                          AProduto.FieldByName('CODCENTRO_CUSTO').AsInteger);

    AProduto.Next;
  end;
end;

procedure Services_SolicitaRequisicaoPelaVenda(ATransacao: TFDTransaction; AProduto: TDataSet; NF_Entrada_Saida: String);
var
  AQuerRequisicao: TFDQuery;
  ACodOS, AObservacao, AEntradaSaida, ATipo, ALocalEstoque: String;
  ACodEmpresa, ACodCentroTrabalho: Integer;
begin
  // Aqui não tem transação envolvida, pois a transação vem do faturamento
  AQuerRequisicao := SQLProduto_Requisicao_SelectVazio(ATransacao);

  // Preenche os parâmetros necessário para inserção da requisição
  ACodEmpresa   := StrCodigoToCodEmpresa(AProduto.FieldByName('CODVENDA').AsString);  // Busca código da empresa pelo código da compra
  AEntradaSaida := NF_Entrada_SaidaToEntradaOuSaida(NF_Entrada_Saida);
  ACodOS        := AProduto.FieldByName('CODVENDA').AsString;
  AObservacao   := AProduto.FieldByName('OBS_PRODUCAO').AsString;
  ACodCentroTrabalho := 0;
  ALocalEstoque := 'PRINCIPAL';
  ATipo := 'VENDA';

  // Função que insere
  InsertProdutoRequisicao_CriaBlocoDeRequisicoes(ATipo, AProduto, AQuerRequisicao, AEntradaSaida, ALocalEstoque, ACodOS, AObservacao, ACodEmpresa, ACodCentroTrabalho);
end;

//procedure Services_SolicitaRequisicaoPeloEstoque(AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer);
//var
//  ATransacao: TFDCustomTransaction;
//begin
//  // Aqui tem transação envolvida, pois vai receber o próprio dataset
//  ATransacao := GeraFDTransacao;
//  ATransacao.StartTransaction;
//  try
//    AQuerRequisicao := GeraFDQuery(ATransacao);
//    AQuerRequisicao.SQL.Text := 'select * from produto_requisicao where codigo = 0';
//    AQuerRequisicao.Open;
//
//    InsertProdutoRequisicao_CriaRequisicao(ADescricao,
//                                           AProduto.FieldByName('CODPRODUTO').AsString,
//                                           AProduto.FieldByName('DESCRICAO').AsString,
//                                           AProduto.FieldByName('UNIDADE').AsString,
//                                           ACodOS,
//                                           AProduto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
//                                           ALocalEstoqueDestino,
//                                            AObservacao,
//                                            AEntradaSaida,
//                                            AProduto.FieldByName('QUANT').AsFloat,
//                                            AProduto.FieldByName('CUSTO').AsFloat,
//                                            AProduto.FieldByName('VALOR').AsFloat,
//                                            AProduto.FieldByName('VALOR_COMPRA').AsFloat,
//                                            ACodCentroTrabalho,
//                                            ACodEmpresa,
//                                            Usuario.Codigo,
//                                            AQuerRequisicao,
//                                            AProduto.FieldByName('CODCENTRO_CUSTO').AsInteger);
//
//    ATransacao.Commit;
//  finally
//    ATransacao.Rollback;
//  end;
//end;

//procedure Services_SolicitaRequisicaoPelaProducao(ATransacao: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer);
//begin
//  // Aqui tem transação envolvida, pois vai receber o próprio dataset
//end;

procedure Services_SolicitaRequisicao(ATransacao: TFDCustomTransaction; AProduto: TDataSet; AEntradaSaida, ADescricao, ACodOS, AObservacao: String; ACodEmpresa: integer);
var
  AQuerRequisicao: TFDQuery;
  ACodProduto, ADescricaoProduto, AUnidade, ALocalEstoqueOrigem, ALocalEstoqueDestino, ATipoMovimentacao: String;
  AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
  ACodCentroTrabalho, ACodUsuario, ACodCentroCusto: Integer;
begin
  // AProduto pode ser VENDA_PRODUTO, PRODUCAO_PRODUTO ou NF_ENTRADA_PRODUTO

  try
    AQuerRequisicao := GeraFDQuery(ATransacao);
    AQuerRequisicao.SQL.Text := 'select * from produto_requisicao where codigo = 0';
    AQuerRequisicao.Open;

    // Precisa ter um while pra iniciar transactioin no inicio e commitar o pacote, só no final, senão rollback em tudo
    // Passar pro contrller OU não passar pra variável e jogar edireto no INSERT


  except
    ATransacao.Rollback;
    raise EWRException.Create('Erro ao Solicitar Requisição');
  end;
end;

procedure BaixaRequisicao(ACodigo: Integer; AQuant: Double; AStatus :String;
                          ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao: String);
var
  ACodProduto_Movimento, AFatorMultiplicador: Integer;
  AQuantRestante, AQuantUtilizada, AQuantUtilizadaRestante: Double;
  ACriaNovo: String;
  AQuerRequisicao: TFDQuery;
  ATransacao: TFDTransaction;
begin
  try
    ATransacao := GeraFDTransacao;
    AQuerRequisicao := SQLProduto_Requisicao_SelectCodigo(ATransacao, ACodigo);
    AFatorMultiplicador := 0;

//    AQuerRequisicao.Close;
//    AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
//    AQuerRequisicao.Open;

    if AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').IsNull then
    begin

      if AQuant > AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat then
      begin
        AQuantUtilizada := AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat;
        AQuantUtilizadaRestante := abs(AQuant - AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat);
      end
      else
        AQuantUtilizada := AQuant;

      if AQuant < AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat then
      begin
        AQuantRestante := abs(AQuant - AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat);
      end;

      if AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString = 'S' then
        AFatorMultiplicador := -1
      else
      if AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString = 'E'  then
        AFatorMultiplicador := 1;

      if AFatorMultiplicador = 0 then
      begin
        raise EWRException.Create('Não foi possivel definir o tipo de movimentação da requisição');
      end;

      MovimentaEstoque(AQuerRequisicao.Transaction,
      AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
      AQuerRequisicao.FieldByName('CODEMPRESA').AsString,
      AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
      '', AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime,
      AQuerRequisicao.FieldByName('MODULO').AsString + 'n: ' + AQuerRequisicao.FieldByName('CODVENDA').AsString + ': ' +  AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
      AQuantUtilizada * AFatorMultiplicador,
      0{lote}, Usuario.Codigo, AQuerRequisicao.FieldByName('CODVENDA').AsString{CODNF_ENTRADA},
      AQuerRequisicao.FieldByName('CODVENDA').AsString{CODVENDA},
      AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
      AQuerRequisicao.FieldByName('CUSTO').AsFloat,
      AQuerRequisicao.FieldByName('VALOR').AsFloat, 'Frame_CadRequisicao_Pocket',
      AQuerRequisicao.FIeldByName('STATUS').AsString,
      AQuerRequisicao.FieldByName('MODULO').AsString,
      ACodProduto_Movimento);

      // Aqui tem post sem commit
      EditProdutoRequisicao_EditaBaixaRequisicao(AQuerRequisicao, 'NORMAL', AQuantUtilizada, ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento);
    end;

    if (AQuantUtilizadaRestante > 0) then
      AQuant :=  AQuantUtilizadaRestante
    else
    if (AQuantRestante > 0) then
      AQuant :=  AQuantRestante;

    if (AQuant > 0) then
    begin
      InsertProdutoRequisicao_CriaRequisicao(AQuerRequisicao.FieldByName('MODULO').AsString,
                     AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
                     AQuerRequisicao.FieldByName('PRODUTO').AsString,
                     AQuerRequisicao.FieldByName('UNIDADE').AsString,
                     AQuerRequisicao.FieldByName('CODVENDA').AsString,
                     AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_ORIGEM').AsString,
                     AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                     AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
                     AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString,
                     AQuant,
                     AQuerRequisicao.FieldByName('CUSTO').AsFloat,
                     AQuerRequisicao.FieldByName('VALOR').AsFloat,
                     AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
                     AQuerRequisicao.FieldByName('CODCENTRO_TRABALHO').AsInteger,
                     AQuerRequisicao.FieldByName('CODEMPRESA').AsInteger,
                     AQuerRequisicao.FieldByName('CODUSUARIO').AsInteger,
                     AQuerRequisicao,
                     0);


      if AQuantUtilizadaRestante > 0 then
      begin
        MovimentaEstoque(AQuerRequisicao.Transaction,
        AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
        AQuerRequisicao.FieldByName('CODEMPRESA').AsString,
        AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
        '', AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime,
        AQuerRequisicao.FieldByName('MODULO').AsString + ' Nº: ' + AQuerRequisicao.FieldByName('CODVENDA').AsString + ': ' + AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
        AQuantUtilizadaRestante * AFatorMultiplicador,
        0{lote}, Usuario.Codigo, AQuerRequisicao.FieldByName('CODVENDA').AsString{CODNF_ENTRADA},
        AQuerRequisicao.FieldByName('CODVENDA').AsString{CODVENDA},
        AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
        AQuerRequisicao.FieldByName('CUSTO').AsFloat,
        AQuerRequisicao.FieldByName('VALOR').AsFloat, 'Frame_CadRequisicao_Pocket',
        AQuerRequisicao.FIeldByName('STATUS').AsString,
        AQuerRequisicao.FieldByName('MODULO').AsString,
        ACodProduto_Movimento);

        EditProdutoRequisicao_EditaBaixaRequisicao(AQuerRequisicao, 'ANORMAL', AQuantUtilizada, ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento);
  //      AQuerRequisicao.Edit;
  //      AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime         := DataHoraSys;
  //      AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger          := Usuario.Codigo;
  //      AQuerRequisicao.FieldByName('QUANT').AsFloat                       := AQuantUtilizadaRestante;
  //      AQuerRequisicao.FieldByName('TOTAL').AsFloat                       := Trunc(AQuerRequisicao.FieldByName('CUSTO').AsFloat * AQuantUtilizadaRestante);
  //      AQuerRequisicao.FIeldByName('PESSOA_FUNCIONARIO_CODIGO').AsInteger := ACodFuncionario;
  //      AQuerRequisicao.FIeldByName('CODCENTRO_TRABALHO').AsInteger        := ACodCentroTrabalho;
  //      AQuerRequisicao.FIeldByName('STATUS').AsString                     := 'ANORMAL';
  //      AQuerRequisicao.FieldByName('OBSERVACAO').AsString                 := AObservacao;
  //      AQuerRequisicao.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger := ACodProduto_Movimento;
  //
  //      AQuerRequisicao.Post;
      end;
    end;
  finally
    raise EWRException.Create('Erro ao Baixar Requisição');
  end;
end;

procedure EditProdutoRequisicao_RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
begin
  AQuerRequisicao.Close;
  AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
  AQuerRequisicao.Open;

  try
    AQuerRequisicao.Edit;
    AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger := Usuario.Codigo;
    AQuerRequisicao.FieldByName('STATUS').AsString := 'Recusada';
    AQuerRequisicao.Post;
  except
    AQuerRequisicao.Cancel;
    raise EWRException.Create('Erro ao Recusar requisição.');
  end;
end;

procedure EditProdutoRequisicao_CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
begin
  AQuerRequisicao.Close;
  AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
  AQuerRequisicao.Open;

  try
    AQuerRequisicao.Edit;
    AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger := Usuario.Codigo;
    AQuerRequisicao.FieldByName('STATUS').AsString := 'Cancelada';
    AQuerRequisicao.Post;
  except
    AQuerRequisicao.Cancel;
    raise EWRException.Create('Erro ao cancelar requisição');
  end;
end;

function InsertProdutoRequisicao_CriaRequisicao(ADescricao, ACodProduto, AProduto, AUnidade, ACodOS,
   ALocalEstoqueOrigem, ALocalEstoqueDestino, AObservacao, AEntradaSaida: String; AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
   ACodCentroTrabalho, ACodEmpresa, ACodUsuario: Integer; AQuerRequisicao: TDataset; ACodCentro_Custo: Variant;
   AQuant: Double = 0; ACodRequisicao: Integer = 0): Integer;
begin
  try
    AQuerRequisicao.Insert;
    AQuerRequisicao.FieldByName('CODIGO').AsInteger                 := trunc(GetProximoCodigoGen('CR_PRODUTO_REQUISICAO'));
    AQuerRequisicao.FieldByName('CODPRODUTO_REQUISICAO').AsInteger  := ACodRequisicao;
    AQuerRequisicao.FieldByName('MODULO').AsString                  := ADescricao;
    AQuerRequisicao.FieldByName('ATIVO').AsString                   := 'S';
    AQuerRequisicao.FieldByName('CODPRODUTO').AsString              := ACodProduto;
    AQuerRequisicao.FieldByName('PRODUTO').AsString                 := AProduto;
    AQuerRequisicao.FieldByName('UNIDADE').AsString                 := AUnidade;
    AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString       := AEntradaSaida;
    AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat           := AQuantPrevista;
    AQuerRequisicao.FieldByName('QUANT').AsFloat                    := AQuant;
    AQuerRequisicao.FieldByName('CUSTO').AsFloat                    := ACusto;
    AQuerRequisicao.FieldByName('VALOR').AsFloat                    := AValor;
    AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat             := AValor_Compra;
    AQuerRequisicao.FieldByName('CODVENDA').AsString                := ACodOS;
    AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_ORIGEM').AsString  := ALocalEstoqueOrigem;
    AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString   := ALocalEstoqueDestino;
    AQuerRequisicao.FieldByName('CODCENTRO_TRABALHO').AsInteger     := ACodCentroTrabalho;
    AQuerRequisicao.FieldByName('DT_EMISSAO').AsDateTime            := DataHoraSys;
    AQuerRequisicao.FieldByName('CODUSUARIO').AsInteger             := ACodUsuario;
    AQuerRequisicao.FieldByName('STATUS').AsString                  := 'PENDENTE';
    AQuerRequisicao.FieldByName('OBSERVACAO').AsString              := AObservacao;
    AQuerRequisicao.FieldByName('CODEMPRESA').AsInteger             := ACodEmpresa;
    AQuerRequisicao.FieldByName('CODCENTRO_CUSTO').Value            := ACodCentro_Custo;

    AQuerRequisicao.Post;
    Result := AQuerRequisicao.FieldByName('CODIGO').AsInteger;
  except
    AQuerRequisicao.Cancel;
    raise EWRException.Create('Erro ao criar requisição');
  end;
end;

procedure EditProdutoRequisicao_EditaBaixaRequisicao(AQuerRequisicao: TDataset; AStatus: string; AQuantUtilizada: Double; ACodCentroTrabalho, ACodFuncionario, ACodMotivo, ACodProduto_Movimento: Integer);
begin
  try
    AQuerRequisicao.Edit;
    AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime            := DataHoraSys;
    AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger             := Usuario.Codigo;
    AQuerRequisicao.FieldByName('QUANT').AsFloat                          := AQuantUtilizada;
    AQuerRequisicao.FieldByName('TOTAL').AsFloat                          := Trunc(AQuerRequisicao.FieldByName('CUSTO').AsFloat * AQuantUtilizada);
    AQuerRequisicao.FIeldByName('PESSOA_FUNCIONARIO_CODIGO').AsInteger    := ACodFuncionario;
    AQuerRequisicao.FIeldByName('CODCENTRO_TRABALHO').AsInteger           := ACodCentroTrabalho;
    AQuerRequisicao.FIeldByName('STATUS').AsString                        := AStatus;  //ARRUMAR
    AQuerRequisicao.FIeldByName('CODPRODUTO_REQUISICAO_MOTIVO').AsInteger := ACodMotivo;
    AQuerRequisicao.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger := ACodProduto_Movimento;
    AQuerRequisicao.FieldByName('CUSTO_EXTRA').AsFloat := Utils.Requisicao.CalculaValores(AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat,
                                                                         AQuerRequisicao.FieldByName('QUANT').AsFloat,
                                                                         AQuerRequisicao.FieldByName('CUSTO').AsFloat);
    AQuerRequisicao.Post;
  except
    AQuerRequisicao.Cancel;
    raise EWRException.Create('Erro ao baixar requisição');
  end;
end;

end.
