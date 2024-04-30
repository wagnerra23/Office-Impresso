unit wr.APP.Financeiro;

interface

procedure Inicializa_WR_APP_Financeiro;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Financeiro;
begin
  RegistraWR_APP(TagAPP_Financeiro_Contrato, 37, TagModulo_Financeiro,
  'Contratos',
  'Diminua a inadimplência, aumente o controle das finanças e obtenha a redução de custos com o Office Impresso! '+
  'Aprenda a gerar e administrar as mensalidades lançadas no sistema de forma eficiente. '+
  'Informe qual será a conta e o plano de contas vinculado a mensalidade e determine para quais clientes ela será gerada, enviando as parcelas diretamente para o financeiro. ',
  'https://oimpresso.com/ajuda/contratos/');

  RegistraWR_APP(TagAPP_Financeiro_Boleto, 38, TagModulo_Financeiro,
  'Boletos',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/boletos/');

  RegistraWR_APP(TagAPP_DRE, 39, TagModulo_Financeiro,
  'DRE',
  'Conte com o Office Impresso para realizar uma análise fiel sobre a situação econômica da empresa através do Demonstrativo de Resultado do Exercício, '+
  'ligando as despesas e receitas vinculadas aos planos de conta para entregar como resultado o lucro líquido do ano. '+
  'Desta forma é possível elaborar com segurança um plano de ação que contribua para um melhor desempenho dos negócios.',
  'https://oimpresso.com/ajuda/dre/');

  RegistraWR_APP(TagAPP_Balanco_Patrimonial, 39, TagModulo_Financeiro,
  'Balanço Patrimonial',
  'Conte com o Office Impresso para realizar uma análise fiel sobre a situação econômica da empresa através do Balanço Patrimonial, '+
  'ligando as despesas e receitas vinculadas aos planos de conta para entregar como resultado o lucro líquido do ano. '+
  'Desta forma é possível elaborar com segurança um plano de ação que contribua para um melhor desempenho dos negócios.',
  'https://oimpresso.com/ajuda/dre/');



  RegistraWR_APP(TagAPP_DFC, 39, TagModulo_Financeiro,
  'DFC',
  'Conte com o Office Impresso para realizar uma análise fiel sobre a situação econômica da empresa através do Demonstrativo do Fluxo de Caixa, '+
  'ligando as despesas e receitas vinculadas aos planos de conta para entregar como resultado o lucro líquido do ano. '+
  'Desta forma é possível elaborar com segurança um plano de ação que contribua para um melhor desempenho dos negócios.',
  'https://oimpresso.com/ajuda/dre/');


  RegistraWR_APP(TagAPP_Financeiro, 11, TagModulo_Financeiro,
  'Financeiro',
  'Descomplique as tarefas do dia a dia e diminua o tempo de execução dos processos com o Office Impresso! '+
  'Realize o acompanhamento de todos os valores registrados no financeiro, incluindo as vendas parceladas que são automaticamente lançadas para os próximos meses, '+
  'possibilitando um controle mais eficiente do fluxo de caixa e auxiliando na tomada de decisão.',
  'https://oimpresso.com/ajuda/financeiro-2/');

  RegistraWR_APP(TagAPP_Financeiro_Conciliacao_Bancaria, 40, TagModulo_Financeiro,
  'Conciliação bacária',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

  RegistraWR_APP(TagAPP_Venda_Metas, 41, TagModulo_Financeiro,
  'Metas de venda',
  'Como vai a produtividade de seus vendedores? Com o Office Impresso você consegue analisar o desempenho de seus vendedores, '+
  'determinar metas e criar um ranking de vendedores e gerar uma competividade dentro da empresa.',
  'https://oimpresso.com/ajuda/metas-de-venda/');

  RegistraWR_APP(TagAPP_Financeiro_Centro_Custo, 52, TagModulo_Financeiro,
  'Centro de Custo',
  'Efetue um gerenciamento eficiente dos centros de custo de sua empresa! Forme equipes para uma melhor análise do desempenho de produção,'+
  ' identificando os maiores geradores de perdas e lucros através de relatórios para auxiliar na tomada de decisão!',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-precificacao/');

   RegistraWR_APP(TagAPP_Financeiro_Cheque, 40, TagModulo_Financeiro,
  'Cheque',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

   RegistraWR_APP(TagAPP_Financeiro_Cartao, 40, TagModulo_Financeiro,
  'Cartão',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

  RegistraWR_APP(TagAPP_Financeiro_Caixa, 52, TagModulo_Financeiro,
  'Caixas',
  'Com o Office Impresso você conta com a ferramenta indispensável para o registro diário e seguro de entradas e saídas de valores na empresa.'+
  ' Acompanhe todas as movimentações efetuadas para conhecer a realidade de seu negócio, podendo realizar seus orçamentos com segurança e dentro das expectativas do plano de negócio estabelecido.',
  'https://oimpresso.com/ajuda/caixas/');

  RegistraWR_APP(TagAPP_Recebimento, 53, TagModulo_Financeiro,
  'Recebimento',
  'Com o Office Impresso é muito simples realizar o recebimento dos lançamentos efetuados, sendo este integral ou parcial! Informe o percentual de juros para que seja realizado o cálculo em casos de atraso e emita recibos sem complicações.'+
  ' E mais! Visualize todos os lançamentos que estão “A receber” para auxiliar no planejamento da empresa.',
  'https://oimpresso.com/ajuda/recebimento/');

end;

initialization
  Inicializa_WR_APP_Financeiro;


end.















