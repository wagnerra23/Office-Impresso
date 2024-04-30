unit wr.APP.Compra;

interface

procedure Inicializa_WR_APP_Compra;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Compra;
begin
  RegistraWR_APP(TagAPP_Compra, 4, TagModulo_Compras,
  'Compras',
  'Visando otimizar o processo de compra, contamos com funcionalidades importantes que diminuirão o tempo da execução da tarefa,'+
  ' como a atualização automática dos preços, a conversão de produtos, a consulta de notas emitidas contra o CNPJ.',
  'https://oimpresso.com/ajuda/uma-necessidade-um-aplicativo/modulo-compras/');

  RegistraWR_APP(TagAPP_Importacao_Xml, 42, TagModulo_Compras,
  'Baixa e Importação XML',
  'Aprenda a dar entrada em seus produtos através da importação do arquivo xml ou da importação automática da nota pela Manifestação do Destinatário'+
  ' e melhore o gerenciamento de suas mercadorias ao selecionar o envio automático dos produtos adquiridos ao estoque. '+
  ' Defina a forma de pagamento e envie as respectivas parcelas ao financeiro ao finalizar a compra através da interface intuitiva do Office Impresso. ',
  'https://oimpresso.com/ajuda/baixa-e-importacao-xml/');

   RegistraWR_APP(TagAPP_Solicitacao_Compra, 43, TagModulo_Compras,
  'Solicitação de Compras',
  'Aprenda a realizar solicitações de compra com o Office Impresso para realizar uma administração eficaz do tempo e recursos de sua empresa,'+
  ' indicando quais insumos e produtos utilizados no dia a dia serão necessários e as respectivas quantidades.',
  'https://oimpresso.com/ajuda/solicitacao-de-compras/');

end;

initialization
  Inicializa_WR_APP_Compra;


end.















