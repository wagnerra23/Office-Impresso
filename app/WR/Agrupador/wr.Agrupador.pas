unit wr.Agrupador;

interface

procedure Inicializa_WR_Agrupador;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_Inicializa_WR_Agrupador = 1;

implementation

Uses
  Base, DxCore, UnitFuncoes, Tag.APP, Tag.Agrupador, Tag.Form;

procedure Inicializa_WR_Agrupador;
begin
  // Associação
  RegistraWR_Agrupador(Tag_Agrupador_Equpamento_Associacao_Tipo, Tag_Equipamento_Associacao, TagAPP_Equipamento_Associacao, 'Tipo(Caminhão, Semi Reboque)', '', 'TIPO', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Pessoa_ANIVERSARIANTE, Tag_Pessoas, TagAPP_Financeiro, 'Aniversarios',        '', 'ANIVERSARIO', '',        TdxSortOrder.soAscending,'');

  // Produto simples
  RegistraWR_Agrupador(Tag_Agrupador_Produto_PRODUTO_CATEGORIA,Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'Categoria de Produto', '', 'PRODUTO_CATEGORIA', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Produto_FORNECEDOR, Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'Fornecedor', '', 'FORNECEDOR', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Produto_CODNF_NCM, Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'NCM', '', 'CODNF_NCM', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Produto_PRODUTO_TIPO, Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'Tipo de Produto', '', 'PRODUTO_TIPO', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Produto_UNIDADE, Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'Unidade', '', 'UNIDADE', '',        TdxSortOrder.soAscending,'');

  RegistraWR_Agrupador(Tag_Agrupador_Produto_PRODUTO_GRUPO, Tag_Produto_ProdutoSimples, TagAPP_Venda,
                      'Grupo de Produtos', '', 'PRODUTO_GRUPO', '',        TdxSortOrder.soAscending,'');



  RegistraWR_Agrupador(Tag_Agrupador_Estoque_PRODUTO_GRUPO,     Tag_Estoque_Requisicao, TagAPP_Estoque, 'Grupo de Produto',        '', 'PRODUTO_GRUPO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_PRODUTO_CATEGORIA, Tag_Estoque_Requisicao, TagAPP_Estoque, 'Categoria de Produto',        '', 'PRODUTO_CATEGORIA', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_UNIDADE,           Tag_Estoque_Requisicao, TagAPP_Estoque, 'Unidade',        '', 'UNIDADE', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_CODNF_NCM,         Tag_Estoque_Requisicao, TagAPP_Estoque, 'NCM',        '', 'CODNF_NCM', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_PRODUTO_TIPO,      Tag_Estoque_Requisicao, TagAPP_Estoque, 'Tipo de Produto',        '', 'PRODUTO_TIPO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_FORNECEDOR,        Tag_Estoque_Requisicao, TagAPP_Estoque, 'Fornecedor',        '', 'FORNECEDOR', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_API_MODULO,                Tag_API_Oimpresso, TagAPP_Integracao_OImpresso, 'Módulo',        '', 'MODULO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Req_FUNCIONARIO,   Tag_Estoque_Requisicao, TagAPP_Estoque, 'Funcionário',        '', 'FUNCIONARIO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Req_EQUIPE,        Tag_Estoque_Requisicao, TagAPP_Estoque, 'Equipe',        '', 'EQUIPE', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Req_PRODUTO,       Tag_Estoque_Requisicao, TagAPP_Estoque, 'Produto',        '', 'PRODUTO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_DESCRICAO, Tag_Estoque_Estoque, TagAPP_Estoque, 'Descrição',        '', 'DESCRICAO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_CATEGORIA, Tag_Estoque_Estoque, TagAPP_Estoque, 'Categoria',        '', 'CATEGORIA', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_TIPO,      Tag_Estoque_Estoque, TagAPP_Estoque, 'Tipo',        '', 'TIPO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_GRUPO,     Tag_Estoque_Estoque, TagAPP_Estoque, 'Grupo',        '', 'GRUPO', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_MARCA,     Tag_Estoque_Estoque, TagAPP_Estoque, 'Marca',        '', 'MARCA', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Estoque_Estoque_EMPRESA,   Tag_Estoque_Estoque, TagAPP_Estoque, 'Empresa',        '', 'CODEMPRESA', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Notificacao_SLA,           Tag_Notificacao_Disparada, TagAPP_Notificacoes, 'SLA',        '', 'SLA', '',        TdxSortOrder.soAscending,'');

//  Registra_Agrupamento(Tag_Agrupador_Producao_Acabamento,      [Tag_Producao,Tag_Agenda_Kanban], TagAPP_Ordem_Producao, 'Acabamento',       '', 'SLA', '',        TdxSortOrder.soAscending,'');
//  Registra_Agrupamento(Tag_Agrupador_Producao_Categoria,       [Tag_Producao,Tag_Agenda_Kanban], TagAPP_Ordem_Producao, 'Categoria',        '', 'SLA', '',        TdxSortOrder.soAscending,'');
//  Registra_Agrupamento(Tag_Agrupador_Producao_Grupo_Produto,   [Tag_Producao,Tag_Agenda_Kanban], TagAPP_Ordem_Producao, 'Grupo de Produto', '', 'SLA', '',        TdxSortOrder.soAscending,'');
//  Registra_Agrupamento(Tag_Agrupador_Producao_Marcador,        [Tag_Producao,Tag_Agenda_Kanban], TagAPP_Ordem_Producao, 'Marcador',          '', 'SLA', '',        TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Produto,         Tag_Producao, TagAPP_Ordem_Producao, 'Produto',          '', 'PRODUTO', 'PRODUTO',        TdxSortOrder.soAscending,'CODPRODUTO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Local_Aplicacao, Tag_Producao, TagAPP_Ordem_Producao, 'Local de Aplicação','', 'LOCAL', 'LOCAL',        TdxSortOrder.soAscending,'CODLOCAL');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Impressao_Tipo,  Tag_Producao, TagAPP_Ordem_Producao, 'Tipo de Impressão', '', 'TIPO_IMPRESSAO', 'TIPO_IMPRESSAO',        TdxSortOrder.soAscending,'CODTIPO_IMPRESSAO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Estagio,         Tag_Producao, TagAPP_Ordem_Producao, 'Estágio',           '', 'PRODUCAO_ESTAGIO', 'PRODUCAO_ESTAGIO',        TdxSortOrder.soAscending,'PRODUCAO_ESTAGIO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Equipe,          Tag_Producao, TagAPP_Ordem_Producao, 'Equipe',            '', 'CENTRO_TRABALHO', 'CENTRO_TRABALHO',        TdxSortOrder.soAscending,'CODCENTRO_TRABALHO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Funcionario,     Tag_Producao, TagAPP_Ordem_Producao, 'Funcionário',       '', 'FUNCIONARIO', 'FUNCIONARIO', TdxSortOrder.soAscending,'PESSOA_FUNCIONARIO_CODIGO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Situacao,        Tag_Producao, TagAPP_Ordem_Producao, 'Situação',          '', 'SITUACAO', 'SITUACAO',        TdxSortOrder.soAscending,'SITUACAO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Cliente,         Tag_Producao, TagAPP_Ordem_Producao, 'Cliente',           '', 'RAZAOSOCIAL', 'RAZAOSOCIAL',  TdxSortOrder.soAscending,'PESSOA_RESPONSAVEL_CODIGO');

//  Esse acho que tem criar as Tags
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Produto,         Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Produto',          '', 'PRODUTO', 'PRODUTO',        TdxSortOrder.soAscending,'CODPRODUTO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Local_Aplicacao, Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Local de Aplicação','', 'LOCAL', 'LOCAL',        TdxSortOrder.soAscending,'CODLOCAL');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Impressao_Tipo,  Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Tipo de Impressão', '', 'TIPO_IMPRESSAO', 'TIPO_IMPRESSAO',        TdxSortOrder.soAscending,'CODTIPO_IMPRESSAO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Estagio,         Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Estágio',           '', 'PRODUCAO_ESTAGIO', 'PRODUCAO_ESTAGIO',        TdxSortOrder.soAscending,'PRODUCAO_ESTAGIO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Equipe,          Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Equipe',            '', 'CENTRO_TRABALHO', 'CENTRO_TRABALHO',        TdxSortOrder.soAscending,'CODCENTRO_TRABALHO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Funcionario,     Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Funcionário',       '', 'FUNCIONARIO', 'FUNCIONARIO', TdxSortOrder.soAscending,'PESSOA_FUNCIONARIO_CODIGO');
  RegistraWR_Agrupador(Tag_Agrupador_Producao_Kanban_Situacao,        Tag_Agenda_Kanban, TagAPP_Ordem_Producao, 'Situação',          '', 'SITUACAO', 'SITUACAO',        TdxSortOrder.soAscending,'SITUACAO');



//  Tag_Agrupador_Producao_Acabamento = 36;
//  Tag_Agrupador_Producao_Categoria = 37;
//  Tag_Agrupador_Producao_Grupo_Produto = 38;
//  Tag_Agrupador_Producao_Produto = 39;
//  Tag_Agrupador_Producao_Local_Aplicacao = 40;
//  Tag_Agrupador_Producao_Marcador = 41;
//  Tag_Agrupador_Producao_Impressao_Tipo = 42;
//  Tag_Agrupador_Producao_Estagio = 43;
//  Tag_Agrupador_Producao_Equipe = 44;
//  Tag_Agrupador_Producao_Funcionario = 45;
//  Tag_Agrupador_Producao_Situacao = 46;


end;

initialization
  Inicializa_WR_Agrupador


end.

