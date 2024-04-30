unit wr.APP.Venda;

interface

procedure Inicializa_WR_APP_Venda;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Venda;
begin

  /////////////PDV\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Venda_PDV, 25, TagModulo_Vendas,
  'PDV',
  ' Registre suas vendas de maneira rápida através da interface simples e intuitiva apresentada pelo Office Impresso!' +
  ' Realize a emissão de notas e cupons fiscais sempre que precisar através de um ponto de venda descomplicado.',
  'https://oimpresso.com/ajuda/pdv-ponto-de-venda/');

  /////////////VENDA\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Venda, 25, TagModulo_Vendas,
  'Venda',
  'Detalhe os produtos e serviços e gere o financeiro na própria tela de venda para evitar falhas no faturamento. '+
  'Especifique a condição de pagamento, comissões e o vendedor responsável pela venda.' +
  'Insira informações adicionais pertinentes à transação, realize o vínculo a outras vendas dentro do sistema, '+
  'fature e emita notas fiscais apenas alternando entre as abas presentes na tela. ',
  'https://oimpresso.com/ajuda/venda/');

  /////////////PEDIDO\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Venda_Pedido, 25, TagModulo_Vendas,
  'Pedido de venda',
  'Aprenda a emitir seus pedidos de venda de maneira simples através da interface intuitiva apresentada pelo Office Impresso! ' +
  'Indique o cliente, adicione seus produtos e informe a condição de pagamento e o caixa em que será registrado o lançamento. ' +
  'Realize o envio à produção definindo a equipe responsável e realize o faturamento para lançar as parcelas no financeiro.',
  'https://oimpresso.com/ajuda/pedido-de-venda/');

  /////////////TABELA PRECO\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Venda_Tabela_Preço, 29, TagModulo_Vendas,
  'Tabela de Preço',
  'Aprenda a criar tabelas de preços com valores diferenciados para vincular a seus clientes especiais com o Office Impresso! ' +
  'Tenha a liberdade de selecionar os produtos que serão incluídos na tabela e aplique o desconto ou acréscimo que desejar. ',
  'https://oimpresso.com/ajuda/tabela-de-preco/');

    /////////////MARKUP\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Markup, 30, TagModulo_Vendas,
  'Precificação(Markup)',
  'Aprenda a formar o preço de seus produtos através do indicador markup com o Office Impresso! ' +
  'Uma ferramenta essencial para manter o equilíbrio financeiro criado a partir do preço de mercado ' +
  'e que considera os custos operacionais e lucro pretendido na formação de preços dos produtos. ',
  'https://oimpresso.com/ajuda/markup/');

  /////////////MECANICA\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Venda_Mecanica, 31, TagModulo_Vendas,
  'Mecânica',
  'Venda seus produtos',
  'https://oimpresso.com/ajuda/mecanica/');
  /////////////CREDITO CLIENTE\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Credito_Cliente, 32, TagModulo_Vendas,
  'Crédito Cliente',
  'Aprenda a adicionar valores de crédito para seus clientes através do cadastro do cliente ou diretamente do cadastro da venda, lançando o valor no financeiro e caixa. ' +
  'E o Office Impresso ainda te ajuda ao exibir o valor em haver pelo cliente no momento da geração do financeiro das próximas vendas para efetuar o desconto. ',
  'https://oimpresso.com/ajuda/credito-de-cliente/');

  RegistraWR_APP(TagAPP_TEF_Dedicado, 54, TagModulo_Vendas,
  'TEF dedicado',
  'Sua empresa apresenta um alto fluxo de vendas ou precisa de um sistema que efetue transações financeiras com cartão de crédito de uma maneira simples, rápida e segura?'+
  ' Então o Office Impresso tem a solução para você! Através da integração com um TEF dedicado que utiliza uma linha '+
  ' especial que se mantém conectada 24 horas por dia, é possível garantir que todas as transações efetuadas sejam registradas no PDV, auxiliando no controle do fluxo de caixa. ',
  'https://oimpresso.com/ajuda/tef-dedicado/');

  RegistraWR_APP(TagAPP_Equipamento, -1, TagModulo_Vendas,
  'Equipamentos',
  'Com o Office Impresso ficou mais fácil administrar sua Associação! '+
  'Efetue o cadastro de todos os equipamentos de seus associados de um modo prático, assegurando o cálculo correto dos valores de mensalidade'+
  ' e podendo visualizar o número de veículos vinculado a cada um e o respectivo valor a ser pago.',
  'https://oimpresso.com/ajuda/equipamentos/');

  RegistraWR_APP(TagAPP_Venda_Comissoes, 33, TagModulo_Vendas,
  'Comissões Venda',
  'Gerencie as comissões de seus vendedores sem complicações com o Office Impresso ' +
  'e reduza a perda de lucro da empresa através deste índice utilizado na elaboração do markup para a atualização dos preços de seus produtos. ',
  'https://oimpresso.com/ajuda/comissoes-de-venda/');

  RegistraWR_APP(TagAPP_Geral, 25, TagModulo_Geral,
  'Geral',
  ' Modulo Padrão do Office Impresso',
  '');

end;

initialization
  Inicializa_WR_APP_Venda;


end.















