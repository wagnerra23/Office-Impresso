unit wrSugestoes;

interface

Type
  TSugestao  = record
    Tag_APP : Integer;
    Tag_Tela : Integer;
    Titulo : String;
    Observacao : String;
    Link : String;
    Executa: Boolean;
  end;


procedure Cria_Lista_Sugestoes;
procedure AddSugestao(ATag_Sugestao, ATag_APP, ATag_Tela: Integer; ATitulo, AObservacao, ALink:String);
procedure Instalar;

Var
  Lista_Sugestoes : array [0..15] of TSugestao;

implementation

procedure AddSugestao(ATag_Sugestao, ATag_APP, ATag_Tela: Integer; ATitulo, AObservacao, ALink:String);
begin
  with Lista_Sugestoes[ATag_Sugestao] do
  begin
    Tag_APP       := ATag_APP;
    Tag_Tela      := ATag_Tela;
    Titulo        := ATitulo;
    Observacao    := AObservacao;
    Link          := ALink;
  end;
end;

procedure Cria_Lista_Sugestoes;
begin

end;

procedure Instalar;
begin
  // Configurar a Logo da Empresa,
  // Configurar os dados da empresa
  // Selecionar os módulos para a empresa (Cada módulo explicando o que faz)
  // Informar se é do simples nacional?
end;

procedure Treinamento_inicial;
begin
  // Fazer uma venda, de 1 produto padrão,com parcela em 3 vezes,
  // mostrar o dinheiro na no financeiro como aparece


            //Textos auxiliares para informar como e por que foi decidido assim

  // Implantação focada em resultados
  // Especialistas qualificados e experientes que aliam o melhor sistema às melhores técnicas da Engenharia de Produção

  // Método de implantação de sucesso aplicado por especialistas
  // Ao escolher a Nomus, sua indústria contará com todos os benefícios do sistema de gestão ERP Industrial Nomus, e além disso, contará também com uma consultoria de implantação de alta qualidade, focada em resultados e especializada em indústrias.
  //  Buscamos aplicar os melhores métodos da Engenharia de Produção para organizar seus processos, otimizar sua produção e aproveitar todo o potencial do seu negócio.
  //  Na Nomus a implantação é levada tão à sério que fazemos questão que nossos Consultores de Implantação sejam especialistas em gestão, tenham amplo conhecimento sobre processos industriais, e estejam prontos para apoiar sua indústria a atingir a excelência na gestão.

// Quais são os passos do Método de Implantação Nomus
//O Método de Implantação Nomus é dividido em 6 fases, o escopo de cada fase é claro, e a implantação de cada fase segue um roteiro passo a passo.
//
//Ao final de cada fase sua indústria já utiliza o ERP Industrial no dia a dia, consegue enxergar os benefícios alcançados e o retorno sobre o investimento realizado.

// Fase 1 – Primeiros Passos
//Faça o planejamento inicial do projeto, tenha uma visão geral do sistema e, caso tenha interesse, instale o sistema localmente na sua fábrica. (O padrão é a utilização do software na nuvem)
// Aqui deve mostrar os recusos que o sistema tem, Aplicativo(Módulo), e deixar a pessoa escolher

//Fase 2 – Vendas, Faturamento
//
//Organize seu processo de vendas, gere propostas comerciais e pedidos de venda, emita notas fiscais eletrônicas (NF-e) e notas fiscais de serviço eletrônicas (NFS-e).
//
//Controle contas a receber e contas a pagar, faça conciliações bancárias, emita boletos bancários para seus clientes, gerencie seu fluxo de caixa e monitore o resultado financeiro da sua fábrica.
//
//
//
//Fase 3 – Compras e Financeiro
//
//Organize seu processo de compras, gere solicitações de compra, cotações e pedidos de compra, importe NF-es de entrada e faça o recebimento.
//
//Fase 4 – Produção e Estoque
//
//Gere ordens de produção, registre o consumo de materiais pela produção, produções efetuadas, subprodutos gerados, e obtenha controle total do seu estoque.
//
//Organize a produção em terceiros, a produção para terceiros e atenda o Bloco K do SPED Fiscal.
//
//Fase 5 – Produção avançada
//
//Faça previsões de venda, defina o plano mestre da produção, execute o MRP, e saiba exatamente o que produzir e comprar para manter seus estoques nos níveis ideiais.
//
//Faça a programação detalhada da produção e apontamentos no chão de fábrica.
//
//Fase 6 – Custos e Contabilidade
//
//Defina o custo padrão de produtos, considerando materiais, mão de obra e custos indiretos de fabricação, e forme preços de venda com inteligência.
//
//Apure o custo/hora de seus centros de custo, calcule o custo real de produtos, e descubra a margem de lucro efetiva de seus produtos.
//
//Integre estoque, apuração de custo, e lançamento financeiros com a contabilidade.
//
//
//
//Fase 7 – Gestão da Qualidade
//
//Inspecione matérias primas no recebimento, inspecione produtos fabricados na produção, controle lotes e rastreabilidade.
//
//Analise não conformidades, gere relatórios de qualidade e databooks em formato eletrônico e com assinatura digital.
//


// Não se preocupe com os resultados obitidos agora, pois temos especilista que iram analizar seus dados e explicar a melhor forma de obter um melhor controle integrado


//Como funciona a implantação da Nomus
//
//Conferências online
//
//Seguindo boas práticas para tirar o melhor proveito de reuniões, a implantação da Nomus é realizada por conferências online, onde sua equipe irá interagir diretamente com o seu analista responsável pelo projeto. As reuniões online possibilitam maior flexibilidade na sua agenda e um investimento reduzido.
//
//Implantação remota de um software erp industrial
//
//Reuniões presenciais
//
//Entretanto, a Nomus é flexível e caso tenha interesse em uma implantação presencial sua equipe poderá optar por este método após conversar com o seu analista responsável pelo projeto.


end;


initialization
  Cria_Lista_Sugestoes;


end.
