unit wr.Config;

interface

procedure Inicializa_Config_Nao_Categorizados;

implementation

uses Base;

procedure Inicializa_Config_Nao_Categorizados;
begin
  {$REGION 'CONFIGS QUE NÃO FUNCIONAM'}
  { NAO FUNCIONAM
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_ANEXOS_ITENS_PASTAS_SEPARADAS,
                  'Parâmetros', 'VENDA_ANEXOS_ITENS_PASTAS_SEPARADAS',
                  'Criar pastas separadas para os anexos dos itens da Venda.',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_EXIBIR_DADOS_COLETA,
                  'Parâmetros', 'VENDA_EXIBIR_DADOS_COLETA',
                  'Exibir dados de coleta na aba de Nota Fiscal.',
                  'Habilita os dados de coleta do material na aba de NFe.' + sLineBreak +
                  'Serão habilitados campos como: Transportadora, Peso da Mercadoria, etc', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_PEDIR_SENHA_ALTERA_VALOR,
                  'Parâmetros', 'VENDA_PEDIR_SENHA_ALTERA_VALOR',
                  'Pedir senha para Alterar Valor de Produto',
                  'Esta configuração é uma medida de segurança para que os funcionários não possam alterar valor sem solicitar senha.', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_COM_NOTA,
                  'Parâmetros', 'VENDA_COM_NOTA',
                  'Fatura e Emite Nota',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_TITULO_BOTOES_FATURAMENTO,
                  'Parâmetros', 'VENDA_TITULO_BOTOES_FATURAMENTO',
                  'Título Botões Faturamento',
                  '', 'text');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_FINANCEIRO_CONTA_PADRAO,
                  'Parâmetros', 'VENDA_FINANCEIRO_CONTA_PADRAO',
                  'Conta Padrão',
                  '', 'CONTAS');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_???,
                  'Parâmetros', '',
                  'Definir Logo Empresa',
                  '', 'image');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_PLANO_CONTAS_VENDEDOR_CRIAR,
                  'Parâmetros', 'VENDA_PLANO_CONTAS_VENDEDOR_CRIAR',
                  'Criar Plano de Contas automaticamente para os vendedores.',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_PLANO_CONTAS_VENDEDOR,
                  'Parâmetros', 'VENDA_PLANO_CONTAS_VENDEDOR',
                  'Plano de Contas Título para os Vendedores',
                  '', 'PLANO DE CONTAS');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_TELA_FRENTE_VERSO,
                  'Parâmetros', 'VENDA_TELA_FRENTE_VERSO',
                  'Exibir tela ao marcar Frente e Verso, permitindo editar os dados do cálculo do valor.',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_BALAO_QUANTIDADE_RESERVADA,
                  'Parâmetros', 'VENDA_BALAO_QUANTIDADE_RESERVADA',
                  'Informar quantidade do produto reservada em outras vendas.',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_PERGUNTA_COMPOSICAO,
                  'Parâmetros', 'VENDA_PERGUNTA_COMPOSICAO',
                  'Não perguntar sobre composição do produto ao adicionar nos items.',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_LIMITE_DESCONTO,
                  'Parâmetros', 'LIMITE_DESCONTO',
                  'Limite de Desconto',
                  '', 'currency');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VENDA_APROVAR_PRODUCAO,
                  'Parâmetros', 'VENDA_APROVAR_PRODUCAO',
                  'Aprovar Produção automaticamente',
                  '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PRODUCAO_CENTRO_TRABALHO_PADRAO,
                  'Parâmetros', 'PRODUCAO_CENTRO_TRABALHO_PADRAO',
                  'Centro de Trabalho Padrão',
                  '', 'CENTRO_TRABALHO');

  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PESSOAS_OBRIGAR_CAMPOS_ENDERECO,
                'Parâmetros', 'PESSOAS_OBRIGAR_CAMPOS_ENDERECO',
                'Campos de Endereço obrigatórios.',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PESSOAS_OBRIGAR_CAMPO_FONE1,
                'Parâmetros', 'PESSOAS_OBRIGAR_CAMPO_FONE1',
                'Telefone Obrigatorio.',
                '', 'checkbox');

  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PRODUCAO_ARQUIVAR_OS_FINALIZADA,
                'Parâmetros', 'PRODUCAO_ARQUIVAR_OS_FINALIZADA',
                'Arquivar automaticamente Ordens de Serviço finalizadas',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_VERIFICA_FATURA_VENDA_PRODUCAO,
                'Parâmetros', 'VERIFICA_FATURA_VENDA_PRODUCAO',
                'Verificar se a venda está faturada ao finalizar a produção.',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PRODUCAO_INCLUIR_OS_LINHA_DO_TEMPO,
                'Parâmetros', 'PRODUCAO_INCLUIR_OS_LINHA_DO_TEMPO',
                'Incluir o número da OP e da OS nas mensagens da Linha do Tempo',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_PRODUCAO_VINCULA_HISTORICO,
                'Parâmetros', 'PRODUCAO_VINCULA_HISTORICO',
                'Víncula histórico de producão quando substituída',
                '', 'checkbox');

  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_NF_ENTRADA_ATUALIZA_COMPOSICAO,
                'Parcelas Financeiras', 'NF_ENTRADA_ATUALIZA_COMPOSICAO',
                'Atualização do Preço na Composição na Compra do Produto',
                '', 'checkbox');

  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_NF_ENTRADA_PRODUTO_TIPO_DESCRICAO,
                'Parcelas Financeiras', 'NF_ENTRADA_PRODUTO_TIPO_DESCRICAO',
                'Tipo Padrão',
                '', 'LookupCombo');


  // Caixa


  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_CAIXA_PEDE_PERMISSAO_REMOVER_ITEM_VENDA,
                'Regras Exclusivas do Operador de Caixa', 'CAIXA_PEDE_PERMISSAO_REMOVER_ITEM_VENDA',
                'Pede permissão para remover item da venda',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_CAIXA_PEDE_PERMISSAO_CANCELAR_VENDA,
                'Regras Exclusivas do Operador de Caixa', 'CAIXA_PEDE_PERMISSAO_CANCELAR_VENDA',
                'Pede Permissão para cancelar a venda',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_CAIXA_IMPRIMIR_VENDA_APOS_FATURAMENTO,
                'Regras Exclusivas do Operador de Caixa', 'CAIXA_IMPRIMIR_VENDA_APOS_FATURAMENTO',
                'Imprimir venda somente apos o Faturamento(em Caso da Venda estar em Modo de Pagamento',
                '', 'checkbox');

  // Config Almoxarifado
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_ESTOQUE_PENDENTE_VENDA,
                '', 'ESTOQUE_PENDENTE_VENDA',
                'Aplica Pendencia no estoque da Venda',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_ESTOQUE_PENDENTE_COMPRA,
                '', 'ESTOQUE_PENDENTE_COMPRA',
                'Aplica Pendencia no estoque da Compra',
                '', 'checkbox');
  Registra_Config(AAPP[TagAPP_Venda], Tag_Config_ESTOQUE_PENDENTE_PRODUCAO,
                '', 'ESTOQUE_PENDENTE_PRODUCAO',
                'Aplica Pendencia no estoque da Producao',
                '', 'checkbox');   }
  {$ENDREGION}
end;

initialization
  Inicializa_Config_Nao_Categorizados;

end.

