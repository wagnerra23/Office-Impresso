 unit Tag.Form;

interface

Uses
  Classes.APP, System.Generics.Collections;

const
  // Tag Telas
  Tag_Form_First = 0;
//  Tag_Produto_ProdutoSimples = Tag_First;
  Tag_Produto_Servico = 1;
  Tag_Produto_Variacao = 2;
  Tag_Produto_Composicao = 3;
  Tag_Produto_MateriaPrima = 4;
  Tag_Produto_Personalizado = 5;
  Tag_Produto_Patrimonio = 6;
  Tag_Produto_UsoEConsumo = 7;  //  7 > 9 não entra em cadastro
  Tag_Produto_Compra = 8;
  Tag_Produto_Venda = 9;


  Tag_Estoque_Produto_Movimento = 10;
  Tag_NF_Entrada_Produto = 11;
  Tag_RelVenda_Produto = 12;
  Tag_Produto_ProdutoSimples = 13;
//  Tag_Almoxarifado_Producao = 13;
  Tag_Estoque_Estoque = 14;
  Tag_Estoque_Requisicao = 15;
  Tag_Estoque_Requisicao_Motivo = 16;
//  Tag_Venda_produto = 17;

  Tag_API_Oimpresso_Pessoas = 18;
  Tag_API_Oimpresso_Configuracao = 19;
  Tag_API_Oimpresso = 20;
  Tag_Boleto = 21;
  Tag_Boleto_Log = 22;
  Tag_Credito = 23;
  Tag_ProdutoSubUnidade = 24;

  Tag_Financeiro = 30;
  Tag_Conciliacao_bancaria = 31;
  Tag_Conciliacao_bancaria_Arquivos = 32;

  Tag_Manifestacao_NotaFiscalEntrada = 33;


  Tag_Pessoas = 34;
  Tag_Pessoas_Cliente = 35;
  Tag_Pessoas_Fornecedor = 36;
  Tag_Pessoas_Funcionario = 37;
  Tag_Pessoas_Representante = 38;
  Tag_Pessoas_OImpresso = 39;

  Tag_Venda = 40;
  Tag_Venda_Orcamento = 41;
  Tag_Venda_Pedido = 42;
  Tag_Venda_PDV = 43;
  Tag_Venda_NotaFiscal = 44;
  Tag_Venda_OImpresso = 45;

  Tag_Comissao = 46;
  Tag_Manifestacao_HistoricoRequisicoes = 49;
  Tag_Manifestacao_Detalhes = 50;

//  Tag_Ocorrencia_Tipo = 51;  /// Não existe olha na 154
  Tag_Situacao = 52;

  Tag_Pessoas_Associado = 53;

  Tag_Tabela_Fipe = 54;
  Tag_Tabela_Valor = 55;
  Tag_Tipo_Equipamento = 56;
  Tag_Antifurto_Tipo = 57;
  Tag_Equipamento_Associacao = 58;
  Tag_Equipamento_Veiculo = 59;
  Tag_Equipamento_Computador = 60;
  Tag_Equipamento_Impressora = 61;
  Tag_Equipamento_Eletrodomestico = 62;

  Tag_Comissao_Selecao_Financeiro = 63;
  Tag_Comissao_Selecao_Venda = 64;
  Tag_Comissao_Selecao_Financeiro_Representante = 65;
  Tag_Comissao_Selecao_Financeiro_Agencia = 66;
  Tag_Comissao_Selecao_Financeiro_Funcionario = 67;
  Tag_Cor = 68;
  Tag_Mensagens = 69;

  // POWER BI
  Tag_BI = 70;
  Tag_BI_KPI = 71;
//  Tag_BI = 72;

  Tag_BI_Configuracoes = 73;
  Tag_BI_Vendas = 74;
  Tag_BI_Financeiro = 75;
  Tag_BI_Producao = 76;
  Tag_BI_Estoque = 77;
  Tag_BI_Compras = 78;

  Tag_BI_Venda_por_Funcionario = 79;
  Tag_BI_Venda_Por_Produto_Tipo = 80;
  Tag_APP = 81;
  Tag_BI_Venda_por_Categoria = 82;
  Tag_BI_Estoque_Produto_Movimento = 83;
  Tag_BI_Empresa = 84;

  Tag_BI_Faturamento = 85;
  Tag_BI_Associacao = 86;
  Tag_BI_RH = 87;

  Tag_Nao_Usar_A = 99;
  Tag_Nao_Usar_B = 100;
  Tag_Notificacao_Disparada = 101;
  Tag_Configuracao_Cronjob = 102;

  Tag_API_Oimpresso_Produtos = 104;
  Tag_Configuracao = 105;

//  Tag_Painel_BI = 106;   // Por que não tava ativado?
  Tag_BI_Venda = 107;
  Tag_BI_Acoes = 108;
  Tag_BI_Permissoes = 109;
  Tag_Financeiro_Centro_Custo_Produto_Categoria = 110;
  Tag_Producao = 111;
  Tag_Acoes_Configuracao = 112;
  Tag_Contrato = 113;
  Tag_Arquivos_Relatorio = 114;
  Tag_Lista_Corte = 115;
  Tag_BI_CentroCusto_Categoria = 116;
  Tag_Email_Massa = 117;
  Tag_SPED = 118;
  Tag_Sintegra = 119;
  Tag_Tipo_Agenda = 120;
  Tag_Agenda = 121;
  Tag_Tipo_Venda = 122;
  Tag_ImpriVendas_Periodo = 123;
  Tag_Situacao_Venda = 124;
  Tag_Producao_Equipe = 125;
  Tag_Producao_Setor = 126;
  Tag_Producao_Local_Aplicacao = 127;
  Tag_Producao_Tipo_Impressao = 128;
  Tag_Producao_Relatorio = 129;
  Tag_Producao_Acabamento = 130;
  Tag_Notificacoes = 131;
  Tag_Ficha_Ponto = 132;
  Tag_Producao_Projeto = 133;
  Tag_Venda_Metas = 134;
  Tag_Financeiro_A_Pagar = 135;
  Tag_Financeiro_A_Receber = 136;
  Tag_Notas_Fiscais = 137;
  Tag_Compra = 138;
  Tag_Boleto_API = 139;
  Tag_Cheque = 140;
  Tag_Codigo_Barras = 141;
  Tag_Balanco = 142;
  Tag_Estoque_Local = 143;
  Tag_DRE = 144;
  Tag_DRE_Classificacao = 145;
  Tag_Caixa = 146;
  Tag_Recebimento = 147;
  Tag_Folha_Pagamento = 148;
  Tag_Folha_Pagamento_Grupo = 149;
  Tag_Setores = 150;
  Tag_Rateio = 151;
  Tag_Mala_Direta = 152;
  Tag_Ocorrencias = 153;
  Tag_Ocorrencias_Tipo = 154;
  Tag_Producao_Planejamento = 155;
  Tag_Producao_Fila_TV = 156;
  Tag_Produto_Grade_Modelo = 157;
  Tag_Produto_Familia = 158;
  Tag_Produto_Lote = 159;
  Tag_Markup = 160;
  Tag_Tabela_Preco = 161;
  Tag_Producao_Roteiro = 162;
  Tag_NFSe_Provedor = 163;
  Tag_Rel_Associados = 164;
  Tag_Rel_Ocorrencias = 165;
  Tag_Plano_Contas = 166;
  Tag_ImpriProdutos_Gerencial = 167;
  Tag_Notas_Fiscal_Servico = 168;
  Tag_ImpriEntradas = 169;
  Tag_Recibo = 170;
  Tag_ImpriAgenda = 171;
  Tag_ImpriProducao = 172;
  Tag_ImpriClientes_Ativos = 173;
  Tag_Funcionario_Ficha_Ponto = 174;
  Tag_ConDRE = 175;
  Tag_Produto_Tipo = 176;
  Tag_Produto_Categoria = 177;
  Tag_Produto_Grupo = 178;
  Tag_Produto_Unidade = 179;
  Tag_Produto_Marca = 180;
  Tag_Produto_Relatorio_PautaPreco = 181;
  Tag_Produto_Relatorio_Gerencial = 182;
  Tag_Produto_Relatorio_Patrimonial = 183;
  Tag_Pessoas_Telefone = 184;
  Tag_Pessoas_Grupo = 185;
  Tag_Pessoas_Relatorio = 186;
  Tag_pessoas_tipo = 187;
  Tag_Cidades = 188;
  Tag_Producao_Marcador = 189;
  Tag_Producao_Motivo = 190;
  Tag_Producao_Situacao = 191;
  Tag_Venda_Estagio = 192;
  Tag_Venda_BI_Categoria = 194;
  Tag_Venda_BI_Funcionario = 195;
  Tag_Venda_BI_TipoProduto = 196;
  Tag_Venda_Relatorio = 197;
  Tag_NotaFiscal_NatOp = 198;
  Tag_NotaFiscal_CEST = 199;
  Tag_NotaFiscal_CFOP = 200;
  Tag_NotaFiscal_NCM = 201;
  Tag_NotaFiscal_CST = 202;
  Tag_NotaFiscal_CNAE = 203;
  Tag_NotaFiscal_Provedor = 204;
  Tag_Email_Modelo = 206;
  Tag_Almoxarifado = 207;
  Tag_LogOff = 211;
  Tag_Trocar_Senha = 212;
  Tag_Usuario = 213;
  Tag_Empresa = 214;
  Tag_Apps = 215;
  Tag_Empresa_Ativa = 216;
  Tag_Financeiro_TipoPagamento = 217;
  Tag_Financeiro_CaixaConta = 218;
  Tag_Cadastro_Banco = 219;
  Tag_BoletosEventuais = 222;
  Tag_Agenda_Producao = 223;
  Tag_Agenda_Kanban = 224;
  Tag_Balanco_Patrimonial_Classificacao = 225;
  Tag_Balanco_Patrimonial = 226;
  Tag_DFC = 227;
  Tag_DFC_Classificacao = 228;
  Tag_BI_Geral = 229;
  Tag_BI_Gerencia = 230;
  Tag_Salario = 231;
  Tag_Precificacao = 232;
  Tag_Producao_Rateio = 233;
  Tag_WR_Controle = 234;
  Tag_NotaFiscal_Erros = 235;
  Tag_Agenda_Titulo = 236;
  Tag_Configuracao_Agrupamento = 237;
  Tag_WR_Controle_KPI = 238;
  Tag_Configuracao_Filtro = 239;
  Tag_Dica = 240;
  Tag_Formulas = 241;
  Tag_Formula_Perfil = 242;
  Tag_Atalho_Rapido = 243;
  Tag_Producao_Prioridade = 244;
  Tag_Producao_Template = 245;
  Tag_Producao_Status = 246;
  Tag_Producao_Roteiro_Pergunta = 247;
  Tag_CondicaoPagto = 248;
  Tag_Centro_Trabalho = 249;
  Tag_Mensalidade = 250;
  Tag_Nota_Fiscal_Produto = 251;
  Tag_Recurso = 252;
  Tag_Telefones = 253;
  Tag_Spreadsheet_Referencia = 254;
  Tag_Producao_Produto = 255;
  Tag_DashBoards = 256;
  Tag_Meta = 257;
  Tag_Configuracao_Regra = 258;
  Tag_Configuracao_Componente = 259;
  Tag_Producao_Estagio = 260;
  Tag_Pessoas_Todos = 261;
  Tag_Venda_Nota_Fiscal = 262;
  Tag_NotaFiscal_Entrada = 263;
  Tag_NotaFiscal_Natureza_Operacao = 264;
  Tag_Venda_Projeto = 265;


  Tag_Form_Last = Tag_Venda_Projeto;


procedure RegisterWR_Form(ATag_Form, ATag_App: integer; ADescricao: String);

Var
  AWR_Form : array [Tag_Form_First..Tag_Form_Last] of TWR_Form;

implementation

Uses
  Tag.APP;
   
procedure RegisterWR_Form(ATag_Form, ATag_App: integer; ADescricao: String);
begin
  if AWR_Form[ATag_Form] = nil then
    AWR_Form[ATag_Form]           := TWR_Form.Create;

  AWR_Form[ATag_Form].Codigo      :=  ATag_Form;
  AWR_Form[ATag_Form].Tag_App     :=  ATag_App;
  AWR_Form[ATag_Form].Descricao   :=  ADescricao;
  AWR_Form[ATag_Form].Caption     :=  ADescricao;
  AWR_Form[ATag_Form].Componentes :=  TList<TWR_Componente>.Create;

end;
  
end.