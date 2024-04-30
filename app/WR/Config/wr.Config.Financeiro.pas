unit wr.Config.Financeiro;

interface

procedure Inicializa_Config_Financeiro;

implementation

uses Base, wr.Config.Associacao, wr.Config.Venda, wr.Config.Venda.Pedido, wr.Config.Venda.TabelaDePreco, Tag.APP, Tag.Config;

procedure Inicializa_Config_Financeiro;
begin
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_FINANCEIRO_PERMITEDOCUMENTOSDUPLICADOS, '',
                  'FINANCEIRO_PERMITEDOCUMENTOSDUPLICADOS',
                  'Permitir documentos duplicados para mesma Pessoa',
                  'Observacao', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_FINANCEIRO_PERMITE_PARCELAS_NAO_PAGAS, '',
                  'FINANCEIRO_PERMITE_PARCELAS_NAO_PAGAS',
                  'Recebimento - Permitir recebimento de parcelas de vendas que tenham parcelas anteriores não pagas',
                  'Observacao', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_JUROS, '',
                  'JUROS',
                  'Juros Padrão',
                  'Observacao', 'currency');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_MULTA, '',
                  'MULTA',
                  'Multa Padrão',
                  'Observacao', 'currency');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_DIAS_TOLERANCIA, '',
                  'DIAS_TOLERANCIA',
                  'Dias de Tolerância',
                  'Observacao', 'currency');

  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_VENDA_EXCLUIR_PREFIXO_OS_PARCELA_FINANCEIRO,
                  'Parâmetros', 'VENDA_EXCLUIR_PREFIXO_OS_PARCELA_FINANCEIRO',
                  'Excluir o prefixo "Os " da parcela do financeiro gerada na venda.',
                  'Ao encaminhar para o financeiro, a parcela é encaminhada como "OS XXXX-X".' + sLineBreak +
                  'Ao marcar esta opção, a parcela será encaminhada apenas como "XXXX-X".', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS,
                  'Parâmetros', 'VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS',
                  'Dias de tolerância de parcelas vencidas:',
                  '', 'currency');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_VENDA_IMPEDIR_PARCELA_ABERTA,
                  'Parâmetros', 'VENDA_IMPEDIR_PARCELA_ABERTA',
                  'Impedir Faturamento caso houver parcela em aberto',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_USAR_NOME_FANTASIA,
                  'Parâmetros', 'USAR_NOME_FANTASIA',
                  'Utiliza o nome Fantasia como padrão de visualização.',
                  '', 'checkbox');

  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_NF_PARCELAS_PLANO_CONTAS_OBRIGATORIO,
                'Parcelas Financeiras', 'NF_PARCELAS_PLANO_CONTAS_OBRIGATORIO',
                'Plano de Contas Obrigatório.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_NF_PARCELAS_CONTA_OBRIGATORIO,
                'Parcelas Financeiras', 'NF_PARCELAS_CONTA_OBRIGATORIO',
                'Conta Obrigatório (Caixa / Banco).',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_NF_PARCELAS_TIPO_PAGAMENTO_OBRIGATORIO,
                'Parcelas Financeiras', 'NF_PARCELAS_TIPO_PAGAMENTO_OBRIGATORIO',
                'Tipo de Pagamento Obrigatório',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_NF_PARCELAS_CONTA_PADRAO,
                'Parcelas Financeiras', 'NF_PARCELAS_CONTA_PADRAO',
                'Conta Padrão',
                '', 'CONTAS');
  RegistraWR_Config(TagAPP_Financeiro, Tag_Config_CAIXA_PLANO_CONTAS_PADRAO_RETIRADA,
                'Plano de contas padrão para o Retirada de caixa (Fechamento)', 'CAIXA_PLANO_CONTAS_PADRAO_RETIRADA',
                'Código Plano de Contas',
                '', 'PLANO DE CONTAS');
end;

initialization
  Inicializa_Config_Financeiro;

end.

