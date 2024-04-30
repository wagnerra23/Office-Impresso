unit Tag.Agrupador;

interface

Uses
  Classes.APP, DXCore, System.Generics.Collections;

const
  Tag_Agrupador_First = 0;
  Tag_Agrupador_Venda_VENDA_TIPO = 1;
  Tag_Agrupador_Venda_SITUACAO = 2;
  Tag_Agrupador_Venda_SITUACAOFINANCEIRA = 3;
  Tag_Agrupador_Venda_REPRESENTANTE = 4;
  Tag_Agrupador_Venda_FUNCIONARIO = 5;
  Tag_Agrupador_Venda_STATUS = 6;
  Tag_Agrupador_Venda_VENDA_ESTAGIO = 7;
  Tag_Agrupador_Venda_RAZAOSOCIAL = 8;
  Tag_Agrupador_Venda_AGENCIA = 9;
  Tag_Agrupador_Produto_PRODUTO_CATEGORIA = 10;
  Tag_Agrupador_Produto_FORNECEDOR = 11;
  Tag_Agrupador_Produto_CODNF_NCM = 12;
  Tag_Agrupador_Produto_PRODUTO_TIPO = 13;
  Tag_Agrupador_Produto_UNIDADE = 14;
  Tag_Agrupador_Produto_PRODUTO_GRUPO = 15;
  Tag_Agrupador_Comissao_DESCRICAO = 16;
  Tag_Agrupador_Comissao_RAZAOSOCIAL = 17;
  Tag_Agrupador_Estoque_PRODUTO_GRUPO = 18;
  Tag_Agrupador_Estoque_PRODUTO_CATEGORIA = 19;
  Tag_Agrupador_Estoque_UNIDADE = 20;
  Tag_Agrupador_Estoque_CODNF_NCM = 21;
  Tag_Agrupador_Estoque_PRODUTO_TIPO = 22;
  Tag_Agrupador_Estoque_FORNECEDOR = 23;
  Tag_Agrupador_API_MODULO = 24;
  Tag_Agrupador_Estoque_Req_FUNCIONARIO = 25;
  Tag_Agrupador_Estoque_Req_EQUIPE = 26;
  Tag_Agrupador_Estoque_Req_PRODUTO = 27;
  Tag_Agrupador_Estoque_Estoque_DESCRICAO = 28;
  Tag_Agrupador_Estoque_Estoque_CATEGORIA = 29;
  Tag_Agrupador_Estoque_Estoque_TIPO = 30;
  Tag_Agrupador_Estoque_Estoque_GRUPO = 31;
  Tag_Agrupador_Estoque_Estoque_MARCA = 32;
  Tag_Agrupador_Estoque_Estoque_EMPRESA = 33;
  Tag_Agrupador_Notificacao_SLA = 34;
  Tag_Agrupador_Pessoa_ANIVERSARIANTE = 35;
  Tag_Agrupador_Producao_Acabamento = 36;
  Tag_Agrupador_Producao_Categoria = 37;
  Tag_Agrupador_Producao_Grupo_Produto = 38;
  Tag_Agrupador_Producao_Produto = 39;
  Tag_Agrupador_Producao_Local_Aplicacao = 40;
  Tag_Agrupador_Producao_Marcador = 41;
  Tag_Agrupador_Producao_Impressao_Tipo = 42;
  Tag_Agrupador_Producao_Estagio = 43;
  Tag_Agrupador_Producao_Equipe = 44;
  Tag_Agrupador_Producao_Funcionario = 45;
  Tag_Agrupador_Producao_Situacao = 46;

  Tag_Agrupador_Venda_CONDICAOPAGTO = 47;
  Tag_Agrupador_Equpamento_Associacao_Tipo = 48;

  Tag_Agrupador_Producao_Kanban_Produto = 49;
  Tag_Agrupador_Producao_Kanban_Local_Aplicacao = 50;
  Tag_Agrupador_Producao_Kanban_Impressao_Tipo = 51;
  Tag_Agrupador_Producao_Kanban_Estagio = 52;
  Tag_Agrupador_Producao_Kanban_Equipe = 53;
  Tag_Agrupador_Producao_Kanban_Funcionario = 54;
  Tag_Agrupador_Producao_Kanban_Situacao = 55;

  Tag_Agrupador_Producao_Cliente = 56;

  Tag_Agrupador_Last = Tag_Agrupador_Producao_Cliente;


procedure RegistraWR_Agrupador(ATagWR_Agrupador: integer; ATag_Form, ATag_App: integer; ANome, ADescricao, AAgrupamento, ACampo_Categoria: string; AOrdenacao: TdxSortOrder; ACodigo_Agrupamento: String);


Var
  AWR_Agrupador : array [Tag_Agrupador_First..Tag_Agrupador_Last] of TWR_Agrupador;

implementation

procedure RegistraWR_Agrupador(ATagWR_Agrupador: integer; ATag_Form, ATag_App: integer; ANome, ADescricao, AAgrupamento, ACampo_Categoria: string; AOrdenacao: TdxSortOrder; ACodigo_Agrupamento: string);
begin
  if AWR_Agrupador[ATagWR_Agrupador] = nil then
    AWR_Agrupador[ATagWR_Agrupador]                 := TWR_Agrupador.Create;

  AWR_Agrupador[ATagWR_Agrupador].Codigo             := ATagWR_Agrupador;
  AWR_Agrupador[ATagWR_Agrupador].CodWR_App          := ATag_App;
  AWR_Agrupador[ATagWR_Agrupador].TagWR_Form         := ATag_Form;
  AWR_Agrupador[ATagWR_Agrupador].Nome               := ANome;
  AWR_Agrupador[ATagWR_Agrupador].Descricao          := ADescricao;
  AWR_Agrupador[ATagWR_Agrupador].Agrupamento        := AAgrupamento;
  AWR_Agrupador[ATagWR_Agrupador].Campo_Categoria    := ACampo_Categoria;
  AWR_Agrupador[ATagWR_Agrupador].Ordenacao          := AOrdenacao;
  AWR_Agrupador[ATagWR_Agrupador].Codigo_Agrupamento := ACodigo_Agrupamento;


end;
  
end.