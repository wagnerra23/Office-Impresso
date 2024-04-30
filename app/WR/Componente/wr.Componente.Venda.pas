unit wr.Componente.Venda;

interface

procedure Inicializa_WR_Componente_Venda;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Componente = 1;

implementation

Uses
  Classes.APP, Base, Tag.Componente, Tag.Form;

procedure Inicializa_WR_Componente_Venda;
begin
  Registra_APP_Componente(TagComponente_TFrmAcabamento_edtCodigo,Tag_Producao_Acabamento,'ACABAMENTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmAcabamento_edtDescricao,Tag_Producao_Acabamento,'ACABAMENTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmAcabamento_cbxAtivo,Tag_Producao_Acabamento,'ACABAMENTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtCodigo,Tag_Agenda_Titulo,'AGENDA_TITULO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtDescricao,Tag_Agenda_Titulo,'AGENDA_TITULO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_cbxAtivo,Tag_Agenda_Titulo,'AGENDA_TITULO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtColor,Tag_Agenda_Titulo,'AGENDA_TITULO','COLOR');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_IMAGEINDEX,Tag_Agenda_Titulo,'AGENDA_TITULO','IMAGEINDEX');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_TITULO_FORMATO,Tag_Agenda_Titulo,'AGENDA_TITULO','TITULO_FORMATO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_cbxMostrar_Horario,Tag_Agenda_Titulo,'AGENDA_TITULO','MOSTRAR_HORARIO');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtDT_Inicial,Tag_Agenda_Titulo,'AGENDA_TITULO','DT_INICIAL');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtDT_Final,Tag_Agenda_Titulo,'AGENDA_TITULO','DT_FINAL');
  Registra_APP_Componente(TagComponente_TFrmAgenda_Titulo_edtMinutos,Tag_Agenda_Titulo,'AGENDA_TITULO','MINUTOS');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tipo_edtCodigo,Tag_Produto_Tipo,'PRODUTO_TIPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tipo_cbxAtivo,Tag_Produto_Tipo,'PRODUTO_TIPO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tipo_edtDescricao,Tag_Produto_Tipo,'PRODUTO_TIPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtCodigo,Tag_Empresa,'EMPRESA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_cbxAtivo,Tag_Empresa,'EMPRESA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtDescricao,Tag_Empresa,'EMPRESA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tipo_chkPode_Alterar_Estoque,Tag_Produto_Tipo,'PRODUTO_TIPO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNFCe_Producao_ID,Tag_Empresa,'EMPRESA','NFCE_PRODUCAO_ID');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNFCe_Homologacao_ID,Tag_Empresa,'EMPRESA','NFCE_HOMOLOGACAO_ID');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_chk_Tem_NF_Email_Envio,Tag_Empresa,'EMPRESA','TEM_NF_EMAIL_ENVIO');
  Registra_APP_Componente(TagComponente_TFrmBancos_edtCodigo,Tag_Cadastro_Banco,'BANCOS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmBancos_cbxAtivo,Tag_Cadastro_Banco,'BANCOS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmBancos_edtDescricao,Tag_Cadastro_Banco,'BANCOS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Acoes_edtCodigo,Tag_Acoes_Configuracao,'CONFIGURACAO_ACOES','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Acoes_edtDescricao,Tag_Acoes_Configuracao,'CONFIGURACAO_ACAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Acoes_cbxAtivo,Tag_Acoes_Configuracao,'CONFIGURACAO_ACOES','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Agrupamento_edtCodigo,Tag_Configuracao_Agrupamento,'CONFIGURACAO_AGRUPAMENTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Agrupamento_edtDescricao,Tag_Configuracao_Agrupamento,'CONFIGURACAO_AGRUPAMENTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Agrupamento_cbxAtivo,Tag_Configuracao_Agrupamento,'CONFIGURACAO_AGRUPAMENTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_WR_Controle_KPI_edtCodigo,Tag_WR_Controle_KPI,'TFRMWR_CONTROLE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_WR_Controle_KPI_cbxAtivo,Tag_WR_Controle_KPI,'TFRMWR_CONTROLE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_WR_Controle_KPI_edtDescricao,Tag_WR_Controle_KPI,'TFRMWR_CONTROLE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Filtro_edtCodigo,Tag_Configuracao_Filtro,'CONFIGURACAO_FILTRO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Filtro_edtDescricao,Tag_Configuracao_Filtro,'CONFIGURACAO_FILTRO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Filtro_cbxAtivo,Tag_Configuracao_Filtro,'CONFIGURACAO_FILTRO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Cad_Producao_edtCodigo,Tag_Producao,'PRODUCAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Cad_Producao_cbxAtivo,Tag_Producao,'PRODUCAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Cad_Producao_edtDT_Emissao,Tag_Producao,'PRODUCAO','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtCodigo,Tag_Produto_Patrimonio,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_cbxAtivo,Tag_Produto_Patrimonio,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtDescricao,Tag_Produto_Patrimonio,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmCor_edtCodigo,Tag_Cor,'COR','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmCor_edtDescricao,Tag_Cor,'COR','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmCor_cbxAtivo,Tag_Cor,'COR','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmDica_edtCodigo,Tag_Dica,'DICA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmDica_edtDescricao,Tag_Dica,'DICA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmDica_cbxAtivo,Tag_Dica,'DICA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Cad_Producao_edtDescricao,Tag_Producao,'PRODUCAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkPode_Alterar_Estoque,Tag_Produto_Patrimonio,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtCodigo,Tag_Venda_PDV,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_cbxAtivo,Tag_Venda_PDV,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_chkIntervalo_Mensal,Tag_Venda_PDV,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtResponsavelÎPessoas,Tag_Venda_PDV,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtStatus,Tag_Venda_PDV,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrmFamilia_edtCodigo,Tag_Produto_Familia,'FAMILIA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFamilia_edtDescricao,Tag_Produto_Familia,'FAMILIA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmFamilia_cbxAtivo,Tag_Produto_Familia,'FAMILIA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtDT_Emissao,Tag_Venda_PDV,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtPROJETO_DT_INICIO,Tag_Venda_PDV,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtDtCompetencia,Tag_Venda_PDV,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrmFormulas_edtCodigo,Tag_Formulas,'FORMULAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFormulas_edtDescricao,Tag_Formulas,'FORMULAS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmFormulas_cbxAtivo,Tag_Formulas,'FORMULAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmFormula_Perfil_edtCodigo,Tag_Formula_Perfil,'FORMULA_PERFIL','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFormula_Perfil_edtDescricao,Tag_Formula_Perfil,'FORMULA_PERFIL','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmFormula_Perfil_cbxAtivo,Tag_Formula_Perfil,'FORMULA_PERFIL','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmLocal_edtCodigo,Tag_Estoque_Local,'LOCAL','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmLocal_edtDescricao,Tag_Estoque_Local,'LOCAL','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmLocal_cbxAtivo,Tag_Estoque_Local,'LOCAL','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_CFOP_edtCodigo,Tag_NotaFiscal_CFOP,'NF_NATUREZA_OPERACAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_CFOP_edtDescricao,Tag_NotaFiscal_CFOP,'NF_NATUREZA_OPERACAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_CFOP_cbxAtivo,Tag_NotaFiscal_CFOP,'NF_NATUREZA_OPERACAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_NCM_edtCodigo,Tag_NotaFiscal_NCM,'NF_NCM','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_NCM_edtDescricao,Tag_NotaFiscal_NCM,'NF_NCM','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_NCM_cbxAtivo,Tag_NotaFiscal_NCM,'NF_NCM','TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtOperacao,Tag_Venda_PDV,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrmNF_NCM_edtEx_TIPI,Tag_NotaFiscal_NCM,'NF_NCM','EX_TIPI');
  Registra_APP_Componente(TagComponente_TFrmAtalho_Rapido_edtCodigo,Tag_Atalho_Rapido,'ATALHO_RAPIDO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmAtalho_Rapido_cbxAtivo,Tag_Atalho_Rapido,'ATALHO_RAPIDO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmAtalho_Rapido_edtDescricao,Tag_Atalho_Rapido,'ATALHO_RAPIDO','DESCRICAO');



  Registra_APP_Componente(TagComponente_TFrmEmpresa_chk_Tem_NF_Email_Envio_NFSe,Tag_Empresa,'EMPRESA','TEM_NF_EMAIL_ENVIO_NFSE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbDANFE,Tag_Empresa,'EMPRESA','NFE_DANFE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtPathLogs,Tag_Empresa,'EMPRESA','NFE_PATH');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNF_Email_Assunto,Tag_Empresa,'EMPRESA','NF_EMAIL_ASSUNTO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNF_Email_Menssagem,Tag_Empresa,'EMPRESA','NF_EMAIL_MENSAGEM');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbFusoEmissao,Tag_Empresa,'EMPRESA','FUSO_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Prioridade_CODIGO,Tag_Producao_Prioridade,'PRODUCAO_PRIORIDADE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Prioridade_edtDescricao,Tag_Producao_Prioridade,'PRODUCAO_PRIORIDADE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Prioridade_cbxAtivo,Tag_Producao_Prioridade,'PRODUCAO_PRIORIDADE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Template_edtCodigo,Tag_Producao_Template,'PRODUCAO_TEMPLATE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Template_edtDescricao,Tag_Producao_Template,'PRODUCAO_TEMPLATE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Template_cbxAtivo,Tag_Producao_Template,'PRODUCAO_TEMPLATE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Status_edtCodigo,Tag_Producao_Status,'PRODUCAO_STATUS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Status_edtDescricao,Tag_Producao_Status,'PRODUCAO_STATUS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Status_cbxAtivo,Tag_Producao_Status,'PRODUCAO_STATUS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Marcador_edtCodigo,Tag_Producao_Marcador,'PRODUCAO_MARCADOR','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Marcador_edtDescricao,Tag_Producao_Marcador,'PRODUCAO_MARCADOR','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Marcador_cbxAtivo,Tag_Producao_Marcador,'PRODUCAO_MARCADOR','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Situacao_edtCodigo,Tag_Producao_Situacao,'PRODUCAO_SITUACAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Situacao_edtDescricao,Tag_Producao_Situacao,'PRODUCAO_SITUACAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Situacao_cbxAtivo,Tag_Producao_Situacao,'PRODUCAO_SITUACAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Situacao_chkTem_Arquivar,Tag_Producao_Situacao,'PRODUCAO_SITUACAO','TEM_ARQUIVADO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Situacao_chkTem_Trabalhando,Tag_Producao_Situacao,'PRODUCAO_SITUACAO','TEM_TRABALHANDO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_edtCodigo,Tag_Producao_Roteiro,'PRODUCAO_ROTEIRO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_edtDescricao,Tag_Producao_Roteiro,'PRODUCAO_ROTEIRO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_cbxAtivo,Tag_Producao_Roteiro,'PRODUCAO_ROTEIRO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_Pergunta_edtCodigo,Tag_Producao_Roteiro_Pergunta,'PRODUCAO_ROTEIRO_PERGUNTA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_Pergunta_edtDescricao,Tag_Producao_Roteiro_Pergunta,'PRODUCAO_ROTEIRO_PERGUNTA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Roteiro_Pergunta_cbxAtivo,Tag_Producao_Roteiro_Pergunta,'PRODUCAO_ROTEIRO_PERGUNTA','ATIVO');

  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtCodigo,Tag_CondicaoPagto,'CONDICAOPAGTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_cbxAtivo,Tag_CondicaoPagto,'CONDICAOPAGTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtDescricao,Tag_CondicaoPagto,'CONDICAOPAGTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_rdgTipo,Tag_CondicaoPagto,'CONDICAOPAGTO','TIPO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtParcelas,Tag_CondicaoPagto,'CONDICAOPAGTO','PARCELAS');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtIntervalo,Tag_CondicaoPagto,'CONDICAOPAGTO','INTERVALO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_cbxTipo_Utilizacao,Tag_CondicaoPagto,'CONDICAOPAGTO','TIPO_UTILIZACAO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_cbxTipoPagto,Tag_CondicaoPagto,'CONDICAOPAGTO','TIPOPAGTO');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtFator_Comercial,Tag_CondicaoPagto,'CONDICAOPAGTO','FATOR_COMERCIAL');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_cbxEntrada,Tag_CondicaoPagto,'CONDICAOPAGTO','ENTRADA');
  Registra_APP_Componente(TagComponente_TFrmCondicaoPagto_edtDesconto_Acrescimo,Tag_CondicaoPagto,'CONDICAOPAGTO','DESCONTO_ACRESCIMO');
  Registra_APP_Componente(TagComponente_TFrmCidades_edtCodigo,Tag_Cidades,'CIDADES','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmCidades_cbxAtivo,Tag_Cidades,'CIDADES','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmCidades_edtPais,Tag_Cidades,'CIDADES','PAIS');
  Registra_APP_Componente(TagComponente_TFrmCidades_edtCodPais,Tag_Cidades,'CIDADES','CODPAIS');
  Registra_APP_Componente(TagComponente_TFrmCidades_edtDescricao,Tag_Cidades,'CIDADES','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grade_Modelo_edtCodigo,Tag_Produto_Grade_Modelo,'PRODUTO_GRADE_MODELO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grade_Modelo_cbxAtivo,Tag_Produto_Grade_Modelo,'PRODUTO_GRADE_MODELO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grade_Modelo_edtDescricao,Tag_Produto_Grade_Modelo,'PRODUTO_GRADE_MODELO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmContas_edtCodigo,Tag_Financeiro_CaixaConta,'CONTAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmContas_cbxAtivo,Tag_Financeiro_CaixaConta,'CONTAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmContas_edtDescricao,Tag_Financeiro_CaixaConta,'CONTAS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Estoque_Local_edtCodigo,Tag_Estoque_Local,'PRODUTO_ESTOQUE_LOCAL','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Estoque_Local_edtDescricao,Tag_Estoque_Local,'PRODUTO_ESTOQUE_LOCAL','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Estoque_Local_cbxAtivo,Tag_Estoque_Local,'PRODUTO_ESTOQUE_LOCAL','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Pagamento_edtCodigo,Tag_Financeiro_TipoPagamento,'TIPO_PAGAMENTO','CODIGO');

  Registra_APP_Componente(TagComponente_TFrmProduto_Grupo_edtCodigo,Tag_Produto_Grupo,'PRODUTO_GRUPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grupo_cbxAtivo,Tag_Produto_Grupo,'PRODUTO_GRUPO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmArquivos_Relatorio_edtCodigo,Tag_Arquivos_Relatorio,'ARQUIVOS_RELATORIO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmArquivos_Relatorio_cbxAtivo,Tag_Arquivos_Relatorio,'ARQUIVOS_RELATORIO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmArquivos_Relatorio_edtDescricao,Tag_Arquivos_Relatorio,'ARQUIVOS_RELATORIO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grupo_edtDescricao,Tag_Produto_Grupo,'PRODUTO_GRUPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Grupo_EdtNatOpÎNF_Natureza_Operacao,Tag_Produto_Grupo,'PRODUTO_GRUPO','CODNF_NATUREZA_OPERACAO');
  Registra_APP_Componente(TagComponente_TFrmPlanoContas_edtCodigo,Tag_Plano_Contas,'PLANOCONTAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmPlanoContas_cbxAtivo,Tag_Plano_Contas,'PLANOCONTAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmPlanoContas_CBxTipo,Tag_Plano_Contas,'PLANOCONTAS','TIPO');
  Registra_APP_Componente(TagComponente_TFrmPlanoContas_cbxTipo_Custo,Tag_Plano_Contas,'PLANOCONTAS','TIPO_CUSTO');
  Registra_APP_Componente(TagComponente_TFrmSetor_edtCodigo,Tag_Producao_Setor,'SETOR','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmSetor_cbxAtivo,Tag_Producao_Setor,'SETOR','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmSetor_edtDescricao,Tag_Producao_Setor,'SETOR','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_cbTipoContribuinte,Tag_Pessoas_Fornecedor,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtDtCadastro,Tag_Pessoas_Fornecedor,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_edtEtiqueta,Tag_Pessoas_Fornecedor,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrmCentro_Trabalho_edtCodigo,Tag_Centro_Trabalho,'CENTRO_TRABALHO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmCentro_Trabalho_cbxAtivo,Tag_Centro_Trabalho,'CENTRO_TRABALHO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_edtConsumidor_Final,Tag_Pessoas_Fornecedor,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtCidadesÎCidadesÎUF,Tag_Pessoas,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtFone1,Tag_Pessoas,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtNumero,Tag_Pessoas,'PESSOAS','NUMERO');
  Registra_APP_Componente(TagComponente_TFrmCentro_Trabalho_edtDescricao,Tag_Centro_Trabalho,'CENTRO_TRABALHO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmCentro_Trabalho_edtSubNivel,Tag_Centro_Trabalho,'CENTRO_TRABALHO','SUBNIVEL');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbFusoCancelamento,Tag_Empresa,'EMPRESA','FUSO_CANCELAMENTO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbFusoCCe,Tag_Empresa,'EMPRESA','FUSO_CCE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbFusoInutilizacao,Tag_Empresa,'EMPRESA','FUSO_INUTILIZACAO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_chkPode_NFe_CNPJ_Contador,Tag_Empresa,'EMPRESA','PODE_NFE_CNPJ_CONTADOR');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_chkPode_NFe_CNPJ_Desenvolvedor,Tag_Empresa,'EMPRESA','PODE_NFE_CNPJ_DESENVOLVEDOR');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_CbDANFSE,Tag_Empresa,'EMPRESA','NFSE_DANFE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtCNPJCPF,Tag_Empresa,'EMPRESA','CNPJCPF');
  Registra_APP_Componente(TagComponente_TFrmProduto_Marca_edtCodigo,Tag_Produto_Marca,'PRODUTO_MARCA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Marca_edtDescricao,Tag_Produto_Marca,'PRODUTO_MARCA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Marca_cbxAtivo,Tag_Produto_Marca,'PRODUTO_MARCA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtInscEstIdent,Tag_Empresa,'EMPRESA','INSCIDENT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtCodigo,Tag_Produto_Composicao,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_cbxAtivo,Tag_Produto_Composicao,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtDescricao,Tag_Produto_Composicao,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkPode_Alterar_Estoque,Tag_Produto_Composicao,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_cbxUnidade,Tag_Produto_Composicao,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtFantasia,Tag_Empresa,'EMPRESA','Fantasia');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtFone1,Tag_Empresa,'EMPRESA','Fone1');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtCEP,Tag_Empresa,'EMPRESA','CEP');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtEndereco,Tag_Empresa,'EMPRESA','Endereco');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNumero,Tag_Empresa,'EMPRESA','NUMERO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Lote_edtProdutoÎProduto,Tag_Produto_Lote,'PRODUTO_LOTE','CODPRODUTO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtBairro,Tag_Empresa,'EMPRESA','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Lote_edtDescricao,Tag_Produto_Lote,'PRODUTO_LOTE','REFERENCIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Lote_cbxAtivo,Tag_Produto_Lote,'PRODUTO_LOTE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Categoria_edtCodigo,Tag_Produto_Categoria,'PRODUTO_CATEGORIA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Markup_edtProdutoÎProduto,Tag_Markup,'PRODUTO_MARKUP','CODPRODUTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Markup_cbxAtivo,Tag_Markup,'PRODUTO_MARKUP','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmMensalidade_edtCodigo,Tag_Mensalidade,'MENSALIDADE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmMensalidade_edtDescricao,Tag_Mensalidade,'MENSALIDADE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmMensalidade_cbxAtivo,Tag_Mensalidade,'MENSALIDADE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Categoria_cbxAtivo,Tag_Produto_Categoria,'PRODUTO_CATEGORIA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Categoria_edtDescricao,Tag_Produto_Categoria,'PRODUTO_CATEGORIA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Categoria_edtTipo,Tag_Produto_Categoria,'PRODUTO_CATEGORIA','TIPO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Pagamento_cbxAtivo,Tag_Financeiro_TipoPagamento,'TIPO_PAGAMENTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Pagamento_edtDescricao,Tag_Financeiro_TipoPagamento,'TIPO_PAGAMENTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtCodigo,Tag_Venda_Orcamento,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_cbxAtivo,Tag_Venda_Orcamento,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_chkIntervalo_Mensal,Tag_Venda_Orcamento,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtResponsavelÎPessoas,Tag_Venda_Orcamento,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_Produtos_edtNF_UNIDADE,Tag_NF_Entrada_Produto,'NF_ENTRADA_PRODUTOS','NF_UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmNota_Fiscal_edtCodigo,Tag_Venda_Nota_Fiscal,'NOTA_FISCAL','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNota_Fiscal_cbxAtivo,Tag_Venda_Nota_Fiscal,'NOTA_FISCAL','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNota_Fiscal_Produto_edtCodigo,Tag_Nota_Fiscal_Produto,'NOTA_FISCAL_PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNota_Fiscal_Produto_cbxAtivo,Tag_Nota_Fiscal_Produto,'NOTA_FISCAL_PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmRecurso_edtCodigo,Tag_Recurso,'RECURSO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmRecurso_cbxAtivo,Tag_Recurso,'RECURSO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmTelefones_edtCodigo,Tag_Telefones,'TELEFONES','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmTelefones_edtDescricao,Tag_Telefones,'TELEFONES','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmTelefones_cbxAtivo,Tag_Telefones,'TELEFONES','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Impressao_edtCodigo,Tag_Producao_Tipo_Impressao,'TIPO_IMPRESSAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Impressao_edtDescricao,Tag_Producao_Tipo_Impressao,'TIPO_IMPRESSAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmTipo_Impressao_cbxAtivo,Tag_Producao_Tipo_Impressao,'TIPO_IMPRESSAO','ATIVO');

  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtCodPais,Tag_Empresa,'EMPRESA','CodPais');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtPais,Tag_Empresa,'EMPRESA','Pais');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtCidadeÎCidades,Tag_Empresa,'EMPRESA','CodCidade');
  Registra_APP_Componente(TagComponente_TFrmSpreadsheet_Referencia_edtCodigo,Tag_Spreadsheet_Referencia,'SPREADSHEET_REFERENCIA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmSpreadsheet_Referencia_edtDescricao,Tag_Spreadsheet_Referencia,'SPREADSHEET_REFERENCIA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmSpreadsheet_Referencia_edtSpreadSheet,Tag_Spreadsheet_Referencia,'SPREADSHEET_REFERENCIA','SPREADSHEET');
  Registra_APP_Componente(TagComponente_TFrmSpreadsheet_Referencia_cbxAtivo,Tag_Spreadsheet_Referencia,'SPREADSHEET_REFERENCIA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtCidadeÎCidadesÎDESCRICAO,Tag_Empresa,'EMPRESA','Cidade');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_EdtCidadeÎCidadesÎUF,Tag_Empresa,'EMPRESA','UF');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtEmail,Tag_Empresa,'EMPRESA','EMAIL');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Tipo_edtCodigo,Tag_Pessoas_Tipo,'PESSOAS_TIPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Tipo_edtDescricao,Tag_Pessoas_Tipo,'PESSOAS_TIPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Tipo_cbxAtivo,Tag_Pessoas_Tipo,'PESSOAS_TIPO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_edtCodigo,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_cbxAtivo,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_edtObservacao,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','OBSERVACAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_cbxProduto_Estoque_Local,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','PRODUTO_ESTOQUE_LOCAL');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_edtData,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','DATA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_cbxTipo_Movimento,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','TIPO_MOVIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Movimento_edtDescricao,Tag_Estoque_Produto_Movimento,'PRODUTO_MOVIMENTO','QUANT');
  Registra_APP_Componente(TagComponente_TFrmProducao_Produto_CODIGO,Tag_Producao_Produto,'PRODUCAO_PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtIM,Tag_Empresa,'EMPRESA','IM');
  Registra_APP_Componente(TagComponente_TFrmNF_Erros_edtCodigo,Tag_NotaFiscal_Erros,'NF_ERROS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_Erros_edtDescricao,Tag_NotaFiscal_Erros,'NF_ERROS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_Erros_cbxAtivo,Tag_NotaFiscal_Erros,'NF_ERROS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmDashBoards_edtCodigo,Tag_DashBoards,'DASHBOARDS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmDashBoards_edtDescricao,Tag_DashBoards,'DASHBOARDS','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmDashBoards_cbxAtivo,Tag_DashBoards,'DASHBOARDS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtCNAE,Tag_Empresa,'EMPRESA','CNAE');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtListServicoÎNF_NCM,Tag_Empresa,'CONFIGURACAO','CONF');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtRegTributacaoÎNF_Regime_Especial_Tributacao,Tag_Empresa,'CONFIGURACAO','CONF');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_cbSerieNFSe,Tag_Empresa,'CONFIGURACAO','CONF');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNFSe_CNPJCPF,Tag_Empresa,'EMPRESA','CNPJCPF');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNFSe_Senha,Tag_Empresa,'EMPRESA','NFSE_SENHA');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_chkUsaCertificadoPeloExplorer,Tag_Empresa,'EMPRESA','TEM_CERTIFICADO');
  Registra_APP_Componente(TagComponente_TFrmEmpresa_edtNFSe_Usuario,Tag_Empresa,'EMPRESA','NFSE_USUARIO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtStatus,Tag_Venda_Orcamento,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtDT_Emissao,Tag_Venda_Orcamento,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtPROJETO_DT_INICIO,Tag_Venda_Orcamento,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtDtCompetencia,Tag_Venda_Orcamento,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_cbxSituacaoTributaria,Tag_Venda_Orcamento,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda_Orcamento,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_cbxTipo_Venda,Tag_Venda_Orcamento,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtResponsavelÎPessoasÎFONE1,Tag_Venda_Orcamento,'VENDA','TELEFONE');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO,Tag_Venda_Orcamento,'VENDA','CONDICAOPAGTO');
  Registra_APP_Componente(TagComponente_TFrmOrcamento_edtCodProduto,Tag_Venda_Orcamento,'VENDA_PRODUTO','CODPRODUTO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Estagio_edtCodigo,Tag_Venda_Estagio,'VENDA_ESTAGIO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Estagio_cbxAtivo,Tag_Venda_Estagio,'VENDA_ESTAGIO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Estagio_edtDescricao,Tag_Venda_Estagio,'VENDA_ESTAGIO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Situacao_edtCodigo,Tag_Situacao_Venda,'VENDA_SITUACAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_CST_edtCodigo,Tag_NotaFiscal_CST,'NF_CST','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_CST_cbxAtivo,Tag_NotaFiscal_CST,'NF_CST','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_CST_edtDescricao,Tag_NotaFiscal_CST,'NF_CST','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_CEST_edtCodigo,Tag_NotaFiscal_CEST,'NF_CEST','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_CEST_cbxAtivo,Tag_NotaFiscal_CEST,'NF_CEST','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_CEST_edtDescricao,Tag_NotaFiscal_CEST,'NF_CEST','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_CNAE_edtCodigo,Tag_NotaFiscal_CNAE,'NF_CNAE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_CNAE_cbxAtivo,Tag_NotaFiscal_CNAE,'NF_CNAE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_CNAE_edtDescricao,Tag_NotaFiscal_CNAE,'NF_CNAE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Situacao_cbxAtivo,Tag_Situacao_Venda,'VENDA_SITUACAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Situacao_edtDescricao,Tag_Situacao_Venda,'VENDA_SITUACAO','DESCRICAO');

  Registra_APP_Componente(TagComponente_TFrmMeta_edtCodigo,Tag_Meta,'META','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmMeta_cbxAtivo,Tag_Meta,'META','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmMeta_edtDescricao,Tag_Meta,'META','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Regra_edtCodigo,Tag_Configuracao_Regra,'CONFIGURACAO_REGRA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Regra_cbxAtivo,Tag_Configuracao_Regra,'CONFIGURACAO_REGRA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Regra_edtDescricao,Tag_Configuracao_Regra,'CONFIGURACAO_REGRA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Componente_edtCodigo,Tag_Configuracao_Componente,'CONFIGURACAO_COMPONENTE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Componente_cbxAtivo,Tag_Configuracao_Componente,'CONFIGURACAO_COMPONENTE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmConfiguracao_Componente_edtDescricao,Tag_Configuracao_Componente,'CONFIGURACAO_COMPONENTE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtCodigo,Tag_Venda,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cbxAtivo,Tag_Venda,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_chkIntervalo_Mensal,Tag_Venda,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtCodigo,Tag_Produto_Variacao,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_cbxAtivo,Tag_Produto_Variacao,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtDescricao,Tag_Produto_Variacao,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎPessoas,Tag_Venda,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkPode_Alterar_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_cbxUnidade,Tag_Produto_Variacao,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_cbxIPPT,Tag_Produto_Variacao,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_cbxIAT,Tag_Produto_Variacao,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtDT_Cadastro,Tag_Produto_Variacao,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtMargem,Tag_Produto_Variacao,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkCriaTarefaProducao,Tag_Produto_Variacao,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtOrigem_Mercadoria,Tag_Produto_Variacao,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtCodigo,Tag_Produto_Venda,'TFRMPRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtEstoque_Min,Tag_Produto_Variacao,'PRODUTO','TEM_VARIACAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtEstoque_Max,Tag_Produto_Variacao,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkTem_Lote,Tag_Produto_Variacao,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtQTDADePeca,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtComp,Tag_Produto_Variacao,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_Tag_Produto_cbxAtivo,Tag_Produto_Venda,'TFRMPRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtDescricao,Tag_Produto_Venda,'TFRMPRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkPode_Alterar_Estoque,Tag_Produto_Venda,'TFRMPRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_Tag_Produto_cbxUnidade,Tag_Produto_Venda,'TFRMPRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_Tag_Produto_cbxIPPT,Tag_Produto_Venda,'TFRMPRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_Tag_Produto_cbxIAT,Tag_Produto_Venda,'TFRMPRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_Tag_Produto_cbxComposicao,Tag_Produto_Venda,'TFRMPRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_edtCodigo,Tag_Tipo_Venda,'VENDA_TIPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxAtivo,Tag_Tipo_Venda,'VENDA_TIPO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_edtDescricao,Tag_Tipo_Venda,'VENDA_TIPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_chkPode_Emitir_Notafiscal,Tag_Tipo_Venda,'VENDA_TIPO','NF_FINALIDADE');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxProduto_Estoque_Local,Tag_Tipo_Venda,'VENDA_TIPO','PRODUTO_ESTOQUE_LOCAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxNF_Finalidade,Tag_Tipo_Venda,'VENDA_TIPO','PODE_SER_PRODUZIDO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_chkPode_Ser_Faturado,Tag_Tipo_Venda,'VENDA_TIPO','PODE_SER_FATURADO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxEntrada_Saida,Tag_Tipo_Venda,'VENDA_TIPO','ENTRADA_SAIDA');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxModelo,Tag_Tipo_Venda,'VENDA_TIPO','MODELO');
  Registra_APP_Componente(TagComponente_TFrmVenda_Tipo_cbxNF_Frete_Por_Conta,Tag_Tipo_Venda,'VENDA_TIPO','NF_FRETE_POR_CONTA');

  Registra_APP_Componente(TagComponente_TFrmProduto_Tabela_edtCodigo,Tag_Tabela_Preco,'PRODUTO_TABELA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tabela_cbxAtivo,Tag_Tabela_Preco,'PRODUTO_TABELA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Tabela_edtDescricao,Tag_Tabela_Preco,'PRODUTO_TABELA','DESCRICAO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtDT_Cadastro,Tag_Produto_Venda,'TFRMPRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtCEP,Tag_Pessoas,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtMargem,Tag_Produto_Venda,'TFRMPRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkCriaTarefaProducao,Tag_Produto_Venda,'TFRMPRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtOrigem_Mercadoria,Tag_Produto_Venda,'TFRMPRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtEstoque_Min,Tag_Produto_Venda,'TFRMPRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtEstoque_Max,Tag_Produto_Venda,'TFRMPRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkPode_Retornar_Ao_Estoque,Tag_Produto_Venda,'TFRMPRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkTem_Lote,Tag_Produto_Venda,'TFRMPRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtQTDADePeca,Tag_Produto_Venda,'TFRMPRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtComp,Tag_Produto_Venda,'TFRMPRODUTO','COMP');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtLarg,Tag_Produto_Venda,'TFRMPRODUTO','LARG');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtEspessura,Tag_Produto_Venda,'TFRMPRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtQTDADePecaFormula,Tag_Produto_Venda,'TFRMPRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtCompFormula,Tag_Produto_Venda,'TFRMPRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtLargFormula,Tag_Produto_Venda,'TFRMPRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtEspessuraFormula,Tag_Produto_Venda,'TFRMPRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtComp_Rendimento,Tag_Produto_Venda,'TFRMPRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtLarg_Rendimento,Tag_Produto_Venda,'TFRMPRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtEspessura_Rendimento,Tag_Produto_Venda,'TFRMPRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_Tag_Produto_edtRendimento,Tag_Produto_Venda,'TFRMPRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkPode_Atualizar_Markup,Tag_Produto_Venda,'TFRMPRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkPode_Ser_Vendido,Tag_Produto_Venda,'TFRMPRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkPode_Ser_Comprado,Tag_Produto_Venda,'TFRMPRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_Tag_Produto_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Venda,'TFRMPRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_edtCodigo,Tag_NotaFiscal_Entrada,'NF_ENTRADA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_cbxAtivo,Tag_NotaFiscal_Entrada,'NF_ENTRADA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_chkGera_Financeiro,Tag_NotaFiscal_Entrada,'NF_ENTRADA','GERA_FINANCEIRO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_chkGera_Estoque,Tag_NotaFiscal_Entrada,'NF_ENTRADA','ATUALIZA_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_cbxTipo,Tag_NotaFiscal_Entrada,'NF_ENTRADA','TIPO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_chkEnviaFinanceiro,Tag_NotaFiscal_Entrada,'NF_ENTRADA','ENVIA_FINANCEIRO');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_chkEnvia_Estoque,Tag_NotaFiscal_Entrada,'NF_ENTRADA','ENVIA_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_edtData,Tag_NotaFiscal_Entrada,'NF_ENTRADA','DATA');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_edtDT_Nota,Tag_NotaFiscal_Entrada,'NF_ENTRADA','DT_NOTA');
  Registra_APP_Componente(TagComponente_TFrmNF_Entrada_chkPode_Ratear_Frete_Desc_Outro,Tag_NotaFiscal_Entrada,'NF_ENTRADA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtCodigo,Tag_Produto_Servico,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_cbxAtivo,Tag_Produto_Servico,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtDescricao,Tag_Produto_Servico,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkPode_Alterar_Estoque,Tag_Produto_Servico,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_cbxUnidade,Tag_Produto_Servico,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_cbxIPPT,Tag_Produto_Servico,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_cbxIAT,Tag_Produto_Servico,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_cbxComposicao,Tag_Produto_Servico,'PRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtDT_Cadastro,Tag_Produto_Servico,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtMargem,Tag_Produto_Servico,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkCriaTarefaProducao,Tag_Produto_Servico,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtOrigem_Mercadoria,Tag_Produto_Servico,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtEstoque_Min,Tag_Produto_Servico,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtEstoque_Max,Tag_Produto_Servico,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkPode_Retornar_Ao_Estoque,Tag_Produto_Servico,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkTem_Lote,Tag_Produto_Servico,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtQTDADePeca,Tag_Produto_Servico,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtComp,Tag_Produto_Servico,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtLarg,Tag_Produto_Servico,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtEspessura,Tag_Produto_Servico,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtQTDADePecaFormula,Tag_Produto_Servico,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtCompFormula,Tag_Produto_Servico,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtLargFormula,Tag_Produto_Servico,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtEspessuraFormula,Tag_Produto_Servico,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtComp_Rendimento,Tag_Produto_Servico,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtLarg_Rendimento,Tag_Produto_Servico,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtEspessura_Rendimento,Tag_Produto_Servico,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_edtRendimento,Tag_Produto_Servico,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkPode_Atualizar_Markup,Tag_Produto_Servico,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkPode_Ser_Vendido,Tag_Produto_Servico,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkPode_Ser_Comprado,Tag_Produto_Servico,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_ProdutoServico_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Servico,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtCodigo,Tag_Produto_MateriaPrima,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_cbxAtivo,Tag_Produto_MateriaPrima,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtDescricao,Tag_Produto_MateriaPrima,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkPode_Alterar_Estoque,Tag_Produto_MateriaPrima,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_cbxUnidade,Tag_Produto_MateriaPrima,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_cbxIPPT,Tag_Produto_MateriaPrima,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_cbxIAT,Tag_Produto_MateriaPrima,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtDT_Cadastro,Tag_Produto_MateriaPrima,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtMargem,Tag_Produto_MateriaPrima,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkCriaTarefaProducao,Tag_Produto_MateriaPrima,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtOrigem_Mercadoria,Tag_Produto_MateriaPrima,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEspessura,Tag_Produto_MateriaPrima,'PRODUTO','TEM_MATERIAPRIMA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEstoque_Min,Tag_Produto_MateriaPrima,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEstoque_Max,Tag_Produto_MateriaPrima,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_MateriaPrima,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkTem_Lote,Tag_Produto_MateriaPrima,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtQTDADePeca,Tag_Produto_MateriaPrima,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtComp,Tag_Produto_MateriaPrima,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtLarg,Tag_Produto_MateriaPrima,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEspessura,Tag_Produto_MateriaPrima,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtQTDADePecaFormula,Tag_Produto_MateriaPrima,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtCompFormula,Tag_Produto_MateriaPrima,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtLargFormula,Tag_Produto_MateriaPrima,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEspessuraFormula,Tag_Produto_MateriaPrima,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtComp_Rendimento,Tag_Produto_MateriaPrima,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtLarg_Rendimento,Tag_Produto_MateriaPrima,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtEspessura_Rendimento,Tag_Produto_MateriaPrima,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_edtRendimento,Tag_Produto_MateriaPrima,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmUnidade_edtCodigo,Tag_Produto_Unidade,'UNIDADE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmUnidade_cbxAtivo,Tag_Produto_Unidade,'UNIDADE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmUnidade_edtDescricao,Tag_Produto_Unidade,'UNIDADE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtCodigo,Tag_Produto_Servico,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_cbxAtivo,Tag_Produto_Servico,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtDescricao,Tag_Produto_Servico,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkPode_Atualizar_Markup,Tag_Produto_MateriaPrima,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkPode_Alterar_Estoque,Tag_Produto_Servico,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_cbxUnidade,Tag_Produto_Servico,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_cbxIPPT,Tag_Produto_Servico,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_cbxIAT,Tag_Produto_Servico,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtDT_Cadastro,Tag_Produto_Servico,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtMargem,Tag_Produto_Servico,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkCriaTarefaProducao,Tag_Produto_Servico,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtOrigem_Mercadoria,Tag_Produto_Servico,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtLargFormula,Tag_Produto_Servico,'PRODUTO','TEM_SERVICO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtEstoque_Min,Tag_Produto_Servico,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtEstoque_Max,Tag_Produto_Servico,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_Servico,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkTem_Lote,Tag_Produto_Servico,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtQTDADePeca,Tag_Produto_Servico,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtComp,Tag_Produto_Servico,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtLarg,Tag_Produto_Servico,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtEspessura,Tag_Produto_Servico,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtQTDADePecaFormula,Tag_Produto_Servico,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtCompFormula,Tag_Produto_Servico,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtLargFormula,Tag_Produto_Servico,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtEspessuraFormula,Tag_Produto_Servico,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtComp_Rendimento,Tag_Produto_Servico,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtLarg_Rendimento,Tag_Produto_Servico,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtEspessura_Rendimento,Tag_Produto_Servico,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_edtRendimento,Tag_Produto_Servico,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkPode_Atualizar_Markup,Tag_Produto_Servico,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtCodigo,Tag_Produto_Variacao,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_cbxAtivo,Tag_Produto_Variacao,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtDescricao,Tag_Produto_Variacao,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkPode_Alterar_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_cbxUnidade,Tag_Produto_Variacao,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_cbxIPPT,Tag_Produto_Variacao,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_cbxIAT,Tag_Produto_Variacao,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_cbxComposicao,Tag_Produto_Variacao,'PRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtDT_Cadastro,Tag_Produto_Variacao,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtMargem,Tag_Produto_Variacao,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkCriaTarefaProducao,Tag_Produto_Variacao,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtOrigem_Mercadoria,Tag_Produto_Variacao,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtEstoque_Min,Tag_Produto_Variacao,'PRODUTO','TEM_VARIACAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtEstoque_Max,Tag_Produto_Variacao,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkPode_Retornar_Ao_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkTem_Lote,Tag_Produto_Variacao,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtQTDADePeca,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtComp,Tag_Produto_Variacao,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtLarg,Tag_Produto_Variacao,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtEspessura,Tag_Produto_Variacao,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtQTDADePecaFormula,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtCompFormula,Tag_Produto_Variacao,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtLargFormula,Tag_Produto_Variacao,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtEspessuraFormula,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtComp_Rendimento,Tag_Produto_Variacao,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtLarg_Rendimento,Tag_Produto_Variacao,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtEspessura_Rendimento,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_edtRendimento,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkPode_Atualizar_Markup,Tag_Produto_Variacao,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkPode_Ser_Vendido,Tag_Produto_Variacao,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkPode_Ser_Comprado,Tag_Produto_Variacao,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Frame_Variacao_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Variacao,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProducao_edtCodigo,Tag_Producao,'PRODUCAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_cbxAtivo,Tag_Producao,'PRODUCAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_edtDescricao,Tag_Producao,'PRODUCAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtLarg,Tag_Produto_Variacao,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtEspessura,Tag_Produto_Variacao,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtQTDADePecaFormula,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtCompFormula,Tag_Produto_Variacao,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtLargFormula,Tag_Produto_Variacao,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtEspessuraFormula,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtComp_Rendimento,Tag_Produto_Variacao,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtLarg_Rendimento,Tag_Produto_Variacao,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtEspessura_Rendimento,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_edtRendimento,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkPode_Atualizar_Markup,Tag_Produto_Variacao,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkPode_Ser_Vendido,Tag_Produto_Variacao,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkPode_Ser_Comprado,Tag_Produto_Variacao,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Variacao_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Variacao,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtCodigo,Tag_Produto_Personalizado,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_cbxAtivo,Tag_Produto_Personalizado,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtDescricao,Tag_Produto_Personalizado,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkPode_Alterar_Estoque,Tag_Produto_Personalizado,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_cbxUnidade,Tag_Produto_Personalizado,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_cbxIPPT,Tag_Produto_Personalizado,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_cbxIAT,Tag_Produto_Personalizado,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtDT_Cadastro,Tag_Produto_Personalizado,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtMargem,Tag_Produto_Personalizado,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkCriaTarefaProducao,Tag_Produto_Personalizado,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtOrigem_Mercadoria,Tag_Produto_Personalizado,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtLarg_Rendimento,Tag_Produto_Personalizado,'PRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtEstoque_Min,Tag_Produto_Personalizado,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtEstoque_Max,Tag_Produto_Personalizado,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_Personalizado,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkTem_Lote,Tag_Produto_Personalizado,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtQTDADePeca,Tag_Produto_Personalizado,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtComp,Tag_Produto_Personalizado,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtLarg,Tag_Produto_Personalizado,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtEspessura,Tag_Produto_Personalizado,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtQTDADePecaFormula,Tag_Produto_Personalizado,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtCompFormula,Tag_Produto_Personalizado,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtLargFormula,Tag_Produto_Personalizado,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtEspessuraFormula,Tag_Produto_Personalizado,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtComp_Rendimento,Tag_Produto_Personalizado,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtLarg_Rendimento,Tag_Produto_Personalizado,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtEspessura_Rendimento,Tag_Produto_Personalizado,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_edtRendimento,Tag_Produto_Personalizado,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkPode_Atualizar_Markup,Tag_Produto_Personalizado,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkPode_Ser_Vendido,Tag_Produto_Personalizado,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_edtCodigo,Tag_Folha_Pagamento,'FOLHA_PAGAMENTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_cbxAtivo,Tag_Folha_Pagamento,'FOLHA_PAGAMENTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_edtDescricao,Tag_Folha_Pagamento,'FOLHA_PAGAMENTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtCodigo,Tag_Venda,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxAtivo,Tag_Venda,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmVenda_chkIntervalo_Mensal,Tag_Venda,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎPessoas,Tag_Venda,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkPode_Ser_Comprado,Tag_Produto_Personalizado,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtStatus,Tag_Venda,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtDT_Emissao,Tag_Venda,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtPROJETO_DT_INICIO,Tag_Venda,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtDtCompetencia,Tag_Venda,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtOperacao,Tag_Venda,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtEspessura_Rendimento,Tag_Venda,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrmVenda_chkPodeAtualizarCadastro,Tag_Venda,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxTipo_Venda,Tag_Venda,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrmVenda_chkNF_Observacao_Padrao,Tag_Venda,'VENDA','NF_OBSERVACAO_PADRAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtNF_Numero,Tag_Venda,'VENDA','NF_NUMERO');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxNF_FretePorConta,Tag_Venda,'VENDA','NF_FRETEPORCONTA');
  Registra_APP_Componente(TagComponente_TFrmVenda_chkServico_Nota_Padrao,Tag_Venda,'VENDA','SERVICO_NOTA_PADRAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxEstagio,Tag_Venda,'VENDA','VENDA_ESTAGIO');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxSituacao,Tag_Venda,'VENDA','VENDA_SITUACAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_GrupoRecebimento,Tag_Venda,'VENDA','TOTAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtNF_DT_EMISSAO,Tag_Venda,'VENDA','NF_DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtNF_DT_SaidaEntrada,Tag_Venda,'VENDA','NF_DT_SAIDAENTRADA');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtPDesc,Tag_Venda,'VENDA','PDESC');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasCNPJCPF,Tag_Venda,'VENDA','RESPONSAVEL_CNPJCPF');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasCEP,Tag_Venda,'VENDA','RESPONSAVEL_CEP');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasENDERECO,Tag_Venda,'VENDA','RESPONSAVEL_ENDERECO');
  Registra_APP_Componente(TagComponente_TFrmDRE_Classificacao_edtCodigo,Tag_DRE_Classificacao,'DRE_CLASSIFICACAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmDRE_Classificacao_cbxAtivo,Tag_DRE_Classificacao,'DRE_CLASSIFICACAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmDRE_Classificacao_edtDescricao,Tag_DRE_Classificacao,'DRE_CLASSIFICACAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtCodigo,Tag_Produto_UsoEConsumo,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_cbxAtivo,Tag_Produto_UsoEConsumo,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtDescricao,Tag_Produto_UsoEConsumo,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkPode_Alterar_Estoque,Tag_Produto_UsoEConsumo,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_cbxUnidade,Tag_Produto_UsoEConsumo,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_cbxIPPT,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_cbxIAT,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtDT_Cadastro,Tag_Produto_UsoEConsumo,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtMargem,Tag_Produto_UsoEConsumo,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkCriaTarefaProducao,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtOrigem_Mercadoria,Tag_Produto_UsoEConsumo,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtRendimento,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_USOECONSUMO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtEstoque_Min,Tag_Produto_UsoEConsumo,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtEstoque_Max,Tag_Produto_UsoEConsumo,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_UsoEConsumo,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkTem_Lote,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtQTDADePeca,Tag_Produto_UsoEConsumo,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtComp,Tag_Produto_UsoEConsumo,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtLarg,Tag_Produto_UsoEConsumo,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtEspessura,Tag_Produto_UsoEConsumo,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtQTDADePecaFormula,Tag_Produto_UsoEConsumo,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtCompFormula,Tag_Produto_UsoEConsumo,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtLargFormula,Tag_Produto_UsoEConsumo,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtEspessuraFormula,Tag_Produto_UsoEConsumo,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtComp_Rendimento,Tag_Produto_UsoEConsumo,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtLarg_Rendimento,Tag_Produto_UsoEConsumo,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtEspessura_Rendimento,Tag_Produto_UsoEConsumo,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_edtRendimento,Tag_Produto_UsoEConsumo,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkPode_Atualizar_Markup,Tag_Produto_UsoEConsumo,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtStatus,Tag_Venda,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtDT_Emissao,Tag_Venda,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtPROJETO_DT_INICIO,Tag_Venda,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtDtCompetencia,Tag_Venda,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtOperacao,Tag_Venda,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtComp,Tag_Venda,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_chkPodeAtualizarCadastro,Tag_Venda,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cbxTipo_Venda,Tag_Venda,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_chkNF_Observacao_Padrao,Tag_Venda,'VENDA','NF_OBSERVACAO_PADRAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtNF_Numero,Tag_Venda,'VENDA','NF_NUMERO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cbxNF_FretePorConta,Tag_Venda,'VENDA','NF_FRETEPORCONTA');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_chkServico_Nota_Padrao,Tag_Venda,'VENDA','SERVICO_NOTA_PADRAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cbxEstagio,Tag_Venda,'VENDA','VENDA_ESTAGIO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cbxSituacao,Tag_Venda,'VENDA','VENDA_SITUACAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_GrupoRecebimento,Tag_Venda,'VENDA','TOTAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtNF_DT_EMISSAO,Tag_Venda,'VENDA','NF_DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtNF_DT_SaidaEntrada,Tag_Venda,'VENDA','NF_DT_SAIDAENTRADA');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkPode_Ser_Vendido,Tag_Produto_UsoEConsumo,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtCodigo,Tag_Produto_Variacao,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_cbxAtivo,Tag_Produto_Variacao,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtDescricao,Tag_Produto_Variacao,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkPode_Alterar_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_cbxUnidade,Tag_Produto_Variacao,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_cbxIPPT,Tag_Produto_Variacao,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_cbxIAT,Tag_Produto_Variacao,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtDT_Cadastro,Tag_Produto_Variacao,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtMargem,Tag_Produto_Variacao,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkCriaTarefaProducao,Tag_Produto_Variacao,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtOrigem_Mercadoria,Tag_Produto_Variacao,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEstoque_Max,Tag_Produto_Variacao,'PRODUTO','TEM_VARIACAO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtCodigo,Tag_Venda_Pedido,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmPedido_cbxAtivo,Tag_Venda_Pedido,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmPedido_chkIntervalo_Mensal,Tag_Venda_Pedido,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtResponsavelÎPessoas,Tag_Venda_Pedido,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtStatus,Tag_Venda_Pedido,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtDT_Emissao,Tag_Venda_Pedido,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtPROJETO_DT_INICIO,Tag_Venda_Pedido,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtDtCompetencia,Tag_Venda_Pedido,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtOperacao,Tag_Venda_Pedido,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtEspessuraFormula,Tag_Venda_Pedido,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrmPedido_chkPodeAtualizarCadastro,Tag_Venda_Pedido,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmPedido_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda_Pedido,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEstoque_Min,Tag_Produto_Variacao,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmPedido_cbxTipo_Venda,Tag_Venda_Pedido,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtBairro,Tag_Pessoas_OImpresso,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtCidadesÎCidades,Tag_Pessoas_OImpresso,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtCidadesÎCidadesÎUF,Tag_Pessoas_OImpresso,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtFone1,Tag_Pessoas_OImpresso,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtCEP,Tag_Pessoas_OImpresso,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtNumero,Tag_Pessoas_OImpresso,'PESSOAS','NUMERO');
  Registra_APP_Componente(TagComponente_TFrmConciliacao_Bancaria_edtCodigo,Tag_Conciliacao_Bancaria,'CONCILIACAO_BANCARIA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmConciliacao_Bancaria_cbxAtivo,Tag_Conciliacao_Bancaria,'CONCILIACAO_BANCARIA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmConciliacao_Bancaria_edtDescricao,Tag_Conciliacao_Bancaria,'CONCILIACAO_BANCARIA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasNUMERO,Tag_Venda,'VENDA','RESPONSAVEL_NUMERO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasBAIRRO,Tag_Venda,'VENDA','RESPONSAVEL_BAIRRO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎCidades,Tag_Venda,'VENDA','RESPONSAVEL_CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎCidadesÎDESCRICAO,Tag_Venda,'VENDA','RESPONSAVEL_CIDADE');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎCidadesÎUF,Tag_Venda,'VENDA','RESPONSAVEL_UF');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelÎPessoasÎFONE1,Tag_Venda,'VENDA','TELEFONE');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasINSCIDENT,Tag_Venda,'VENDA','RESPONSAVEL_INSCIDENT');
  Registra_APP_Componente(TagComponente_TFrmVenda_chkNFe_Calcula_Difal,Tag_Venda,'VENDA','NFE_CALCULA_DIFAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_GridFinanceiro,Tag_Venda,'VENDA_FINANCEIRO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtNF_NREF,Tag_Venda,'VENDA','NF_NREF');
  Registra_APP_Componente(TagComponente_TFrmVenda_EdtCFOPÎNF_CFOP,Tag_Venda,'VENDA_PRODUTO','CODNF_CFOP');
  Registra_APP_Componente(TagComponente_TFrmVenda_cxDBButtonEdit1,Tag_Venda,'VENDA_PRODUTO','CODNF_CST');
  Registra_APP_Componente(TagComponente_TFrmVenda_EdtNCMÎNF_NCM,Tag_Venda,'VENDA_PRODUTO','CODNF_NCM');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResultadoICMSValor,Tag_Venda,'VENDA_PRODUTO','NF_VICMS');
  Registra_APP_Componente(TagComponente_TFrmVenda_cxDBTextEdit10,Tag_Venda,'VENDA_PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtNF_Transp_QVol,Tag_Venda,'VENDA','NF_TRANSP_QVOL');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtResponsavelPessoasINSC_MUNICIPAL,Tag_Venda,'VENDA','RESPONSAVEL_INSC_MUNICIPAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxNF_Finalidade,Tag_Venda,'VENDA','NF_FINALIDADE');
  Registra_APP_Componente(TagComponente_TFrmVenda_cbxNF_Saida_Entrada,Tag_Venda,'VENDA','NF_SAIDA_ENTRADA');
  Registra_APP_Componente(TagComponente_TFrmVenda_edtConsumidor_Final,Tag_Venda,'VENDA','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrmVenda_btnParcelas,Tag_Venda,'VENDA_FINANCEIRO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_Grupo_edtCodigo,Tag_Folha_Pagamento_Grupo,'FOLHA_PAGAMENTO_GRUPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_Grupo_cbxAtivo,Tag_Folha_Pagamento_Grupo,'FOLHA_PAGAMENTO_GRUPO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmFolha_Pagamento_Grupo_edtDescricao,Tag_Folha_Pagamento_Grupo,'FOLHA_PAGAMENTO_GRUPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmNF_Natureza_Operacao_edtCodigo,Tag_NotaFiscal_Natureza_Operacao,'NF_NATUREZA_OPERACAO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmNF_Natureza_Operacao_cbxAtivo,Tag_NotaFiscal_Natureza_Operacao,'NF_NATUREZA_OPERACAO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmNF_Natureza_Operacao_edtDescricao,Tag_NotaFiscal_Natureza_Operacao,'NF_NATUREZA_OPERACAO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtCodigo,Tag_Venda_NotaFiscal,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_cbxAtivo,Tag_Venda_NotaFiscal,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_chkIntervalo_Mensal,Tag_Venda_NotaFiscal,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtResponsavelÎPessoas,Tag_Venda_NotaFiscal,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtStatus,Tag_Venda_NotaFiscal,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtDT_Emissao,Tag_Venda_NotaFiscal,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtPROJETO_DT_INICIO,Tag_Venda_NotaFiscal,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtDtCompetencia,Tag_Venda_NotaFiscal,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtOperacao,Tag_Venda_NotaFiscal,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_cbxAtivo,Tag_Venda_NotaFiscal,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_chkPodeAtualizarCadastro,Tag_Venda_NotaFiscal,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda_NotaFiscal,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_NotaFiscal_cbxTipo_Venda,Tag_Venda_NotaFiscal,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Estagio_edtCodigo,Tag_Producao_Estagio,'PRODUCAO_ESTAGIO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Estagio_cbxAtivo,Tag_Producao_Estagio,'PRODUCAO_ESTAGIO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProducao_Estagio_edtDescricao,Tag_Producao_Estagio,'PRODUCAO_ESTAGIO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEstoque_Max,Tag_Produto_Variacao,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkPode_Retornar_Ao_Estoque,Tag_Produto_Variacao,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkTem_Lote,Tag_Produto_Variacao,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtQTDADePeca,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtComp,Tag_Produto_Variacao,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtLarg,Tag_Produto_Variacao,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEspessura,Tag_Produto_Variacao,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtQTDADePecaFormula,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtCompFormula,Tag_Produto_Variacao,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtLargFormula,Tag_Produto_Variacao,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEspessuraFormula,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtComp_Rendimento,Tag_Produto_Variacao,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtNumero,Tag_Pessoas_Funcionario,'PESSOAS','NUMERO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtLarg_Rendimento,Tag_Produto_Variacao,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtEspessura_Rendimento,Tag_Produto_Variacao,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_edtRendimento,Tag_Produto_Variacao,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkPode_Atualizar_Markup,Tag_Produto_Variacao,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkPode_Ser_Vendido,Tag_Produto_Variacao,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkPode_Ser_Comprado,Tag_Produto_Variacao,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrame_FrmProduto_Variacao_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Variacao,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_cbxIPPT,Tag_Produto_Composicao,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkPode_Ser_Vendido,Tag_Produto_Servico,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkPode_Ser_Comprado,Tag_Produto_Servico,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Servico_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Servico,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_cbxIAT,Tag_Produto_Composicao,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtDT_Cadastro,Tag_Produto_Composicao,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtMargem,Tag_Produto_Composicao,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkCriaTarefaProducao,Tag_Produto_Composicao,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtOrigem_Mercadoria,Tag_Produto_Composicao,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtOrigem_Mercadoria,Tag_Produto_Composicao,'PRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtEstoque_Min,Tag_Produto_Composicao,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtEstoque_Max,Tag_Produto_Composicao,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_Composicao,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkPode_Ser_Vendido,Tag_Produto_MateriaPrima,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkPode_Ser_Comprado,Tag_Produto_MateriaPrima,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_MateriaPrima_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_MateriaPrima,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkTem_Lote,Tag_Produto_Composicao,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtQTDADePeca,Tag_Produto_Composicao,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtComp,Tag_Produto_Composicao,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtLarg,Tag_Produto_Composicao,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtEspessura,Tag_Produto_Composicao,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtQTDADePecaFormula,Tag_Produto_Composicao,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtCompFormula,Tag_Produto_Composicao,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtLargFormula,Tag_Produto_Composicao,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtEspessuraFormula,Tag_Produto_Composicao,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtComp_Rendimento,Tag_Produto_Composicao,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtLarg_Rendimento,Tag_Produto_Composicao,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtEspessura_Rendimento,Tag_Produto_Composicao,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_edtRendimento,Tag_Produto_Composicao,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkPode_Atualizar_Markup,Tag_Produto_Composicao,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkPode_Ser_Vendido,Tag_Produto_Composicao,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkPode_Ser_Comprado,Tag_Produto_Composicao,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Composicao_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Composicao,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Personalizado_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Personalizado,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmDRE_edtCodigo,Tag_DRE,'DRE','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmDRE_cbxAtivo,Tag_DRE,'DRE','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmDRE_edtDescricao,Tag_DRE,'DRE','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_cbxUnidade,Tag_Produto_Patrimonio,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_cbxIPPT,Tag_Produto_Patrimonio,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_cbxIAT,Tag_Produto_Patrimonio,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtDT_Cadastro,Tag_Produto_Patrimonio,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtMargem,Tag_Produto_Patrimonio,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkCriaTarefaProducao,Tag_Produto_Patrimonio,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtOrigem_Mercadoria,Tag_Produto_Patrimonio,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkIntervalo_Mensal,Tag_Produto_Patrimonio,'PRODUTO','TEM_COMPOSICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtEstoque_Min,Tag_Produto_Patrimonio,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtEstoque_Max,Tag_Produto_Patrimonio,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_Patrimonio,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkTem_Lote,Tag_Produto_Patrimonio,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtQTDADePeca,Tag_Produto_Patrimonio,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtComp,Tag_Produto_Patrimonio,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtLarg,Tag_Produto_Patrimonio,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtEspessura,Tag_Produto_Patrimonio,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtQTDADePecaFormula,Tag_Produto_Patrimonio,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtCompFormula,Tag_Produto_Patrimonio,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtLargFormula,Tag_Produto_Patrimonio,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtEspessuraFormula,Tag_Produto_Patrimonio,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtComp_Rendimento,Tag_Produto_Patrimonio,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtLarg_Rendimento,Tag_Produto_Patrimonio,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtEspessura_Rendimento,Tag_Produto_Patrimonio,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_edtRendimento,Tag_Produto_Patrimonio,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkPode_Atualizar_Markup,Tag_Produto_Patrimonio,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkPode_Ser_Vendido,Tag_Produto_Patrimonio,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkPode_Ser_Comprado,Tag_Produto_Patrimonio,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_Patrimonio_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_Patrimonio,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkPode_Ser_Comprado,Tag_Produto_UsoEConsumo,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_UsoEConsumo_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_UsoEConsumo,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_edtCodigo,Tag_Pessoas_Funcionario,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_cbxAtivo,Tag_Pessoas_Funcionario,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_cbTipoContribuinte,Tag_Pessoas_Funcionario,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtDtCadastro,Tag_Pessoas_Funcionario,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_edtEtiqueta,Tag_Pessoas_Funcionario,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_edtConsumidor_Final,Tag_Pessoas_Funcionario,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_cbxSituacaoTributaria,Tag_Pessoas_Funcionario,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_edtCRT,Tag_Pessoas_Funcionario,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtLimiteDesconto,Tag_Pessoas_Funcionario,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_edtDescricao,Tag_Pessoas_Funcionario,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtEndereco,Tag_Pessoas_Funcionario,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtBairro,Tag_Pessoas_Funcionario,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtCidadesÎCidades,Tag_Pessoas_Funcionario,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Funcionario,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtFone1,Tag_Pessoas_Funcionario,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Funcionario_EdtCEP,Tag_Pessoas_Funcionario,'PESSOAS','CEP');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_edtCodigo,Tag_Pessoas_Associado,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_cbxAtivo,Tag_Pessoas_Associado,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_cbTipoContribuinte,Tag_Pessoas_Associado,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtDtCadastro,Tag_Pessoas_Associado,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_edtEtiqueta,Tag_Pessoas_Associado,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_edtConsumidor_Final,Tag_Pessoas_Associado,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_cbxSituacaoTributaria,Tag_Pessoas_Associado,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_edtCRT,Tag_Pessoas_Associado,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtLimiteDesconto,Tag_Pessoas_Associado,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_edtDescricao,Tag_Pessoas_Associado,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtEndereco,Tag_Pessoas_Associado,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtBairro,Tag_Pessoas_Associado,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtCidadesÎCidades,Tag_Pessoas_Associado,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Associado,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtFone1,Tag_Pessoas_Associado,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtCEP,Tag_Pessoas_Associado,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Associado_EdtNumero,Tag_Pessoas_Associado,'PESSOAS','NUMERO');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_edtCodigo,Tag_Pessoas_Todos,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_cbxAtivo,Tag_Pessoas_Todos,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_cbTipoContribuinte,Tag_Pessoas_Todos,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtDtCadastro,Tag_Pessoas_Todos,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_edtEtiqueta,Tag_Pessoas_Todos,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_edtConsumidor_Final,Tag_Pessoas_Todos,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_cbxSituacaoTributaria,Tag_Pessoas_Todos,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_edtCRT,Tag_Pessoas_Todos,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtLimiteDesconto,Tag_Pessoas_Todos,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_edtDescricao,Tag_Pessoas_Todos,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtEndereco,Tag_Pessoas_Todos,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtBairro,Tag_Pessoas_Todos,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtCidadesÎCidades,Tag_Pessoas_Todos,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Todos,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtFone1,Tag_Pessoas_Todos,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtCEP,Tag_Pessoas_Todos,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Todos_EdtNumero,Tag_Pessoas_Todos,'PESSOAS','NUMERO');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_cbxAtivo,Tag_Pessoas_Cliente,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_cbTipoContribuinte,Tag_Pessoas_Cliente,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtDtCadastro,Tag_Pessoas_Cliente,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_edtEtiqueta,Tag_Pessoas_Cliente,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_edtConsumidor_Final,Tag_Pessoas_Cliente,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_cbxSituacaoTributaria,Tag_Pessoas_Cliente,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_edtCRT,Tag_Pessoas_Cliente,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtLimiteDesconto,Tag_Pessoas_Cliente,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_edtDescricao,Tag_Pessoas_Cliente,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtEndereco,Tag_Pessoas_Cliente,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtBairro,Tag_Pessoas_Cliente,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtCidadesÎCidades,Tag_Pessoas_Cliente,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Cliente,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtFone1,Tag_Pessoas_Cliente,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtCEP,Tag_Pessoas_Cliente,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_EdtNumero,Tag_Pessoas_Cliente,'PESSOAS','NUMERO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Cliente_edtCodigo,Tag_Pessoas_Cliente,'PESSOAS','CODIGO');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_edtCodigo,Tag_Pessoas_Representante,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_cbxAtivo,Tag_Pessoas_Representante,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_cbTipoContribuinte,Tag_Pessoas_Representante,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtDtCadastro,Tag_Pessoas_Representante,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_edtEtiqueta,Tag_Pessoas_Representante,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_edtConsumidor_Final,Tag_Pessoas_Representante,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_cbxSituacaoTributaria,Tag_Pessoas_Representante,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_edtCRT,Tag_Pessoas_Representante,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtLimiteDesconto,Tag_Pessoas_Representante,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_edtDescricao,Tag_Pessoas_Representante,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtEndereco,Tag_Pessoas_Representante,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtBairro,Tag_Pessoas_Representante,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtCidadesÎCidades,Tag_Pessoas_Representante,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Representante,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Representante_EdtFone1,Tag_Pessoas_Representante,'PESSOAS','FONE1');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_edtCodigo,Tag_Pessoas_OImpresso,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_cbxAtivo,Tag_Pessoas_OImpresso,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_cbTipoContribuinte,Tag_Pessoas_OImpresso,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtDtCadastro,Tag_Pessoas_OImpresso,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_edtEtiqueta,Tag_Pessoas_OImpresso,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_edtConsumidor_Final,Tag_Pessoas_OImpresso,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_cbxSituacaoTributaria,Tag_Pessoas_OImpresso,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_edtCRT,Tag_Pessoas_OImpresso,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtLimiteDesconto,Tag_Pessoas_OImpresso,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_edtDescricao,Tag_Pessoas_OImpresso,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_OImpresso_EdtEndereco,Tag_Pessoas_OImpresso,'PESSOAS','ENDERECO');

  Registra_APP_Componente(TagComponente_TFrmPessoas_cbxSituacaoTributaria,Tag_Pessoas,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_edtCRT,Tag_Pessoas,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtLimiteDesconto,Tag_Pessoas,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_edtDescricao,Tag_Pessoas,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtEndereco,Tag_Pessoas,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtBairro,Tag_Pessoas,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtCidadesÎCidades,Tag_Pessoas,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrmPessoas_edtCodigo,Tag_Pessoas,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_cbxAtivo,Tag_Pessoas,'PESSOAS','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_cbTipoContribuinte,Tag_Pessoas,'PESSOAS','TIPO_CONTRIBUINTE');
  Registra_APP_Componente(TagComponente_TFrmPessoas_EdtDtCadastro,Tag_Pessoas,'PESSOAS','DATACADASTRO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_edtEtiqueta,Tag_Pessoas,'PESSOAS','ETIQUETA');
  Registra_APP_Componente(TagComponente_TFrmPessoas_edtConsumidor_Final,Tag_Pessoas,'PESSOAS','CONSUMIDOR_FINAL');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Grupo_edtCodigo,Tag_Pessoas_Grupo,'PESSOAS_GRUPO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Grupo_edtDescricao,Tag_Pessoas_Grupo,'PESSOAS_GRUPO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmPessoas_Grupo_cbxAtivo,Tag_Pessoas_Grupo,'PESSOAS_GRUPO','ATIVO');

  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtCidadesÎCidades,Tag_Pessoas_Fornecedor,'PESSOAS','CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtCidadesÎCidadesÎUF,Tag_Pessoas_Fornecedor,'PESSOAS','UF');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtFone1,Tag_Pessoas_Fornecedor,'PESSOAS','FONE1');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtCEP,Tag_Pessoas_Fornecedor,'PESSOAS','CEP');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtNumero,Tag_Pessoas_Fornecedor,'PESSOAS','NUMERO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_cbxSituacaoTributaria,Tag_Pessoas_Fornecedor,'PESSOAS','ISS_RETIDO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_edtCRT,Tag_Pessoas_Fornecedor,'PESSOAS','CRT');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtLimiteDesconto,Tag_Pessoas_Fornecedor,'PESSOAS','LIMITE_DESCONTO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_edtDescricao,Tag_Pessoas_Fornecedor,'PESSOAS','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtEndereco,Tag_Pessoas_Fornecedor,'PESSOAS','ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_EdtBairro,Tag_Pessoas_Fornecedor,'PESSOAS','BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_edtCodigo,Tag_Pessoas_Fornecedor,'PESSOAS','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Pessoas_Fornecedor_cbxAtivo,Tag_Pessoas_Fornecedor,'PESSOAS','ATIVO');

  Registra_APP_Componente(TagComponente_TFrmEmail_Massa_edtCodigo,Tag_Email_Massa,'EMAIL_MASSA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmEmail_Massa_cbxAtivo,Tag_Email_Massa,'EMAIL_MASSA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmail_Massa_edtDescricao,Tag_Email_Massa,'EMAIL_MASSA','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmEmail_Modelo_edtCodigo,Tag_Email_Modelo,'EMAIL_MODELO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmEmail_Modelo_cbxAtivo,Tag_Email_Modelo,'EMAIL_MODELO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmEmail_Modelo_edtDescricao,Tag_Email_Modelo,'EMAIL_MODELO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtNF_DT_EMISSAO,Tag_Venda_PDV,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_chkPodeAtualizarCadastro,Tag_Venda_PDV,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda_PDV,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_PDV_cbxTipo_Venda,Tag_Venda_PDV,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtCodigo,Tag_Produto_ProdutoSimples,'PRODUTO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_cbxAtivo,Tag_Produto_ProdutoSimples,'PRODUTO','ATIVO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtDescricao,Tag_Produto_ProdutoSimples,'PRODUTO','DESCRICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkPode_Alterar_Estoque,Tag_Produto_ProdutoSimples,'PRODUTO','PODE_ALTERAR_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_cbxUnidade,Tag_Produto_ProdutoSimples,'PRODUTO','UNIDADE');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_cbxIPPT,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_IPPT');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_cbxIAT,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_IAT');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtDT_Cadastro,Tag_Produto_ProdutoSimples,'PRODUTO','DT_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtMargem,Tag_Produto_ProdutoSimples,'PRODUTO','CALC_PMARGEM_CONTRIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkCriaTarefaProducao,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_TAREFA_PRODUCAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtOrigem_Mercadoria,Tag_Produto_ProdutoSimples,'PRODUTO','ORIGEM_MERCADORIA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtResponsavelPessoasINSC_MUNICIPAL,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_PRODUTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtEstoque_Min,Tag_Produto_ProdutoSimples,'PRODUTO','ESTOQUE_MIN');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtEstoque_Max,Tag_Produto_ProdutoSimples,'PRODUTO','ESTOQUE_MAX');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkPode_Retornar_Ao_Estoque,Tag_Produto_ProdutoSimples,'PRODUTO','PODE_RETORNAR_AO_ESTOQUE');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkTem_Lote,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_LOTE');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtQTDADePeca,Tag_Produto_ProdutoSimples,'PRODUTO','QTDADEPECA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtComp,Tag_Produto_ProdutoSimples,'PRODUTO','COMP');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtLarg,Tag_Produto_ProdutoSimples,'PRODUTO','LARG');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtEspessura,Tag_Produto_ProdutoSimples,'PRODUTO','ESPESSURA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtQTDADePecaFormula,Tag_Produto_ProdutoSimples,'PRODUTO','QTDADEPECA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtCompFormula,Tag_Produto_ProdutoSimples,'PRODUTO','COMP_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtLargFormula,Tag_Produto_ProdutoSimples,'PRODUTO','LARG_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtEspessuraFormula,Tag_Produto_ProdutoSimples,'PRODUTO','ESPESSURA_FORMULA');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtComp_Rendimento,Tag_Produto_ProdutoSimples,'PRODUTO','COMP_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtLarg_Rendimento,Tag_Produto_ProdutoSimples,'PRODUTO','LARG_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtEspessura_Rendimento,Tag_Produto_ProdutoSimples,'PRODUTO','ESPESSURA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_edtRendimento,Tag_Produto_ProdutoSimples,'PRODUTO','QTDADEPECA_RENDIMENTO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkPode_Atualizar_Markup,Tag_Produto_ProdutoSimples,'PRODUTO','PODE_ATUALIZAR_MARKUP');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkPode_Ser_Vendido,Tag_Produto_ProdutoSimples,'PRODUTO','PODE_SER_VENDIDO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkPode_Ser_Comprado,Tag_Produto_ProdutoSimples,'PRODUTO','PODE_SER_COMPRADO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_chkTem_Margem_Fixa_Contribuicao,Tag_Produto_ProdutoSimples,'PRODUTO','TEM_MARGEM_FIXA_CONTIBUICAO');
  Registra_APP_Componente(TagComponente_TFrmProduto_ProdutoSimples_Frame_cbxCodProduto_Tipo,Tag_Produto_ProdutoSimples,'PRODUTO','CODPRODUTO_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtCodigo,Tag_Venda_Orcamento,'VENDA','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_cbxAtivo,Tag_Venda_Orcamento,'VENDA','ATIVO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_chkIntervalo_Mensal,Tag_Venda_Orcamento,'VENDA','INTERVALO_MENSAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtResponsavelÎPessoas,Tag_Venda_Orcamento,'VENDA','PESSOA_RESPONSAVEL_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtStatus,Tag_Venda_Orcamento,'VENDA','STATUS');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtDT_Emissao,Tag_Venda_Orcamento,'VENDA','DT_EMISSAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtPROJETO_DT_INICIO,Tag_Venda_Orcamento,'VENDA','PROJETO_DT_INICIO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtDtCompetencia,Tag_Venda_Orcamento,'VENDA','DT_COMPETENCIA');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtOperacao,Tag_Venda_Orcamento,'VENDA','OPERACAO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_EdtCFOPÎNF_CFOP,Tag_Venda_Orcamento,'VENDA','PODE_RATEAR_FRETE_DESC_OUTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_chkPodeAtualizarCadastro,Tag_Venda_Orcamento,'VENDA','PODE_ATUALIZAR_CADASTRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtResponsavelÎPessoasÎRAZAOSOCIAL,Tag_Venda_Orcamento,'VENDA','RAZAOSOCIAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_cbxTipo_Venda,Tag_Venda_Orcamento,'VENDA','VENDA_TIPO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtResponsavelÎPessoasÎFONE1,Tag_Venda_Orcamento,'VENDA','TELEFONE');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtCondicaoPagtoÎCondicaoPagtoÎDESCRICAO,Tag_Venda_Orcamento,'VENDA','CONDICAOPAGTO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Orcamento_edtCodProduto,Tag_Venda_Orcamento,'VENDA_PRODUTO','CODPRODUTO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtPDesc,Tag_Venda,'VENDA','PDESC');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasCNPJCPF,Tag_Venda,'VENDA','RESPONSAVEL_CNPJCPF');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasCEP,Tag_Venda,'VENDA','RESPONSAVEL_CEP');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasENDERECO,Tag_Venda,'VENDA','RESPONSAVEL_ENDERECO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasNUMERO,Tag_Venda,'VENDA','RESPONSAVEL_NUMERO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasBAIRRO,Tag_Venda,'VENDA','RESPONSAVEL_BAIRRO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎCidades,Tag_Venda,'VENDA','RESPONSAVEL_CODCIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎCidadesÎDESCRICAO,Tag_Venda,'VENDA','RESPONSAVEL_CIDADE');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎCidadesÎUF,Tag_Venda,'VENDA','RESPONSAVEL_UF');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelÎPessoasÎFONE1,Tag_Venda,'VENDA','TELEFONE');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtResponsavelPessoasINSCIDENT,Tag_Venda,'VENDA','RESPONSAVEL_INSCIDENT');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_chkNFe_Calcula_Difal,Tag_Venda,'VENDA','NFE_CALCULA_DIFAL');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_GridFinanceiro,Tag_Venda,'VENDA_FINANCEIRO','CODIGO');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_edtNF_NREF,Tag_Venda,'VENDA','NF_NREF');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_EdtCFOPÎNF_CFOP,Tag_Venda,'VENDA_PRODUTO','CODNF_CFOP');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_cxDBButtonEdit1,Tag_Venda,'VENDA_PRODUTO','CODNF_CST');
  Registra_APP_Componente(TagComponente_TFrame_Venda_Venda_EdtNCMÎNF_NCM,Tag_Venda,'VENDA_PRODUTO','CODNF_NCM');






  (*Registra_APP_Component(TagComponente_Venda_cbxTipo_Venda, 'Tipo de Venda');
  Registra_APP_Component(TagComponente_Venda_edtValor, 'Valor de Venda');
  Registra_APP_Component(TagComponente_Venda_cbxAtivo, 'Esta Ativo?');
  Registra_APP_Component(TagComponente_Venda_cbxNF_Finalidade, 'Finalidade da Nota Fiscal');
  Registra_APP_Component(TagComponente_Venda_cbxNF_FretePorConta, 'Frete por Conta de quem?');
  Registra_APP_Component(TagComponente_Venda_cbxNF_Saida_Entrada, 'Nota Fiscal de Entrada ou Saida?');
  Registra_APP_Component(TagComponente_Venda_chkIntervalo_Mensal, 'Intervalos das parcelas definidos por mês');
  Registra_APP_Component(TagComponente_Venda_chkNF_Observacao_Padrao, 'Observacao da padrão da nota fiscal');
  Registra_APP_Component(TagComponente_Venda_chkNFe_Calcula_Difal, 'Calcula Difal?');
  Registra_APP_Component(TagComponente_Venda_edtCodigo, 'Código da Venda');
  Registra_APP_Component(TagComponente_Venda_edtConsumidor_Final, 'Consumidor Final');
  Registra_APP_Component(TagComponente_Venda_edtDT_Emissao, 'Data de Emissão');
  Registra_APP_Component(TagComponente_Venda_edtDtCompetencia, 'Data de Competencia');
  Registra_APP_Component(TagComponente_Venda_edtNF_DT_EMISSAO, 'Data Emissão NF');
  Registra_APP_Component(TagComponente_Venda_edtNF_DT_SaidaEntrada, 'Data Saida/Entrada NF');
  Registra_APP_Component(TagComponente_Venda_edtNF_NREF, 'Numero Referencia NF');
  Registra_APP_Component(TagComponente_Venda_edtNF_Numero, 'NF Numero');
  Registra_APP_Component(TagComponente_Venda_edtPDesc, 'Desconto');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎCidades, 'Cód. Cidade do Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎCidadesÎDESCRICAO, 'Cidade do Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎCidadesÎUF, 'UF do Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎPessoas, 'Cód. Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎPessoasÎFONE1, 'Telefone Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Razão Social Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasBAIRRO, 'Bairro Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasCEP, 'CEP Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasCNPJCPF, 'CPNJ Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasENDERECO, 'Endereço Responsável');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasINSC_MUNICIPAL, 'Insc Municipal');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasINSCIDENT, 'Inscrição ou RG');
  Registra_APP_Component(TagComponente_Venda_edtResponsavelPessoasNUMERO, 'Numero do Endereço');
  Registra_APP_Component(TagComponente_Venda_edtStatus, 'Status da Venda');
  Registra_APP_Component(TagComponente_Venda_GrupoRecebimento, 'Grupo Recebimento');  *)


end;


//with AWREventosCadastro do
//begin
//AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_COMPRA', 'edtPedidoCliente',
//  ' select first 1 CODIGO from VENDA ' +
//  ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
//  '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
//  '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
//  + '     and (CODVENDA IS NULL)');
//AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_REP', 'edtPedidoRepresentante',
//  ' select first 1 CODIGO from VENDA ' +
//  ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
//  '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
//  '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
//  + '     and (CODVENDA IS NULL)');
//  AddObrigatorioFrame('VENDA', 'VENDA_TIPO', 'cbxTipo_Venda', 'Informe o Tipo de Venda que esta sendo realizada.');
//  AddObrigatorioFrame('VENDA', 'ATIVO', 'cbxAtivo', 'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//// Isso ta no frame
//AddValorInicialFrame('VENDA', 'NF_OBSERVACAO_PADRAO',
//  'chkNF_Observacao_Padrao');
//AddValorInicialFrame('VENDA', 'NF_NUMERO', 'edtNF_Numero', '1');
//AddValorInicialFrame('VENDA', 'NF_FRETEPORCONTA', 'cbxNF_FretePorConta',
//  modFreteToStr(mfContaEmitente));
//
//AddValorInicialFrame('VENDA', 'SERVICO_NOTA_PADRAO', 'chkServico_Nota_Padrao');
//
//with AddAcoesTabela('CONFIRMAR', '',
//  'Regras necessárias para poder Confimar.') do
//begin
//  AddObrigatorioFrame('VENDA', 'VENDA_TIPO', 'cbxTipo_Venda', 'Informe o Tipo de Venda que esta sendo realizada.');
//  AddObrigatorioFrame('VENDA', 'ATIVO', 'cbxAtivo', 'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
////      AddObrigatorioInativo('VENDA','VENDA_ESTAGIO',cbxEstagio, 'Informe se é Obrigatório o Estagio ao confirmar a venda.');
////      AddObrigatorioInativo('VENDA','VENDA_SITUACAO',cbxSituacao, 'Informe se é Obrigatório a Situação ao confirmar a venda.');
//
//end;
//
//with AddAcoesTabela('IMPRIMIR', '',
//  'Regras necessárias para poder Imprimir.') do
//begin
//  // Regras de Permissão de Impressão
//  AddObrigatorioFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Informar a Descrição para imprimir');
//  AddObrigatorioFrame('VENDA', 'TOTAL', 'GrupoRecebimento', 'Valor da Venda é DIFERENTE da soma das parcelas.');
//end;
//
//with AddAcoesTabela('EXCLUIR', '', 'Dependencias para poder excluir Excluir.') do
//// Deverá checar as referencias dessa Tabela dentro de Sistema
//begin // Mostrar a Quantidade e abrir o Destino, Filtrando a tela pea Quantidade de registros
//  AddDependencia('FINANCEIRO', 'CODPEDIDO');
//  AddDependencia('PESSOAS', 'CODIGO');
//  AddDependencia('FINANCEIRO', 'CODPEDIDO');
//end;
//
//with AddAcoesTabela('NFE', '',
//  'Regras necessárias para poder Emitir NFe') do
//begin
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_EMISSAO', 'edtNF_DT_EMISSAO',
//    '228-Rejeição: Data de Emissão muito atrasada.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_SAIDAENTRADA', 'edtNF_DT_SaidaEntrada',
//    '228-Rejeição: Data de Emissão muito atrasada.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'PDESC', 'edtPDesc',
//    '895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura');
//
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
//    'edtResponsavelPessoasCNPJCPF',
//    'O CNPJ ou CPF não pode estar vazio.');
//  AddObrigatorioFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL',
//    'A Razão Social do Destinatário não pode ficar vazia.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP', 'edtResponsavelPessoasCEP',
//    'O CEP do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
//    'edtResponsavelPessoasENDERECO',
//    'A Endereço do Destinatário não pode ficar vazia.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
//    'edtResponsavelPessoasNUMERO',
//    'O Número do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
//    'edtResponsavelPessoasBAIRRO',
//    'O Bairro do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
//    'edtResponsavelÎCidades',
//    'A Cidade do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
//    'edtResponsavelÎCidadesÎDESCRICAO',
//    'A Cidade do Destinatário não pode ficar vazia.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
//    'edtResponsavelÎCidadesÎUF',
//    'A UF do Destinatário não pode ficar vazia.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'TELEFONE',
//    'edtResponsavelÎPessoasÎFONE1',
//    'O telefone da Destinatário não pode estar vazio. ');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_INSCIDENT',
//    'edtResponsavelPessoasINSCIDENT',
//    'A Inscrição Estadual ou Identidade do Destinatário não pode ser vazio.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NFE_CALCULA_DIFAL',
//    'chkNFe_Calcula_Difal',
//    'Marcar o campo Calcula DIFAL, recalcular impostos e emitir a NFe novamente.');
//  AddObrigatorioValidaComponenteFrame('VENDA_FINANCEIRO', 'CODIGO',
//    'GridFinanceiro',
//    'Obrigatório excluir parcelas do Financeiro para NFe Devolução ou Estorno.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_NREF', 'edtNF_NREF',
//    'Obrigatório referenciar Chave de Acesso da NFe original para emissão de Devolução ou Estorno.');
//
//    AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_CFOP',
//      'EdtCFOPÎNF_CFOP', 'CFOP Incorreto');
//    AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_CST',
//      'cxDBButtonEdit1',
//      'CFOP CST/CSOSN inválido: Sua empresa é do Regime Simples Nacional, deve ter 3 dígitos.');
//    AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_NCM',
//      'EdtNCMÎNF_NCM', 'NCM Obrigatório.');
//    AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'NF_VICMS',
//      'edtResultadoICMSValor',
//      'Valor de Imposto Inválido para emitente do Simples Nacional.');
//    AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'DESCRICAO',
//      'cxDBTextEdit10', 'Descrição do Produto é Obrigatória.');
//
//  AddAcoesTabela('NFE', '',
//    'Regras necessárias para poder Emitir NFe.', 'N');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_TRANSP_QVOL',
//    'edtNF_Transp_QVol', 'Obrigatório Quantidade de Volumes.');
//end;
//
//with AddAcoesTabela('NFSE', '(EMITE_NFSE = ''S'')', 'Regras necessárias para poder Emitir NFSe.') do //
//begin
//
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO', 'edtResponsavelPessoasENDERECO', 'Endereço Obrigatório.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
//    'edtResponsavelPessoasCNPJCPF',
//    'O CNPJ ou CPF não pode estar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP',
//    'edtResponsavelPessoasCEP',
//    'A CEP do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
//    'edtResponsavelPessoasENDERECO',
//    'A Endereço do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
//    'edtResponsavelPessoasNUMERO',
//    'A Número do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
//    'edtResponsavelPessoasBAIRRO',
//    'A Bairro do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
//    'edtResponsavelÎCidades',
//    'A Cidade do Destinatário não pode ficar vazio.');
//  AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
//    'edtResponsavelÎCidadesÎDESCRICAO',
//    'A Cidade do Destinatário não pode ficar vazio.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
//    'edtResponsavelÎCidadesÎUF',
//    'A UF do Destinatário não pode ficar vazia.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'TELEFONE',
//    'edtResponsavelÎPessoasÎFONE1',
//    'O telefone da Destinatário não pode estar vazio. ');
//  AddObrigatorioValidaComponenteFrame('VENDA',
//    'RESPONSAVEL_INSC_MUNICIPAL', 'edtResponsavelPessoasINSC_MUNICIPAL',
//    'Inscrição Municipal obrigatório para NFSe com ISS Retido.');
//end;
//with AddAcoesTabela('NFCe', '(EMITE_NFCE = ''S'') ',
//  'Regras necessárias para poder Emitir NFCe.') do
//begin
//  AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL',
//    'edtResponsavelÎPessoasÎRAZAOSOCIAL',
//    'A Razão Social do Destinatário não pode ficar vazia.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_FINALIDADE', 'cbxNF_Finalidade', 'Obrigatório Finalidade Normal para NFC-e.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'NF_SAIDA_ENTRADA',
//    'cbxNF_Saida_Entrada', 'Obrigatório operação de Saída para NFC-e.');
//  AddObrigatorioValidaComponenteFrame('VENDA', 'CONSUMIDOR_FINAL',
//    'edtConsumidor_Final',
//    'A UF do Destinatário deve ser igual a UF do Emitente.');
//  AddObrigatorioValidaComponenteFrame('VENDA_FINANCEIRO', 'CODIGO', 'btnParcelas', 'Obrigatório gerar financeiro para emissão de NFC-e');
//end; // 718-Rejeição: NFC-e não deve informar IE de Substituto Tributário
//with AddAcoesTabela('PARCELAS', '',
//  'Regras necessárias para poder Gerar Parcelas.') do
//begin
//  AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL',
//    'edtResponsavelÎPessoasÎRAZAOSOCIAL',
//    'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
//end;



end.
