unit wr.Relatorio;

interface

procedure Inicializa_WR_Relatorio;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Relatorio = 1;

implementation

Uses
  base, Tag.Report, Tag.Form;

procedure Inicializa_WR_Relatorio;
begin


  //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Producao_Custos_Lucros,
                  Tag_ImpriProducao,
                  'Producao - Custos e Lucros',
                  'link.com',
                  'Producao - Custos e Lucros',
                  'FR0025',
                   False);

  Registra_Report_Nativo(Tag_Report_Producao_Finalizacoes,
                  Tag_ImpriProducao,
                  'Producao - Finalizacoes',
                  'link.com',
                  'Producao - Finalizações',
                  'FR0026',
                   False);

  Registra_Report_Nativo(Tag_Report_Producao_Perdas,
                  Tag_ImpriProducao,
                  'Producao - Perdas',
                  'link.com',
                  'Producao - Perdas',
                  'FR0027',
                   False);

  Registra_Report_Nativo( Tag_Report_Producao_Reaproveitamentos ,
                  Tag_ImpriProducao,
                  'Producao - Reaproveitamentos',
                  'link.com',
                  'Producao - Reaproveitamentos',
                  'FR0028',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


{$REGION 'GRUPO FINANCEIRO'}

  //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Contrato,
                  Tag_Contrato,
                  'Contrato',
                  'link.com',
                  'Contrato',
                  'FR0044',
                   True);

  Registra_Report_Nativo(Tag_Report_Mensalidade,
                  Tag_Contrato,
                  'Mensalidade',
                  'link.com',
                  'Mensalidade',
                  'FR0029',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  Registra_Report_Nativo(Tag_Report_Boleto,
                  Tag_Boleto,
                  'Boleto',
                  'link.com',
                  'Boleto',
                  'FR0046',
                   False);


//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Financeiro_Devedores,
                  Tag_Arquivos_Relatorio,
                  'Financeiro - Devedores',
                  'link.com',
                  'Financeiro - Devedores',
                  'FR0018',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Livro_Caixa,
                  Tag_Financeiro,
                  'Financeiro - Livro Caixa',
                  'link.com',
                  'Financeiro - Livro Caixa',
                  'FR0031',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Relatorio_Devedores,
                  Tag_Financeiro,
                  'Financeiro - Relatorio de Devedores',
                  'link.com',
                  'Financeiro - Relatório de Devedores',
                  'FR0032',
                   True);

  Registra_Report_Nativo(Tag_Report_Carne_Financeiro,
                  Tag_Financeiro,
                  'Carne - Financeiro',
                  'link.com',
                  'Carne - Financeiro',
                  'FR0033',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Duplicata,
                  Tag_Financeiro,
                  'Financeiro - Duplicata',
                  'link.com',
                  'Financeiro - Duplicata',
                  'FR0034',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Relatorio,
                  Tag_Financeiro,
                  'Financeiro - Relatorio',
                  'link.com',
                  'Financeiro - Relatorio',
                  'FR0035',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Relatorio_Contabil,
                  Tag_Financeiro,
                  'Financeiro - Relatorio Contabil',
                  'link.com',
                  'Financeiro - Relatorio Contabil',
                  'FR0036',
                   True);

  Registra_Report_Nativo(Tag_Report_Plano_Contas,
                  Tag_Financeiro,
                  'Plano de Contas',
                  'link.com',
                  'Plano de Contas',
                  'FR0037',
                   True);


  Registra_Report_Nativo(Tag_Report_Cheque_Copia,
                  Tag_Cheque,
                  'Cheque Copia',
                  'link.com',
                  'Cheque Copia',
                  'FR0014',
                   False);

  Registra_Report_Nativo(Tag_Report_Cheque_000,
                  Tag_Cheque,
                  'Cheque',
                  'link.com',
                  'Cheque',
                  'FR0015',
                   False);

  Registra_Report_Nativo(Tag_Report_Venda_Recibo,
                  Tag_Recibo,
                  'Recibo - Personalizado',
                  'link.com',
                  'Recibo - Personalizado',
                  'FR0004',
                   False);


//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

{$REGION 'GRUPO COMPRAS'}



 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Nota_Entrada,
                  Tag_Compra,        //Tag_Venda_NotaFiscal
                  'Nota de Entrada',
                  'link.com',
                  'Nota de Entrada',
                  'FR0016',
                   False);


  Registra_Report_Nativo(Tag_Report_Entrada,
                  Tag_ImpriEntradas,        //Tag_Venda_NotaFiscal
                  'Entrada',
                  'link.com',
                  'Entrada',
                  'FR0017',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

{$ENDREGION}


{$REGION 'GRUPO ESTOQUE'}


//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Balanco,
                  Tag_Balanco,
                  'Balanco',
                  'link.com',
                  'Balanco',
                  'FR0012',
                   False);

  Registra_Report_Nativo(Tag_Report_Estoque_Inventario_Estoque,
                  Tag_Balanco,  //TFrmPrincipal
                  'Estoque - Inventario de estoque',
                  'link.com',
                  'Estoque - Inventario de estoque',
                  'FR0059',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\




//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Cod_Barras,
                  Tag_Codigo_Barras,
                  'CodBarras',
                  'link.com',
                  'CodBarras',
                  'FR0003',
                   False);

  Registra_Report_Nativo(Tag_Report_Cod_Barras_Pimaco_5_Etq,
                  Tag_Codigo_Barras,
                  'CodBarras - Pimaco A4 - 5 Colunas',
                  'link.com',
                  'CodBarras - Pimaco A4 - 5 Colunas',
                  'FR0069',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Produtos_Gerencial,
                  Tag_ImpriProdutos_Gerencial,
                  'Relatorio - Produtos Gerencial',
                  'link.com',
                  'Relatório - Produtos Gerencial',
                  'FR0005',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Comprados,
                  Tag_ImpriProdutos_Gerencial,      //TFrmPrincipal
                  'Produtos comprados',
                  'link.com',
                  'Produtos comprados',
                  'FR0067',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Com_Valores,
                  Tag_ImpriProdutos_Gerencial,      //TFrmPrincipal
                  'Relatorio - Produtos Com Valores',
                  'link.com',
                  'Relatorio - Produtos Com Valores',
                  'FR0057',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Pauta_Preco ,
                  Tag_ImpriProdutos_Gerencial,      //TFrmPrincipal
                  'Relatorio - Produtos Pauta Preco',
                  'link.com',
                  'Relatorio - Produtos Pauta Preço',
                  'FR0058',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Entrada_Saida ,
                  Tag_ImpriProdutos_Gerencial,      //TDMRelatorios
                  'Produtos - Entrada e Saida',
                  'link.com',
                  'Produtos - Entrada e Saida',
                  'FR0021',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Grade_Corte ,
                  Tag_ImpriProdutos_Gerencial,      //TDMRelatorios
                  'Produtos - Grade de Corte',
                  'link.com',
                  'Produtos - Grade de Corte',
                  'FR0022',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


{$REGION 'GRUPO CAIXAS'}

  Registra_Report_Nativo(Tag_Report_Carne_1,
                  Tag_Recebimento,
                  'Carne 1',
                  'link.com',
                  'Carne 1',
                  'FR0038',
                   True);

  Registra_Report_Nativo(Tag_Report_Financeiro_Recebimento,
                  Tag_Recebimento,
                  'Financeiro Recebimento',
                  'link.com',
                  'Financeiro Recebimento',
                  'FR0039',
                   True);

{$ENDREGION}


//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Agenda_Completo,
                  Tag_ImpriAgenda,
                  'Agenda - Completo',
                  'link.com',
                  'Agenda - Completo',
                  'FR0023',
                   False);

  Registra_Report_Nativo(Tag_Report_Agenda_Simplificado,
                  Tag_ImpriAgenda,
                  'Agenda - Simplificado',
                  'link.com',
                  'Agenda - Simplificado',
                  'FR0024',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


  //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Ficha_Registro_Empregado,
                  Tag_Pessoas,
                  'Ficha de Registro de Empregado',
                  'link.com',
                  'Ficha de Registro de Empregado',
                  'FR0030',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



  //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Folha_Pagamento,
                  Tag_Folha_Pagamento,
                  'Folha de Pagamento',
                  'link.com',
                  'Folha de Pagamento',
                  'FR0041',
                   False);

  Registra_Report_Nativo(Tag_Report_Adiantamento_Salarial_Vale,
                  Tag_Folha_Pagamento,
                  'Adiantamento Salarial - Vale',
                  'link.com',
                  'Adiantamento Salarial - Vale',
                  'FR0042',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


  //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Funcionario_Ponto_Diario,
                  Tag_Ficha_Ponto,                              //TDMRelatorios
                  'Funcionario - Controle de Ponto - Diario',
                  'link.com',
                  'Funcionario - Controle de Ponto - Diario',
                  'FR0019',
                   False);

  Registra_Report_Nativo(Tag_Report_Funcionario_Ponto,
                  Tag_Ficha_Ponto,                      //TDMRelatorios
                  'Funcionario - Controle de Ponto',
                  'link.com',
                  'Funcionario - Controle de Ponto',
                  'FR0020',
                   False);

  Registra_Report_Nativo(Tag_Report_Ficha_Ponto,
                  Tag_Ficha_Ponto,                     //TFrmFramePessoasFichaPonto
                  'Ficha Ponto',
                  'link.com',
                  'Ficha Ponto',
                  'FR0019',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_DANFeNFCeA4,
                  Tag_Notas_Fiscais,        //Tag_Venda_NotaFiscal
                  'DANFeNFCeA4',
                  'link.com',
                  'DANFeNFCeA4',
                  'FR0049',
                   False);

 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

  Registra_Report_Nativo(Tag_Report_Notas_Fiscais,
                  Tag_Notas_Fiscais,
                  'Notas Fiscais',
                  'link.com',
                  'Notas Fiscais',
                  'FR0013',
                   True);

  Registra_Report_Nativo(Tag_Report_Inutilizacao,
                  Tag_Notas_Fiscais,
                  'Inutilizacao',
                  'link.com',
                  'Inutilizacao',
                  'FR0050',
                   True);

  Registra_Report_Nativo(Tag_Report_DANFeRetrato,
                  Tag_Notas_Fiscais,
                  'DANFeRetrato',
                  'link.com',
                  'DANFeRetrato',
                  'FR0047',
                   False);

  Registra_Report_Nativo(Tag_Report_Eventos,
                  Tag_Notas_Fiscais,
                  'Eventos',
                  'link.com',
                  'Eventos',
                  'FR0043',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_DANFSeNovo,
                  Tag_Notas_Fiscal_Servico,        //Tag_Venda_NotaFiscal
                  'DANFSeNovo',
                  'link.com',
                  'DANFSeNovo',
                  'FR0048',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Associados_Representante_Legal,
                  Tag_ImpriClientes_Ativos,
                  'Associados e Representante Legal',
                  'link.com',
                  'Associados e Representante Legal',
                  'FR0061',
                   False);

  Registra_Report_Nativo(Tag_Report_Relacao_Associados,
                  Tag_ImpriClientes_Ativos,
                  'Relacao de Associados',
                  'link.com',
                  'Relacao de Associados',
                  'FR0062',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Ficha_Ocorrencia_Equipamento,
                  Tag_Equipamento_Veiculo,
                  'Ficha de Ocorrencia de Equipamento',
                  'link.com',
                  'Ficha de Ocorrencia de Equipamento',
                  'FR0053',
                   False);

  Registra_Report_Nativo(Tag_Report_Pedido_Exclusao_Equipamento,
                  Tag_Equipamento_Veiculo,
                  'Pedido de Exclusão de Equipamento',
                  'link.com',
                  'Pedido de Exclusão de Equipamento',
                  'FR0054',
                   False);

  Registra_Report_Nativo(Tag_Report_Tabela_Fipe_Valor,
                  Tag_Tabela_Fipe,
                  'Tabela Fipe Valor',
                  'link.com',
                  'Tabela Fipe Valor',
                  'FR0056',
                   False);

  Registra_Report_Nativo(Tag_Report_Equipamentos_Cadastro_Exclusao,
                  Tag_Equipamento_Veiculo,    //TFrmPrincipal
                  'Equipamentos - Cadastro e Exclusao',
                  'link.com',
                  'Equipamentos - Cadastro e Exclusao',
                  'FR0060',
                   False);

//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Relacao_Ocorrencias,
                  Tag_Ocorrencias,
                  'Relacao de Ocorrencias',
                  'link.com',
                  'Relacao de Ocorrencias',
                  'FR0052',
                   True);

  Registra_Report_Nativo(Tag_Report_Ocorrencia_Roubos_Furtos,
                  Tag_Ocorrencias,
                  'Ocorrencia Roubos e Furtos',
                  'link.com',
                  'Ocorrencia Roubos e Furtos',
                  'FR0063',
                   True);

  Registra_Report_Nativo(Tag_Report_Ocorrencias_Valor_Placa,
                  Tag_Ocorrencias,
                  'Ocorrencias - Valor Por Placa',
                  'link.com',
                  'Ocorrencias - Valor Por Placa',
                  'FR0064',
                   True);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


 //////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Rateio,
                  Tag_Rateio,
                  'Rateio',
                  'link.com',
                  'Rateio',
                  'FR0055',
                   True);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

end;

initialization
  Inicializa_WR_Relatorio;

end.

