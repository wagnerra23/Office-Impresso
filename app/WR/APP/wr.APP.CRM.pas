unit wr.APP.CRM;

interface

procedure Inicializa_WR_APP_CRM;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_CRM;
begin
  RegistraWR_APP(TagAPP_CRM, 55, TagModulo_CRM, //VENDA //PARA NAO DAR ERRO NO PRINCIPAL
  'CRM',
  'Aprenda a desenvolver suas propostas de vendas para auxiliar na prospecção de clientes com o Office Impresso!'+
  ' Visualize quais foram as propostas elaboradas por seus vendedores que estão em negociação, as que foram negadas e aquelas que foram aceitas, transformando-se em pedidos de venda.',
  'https://oimpresso.com/ajuda/propostaorcamento/');

  RegistraWR_APP(TagAPP_Propostas, 55, TagModulo_CRM, //VENDA
  'Proposta(Orçamento)',
  'Aprenda a desenvolver suas propostas de vendas para auxiliar na prospecção de clientes com o Office Impresso!'+
  ' Visualize quais foram as propostas elaboradas por seus vendedores que estão em negociação, as que foram negadas e aquelas que foram aceitas, transformando-se em pedidos de venda.',
  'https://oimpresso.com/ajuda/propostaorcamento/');

  RegistraWR_APP(TagAPP_Agendamentos, 56, TagModulo_CRM,
  'Agendamento',
  'Efetue a Gestão de Leads com o Office Impresso! Registre as possíveis oportunidades de negócio para sua empresa adotando esta estratégia tão comum e importante no âmbito empresarial.'+
  ' Crie um lembrete com as informações sobre o contato e detalhe o evento, podendo determinar sua prioridade e status para auxiliar no relacionamento'+
  ' com o consumidor e inserí-lo no funil de vendas. ',
  'https://oimpresso.com/ajuda/agendamento/');


  RegistraWR_APP(TagAPP_Email_Massa, 56, TagModulo_CRM,
  'Email em massa',
  'Enviar Emails através do Office Impresso',
  'https://oimpresso.com/ajuda/conhecimento/cadastro-de-e-mail-em-massa/');


end;

initialization
  Inicializa_WR_APP_CRM;


end.















