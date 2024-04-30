unit wr.KPI;

interface

procedure Inicializa_WR_KPI;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_KPI = 1;

implementation

Uses
  Tag.APP, Tag.KPI;

procedure Inicializa_WR_KPI;
begin

  RegistraKPI(TagKPI_Taxa_de_Atraso_Por_Funcionário_Por_Produto,TagAPP_Producao,'Taxa de Atraso Por Funcionário Por Produto','Motivo: Alteração no Planejamento/Falta de Matéria-Prima/Falta Mão de Obra/Problema Equipamento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Perda_Por_Funcionário_Por_Produto,TagAPP_Producao,'Taxa de Perda Por Funcionário Por Produto','Motivo: Erro Humano/ Problema Máquina)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Reaproveitamento_Por_Funcionário_Por_Produto,TagAPP_Producao,'Taxa de Reaproveitamento Por Funcionário Por Produto','Ainda não funciona, pois depende do planejamento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Produtividade_Funcionário_Hora_Por_Equipe,TagAPP_Producao,'Produtividade Funcionário Hora Por Equipe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Serviços_Produtos_Entregues_Por_Funcionário,TagAPP_Producao,'Número de Serviços Produtos Entregues Por Funcionário','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Produção_Por_Funcionário_Por_Produto_Serviço,TagAPP_Producao,'Taxa de Produção Por Funcionário Por Produto Serviço','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Inatividade,TagAPP_Producao,'Tempo de Inatividade','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Eficiência_do_Equipamento,TagAPP_Producao,'Eficiência do Equipamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_médio_entre_Falhas_Producao,TagAPP_Producao,'Tempo médio entre Falhas Producao','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_médio_para_Reparos,TagAPP_Producao,'Tempo médio para Reparos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Produção_Parada_Por_Funcionário_Por_Produto,TagAPP_Producao,'Produção Parada Por Funcionário Por Produto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Projetos_Concluídos_fora_Prazo,TagAPP_Projeto,'Taxa de Projetos Concluídos fora Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Projetos_Concluídos_no_Prazo,TagAPP_Projeto,'Taxa de Projetos Concluídos no Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Projetos_Dentro_do_Orçamento,TagAPP_Projeto,'Taxa de Projetos Dentro do Orçamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Projetos_Fora_do_Orçamento,TagAPP_Projeto,'Taxa de Projetos Fora do Orçamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Problemas_Incidentes,TagAPP_Projeto,'Taxa de Problemas Incidentes','Número de problemas ou incidentes reportados durante a execução do projeto)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Recursos,TagAPP_Projeto,'Taxa de Utilização de Recursos','Percentual de recursos',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_por_Atividade_Tarefa,TagAPP_Projeto,'Custo Médio por Atividade Tarefa','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Tarefas_Concluídas,TagAPP_Projeto,'Taxa de Tarefas Concluídas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Tarefas_Transferidas,TagAPP_Projeto,'Taxa de Tarefas Transferidas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso,TagAPP_Projeto,'Taxa de Atraso','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Alteração_do_Escopo,TagAPP_Planejamento,'Taxa de Alteração do Escopo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamentos,TagAPP_Planejamento,'Taxa de Cancelamentos','Exige motivo pré-cadastrado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Excluídos,TagAPP_Planejamento,'Taxa de Excluídos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Metas_Alcançadas,TagAPP_Planejamento,'Taxa de Metas Alcançadas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Riscos_Identificados,TagAPP_Planejamento,'Taxa de Riscos Identificados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_do_Processo_de_Planejamento,TagAPP_Planejamento,'Custo Médio do Processo de Planejamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_eficiência_do_Processo_de_Planejamento,TagAPP_Planejamento,'Taxa de eficiência do Processo de Planejamento','Tempo médio necessário para completar o ciclo de planejamento, desde a definição até a revisão das metas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Adesão_ao_Plano,TagAPP_Planejamento,'Adesão ao Plano','Percentual de departamentos, equipes ou indivíduos que estão seguindo o plano estabelecido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Tempo_de_Ciclo_do_Produto,TagAPP_Fluxo_Produto,'Tempo de Ciclo do Produto','Tempo médio que um produto leva para passar por todo o processo, desde a entrada até a saída)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rendimento_Por_Produto_Por_Equipe,TagAPP_Fluxo_Produto,'Taxa de Rendimento Por Produto Por Equipe','Percentual de produtos que são processados e completados com sucesso sem defeitos ou rejeições)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Resposta_a_Alterações,TagAPP_Fluxo_Produto,'Tempo de Resposta a Alterações','Tempo necessário para adaptar ou reconfigurar o fluxo de produto em resposta a mudanças na demanda ou outros fatores)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Defeitos_ou_Rejeições_Por_Produto_Por_Equipe,TagAPP_Fluxo_Produto,'Taxa de Defeitos ou Rejeições Por Produto Por Equipe','Percentual de produtos que são rejeitados ou identificados com defeitos durante o processo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Espera_Médio_Por_Produto_Por_Equipe,TagAPP_Fluxo_Produto,'Tempo de Espera Médio Por Produto Por Equipe','Tempo médio que os produtos passam esperando para serem processados ou movidos para o próximo estágio)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cumprimento_de_Pedidos,TagAPP_Fluxo_Produto,'Taxa de Cumprimento de Pedidos','Percentual de pedidos que são atendidos e entregues conforme prometido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_da_Alteração_da_Equipe_Padrão_Por_Produto_Por_Equipe,TagAPP_Fluxo_Produto,'Taxa da Alteração da Equipe Padrão Por Produto Por Equipe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Pré_Requisitos_Pendentes_Por_Produto_Por_Etapa,TagAPP_Fluxo_Produto,'Pré Requisitos Pendentes Por Produto Por Etapa','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Baixa_Automática_Ativa_Por_Produto,TagAPP_Fluxo_Produto,'Baixa Automática Ativa Por Produto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Defeitos,TagAPP_Fabricacao,'Taxa de Defeitos','Percentual de unidades compostas que são defeituosas ou não atendem aos padrões de qualidade)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_de_Produção_por_Unidade_Composta,TagAPP_Fabricacao,'Custo de Produção por Unidade Composta','Custo total para produzir uma unidade do produto composto.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Diferença_de_Valor,TagAPP_Fabricacao,'Média de Diferença de Valor','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Composições_Sem_Fórmula,TagAPP_Fabricacao,'Percentual de Composições Sem Fórmula','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Máteria_Prima,TagAPP_Fabricacao,'Taxa de Utilização de Máteria Prima','Percentual de componentes efetivamente usados na produção de produtos compostos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rendimento,TagAPP_Fabricacao,'Taxa de Rendimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rotatividade_de_Estoque_de_Componentes,TagAPP_Fabricacao,'Taxa de Rotatividade de Estoque de Componentes','Número de vezes que o estoque de componentes foi utilizado e reposto em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_de_Lucro_por_Unidade_Composta,TagAPP_Fabricacao,'Margem de Lucro por Unidade Composta','Lucro obtido por cada unidade do produto composto vendida)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ruptura_de_Estoque_de_Componentes,TagAPP_Fabricacao,'Taxa de Ruptura de Estoque de Componentes','Percentual de vezes em que um componente necessário não está disponível em estoque)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retorno_ou_Devolução,TagAPP_Fabricacao,'Taxa de Retorno ou Devolução','Percentual de produtos compostos devolvidos pelos clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Venda,TagAPP_Venda,'Valor Total de Desconto Venda','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_frete_Venda,TagAPP_Venda,'Valor Total de frete Venda','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_Venda,TagAPP_Venda,'Valor Total de Acréscimo Venda','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vendas_não_faturadas,TagAPP_Venda,'Taxa de Vendas não faturadas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Produtividade_da_Equipe_de_Vendas,TagAPP_Venda,'Produtividade da Equipe de Vendas','Medida da eficácia da equipe de vendas, como vendas por vendedor ou número de chamadas realizadas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Churn,TagAPP_Venda,'Taxa de Churn','Percentual de clientes que deixam de fazer negócios com a empresa em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ticket_Médio,TagAPP_Venda,'Ticket Médio','Valor médio de venda por cliente.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Receita_de_Vendas,TagAPP_Venda,'Receita de Vendas','Total de receita gerada pelas vendas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão_de_Vendas,TagAPP_Venda,'Taxa de Conversão de Vendas','Percentual de leads ou oportunidades que se converteram em vendas fechadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Vendas_do_Período,TagAPP_Venda,'Volume de Vendas do Período','Mede o número total de vendas realizadas em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vendas_Abaixo_do_Mínimo,TagAPP_Venda,'Taxa de Vendas Abaixo do Mínimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vendas_Excluídas,TagAPP_Venda,'Taxa de Vendas Excluídas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_de_Lucro_por_Venda,TagAPP_Venda,'Margem de Lucro por Venda','Lucro líquido gerado por cada venda.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vendas_Vinculadas,TagAPP_Venda,'Taxa de Vendas Vinculadas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Ciclo_de_Venda,TagAPP_Venda,'Tempo de Ciclo de Venda','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Vendas_por_Canal,TagAPP_Venda,'Vendas por Canal','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Vendas_por_Região,TagAPP_Venda,'Vendas por Região','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Vendas,TagAPP_Venda,'Valor Total de Vendas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Pedido,TagAPP_Venda_Pedido,'Valor Total de Desconto Pedido','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Pedidos,TagAPP_Venda_Pedido,'Volume de Pedidos','Mede o número total de pedidos realizados em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Frete_Cobrado,TagAPP_Venda_Pedido,'Valor Total de Frete Cobrado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_Pedido,TagAPP_Venda_Pedido,'Valor Total de Acréscimo Pedido','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Processamento_de_Pedido,TagAPP_Venda_Pedido,'Tempo Médio de Processamento de Pedido','Tempo médio necessário para processar um pedido desde o recebimento até a preparação para envio)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Atrasados,TagAPP_Venda_Pedido,'Taxa de Pedidos Atrasados','Percentual de pedidos que não foram entregues ou concluídos dentro do prazo prometido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ticket_médio_do_Período,TagAPP_Venda_Pedido,'Ticket médio do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Excluídos,TagAPP_Venda_Pedido,'Taxa de Pedidos Excluídos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Entregues_no_Prazo,TagAPP_Venda_Pedido,'Taxa de Pedidos Entregues no Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Entrega,TagAPP_Venda_Pedido,'Tempo Médio de Entrega','Tempo médio entre a conclusão do processamento do pedido e a entrega ao cliente)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Recorrentes,TagAPP_Venda_Pedido,'Taxa de Pedidos Recorrentes','Percentual de clientes que fazem pedidos repetidos em relação ao total de clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Pendentes_de_Envio_a_Produção,TagAPP_Venda_Pedido,'Taxa de Pedidos Pendentes de Envio a Produção','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Enviados_a_Produção,TagAPP_Venda_Pedido,'Taxa de Pedidos Enviados a Produção','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Abaixo_do_Valor_Mínimo,TagAPP_Venda_Pedido,'Taxa de Pedidos Abaixo do Valor Mínimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Pedidos,TagAPP_Venda_Pedido,'Valor Total de Pedidos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Vendas,TagAPP_Venda_PDV,'Volume de Vendas','Total de vendas processadas pelo PDV)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Venda,TagAPP_Venda_PDV,'Valor Médio de Venda','Valor médio das transações de vendas processadas pelo PDV)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Itens_por_Venda,TagAPP_Venda_PDV,'Média de Itens por Venda','Média de itens vendidos por transação)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Vendas_PDV,TagAPP_Venda_PDV,'Valor Total de Vendas PDV','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamento,TagAPP_Venda_PDV,'Taxa de Cancelamento','Percentual de transações que foram devolvidas ou canceladas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Vendas_por_Hora_Período_do_Dia,TagAPP_Venda_PDV,'Vendas por Hora Período do Dia','Análise das vendas com base em diferentes períodos do dia para identificar picos de venda)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Atendimento,TagAPP_Venda_PDV,'Tempo Médio de Atendimento','Tempo médio que leva para atender e processar uma transação de venda)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_PDV,TagAPP_Venda_PDV,'Valor Total de Acréscimo PDV','Percentual de vendas que tiveram algum acréscimo aplicado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_PDV,TagAPP_Venda_PDV,'Valor Total de Desconto PDV','Percentual de vendas que tiveram algum tipo de desconto aplicado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Fidelidade_do_Cliente,TagAPP_Venda_PDV,'Taxa de Fidelidade do Cliente','Percentual de vendas realizadas para clientes recorrentes em comparação com novos clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Vendas_com_Acréscimo,TagAPP_PAF,'Taxa de Vendas com Acréscimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vendas_com_Desconto,TagAPP_PAF,'Taxa de Vendas com Desconto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cupom_Cancelado,TagAPP_PAF,'Taxa de Cupom Cancelado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Item_Cancelado,TagAPP_PAF,'Taxa de Item Cancelado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retirada_de_Caixa,TagAPP_PAF,'Retirada de Caixa','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Reforço_de_Caixa,TagAPP_PAF,'Reforço de Caixa','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Vendas_Registradas,TagAPP_PAF,'Volume de Vendas Registradas','Total de vendas registradas pelo PAF em um período específico',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Processamento_de_Venda,TagAPP_PAF,'Tempo Médio de Processamento de Venda','Tempo médio necessário para registrar e concluir uma venda no PAF)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Vendas_PAF,TagAPP_PAF,'Valor Total de Vendas PAF','Quantidade e valor das vendas registradas .)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_PAF,TagAPP_PAF,'Valor Total de Acréscimo PAF','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_PAF,TagAPP_PAF,'Valor Total de Desconto PAF','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Cancelamentos_PAF,TagAPP_PAF,'Valor total de Cancelamentos PAF','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_Total_de_Crédito_Concedido,TagAPP_Credito_Cliente,'Valor Total de Crédito Concedido','Valor total do crédito concedido aos clientes em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Créditos_Concedidos_no_Período,TagAPP_Credito_Cliente,'Número de Créditos Concedidos no Período','Quantidade de novas solicitações de crédito recebidas em um período determinado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Crédito_Concedido,TagAPP_Credito_Cliente,'Valor Médio de Crédito Concedido','Valor médio do crédito concedido por cliente)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Duração_Média_do_Crédito,TagAPP_Credito_Cliente,'Duração Média do Crédito','Tempo médio entre a concessão do crédito e sua liquidação ou vencimento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Crédito,TagAPP_Credito_Cliente,'Taxa de Utilização de Crédito','Percentual do crédito utilizado pelos clientes em relação ao crédito total disponível.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Clientes_com_Crédito_Pendente,TagAPP_Credito_Cliente,'Taxa de Clientes com Crédito Pendente','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Número_de_Transações_por_Tabela_de_Preço,TagAPP_Venda_Tabela_Preço,'Número de Transações por Tabela de Preço','Quantidade de vendas realizadas sob cada tabela de preço)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Média_de_Lucro_por_Tabela_de_Preço,TagAPP_Venda_Tabela_Preço,'Margem Média de Lucro por Tabela de Preço','Lucro médio obtido de vendas realizadas sob cada tabela de preço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Descontos_Médios_Concedidos,TagAPP_Venda_Tabela_Preço,'Descontos Médios Concedidos','Valor ou percentual médio de descontos concedidos nas vendas, por tabela de preço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Adoção_de_Novas_Tabelas_de_Preço,TagAPP_Venda_Tabela_Preço,'Taxa de Adoção de Novas Tabelas de Preço','Velocidade e percentual de adoção de novas tabelas de preço introduzidas no sistema)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Acréscimos_Aplicados,TagAPP_Venda_Tabela_Preço,'Média de Acréscimos Aplicados','Percentual de acréscimos concedidos nas vendas, por tabela de preço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retenção_de_Clientes_por_Tabela_de_Preço,TagAPP_Venda_Tabela_Preço,'Taxa de Retenção de Clientes por Tabela de Preço','Percentual de clientes que continuam comprando sob uma determinada tabela de preço)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Atualização_de_Tabelas_de_Preço,TagAPP_Venda_Tabela_Preço,'Tempo Médio para Atualização de Tabelas de Preço','Tempo médio necessário para implementar e comunicar atualizações nas tabelas de preço)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Comparação_de_Vendas_Previstas_vs_Realizadas_por_Tabela_de_Preço,TagAPP_Venda_Tabela_Preço,'Comparação de Vendas Previstas vs Realizadas por Tabela de Preço','Comparação entre as vendas projetadas e as vendas reais para cada tabela de preço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Vitalício_do_Cliente,TagAPP_Venda_Tabela_Preço,'Valor Vitalício do Cliente','LTV) por Tabela de Preço',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Tabela_Preco,TagAPP_Venda_Tabela_Preço,'Valor Total de Desconto Tabela Preco','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_Tabela_Preco,TagAPP_Venda_Tabela_Preço,'Valor Total de Acréscimo Tabela Preco','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Índice_Médio,TagAPP_Markup,'Índice Médio','Índice médio de Markup aplicado aos produtos ou categorias de produtos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Produtos_Serviços_Abaixo_do_Markup_desejado,TagAPP_Markup,'Número de Produtos Serviços Abaixo do Markup desejado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Produtos_Serviços_Acima_do_Markup_desejado,TagAPP_Markup,'Número de Produtos Serviços Acima do Markup desejado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Média_de_Lucro,TagAPP_Markup,'Margem Média de Lucro','Lucro médio obtido de vendas, refletindo a eficácia do Markup aplicado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retenção_de_Clientes,TagAPP_Markup,'Taxa de Retenção de Clientes','Percentual de clientes que continuam comprando após mudanças nos índices de Markup.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Variação_do_Markup_ao_Longo_do_Tempo,TagAPP_Markup,'Variação do Markup ao Longo do Tempo','Análise da evolução do índice de Markup ao longo de diferentes períodos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Vendas_por_Categoria_de_Markup,TagAPP_Markup,'Volume de Vendas por Categoria de Markup','Valor ou quantidade de vendas realizadas para diferentes categorias ou faixas de Markup)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ajustes_de_Markup,TagAPP_Markup,'Taxa de Ajustes de Markup','Frequência com que os índices de Markup são ajustados em resposta a fatores internos ou externos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Serviços_Realizados,TagAPP_Venda_Mecanica,'Volume de Serviços Realizados','Número total de serviços mecânicos realizados em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Atendimento_Venda_Mecanica,TagAPP_Venda_Mecanica,'Tempo Médio de Atendimento Venda_Mecanica','Tempo médio gasto para concluir um serviço ou reparo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Frete,TagAPP_Venda_Mecanica,'Valor total de Frete','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Descontos_Venda_Mecanica,TagAPP_Venda_Mecanica,'Valor total de Descontos Venda_Mecanica','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Acréscimos,TagAPP_Venda_Mecanica,'Valor total de Acréscimos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_de_Lucro_por_Serviço,TagAPP_Venda_Mecanica,'Margem de Lucro por Serviço','Lucro obtido por serviço após deduzir os custos associados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Diminuição_da_Margem_de_Serviço,TagAPP_Venda_Mecanica,'Diminuição da Margem de Serviço','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Rotatividade_de_Estoque_de_Peças,TagAPP_Venda_Mecanica,'Rotatividade de Estoque de Peças','Número de vezes que o estoque de peças é renovado em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocupação_da_Oficina,TagAPP_Venda_Mecanica,'Taxa de Ocupação da Oficina','Percentual de capacidade de atendimento da oficina que está sendo utilizado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retorno_de_Veículos,TagAPP_Venda_Mecanica,'Taxa de Retorno de Veículos','Percentual de veículos que retornam à oficina para correções ou ajustes após um serviço inicial.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Receita_média,TagAPP_Venda_Mecanica,'Receita média','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversação_de_Orçamentos_em_Ordens_de_Serviço,TagAPP_Venda_Mecanica,'Taxa de Conversação de Orçamentos em Ordens de Serviço','Percentual de orçamentos apresentados que são convertidos em serviços reais.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Serviços_Realizados_no_Prazo,TagAPP_Venda_Mecanica,'Taxa de Serviços Realizados no Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocupação_de_Funcionários,TagAPP_Venda_Mecanica,'Taxa de Ocupação de Funcionários','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Equipamentos_e_Ferramentas,TagAPP_Venda_Mecanica,'Taxa de Utilização de Equipamentos e Ferramentas','Percentual de tempo que equipamentos e ferramentas são utilizados em relação à sua disponibilidade total.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Garantia,TagAPP_Venda_Mecanica,'Taxa de Garantia','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Ordens_de_Serviço,TagAPP_Venda_Mecanica,'Valor Total de Ordens de Serviço','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Garantias,TagAPP_Venda_Mecanica,'Valor Total de Garantias','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Total_de_Comissões_Pagas,TagAPP_Venda_Comissoes,'Total de Comissões Pagas','Valor total pago em comissões durante um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Comissão,TagAPP_Venda_Comissoes,'Valor Médio de Comissão','Percentual médio de comissão pago em relação ao valor total de vendas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Pagamentos_de_Comissão,TagAPP_Venda_Comissoes,'Número de Pagamentos de Comissão','Quantidade total de pagamentos de comissão realizados em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Pagamento_de_Comissão,TagAPP_Venda_Comissoes,'Tempo Médio para Pagamento de Comissão','Tempo médio entre a venda realizada e o pagamento da comissão correspondente.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Discrepâncias_nas_Comissões,TagAPP_Venda_Comissoes,'Discrepâncias nas Comissões','Número de vezes em que houve uma diferença entre a comissão calculada e a comissão realmente paga.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Comissão_Média_por_Vendedor,TagAPP_Venda_Comissoes,'Comissão Média por Vendedor','Valor médio de comissão pago a cada vendedor)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Total_de_Comissões_como_Percentual_das_Vendas,TagAPP_Venda_Comissoes,'Custo Total de Comissões como Percentual das Vendas','Percentual do valor total de vendas que foi pago como comissão)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Vendas_Qualificadas_para_Comissão,TagAPP_Venda_Comissoes,'Número de Vendas Qualificadas para Comissão','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retorno_sobre_Investimento_de_Comissão,TagAPP_Venda_Comissoes,'Retorno sobre Investimento de Comissão','Relação entre lucro gerado pelas vendas e o total de comissões pagas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Sucesso_de_Transações,TagAPP_TEF_Dedicado,'Taxa de Sucesso de Transações','Percentual de transações bem-sucedidas em relação ao total de transações tentadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Processamento_de_Transações,TagAPP_TEF_Dedicado,'Tempo Médio de Processamento de Transações','Tempo médio necessário para processar uma transação, desde o momento em que o cartão é inserido até a aprovação ou recusa)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Falhas_de_Transação,TagAPP_TEF_Dedicado,'Taxa de Falhas de Transação','Percentual de transações que falharam devido a erros do sistema, falta de fundos, etc)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Transações_no_Período,TagAPP_TEF_Dedicado,'Volume de Transações no Período','Número total de transações processadas em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Transação,TagAPP_TEF_Dedicado,'Valor Médio de Transação','Valor médio das transações processadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Chargeback_Estorno,TagAPP_TEF_Dedicado,'Taxa de Chargeback Estorno','Percentual de transações que foram revertidas após serem inicialmente aprovadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Disponibilidade_do_Sistema,TagAPP_TEF_Dedicado,'Disponibilidade do Sistema','Percentual de tempo em que o sistema TEF esteve operacional e disponível para transações.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Uso_de_Diferentes_Modalidades_de_Pagamento,TagAPP_TEF_Dedicado,'Taxa de Uso de Diferentes Modalidades de Pagamento','Percentual de transações realizadas através de diferentes métodos de pagamento',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão_em_Transações_de_Crédito_Parcelado,TagAPP_TEF_Dedicado,'Taxa de Conversão em Transações de Crédito Parcelado','Percentual de transações de crédito que foram feitas em parcelas, em relação ao total de transações de crédito)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Transações_no_Período,TagAPP_TEF_Dedicado,'Valor Total de Transações no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Transações_Negadas,TagAPP_TEF_Dedicado,'Taxa de Transações Negadas','Percentual de transações que foram recusadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Resposta,TagAPP_TEF_Dedicado,'Tempo Médio de Resposta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Falhas_de_Comunicação,TagAPP_TEF_Dedicado,'Taxa de Falhas de Comunicação','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_Por_Transação,TagAPP_TEF_Dedicado,'Custo Médio Por Transação','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Transações,TagAPP_TEF_Dedicado,'Valor Total de Transações','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Alcance_de_Metas,TagAPP_Venda_Metas,'Taxa de Alcance de Metas','Percentual de metas de vendas alcançadas em relação ao total estabelecido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Alcançar_Metas,TagAPP_Venda_Metas,'Tempo Médio para Alcançar Metas','Tempo médio necessário para alcançar uma meta de vendas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ajuste_de_Metas,TagAPP_Venda_Metas,'Taxa de Ajuste de Metas','Frequência com que as metas são ajustadas para refletir mudanças nas condições de mercado ou estratégias da empresa)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_por_Meta_Alcançada,TagAPP_Venda_Metas,'Custo por Meta Alcançada','Custo total associado ao alcance de cada meta de vendas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Configuração_de_Metas,TagAPP_Venda_Metas,'Taxa de Erros de Configuração de Metas','Percentual de erros ou inconsistências na configuração de metas de vendas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Saldo_de_Caixa_Diário,TagAPP_Financeiro,'Saldo de Caixa Diário','Quantidade de dinheiro disponível em caixa e bancos em um dia específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Fluxo_de_Caixa_Operacional,TagAPP_Financeiro,'Fluxo de Caixa Operacional','Diferença entre as entradas e saídas de dinheiro provenientes das atividades operacionais da empresa)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Variação_do_Saldo_de_Caixa,TagAPP_Financeiro,'Variação do Saldo de Caixa','Diferença entre o saldo inicial e final de caixa em um período determinado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Dias_de_Caixa_Disponível,TagAPP_Financeiro,'Dias de Caixa Disponível','Número de dias que a empresa pode operar com o caixa disponível, sem considerar novas entradas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Liquidez_Imediata,TagAPP_Financeiro,'Índice de Liquidez Imediata','Relação entre o caixa disponível e as obrigações de curto prazo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Crescimento_do_Saldo_de_Caixa,TagAPP_Financeiro,'Taxa de Crescimento do Saldo de Caixa','Percentual de aumento ou diminuição do saldo de caixa em relação a um período anterior.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Despesas_Não_Planejadas,TagAPP_Financeiro,'Despesas Não Planejadas','Valor total de despesas que não estavam previstas no orçamento ou planejamento financeiro.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Razão_de_Cobertura_de_Caixa,TagAPP_Financeiro,'Razão de Cobertura de Caixa','Mede a capacidade da empresa de cobrir suas obrigações de curto prazo usando apenas o caixa disponível.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Fluxo_de_Caixa_Livre,TagAPP_Financeiro,'Fluxo de Caixa Livre','Representa o valor do fluxo de caixa operacional menos os investimentos em ativos fixos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_de_Desconto,TagAPP_Financeiro,'Valor de Desconto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_de_Juros,TagAPP_Financeiro,'Valor de Juros','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Exclusões,TagAPP_Financeiro,'Taxa de Exclusões','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Sangrias_do_Período,TagAPP_Financeiro,'Sangrias do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Pagamentos_Realizados,TagAPP_Financeiro,'Valor Total de Pagamentos Realizados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos_no_Prazo,TagAPP_Financeiro,'Valor Total de Recebimentos no Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimento_fora_do_Prazo,TagAPP_Financeiro,'Valor Total de Recebimento fora do Prazo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Fluxo_de_Caixa_Mensal,TagAPP_Financeiro,'Fluxo de Caixa Mensal','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Transações,TagAPP_Financeiro,'Volume de Transações','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_de_Juros_Cobrados_no_Período,TagAPP_Recebimento,'Valor de Juros Cobrados no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_de_Multa_Recebimento,TagAPP_Recebimento,'Valor de Multa Recebimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Recebimentos_Parciais,TagAPP_Recebimento,'Taxa de Recebimentos Parciais','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos_Pendentes,TagAPP_Recebimento,'Valor Total de Recebimentos Pendentes','Montante total de dinheiro que ainda não foi recebido, mas que é esperado com base nas vendas realizadas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Dias_Médios_de_atraso_no_Recebimento,TagAPP_Recebimento,'Dias Médios de atraso no Recebimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Prazo_Médio_de_Recebimento,TagAPP_Recebimento,'Prazo Médio de Recebimento','Número médio de dias que a empresa leva para receber pagamentos de seus clientes após a venda ou prestação de serviço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Contas_a_Receber_Vencidas,TagAPP_Recebimento,'Valor Total de Contas a Receber Vencidas','Proporção de contas a receber que ultrapassaram a data de vencimento em relação ao total de contas a receber.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cobrança_Efetiva,TagAPP_Recebimento,'Taxa de Cobrança Efetiva','Percentual de contas a receber que foram efetivamente coletadas em relação ao total de contas a receber.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Descontos_Recebimento,TagAPP_Recebimento,'Valor Total de Descontos Recebimento','Proporção de descontos concedidos em relação ao total de vendas a crédito.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Recebimento,TagAPP_Recebimento,'Valor Médio de Recebimento','Média de dinheiro recebido de cada cliente durante um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos_no_período,TagAPP_Recebimento,'Valor Total de Recebimentos no período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Mensalidades_Pendentes_do_Mês,TagAPP_Financeiro_Contrato,'Mensalidades Pendentes do Mês','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Juros,TagAPP_Financeiro_Contrato,'Valor Total de Juros','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Descontos,TagAPP_Financeiro_Contrato,'Valor Total de Descontos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Multa_Financeiro_Contrato,TagAPP_Financeiro_Contrato,'Valor Total de Multa Financeiro_Contrato','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Ciclo_de_Contratação,TagAPP_Financeiro_Contrato,'Tempo Médio de Ciclo de Contratação','Duração média desde a criação até a assinatura final de um contrato)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Contratos_Renovados,TagAPP_Financeiro_Contrato,'Percentual de Contratos Renovados','Proporção de contratos que são renovados em relação ao total de contratos que expiram.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conformidade_Contratual,TagAPP_Financeiro_Contrato,'Taxa de Conformidade Contratual','Percentual de contratos que são executados conforme os termos e condições acordados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_dos_Contratos_Ativos,TagAPP_Financeiro_Contrato,'Valor Total dos Contratos Ativos','Soma do valor de todos os contratos que estão atualmente em vigor)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Risco_Contratual,TagAPP_Financeiro_Contrato,'Taxa de Risco Contratual','Percentual de contratos que apresentam riscos significativos para a organização, seja financeiro, operacional ou legal)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Aprovação_de_Contrato,TagAPP_Financeiro_Contrato,'Tempo Médio de Aprovação de Contrato','Duração média desde a submissão de um contrato até sua aprovação final)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cumprimento_de_Obrigações_Contratuais,TagAPP_Financeiro_Contrato,'Taxa de Cumprimento de Obrigações Contratuais','Percentual de obrigações contratuais',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Contratos_por_Fornecedor_Cliente,TagAPP_Financeiro_Contrato,'Número de Contratos por Fornecedor Cliente','Quantidade média de contratos ativos por fornecedor ou cliente)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vencimento_de_Contratos,TagAPP_Financeiro_Contrato,'Taxa de Vencimento de Contratos','Percentual de contratos que estão próximos do vencimento em relação ao total de contratos ativos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamento_de_Contratos,TagAPP_Financeiro_Contrato,'Taxa de Cancelamento de Contratos','Percentual de contratos que foram cancelados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Mensalidade,TagAPP_Financeiro_Contrato,'Valor Médio de Mensalidade','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_dias_para_Recebimento,TagAPP_Financeiro_Contrato,'Média de dias para Recebimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Adesão_no_Período,TagAPP_Financeiro_Contrato,'Taxa de Adesão no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Desacordo_de_Mensalidade,TagAPP_Financeiro_Contrato,'Taxa de Desacordo de Mensalidade','Quando as mensalidades são contextadas pelo cliente, resultando em seu não pagamento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Receita_Mensal_Anual,TagAPP_Financeiro_Contrato,'Receita Mensal Anual','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Inadimplência,TagAPP_Financeiro_Boleto,'Taxa de Inadimplência','Percentual de boletos que não foram pagos até a data de vencimento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Boletos_pagos_Após_o_Vencimento,TagAPP_Financeiro_Boleto,'Valor Total de Boletos pagos Após o Vencimento','Percentual de boletos que foram pagosapís a data de vencimento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Pagamentos_Antecipados,TagAPP_Financeiro_Boleto,'Valor Total de Pagamentos Antecipados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Pagamentos_Após_o_Vencimento,TagAPP_Financeiro_Boleto,'Valor Total de Pagamentos Após o Vencimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos_Após_Vencimentos,TagAPP_Financeiro_Boleto,'Valor Total de Recebimentos Após Vencimentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos_Antecipados,TagAPP_Financeiro_Boleto,'Valor Total de Recebimentos Antecipados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Recebimento,TagAPP_Financeiro_Boleto,'Tempo Médio de Recebimento','Número médio de dias entre a emissão do boleto e o seu pagamento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Boletos_Emitidos_Financeiro_Boleto,TagAPP_Financeiro_Boleto,'Valor Total de Boletos Emitidos Financeiro_Boleto','Soma do valor de todos os boletos emitidos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Boletos_Pagos,TagAPP_Financeiro_Boleto,'Valor Total de Boletos Pagos','Soma do valor de todos os boletos que foram efetivamente pagos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Boletos_Contestados,TagAPP_Financeiro_Boleto,'Taxa de Boletos Contestados','Percentual de boletos que foram contestados ou questionados pelos clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Boletos_Enviados_a_Protesto,TagAPP_Financeiro_Boleto,'Taxa de Boletos Enviados a Protesto','Percentual de boletos que foram enviadas a cartório)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Renegociação_de_Boletos,TagAPP_Financeiro_Boleto,'Taxa de Renegociação de Boletos','Percentual de boletos vencidos que foram renegociados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamento_de_Boletos,TagAPP_Financeiro_Boleto,'Taxa de Cancelamento de Boletos','Percentual de boletos que foram cancelados antes do vencimento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_na_Emissão_de_Boletos,TagAPP_Financeiro_Boleto,'Taxa de Erros na Emissão de Boletos','Percentual de boletos que apresentaram erros durante a emissão e que necessitaram de correção)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_por_Boleto_Emitido,TagAPP_Financeiro_Boleto,'Valor Médio por Boleto Emitido','Valor médio dos boletos emitidos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Juros_Aplicada,TagAPP_Financeiro_Boleto,'Taxa de Juros Aplicada','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Multa_Aplicada,TagAPP_Financeiro_Boleto,'Taxa de Multa Aplicada','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Descontos,TagAPP_Financeiro_Boleto,'Taxa de Descontos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Boletos_Pendentes_de_Impressão,TagAPP_Financeiro_Boleto,'Taxa de Boletos Pendentes de Impressão','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Juros_Financeiro_Boleto,TagAPP_Financeiro_Boleto,'Valor Total de Juros Financeiro_Boleto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto,TagAPP_Financeiro_Boleto,'Valor Total de Desconto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Multa_Financeiro_Boleto,TagAPP_Financeiro_Boleto,'Valor Total de Multa Financeiro_Boleto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Cancelamentos,TagAPP_Financeiro_Boleto,'Valor Total de Cancelamentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Tempo_de_Elaboração_da_DRE,TagAPP_DRE,'Tempo de Elaboração da DRE','Tempo necessário para compilar e gerar o relatório completo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Precisão_dos_Dados,TagAPP_DRE,'Precisão dos Dados','Percentual de acurácia dos dados apresentados na DRE, comparados com os registros contábeis)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Cálculo,TagAPP_DRE,'Taxa de Erros de Cálculo','Percentual de erros encontrados nos cálculos de receitas, despesas, impostos, etc)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Revisões_ou_Correções,TagAPP_DRE,'Taxa de Revisões ou Correções','Número de vezes que a DRE teve que ser revisada ou corrigida após a primeira elaboração)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Eficiência_na_Integração_de_Dados,TagAPP_DRE,'Eficiência na Integração de Dados','Avaliação da capacidade do sistema de integrar dados de diferentes departamentos ou sistemas',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conclusão_de_Relatórios,TagAPP_DRE,'Taxa de Conclusão de Relatórios','Percentual de relatórios DRE concluídos em relação ao total de relatórios iniciados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Auditorias_Bem_sucedidas,TagAPP_DRE,'Taxa de Auditorias Bem sucedidas','Percentual de auditorias externas ou internas que não resultaram em ajustes significativos na DRE.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conformidade_Fiscal,TagAPP_DRE,'Taxa de Conformidade Fiscal','Extensão em que o sistema ajuda a empresa a cumprir com todas as obrigações fiscais relacionadas à elaboração da DRE.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ebitda___Lucro_antes_de_juros_impostos_depreciação_e_amortização,TagAPP_DRE,'Ebitda   Lucro antes de juros impostos depreciação e amortização','Indica a geração operacional de caixa da empresa.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Despesas_do_Período,TagAPP_DRE,'Taxa de Despesas do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Receitas_do_Período,TagAPP_DRE,'Taxa de Receitas do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_do_Lucro_Líquido_do_Período,TagAPP_DRE,'Taxa do Lucro Líquido do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Bruta_do_Período,TagAPP_DRE,'Margem Bruta do Período','Porcentagem que sobra de cada venda após deduzir os custos diretos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Líquida_do_Período,TagAPP_DRE,'Margem Líquida do Período','Porcentagem que sobra de cada venda após deduzir todos os custos e despesas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Crescimento_da_Receita,TagAPP_DRE,'Crescimento da Receita','Mede a taxa de crescimento da receita em relação ao período anterior.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_dos_Produtos_Vendidos_CPV,TagAPP_DRE,'Custo dos Produtos Vendidos CPV','Mede o custo direto de produção dos bens ou serviços vendidos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Despesas_Operacionais,TagAPP_DRE,'Despesas Operacionais','Inclui despesas como salários, aluguel e custos administrativos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Operacional,TagAPP_DRE,'Margem Operacional','Calculada como Lucro Operacional / Receita.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Cobertura_de_Juros,TagAPP_DRE,'Índice de Cobertura de Juros','Mede a capacidade da empresa de cumprir suas obrigações de juros.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Liquidez_Corrente,TagAPP_DRE,'Liquidez Corrente','Mede a capacidade da empresa de pagar suas dívidas de curto prazo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Precisão_na_Alocação_de_Custos,TagAPP_Financeiro_Centro_Custo,'Precisão na Alocação de Custos','Percentual de acurácia na alocação de custos aos respectivos centros)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Alocação,TagAPP_Financeiro_Centro_Custo,'Taxa de Erros de Alocação','Percentual de erros na alocação de custos aos centros de custo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Revisões_ou_Correções_Financeiro_Centro_Custo,TagAPP_Financeiro_Centro_Custo,'Taxa de Revisões ou Correções Financeiro_Centro_Custo','Número de vezes que os dados de um centro de custo tiveram que ser revisados ou corrigidos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Custo_por_centro_de_Custo,TagAPP_Financeiro_Centro_Custo,'Valor total de Custo por centro de Custo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Custo_por_Centro_de_Custo,TagAPP_Financeiro_Centro_Custo,'Valor Médio de Custo por Centro de Custo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Crescimento_dos_Custos,TagAPP_Financeiro_Centro_Custo,'Taxa de Crescimento dos Custos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_custos_Indiretos,TagAPP_Financeiro_Centro_Custo,'Taxa de custos Indiretos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Custos_Diretos,TagAPP_Financeiro_Centro_Custo,'Taxa de Custos Diretos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_de_Contribuição,TagAPP_Financeiro_Centro_Custo,'Margem de Contribuição','Mede a rentabilidade de um centro de custo, subtraindo os custos variáveis das receitas geradas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Lifetime_Value,TagAPP_Financeiro,'Lifetime Value','LTV) do Cliente',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Crescimento_Anual_Composta,TagAPP_Financeiro,'Taxa de Crescimento Anual Composta','CAGR)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Eficácia_do_Ciclo_de_Cobrança,TagAPP_Financeiro,'Eficácia do Ciclo de Cobrança','Tempo médio necessário para converter vendas a crédito em receita)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Inadimplência_Financeiro,TagAPP_Financeiro,'Taxa de Inadimplência Financeiro','Percentual de contas a receber que não foram pagas dentro do prazo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Endividamento,TagAPP_Financeiro,'Índice de Endividamento','Relação entre o total de dívidas e o total de ativos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Operacional,TagAPP_Financeiro,'Custo Operacional','Custo total para manter as operações da empresa)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retenção_de_Clientes_Financeiro,TagAPP_Financeiro,'Taxa de Retenção de Clientes Financeiro','Percentual de clientes que continuam a fazer negócios com a empresa em um determinado período)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Lançamentos_Não_Conciliados,TagAPP_Financeiro,'Lançamentos Não Conciliados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retorno_sobre_o_Investimento,TagAPP_Financeiro,'Retorno sobre o Investimento','ROI)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_de_Lucro_Bruto_e_Líquido,TagAPP_Financeiro,'Margem de Lucro Bruto e Líquido','Percentual do lucro em relação à receita, tanto bruto quanto líquido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Liquidez_Corrente_Financeiro,TagAPP_Financeiro,'Liquidez Corrente Financeiro','Avalia a capacidade da empresa de pagar suas dívidas de curto prazo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Juros_Financeiro,TagAPP_Financeiro,'Valor Total de Juros Financeiro','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_MultA,TagAPP_Financeiro,'Valor Total de MultA','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Financeiro,TagAPP_Financeiro,'Valor Total de Desconto Financeiro','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_de_Comissão_Não_Paga_do_Período,TagAPP_Financeiro,'Valor de Comissão Não Paga do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Parcelas_Excluídas,TagAPP_Financeiro,'Taxa de Parcelas Excluídas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Parcelas_sem_Conta,TagAPP_Financeiro,'Taxa de Parcelas sem Conta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Prazo_Médio_de_Recebimento_Financeiro,TagAPP_Financeiro,'Prazo Médio de Recebimento Financeiro','Número médio de dias que a empresa leva para receber pagamentos de seus clientes.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Prazo_Médio_de_Pagamento,TagAPP_Financeiro,'Prazo Médio de Pagamento','Número médio de dias que a empresa leva para pagar seus fornecedores.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ciclo_Financeiro,TagAPP_Financeiro,'Ciclo Financeiro','Representa o tempo total que a empresa leva desde a compra de matéria-prima até o recebimento pelas vendas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Variação_Percentual_das_Receitas_e_Despesas,TagAPP_Financeiro,'Variação Percentual das Receitas e Despesas','Comparação da evolução das receitas e despesas em relação a períodos anteriores.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Fixo_Médio_Mensal,TagAPP_Financeiro,'Custo Fixo Médio Mensal','Valor médio dos custos fixos por mês.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Lançamentos_Conciliados,TagAPP_Financeiro,'Taxa de Lançamentos Conciliados','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Recebimentos,TagAPP_Financeiro,'Valor Total de Recebimentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Pagamentos,TagAPP_Financeiro,'Valor Total de Pagamentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Saldo_Atual,TagAPP_Financeiro,'Saldo Atual','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Notas_Pendente_de_Finalização,TagAPP_Compra,'Taxa de Notas Pendente de Finalização','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Vínculos_incorretos,TagAPP_Compra,'Taxa de Vínculos incorretos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Finalizadas_Sem_Conferência,TagAPP_Compra,'Taxa de Notas Finalizadas Sem Conferência','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Impostos,TagAPP_Compra,'Valor Total de Impostos','ICMS, ICMS ST, Seguro, IPI, PIS, Confins, FCP',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Frete_Compra,TagAPP_Compra,'Valor Total de Frete Compra','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ciclo_Médio_de_Compra,TagAPP_Compra,'Ciclo Médio de Compra','Tempo médio desde a requisição de compra até o recebimento dos itens)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Total,TagAPP_Compra,'Custo Total','Custo total para adquirir um produto ou serviço, incluindo preço, taxas e custos de logística)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conformidade_de_Fornecedores,TagAPP_Compra,'Taxa de Conformidade de Fornecedores','Percentual de fornecedores que cumprem com os termos e condições acordados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retorno_de_Mercadorias,TagAPP_Compra,'Taxa de Retorno de Mercadorias','Percentual de produtos devolvidos em relação ao total comprado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Faturamento,TagAPP_Compra,'Taxa de Erros de Faturamento','Percentual de notas cujo faturamento contêm erros e precisam ser corrigidas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Finalizadas_sem_financeiro_gerado,TagAPP_Compra,'Taxa de Notas Finalizadas sem financeiro gerado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Finalizadas_sem_estoque_gerado,TagAPP_Compra,'Taxa de Notas Finalizadas sem estoque gerado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Fornecedores_Ativos,TagAPP_Compra,'Número de Fornecedores Ativos','Quantidade de fornecedores com os quais a empresa realizou transações em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Concentração_de_Compras_por_Fornecedor,TagAPP_Compra,'Concentração de Compras por Fornecedor','Percentual de compras realizadas com os principais fornecedores)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Nota_de_Conhecimento_de_Transporte_sem_vínculo,TagAPP_Compra,'Nota de Conhecimento de Transporte sem vínculo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Compras_com_CT_e_Vinculadas,TagAPP_Compra,'Taxa de Compras com CT e Vinculadas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_Compra,TagAPP_Compra,'Valor Total de Acréscimo_Compra','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Seguro,TagAPP_Compra,'Valor Total de Seguro','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_Compra,TagAPP_Compra,'Custo Médio Compra','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Diminuição_da_Margem_de_Lucro,TagAPP_Compra,'Diminuição da Margem de Lucro','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Parcela_Divergente_no_Financeiro,TagAPP_Compra,'Parcela Divergente no Financeiro','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Elevação_de_Custo,TagAPP_Compra,'Elevação de Custo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_do_Perído,TagAPP_Compra,'Valor Total do Perído','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Cumprimento_de_Pedidos_Solicitacao_compra,TagAPP_Solicitacao_Compra,'Taxa de Cumprimento de Pedidos Solicitacao compra','Percentual de pedidos de compra atendidos integralmente e no prazo acordado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Solicitação_de_compra,TagAPP_Solicitacao_Compra,'Valor Médio de Solicitação de compra','Valor médio de cada solicitação de compra realizada)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Urgência_de_Compra,TagAPP_Solicitacao_Compra,'Taxa de Urgência de Compra','Percentual de solicitação de compra que são classificados como urgentes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Aprovação_de_Solicitação,TagAPP_Solicitacao_Compra,'Tempo Médio de Aprovação de Solicitação','Mede o tempo médio necessário para aprovar uma solicitação de compra após seu envio.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Aprovação_de_Primeira_Passagem,TagAPP_Solicitacao_Compra,'Taxa de Aprovação de Primeira Passagem','Percentual de solicitações de compra aprovadas na primeira tentativa, sem necessidade de revisão ou correção)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rejeição_de_Solicitações,TagAPP_Solicitacao_Compra,'Taxa de Rejeição de Solicitações','Percentual de solicitações de compra rejeitadas em relação ao total de solicitações feitas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Número_de_Itens_por_Solicitação,TagAPP_Solicitacao_Compra,'Número de Itens por Solicitação','Média de itens listados em cada solicitação de compra, o que pode indicar a complexidade das necessidades de compra)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conformidade_de_Compra,TagAPP_Solicitacao_Compra,'Taxa de Conformidade de Compra','Percentual de solicitações de compra que estão em conformidade com as políticas e procedimentos da empresa.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Solicitação,TagAPP_Solicitacao_Compra,'Taxa de Erros de Solicitação','Percentual de solicitações de compra que contêm erros, como informações incorretas ou incompletas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão_de_Solicitação_para_Compra,TagAPP_Solicitacao_Compra,'Taxa de Conversão de Solicitação para Compra','Percentual de solicitações de compra que são efetivamente convertidas em pedido de compras)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_no_Período,TagAPP_Solicitacao_Compra,'Valor Total no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Conversões_Realizadas,TagAPP_SubUnidade,'Volume de Conversões Realizadas','Número total de conversões de unidade realizadas em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Acuracidade_da_Conversão,TagAPP_SubUnidade,'Acuracidade da Conversão','Percentual de conversões que são precisas e consistentes com padrões reconhecidos ou especificações internas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Conversão,TagAPP_SubUnidade,'Taxa de Erros de Conversão','Percentual de conversões que resultam em erros ou discrepâncias)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Flexibilidade_do_Sistema,TagAPP_SubUnidade,'Flexibilidade do Sistema','Número de diferentes unidades de medida que o sistema pode converter)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Atualização_de_Taxas_de_Conversão,TagAPP_SubUnidade,'Tempo de Atualização de Taxas de Conversão','Frequência com que as taxas ou fatores de conversão são revisados e atualizados no sistema',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversões_Automáticas_vs_Manuais,TagAPP_SubUnidade,'Taxa de Conversões Automáticas vs Manuais','Percentual de conversões realizadas automaticamente pelo sistema em comparação com as que requerem intervenção manual)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversões_Revertidas,TagAPP_SubUnidade,'Taxa de Conversões Revertidas','Número ou percentual de conversões que foram revertidas ou corrigidas devido a erros ou mudanças nas especificações)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Conversão_de_Propostas,TagAPP_Propostas,'Taxa de Conversão de Propostas','Percentual de propostas convertidas em vendas fechadas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Fechamento,TagAPP_Propostas,'Tempo Médio para Fechamento','Tempo médio necessário desde a emissão da proposta até o fechamento da venda.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_da_Proposta,TagAPP_Propostas,'Valor Médio da Proposta','Valor médio das propostas emitidas, o que pode indicar a qualidade ou complexidade das oportunidades de vendas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Resposta_do_Cliente,TagAPP_Propostas,'Taxa de Resposta do Cliente','Percentual de propostas que recebem uma resposta do cliente, seja positiva ou negativa.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ciclo_de_Vida_Médio_da_Proposta,TagAPP_Propostas,'Ciclo de Vida Médio da Proposta','Tempo médio que uma proposta permanece ativa ou em consideração.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Revisão_de_Propostas,TagAPP_Propostas,'Taxa de Revisão de Propostas','Percentual de propostas que requerem revisão ou renegociação antes do fechamento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Descontos_Proposta,TagAPP_Propostas,'Valor Total de Descontos Proposta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Proposta,TagAPP_Propostas,'Taxa de Erros de Proposta','Percentual de propostas que contêm erros, como informações incorretas ou omissões.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Satisfação_do_Cliente,TagAPP_Propostas,'Satisfação do Cliente','Medido através de pesquisas de satisfação ou feedback direto após o fechamento da venda.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retenção_de_Cliente,TagAPP_Propostas,'Taxa de Retenção de Cliente','Percentual de clientes que continuam a fazer negócios após a primeira venda.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Margem_Média_de_Lucro_por_Proposta,TagAPP_Propostas,'Margem Média de Lucro por Proposta','Lucro médio gerado por cada proposta convertida.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Propostas_Recusadas,TagAPP_Propostas,'Taxa de Propostas Recusadas','Percentual de propostas rejeitadas ou não aceitas pelos clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Aprovação_de_Proposta,TagAPP_Propostas,'Tempo Médio para Aprovação de Proposta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Frete_Proposta,TagAPP_Propostas,'Valor Total de Frete Proposta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo_Proposta,TagAPP_Propostas,'Valor Total de Acréscimo Proposta','Percentual de propostas que incluíram algum tipo de acréscimo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Propostas_Emitidas,TagAPP_Propostas,'Volume de Propostas Emitidas','Número total de propostas enviadas em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_Proposta,TagAPP_Propostas,'Custo Médio Proposta','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Eventos_Transferidos,TagAPP_Agendamentos,'Taxa de Eventos Transferidos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Eventos_Sem_Responsável,TagAPP_Agendamentos,'Taxa de Eventos Sem Responsável','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Eventos_Sem_Setor,TagAPP_Agendamentos,'Taxa de Eventos Sem Setor','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Eventos_Concluídos,TagAPP_Agendamentos,'Taxa de Eventos Concluídos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Eventos_Cancelados,TagAPP_Agendamentos,'Taxa de Eventos Cancelados','Percentual de agendamentos que são cancelados antes de serem realizados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Eventos_Urgentes,TagAPP_Agendamentos,'Taxa de Eventos Urgentes','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocupação,TagAPP_Agendamentos,'Taxa de Ocupação','Mede o percentual de slots de tempo ou recursos que estão efetivamente sendo usados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_No_show,TagAPP_Agendamentos,'Taxa de No show','Percentual de agendamentos onde o cliente ou recurso não comparece.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Reagendamento,TagAPP_Agendamentos,'Taxa de Reagendamento','Percentual de agendamentos que são reagendados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão_Agendamentos,TagAPP_Agendamentos,'Taxa de Conversão Agendamentos','Percentual de agendamentos que resultam em uma venda ou outro resultado desejado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_Agendamentos,TagAPP_Agendamentos,'Taxa de Erros Agendamentos','Percentual de erros ou problemas ocorridos durante o processo de agendamento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_de_Agendamentos,TagAPP_Agendamentos,'Valor Médio de Agendamentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valot_Total_de_Agendamentos,TagAPP_Agendamentos,'Valot Total de Agendamentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Giro_de_Estoque,TagAPP_Estoque,'Giro de Estoque','Mede quantas vezes o estoque é vendido e reposto durante um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Dias_de_Estoque,TagAPP_Estoque,'Dias de Estoque','Indica o número médio de dias que os itens ficam em estoque antes de serem vendidos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_de_Carregamento_de_Estoque,TagAPP_Estoque,'Custo de Carregamento de Estoque','Mede os custos associados ao armazenamento de produtos não vendidos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_do_Estoque,TagAPP_Estoque,'Valor Médio do Estoque','Mede o valor médio dos produtos em estoque durante um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_do_Estoque_,TagAPP_Estoque,'Valor Total do Estoque ','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Nível_de_Serviço_de_Estoque,TagAPP_Estoque,'Nível de Serviço de Estoque','Mede a capacidade de atender aos pedidos dos clientes a partir do estoque disponível.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Falta_de_Estoque,TagAPP_Estoque,'Taxa de Falta de Estoque','Indica a frequência com que os itens não estão disponíveis quando os clientes fazem um pedido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Reposição,TagAPP_Estoque,'Tempo de Reposição','Mede o tempo necessário para repor o estoque depois que ele atinge o nível de reabastecimento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Devolução,TagAPP_Estoque,'Taxa de Devolução','Mede a porcentagem de produtos devolvidos pelos clientes.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Produtos_Acima_do_Estoque_Máximo,TagAPP_Estoque,'Taxa de Produtos Acima do Estoque Máximo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Produtos_Abaixo_do_Estoque_Mínimo,TagAPP_Estoque,'Taxa de Produtos Abaixo do Estoque Mínimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Obsolescência_Estoque,TagAPP_Estoque,'Taxa de Obsolescência_Estoque','Indica a porcentagem de itens de estoque que se tornaram obsoletos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Perdas_Estoque,TagAPP_Estoque,'Valor Total de Perdas_Estoque','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Erros_de_Contagem,TagAPP_Balanco,'Taxa de Erros de Contagem','Indica a porcentagem de itens contados incorretamente durante o balanço.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_por_Contagem,TagAPP_Balanco,'Tempo Médio por Contagem','Mede o tempo médio necessário para contar um item ou um conjunto de itens.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Total_de_Balanço,TagAPP_Balanco,'Tempo Total de Balanço','Mede o tempo total necessário para completar o balanço de todo o estoque.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_de_Balanço_por_Item,TagAPP_Balanco,'Custo de Balanço por Item','Calcula o custo total do balanço dividido pelo número de itens contados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Frequência_de_Balanços,TagAPP_Balanco,'Frequência de Balanços','Indica quantas vezes o balanço de estoque é realizado em um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Precisão_do_Estoque,TagAPP_Balanco,'Taxa de Precisão do Estoque','Mede a precisão entre o estoque físico e os dados registrados no sistema.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_do_Estoque,TagAPP_Balanco,'Valor Total do Estoque','Valor financeiro total dos itens mantidos em estoque durante um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Obsolescência_Balanco,TagAPP_Balanco,'Taxa de Obsolescência_Balanco','Percentual de itens em estoque que se tornaram obsoletos ou não vendáveis)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Estoque_Excedente,TagAPP_Balanco,'Taxa de Estoque Excedente','Percentual de itens que ultrapassaram a quantidade máxima definida)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Estoque_de_Segurança,TagAPP_Balanco,'Taxa de Estoque de Segurança','Campo reservado do cadastro do produto ??)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Estoque_Perdido,TagAPP_Balanco,'Percentual de Estoque Perdido','Percentual de itens perdidos devido a furtos, danos ou erros.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atualizações_de_Estoque,TagAPP_Balanco,'Taxa de Atualizações de Estoque','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Balanços_com_Estoques_Negativos,TagAPP_Balanco,'Balanços com Estoques Negativos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_total_de_Divergências,TagAPP_Balanco,'Valor total de Divergências','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Impressões_sem_código_cadastrado,TagAPP_Codigo_Barras,'Impressões sem código cadastrado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Etiquetas_por_impressão,TagAPP_Codigo_Barras,'Média de Etiquetas por impressão','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Produtos_por_impressão,TagAPP_Codigo_Barras,'Média de Produtos por impressão','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Impressão,TagAPP_Codigo_Barras,'Tempo Médio de Impressão','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Margem_de_Lucro_por_Lote,TagAPP_Lote,'Margem de Lucro por Lote','Calcula o lucro obtido por cada lote de produto vendido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ruptura_de_Estoque,TagAPP_Lote,'Taxa de Ruptura de Estoque','Percentual de vezes em que um lote específico de produto não está disponível em estoque.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Vendas_Lote,TagAPP_Lote,'Volume de Vendas_Lote','Percentual de visitantes que realizam uma compra de um lote específico de produto.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Reabastecimento_Lote,TagAPP_Lote,'Tempo Médio para Reabastecimento_Lote','Tempo necessário para reabastecer o estoque de cada lote de produto.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Rastreabilidade,TagAPP_Lote,'Rastreabilidade','Capacidade de rastrear cada lote de produto desde a produção até a venda)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Produtos_Expirados,TagAPP_Lote,'Produtos Expirados','Número de produtos em um lote específico que atingiram sua data de validade)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retorno_por_Lote,TagAPP_Lote,'Taxa de Retorno por Lote','Percentual de produtos de um lote específico que foram retornados pelos clientes)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Rotação_de_Lote,TagAPP_Lote,'Tempo Médio de Rotação de Lote','Tempo médio que um lote leva para ser completamente vendido ou utilizado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Capacidade_de_Lote,TagAPP_Lote,'Taxa de Utilização de Capacidade de Lote','Percentual de capacidade de produção ou armazenamento utilizada para cada lote.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Desperdício,TagAPP_Lote,'Taxa de Desperdício','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Vida_Útil_Restante,TagAPP_Lote,'Tempo Médio de Vida Útil Restante','Tempo médio restante antes que os produtos em um lote atinjam sua data de validade)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Eficiência_de_Rotação_de_Estoque_por_Lote,TagAPP_Lote,'Eficiência de Rotação de Estoque por Lote','Número de vezes que o estoque de um lote específico é vendido e reposto em um período definido)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Lotes_com_Alterações,TagAPP_Lote,'Taxa de Lotes com Alterações','Percentual de lotes que passaram por alterações ou modificações após a produção inicial)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Lote,TagAPP_Lote,'Valor Total de Desconto Lote','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Acréscimo,TagAPP_Lote,'Valor Total de Acréscimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Lotes,TagAPP_Lote,'Valor Total de Lotes','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Perdas,TagAPP_Lote,'Valor Total de Perdas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Garantias,TagAPP_Lote,'Taxa de Garantias','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Acuracidade_do_Estoque_por_Localização,TagAPP_Multiplos_Estoques,'Acuracidade do Estoque por Localização','Percentual de concordância entre o estoque físico e o registrado no sistema para cada localização)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Giro_de_Estoque,TagAPP_Multiplos_Estoques,'Taxa de Giro de Estoque','Número de vezes que o estoque é vendido e reposto em um período específico para cada armazém)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Transferência_entre_Localizações,TagAPP_Multiplos_Estoques,'Tempo Médio de Transferência entre Localizações','Tempo médio necessário para transferir produtos de um armazém para outro)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_de_Armazenamento,TagAPP_Multiplos_Estoques,'Custo Médio de Armazenamento','Custo total associado ao armazenamento de produtos em cada localização, considerando espaço, manutenção, segurança, entre outros)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Produtos_Danificados_ou_Perdidos,TagAPP_Multiplos_Estoques,'Valor Total de Produtos Danificados ou Perdidos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pedidos_Atendidos_por_Localização,TagAPP_Multiplos_Estoques,'Taxa de Pedidos Atendidos por Localização','Percentual de pedidos atendidos em relação ao total de pedidos recebidos em cada armazém)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Devoluções,TagAPP_Multiplos_Estoques,'Taxa de Devoluções','Percentual de produtos devolvidos pelos clientes em relação ao total vendido em cada localização)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Nível_de_Estoque_Mínimo_por_Localização,TagAPP_Multiplos_Estoques,'Nível de Estoque Mínimo por Localização','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Nível_de_Estoque_Máximo_por_Localização,TagAPP_Multiplos_Estoques,'Nível de Estoque Máximo por Localização','Indica se os níveis de estoque em cada local estão dentro dos limites desejados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ruptura_de_Estoque_por_Local,TagAPP_Multiplos_Estoques,'Taxa de Ruptura de Estoque por Local','Percentual de vezes em que um item não está disponível em estoque em um local específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_de_Transferência_entre_Locais,TagAPP_Multiplos_Estoques,'Custo de Transferência entre Locais','Custo associado à transferência de itens entre diferentes locais)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Espaço_de_Armazenamento_por_Localização,TagAPP_Multiplos_Estoques,'Taxa de Utilização de Espaço de Armazenamento por Localização','Percentual do espaço de armazenamento efetivamente utilizado em cada local)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Obsolescência_de_Estoque,TagAPP_Multiplos_Estoques,'Taxa de Obsolescência de Estoque','Percentual de estoque que se torna obsoleto ou não vendável ao longo do tempo em cada local)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Estoque,TagAPP_Multiplos_Estoques,'Valor Total de Estoque','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Perdas,TagAPP_Multiplos_Estoques,'Taxa de Perdas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_Total_do_Patrimônio,TagAPP_Produto_Patrimonio,'Valor Total do Patrimônio','Valor total dos ativos fixos e intangíveis da organização)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Depreciação_de_Ativos,TagAPP_Produto_Patrimonio,'Taxa de Depreciação de Ativos','Percentual anual de depreciação dos ativos fixos com base em sua vida útil estimada)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Total_de_Ativos,TagAPP_Produto_Patrimonio,'Custo Total de Ativos','Inclui todos os custos associados à aquisição, manutenção e operação de um ativo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retorno_sobre_Ativos,TagAPP_Produto_Patrimonio,'Retorno sobre Ativos','Mede o lucro gerado por cada unidade de ativo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_entre_Falhas,TagAPP_Produto_Patrimonio,'Tempo Médio entre Falhas','Mede a confiabilidade dos ativos, indicando o tempo médio entre falhas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Reparo,TagAPP_Produto_Patrimonio,'Tempo Médio para Reparo','Mede o tempo médio necessário para reparar um ativo após uma falha.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Ativos,TagAPP_Produto_Patrimonio,'Taxa de Utilização de Ativos','Mede o grau em que os ativos estão sendo utilizados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_de_Manutenção_por_Ativo,TagAPP_Produto_Patrimonio,'Custo de Manutenção por Ativo','Mede o custo total de manutenção de cada ativo em relação ao seu valor)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retorno_Sobre_Investimento_em_Ativos,TagAPP_Produto_Patrimonio,'Retorno Sobre Investimento em Ativos','Retorno sobre o investimento feito em ativos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Venda_de_Ativos,TagAPP_Produto_Patrimonio,'Tempo Médio de Venda de Ativos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Residual,TagAPP_Produto_Patrimonio,'Valor Residual','Valor de um ativo após sua vida útil.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Operacional_por_Ativo,TagAPP_Produto_Patrimonio,'Custo Operacional por Ativo','Custo total para operar um ativo durante um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Eficiência_Energética,TagAPP_Produto_Patrimonio,'Eficiência Energética','Mede a eficiência energética de ativos como máquinas e equipamentos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Tempo_Médio_de_Aprovação_de_Ponto,TagAPP_RH_Ficha_Ponto,'Tempo Médio de Aprovação de Ponto','O tempo médio que leva para um supervisor ou gerente aprovar os registros de ponto)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Registro,TagAPP_RH_Ficha_Ponto,'Taxa de Erros de Registro','Percentual de registros de ponto que contêm erros e precisam ser corrigidos.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ausências_Não_Justificadas,TagAPP_RH_Ficha_Ponto,'Taxa de Ausências Não Justificadas','Percentual de ausências que não foram justificadas através do sistema de ficha ponto.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Adesão_dos_Funcionários,TagAPP_RH_Ficha_Ponto,'Taxa de Adesão dos Funcionários','Percentual de funcionários que estão usando o sistema de ficha ponto conforme esperado)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_de_Horas_Extras,TagAPP_RH_Ficha_Ponto,'Taxa de Ocorrências de Horas Extras','Percentual de registros que indicam trabalho em horas extras.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pontualidade,TagAPP_RH_Ficha_Ponto,'Taxa de Pontualidade','Percentual de registros de ponto que indicam que o funcionário chegou no horário)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conformidade_com_Escalas,TagAPP_RH_Ficha_Ponto,'Taxa de Conformidade com Escalas','Mede o alinhamento entre os registros de ponto e as escalas de trabalho planejadas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Funcionários_sem_Horário_Definido,TagAPP_RH_Ficha_Ponto,'Taxa de Funcionários sem Horário Definido','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ausências_Justificadas,TagAPP_RH_Ficha_Ponto,'Taxa de Ausências Justificadas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Lançamentos_Manuais,TagAPP_RH_Ficha_Ponto,'Taxa de Lançamentos Manuais','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Horas_Faltas,TagAPP_RH_Ficha_Ponto,'Taxa de Horas Faltas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Precisão_da_Folha_de_Pagamento,TagAPP_RH_Folha_Pagamento,'Taxa de Precisão da Folha de Pagamento','Mede a acurácia dos pagamentos feitos aos funcionários, incluindo salários, bônus e deduções.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_de_Processamento_da_Folha_de_Pagamento,TagAPP_RH_Folha_Pagamento,'Tempo de Processamento da Folha de Pagamento','Tempo médio necessário para processar completamente uma folha de pagamento, desde a coleta de dados até o pagamento efetivo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Adesão_a_Pagamentos_Digitais,TagAPP_RH_Folha_Pagamento,'Taxa de Adesão a Pagamentos Digitais','Percentual de funcionários que optam por pagamentos digitais ou depósitos diretos em vez de cheques impressos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pagamentos_Pontuais,TagAPP_RH_Folha_Pagamento,'Taxa de Pagamentos Pontuais','Percentual de pagamentos feitos dentro dos prazos estabelecidos, o que é crucial para a satisfação do funcionário e conformidade legal.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Horas_Extras,TagAPP_RH_Folha_Pagamento,'Percentual de Horas Extras','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Horas_Faltas,TagAPP_RH_Folha_Pagamento,'Percentual de Horas Faltas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_INSS,TagAPP_RH_Folha_Pagamento,'Valor Total de INSS','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_FGTS,TagAPP_RH_Folha_Pagamento,'Valor Total de FGTS','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_Salarial,TagAPP_RH_Folha_Pagamento,'Média Salarial','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Percentual_de_Adiantamentos,TagAPP_RH_Folha_Pagamento,'Percentual de Adiantamentos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Folhas_em_Aberto,TagAPP_RH_Folha_Pagamento,'Folhas em Aberto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Vínculos_Financeiros_Divergentes,TagAPP_RH_Folha_Pagamento,'Vínculos Financeiros Divergentes','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Horas_Extras_Folha,TagAPP_RH_Folha_Pagamento,'Valor Total de Horas Extras Folha','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Folhas,TagAPP_RH_Folha_Pagamento,'Valor Total de Folhas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Horas_Faltas,TagAPP_RH_Folha_Pagamento,'Valor Total de Horas Faltas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Horas_Extras,TagAPP_RH_Folha_Pagamento,'Valor Total de Horas Extras','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Bonificação,TagAPP_RH_Folha_Pagamento,'Valor Total de Bonificação','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Custo_por_Contratação,TagAPP_RH_Funcionarios,'Custo por Contratação','Mede o custo total envolvido no processo de recrutamento e seleção de um novo funcionário)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rotatividade_de_Funcionários,TagAPP_RH_Funcionarios,'Taxa de Rotatividade de Funcionários','Mede o número de funcionários que saem da empresa em relação ao número total de funcionários.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retenção_de_Funcionários,TagAPP_RH_Funcionarios,'Taxa de Retenção de Funcionários','Mede o percentual de funcionários que permanecem na empresa durante um período específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Absenteísmo,TagAPP_RH_Funcionarios,'Taxa de Absenteísmo','Mede o número de dias perdidos devido a ausências em relação ao número total de dias trabalhados.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Horas_de_Treinamento,TagAPP_RH_Funcionarios,'Horas de Treinamento','Mede o número médio de horas de treinamento fornecidas a cada funcionário.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_por_Funcionário,TagAPP_RH_Funcionarios,'Custo Médio por Funcionário','Mede o custo total de um funcionário para a empresa, incluindo salário, benefícios e outros custos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Utilização_de_Benefícios,TagAPP_RH_Funcionarios,'Taxa de Utilização de Benefícios','Mede o percentual de funcionários que estão utilizando os benefícios oferecidos pela empresa.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Acidentes_de_Trabalho,TagAPP_RH_Funcionarios,'Taxa de Acidentes de Trabalho','Mede o número de acidentes de trabalho em relação ao número total de horas trabalhadas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Ferramentas_Vinculadas_ao_Funcionário,TagAPP_RH_Funcionarios,'Ferramentas Vinculadas ao Funcionário','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atualização_Salarial,TagAPP_RH_Funcionarios,'Taxa de Atualização Salarial','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Pensão_Alimentícia,TagAPP_RH_Funcionarios,'Pensão Alimentícia','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Atualização_de_Função,TagAPP_RH_Funcionarios,'Atualização de Função','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Férias_Concedidas,TagAPP_RH_Funcionarios,'Taxa de Férias Concedidas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Funcionários_com_Dependentes,TagAPP_RH_Funcionarios,'Taxa de Funcionários com Dependentes','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_total_de_Funcionários,TagAPP_RH_Funcionarios,'Custo total de Funcionários','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Entrega,TagAPP_Notificacoes,'Taxa de Entrega','Mede o percentual de notificações entregues com sucesso em relação ao número total de notificações enviadas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Abertura,TagAPP_Notificacoes,'Taxa de Abertura','Mede o percentual de notificações que foram abertas pelos usuários após serem entregues.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão,TagAPP_Notificacoes,'Taxa de Conversão','Mede o percentual de ações desejadas realizadas pelos usuários após clicar na notificação.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros,TagAPP_Notificacoes,'Taxa de Erros','Mede o percentual de notificações que não foram entregues ou que contêm erros.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamento_de_Inscrição,TagAPP_Notificacoes,'Taxa de Cancelamento de Inscrição','Mede o percentual de usuários que optaram por não receber mais notificações.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Notificações,TagAPP_Notificacoes,'Volume de Notificações','Mede o número total de notificações enviadas em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Capacidade_de_Pico,TagAPP_Notificacoes,'Capacidade de Pico','Mede o número máximo de notificações que o sistema pode processar em um curto período de tempo)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Retentativa_de_Envio,TagAPP_Notificacoes,'Taxa de Retentativa de Envio','Mede o percentual de notificações que são reenviadas após uma falha inicial.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Tempo_Médio_de_Aprovação,TagAPP_Aprovacoes,'Tempo Médio de Aprovação','Mede o tempo médio necessário para aprovar uma solicitação desde o momento em que é enviada.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso_nas_Aprovações,TagAPP_Aprovacoes,'Taxa de Atraso nas Aprovações','Mede o percentual de aprovações que não foram concluídas dentro do prazo estabelecido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Aprovação,TagAPP_Aprovacoes,'Taxa de Erros de Aprovação','Mede o percentual de aprovações que contêm erros ou informações incorretas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rejeição,TagAPP_Aprovacoes,'Taxa de Rejeição','Mede o percentual de solicitações que são rejeitadas em relação ao total de solicitações recebidas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Solicitações,TagAPP_Aprovacoes,'Volume de Solicitações','Mede o número total de solicitações de aprovação recebidas em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Aceitação,TagAPP_Aprovacoes,'Taxa de Aceitação','Mede o percentual de solicitações que são aceitas em relação ao total de solicitações recebidas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Rastreabilidade,TagAPP_Aprovacoes,'Taxa de Rastreabilidade','Mede a capacidade do sistema de rastrear e documentar todo o processo de aprovação para cada solicitação)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Conformidade_Sintegra,TagAPP_Integracao_Sintegra,'Taxa de Conformidade Sintegra','Mede o percentual de registros enviados ao Sintegra que estão em conformidade com as regras fiscais.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Submissão,TagAPP_Integracao_Sintegra,'Taxa de Erros de Submissão','Mede o percentual de registros enviados com erros ou inconsistências.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Submissão,TagAPP_Integracao_Sintegra,'Tempo Médio de Submissão','Mede o tempo médio necessário para preparar e enviar os registros ao Sintegra.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso_nas_Submissões,TagAPP_Integracao_Sintegra,'Taxa de Atraso nas Submissões','Mede o percentual de submissões que não foram enviadas dentro do prazo estabelecido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Auditoria_Bem_sucedida,TagAPP_Integracao_Sintegra,'Taxa de Auditoria Bem sucedida','Mede o percentual de registros Sintegra que passaram com sucesso por auditorias internas ou externas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Rastreabilidade,TagAPP_Integracao_Sintegra,'Índice de Rastreabilidade','Mede a capacidade da empresa de rastrear e validar os registros enviados ao Sintegra.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Registros,TagAPP_Integracao_Sintegra,'Volume de Registros','Mede o número total de registros fiscais enviados ao Sintegra em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Envios_Pontuais_Porcentagem_de_arquivos_enviados_dentro_do_prazo_estabelecido,TagAPP_Integracao_Sintegra,'Taxa de Envios Pontuais Porcentagem de arquivos enviados dentro do prazo estabelecido','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Conformidade_com_o_Ato_COTEPE,TagAPP_PAF,'Taxa de Conformidade com o Ato COTEPE','Mede o percentual de transações ou operações que estão em conformidade com as normas estabelecidas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Precisão_de_Dados,TagAPP_PAF,'Índice de Precisão de Dados','Mede a acurácia dos dados fornecidos em conformidade com o Ato COTEPE.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso_na_Conformidade,TagAPP_PAF,'Taxa de Atraso na Conformidade','Mede o percentual de casos em que a conformidade não foi alcançada dentro do prazo estabelecido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Sucesso_em_Auditorias_PAF,TagAPP_PAF,'Taxa de Sucesso em Auditorias PAF','Mede o percentual de auditorias realizadas que confirmam a conformidade com o Ato COTEPE)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Rastreabilidade_PAF,TagAPP_PAF,'Índice de Rastreabilidade PAF','Mede a capacidade de rastrear transações ou operações para fins de auditoria e conformidade.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Conformidade_SPED,TagAPP_Integracao_SPED,'Taxa de Conformidade SPED','Mede o percentual de registros enviados ao SPED que estão em conformidade com as regras fiscais.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Erros_de_Submissão_SPED,TagAPP_Integracao_SPED,'Taxa de Erros de Submissão SPED','Mede o percentual de registros enviados com erros ou inconsistências.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Submissão_SPED,TagAPP_Integracao_SPED,'Tempo Médio de Submissão SPED','Mede o tempo médio necessário para preparar e enviar os registros ao SPED.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso_nas_Submissões_SPED,TagAPP_Integracao_SPED,'Taxa de Atraso nas Submissões SPED','Mede o percentual de submissões que não foram enviadas dentro do prazo estabelecido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Auditoria_Bem_sucedida_SPED,TagAPP_Integracao_SPED,'Taxa de Auditoria Bem sucedida SPED','Mede o percentual de registros SPED que passaram com sucesso por auditorias internas ou externas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Rastreabilidade_SPED,TagAPP_Integracao_SPED,'Índice de Rastreabilidade SPED','Mede a capacidade da empresa de rastrear e validar os registros enviados ao SPED.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Volume_de_Registros_SPED,TagAPP_Integracao_SPED,'Volume de Registros SPED','Mede o número total de registros fiscais enviados ao SPED em um determinado período.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Rateios_do_Período,TagAPP_Rateio,'Volume de Rateios do Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Equipamentos_por_Rateio,TagAPP_Rateio,'Média de Equipamentos por Rateio','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Retorno_sobre_Investimento,TagAPP_Rateio,'Retorno sobre Investimento','ROI)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Precisão_no_Rateio,TagAPP_Rateio,'Taxa de Precisão no Rateio','Mede o percentual de acertos na alocação de custos entre as diferentes partes.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_para_Rateio,TagAPP_Rateio,'Tempo Médio para Rateio','Mede o tempo médio necessário para completar o processo de rateio após a utilização do veículo.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Atraso_no_Rateio,TagAPP_Rateio,'Taxa de Atraso no Rateio','Mede o percentual de rateios que não foram concluídos dentro do prazo estabelecido.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Sucesso_em_Auditorias,TagAPP_Rateio,'Taxa de Sucesso em Auditorias','Mede o percentual de rateios que passaram com sucesso por auditorias internas ou externas.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_Por_Rateio,TagAPP_Rateio,'Valor Médio Por Rateio','Mede o custo médio associado a cada processo de rateio.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Cotas_por_Rateio,TagAPP_Rateio,'Média de Cotas por Rateio','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_Rateio,TagAPP_Rateio,'Valor Total Rateio','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Ocorrências_no_Período,TagAPP_Ocorrencias,'Taxa de Ocorrências no Período','Mede o percentual de ocorrências no período especificado.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Resolução_de_Ocorrências,TagAPP_Ocorrencias,'Taxa de Resolução de Ocorrências','Mede o percentual de ocorrências resolvidas com sucesso dentro de um determinado período)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Custo_Médio_por_Ocorrência,TagAPP_Ocorrencias,'Custo Médio por Ocorrência','Mede o custo médio para resolver uma ocorrência, incluindo custos de reparo, multas e outros.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_com_danos_Totais,TagAPP_Ocorrencias,'Taxa de Ocorrências com danos Totais','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_com_danos_Parciais,TagAPP_Ocorrencias,'Taxa de Ocorrências com danos Parciais','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_com_Monta_Pequena,TagAPP_Ocorrencias,'Taxa de Ocorrências com Monta Pequena','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_com_Monta_Média,TagAPP_Ocorrencias,'Taxa de Ocorrências com Monta Média','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_com_Monta_Grande,TagAPP_Ocorrencias,'Taxa de Ocorrências com Monta Grande','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Índice_de_Recorrência,TagAPP_Ocorrencias,'Índice de Recorrência','Mede a taxa de ocorrências recorrentes, ajudando a identificar áreas que podem necessitar de melhorias.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Ocorrências_em_Aberto,TagAPP_Ocorrencias,'Taxa de Ocorrências em Aberto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Recuperação_por_Sistema_Antifurto,TagAPP_Ocorrencias,'Taxa de Recuperação por Sistema Antifurto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Associados_Participantes_por_Ocorrência,TagAPP_Ocorrencias,'Média de Associados Participantes por Ocorrência','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Ocorrências,TagAPP_Ocorrencias,'Valor Total de Ocorrências','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Valor_Total_de_Equipamentos,TagAPP_Equipamento,'Valor Total de Equipamentos','TCO)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Equipamentos_por_Associado,TagAPP_Equipamento,'Média de Equipamentos por Associado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Total_de_Equipamentos_no_Período,TagAPP_Equipamento,'Total de Equipamentos no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Equipamentos_Sem_Rateio,TagAPP_Equipamento,'Taxa de Equipamentos Sem Rateio','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Equipamentos_Sem_Mensalidade,TagAPP_Equipamento,'Taxa de Equipamentos Sem Mensalidade','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Equipamentos_sem_Rateio_Antifurto,TagAPP_Equipamento,'Taxa de Equipamentos sem Rateio Antifurto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Equipamentos_com_Boleto_Gerado,TagAPP_Equipamento,'Taxa de Equipamentos com Boleto Gerado','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_Entre_Ocorrências,TagAPP_Equipamento,'Tempo Médio Entre Ocorrências','Mede o tempo médio entre ocorrências de um equipamento específico.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Equipamentos_sem_Contribuição,TagAPP_Equipamento,'Taxa de Equipamentos sem Contribuição','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Caminhões,TagAPP_Equipamento,'Taxa de Caminhões','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Semi_Reboques,TagAPP_Equipamento,'Taxa de Semi Reboques','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Veículos_sem_Atualização_Pela_Tabela_Fipe,TagAPP_Equipamento,'Taxa de Veículos sem Atualização Pela Tabela Fipe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Média_de_Base_para_Rateio_no_Período,TagAPP_Equipamento,'Média de Base para Rateio no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Taxa_de_Boletos_Emitidos,TagAPP_Boletos_Eventuais,'Taxa de Boletos Emitidos','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Pagamento_Antecipado,TagAPP_Boletos_Eventuais,'Taxa de Pagamento Antecipado','Percentual de boletos pagos antes da data de vencimento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Tempo_Médio_de_Recebimento_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Tempo Médio de Recebimento Boletos Eventuais','Número médio de dias entre a emissão do boleto e o seu pagamento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Boletos_Emitidos_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Valor Total de Boletos Emitidos Boletos Eventuais','Soma do valor de todos os boletos emitidos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Boletos_Pagos_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Valor Total de Boletos Pagos Boletos Eventuais','Soma do valor de todos os boletos que foram efetivamente pagos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Boletos_Pagos_Após_o_Vencimento,TagAPP_Boletos_Eventuais,'Taxa de Boletos Pagos Após o Vencimento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Inadimplência_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Taxa de Inadimplência Boletos Eventuais','Percentual de boletos que não foram pagos até a data de vencimento.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Boletos_Contestados_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Taxa de Boletos Contestados Boletos Eventuais','Percentual de boletos que foram contestados ou questionados pelos membros)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Renegociação_de_Boletos_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Taxa de Renegociação de Boletos Boletos Eventuais','Percentual de boletos vencidos que foram renegociados)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cancelamento_de_Boletos_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Taxa de Cancelamento de Boletos Boletos Eventuais','Percentual de boletos que foram cancelados antes do vencimento)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Médio_por_Boleto_Emitido_Boletos_Eventuais,TagAPP_Boletos_Eventuais,'Valor Médio por Boleto Emitido Boletos Eventuais','Valor médio dos boletos emitidos em um período específico)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Conversão_de_Boletos_Emitidos_em_Pagamentos,TagAPP_Boletos_Eventuais,'Taxa de Conversão de Boletos Emitidos em Pagamentos','Percentual de boletos emitidos que resultaram em pagamentos efetivos)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Enviados_para_Protesto,TagAPP_Boletos_Eventuais,'Enviados para Protesto','Percentual de boletos emitidos que foram enviados a cartório para Protesto)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Variação_da_Taxa_de_Emissão_no_Período,TagAPP_Boletos_Eventuais,'Variação da Taxa de Emissão no Período','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Notas_Emitidas_Nfe,TagAPP_Nfe,'Volume de Notas Emitidas Nfe','Total de notas fiscais emitidas em um período específico',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Rejeitadas,TagAPP_Nfe,'Taxa de Notas Fiscais Rejeitadas','Número ou percentual de notas fiscais rejeitadas por órgãos fiscais devido a erros ou inconsistências.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Canceladas_Nfe,TagAPP_Nfe,'Taxa de Notas Fiscais Canceladas Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas_Nfe,TagAPP_Nfe,'Taxa de Notas Fiscais Desconhecidas Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_das_Notas_Emitidas_Nfe,TagAPP_Nfe,'Valor Total das Notas Emitidas Nfe','Valor total',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_dos_Impostos_Declarados_ICMS_ICMS_ST_IPI_PIS_Cofins_ISSQN_II,TagAPP_Nfe,'Valor Total dos Impostos Declarados ICMS ICMS ST IPI PIS Cofins ISSQN II','Importação)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Acréscimo_Nfe,TagAPP_Nfe,'Taxa de Notas com Acréscimo Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Frete_Nfe,TagAPP_Nfe,'Taxa de Notas com Frete Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_sem_Faturamento_Nfe,TagAPP_Nfe,'Taxa de Notas sem Faturamento Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Cartas_de_Correção_Emitidas,TagAPP_Nfe,'Taxa de Cartas de Correção Emitidas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_Nfe,TagAPP_Nfe,'Taxa de Notas Emitidas Após Faturamento Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Desconto_Nfe,TagAPP_Nfe,'Taxa de Notas com Desconto Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_sem_Faturamento_Nfe,TagAPP_Nfe,'Valor Total de Notas sem Faturamento Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_Nfe,TagAPP_Nfe,'Valor Total de Desconto Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_Após_Faturamento_Nfe,TagAPP_Nfe,'Valor Total de Notas Após Faturamento Nfe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_Notas_Emitidas,TagAPP_NFCe,'Volume de Notas Emitidas','Total de notas fiscais emitidas em um período específico',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_das_Notas_Emitidas,TagAPP_NFCe,'Valor Total das Notas Emitidas','Valor total',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Canceladas,TagAPP_NFCe,'Taxa de Notas Fiscais Canceladas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas_NFCe,TagAPP_NFCe,'Taxa de Notas Fiscais Desconhecidas NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Acréscimo_NFCe,TagAPP_NFCe,'Taxa de Notas com Acréscimo NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Desconto_NFCe,TagAPP_NFCe,'Taxa de Notas com Desconto NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_NFCe,TagAPP_NFCe,'Taxa de Notas Emitidas Após Faturamento NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_sem_Faturamento_NFCe,TagAPP_NFCe,'Taxa de Notas sem Faturamento NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_dos_Impostos_Declarados_ICMS_ICMS_ST_IPI_PIS_Cofins,TagAPP_NFCe,'Valor Total dos Impostos Declarados ICMS ICMS ST IPI PIS Cofins','Valor total dos impostos declarados nas notas fiscais emitidas)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_Sem_Faturamento_NFCe,TagAPP_NFCe,'Valor Total de Notas Sem Faturamento NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_Após_Faturamento,TagAPP_NFCe,'Valor Total de Notas Após Faturamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_NFCe,TagAPP_NFCe,'Valor Total de Desconto NFCe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

  RegistraKPI(TagKPI_Volume_de_NFS_e_Emitidas,TagAPP_NFSe,'Volume de NFS e Emitidas','Total de notas fiscais de serviço emitidas em um período específico',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_NFS_e_Rejeitadas,TagAPP_NFSe,'NFS e Rejeitadas','Número ou percentual de NFS-e rejeitadas por órgãos fiscais ou pelo sistema devido a erros ou inconsistências.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_das_NFS_e_Emitidas,TagAPP_NFSe,'Valor Total das NFS e Emitidas','Valor total',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_dos_Impostos_Declarados,TagAPP_NFSe,'Valor Total dos Impostos Declarados','Valor total dos impostos',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Canceladas,TagAPP_NFSe,'Taxa de Notas Canceladas','Percentual de NFS-e que são canceladas após a emissão.)',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas,TagAPP_NFSe,'Taxa de Notas Fiscais Desconhecidas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Acréscimo,TagAPP_NFSe,'Taxa de Notas com Acréscimo','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Desconto,TagAPP_NFSe,'Taxa de Notas com Desconto','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_NFSe,TagAPP_NFSe,'Taxa de Notas Emitidas Após Faturamento NFSe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_sem_Faturamento,TagAPP_NFSe,'Taxa de Notas sem Faturamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_com_Frete,TagAPP_NFSe,'Taxa de Notas com Frete','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Taxa_de_Notas_Emitidas,TagAPP_NFSe,'Taxa de Notas Emitidas','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Desconto_NFSe,TagAPP_NFSe,'Valor Total de Desconto NFSe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_Sem_Faturamento_NFSe,TagAPP_NFSe,'Valor Total de Notas Sem Faturamento NFSe','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);
  RegistraKPI(TagKPI_Valor_Total_de_Notas_Emitidas_Após_Faturamento,TagAPP_NFSe,'Valor Total de Notas Emitidas Após Faturamento','',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','',0,0,0,False,False,False,True);

{$REGION 'GRUPO VENDAS'}
//  Registra_KPI(AAPP[Tag_APP_Venda_PDV], 2, 1, False, 25, 0, 'Financeiro', 'Obs', 'Link');
  /////////////FIM PDV\\\\\\\\\\\\\\\\\\\

//  Registra_KPI_Evento(AAPP[Tag_APP_Financeiro], 2, 2, True, 1, Tag_KPI_Financeiro_Balanco, 'Evento foda', 'Obs', 'Link', 1,2,3,4,5);
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_MelhoresVendedores, 'Melhores Vendedores', 'Veja quem são os melhores vendedores da sua empresa', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_FaturamentoTipo, 'Vendas por Tipo de Faturamento', 'Quais são seus modelos(tipos) de venda que vendem mais', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_ProdutoTipo, 'Vendas por tipo de produto', 'entre produtos, serviços e outros, qual gera mais faturamento?', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_MelhoresClientes, 'Melhores Clientes', 'Verifique quais são seus melhores clientes', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_MelhoresProdutos, 'Melhores Produtos', 'Verifique quais são seus melhores Produtos', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Venda_ImpressaoTipo, 'Vendas por Tipo de Impressão', 'Entre seus modos de impressão, qual é o mais pedido', 'Link');

{$ENDREGION}


{$REGION 'GRUPO PRODUCAO'}



//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_OLE, 'Eficácia Geral do Trabalho - OLE', 'Veja quem são os melhores vendedores da sua empresa', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_OTIF, 'eficiência das entregas - OTIF', 'Quais são seus modelos(tipos) de venda que vendem mais', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_MTTR, 'Tempo Médio para Reparo', 'entre produtos, serviços e outros, qual gera mais faturamento?', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_TempoMedioFalhas, 'Tempo Médio entre Falhas', 'Verifique quais são seus melhores clientes', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_IndiceDesperdicio, 'Índice de desperdício', 'Verifique quais são seus melhores Produtos', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_IndiceAcidente, 'Índice de Acidente de Trabalho', 'Entre seus modos de impressão, qual é o mais pedido', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_IndiceAfastamento, 'Índice de afastamento', 'Entre seus modos de impressão, qual é o mais pedido', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Venda], 2, 1, True, 25, Tag_KPI_Producao_IndiceTaxaSucessoVendas, 'Índice de taxa de sucesso em vendas', 'Entre seus modos de impressão, qual é o mais pedido', 'Link');

  /////////////FIM PRODUCAO\\\\\\\\\\\\\\\\\\\
{$ENDREGION}

//
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 1, False, 1, Tag_KPI_Financeiro, 'Financeiro', 'Obs', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Financeiro_Balanco, 'Balanço', 'Obs', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 0, 0, False, 5, Tag_KPI_Separador, '', '', '');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 2, False, 4, Tag_KPI_Financeiro_Atrasos, 'Atrasos', 'Obs', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 0, 2, False, 1, Tag_KPI_Separador, '', '', '');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 2, True, 1, Tag_KPI_Financeiro_Boleto, 'Boleto', 'Obs', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Financeiro_Cartao, 'Cartão', 'Obs', 'Link');
//  Registra_KPI(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Financeiro_Cheque, 'Cheque', 'Obs', 'Link');
//  Registra_KPI_Menu(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Menu_Produto_Tipo, 'Tipo', 'Obs', 'Link');
//  Registra_KPI_Menu(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Menu_Produto_Grupo, 'Grupo', 'Obs', 'Link');
//  Registra_KPI_Menu(AAPP[Tag_APP_Financeiro], 2, 2, False, 1, Tag_KPI_Menu_Produto_Categoria, 'Categoria', 'Obs', 'Link');


{$REGION 'GRUPO CRM'}

//  Registra_KPI(AAPP[Tag_APP_CRM], 2, 1, False, 25, 0, 'crm', 'Obs', 'Link');
{$ENDREGION}

{$REGION 'GRUPO BI'}
//    Registra_KPI(AAPP[Tag_APP_BI], 2, 2, False, 1, Tag_APP_BI, 'Business Intelligence', 'Obs', 'Link');
{$ENDREGION}

{$REGION 'COMENTADO LISTA DE KPI PARA MIGRAR'}
  {   Aqui estão Os KPI para migrar


//PRODUTO
  AddLista(1,0,0,'Produtos Cadastrados', 'Verificar quantos produtos você tem ativo no sistema','');
  AddLista(2,0,0,'Serviços Cadastrados', 'Verificar quantos serviços você tem ativo no sistema','');
  AddLista(3,0,0,'Produtos Com Composição', 'Verificar quantos produtos com composição você tem ativo no sistema','');
  AddLista(4,0,0,'Produtos Com Família', 'Verificar quantos produtos com família você tem ativo no sistema','');
  AddLista(5,0,0,'Produtos Com Grade', 'Verificar quantos produtos com grade você tem ativo no sistema','');
  AddLista(6,0,0,'Patrimônio Cadastrados', 'Verificar quantos patrimõnio você tem ativo no sistema','');
  AddLista(7,0,0,'Produtos Com Estoque Abaixo do Minimo', 'Verificar quais produtos estão com estoque abaixo do minimo','');
  AddLista(8,0,0,'Produtos Com Estoque Acima do Máximo', 'Verificar quais produtos estão com o estoque acima do máximo','');
  AddLista(9,0,0,'Produtos de Venda sem código de barras', 'Verificar e ajustar produtos que estão sem o código de barras','');
  AddLista(10,0,0,'Produtos Com Estoque Negativo', 'Verificar e ajustar produtos que estão com estoque negativo','');
  AddLista(11,0,0,'Produtos Com Rendimento', 'Verificar quais produtos geram rendimentos','');
  AddLista(12,0,0,'Produtos Com NCM Inválidos', 'Verificar e ajustar produtos com NCM inválidos','');
  AddLista(13,0,0,'Produtos sem Grupo de Impostos', 'Verificar e ajustar produtos sem grupo de impostos para emissão de NF','');
  AddLista(14,0,0,'Produtos com Valor Abaixo do Mínimo', 'Verificar e ajustar produtos com valores de venda abaixo do mínimo','');
  AddLista(15,0,0,'Produtos com Finalização Automática na Produção', 'Verificar e cofigurar produtos que finalizam automáticamente ao entrar na produção','');
  AddLista(16,0,0,'Tipos de Produtos', 'Analisar a quantidade de produtos agrupados por tipo','');
  AddLista(17,0,0,'Categoria de Produtos', 'Analisar a quantidade de produtos agrupados por Categoria','');
//FIM PRODUTO

//ESTOQUE

//VAZIO

//FIM DO ESTOQUE

//FATURAMENTO
  AddLista(19,21,40,'Faturamento(Receita Bruta)', 'Total de receita bruta gerada por vendas','');
  AddLista(20,21,40,'ISS Retido', 'Total de ISS Retido com relação ao faturamento','');
  AddLista(21,21,40,'Faturamento com Retenção ISS', 'Total de faturamento subtraindo o ISS retido','');
  AddLista(22,21,40,'Total de IPI', 'Total de IPI gerado com relação ao faturamento','');
  AddLista(23,21,40,'Total de Acréscimos', 'Total de acréscimo aplicado nas vendas','');
  AddLista(24,21,40,'Total de Frete', 'Total de frete aplicado nas vendas','');
  AddLista(25,21,40,'Total de ICMS ST', 'Total de ICMS ST gerado nas vendas','');
  AddLista(26,21,40,'Total de Descontos', 'Total de descontos aplicado nas vendas','');
  AddLista(27,21,40,'Total de confins', 'Total de Confins gerado nas vendas','');
  AddLista(28,21,40,'Total de ISS Retido', 'Total de ISS retido gerado nas vendas','');
  AddLista(29,21,40,'Quantidade de Devolução', 'Quantidade de vendas devolvidas','');
  AddLista(30,21,40,'Vendas com Valores Diferente do Financeiro', 'Quantidade de vendas em que o valor recebido é diferente do valor vendido','');
  AddLista(31,21,40,'Vendas com mais de 1 NF', 'Quantidade de vendas que tem mais de uma nota fiscal','');
  AddLista(32,21,40,'Não Faturadas com NF', 'Vendas não faturadas com Nota emitida','');
  AddLista(33,21,40,'Vendas excluídas por Usuários', 'Quantidade de Vendas excluidas e por quem.','');
  AddLista(34,21,40,'Vendas com financeiro recebido e faturamento cancelado', 'Vendas que foram canceladas, mas ainda há registros financeiros','');
//FIM FATURAMENTO

//COMPRAS

//VAZIO

//FIM DA COMPRAS

//VENDAS
  AddLista(18,2,40,'Melhores Vendedores', 'Veja quem são os melhores vendedores da sua empresa','');
  AddLista(18,2,40,'Faturamento por tipo', 'Quais são seus modelos(tipos) de venda que vendem mais','');
  AddLista(18,2,40,'Vendas por tipo de produto', 'entre produtos, serviços e outros, qual gera mais faturamento?','');
  AddLista(18,2,40,'Melhores Clientes', 'Verifique quais são seus melhores clientes','');
  AddLista(18,2,40,'Melhores Produtos', 'Verifique quais são seus melhores Produtos','');
  AddLista(18,2,40,'Vendas por Tipo de Impressão', 'Entre seus modos de impressão, qual é o mais pedido','');
//FIM VENDAS


//FINANCEIRO
  AddLista(18,5,30,'Saldo das Contas', 'Verifique o saldo de todas as contas','');
  AddLista(18,5,30,'Saldo Conta1 ', 'Verifique o saldo desta conta(nome)','');
  AddLista(18,5,30,'Saldo de Todas as Contas Anterior', 'Verifique o saldo de todas as contas','');
  AddLista(18,5,30,'Mensalidades', 'Total de receitas pela mensalidade','');
  AddLista(18,5,30,'Juros', 'Total de receitas pelos juros','');
  AddLista(18,5,30,'Compras', 'Total de despesas pela compra','');
  AddLista(18,5,30,'Frete', 'Total de despesas pelo frete','');
  AddLista(18,5,30,'Comissões', 'Total de despesas por comissões','');
  AddLista(18,5,30,'Folha de pagamento', 'Total de despesas por folha de pagamento','');
  AddLista(18,5,30,'Juros', 'Total de despesas por Juros','');
  AddLista(18,5,30,'Saldo do dia', 'Saldo do dia','');
  AddLista(18,5,30,'Saldo das Contas', 'Total de despesas por folha de pagamento','');
//FINANCEIRO METAS
  AddLista(18,5,30,'Categoria de produto - Valores', 'Veja se a suas Categorias de produtos bateram a meta','');
  AddLista(18,5,30,'Tipos de produto - Valores', 'Veja se a seus tipos de produtos bateram a meta','');
  AddLista(18,5,30,'Metas Diárias', 'Veja se suas vendas bateram a meta','');

//FIM FINANCEIRO


//NOTAS FISCAIS
  AddLista(18,7,75,'Valor Emitidas', 'Valor total de notas emitidas','');
  AddLista(18,7,75,'Qtde Emitidas', 'Quantidade de notas emitidas','');
  AddLista(18,7,75,'Valor em notas autorizadas', 'Valor total de notas autorizadas','');
  AddLista(18,7,75,'Quant Autorizadas', 'Quantidade de notas Autorizadas','');
  AddLista(18,7,75,'Valor em notas canceladas', 'Valor total de notas canceladas','');
  AddLista(18,7,75,'Quant Canceladas', 'Valor total de notas canceladas','');
  //NOTA FISCAL DE SERVICO
  AddLista(18,8,75,'Valor Emitidas', 'Valor total de notas emitidas','');
  AddLista(18,8,75,'Qtde Emitidas', 'Quantidade de notas emitidas','');
  AddLista(18,8,75,'Valor em notas autorizadas', 'Valor total de notas autorizadas','');
  AddLista(18,8,75,'Quant Autorizadas', 'Quantidade de notas Autorizadas','');
  AddLista(18,8,75,'Valor em notas canceladas', 'Valor total de notas canceladas','');
  AddLista(18,8,75,'Quant Canceladas', 'Valor total de notas canceladas','');

  AddLista(18,8,75,'Quant. Notas com ISS Retido', 'Quantidade de notas com o ISS Retido','');
  AddLista(18,8,75,'R$ Total ISS Retido', 'Valor total ISS Retido','');
  AddLista(18,8,75,'Total de Notas Com Retenção', 'Total de Notas Com Retenção','');
//FIM NOTA FISCAL

//PESSOAS

  AddLista(18,0,34,'Quantidade de numeros de telefones incorretos', 'Telefones são importantes para emissão de NF, verique a lista e corrija','');
  AddLista(18,8,75,'Quantidade de clientes sem o numero do endereço', 'Número da residência (Limite de caracteres 1-60) Como Resolver: Abrir o cadastro da pessoa e preencher o número da residência (caso a residência não tenha número preencher com S/N ou 0)','');
  AddLista(18,8,75,'Quantidade de clientes sem endereco', 'Mostrar os cadastros de pessoas que não possuem endereço preenchidoAbrir o cadastro da pessoa sem o endereço preenchido e colocar o endereço correto','');
  AddLista(18,8,75,'Quantidade de cliente sem o CEP', 'Mostrar os cadastros de pessoas que não possuem CEP preenchido','');

//FIM PESSOAS

//PRODUCAO
  AddLista(18,4,73,'1 -Eficácia Geral do Trabalho - OLE','','');
  AddLista(18,4,73,'2 - Produtividade Homem / Hora','','');
  AddLista(18,4,73,'3 - On Time In Full - OTIF','','');
  AddLista(18,4,73,'4 - Tempo Médio para Reparo - MTTR','','');
  AddLista(18,4,73,'5 - Tempo de Inatividade','','');
  AddLista(18,4,73,'6 - Tempo Médio entre Falhas', '','');
  AddLista(18,4,73,'7 - Eficiência Global dos Equipamentos - OEE','','');
  AddLista(18,4,73,'Índice de desperdício', '','');
  AddLista(18,4,73,'Índice de Acidente de Trabalho', '','');
  AddLista(18,4,73,'Índice de afastamento', '','');
  AddLista(18,4,73,'Índice de taxa de sucesso em vendas', '','');
//FIM PRODUCAO

//  ,
//    'select coalesce(sum(v.total),0) as VENDA_FATURAMENTO_MES '+
//    'from venda v where  (v.ATIVO = ''S'' ) '+
//    'and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim) '+
//    'and not(v.dt_faturamento is null) ' +
//    'and (v.is_venda = ''S'')' );
  AddLista(1,0,0,'Titulo', 'Observação','link');

  if ATag_APP = Tag_APP_Estoque then
  begin
    MenuCria_Modulo(tcBase, 2, -1, Tag_APP_Venda,  'Módulo Produto');
    KPI.ParamByName('Competencia').AsString:= Competencia_Atual;
    KPI.Open;
    MenuCria_Sub_Titulo(tcBase, 1, 1,'Tipos de Produto', FrmPrincipal.btnKPI_Produto.Caption);
    if KPI.Locate('descricao', 'BTNKPI_PRODUTO_GRUPO', [] ) then
      MenuCria_Sub_Titulo(tcBase, 2, 1,'Grupo de Produto', KPI.FieldByName('Text1').AsString);
    if KPI.Locate('descricao', 'BTNKPI_PRODUTO_CATEGORIA', [] ) then
      MenuCria_Sub_Titulo(tcBase, 3, 1,'Categoria de Produto', KPI.FieldByName('Text1').AsString);
    KPI_Menu.ParamByName('Competencia').AsString:= Competencia_Atual;
    KPI_Menu.Open;
    KPI_Menu.First;
    while Not KPI_Menu.Eof do
    begin
      MenuCria_Sub_Titulo(tcBase, KPI_Menu.FieldByName('GROUPINDEX').AsInteger, KPI_Menu.FieldByName('INDEXINGROUP').AsInteger, KPI_Menu.FieldByName('Descricao').AsString, KPI_Menu.FieldByName('Text1').AsString);
      KPI_Menu.Next;
    end;
  end;

  if ATag_APP = Tag_APP_Financeiro then
  begin
    MenuCria_Modulo(tcBase, 1, 1, Tag_APP_Financeiro,  'Módulo Financeiro');

    MenuCria_Sub_Titulo(tcBase, 2, 2, 'Balanço','1');  // Aparece se tiver conta atrazada

    MenuCria_Separador(tcBase,3, 3);

    MenuCria_Sub_Titulo(tcBase, 4, 4, 'Atrasos','1');  // Aparece se tiver conta atrazada

    MenuCria_Separador(tcBase,5, 5);

    MenuCria_Sub_Titulo(tcBase, 6, 6, 'Boletos','1');
    MenuCria_Sub_Titulo(tcBase, 7, 7, 'Cartão','1');
    MenuCria_Sub_Titulo(tcBase, 8, 8, 'Cheque','1');
    MenuCria_Sub_Titulo(tcBase, 9, 9, 'Contratos','1');

    MenuCria_Sub_Titulo(tcBase, 10, 10, 'Conciliação','1');
  end;
  if ATag_APP = Tag_APP_Conciliacao then
  begin
    MenuCria_Modulo(tcBase, 2, -1, Tag_APP_Conciliacao,  'Módulo Conciliações');
    MenuCria_Titulo(tcBase, 3, 1, 'Bancária');
    MenuCria_Titulo(tcBase, 1, 1, 'Vendas');
    MenuCria_Titulo(tcBase, 1, 1, 'Compras');
  end;

  if ATag_APP = Tag_APP_Notificacoes then
  begin
    MenuCria_Modulo(tcBase, 2, -1, Tag_APP_Notificacoes,  'Módulo Notificações');
    MenuCria_Titulo(tcBase, 1, 1, 'Urgêntes');
    MenuCria_AvisoVermelho(tcBase, 'Resolva isso primeiro', 3);
    MenuCria_Separador(tcBase, 1, 1);
    MenuCria_Titulo(tcBase, 2, 1, 'Notificações');
    MenuCria_KPI_Vermelho(tcBase, 'Estoque', '233K');
    MenuCria_Titulo_Branco(tcBase, 'Produtos abaixo do mínimo', '23K');
  //  MenuCria_Sub_Titulo(tcBase, 'Financeiro', '23K');
  //  MenuCria_Titulo_Branco(tcBase, 'Boletos com 2 dias de atrazo', '2');
  //  MenuCria_Sub_Titulo(tcBase,'RH', '14K');
  //  MenuCria_Sub_Titulo(tcBase, 'Compras', '12');
  //  MenuCria_Sub_Titulo(tcBase, 'Vendas', '23');
    MenuCria_KPI_Vermelho(tcBase,'Produção', '23K');

  //  tiBasePadrao.Style.BorderColor        :=  tcBase.Style.BorderColor;
  //  tiBasePadrao.Style.GradientBeginColor :=  tcBase.Style.GradientBeginColor;
  //  tiBasePadrao.Style.GradientEndColor   :=  tcBase.Style.GradientEndColor;
  end;        }

//  if ATag_APP = Tag_Modulo_Conciliacao then
//  begin
//    MenuCria_Modulo(tcBase, 2, -1, Tag_Modulo_Financeiro_Conciliacao,  'Módulo Contas');
//  end;
//  for I := 0 to tcBase.Items.Count -1 do
//    tcBase.Items[I].OnClick := OnItemClick;

{$ENDREGION}

end;

initialization
  Inicializa_WR_KPI;

end.

