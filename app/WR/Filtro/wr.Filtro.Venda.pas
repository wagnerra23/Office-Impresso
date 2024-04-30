unit wr.Filtro.Venda;

interface

procedure Inicializa_WR_Filtro_Venda;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Filtro_Venda = 1;


implementation

Uses
  Base, Tag.APP, Tag.Form, Tag.Filtro;

procedure Inicializa_WR_Filtro_Venda;
begin
  RegistraWR_Filtro(Tag_Filtro_Venda_A_Faturar, Tag_Venda, TagAPP_Venda,
                            'A Faturar', 'Todas as vendas a faturar',
                            'P.DT_FATURAMENTO IS NULL', True);
  RegistraWR_Filtro(Tag_Filtro_Venda_Sem_Nota, Tag_Venda, TagAPP_Venda,
                            'Vendas sem Nota', 'Todas as Vendas Faturadas sem Nota',
                            'P.DT_FATURAMENTO IS not NULL and P.NOTAFISCAL IS NULL', True);
  RegistraWR_Filtro(Tag_Filtro_Venda_A_Receber, Tag_Venda, TagAPP_Venda,
                            'Vendas A Receber', 'Todas as Vendas com Parcelas em Aberto',
                            'P.SITUACAOFINANCEIRA = ''Em Aberto''', True);


  RegistraWR_Filtro(Tag_Filtro_Venda_Faturadas, Tag_Venda, TagAPP_Venda,
                            'Faturadas', 'Todas as vendas Faturadas',
                            'P.DT_FATURAMENTO IS not NULL', True);


  RegistraWR_Filtro(Tag_Filtro_Arquivado, 0, 0,
                            'Arquivados', 'Mostra os itens inativados',
                            'Ativo = ''N''', True);
end;

initialization
  Inicializa_WR_Filtro_Venda;


end.

