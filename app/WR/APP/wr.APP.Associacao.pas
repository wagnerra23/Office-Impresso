unit wr.APP.Associacao;

interface

procedure Inicializa_WR_APP_Associacao;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Associacao;
begin
  RegistraWR_APP(TagAPP_Associacao, 44, TagModulo_Associacao, //PARA NAO DAR ERRO NO PRINCIPAL
  'Associado',
  'Aprenda a realizar o cadastro dos produtos localizados em estoque que serão utilizados em lotes,'+
  ' podendo estes serem artigos do estoque interno ou de terceiros,'+
  ' facilitando o controle e rastreabilidade desses produtos dentro do Office Impresso! ',
  'https://oimpresso.com/ajuda/lote/');


  RegistraWR_APP(TagAPP_Equipamento_Associacao, -1, TagModulo_Associacao,
  'Equipamentos',
  'Com o Office Impresso ficou mais fácil administrar sua Associação! '+
  'Efetue o cadastro de todos os equipamentos de seus associados de um modo prático, assegurando o cálculo correto dos valores de mensalidade'+
  ' e podendo visualizar o número de veículos vinculado a cada um e o respectivo valor a ser pago.',
  'https://oimpresso.com/ajuda/equipamentos/');

  RegistraWR_APP(TagAPP_Rateio, -1, TagModulo_Associacao,
  'Rateio',
  'Dificuldades em gerenciar sua Associação? Conte com o Office para facilitar os processos!'+
  'Através do cadastro completo de seus associados e equipamentos é possível'+
  'efetuar o lançamento financeiro correspondente à ocorrência, determinando como será realizado o cálculo e ratear os valores devidos, evitando inconsistências em suas finanças. ',
  'https://oimpresso.com/ajuda/rateio/');

  RegistraWR_APP(TagAPP_Boletos_Eventuais, 69, TagModulo_Associacao,
  'Boletos Eventuais',
  'Garanta que as finanças de sua associação estejam em dia com a ajuda do Office Impresso!'+
  'Gere boletos eventuais para seus associados referentes a contribuição de cadastramento, vistorias e despesas inesperadas.'+
  ' Informe sobre qual equipamento será efetuada a cobrança,'+
  ' a condição de pagamento e gere as parcelas informando a conta e vinculando um plano de contas ao lançamento para uma melhor organização de seu financeiro!',
  'https://oimpresso.com/ajuda/boletos-eventuais/');

  RegistraWR_APP(TagAPP_Ocorrencias, 68, TagModulo_Associacao,
  'Ocorrências',
  'Cadastre as ocorrências podendo anexar arquivos referentes ao sinistro e realize os respectivos lançamentos financeiros, acompanhando os valores já vinculados.'+
  ' Conte com a opção de duplicar o registro da ocorrência em casos de gastos extras após o primeiro rateio,'+
  ' e visualize a quantidade de associados cadastrados assim como o número de equipamentos vinculados a cada um. ',
  'https://oimpresso.com/ajuda/ocorrencias/');
end;

initialization
  Inicializa_WR_APP_Associacao;


end.















