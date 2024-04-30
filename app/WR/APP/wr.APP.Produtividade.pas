unit wr.APP.Produtividade;

interface

procedure Inicializa_WR_APP_Produtividade;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Produtividade;
begin
  RegistraWR_APP(TagAPP_Notificacoes, 57, TagModulo_Produtividade,
  'Mensagens',
  'Conte com o Office Impresso para te auxiliar a executar todas as tarefas necessárias para efetuar um bom gerenciamento de sua empresa!'+
  ' Ative as notificações podendo selecionar as mais pertinentes para seu negócio e determine a condição de execução para cada uma,'+
  ' garantindo assim que nenhum processo importante fique para trás!',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-de-notificacoes/');

  RegistraWR_APP(TagAPP_Aprovacoes, 58, TagModulo_Produtividade,
  'Aprovações',
  'Com o Office Impresso é possível administrar todas as solicitações de seus funcionários de um modo prático e objetivo, integrando todos os aplicativos do sistema!'+
  ' Estabeleça responsáveis para aprovar as solicitações,'+
  ' conte com notificações para visualizar os novos pedidos e um painel para checar o status de todas as solicitações realizadas até o momento. ',
  'https://oimpresso.com/ajuda/aprovacoes/');
end;

initialization
  Inicializa_WR_APP_Produtividade;


end.















