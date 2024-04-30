unit wr.APP.Estoque;

interface

procedure Inicializa_WR_APP_Estoque;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Estoque;
begin
  RegistraWR_APP(TagAPP_Estoque, 44, TagModulo_Estoque, //PARA NAO DAR ERRO NO PRINCIPAL
  'Estoque',
  'Aprenda a realizar o cadastro dos produtos localizados em estoque que serão utilizados em lotes,'+
  ' podendo estes serem artigos do estoque interno ou de terceiros,'+
  ' facilitando o controle e rastreabilidade desses produtos dentro do Office Impresso! ',
  'https://oimpresso.com/ajuda/lote/');


  RegistraWR_APP(TagAPP_Lote, 44, TagModulo_Estoque,
  'Lote',
  'Aprenda a realizar o cadastro dos produtos localizados em estoque que serão utilizados em lotes,'+
  ' podendo estes serem artigos do estoque interno ou de terceiros,'+
  ' facilitando o controle e rastreabilidade desses produtos dentro do Office Impresso! ',
  'https://oimpresso.com/ajuda/lote/');

  RegistraWR_APP(TagAPP_Multiplos_Estoques, 46, TagModulo_Estoque,
  'Múltiplos Estoques',
  'Para auxiliar na gestão do seu estoque o sistema Office Impresso conta com múltiplos estoques.'+
  ' Através dessa função é possível cadastrar todos os locais de estoque da empresa,'+
  ' permitindo informar no cadastro do produto onde ele estará armazenado, colaborando para os processos de produção e balanço de estoque.',
  'https://oimpresso.com/ajuda/multiplos-estoques/');



  RegistraWR_APP(TagAPP_Balanco, 47, TagModulo_Estoque,
  'Balanço de Estoque',
  'Evite falhas e atrasos em futuras vendas e compras por desconhecer o saldo de seus produtos e matérias-primas.'+
  ' Compare a quantidade em estoque com a real existente nas prateleiras de sua empresa através do balanço de estoque'+
  ' e insira as quantidades conferidas, contando com o Office para atualizar as informações automaticamente!',
  'https://oimpresso.com/ajuda/balanco-de-estoque/');


  RegistraWR_APP(TagAPP_SubUnidade, 49, TagModulo_Estoque,
  'Sub-Unidade',
  'Para auxiliar no controle de estoque e precificação do produto, o Office Impresso permite a conversão da unidade em que o produto foi comprado para a unidade em que será vendido.'+
  ' Desta forma é possível calcular o preço correto de sua mercadoria, evitando futuros prejuízos!',
  'https://oimpresso.com/ajuda/sub-unidade/');

  RegistraWR_APP(TagAPP_Codigo_Barras, 50, TagModulo_Estoque,
  'Código de barras',
  'Monte o código de barras de seu produto ou deixe o Office Impresso fazer isso por você,'+
  ' com a tranquilidade de poder realizar a impressão dos códigos desejados sempre que precisar!',
  'https://oimpresso.com/ajuda/codigo-de-barras/');

  RegistraWR_APP(TagAPP_Produto_Basico, 51, TagModulo_Estoque,
  'Produto',
  'Observacao',
  'https://oimpresso.com/ajuda/patrimonio/');

  RegistraWR_APP(TagAPP_Produto_Patrimonio, 51, TagModulo_Estoque,
  'Patrimônio',
  'Você sabe quanto vale seu patrimônio? '+
  ' Com o Office Impresso você cadastra todos os bens de sua empresa para ter conhecimento do valor total e,'+
  ' através da DRE – Demonstração do Resultado do Exercício, ser possível calcular a depreciação dos mesmos, deduzindo da receita líquido da empresa.'+
  ' Desta forma é possível conhecer a real situação econômica de seus negócios e elaborar um plano de ação eficiente!',
  'https://oimpresso.com/ajuda/patrimonio/');

  /////////////Uso e consumo\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Produto_UsoEConsumo, 51, TagModulo_Estoque,
  'Produto de Uso e consumo',
  'Os produtos de uso e consumo são geralmente comprados para serem  '+ LineBreakWR +
  'utilizados na operação diária da empresa. Eles incluem '+ LineBreakWR +
  'suprimentos de escritório, equipamentos de proteção individual, '+ LineBreakWR +
  'material de limpeza, alimentos e bebidas para funcionários, entre outros. '+ LineBreakWR +
  'Esses produtos são importantes para garantir a eficiência e a produtividade dos funcionários, '+ LineBreakWR +
  'bem como para manter a higiene e a segurança no local de trabalho. ',
  'https://oimpresso.com/ajuda/');


   RegistraWR_APP(TagAPP_Produto_Composicao, 48, TagModulo_Estoque,
  'Composição',
  'Com o Office Impresso você consegue montar seus próprios produtos!'+
  ' Através da Composição é possível elaborar o preço final do produto adicionando as matérias primas e serviços já cadastrados que irão compor a mercadoria.'+
  ' Fazendo bom uso desse aplicativo é possível agilizar os processos de orçamento e venda e manter a organização do estoque.',
  'https://oimpresso.com/ajuda/composicao/');

  RegistraWR_APP(TagAPP_Produto_Servico, 51, TagModulo_Estoque,
  'Serviço',
  'Você sabe quanto vale seu patrimônio? '+
  ' Com o Office Impresso você cadastra todos os bens de sua empresa para ter conhecimento do valor total e,'+
  ' através da DRE – Demonstração do Resultado do Exercício, ser possível calcular a depreciação dos mesmos, deduzindo da receita líquido da empresa.'+
  ' Desta forma é possível conhecer a real situação econômica de seus negócios e elaborar um plano de ação eficiente!',
  'https://oimpresso.com/ajuda/patrimonio/');


  RegistraWR_APP(TagAPP_Produto_MateriaPrima, 51, TagModulo_Estoque,
  'Materia Prima',
  'Você sabe quanto vale seu patrimônio? '+
  ' Com o Office Impresso você cadastra todos os bens de sua empresa para ter conhecimento do valor total e,'+
  ' através da DRE – Demonstração do Resultado do Exercício, ser possível calcular a depreciação dos mesmos, deduzindo da receita líquido da empresa.'+
  ' Desta forma é possível conhecer a real situação econômica de seus negócios e elaborar um plano de ação eficiente!',
  'https://oimpresso.com/ajuda/patrimonio/');

  /////////////Produto personalizados de VENDA\\\\\\\\\\\\\\\\\\\
  RegistraWR_APP(TagAPP_Produto_Personalizado, 33, TagModulo_Estoque,
  'Produtos Personalizados',
  'Um produto personalizado é um item que é feito ou adaptado especificamente para atender ' + LineBreakWR +
  'às necessidades ou desejos de um indivíduo ou empresa. Isso pode incluir características '+ LineBreakWR +
  'exclusivas de design, especificações técnicas, cor, tamanho, etc. Alguns exemplos incluem '+ LineBreakWR +
  'roupas com logos personalizados, canecas com nomes gravados, presentes personalizados para ocasiões especiais, entre outros.',
  'https://oimpresso.com/ajuda/comissoes-de-venda/');
  /////////////FIM Produto personalizados\\\\\\\\\\\\\\\\\\\

  RegistraWR_APP(TagAPP_Produto_Variacao, 45, TagModulo_Estoque,
  'Variações',
  'Amplie o nível de informações sobre seus produtos com o Office Impresso! Realize o cadastro dos modelos de grade,'+
  ' obtendo uma melhor visualização dos itens de seu estoque e desta forma auxiliando nas próximas compras,'+
  ' evitando gastos desnecessários.',
  'https://oimpresso.com/ajuda/grade-produto/');

end;

initialization
  Inicializa_WR_APP_Estoque;


end.















