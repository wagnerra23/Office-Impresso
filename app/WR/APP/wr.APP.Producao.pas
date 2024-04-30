unit wr.APP.Producao;

interface

procedure Inicializa_WR_APP_Producao;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Producao;
begin

  RegistraWR_APP(TagAPP_Producao, 16, TagModulo_Producao,      /// Não existe esse?
  'Produção TagModulo_Producao_04 não Localizada',
  '','');
  RegistraWR_APP(TagAPP_NaoLocalizada_60, 16, TagModulo_Producao,      /// Não existe esse?
  'Produção TagModulo_Producao_60 não Localizada',
  '','');
  RegistraWR_APP(TagAPP_NaoLocalizada_61, 16, TagModulo_Producao,      /// Não existe esse?
  'Produção TagModulo_Producao_61 não Localizada',
  '','');
  RegistraWR_APP(TagAPP_NaoLocalizada_62, 16, TagModulo_Producao,      /// Não existe esse?
  'Produção TagModulo_Producao_62 não Localizada',
  '','');

  RegistraWR_APP(TagAPP_Ordem_Producao, 16, TagModulo_Producao,
  'Produção',
  'Gerencie toda a produção através de uma única tela! '+
  'Com o Office Impresso você pode executar as funções essenciais como iniciar, pausar, encaminhar, duplicar, concluir, finalizar, cancelar, arquivar e obter os detalhes da ordem de serviço '+
  'através de poucos cliques.',
  'https://oimpresso.com/ajuda/producao/');


  RegistraWR_APP(TagAPP_Planejamento, 34, TagModulo_Producao,
  'Planejamento',
  'Conte com o Office Impresso para auxiliar no gerenciamento dos prazos de suas produções! '+
  'Estabeleça a data e hora de início e término de seus projetos, o percentual de conclusão, '+
  'a data em que irá ocorrer o faturamento e ative lembretes para auxiliar na contabilização do tempo e custos relativos às etapas da produção.',
  'https://oimpresso.com/ajuda/planejamento/');

  RegistraWR_APP(TagAPP_Fabricacao, 25, TagModulo_Producao,
  'Fabricação',
  'A fabricação é o processo de conversão de matérias-primas à mão ou por máquina em produtos finais, que podem ser vendidos ao cliente.',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-fabricacao/');

  RegistraWR_APP(TagAPP_Projeto, 35, TagModulo_Producao,
  'Projeto',
  'Aprenda a gerenciar seus projetos para garantir que os valores de venda estão compatíveis com os custos de sua produção! '+
  'Através do Projeto é possível acompanhar todos os processos e informações envolvidas desde a venda até a entrega do produto, '+
  'como data inicial e limite, situação, lista de tarefas, equipes, tempo e valores consumidos. Desta forma é possível determinar se foi possível concluir o projeto dentro do tempo e valor estabelecido na venda.',
  'https://oimpresso.com/ajuda/projeto/');

  RegistraWR_APP(TagAPP_Fluxo_Produto, 36, TagModulo_Producao,
  'Fluxo de Produto',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

  RegistraWR_APP(TagAPP_Producao_Fila_TV, 36, TagModulo_Producao,
  'Fila de produção na TV',
  'com o Office Impresso',
  'https://oimpresso.com/ajuda/fluxo-de-produto/');

end;

initialization
  Inicializa_WR_APP_Producao;


end.















