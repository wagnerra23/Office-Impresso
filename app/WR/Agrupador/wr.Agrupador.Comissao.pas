unit wr.Agrupador.Comissao;

interface

procedure Inicializa_WR_Agrupador_Comissao;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Agrupador_Comissao = 1;

implementation

Uses
  Base, DxCore, Tag.APP, Tag.Agrupador, Tag.Form;

procedure Inicializa_WR_Agrupador_Comissao;
begin
  RegistraWR_Agrupador(Tag_Agrupador_Comissao_DESCRICAO,   Tag_Comissao, TagAPP_Venda_Comissoes, 'Referência', '', 'DESCRICAO', '',     TdxSortOrder.soAscending,'');
  RegistraWR_Agrupador(Tag_Agrupador_Comissao_RAZAOSOCIAL, Tag_Comissao, TagAPP_Venda_Comissoes, 'Comissionado', '', 'RAZAOSOCIAL', '', TdxSortOrder.soAscending,'');
end;

initialization
  Inicializa_WR_Agrupador_Comissao;

end.

