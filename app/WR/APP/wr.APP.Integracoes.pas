unit wr.APP.Integracoes;

interface

procedure Inicializa_WR_APP_Integracoes;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Integracoes;
begin
  RegistraWR_APP(TagAPP_Integracao_OImpresso, 60, TagModulo_Integracoes,
  'OImpresso',
  'Pensando em trabalhar home-office e buscando uma solução ideal para atender as demandas de sua empresa?'+
  ' Te apresentamos o OImpresso! A integração do sistema Office Impresso com a plataforma online que abrange todos os aplicativos'+
  ' necessários para garantir a execução dos processos sem a necessidade da instalação do software. Conte com a praticidade de acessar onde e quando quiser!',
  'https://oimpresso.com/ajuda/oimpresso/');

  RegistraWR_APP(TagAPP_Integracao_Sintegra, -1, TagModulo_Integracoes,
  'SINTEGRA',
  'Com o Office Impresso você garante a emissão do arquivo SINTEGRA para ficar em dia com o Fisco! Com poucos cliques os dados relacionados as transações de entrada e saída'+
  ' de mercadorias ou prestações de serviço são reunidos com as notas fiscais emitidas para serem transmitidas ao fisco.'+
  ' Vale lembrar que a emissão deste arquivo é obrigatória para todos os contribuintes do ICMS!',
  'https://oimpresso.com/ajuda/sintegra/');


  RegistraWR_APP(TagAPP_Integracao_SPED, -1, TagModulo_Integracoes,
  'SPED',
  'Conte com o Office Impresso para auxiliar na legalização de sua empresa! '+
  'Através da integração com o aplicativo SPED (Sistema Publico de Escrituração Digital) é possível simplificar a geração de relatórios'+
  ' a partir de todas as notas de entrada e saída, ou seja, abrangendo impostos federais, estaduais e municipais.',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-speed/');

  RegistraWR_APP(TagAPP_Integracao_IBASE, -1, TagModulo_Integracoes,
  'IBASE',
  'Integração com shopping, ararangua.',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-speed/');

  RegistraWR_APP(TagAPP_Integracao_ConsultaTEC, -1, TagModulo_Integracoes,
  'ConsultaTEC',
  'Integração com o Shopping de Brusque',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-speed/');
end;

initialization
  Inicializa_WR_APP_Integracoes;


end.















