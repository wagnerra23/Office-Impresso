unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsForm, dxForms, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ActnMan, Vcl.ActnColorMaps, System.ImageList, Vcl.ImgList, cxImageList, cxStyles, cxCustomData, Data.DB, cxDBData, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxGridCustomView, cxGrid, dxCore, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmMenu = class(TdxForm)
    tcBase: TdxTileControl;
    tcaAbout: TdxTileControlActionBarItem;
    tcaExit: TdxTileControlActionBarItem;
    tcaBlackTheme: TdxTileControlActionBarItem;
    tcaWhiteTheme: TdxTileControlActionBarItem;
    tcaClearSelection: TdxTileControlActionBarItem;
    tcaMakeTileItemLarger: TdxTileControlActionBarItem;
    tcaMakeTileItemSmaller: TdxTileControlActionBarItem;
    tgProduto: TdxTileControlGroup;
    tgContato: TdxTileControlGroup;
    tgVenda: TdxTileControlGroup;
    tgProducao: TdxTileControlGroup;
    tlAction_Cad_Pessoas: TdxTileControlItem;
    tlUserManagement: TdxTileControlItem;
    tlSystemInformation: TdxTileControlItem;
    Action_Produtos: TdxTileControlItem;
    tiAction_Consulta_Pessoas: TdxTileControlItem;
    tlStatistics: TdxTileControlItem;
    tlZillow: TdxTileControlItem;
    tlLoanCalculator: TdxTileControlItem;
    tlMortgageRates: TdxTileControlItem;
    dxSkinController1: TdxSkinController;
    tgPrincipal: TdxTileControlGroup;
    tlProduto: TdxTileControlItem;
    tlContatos: TdxTileControlItem;
    tlVendas: TdxTileControlItem;
    tlCompras: TdxTileControlItem;
    tlOqueANovo: TdxTileControlItem;
    tlFichaPonto: TdxTileControlItem;
    tlProducao: TdxTileControlItem;
    tlFinanceiro: TdxTileControlItem;
    tcaMakeTileItemPequeno: TdxTileControlActionBarItem;
    lblBoasVindas: TcxLabel;
    lblHorario: TcxLabel;
    Timer1: TTimer;
    tiAction_Cad_Produto: TdxTileControlItem;
    tiAction_Tipo_Produto: TdxTileControlItem;
    tiActProdutoCategoria: TdxTileControlItem;
    tiAction_GrupoProdutos: TdxTileControlItem;
    tiPainelControle: TdxTileControlItem;
    Action_Producao_OS: TdxTileControlItem;
    tgAssociacao: TdxTileControlGroup;
    tgFinanceiro: TdxTileControlGroup;
    tgCRM: TdxTileControlGroup;
    tgEstoque: TdxTileControlGroup;
    tgCompra: TdxTileControlGroup;
    tgNotificacao: TdxTileControlGroup;
    tgBaseDeConhecimento: TdxTileControlGroup;
    tgRelatorio: TdxTileControlGroup;
    tgIntegracoes: TdxTileControlGroup;
    tgEmpresa: TdxTileControlGroup;
    tgUsuarios: TdxTileControlGroup;
    tgProdutoReatorios: TdxTileControlGroup;
    tiAction_Barras: TdxTileControlItem;
    tiProdutoRelatorioPautaPreco: TdxTileControlItem;
    tiRel_Produtos_Regencial: TdxTileControlItem;
    tiAction_Produto_Patrimonio: TdxTileControlItem;
    tgProdutoOutros: TdxTileControlGroup;
    tiAction_Unidades: TdxTileControlItem;
    tiAction_Produto_Marca: TdxTileControlItem;
    tiAction_Produto_Grade_Modelo: TdxTileControlItem;
    tiActFamilia: TdxTileControlItem;
    tiAction_Produto_Lote: TdxTileControlItem;
    tiAction_Produto_Estoque_Local: TdxTileControlItem;
    tiCadGarantia: TdxTileControlItem;
    tgProdutoValores: TdxTileControlGroup;
    tiActProdutoMarkup: TdxTileControlItem;
    tiActTabela: TdxTileControlItem;
    tiAction_Telefones: TdxTileControlItem;
    tgContatoExtra: TdxTileControlGroup;
    tiAction_Clientes_Grupo: TdxTileControlItem;
    tiAction_Cad_Cidades: TdxTileControlItem;
    tiAction_CadTipoPessoas: TdxTileControlItem;
    tgContatoRelatorio: TdxTileControlGroup;
    tiAction_Rel_Clientes: TdxTileControlItem;
    tiContatoRelatorioSimplificado: TdxTileControlItem;
    tiCadProducao: TdxTileControlItem;
    tiAction_Projeto: TdxTileControlItem;
    tiactProducao_Planejamento: TdxTileControlItem;
    tiAction_Producao_Fila: TdxTileControlItem;
    tgProducaoEquipe: TdxTileControlGroup;
    tiactProducao_Equipe: TdxTileControlItem;
    tiactProducao_Estagio: TdxTileControlItem;
    tgProducaoFluxoTrabalho: TdxTileControlGroup;
    tgProducaoClassificacoes: TdxTileControlGroup;
    tiAction_Acabamento: TdxTileControlItem;
    tiAction_Tipo_Impressao: TdxTileControlItem;
    Action_LocalAuto: TdxTileControlItem;
    tiactProducao_Marcador: TdxTileControlItem;
    tgProducaoRelatorio: TdxTileControlGroup;
    tgProducaoOutros: TdxTileControlGroup;
    tiactProducao_Status: TdxTileControlItem;
    tiAction_Producao_Motivo: TdxTileControlItem;
    tiactProducao_Situacao: TdxTileControlItem;
    tiCadRelatorioProducao: TdxTileControlItem;
    tiAction_CadVenda: TdxTileControlItem;
    tiConVenda: TdxTileControlItem;
    tiCadPedido: TdxTileControlItem;
    tiConPedido: TdxTileControlItem;
    tgVendaOutros: TdxTileControlGroup;
    tiCadEquipamentoVeiculo: TdxTileControlItem;
    tiCadTipoVenda: TdxTileControlItem;
    tiCadEstagioVenda: TdxTileControlItem;
    tiSituacaoVenda: TdxTileControlItem;
    tiCadStatusVenda: TdxTileControlItem;
    tgVendaRelatorio: TdxTileControlGroup;
    tiRelatorioVenda: TdxTileControlItem;
    tgFiscal: TdxTileControlGroup;
    tgFiscalOutros: TdxTileControlGroup;
    tgFiscalConfiguracao: TdxTileControlGroup;
    tiCadNotaFiscal: TdxTileControlItem;
    tiCadNaturezaOperacao: TdxTileControlItem;
    tiCadRegimeTributacao: TdxTileControlItem;
    tiCadCFOP: TdxTileControlItem;
    tiCadNCM: TdxTileControlItem;
    tiCadCST: TdxTileControlItem;
    tiCadCEST: TdxTileControlItem;
    tiCadProvedor: TdxTileControlItem;
    tiCadTrataErroNF: TdxTileControlItem;
    tiCadConfiguracaoNF: TdxTileControlItem;
    tgRH: TdxTileControlGroup;
    tgCRMConfiguracao: TdxTileControlGroup;
    tgCompraRelatorio: TdxTileControlGroup;
    tiCadFolha: TdxTileControlItem;
    tiCadConvenio: TdxTileControlItem;
    tiCadSetores: TdxTileControlItem;
    tiCadAgenda: TdxTileControlItem;
    tiCadEmailMassa: TdxTileControlItem;
    tiCadProposta: TdxTileControlItem;
    tiConProposta: TdxTileControlItem;
    tiCadTipoAgenda: TdxTileControlItem;
    tiCadModeloEmail: TdxTileControlItem;
    tiConMovimento: TdxTileControlItem;
    tiCadBalanco: TdxTileControlItem;
    tiConNF_Entrada: TdxTileControlItem;
    tiCadNF_Compra: TdxTileControlItem;
    tiCadDevolucaoNF: TdxTileControlItem;
    tiCadDevolucaoCompra: TdxTileControlItem;
    tiImportarXML: TdxTileControlItem;
    tiCadManisfetacao: TdxTileControlItem;
    tiRelatorioCompraRelacaoProdutosComprados: TdxTileControlItem;
    tgEmpresaConfiguracoes: TdxTileControlGroup;
    tiWebAPI: TdxTileControlItem;
    tiRelatorios: TdxTileControlItem;
    tiSINTEGRA: TdxTileControlItem;
    tiLogOff: TdxTileControlItem;
    tiTrocarSenha: TdxTileControlItem;
    tiUsuario: TdxTileControlItem;
    tgEmpresaBancoDados: TdxTileControlGroup;
    tiCadEmpresa: TdxTileControlItem;
    tgEmpresaRelatorioPaineis: TdxTileControlGroup;
    tiSelecionarEmpresa: TdxTileControlItem;
    tiModulos: TdxTileControlItem;
    tiCadHistorico: TdxTileControlItem;
    tiCadComponentes: TdxTileControlItem;
    tiTecCadAcoes: TdxTileControlItem;
    tiTecCadGrids: TdxTileControlItem;
    tiTecCadRegra: TdxTileControlItem;
    tiTecCadFiltroConsulta: TdxTileControlItem;
    tiTecCamposAgrupadosConsulta: TdxTileControlItem;
    tiConfiguracoesSistema: TdxTileControlItem;
    tiBaseDados: TdxTileControlItem;
    tiSelecionarBaseDados: TdxTileControlItem;
    tiEmpresaRelatorio: TdxTileControlItem;
    tiPaineisControle: TdxTileControlItem;
    tiEmpresaPaineisGrafico: TdxTileControlItem;
    tgFinanceiroCaixas: TdxTileControlGroup;
    tgFinanceiroBoleto: TdxTileControlGroup;
    tgFinanceiroComissao: TdxTileControlGroup;
    tgFinanceiroDRE: TdxTileControlGroup;
    tgOutros: TdxTileControlGroup;
    tiCadFinanceiro: TdxTileControlItem;
    tiFinanceiroAReceber: TdxTileControlItem;
    tiFinanceiroAPagar: TdxTileControlItem;
    tiCadCaixa: TdxTileControlItem;
    tiRecebimento: TdxTileControlItem;
    tiCadComissoes: TdxTileControlItem;
    tiBoleto100: TdxTileControlItem;
    tiFinanceiroCheque: TdxTileControlItem;
    tiCadDRE: TdxTileControlItem;
    tiDREClassificacao: TdxTileControlItem;
    tgFinanceiroOutros: TdxTileControlGroup;
    tiConciliacaoBancaria: TdxTileControlItem;
    tiCadCondicaoPagto: TdxTileControlItem;
    tiCadTipoPagto: TdxTileControlItem;
    tiCadPlanoContas: TdxTileControlItem;
    tiCadBanco: TdxTileControlItem;
    tiCadCaixas: TdxTileControlItem;
    tiRelCompraEntrada: TdxTileControlItem;
    tgVendaPainel: TdxTileControlGroup;
    tiVendaPainel_Empresa: TdxTileControlItem;
    tiOcorrencias: TdxTileControlItem;
    tiTipoOcorrencia: TdxTileControlItem;
    tiContribuicao: TdxTileControlItem;
    tgAssociacaoContribuicao: TdxTileControlGroup;
    tgAssociacaoEquipamento: TdxTileControlGroup;
    tgAssociacaoFipe: TdxTileControlGroup;
    tgAssociacaoRelatorios: TdxTileControlGroup;
    tiBoletosEventuais: TdxTileControlItem;
    tiAntiFurto: TdxTileControlItem;
    tiEquipamento: TdxTileControlItem;
    tiTipoEquipamento: TdxTileControlItem;
    tiSituacaoEquipamento: TdxTileControlItem;
    tiTabelaFipe: TdxTileControlItem;
    tiTabelaFipeAtualiza: TdxTileControlItem;
    tiRelAssociados: TdxTileControlItem;
    tiRelEtiquetas: TdxTileControlItem;
    tiRelMalaDireta: TdxTileControlItem;
    tiRelOcorrencias: TdxTileControlItem;
    tiEquipamentos: TdxTileControlItem;
    tiEquipamentosAssociados: TdxTileControlItem;
    tiVendaPainel_Funcionario: TdxTileControlItem;
    tiVendaPainel_Categoria: TdxTileControlItem;
    tiVendaPainel_Produto_Tipo: TdxTileControlItem;
    tiConfigurarTEF: TdxTileControlItem;
    tiFinanceiroCartao: TdxTileControlItem;
    tiConAlmoxirifado: TdxTileControlItem;
    tiConRequisicao: TdxTileControlItem;
    pnlSubMenu_Topo: TPanel;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group3: TdxTileControlGroup;
    dxTileControl1Group4: TdxTileControlGroup;
    dxTileControl1Group2: TdxTileControlGroup;
    tiEstoque: TdxTileControlItem;
    dxTileControlItem1: TdxTileControlItem;
    tiColaboradores: TdxTileControlItem;
    tiBalanco: TdxTileControlItem;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    dxTileControlItem2: TdxTileControlItem;
    dxTileControlItem4: TdxTileControlItem;
    PaintBox1: TPaintBox;
    cxImageList1: TcxImageList;
    Timer2: TTimer;
    tcBaseItem1: TdxTileControlItem;
    tgFinanceiroBalancoPatrimonial: TdxTileControlGroup;
    tgFinanceiroDFC: TdxTileControlGroup;
    tcBaseItem3: TdxTileControlItem;
    tcBaseItem4: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tcaBlackThemeClick(Sender: TdxTileControlActionBarItem);
    procedure tlProdutoClick(Sender: TdxTileControlItem);
    procedure tlContatosClick(Sender: TdxTileControlItem);
    procedure tlVendasClick(Sender: TdxTileControlItem);
    procedure tlFinanceiroClick(Sender: TdxTileControlItem);
    procedure tlComprasClick(Sender: TdxTileControlItem);
    procedure tcaMakeTileItemLargerClick(Sender: TdxTileControlActionBarItem);
    procedure tcaMakeTileItemSmallerClick(Sender: TdxTileControlActionBarItem);
    procedure tcaMakeTileItemPequenoClick(Sender: TdxTileControlActionBarItem);
    procedure tlOqueANovoClick(Sender: TdxTileControlItem);
    procedure tlProducaoClick(Sender: TdxTileControlItem);
    procedure tlFichaPontoClick(Sender: TdxTileControlItem);
    procedure Timer1Timer(Sender: TObject);
    procedure tiProdutoRelatorioPautaPrecoClick(Sender: TdxTileControlItem);
    procedure tiAction_CadVendaClick(Sender: TdxTileControlItem);
    procedure tiCadPedidoClick(Sender: TdxTileControlItem);
    procedure tiConPedidoClick(Sender: TdxTileControlItem);
    procedure tiConVendaClick(Sender: TdxTileControlItem);
    procedure tiCadEquipamentoVeiculoClick(Sender: TdxTileControlItem);
    procedure tiCadEstagioVendaClick(Sender: TdxTileControlItem);
    procedure tiCadTipoVendaClick(Sender: TdxTileControlItem);
    procedure tiSituacaoVendaClick(Sender: TdxTileControlItem);
    procedure tiCadNotaFiscalClick(Sender: TdxTileControlItem);
    procedure tiCadRegimeTributacaoClick(Sender: TdxTileControlItem);
    procedure tiCadNaturezaOperacaoClick(Sender: TdxTileControlItem);
    procedure tiCadCFOPClick(Sender: TdxTileControlItem);
    procedure tiCadCSTClick(Sender: TdxTileControlItem);
    procedure tiCadCESTClick(Sender: TdxTileControlItem);
    procedure tiCadNCMClick(Sender: TdxTileControlItem);
    procedure tiCadProvedorClick(Sender: TdxTileControlItem);
    procedure tiCadTrataErroNFClick(Sender: TdxTileControlItem);
    procedure tiCadSetoresClick(Sender: TdxTileControlItem);
    procedure tiCadConvenioClick(Sender: TdxTileControlItem);
    procedure tiCadAgendaClick(Sender: TdxTileControlItem);
    procedure tiCadEmailMassaClick(Sender: TdxTileControlItem);
    procedure tiConPropostaClick(Sender: TdxTileControlItem);
    procedure tiCadPropostaClick(Sender: TdxTileControlItem);
    procedure tiCadModeloEmailClick(Sender: TdxTileControlItem);
    procedure tiConNF_EntradaClick(Sender: TdxTileControlItem);
    procedure tiCadNF_CompraClick(Sender: TdxTileControlItem);
    procedure tiImportarXMLClick(Sender: TdxTileControlItem);
    procedure tiCadManisfetacaoClick(Sender: TdxTileControlItem);
    procedure tiWebAPIClick(Sender: TdxTileControlItem);
    procedure tiSINTEGRAClick(Sender: TdxTileControlItem);
    procedure tiRelatoriosClick(Sender: TdxTileControlItem);
    procedure tiCadEmpresaClick(Sender: TdxTileControlItem);
    procedure tiTecCadAcoesClick(Sender: TdxTileControlItem);
    procedure tiTecCadFiltroConsultaClick(Sender: TdxTileControlItem);
    procedure tiTecCamposAgrupadosConsultaClick(Sender: TdxTileControlItem);
    procedure tiTecCadGridsClick(Sender: TdxTileControlItem);
    procedure tiTecCadRegraClick(Sender: TdxTileControlItem);
    procedure tiCadFinanceiroClick(Sender: TdxTileControlItem);
    procedure tiFinanceiroAPagarClick(Sender: TdxTileControlItem);
    procedure tiFinanceiroAReceberClick(Sender: TdxTileControlItem);
    procedure tiCadCaixaClick(Sender: TdxTileControlItem);
    procedure tiRecebimentoClick(Sender: TdxTileControlItem);
    procedure tiBoleto100Click(Sender: TdxTileControlItem);
    procedure tiFinanceiroChequeClick(Sender: TdxTileControlItem);
    procedure tiCadComissoesClick(Sender: TdxTileControlItem);
    procedure tiCadDREClick(Sender: TdxTileControlItem);
    procedure tiDREClassificacaoClick(Sender: TdxTileControlItem);
    procedure tiConciliacaoBancariaClick(Sender: TdxTileControlItem);
    procedure tiCadTipoPagtoClick(Sender: TdxTileControlItem);
    procedure tiCadCondicaoPagtoClick(Sender: TdxTileControlItem);
    procedure tiCadPlanoContasClick(Sender: TdxTileControlItem);
    procedure tiCadBancoClick(Sender: TdxTileControlItem);
    procedure tiContatoRelatorioSimplificadoClick(Sender: TdxTileControlItem);
    procedure tiCadRelatorioProducaoClick(Sender: TdxTileControlItem);
    procedure tiRelatorioVendaClick(Sender: TdxTileControlItem);
    procedure tiCadConfiguracaoNFClick(Sender: TdxTileControlItem);
    procedure tiCadFolhaClick(Sender: TdxTileControlItem);
    procedure tiCadTipoAgendaClick(Sender: TdxTileControlItem);
    procedure tiConMovimentoClick(Sender: TdxTileControlItem);
    procedure tiCadBalancoClick(Sender: TdxTileControlItem);
    procedure tiRelatorioCompraRelacaoProdutosCompradosClick(
      Sender: TdxTileControlItem);
    procedure tiRelCompraEntradaClick(Sender: TdxTileControlItem);
    procedure tiSelecionarEmpresaClick(Sender: TdxTileControlItem);
    procedure tiModulosClick(Sender: TdxTileControlItem);
    procedure tiConfiguracoesSistemaClick(Sender: TdxTileControlItem);
    procedure tiBaseDadosClick(Sender: TdxTileControlItem);
    procedure tiSelecionarBaseDadosClick(Sender: TdxTileControlItem);
    procedure tiPaineisControleClick(Sender: TdxTileControlItem);
    procedure tiEmpresaRelatorioClick(Sender: TdxTileControlItem);
    procedure tiEmpresaPaineisGraficoClick(Sender: TdxTileControlItem);
    procedure tiUsuarioClick(Sender: TdxTileControlItem);
    procedure tiLogOffClick(Sender: TdxTileControlItem);
    procedure tiTrocarSenhaClick(Sender: TdxTileControlItem);
    procedure tiCadHistoricoClick(Sender: TdxTileControlItem);
    procedure tiVendaPainel_EmpresaActivateDetail(Sender: TdxTileControlItem);
    procedure tiOcorrenciasClick(Sender: TdxTileControlItem);
    procedure tiTipoOcorrenciaClick(Sender: TdxTileControlItem);
    procedure tiAntiFurtoClick(Sender: TdxTileControlItem);
    procedure tiTipoEquipamentoClick(Sender: TdxTileControlItem);
    procedure tiSituacaoEquipamentoClick(Sender: TdxTileControlItem);
    procedure tiTabelaFipeClick(Sender: TdxTileControlItem);
    procedure tiTabelaFipeAtualizaClick(Sender: TdxTileControlItem);
    procedure tiRelAssociadosClick(Sender: TdxTileControlItem);
    procedure tiRelEtiquetasClick(Sender: TdxTileControlItem);
    procedure tiEquipamentosAssociadosClick(Sender: TdxTileControlItem);
    procedure tiRelMalaDiretaClick(Sender: TdxTileControlItem);
    procedure tiRelOcorrenciasClick(Sender: TdxTileControlItem);
    procedure tiContribuicaoClick(Sender: TdxTileControlItem);
    procedure tiBoletosEventuaisClick(Sender: TdxTileControlItem);
    procedure tiEquipamentoClick(Sender: TdxTileControlItem);
    procedure tiEquipamentosClick(Sender: TdxTileControlItem);
    procedure tiAction_Cad_ProdutoClick(Sender: TdxTileControlItem);
    procedure tiActProdutoCategoriaClick(Sender: TdxTileControlItem);
    procedure tiAction_GrupoProdutosClick(Sender: TdxTileControlItem);
    procedure Action_ProdutosClick(Sender: TdxTileControlItem);
    procedure tiAction_Tipo_ProdutoClick(Sender: TdxTileControlItem);
    procedure tiActProdutoMarkupClick(Sender: TdxTileControlItem);
    procedure tiActTabelaClick(Sender: TdxTileControlItem);
    procedure tiAction_UnidadesClick(Sender: TdxTileControlItem);
    procedure tiAction_Produto_Grade_ModeloClick(Sender: TdxTileControlItem);
    procedure tiActFamiliaClick(Sender: TdxTileControlItem);
    procedure tiAction_Produto_MarcaClick(Sender: TdxTileControlItem);
    procedure tiAction_Produto_LoteClick(Sender: TdxTileControlItem);
    procedure tiAction_Produto_Estoque_LocalClick(Sender: TdxTileControlItem);
    procedure tiAction_BarrasClick(Sender: TdxTileControlItem);
    procedure tiRel_Produtos_RegencialClick(Sender: TdxTileControlItem);
    procedure tiAction_Produto_PatrimonioClick(Sender: TdxTileControlItem);
    procedure tlAction_Cad_PessoasClick(Sender: TdxTileControlItem);
    procedure tiAction_TelefonesClick(Sender: TdxTileControlItem);
    procedure tiAction_Clientes_GrupoClick(Sender: TdxTileControlItem);
    procedure tiAction_Consulta_PessoasClick(Sender: TdxTileControlItem);
    procedure tiAction_Rel_ClientesClick(Sender: TdxTileControlItem);
    procedure tiAction_Cad_CidadesClick(Sender: TdxTileControlItem);
    procedure tiAction_CadTipoPessoasClick(Sender: TdxTileControlItem);
    procedure Action_Producao_OSClick(Sender: TdxTileControlItem);
    procedure tiactProducao_PlanejamentoClick(Sender: TdxTileControlItem);
    procedure tiAction_Producao_FilaClick(Sender: TdxTileControlItem);
    procedure tiAction_ProjetoClick(Sender: TdxTileControlItem);
    procedure tiactProducao_EquipeClick(Sender: TdxTileControlItem);
    procedure tiactProducao_EstagioClick(Sender: TdxTileControlItem);
    procedure tiAction_AcabamentoClick(Sender: TdxTileControlItem);
    procedure Action_LocalAutoClick(Sender: TdxTileControlItem);
    procedure tiAction_Tipo_ImpressaoClick(Sender: TdxTileControlItem);
    procedure tiactProducao_MarcadorClick(Sender: TdxTileControlItem);
    procedure tiactProducao_SituacaoClick(Sender: TdxTileControlItem);
    procedure tiactProducao_StatusClick(Sender: TdxTileControlItem);
    procedure tiAction_Producao_MotivoClick(Sender: TdxTileControlItem);
    procedure tiCadCaixasClick(Sender: TdxTileControlItem);
    procedure tiFinanceiroCartaoClick(Sender: TdxTileControlItem);
    procedure tiConAlmoxirifadoClick(Sender: TdxTileControlItem);
    procedure tiConRequisicaoClick(Sender: TdxTileControlItem);
    procedure tcBaseMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure tcBaseItemDeactivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
    procedure tcBaseItemActivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
    procedure tiPainelControleClick(Sender: TdxTileControlItem);
    procedure tcBaseItem1Click(Sender: TdxTileControlItem);
    procedure tcBaseClick(Sender: TObject);
  private
    { Private declarations }
   procedure SelectSkin(ABlackSkin: Boolean);
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses Principal, UnitFuncoes, ShellApi, wrForms, PDV_Pagamento, Base, Sugestoes, Base_APP_Menu, Base_BI;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  if Assigned(FrmPrincipal) then
  begin
    lblBoasVindas.Caption  := 'Olá, '+ LoginUsuario;
    lblHorario.Caption     := FrmPrincipal.StatusBar.Panels[2].Text;
  end;
end;

procedure TFrmMenu.tiModulosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Modulos.Execute;
  FrmSugestoes := TFrmSugestoes.Create(Self);
  try
    FrmSugestoes.ShowModal;
  finally
    FrmSugestoes.Free;
  end;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then
  begin
//    Action:=caFree;
    FormStyle:=fsNormal;
    Visible:=False;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<2) then
      FrmPrincipal.dxTabbedMDIManager1.TabProperties.HideTabs:=True;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<1) then
      FrmPrincipal.cxImage1.Visible:= True;// (Sender = bgPrincipal);
  end;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  dxSkinController1.NativeStyle := False;
  tcBase.LookAndFeel.AssignedValues := [];
end;

procedure TFrmMenu.tcBaseClick(Sender: TObject);
begin
  FecharTodos;
end;

procedure TFrmMenu.tcBaseItem1Click(Sender: TdxTileControlItem);
begin
//  FrmPrincipal.dxBarButton188.Click;
end;

procedure TFrmMenu.tcBaseItemActivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  if Assigned(tcBase)and(tcBase.ActiveDetail = nil) then
  begin
    if Assigned(lblHorario) then
      lblHorario.Visible:=False;
    if Assigned(lblBoasVindas) then
      lblBoasVindas.Visible:=False;
  end;
end;

procedure TFrmMenu.tcBaseItemDeactivateDetail(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  if Assigned(tcBase) then
  begin
    if Assigned(lblHorario) then
      lblHorario.Visible:=True;
    if Assigned(lblBoasVindas) then
      lblBoasVindas.Visible:=True;
  end;
end;

procedure TFrmMenu.tcBaseMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  MouseMoveMenuKPI(Sender, Shift, X, Y);
end;

procedure TFrmMenu.tiEquipamentosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.dxBarButton70.Click;
end;

{$REGION 'Funções de SKIN de tela, Isso é massa'}

procedure TFrmMenu.SelectSkin(ABlackSkin: Boolean);
const
  SkinFileNames: array[Boolean] of string = ('MetroWhite.skinres', 'MetroBlack.skinres');
begin
//  dxSkinsUserSkinLoadFromFile(DMRealtorWorld.DataPath + SkinFileNames[ABlackSkin]);
  tcaBlackTheme.Visible := not ABlackSkin;
  tcaWhiteTheme.Visible := ABlackSkin;
end;

procedure TFrmMenu.tcaBlackThemeClick(Sender: TdxTileControlActionBarItem);
begin
  SelectSkin(Sender.Tag = 0);
end;

procedure TFrmMenu.tcaMakeTileItemLargerClick(Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := 0 to tcBase.CheckedItemCount - 1 do
    tcBase.CheckedItems[I].IsLarge := True;
end;

procedure TFrmMenu.tcaMakeTileItemPequenoClick(Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := 0 to tcBase.CheckedItemCount - 1 do
    tcBase.CheckedItems[I].Size := tcisSmall;
end;

procedure TFrmMenu.tcaMakeTileItemSmallerClick(Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := 0 to tcBase.CheckedItemCount - 1 do
    tcBase.CheckedItems[I].IsLarge := False;
end;
{$ENDREGION}


{$REGION '////// Funções simles apenas com Execute na Action ///'}

procedure TFrmMenu.tiPainelControleClick(Sender: TdxTileControlItem);
begin
  self.FormStyle := fsNormal;
  self.Visible := false;
  if Not Assigned(FrmBase_BI) then
    Application.CreateForm(TFrmBase_BI, FrmBase_BI);
end;

procedure TFrmMenu.Action_LocalAutoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_LocalAuto.Execute;
end;

procedure TFrmMenu.Action_Producao_OSClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Producao_OS.Execute;
end;

procedure TFrmMenu.Action_ProdutosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produtos.Execute;
end;

procedure TFrmMenu.tlContatosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Consulta_Pessoas.Execute;
end;

procedure TFrmMenu.tlVendasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Venda.Execute;
end;

procedure TFrmMenu.tiOcorrenciasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Ocorrencias.Execute;
end;

procedure TFrmMenu.tiPaineisControleClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_DashBoard.Execute;
end;

procedure TFrmMenu.tiProdutoRelatorioPautaPrecoClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Vendas_Produtos_Pauta.Execute;
end;

procedure TFrmMenu.tiRecebimentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Recebimento.Execute;
end;

procedure TFrmMenu.tiRelAssociadosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Associados.Execute;
end;

procedure TFrmMenu.tiRelatorioCompraRelacaoProdutosCompradosClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Produtos_Comprados.Execute;
end;

procedure TFrmMenu.tiRelatoriosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Relatorios.Execute;
end;

procedure TFrmMenu.tiRelatorioVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Vendas.Execute;
end;

procedure TFrmMenu.tiRelCompraEntradaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Entradas.Execute;
end;

procedure TFrmMenu.tiRelEtiquetasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Act_Etiquetas.Execute;
end;

procedure TFrmMenu.tiRelMalaDiretaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_MalaDireta.Execute;
end;

procedure TFrmMenu.tiRelOcorrenciasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_RelOcorrencias.Execute;
end;

procedure TFrmMenu.tiRel_Produtos_RegencialClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Rel_Produtos_Regencial.Execute;
end;

procedure TFrmMenu.tiSelecionarBaseDadosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Seleciona_Banco.Execute;
end;

procedure TFrmMenu.tiSelecionarEmpresaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Empresa_Ativa.Execute;
end;

procedure TFrmMenu.tiSINTEGRAClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_SPED.Execute;
end;

procedure TFrmMenu.tiSituacaoEquipamentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Equipamento_Situacao.Execute;
end;

procedure TFrmMenu.tiSituacaoVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Venda_Situacao.Execute;
end;

procedure TFrmMenu.tiTabelaFipeAtualizaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_TabelaFipeAtualiza.Execute;
end;

procedure TFrmMenu.tiTabelaFipeClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_TabelaFipe.Execute;
end;

procedure TFrmMenu.tiTecCadAcoesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actConfiguracao_Acao.Execute;
end;

procedure TFrmMenu.tiTecCadFiltroConsultaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actConfiguracao_Filtro.Execute;
end;

procedure TFrmMenu.tiTecCadGridsClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actConfiguracoes_grid.Execute;
end;

procedure TFrmMenu.tiTecCadRegraClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actConfiguracao_Regras.Execute;
end;

procedure TFrmMenu.tiTecCamposAgrupadosConsultaClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.actConfiguracao_Agrupamento.Execute;
end;

procedure TFrmMenu.tiTipoEquipamentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Equipamento_Tipo.Execute;
end;

procedure TFrmMenu.tiTipoOcorrenciaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Ocorrencias_Tipo.Execute;
end;

procedure TFrmMenu.tiTrocarSenhaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_TrocarSenha.Execute;
end;

procedure TFrmMenu.tiUsuarioClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Usuario.Execute;
end;

procedure TFrmMenu.tiVendaPainel_EmpresaActivateDetail(Sender: TdxTileControlItem);
begin
  tcBase.Tag      := Sender.Tag;
//  IndexSelecionado:= Sender.Index;
  if Sender.DetailOptions.DetailControl = nil then
    Sender.DetailOptions.DetailControl := APainelFrameClasses[Sender.Tag].Create(Self);
//  FrmPrincipal.Action_DashBoard.Execute;
end;

procedure TFrmMenu.tiWebAPIClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Web_Service.Execute;
end;

procedure TFrmMenu.tlAction_Cad_PessoasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cad_Pessoas.Execute;
end;

procedure TFrmMenu.tlComprasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Entrada.Execute;
end;

procedure TFrmMenu.tlOqueANovoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_ChangeLog.Execute;
end;

procedure TFrmMenu.tlProducaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Producao_OS.Execute;
end;

procedure TFrmMenu.tlFichaPontoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Funcionario_Ponto.Execute;
end;

procedure TFrmMenu.tlFinanceiroClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Financeiro.Execute;
end;

procedure TFrmMenu.tlProdutoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produtos.Execute;
end;

procedure TFrmMenu.tiConRequisicaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Requisicao_Motivo.Execute;
end;

procedure TFrmMenu.tiBaseDadosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Procura_Banco.Execute;
end;

procedure TFrmMenu.tiBoleto100Click(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Boleto.Execute;
end;

procedure TFrmMenu.tiBoletosEventuaisClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Equipamento_Rateio.Execute;
end;

procedure TFrmMenu.tiCadAgendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Compromissos.Execute;
end;

procedure TFrmMenu.tiCadBalancoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Balanco.Execute;
end;

procedure TFrmMenu.tiCadBancoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Bancos.Execute;
end;

procedure TFrmMenu.tiCadCaixaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Caixa.Execute;
end;

procedure TFrmMenu.tiCadCaixasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Contas.Execute;
end;

procedure TFrmMenu.tiCadCESTClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_CEST.Execute;
end;

procedure TFrmMenu.tiCadCFOPClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_CFOP.Execute;
end;

procedure TFrmMenu.tiCadComissoesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Comissoes.Execute;
end;

procedure TFrmMenu.tiCadCondicaoPagtoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_CondicaoPagto.Execute;
end;

procedure TFrmMenu.tiCadConfiguracaoNFClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Configurar_NFe.Execute;
end;

procedure TFrmMenu.tiCadConvenioClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Folha_Pagamento_Grupo.Execute;
end;

procedure TFrmMenu.tiCadCSTClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_CST.Execute;
end;

procedure TFrmMenu.tiCadDREClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_DRE.Execute;
end;

procedure TFrmMenu.tiCadEmailMassaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActEmail_Massa.Execute;
end;

procedure TFrmMenu.tiCadEmpresaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Empresa.Execute;
end;

procedure TFrmMenu.tiCadEquipamentoVeiculoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.act_Equipamento.Execute;
end;

procedure TFrmMenu.tiCadEstagioVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Venda_Estagio.Execute;
end;

procedure TFrmMenu.tiCadFinanceiroClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Financeiro.Execute;
end;

procedure TFrmMenu.tiCadFolhaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Folha_Pagamento.Execute;
end;

procedure TFrmMenu.tiCadHistoricoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.act_Historico.Execute;
end;

procedure TFrmMenu.tiCadManisfetacaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Nota_Fiscal_Entrada.Execute;
end;

procedure TFrmMenu.tiCadModeloEmailClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Email_Modelo.Execute;
end;

procedure TFrmMenu.tiCadNaturezaOperacaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Natureza_Operacao.Execute;
end;

procedure TFrmMenu.tiCadNCMClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_NCM.Execute;
end;

procedure TFrmMenu.tiCadNF_CompraClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Entrada.Execute;
end;

procedure TFrmMenu.tiCadNotaFiscalClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Notas_Fiscais.Execute;
end;

procedure TFrmMenu.tiCadPedidoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_PreVenda.Execute;
end;

procedure TFrmMenu.tiCadPlanoContasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_PlanoContas.Execute;
end;

procedure TFrmMenu.tiCadPropostaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Orcamento.Execute;
end;

procedure TFrmMenu.tiCadProvedorClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Provedor.Execute;
end;

procedure TFrmMenu.tiCadRegimeTributacaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Regime_Especial_Tributacao.Execute;
end;

procedure TFrmMenu.tiCadRelatorioProducaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Relatorio_Producao.Execute;
end;

procedure TFrmMenu.tiCadSetoresClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cadastro_Setores.Execute;
end;

procedure TFrmMenu.tiCadTipoAgendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cad_TipoAgenda.Execute;
end;

procedure TFrmMenu.tiCadTipoPagtoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_CadTipoPagamento.Execute;
end;

procedure TFrmMenu.tiCadTipoVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cad_OS.Execute;
end;

procedure TFrmMenu.tiCadTrataErroNFClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_NF_Erros.Execute;
end;

procedure TFrmMenu.tiActFamiliaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActFamilia.Execute;
end;

procedure TFrmMenu.tiAction_AcabamentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Acabamento.Execute;
end;

procedure TFrmMenu.tiAction_BarrasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Barras.Execute;
end;

procedure TFrmMenu.tiAction_CadTipoPessoasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_CadTipoPessoas.Execute;
end;

procedure TFrmMenu.tiAction_CadVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_CadVenda.Execute;
end;

procedure TFrmMenu.tiAction_Cad_CidadesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cad_Cidades.Execute;
end;

procedure TFrmMenu.tiAction_Cad_ProdutoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Cad_Produto.Execute;
end;

procedure TFrmMenu.tiAction_Clientes_GrupoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Clientes_Grupo.Execute;
end;

procedure TFrmMenu.tiAction_Consulta_PessoasClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Consulta_Pessoas.Execute;
end;

procedure TFrmMenu.tiAction_GrupoProdutosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_GrupoProdutos.Execute;
end;

procedure TFrmMenu.tiAction_Producao_FilaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Producao_Fila.Execute;
end;

procedure TFrmMenu.tiAction_Producao_MotivoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Producao_Motivo.Execute;
end;

procedure TFrmMenu.tiAction_Produto_Estoque_LocalClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Estoque_Local.Execute;
end;

procedure TFrmMenu.tiAction_Produto_Grade_ModeloClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Grade_Modelo.Execute;
end;

procedure TFrmMenu.tiAction_Produto_LoteClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Lote.Execute;
end;

procedure TFrmMenu.tiAction_Produto_MarcaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Marca.Execute;
end;

procedure TFrmMenu.tiAction_Produto_PatrimonioClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Patrimonio.Execute;
end;

procedure TFrmMenu.tiAction_ProjetoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Producao.Execute;
end;

procedure TFrmMenu.tiAction_Rel_ClientesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rel_Clientes.Execute;
end;

procedure TFrmMenu.tiAction_TelefonesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Telefones.Execute;
end;

procedure TFrmMenu.tiAction_Tipo_ImpressaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Tipo_Impressao.Execute;
end;

procedure TFrmMenu.tiAction_Tipo_ProdutoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Tipo_Produto.Execute;
end;

procedure TFrmMenu.tiAction_UnidadesClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Unidades.Execute;
end;

procedure TFrmMenu.tiactProducao_EquipeClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Equipe.Execute;
end;

procedure TFrmMenu.tiactProducao_EstagioClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Estagio.Execute;
end;

procedure TFrmMenu.tiactProducao_MarcadorClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Marcador.Execute;
end;

procedure TFrmMenu.tiactProducao_PlanejamentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Planejamento.Execute;
end;

procedure TFrmMenu.tiactProducao_SituacaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.actProducao_Situacao.Execute;
end;

procedure TFrmMenu.tiactProducao_StatusClick(Sender: TdxTileControlItem);
begin
   FrmPrincipal.actProducao_Status.Execute;
end;

procedure TFrmMenu.tiActProdutoCategoriaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActProdutoCategoria.Execute;
end;

procedure TFrmMenu.tiActProdutoMarkupClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActProdutoMarkup.Execute;
end;

procedure TFrmMenu.tiActTabelaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActTabela.Execute;
end;

procedure TFrmMenu.tiAntiFurtoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Antifurto_Tipo.Execute;
end;

procedure TFrmMenu.tiConAlmoxirifadoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Almoxarifado_Requisicao.Execute;
end;

procedure TFrmMenu.tiConciliacaoBancariaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Conciliacao_Bancaria.Execute;
end;

procedure TFrmMenu.tiConfiguracoesSistemaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Parametros.Execute;
end;

procedure TFrmMenu.tiConMovimentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Produto_Movimento.Execute;
end;

procedure TFrmMenu.tiConNF_EntradaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Notas_e_Solicitacao.Execute;
end;

procedure TFrmMenu.tiConPedidoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_ConPreVenda.Execute;
end;

procedure TFrmMenu.tiConPropostaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_ConOrcamento.Execute;
end;

procedure TFrmMenu.tiContatoRelatorioSimplificadoClick(
  Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_ClientesSimplificado.Execute;
end;

procedure TFrmMenu.tiContribuicaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Rateio.Execute;
end;

procedure TFrmMenu.tiConVendaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Venda.Execute;
end;

procedure TFrmMenu.tiDREClassificacaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_DRE_Classificacao.Execute;
end;

procedure TFrmMenu.tiEmpresaPaineisGraficoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Atalho_Rapido.Execute;
end;

procedure TFrmMenu.tiEmpresaRelatorioClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Relatorios.Execute;
end;

procedure TFrmMenu.tiEquipamentoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Equipamento.Execute;
end;

procedure TFrmMenu.tiEquipamentosAssociadosClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Equipamento_Associado.Execute;
end;

procedure TFrmMenu.tiFinanceiroAPagarClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActionA_Pagar.Execute;
end;

procedure TFrmMenu.tiFinanceiroAReceberClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActionA_Receber.Execute;
end;

procedure TFrmMenu.tiFinanceiroCartaoClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Venda_Financeiro_Tef.Execute;
end;

procedure TFrmMenu.tiFinanceiroChequeClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.ActionFinanceiro_Cheque.Execute;
end;

procedure TFrmMenu.tiImportarXMLClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Importar_XML.Execute;
end;

procedure TFrmMenu.tiLogOffClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Logof.Execute;
end;

{$ENDREGION}


initialization
  RegisterClass(TFrmMenu);

end.
