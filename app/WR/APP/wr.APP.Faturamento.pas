unit wr.APP.Faturamento;

interface

procedure Inicializa_WR_APP_Faturamento;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Faturamento;
begin
  RegistraWR_APP(TagAPP_Faturamento, 16, TagModulo_Faturamento,  //PARA NAO DAR ERRO NO PRINCIPAL
  'FATURAMENTO',
  'Gerencie toda a produção através de uma única tela! '+
  'Com o Office Impresso você pode executar as funções essenciais como iniciar, pausar, encaminhar, duplicar, concluir, finalizar, cancelar, arquivar e obter os detalhes da ordem de serviço '+
  'através de poucos cliques.',
  'https://oimpresso.com/ajuda/producao/');

  RegistraWR_APP(TagAPP_NFCe, 64, TagModulo_Faturamento,
  'NFC-e',
  'Aprenda a realizar suas vendas e emitir notas fiscais de consumidor através da interface intuitiva apresentada pelo Office Impresso!'+
  ' Informe o cliente, adicione seus produtos, determine a condição de pagamento e o caixa onde será realizado o lançamento.'+
  ' Insira os dados de tributação da Natureza de Operação para garantir a emissão correta das notas e realize o faturamento para ter suas parcelas registradas no financeiro.',
  'https://oimpresso.com/ajuda/nfc-e/');


  RegistraWR_APP(TagAPP_Nfe, 65, TagModulo_Faturamento,
  'NF-e',
  'Aprenda a realizar suas vendas e emitir notas fiscais através da interface intuitiva apresentada pelo Office Impresso! Informe o cliente, adicione seus produtos,'+
  ' determine a condição de pagamento e o caixa onde será realizado o lançamento.'+
  ' Insira os dados de tributação da Natureza de Operação para garantir a emissão correta das notas e realize o faturamento para ter suas parcelas registradas no financeiro. ',
  'https://oimpresso.com/ajuda/nf-e/');

  RegistraWR_APP(TagAPP_NFSe, 66, TagModulo_Faturamento,
  'NFS-e',
  'Sua empresa é prestadora de serviço para pessoas físicas ou jurídicas? Não se preocupe!'+
  ' Caso a prefeitura de seu município autorize a emissão de notas por software de terceiros o Office impresso te auxilia na tarefa para garantir a regularidade da empresa!'+
  ' Informe o cliente, adicione os serviços e determine a condição de pagamento e o caixa onde será realizado o lançamento.'+
  ' Insira a tributação da natureza da operação para que não haja retrabalho, garantindo o cálculo automático dos impostos!',
  'https://oimpresso.com/ajuda/nfs-e/');

  RegistraWR_APP(TagAPP_PAF, 67, TagModulo_Faturamento,
  'PAF',
  'Efetue suas vendas e emita os cupons fiscais de maneira simples e rápida! Através da integração do Office Impresso ao PAF é possível realizar a emissão de documentos e cupons fiscais com tranquilidade,'+
  ' seguindo as recomendações da SEFAZ. ',
  'https://oimpresso.com/ajuda/paf/');
end;

initialization
  Inicializa_WR_APP_Faturamento;


end.















