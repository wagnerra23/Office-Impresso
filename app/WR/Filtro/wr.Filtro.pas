unit wr.Filtro;

interface

procedure Inicializa_WR_Filtro;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_Inicializa_WR_FILTRO = 2;


implementation

Uses
  Base, Tag.APP, Tag.Form, Tag.Filtro;

procedure Inicializa_WR_Filtro;
begin
  RegistraWR_Filtro(Tag_Filtro_Venda_Pedido_A_Faturar, Tag_Comissao, TagAPP_Venda_Comissoes,
                          'Não Enviadas para o Financeiro', 'Todas que não foram enviadas para o financeiro',
                          'P.DT_FINANCEIRO IS NULL', True);

  RegistraWR_Filtro(Tag_Filtro_Financeiro_Boleto, Tag_Boleto, TagAPP_Financeiro_Boleto,
                          'Boletos Não Registrados', 'Todos os boletos que ainda não foram registrados',
                          'COALESCE(B.PODE_IMPRIMIR, ''N'') <> ''S''', True);

  RegistraWR_Filtro(Tag_Filtro_Producao_Minhas_Tarefas, Tag_Producao, TagAPP_Producao,
                          'Minhas tarefas', 'Todos as minhas tarefas ordenado por Status e Prioridade',
                          '', True);  //PO.CODUSUARIO = :CodUsuario

{$REGION 'GRUPO ASSOCIACAO'}

  RegistraWR_Filtro(Tag_Filtro_Equipamento_Associacao_Caminhao, Tag_Equipamento_Associacao, TagAPP_Equipamento_Associacao,
                          'Caminhão', 'Filtrar apenas por caminhão',
                          'EQ.TIPO = ''CAMINHÃO''', True);

  RegistraWR_Filtro(Tag_Filtro_Equipamento_Associacao_SemiReboque, Tag_Equipamento_Associacao, TagAPP_Equipamento_Associacao,
                          'Semi-Reboque', 'Filtrar apenas por Semi-Reboque',
                          'EQ.TIPO = ''SEMI-REBOQUE''', True);
{$ENDREGION}
end;

initialization
  Inicializa_WR_Filtro;

end.

