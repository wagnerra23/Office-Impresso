unit wr.Agrupador.Pessoas;

interface

procedure Inicializa_WR_Agrupador_Pessoas;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Agrupador = 1;

implementation

Uses
  Base, DxCore, UnitFuncoes, Tag.APP, Tag.Agrupador, Tag.Form;

procedure Inicializa_WR_Agrupador_Pessoas;
begin
  RegistraWR_Agrupador(Tag_Agrupador_Pessoa_ANIVERSARIANTE, Tag_Pessoas, TagAPP_Financeiro, 'Aniversarios',        '', 'ANIVERSARIO', '',        TdxSortOrder.soAscending,'');
//  Registra_Agrupamento(Tag_Agrupamento_Pessoa_ANIVERSARIANTE, Tag_Pessoas_Cliente, TagAPP_Financeiro, 'Aniversarios',        '', 'ANIVERSARIO', '',        TdxSortOrder.soAscending,'');
end;

initialization
  Inicializa_WR_Agrupador_Pessoas;

end.

