unit wrConversao;

{$IF Defined(COMERCIAL) or Defined(PAF) or Defined(WRCONSULTORIA)}
  {$DEFINE wrConversao_ACBr}
{$IFEND}

interface

uses
  System.SysUtils, Vcl.Graphics, cxDBLookupComboBox, FireDAC.Comp.Client, FireDAC.Stan.Param,
  System.Variants, Types , pcnConversao , System.Classes , ACBrNFSeXConversao, UnitFuncoes
  {$IFDEF wrConversao_ACBr} ,pcnConversaoNFe, ACBrBoletoConversao{$ENDIF};

type
  TwrSimNao = (wsnSim, wsnNao);
  TBoletosEmailTipoExibicaoDados = (betedColunas, betedLinhas);
  TImpostoPafEcf = (ipeVazio, ipeSubTrib, ipeNaoIcidencia, ipeIsento, ipeTribICMS, ipeTribISSQN);

  TProducaoOperacao = (poProducaoNormal, poCancelamentoProducao, poRejeicao);
  TProducaoMaterialTipoUso = (pmtuUsoNormal, pmtuReaproveitamento, pmtuDespesa);
  TTipoTabelaPreco = (ttpAte, ttpAcimaDe);
  TCustoAdicionalClassificacao = (cacOutro, cacFrete, cacComissao, cacImpostoIPI, cacImpostoST, cacDesconto,
                                  cacNFOutrasDespesasAcessorias, cacFixo, cacVariavel, cacFinanceiro, cacDescontoVenda,
                                  cacAcrescimo, cacAcrescimoVenda);

  TProdutoCustoExtra = (pceCompraOutro, pceCompraFrete, pceCompraImpostoIPI, pceCompraImpostoST, pceCompraDesc,
                        pceVendaOutro, pceVendaDesc, pceVendaImpostoIPI, pceVendaImpostoST,
                        pceVendaFixo, pceVendaVariavel, pceVendaFinanceiro,
                        pceVendaComissaoRepresentante, pceVendaComissaoFuncionario, pceVendaComissaoAgencia,
                        pceVendaComissao, pceVendaComissaoPosVenda, pceVendaFrete);

  TProdutoMedida = (pmQtdadePeca, pmComprimento, pmLargura, pmEspessura, pmQuant);
  TProdutoFormulaMedida = (pfmNaoUsaFormula, pfmIgual, pfmMultiplica, pfmACada, pfmProporcional, pfmPersonalizada);
  TProdutoFormulaMedidaSet = set of TProdutoFormulaMedida;
  TProdutoFormulaArredondamento = (pfaNaoArredonda, pfaArredonda, pfaArredondaParaCima, pfaArredondaParaBaixo);

  //Indica onde que o estoque do produto será movimentado, se no momento em que a venda é faturada ou durante a produção
//  TProdutoLocalMovimentoEstoque = (pmeVenda, pmeProducao);

  TRecursoTipo = (rtPessoa, rtProduto);

  TPrioridade = (prLembrete, prBaixo, prAbaixoDoNormal, prNormal, prAcimaDoNormal, prUrgente, prCritico);

//  TProdutoCusto = (pciValorDeCompra, pciCustoMedio);
//  TProdutoVinculoMedida = (pvmQtdadePeca, pvmComprimento, pvmLargura, pvmEspessura, pvmPerimetro, pvmAreaQuadrada,
//                           pvmAreaCubica, pvmQuant);
  TProdutoTipo_Desconto = (pdVarejo, pdTabelaPreco, pdCustoVenda, pdPorPecas, pdVOutro_Manual, pdPOutro_Manual,
                           pdVDesc_Manual, pdPDesc_Manual, pdPAF, pdProdutoTabela, pdAcrTabelaPreco);      //
  TEstado = (estAcre, estAlagoas, estAmapa, estAmazonas, estBahia, estCeara, estDistritoFederal, estEspiritoSanto,
             estGoias, estMaranhao, estMatoGrosso, estMatoGrossoDoSul, estMinasGerais, estPara, estParaiba, estParana,
             estPernambuco, estPiaui, estRioDeJaneiro, estRioGrandeDoNorte, estRioGrandeDoSul, estRondonia, estRoraima,
             estSantaCatarina, estSaoPaulo, estSergipe, estTocantins, estExterior);
  TNotaFiscalTipoAbertura = (anVisualizar, anSalvarPDF);
  TNotaFiscalTipoAberturaSet = set of TNotaFiscalTipoAbertura;
  TNotaFiscalTipoXML = (nftxDesconhecido, nftxNFe, nftxNFSe, nftxCCe);
  TNotaFiscalTipoRegistro = (nftrNFe, nftrNFSe, nftrNFCe, nftrCCe, nftrNFeCancelamento, nftrNFSeCancelamento,
                             nftrNFeInutilizacao, nftrOutro, nftrSAT, nftrSATCancelamento);
  TNotaFiscalModelo = (nfm00, nfm01, nfm1B, nfm02, nfm2D, nfm2E, nfm04, nfm06, nfm07, nfm08, nfm8B, nfm09, nfm10, nfm11,
                       nfm13, nfm14, nfm15, nfm16, nfm17, nfm18, nfm20, nfm21, nfm22, nfm23, nfm24, nfm25, nfm26, nfm27,
                       nfm28, nfm29, nfm55, nfm57, nfm65);
  TNFSeMetodoEnvio = (nfmeSincrono, nfmeAssincrono, nfmeGerar);
//  TNFSeSituacaoTributacao = (nstTributadaNoPrestador, nstTributadaNoTomador, nstIsenta, nstImune, nstNaoTributada);
  TNFSeValidacaoConfigStatus = (rvAviso, rvErro);
  TVendaComissaoModoCobranca = (vcmcAcrescimo, vcmcServico);
  TVendaSituacaoFinanceira = (vsfAFaturar,  vsfEmAberto, vsfQuitada);
  TVendaProdutoValorTipoDesconto = (trPercDesconto, trPrecoFixo, trCusto);
  TVendaTipoEntradaSaida = (vtesSaida, vtesEntrada); //Sem uso
  TVendaTipoModelo = (vtmVenda, vtmOrcamento, vtmNotaFiscal);
  TTipoFiltroAgendamento = (tfTodos, tfSomenteEu, tfSetor);
  TEventoProdutividade = (epEventoAberto, epEventoFechado, epJanelaEventoAtivada, epJanelaEventoInativada, epOutro);
  TEventoTipo = (etAgendamento, etLogAlteracao = 2, etProdutividade); //BD
  TTipoMensagemAgenda = (maMensagem, maEvento);

  TWRACBrTipoItem = (
                  tiMercadoriaRevenda,    // 00 – Mercadoria para Revenda
                  tiMateriaPrima,         // 01 – Matéria-Prima;
                  tiEmbalagem,            // 02 – Embalagem;
                  tiProdutoProcesso,      // 03 – Produto em Processo;
                  tiProdutoAcabado,       // 04 – Produto Acabado;
                  tiSubproduto,           // 05 – Subproduto;
                  tiProdutoIntermediario, // 06 – Produto Intermediário;
                  tiMaterialConsumo,      // 07 – Material de Uso e Consumo;
                  tiAtivoImobilizado,     // 08 – Ativo Imobilizado;
                  tiServicos,             // 09 – Serviços;
                  tiOutrosInsumos,        // 10 – Outros Insumos;
                  tiOutras                // 99 – Outras
                 );

  TProduto_TipoClassificacao = (ptcProduto,       //  Tag_Produto_ProdutoSimples = 0;
                                ptcServico,       //  Tag_Produto_Servico = 1;
                                ptcVariacao,      //  Tag_Produto_Variacao = 2;
                                ptcComposicao,    //  Tag_Produto_Composicao = 3;
                                ptcMateriaPrima,  //  Tag_Produto_MateriaPrima = 4;
                                ptcPersonalizado,  //  Tag_Produto_Personalizado = 5;
                                ptcPatrimonio,    //  Tag_Produto_Patrimonio = 6;
                                ptcUsoeConsumo   //  Tag_Produto_UsoEConsumo = 7;
                                );

  TTipoLogo = (tplEmpresa, tplPrefeitura);
  TTipoArquivoFR3 = (tafr3DANFE, tafr3DANFSe, tafr3EVENTOS, tafr3Rave, tafr3DANFeNFCe, tafr3INUTILIZACAO, tafr3DANFSeX);

  TRegraTipoComparacao = (rtcIgual, rtcDiferente, rtcMaiorQue, rtcMenorQue, rtcMaiorOuIgualA, rtcMenorOuIgualA);

  // SEÇÃO EMAIL
  TEmailMassaSituacao = (emsAguardandoEnvio, emsEnvioConcluido, emsMensagensPendentes);
  TEmailMassaMensagemSituacao = (emmsAguardandoEnvio, emmsEnviado, emmsFalhaEnvio);

  TTipoSetor = (tsSetor, tsEstagio);
  TTipoSetorHelper = record helper for TTipoSetor
  public
    function ToStr: string;
    function ToDescricao: string;
    class function StrToCodigo(ACodigo: string): TTipoSetor; static;
  end;
  TTipoConsultaPessoa = (cpConsulta, cpCadastro);
  TPermissaoPessoaTipo = (pptCadastro, pptConsulta);
  TPermissoesPessoaTipo = set of TPermissaoPessoaTipo;
  TContaTipo = (ctNenhum, ctBanco, ctCaixa, ctCartao);
  TBancoConvenio = (bcNenhum, bcCresolSicoper, bcCresolCentral, bcUnicredSC, bcPine, bcSafra, bcSICOOB, bcBic);
    {Não está mais sendo utilizado, remover assim que possível} //Esse comentario estava no UCaixa nessa Tipo, mas ao verificar, vi que tem algumas dependecias no sistema.
  TTipoControleCaixa = (tccNaoRestrito, tccPorUsuario, tccPorEmpresa);
  TSituacaoCaixa = (scCaixaFechado, scCaixaAberto);
    TCaixaRec = record
    Codigo: Integer;
    CodConta: Integer;    //usando na função GetSituacaoCaixaSQL em WRFuncoes
    Situacao: TSituacaoCaixa;
    DtAbertura: TDateTime;
    MsgCaixaFechado: string;
  end;
  TDicaDirecaoAnimacao = (daParaFrente, daParaTras);
  TCaixaModelo = (cmCaixaPorTurno, cmCaixaPorDia);
  TModoCalculoTempo = (mcTempoTotal, mcTempoTotalSemInterseccao);
  TBancoTipoArquivo = (taNaoDefinido, taBoleto, taGridStream, taLogoEmpresa, taLogoPrefeitura,
                     taRetornoBanco, taAnexoVenda, taAnexoVenda_Produto, taAnexoPessoa, taAnexoAgenda, taAnexoContrato,
                     taAnexoProducaoProtocolo, taAnexoProducaoEquipe, taAnexoProdutoAnexo, taAnexoProdutoVenda,
                     taAnexoProdutoProducao, taAnexoFuncionario, taAnexoRateioArquivos, taAnexoRateioExclusao,
                     taAnexoPessoaVenda, taAnexoPessoaProducao, taAnexoEquipamentos, taAnexoOcorrencias,
                     taAnexoVendaProducao);
  TFinanceiroTipo = (fitNenhum, fitRecebida, fitAReceber, fitPaga, fitAPagar);
  TFinanceiroTipoSet = set of TFinanceiroTipo;


  TTipoBalancoAutomatico = (tbaAnual, tbaMensal, tbaSemanal);

  TNotaFiscalTipoPossiveis = (nfprNFeCCe, nfprNFSe);
  TBancoExigencia = (beSempre, beConta, beAgencia, beAgenciaDigito, beContaDigito, beCarteira, beResponsavelEmissao,
                   beCaracTitulo, beCoopAgencia, beCoopConta, beCoopCodCedente, beConvenio,
                   beCodCedente, beCodTransmissao, beNomeCedente, beVariacao, beNossoNumero, beEspecie);

  //CRM
  TWebServiceTipo = (wstWooCommerce, wstCRM);
  TCRMThreadStatus = (ctsParado, ctsExecutando, ctsConcluido, ctsFalha, ctsCancelado);
  TCRMTaskRelType = (ctrEstimate, ctrCustomer, ctrInvoice, ctrProject, ctrContract, ctrLead, ctrTicket, ctrExpense,
                     ctrProposal);


  TEmailMassaSituacaoHelper = record helper for TEmailMassaSituacao
  public
    function Codigo: string;
    function Descricao: string;
    function Cor: TColor;
    class function GetFromCodigo(ACodigo: string): TEmailMassaSituacao; static;
  end;
  TEmailMassaMensagemSituacaoHelper = record helper for TEmailMassaMensagemSituacao
  public
    function Codigo: string;
    function Descricao: string;
    function Cor: TColor;
    class function GetFromCodigo(ACodigo: string): TEmailMassaMensagemSituacao; static;
  end;

  {$IFDEF wrConversao_ACBr}
  //Rotinas para conversão de enumerators do ACBr
  function ResponEmissaoToStr(const AResponEmissao: TACBrResponEmissao): string;
  function ResponEmissaoToDescricao(const AResponEmissao: TACBrResponEmissao): string;
  function ResponEmissaoStrToEnum(var ok: boolean; const s: string): TACBrResponEmissao;

  function CaracTituloToStr(const ACaracTitulo: TACBrCaracTitulo): string;
  function CaracTituloToDescricao(const ACaracTitulo: TACBrCaracTitulo): string;
  function CaracTituloStrToEnum(const ACodigo: string): TACBrCaracTitulo;

  //A função "ToStr" do TnfseSimNao já existe no fonte do ACBr
  function NFSeSimNaoToDescricao(const t: TnfseSimNao): string;

  function TipoAmbienteToDescricao(AItem: TpcnTipoAmbiente): string;
  function TipoNFeToDescricao(const AItem: TpcnTipoNFe): string;
  function ISSQNcSitTribToDescricao(AItem: TpcnISSQNcSitTrib): string;
  function modBCSTToDescricao(const AItem: TpcnDeterminacaoBaseIcmsST): string;
  function modBCToDescricao(const t: TpcnDeterminacaoBaseIcms): string;
  function OrigemMercadoriaToDescricao(const t: TpcnOrigemMercadoria): string;
  function ISSRetidoToDescricao(const t: TpcnindISSRet): string;
  function IndIncentivoToDescricao(const t: TpcnindIncentivo): string;
  function ModFreteToDescricao(const AModFrete: TpcnModalidadeFrete): string;
  function FinalidadeNFeToDescricao(const AFinNFe: TpcnFinalidadeNFe): string;

  function SchemaDFeToCodigo(ASchema: TSchemaDFe): string;
  function SchemaDFeFromCodigo(var AOk: Boolean; ACodigo: string): TSchemaDFe;
  function SchemaDFeAsSQL(ASchemas: array of TSchemaDFe): string;

  function SituacaoDFeToCodigo(ASituacao: TSituacaoDFe): string;

  function ManifestoDFeToCodigo(AManifesto: TpcnTpEvento): string;
  function ManifestoDFeToDescricao(AManifesto: TpcnTpEvento): string;
  {$ENDIF}

  function TipoLogoToStr(ATipo: TTipoLogo): string;
  function TipoLogoToDescricao(ATipo: TTipoLogo): string;

  function TipoArquivoFR3ToStr(ATipo: TTipoArquivoFR3): string;

  function BoletosEmailTipoExibicaoDadosToStr(ATipo: TBoletosEmailTipoExibicaoDados): string;
  function BoletosEmailTipoExibicaoDadosToDescricao(ATipo: TBoletosEmailTipoExibicaoDados): string;
  function BoletosEmailTipoExibicaoDadosStrToEnum(const ACodigo: string): TBoletosEmailTipoExibicaoDados;

  function PrioridadeToStr(AItem: TPrioridade): Integer;
  function PrioridadeToDescricao(AItem: TPrioridade): string;
  function PrioridadeStrToEnum(ACodigo: Integer): TPrioridade;
  function PrioridadeStrToDescricao(ACodigo: Integer): string;

  function NotaFiscalModeloToStr(AMod: TNotaFiscalModelo): string;
  function NotaFiscalModeloToDescricao(AMod: TNotaFiscalModelo): string;
  function NotaFiscalModeloStrToEnum(const ACodigo: string): TNotaFiscalModelo;


  function ProducaoOperacaoToStr(const AOperacao: TProducaoOperacao): string;
  function ProducaoOperacaoToDescricao(const AOperacao: TProducaoOperacao): string;
  function ProducaoOperacaoStrToEnum(const ACodigo: string): TProducaoOperacao;

  function ProducaoMaterialTipoUsoToStr(ATipo: TProducaoMaterialTipoUso): string;
  function ProducaoMaterialTipoUsoStrToEnum(const ACodigo: string): TProducaoMaterialTipoUso;

//  function ProdutoCustoAdicionalContextoToCampo(AContexto: TProdutoCustoAdicionalContexto): string;
//  function ProdutoCustoAdicionalContextoToStr(AContexto: TProdutoCustoAdicionalContexto): string;
//  function ProdutoCustoAdicionalContextoToDescricao(AContexto: TProdutoCustoAdicionalContexto): string;
//  function ProdutoCustoAdicionalContextoStrToEnum(const ACodigo: string): TProdutoCustoAdicionalContexto;
//
//  function ProdutoCustoAdicionalTipoToStr(const ATipo: TProdutoCustoAdicionalTipo): string;
//  function ProdutoCustoAdicionalTipoToHint(const ATipo: TProdutoCustoAdicionalTipo): string;
//  function ProdutoCustoAdicionalTipoToHintCompleto: string;
//  function ProdutoCustoAdicionalTipoStrToEnum(const ACodigo: string): TProdutoCustoAdicionalTipo;
//  function ProdutoCustoAdicionalTipoToDescricao(const ATipo: TProdutoCustoAdicionalTipo): string;

//  function ProdutoCustoExtraToDescricao(const AItem: TProdutoCustoExtra): string;
//  function ProdutoCustoExtraToEnum(ACampo, ACompraVenda :String): String;
//
//  function CustoAdicionalClassificacaoToStr(AItem: TCustoAdicionalClassificacao): string;
//  function CustoAdicionalClassificacaoToDescricao(AItem: TCustoAdicionalClassificacao): string;
//  function CustoAdicionalClassificacaoToSQL(const AClassificacoes: TArray<TCustoAdicionalClassificacao>): string;
//  function CustoAdicionalClassificacaoToCampo(AItem: TCustoAdicionalClassificacao): string;
//  function CustoAdicionalClassificacaoStrToEnum(const ACodigo: string): TCustoAdicionalClassificacao;
//
//  function CustoAdicionalClassificacaoStrToDescricao(const ACodigo: string): string;
//  function CustoAdicionalClassificacaoDescricaoToEnum(const ACodigo: string): TCustoAdicionalClassificacao;

  function TipoTabelaPrecoToStr(ATipo: TTipoTabelaPreco): string;
  function TipoTabelaPrecoToDescricao(ATipo: TTipoTabelaPreco): string;
  function TipoTabelaPrecoStrToEnum(const ACodigo: string): TTipoTabelaPreco;

  function ProdutoTipoClassificacaoToStr(const AItem: TProduto_TipoClassificacao): string;
  function ProdutoTipoClassificacaoStrToEnum(const ACodigo: string): TProduto_TipoClassificacao;
  function ProdutoTipoClassificacaoToDescricao(const AItem: TProduto_TipoClassificacao): string;
  function ProdutoTipoClassificacaoToObservacao(const AItem: TProduto_TipoClassificacao): string;
  function ProdutoTipoClassificacaoToImgIndex(const AClassificacao: TProduto_TipoClassificacao): Integer;
  function ProdutoTipoImgIndexToClassificacao(const AIndex: Integer): TProduto_TipoClassificacao;

  function ProdutoMedidaToStr(const AItem: TProdutoMedida): string;
  function ProdutoMedidaToCampo(const AItem: TProdutoMedida): string;
  function ProdutoMedidaStrToEnum(var AOk: Boolean; const ACodigo: string): TProdutoMedida;
  function ProdutoMedidaCampoToEnum(const ACampo: string): TProdutoMedida;

  function ProdutoFormulaMedidaToStr(const AItem: TProdutoFormulaMedida): Variant;
  function ProdutoFormulaMedidaStrToEnum(const ACodigo: string): TProdutoFormulaMedida;
  function ProdutoFormulaMedidaToDescricao(const AItem: TProdutoFormulaMedida): string;

  function ProdutoFormulaArredondamentoToStr(AItem: TProdutoFormulaArredondamento): Variant;
  function ProdutoFormulaArredondamentoToDescricao(AItem: TProdutoFormulaArredondamento): string;
  function ProdutoFormulaArredondamentoStrToEnum(const ACodigo: string): TProdutoFormulaArredondamento;
//
//  function ProdutoCustoToStr(const AProdutoCusto: TProdutoCusto): Variant;
//  function ProdutoCustoToDescricao(const AProdutoCusto: TProdutoCusto): string;
//  function ProdutoCustoStrToEnum(const ACodigo: string): TProdutoCusto;

  function VendaComissaoModoCobrancaToStr(AModo: TVendaComissaoModoCobranca): string;
  function VendaComissaoModoCobrancaStrToEnum(const ACodigo: string): TVendaComissaoModoCobranca;
  function VendaComissaoModoCobrancaToDescricao(AModo: TVendaComissaoModoCobranca): string;

  function VendaTipoModeloToStr(AModelo: TVendaTipoModelo): string;
  function VendaTipoModeloStrToEnum(const ACodigo: string): TVendaTipoModelo;
  function VendaTipoModeloToDescricao(AModelo: TVendaTipoModelo): string;
  function VendaTipoModeloToHint(AModelo: TVendaTipoModelo): string;
  function VendaTipoModeloToHintCompleto: string;

  function VendaTipoEntradaSaidaStrToEnum(const ACodigo: string): TVendaTipoEntradaSaida;
  function VendaTipoEntradaSaidaToDescricao(const ATipo: TVendaTipoEntradaSaida): string;
  function VendaTipoEntradaSaidaToStr(const ATipo: TVendaTipoEntradaSaida): string;

  function VendaSituacaoFinanceiraToStr(ASituacao: TVendaSituacaoFinanceira): string;
  function VendaSituacaoFinanceiraToDescricao(ASituacao: TVendaSituacaoFinanceira): string;
  function VendaSituacaoFinanceiraStrToEnum(const ACodigo: string): TVendaSituacaoFinanceira;

  function NotaFiscalTipoRegistroToStr(ATipo: TNotaFiscalTipoRegistro): string;
  function NotaFiscalTipoRegistroToDescricao(ATipo: TNotaFiscalTipoRegistro): string;
  function NotaFiscalTipoRegistroStrToEnum(const ACodigo: string): TNotaFiscalTipoRegistro;
  {$IFDEF wrConversao_ACBr}
  function NotaFiscalTipoRegistroTipoEventoToEnum(const ATipoEvento: TpcnTpEvento): TNotaFiscalTipoRegistro;
  function IssRetidoCadPessoasToEnum(const AISSRetidoCadastroPessoas: string): TnfseSituacaoTributaria;
  function IssRetidoEnumToCadPessoas(const AISSRetido: TnfseSituacaoTributaria): string;
  {$ENDIF}
  function NotaFiscalTipoRegistroToSQL(const ATipos: array of TNotaFiscalTipoRegistro): string;

//  function ProdutoVinculoMedidaToStr(const AItem: TProdutoVinculoMedida): string;
//  function ProdutoVinculoMedidaToCampo(const AItem: TProdutoVinculoMedida): string;
//  function ProdutoVinculoMedidaStrToEnum(var AOk: Boolean; const AStr: string): TProdutoVinculoMedida;
//  function ProdutoVinculoMedidaCampoToEnum(const ACampo: string): TProdutoVinculoMedida;
//
//  function ProdutoLocalMovimentoEstoqueToStr(AItem: TProdutoLocalMovimentoEstoque): string;
//  function ProdutoLocalMovimentoEstoqueToDescricao(AItem: TProdutoLocalMovimentoEstoque): string;
//  function ProdutoLocalMovimentoEstoqueStrToEnum(AStr: string): TProdutoLocalMovimentoEstoque;
//  function ProdutoLocalMovimentoEstoqueToHint(AItem: TProdutoLocalMovimentoEstoque): string;
//  function ProdutoLocalMovimentoEstoqueGetHintCompleto: string;

  function RecursoTipoToStr(AItem: TRecursoTipo): string;
  function RecursoTipoToDescricao(AItem: TRecursoTipo): string;
  function RecursoTipoStrToEnum(const AStr: string): TRecursoTipo;
  function RecursoTipoStrToDescricao(const AStr: string): string;

//  function ProdutoTipo_DescontoToStr(const t: TProdutoTipo_Desconto): string;
//  function ProdutoTipo_DescontoStrToEnum(out ok: boolean; const s: string): TProdutoTipo_Desconto;
  function ProdutoTipo_DescontoDescricaoToEnum(out ok: boolean; const s: string): TProdutoTipo_Desconto;
  function ProdutoTipo_DescontoToDescricao(const t: TProdutoTipo_Desconto): string;
  function ProdutoTipo_DescontoToCaption(const t: TProdutoTipo_Desconto): string;

  function EstadoDescricaoCodigoToEnum(const ADesc: string): TEstado;
  function EstadoUFToEnum(const AUF: string): TEstado;
  function EstadoCodigoUFToEnum(const ACodigoUF: Integer): TEstado;
  function EstadoToUF(const AEstado: TEstado): string;
  function EstadoToDescricaoCodigo(const AEstado: TEstado): string;
  function EstadoToDescricao(const AEstado: TEstado): string;
  function EstadoToCodigoUF(const AEstado: TEstado): Integer;

  function EstadoDescricaoToEnum(const ADesc: string): TEstado;
  function EstadoDescricaoToUF(const ADesc: string): string;

  function TipoFiltroAgendamentoToStr(Const ATipoFiltro: TTipoFiltroAgendamento): String;

  function EventoProdutividadeToStr(AEventoProdutividade: TEventoProdutividade): string;
  function EventoProdutividadeToDescricao(AEventoProdutividade: TEventoProdutividade): string;
  function EventoProdutividadeStrToEnum(ACodigo: string): TEventoProdutividade;

  function EventoTipoToStr(AEventoTipo: TEventoTipo): Integer;
  function EventoTipoStrToEnum(ACodigo: Integer): TEventoTipo;
  function EventoTipoDescricao(AEventoTipo: TEventoTipo): string;

  function TipoMensagemAgendaToStr(AMensagemAgenda: TTipoMensagemAgenda): string;
  function TipoMensagemAgendaDescricao(AMensagemAgenda: TTipoMensagemAgenda): string;
  function TipoMensagemAgendaStrToEnum(ACodigo: string): TTipoMensagemAgenda;

  function TipoConsultaPessoaToDescricao(ATipoConsultaPessoa: TTipoConsultaPessoa): string;

  function ContaTipoToStr(AContaTipo: TContaTipo): string;
  function ContaTipoDescricao(AContaTipo: TContaTipo): string;
  function ContaTipoStrToEnum(ACodigo: string): TContaTipo;

  function BancoConvenioToStr(ABancoConvenio: TBancoConvenio): Variant;
  function BancoConvenioToDescricao(ABancoConvenio: TBancoConvenio): string;
  function BancoConvenioStrToEnum(const ACodigo: string): TBancoConvenio;

  function TipoControleCaixaToStr(ATipoControleCaixa: TTipoControleCaixa): Integer;
  function TipoControleCaixaToDescricao(ATipoControleCaixa: TTipoControleCaixa): string;
  function TipoControleCaixaStrToEnum(ACodigo: Integer): TTipoControleCaixa;

  function CaixaModeloToStr(ACaixaModelo: TCaixaModelo): string;
  function CaixaModeloToDescricao(ACaixaModelo: TCaixaModelo): string;
  function CaixaModeloStrToEnum(ACodigo: string): TCaixaModelo;

  function BancoTipoArquivoToStr(ABancoTipoArquivo: TBancoTipoArquivo): string;
  function BancoTipoArquivoToDescricao(ABancoTipoArquivo: TBancoTipoArquivo): string;
  function BancoTipoArquivoStrToEnum(ACodigo: string): TBancoTipoArquivo;

  function FinanceiroTipoToStr(const ATipo: TFinanceiroTipo): string;
  function FinanceiroTipoToDescricao(const ATipo: TFinanceiroTipo): string;
  function FinanceiroTipoStrToEnum(const ACodigo: string): TFinanceiroTipo;
  function FinanceiroTipoToSQL(const ATipos: TFinanceiroTipoSet): string;

  function TipoBalancoAutomaticoToStr(ATipo: TTipoBalancoAutomatico): string;
  function TipoBalancoAutomaticoToDescricao(ATipo: TTipoBalancoAutomatico): string;
  function TipoBalancoAutomaticoCodigoToEnum(var AOk: Boolean; const ACodigo: string): TTipoBalancoAutomatico;

  function NotaFiscalTipoPossiveisToStr(t: TNotaFiscalTipoPossiveis): string;
  function StrToNotaFiscalTipoPossiveis(out ok: boolean; const s: string): TNotaFiscalTipoPossiveis;
  function NotaFiscalTipoPossiveisToDescricao(t: TNotaFiscalTipoPossiveis): string;

  function Produto_TipoClassificacaoToStr(const t: TProduto_TipoClassificacao): string;
  function Produto_TipoClassificacaoDescricao(const t: TProduto_TipoClassificacao): string;
  function Produto_TipoClassificacaoStrToCodigo(ACodigo: string): TProduto_TipoClassificacao;

  function CRMTaskRelTypeToStr(const AItem: TCRMTaskRelType): string;
  function CRMTaskRelTypeToDescricao(const AItem: TCRMTaskRelType): string;
  function CRMTaskRelTypeToArray: TStringDynArray;
  function CRMTaskRelTypeStrToEnum(var AOk: Boolean; const ACodigo: string): TCRMTaskRelType;

  function CRMThreadStatusToStr(const AItem: TCRMThreadStatus): string;
  function CRMThreadStatusToDescricao(const AItem: TCRMThreadStatus): string;
  function CRMThreadStatusStrToEnum(const ACodigo: string): TCRMThreadStatus;

  function WebServiceTipoToCodigo(const ATipo: TWebServiceTipo): string;
  function WebServiceTipoToDescricao(const ATipo: TWebServiceTipo): string;
  function WebServiceTipoCodigoToEnum(var AOk: Boolean; const ACodigo: string): TWebServiceTipo;

  function wrSimNaoToDescricao(t: TwrSimNao): string;
  function wrSimNaoToStr(t: TwrSimNao): string;

  function ImpostoPafEcfToDescricao(t: TImpostoPafEcf): string;
  function ImpostoPafEcfToStr(t: TImpostoPafEcf): string;

  function indIEDestToDescricao(const ATipoContr: TpcnindIEDest): string;

  function NFSeMetodoEnvioToStr(AItem: TNFSeMetodoEnvio): string;
  function NFSeMetodoEnvioToDescricao(AItem: TNFSeMetodoEnvio): string;
  function NFSeMetodoEnvioStrToEnum(const ACodigo: string): TNFSeMetodoEnvio;

  function NFSeValidacaoConfigStatusToCor(const AItem: TNFSeValidacaoConfigStatus): TColor;
  function NFSeValidacaoConfigStatusToDescricao(const AItem: TNFSeValidacaoConfigStatus): string;

  function NFSeSituacaoTribDescricao(AItem: TSituacaoTrib): string;
 (* function NFSeSituacaoTributacaoToStr(AItem: TNFSeSituacaoTributacao): string;
  function NFSeSituacaoTributacaoToDescricao(AItem: TNFSeSituacaoTributacao): string;
  function NFSeSituacaoTributacaoStrToEnum(const ACodigo: string): TNFSeSituacaoTributacao;  *)

  function ACBrTipoItemToStr(ATipo: TWRACBrTipoItem): string;
  function ACBrTipoItemToDescricao(ATipo: TWRACBrTipoItem): string;
  function ACBrTipoItemStrToEnum(const ACodigo: string): TWRACBrTipoItem;
  function ACBrTipoItemDescricaoToEnum(const s: string): TWRACBrTipoItem;


implementation

uses
  StrUtils {, UnitFuncoes};
   (*
function NFSeSituacaoTributacaoToStr(AItem: TNFSeSituacaoTributacao): string;
begin
  //Estes códigos são de acordo com o provedor SigISS
  //NÃO ALTERAR!!
  case AItem of
    nstTributadaNoPrestador: Result := 'tp';
    nstTributadaNoTomador:   Result := 'tt';
    nstIsenta:               Result := 'is';
    nstImune:                Result := 'im';
    nstNaoTributada:         Result := 'nt';
  end;
end;

function NFSeSituacaoTributacaoToDescricao(AItem: TNFSeSituacaoTributacao): string;
begin
  case AItem of
    nstTributadaNoPrestador: Result := 'Tributada No Prestador';
    nstTributadaNoTomador:   Result := 'Tributada No Tomador';
    nstIsenta:               Result := 'Isenta';
    nstImune:                Result := 'Imune';
    nstNaoTributada:         Result := 'Não Tributada';
  end;
end;

function NFSeSituacaoTributacaoStrToEnum(const ACodigo: string): TNFSeSituacaoTributacao;
begin
end;  *)

function NFSeValidacaoConfigStatusToCor(const AItem: TNFSeValidacaoConfigStatus): TColor;
begin
  case AItem of
    rvAviso: Result := $000080FF;
    rvErro:  Result := clRed;
  end;
end;

function NFSeValidacaoConfigStatusToDescricao(const AItem: TNFSeValidacaoConfigStatus): string;
begin
  case AItem of
    rvAviso: Result := 'Aviso';
    rvErro:  Result := 'Erro';
  end;
end;

function NFSeMetodoEnvioToStr(AItem: TNFSeMetodoEnvio): string;
begin
  case AItem of
    nfmeSincrono:   Result := 'SINCRONO';
    nfmeAssincrono: Result := 'ASSINCRONO';
    nfmeGerar:      Result := 'GERAR';
  end;
end;

function NFSeMetodoEnvioToDescricao(AItem: TNFSeMetodoEnvio): string;
begin
  case AItem of
    nfmeSincrono:   Result := 'Síncrono';
    nfmeAssincrono: Result := 'Assíncrono';
    nfmeGerar:      Result := 'Gerar';
  end;
end;

function NFSeMetodoEnvioStrToEnum(const ACodigo: string): TNFSeMetodoEnvio;
begin
  for Result := Low(TNFSeMetodoEnvio) to High(TNFSeMetodoEnvio) do
  begin
    if NFSeMetodoEnvioToStr(Result) = ACodigo then
      Exit;
  end;
  Result := nfmeAssincrono;
end;

function ImpostoPafEcfToDescricao(t: TImpostoPafEcf): string;
begin
  case t of
    ipeVazio:        Result := '';
    ipeSubTrib:      Result := 'Substituição Tributária';
    ipeNaoIcidencia: Result := 'Não incidência';
    ipeIsento:       Result := 'Isento';
    ipeTribICMS:     Result := 'Tributado pelo ICMS';
    ipeTribISSQN:    Result := 'Tributado pelo ISSQN';
  end;
end;

function ImpostoPafEcfToStr(t: TImpostoPafEcf): string;
begin
  case t of
    ipeVazio:        Result := '';
    ipeSubTrib:      Result := 'F';
    ipeNaoIcidencia: Result := 'N';
    ipeIsento:       Result := 'I';
    ipeTribICMS:     Result := 'T';
    ipeTribISSQN:    Result := 'S';
  end;
end;

function wrSimNaoToDescricao(t: TwrSimNao): string;
begin
  case t of
    wsnSim: Result := 'Sim';
    wsnNao: Result := 'Não';
  end;
end;

function wrSimNaoToStr(t: TwrSimNao): string;
begin
  case t of
    wsnSim: Result := 'S';
    wsnNao: Result := 'N';
  end;
end;

function CRMThreadStatusToStr(const AItem: TCRMThreadStatus): string;
begin
  case AItem of
    ctsParado:     Result := 'PARADO';
    ctsExecutando: Result := 'EXECUTANDO';
    ctsConcluido:  Result := 'CONCLUIDO';
    ctsFalha:      Result := 'FALHA';
    ctsCancelado:  Result := 'CANCELADO';
  end;
end;

function CRMThreadStatusToDescricao(const AItem: TCRMThreadStatus): string;
begin
  case AItem of
    ctsParado:     Result := 'Parado';
    ctsExecutando: Result := 'Executando';
    ctsConcluido:  Result := 'Concluído';
    ctsFalha:      Result := 'Falha na Execução';
    ctsCancelado:  Result := 'Cancelado';
  end;
end;

function CRMThreadStatusStrToEnum(const ACodigo: string): TCRMThreadStatus;
begin
  for Result := Low(TCRMThreadStatus) to High(TCRMThreadStatus) do
  begin
    if CRMThreadStatusToStr(Result) = ACodigo then
      Exit;
  end;
  Result := ctsParado;
end;

function CRMTaskRelTypeToStr(const AItem: TCRMTaskRelType): string;
begin
  case AItem of
    ctrEstimate: Result := 'estimate';
    ctrCustomer: Result := 'customer';
    ctrInvoice:  Result := 'invoice';
    ctrProject:  Result := 'project';
    ctrContract: Result := 'contract';
    ctrLead:     Result := 'lead';
    ctrTicket:   Result := 'ticket';
    ctrExpense:  Result := 'expense';
    ctrProposal: Result := 'proposal';
  end;
end;

function CRMTaskRelTypeToDescricao(const AItem: TCRMTaskRelType): string;
begin
  case AItem of
    ctrEstimate: Result := 'Estimate';
    ctrCustomer: Result := 'Customer';
    ctrInvoice:  Result := 'Invoice';
    ctrProject:  Result := 'Project';
    ctrContract: Result := 'Contract';
    ctrLead:     Result := 'Lead';
    ctrTicket:   Result := 'Ticket';
    ctrExpense:  Result := 'Expense';
    ctrProposal: Result := 'Proposal';
  end;
end;

function CRMTaskRelTypeToArray: TStringDynArray;
var
  I: Integer;
  ATipo: TCRMTaskRelType;
begin
  //Determina o tamanho do enumerator. Não achei maneira mais elegante de fazer isso, ajustar se tiver!
  I := 0;
  for ATipo := Low(TCRMTaskRelType) to High(TCRMTaskRelType) do
    Inc(I);
  SetLength(Result, I);

  //Preenche o array
  I := 0;
  for ATipo := Low(TCRMTaskRelType) to High(TCRMTaskRelType) do
  begin
    Result[i] := CRMTaskRelTypeToStr(ATipo);
    Inc(I);
  end;
end;

function CRMTaskRelTypeStrToEnum(var AOk: Boolean; const ACodigo: string): TCRMTaskRelType;
begin
  AOk := False;
  for Result := Low(TCRMTaskRelType) to High(TCRMTaskRelType) do
  begin
    if CRMTaskRelTypeToStr(Result) = ACodigo then
    begin
      AOk := True;
      Exit;
    end;
  end;
end;

function WebServiceTipoToCodigo(const ATipo: TWebServiceTipo): string;
begin
  case ATipo of
    wstWooCommerce: Result := 'WOO_COMMERCE';
    wstCRM:   Result := 'CRM';
  end;
end;

function WebServiceTipoToDescricao(const ATipo: TWebServiceTipo): string;
begin
  case ATipo of
    wstWooCommerce: Result := 'WooCommerce';
    wstCRM:   Result := 'CRM';
  end;
end;

function WebServiceTipoCodigoToEnum(var AOk: Boolean; const ACodigo: string): TWebServiceTipo;
begin
  AOk := False;
  for Result := Low(TWebServiceTipo) to High(TWebServiceTipo) do
  begin
    if WebServiceTipoToCodigo(Result) = ACodigo then
    begin
      AOk := True;
      Exit;
    end;
  end;
end;

function FinanceiroTipoToStr(const ATipo: TFinanceiroTipo): string;
begin
  case ATipo of
    fitRecebida: Result := 'RECEBIDA';
    fitAReceber: Result := 'A RECEBER';
        fitPaga: Result := 'PAGA';
      fitAPagar: Result := 'A PAGAR';
  end;
end;

function FinanceiroTipoToDescricao(const ATipo: TFinanceiroTipo): string;
begin
  case ATipo of
    fitRecebida: Result := 'Recebida';
    fitAReceber: Result := 'A Receber';
        fitPaga: Result := 'Paga';
      fitAPagar: Result := 'A Pagar';
  end;
end;

function FinanceiroTipoStrToEnum(const ACodigo: string): TFinanceiroTipo;
begin
  for Result := Low(TFinanceiroTipo) to High(TFinanceiroTipo) do
  begin
    if FinanceiroTipoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := fitNenhum;
end;

function FinanceiroTipoToSQL(const ATipos: TFinanceiroTipoSet): string;
var
  ATipo: TFinanceiroTipo;
begin
  Result := '';
  for ATipo in ATipos do
  begin
    if Result <> '' then
      Result := Result + ', ';
    Result := Result + QuotedStr(FinanceiroTipoToStr(ATipo));
  end;
end;

{$IFDEF wrConversao_ACBr}
function SchemaDFeAsSQL(ASchemas: array of TSchemaDFe): string;
var
  ASchema: TSchemaDFe;
begin
  Result := '';
  for ASchema in ASchemas do
  begin
    if Result <> '' then
      Result := Result + ', ';
    Result := Result + QuotedStr(SchemaDFeToCodigo(ASchema));
  end;
end;

function ManifestoDFeToDescricao(AManifesto: TpcnTpEvento): string;
begin
  case AManifesto of
    teManifDestConfirmacao:      Result := 'Confirmação da Operação';
    teManifDestCiencia:          Result := 'Ciência da Emissão';
    teManifDestDesconhecimento:  Result := 'Desconhecimento da Operação';
    teManifDestOperNaoRealizada: Result := 'Operação Não Realizada';
  end;
end;

function ManifestoDFeToCodigo(AManifesto: TpcnTpEvento): string;
begin
  case AManifesto of
    teManifDestConfirmacao:      Result := 'Confirmacao';
    teManifDestCiencia:          Result := 'Ciencia';
    teManifDestDesconhecimento:  Result := 'Desconhecimento';
    teManifDestOperNaoRealizada: Result := 'OperNaoRealizada';
  else
    //Caso o evento passado por parâmetro não seja um Manifesto, retorna a descrição do mesmo para não ficar em branco
    Result := TpEventoToDescStr(AManifesto);
  end;
end;

function SituacaoDFeToCodigo(ASituacao: TSituacaoDFe): string;
begin
  case ASituacao of
    TSituacaoDFe.snAutorizado: Result := 'Autorizado';
    TSituacaoDFe.snDenegado:   Result := 'Denegado';
    TSituacaoDFe.snCancelado:  Result := 'Cancelado';
    TSituacaoDFe.snEncerrado:  Result := 'Encerrado';
  end;
end;

function SchemaDFeToCodigo(ASchema: TSchemaDFe): string;
begin
  case ASchema of
    schresNFe:         Result := 'resNFe';
    schresEvento:      Result := 'resEvento';
    schprocNFe:        Result := 'procNFe';
    schprocEventoNFe:  Result := 'procEventoNFe';
    schresCTe:         Result := 'resCTe';
    schprocCTe:        Result := 'procCTe';
    schprocCTeOS:      Result := 'procCTeOS';
    schprocEventoCTe:  Result := 'procEventoCTe';
    schresMDFe:        Result := 'resMDFe';
    schprocMDFe:       Result := 'procMDFe';
    schprocEventoMDFe: Result := 'procEventoMDFe';
    schresBPe:         Result := 'resBPe';
    schprocBPe:        Result := 'procBPe';
    schprocEventoBPe:  Result := 'procEventoBPe';
  end;
end;

function SchemaDFeFromCodigo(var AOk: Boolean; ACodigo: string): TSchemaDFe;
begin
  AOk := False;
  for Result := Low(TSchemaDFe) to High(TSchemaDFe) do
  begin
    if SchemaDFeToCodigo(Result) = ACodigo then
    begin
      AOk := True;
      Exit;
    end;
  end;
end;

{$ENDIF}
    {
function ProdutoVinculoMedidaToStr(const AItem: TProdutoVinculoMedida): string;
begin
  case AItem of
    pvmComprimento:  Result := 'C';
    pvmLargura:      Result := 'L';
    pvmEspessura:    Result := 'E';
    pvmQtdadePeca:   Result := 'P';
    pvmPerimetro:    Result := 'T';
    pvmQuant:        Result := 'Q';
    pvmAreaQuadrada: Result := '2';
    pvmAreaCubica:   Result := '3';
  end;
end;

function ProdutoVinculoMedidaToCampo(const AItem: TProdutoVinculoMedida): string;
begin
  case AItem of
    pvmComprimento:  Result := ProdutoMedidaToCampo(pmComprimento);
    pvmLargura:      Result := ProdutoMedidaToCampo(pmLargura);
    pvmEspessura:    Result := ProdutoMedidaToCampo(pmEspessura);
    pvmQtdadePeca:   Result := ProdutoMedidaToCampo(pmQtdadePeca);
    pvmPerimetro:    Result := 'Perimetro';    //CalcField
    pvmQuant:        Result := ProdutoMedidaToCampo(pmQuant);
    pvmAreaQuadrada: Result := 'AreaQuadrada'; //CalcField
    pvmAreaCubica:   Result := 'AreaCubica';   //CalcField
  end;
end;

function ProdutoVinculoMedidaStrToEnum(var AOk: Boolean; const AStr: string): TProdutoVinculoMedida;
begin
  AOk := False;
  for Result := Low(TProdutoVinculoMedida) to High(TProdutoVinculoMedida) do
  begin
    if ProdutoVinculoMedidaToStr(Result) = AStr then
    begin
      AOk := True;
      Exit;
    end;
  end;
end;

function ProdutoVinculoMedidaCampoToEnum(const ACampo: string): TProdutoVinculoMedida;
begin
  for Result := Low(TProdutoVinculoMedida) to High(TProdutoVinculoMedida) do
  begin
    if ProdutoVinculoMedidaToCampo(Result) = ACampo then
      Exit;
  end;
end;

function ProdutoLocalMovimentoEstoqueToHint(AItem: TProdutoLocalMovimentoEstoque): string;
begin
  case AItem of
    pmeVenda:    Result := 'Movimenta o estoque no momento em que a Venda for faturada';
    pmeProducao: Result := 'Movimenta o estoque durante a produção, em cada etapa, ou ao finalizar a produção';
  end;
end;

function ProdutoLocalMovimentoEstoqueGetHintCompleto: string;
var
  ALocal: TProdutoLocalMovimentoEstoque;
begin
  Result := 'Locais de Movimento de Estoque:' + sLineBreak + sLineBreak;
  for ALocal := Low(TProdutoLocalMovimentoEstoque) to High(TProdutoLocalMovimentoEstoque) do
    Result := Result + ProdutoLocalMovimentoEstoqueToDescricao(ALocal) + ': ' + ProdutoLocalMovimentoEstoqueToHint(ALocal) + sLineBreak;
end;

function ProdutoLocalMovimentoEstoqueToStr(AItem: TProdutoLocalMovimentoEstoque): string;
begin
  case AItem of
    pmeVenda:    Result := 'VENDA';
    pmeProducao: Result := 'PRODUCAO';
  end;
end;

function ProdutoLocalMovimentoEstoqueToDescricao(AItem: TProdutoLocalMovimentoEstoque): string;
begin
  case AItem of
    pmeVenda:    Result := 'Ao faturar a Venda';
    pmeProducao: Result := 'Etapas de Produção';
  end;
end;

function ProdutoLocalMovimentoEstoqueStrToEnum(AStr: string): TProdutoLocalMovimentoEstoque;
begin
  for Result := Low(TProdutoLocalMovimentoEstoque) to High(TProdutoLocalMovimentoEstoque) do
  begin
    if ProdutoLocalMovimentoEstoqueToStr(Result) = AStr then
      Exit;
  end;
  Result := pmeVenda;
end;      }

function RecursoTipoToStr(AItem: TRecursoTipo): string;
begin
  case AItem of
     rtPessoa: Result := 'PESSOA';
    rtProduto: Result := 'PRODUTO';
  end;
end;

function RecursoTipoToDescricao(AItem: TRecursoTipo): string;
begin
  case AItem of
     rtPessoa: Result := 'Pessoa';
    rtProduto: Result := 'Produto';
  end;
end;

function RecursoTipoStrToEnum(const AStr: string): TRecursoTipo;
begin
  for Result := Low(TRecursoTipo) to High(TRecursoTipo) do
  begin
    if RecursoTipoToStr(Result) = AStr then
      Exit;
  end;
  Result := rtPessoa;
end;

function RecursoTipoStrToDescricao(const AStr: string): string;
begin
  Result := RecursoTipoToDescricao(RecursoTipoStrToEnum(AStr));
end;

{$IFDEF wrConversao_ACBr}
function ModFreteToDescricao(const AModFrete: TpcnModalidadeFrete): string;
begin
  case AModFrete of
          mfContaEmitente: Result := 'Contratação do Frete por conta do Remetente (CIF)';
      mfContaDestinatario: Result := 'Contratação do Frete por conta do Destinatário (FOB)';
         mfContaTerceiros: Result := 'Contratação do Frete por conta de Terceiros';
       mfProprioRemetente: Result := 'Transporte Próprio por conta do Remetente';
    mfProprioDestinatario: Result := 'Transporte Próprio por conta do Destinatário';
               mfSemFrete: Result := 'Sem Ocorrência de Transporte';
  end;
end;

function FinalidadeNFeToDescricao(const AFinNFe: TpcnFinalidadeNFe): string;
begin
  case AFinNFe of
          fnNormal: Result := 'Normal';
    fnComplementar: Result := 'Complementar';
          fnAjuste: Result := 'Ajuste / Estorno';
       fnDevolucao: Result := 'Devolução';
  end;
end;

function IndIncentivoToDescricao(const t: TpcnindIncentivo): String;
begin
  case t of
    iiSim: Result := 'Sim';
    iiNao: Result := 'Não';
  end;
end;

function ISSRetidoToDescricao(const t: TpcnindISSRet): String;
begin
  case t of
    iirSim: Result := 'Sim';
    iirNao: Result := 'Não';
  end;
end;

function modBCSTToDescricao(const AItem: TpcnDeterminacaoBaseIcmsST): string;
begin
  case AItem of
    dbisPrecoTabelado: Result := 'Preço Tabelado ou Máx. Sugerido';
    dbisListaNegativa: Result := 'Lista Negativa (Valor)';
    dbisListaPositiva: Result := 'Lista Positiva (Valor)';
    dbisListaNeutra: Result := 'Lista Neutra (Valor)';
    dbisMargemValorAgregado: Result := 'Margem Valor Agregado (%)';
    dbisPauta: Result := 'Pauta (Valor)';
    dbisValordaOperacao: Result := 'Valor da Operação';
  end;
end;

function OrigemMercadoriaToDescricao(const t: TpcnOrigemMercadoria): string;
begin
  result := EnumeradoToStr(t, ['Nacional', 'Estrangeira - Importação direta', 'Estrangeira - Adquirida no Brasil',
  'Nacional - Conteúdo importado superior a 40%', 'Nacional - Processos básicos',
  'Nacional - Conteúdo importado inferior ou igual a 40%', 'Estrangeira - Importação direta sem similar nacional',
  'Estrangeira - Adquirida no Brasil sem similar nacional', 'Nacional - Conteúdo importado superior a 70%'],
    [oeNacional, oeEstrangeiraImportacaoDireta, oeEstrangeiraAdquiridaBrasil, oeNacionalConteudoImportacaoSuperior40,
     oeNacionalProcessosBasicos, oeNacionalConteudoImportacaoInferiorIgual40, oeEstrangeiraImportacaoDiretaSemSimilar,
     oeEstrangeiraAdquiridaBrasilSemSimilar, oeNacionalConteudoImportacaoSuperior70]);
end;

function modBCToDescricao(const t: TpcnDeterminacaoBaseIcms): string;
begin
  result := EnumeradoToStr(t, ['Margem Valor Agregado (%)', 'Pauta (Valor)', 'Preço Tabelado Máx. (Valor)', 'Valor da Operação'],
    [dbiMargemValorAgregado, dbiPauta, dbiPrecoTabelado, dbiValorOperacao]);
end;

function TipoNFeToDescricao(const AItem: TpcnTipoNFe): string;
begin
  case AItem of
    tnEntrada: Result := 'Entrada';
    tnSaida:   Result := 'Saída';
  end;
end;

function TipoAmbienteToDescricao(AItem: TpcnTipoAmbiente): string;
begin
  case AItem of
    taProducao:    Result := 'Produção';
    taHomologacao: Result := 'Homologação';
  end;
end;

function ISSQNcSitTribToDescricao(AItem: TpcnISSQNcSitTrib): string;
begin
  case AItem of
    ISSQNcSitTribVazio:      Result := 'Vazio';
    ISSQNcSitTribNORMAL:     Result := 'Normal';
    ISSQNcSitTribRETIDA:     Result := 'Retida';
    ISSQNcSitTribSUBSTITUTA: Result := 'Substituta';
    ISSQNcSitTribISENTA:     Result := 'Isenta';
  end;
end;
{$ENDIF}

function VendaComissaoModoCobrancaToStr(AModo: TVendaComissaoModoCobranca): string;
begin
  case AModo of
    vcmcAcrescimo: Result := 'ACRESCIMO';
    vcmcServico:   Result := 'SERVICO';
  end;
end;

function VendaComissaoModoCobrancaToDescricao(AModo: TVendaComissaoModoCobranca): string;
begin
  case AModo of
    vcmcAcrescimo: Result := 'Acréscimo no Produto';
    vcmcServico:   Result := 'Inclusão de Serviço';
  end;
end;

function VendaComissaoModoCobrancaStrToEnum(const ACodigo: string): TVendaComissaoModoCobranca;
begin
  for Result := Low(TVendaComissaoModoCobranca) to High(TVendaComissaoModoCobranca) do
  begin
    if VendaComissaoModoCobrancaToStr(Result) = ACodigo then
      Exit;
  end;
  Result := vcmcAcrescimo;
end;

function  VendaTipoModeloToStr(AModelo: TVendaTipoModelo): string;
begin
  {ATENÇÃO - já existiu um tipo com código 'RESUMO' que foi alterado para 'GRUPO'.
   Com a alteração, foi feito um SQL de Update (versão 471) na tabela VENDA_PRODUTO atualizando tudo que está como
   RESUMO para GRUPO.
   NÃO UTILIZAR MAIS algum tipo com código RESUMO, pois se voltar a versão do banco no SQL, este será alterado para GRUPO
   novamente.}
  case AModelo of
         vtmVenda: Result := 'VENDA';
     vtmOrcamento: Result := 'ORCAMENTO';
    vtmNotaFiscal: Result := 'NOTA FISCAL';
  end;
end;

function VendaTipoModeloToDescricao(AModelo: TVendaTipoModelo): string;
begin
  case AModelo of
         vtmVenda: Result := 'Venda';
     vtmOrcamento: Result := 'Orçamento';
    vtmNotaFiscal: Result := 'Nota Fiscal';
  end;
end;

function VendaTipoModeloStrToEnum(const ACodigo: string): TVendaTipoModelo;
begin
  for Result := Low(TVendaTipoModelo) to High(TVendaTipoModelo) do
  begin
    if VendaTipoModeloToStr(Result) = ACodigo then
      Exit;
  end;
  Result := vtmVenda;
end;

function VendaTipoModeloToHintCompleto: string;
var
  AModelo: TVendaTipoModelo;
begin
  Result := 'Modelos de Tipos:' + sLineBreak + sLineBreak;
  for AModelo := Low(TVendaTipoModelo) to High(TVendaTipoModelo) do
    Result := Result + VendaTipoModeloToDescricao(AModelo) + ': ' + VendaTipoModeloToHint(AModelo) + sLineBreak;
end;

function VendaTipoModeloToHint(AModelo: TVendaTipoModelo): string;
begin
  case AModelo of
         vtmVenda: Result := 'Venda de Produtos e/ou Serviços. Pode ser emitido Nota Fiscal.';
     vtmOrcamento: Result := 'Pedido de Orçamento.';
    vtmNotaFiscal: Result := 'Pedido de Nota Fiscal. Não movimenta estoque e não gera Financeiro.';
  end;
end;

{ TVendaSituacaoFinanceiraHelper }

function VendaSituacaoFinanceiraToStr(ASituacao: TVendaSituacaoFinanceira): string;
begin
  case ASituacao of
    //É o mesmo da Descrição...
    vsfAFaturar: Result := 'A Faturar';
    vsfEmAberto: Result := 'Em Aberto';
    vsfQuitada:  Result := 'Quitada';
  end;
end;

function VendaSituacaoFinanceiraToDescricao(ASituacao: TVendaSituacaoFinanceira): string;
begin
  case ASituacao of
    vsfAFaturar: Result := 'A Faturar';
    vsfEmAberto: Result := 'Em Aberto';
    vsfQuitada:  Result := 'Quitada';
  end;
end;

function VendaSituacaoFinanceiraStrToEnum(const ACodigo: string): TVendaSituacaoFinanceira;
begin
  for Result := Low(TVendaSituacaoFinanceira) to High(TVendaSituacaoFinanceira) do
  begin
    if VendaSituacaoFinanceiraToStr(Result) = ACodigo then
      Exit;
  end;
  Result := vsfQuitada;
end;

function VendaTipoEntradaSaidaToStr(const ATipo: TVendaTipoEntradaSaida): string;
begin
  case ATipo of
      vtesSaida: Result := 'S';
    vtesEntrada: Result := 'E';
  end;
end;

function VendaTipoEntradaSaidaToDescricao(const ATipo: TVendaTipoEntradaSaida): string;
begin
  case ATipo of
      vtesSaida: Result := 'Saída';
    vtesEntrada: Result := 'Entrada';
  end;
end;

function VendaTipoEntradaSaidaStrToEnum(const ACodigo: string): TVendaTipoEntradaSaida;
begin
  for Result := Low(TVendaTipoEntradaSaida) to High(TVendaTipoEntradaSaida) do
  begin
    if VendaTipoEntradaSaidaToStr(Result) = ACodigo then
      Exit;
  end;
  Result := vtesSaida;
end;

function ProdutoFormulaMedidaToStr(const AItem: TProdutoFormulaMedida): Variant;
begin
  case AItem of
    pfmNaoUsaFormula: Result := Null;
    pfmIgual:         Result := 'IGUAL';
    pfmMultiplica:    Result := 'MULTIPLICA';
    pfmACada:         Result := 'A_CADA';
    pfmProporcional:  Result := 'PROPORCIONAL';
    pfmPersonalizada: Result := 'PERSONALIZADA';
  end;
end;

function ProdutoFormulaMedidaToDescricao(const AItem: TProdutoFormulaMedida): string;
begin
  case AItem of
    pfmNaoUsaFormula: Result := 'Não usa Fórmula';
    pfmIgual:         Result := 'Igual';
    pfmMultiplica:    Result := 'Multiplica';
    pfmACada:         Result := 'A Cada';
    pfmProporcional:  Result := 'Proporcional';
    pfmPersonalizada: Result := 'Personalizada';
  end;
end;

function ProdutoFormulaMedidaStrToEnum(const ACodigo: string): TProdutoFormulaMedida;
begin
  for Result := Low(TProdutoFormulaMedida) to High(TProdutoFormulaMedida) do
  begin
    if VarToStrDef(ProdutoFormulaMedidaToStr(Result), '') = ACodigo then
      Exit;
  end;
  Result := pfmNaoUsaFormula;
end;

function ProdutoMedidaToCampo(const AItem: TProdutoMedida): string;
begin
  case AItem of
    pmComprimento: Result := 'COMP';
    pmLargura:     Result := 'LARG';
    pmEspessura:   Result := 'ESPESSURA';
    pmQtdadePeca:  Result := 'QTDADEPECA';
    pmQuant:       Result := 'QUANT';
  end;
end;

function ProdutoMedidaToStr(const AItem: TProdutoMedida): string;
begin
  case AItem of
    pmComprimento: Result := 'COMP';
    pmLargura:     Result := 'LARG';
    pmEspessura:   Result := 'ESPESSURA';
    pmQtdadePeca:  Result := 'QTDADEPECA';
    pmQuant:       Result := 'QUANT';
  end;
end;

function ProdutoMedidaCampoToEnum(const ACampo: string): TProdutoMedida;
begin
  for Result := Low(TProdutoMedida) to High(TProdutoMedida) do
  begin
    if ProdutoMedidaToCampo(Result) = ACampo then
      Exit;
  end;
end;

function ProdutoMedidaStrToEnum(var AOk: Boolean; const ACodigo: string): TProdutoMedida;
begin
  AOk := False;
  for Result := Low(TProdutoMedida) to High(TProdutoMedida) do
  begin
    if ProdutoMedidaToStr(Result) = ACodigo then
    begin
      AOk := True;
      Exit;
    end;
  end;
end;

function ProdutoFormulaArredondamentoToStr(AItem: TProdutoFormulaArredondamento): Variant;
begin
  case AItem of
    pfaNaoArredonda:       Result := Null;
    pfaArredonda:          Result := 'ARREDONDA';
    pfaArredondaParaCima:  Result := 'ARREDONDA_PARA_CIMA';
    pfaArredondaParaBaixo: Result := 'ARREDONDA_PARA_BAIXO';
  end;
end;

function ProdutoFormulaArredondamentoToDescricao(AItem: TProdutoFormulaArredondamento): string;
begin
  case AItem of
    pfaNaoArredonda:       Result := 'Não Arredonda';
    pfaArredonda:          Result := 'Arredonda';
    pfaArredondaParaCima:  Result := 'Arredonda para Cima';
    pfaArredondaParaBaixo: Result := 'Arredonda para Baixo';
  end;
end;

function ProdutoFormulaArredondamentoStrToEnum(const ACodigo: string): TProdutoFormulaArredondamento;
begin
  for Result := Low(TProdutoFormulaArredondamento) to High(TProdutoFormulaArredondamento) do
  begin
    if VarToStrDef(ProdutoFormulaArredondamentoToStr(Result), '') = ACodigo then
      Exit;
  end;
  Result := pfaNaoArredonda;
end;
    {
function ProdutoCustoAdicionalTipoToStr(const ATipo: TProdutoCustoAdicionalTipo): string;
begin
  case ATipo of
     pcatValorFixo: Result := 'VALOR_FIXO';
    pcatPercentual: Result := 'PERCENTUAL';
  end;
end;

function ProdutoCustoAdicionalTipoToDescricao(const ATipo: TProdutoCustoAdicionalTipo): string;
begin
  case ATipo of
     pcatValorFixo: Result := 'Adiciona Valor Fixo';
    pcatPercentual: Result := 'Percentual';
  end;
end;

function ProdutoCustoAdicionalTipoStrToEnum(const ACodigo: string): TProdutoCustoAdicionalTipo;
begin
  for Result := Low(TProdutoCustoAdicionalTipo) to High(TProdutoCustoAdicionalTipo) do
  begin
    if ProdutoCustoAdicionalTipoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := pcatValorFixo;
end;

function ProdutoCustoAdicionalTipoToHintCompleto: string;
var
  ATipo: TProdutoCustoAdicionalTipo;
begin
  Result := '';
  for ATipo := Low(TProdutoCustoAdicionalTipo) to High(TProdutoCustoAdicionalTipo) do
  begin
    if ProdutoCustoAdicionalTipoToHint(ATipo) = '' then
      Continue;
    if Result <> '' then
      Result := Result + sLineBreak;
    Result := Result + ProdutoCustoAdicionalTipoToDescricao(ATipo) + ': ' + ProdutoCustoAdicionalTipoToHint(ATipo);
  end;
end;

function ProdutoCustoAdicionalTipoToHint(const ATipo: TProdutoCustoAdicionalTipo): string;
begin
  case ATipo of
     pcatValorFixo: Result := 'Valor fixo do Custo inicial, não se altera conforme o valor do produto.';
    pcatPercentual: Result := 'Percentual aplicado sobre o Custo inicial do produto.';
  end;
end;    }

function TipoTabelaPrecoToStr(ATipo: TTipoTabelaPreco): string;
begin
  case ATipo of
    //No sistema foi usado a descrição como código... ver se é possível migrar
        ttpAte: Result := 'Até';
    ttpAcimaDe: Result := 'Acima de';
  end;
end;

function TipoTabelaPrecoToDescricao(ATipo: TTipoTabelaPreco): string;
begin
  case ATipo of
        ttpAte: Result := 'Até';
    ttpAcimaDe: Result := 'Acima de';
  end;
end;

function TipoTabelaPrecoStrToEnum(const ACodigo: string): TTipoTabelaPreco;
begin
  for Result := Low(TTipoTabelaPreco) to High(TTipoTabelaPreco) do
  begin
    if AnsiUpperCase(TipoTabelaPrecoToStr(Result)) = AnsiUpperCase(ACodigo) then
      Break;
  end;
end;

{ TCustoAdicionalTipoHelper }
  {
function CustoAdicionalClassificacaoToSQL(const AClassificacoes: TArray<TCustoAdicionalClassificacao>): string;
var
  AClassificacao: TCustoAdicionalClassificacao;
begin
  Result := '';
  for AClassificacao in AClassificacoes do
  begin
    if Result <> '' then
      Result := Result + ', ';
    Result := Result + QuotedStr(CustoAdicionalClassificacaoToStr(AClassificacao));
  end;
  if Result = '' then
    Result := QuotedStr('');
end;

function CustoAdicionalClassificacaoToCampo(AItem: TCustoAdicionalClassificacao): string;
begin
  case AItem of
    cacImpostoIPI,
    cacImpostoST:  Result := 'IMPOSTOS';
    cacFrete:      Result := 'FRETE';
    cacDesconto:   Result := 'DESCONTO';
    cacComissao:   Result := 'COMISSAO';
    cacFinanceiro: Result := 'FINANCEIRO';
    cacFixo:       Result := 'FIXO';
    cacVariavel:   Result := 'VARIAVEL';
  else
    Result := 'OUTROS';
  end;
end;

function CustoAdicionalClassificacaoToStr(AItem: TCustoAdicionalClassificacao): string;
begin
  case AItem of
    cacOutro:           Result := 'OUTRO';
    cacFrete:           Result := 'FRETE';
    cacImpostoIPI:      Result := 'IMPOSTO_IPI';
    cacImpostoST:       Result := 'IMPOSTO_ST';
    cacDesconto:        Result := 'DESCONTO';
    cacDescontoVenda:   Result := 'DESCONTO_VENDA';
    cacComissao:        Result := 'COMISSAO';
    cacFinanceiro:      Result := 'FINANCEIRO';
    cacFixo:            Result := 'FIXO';
    cacVariavel:        Result := 'VARIAVEL';
    cacAcrescimo:       Result := 'ACRESCIMO';
    cacAcrescimoVenda:  Result := 'ACRESCIMO_VENDA';
    cacNFOutrasDespesasAcessorias: Result := 'NF_OUTRAS_DESPESAS';
  end;
end;

function CustoAdicionalClassificacaoToDescricao(AItem: TCustoAdicionalClassificacao): string;
begin
  case AItem of
    cacOutro:           Result := 'Outro';
    cacFrete:           Result := 'Frete';
    cacImpostoIPI:      Result := 'Imposto IPI';
    cacImpostoST:       Result := 'Imposto ICMS ST';
    cacDesconto:        Result := 'Desconto';
    cacDescontoVenda:   Result := 'Desconto aplicado na Venda';
    cacComissao:        Result := 'Comissão';
    cacFinanceiro:      Result := 'Financeiro';
    cacFixo:            Result := 'Fixo';
    cacVariavel:        Result := 'Variável';
    cacAcrescimo:       Result := 'Acréscimo';
    cacAcrescimoVenda:  Result := 'Acréscimo aplicado na Venda';
    cacNFOutrasDespesasAcessorias: Result := 'Outras Despesas Acessórias da NF';
  end;
end;

function ProdutoCustoExtraToDescricao(const AItem: TProdutoCustoExtra): string;
begin
  case AItem of
    pceCompraOutro:                      Result:= 'COMPRA - Outro';
    pceCompraFrete:                      Result:= 'COMPRA - Frete';
    pceCompraImpostoIPI:                 Result:= 'COMPRA - Imposto IPI';
    pceCompraImpostoST:                  Result:= 'COMPRA - Imposto ICMS ST';
    pceCompraDesc:                       Result:= 'COMPRA - Desconto';
    pceVendaOutro:                       Result:= 'VENDA - Outro';
    pceVendaDesc:                        Result:= 'VENDA - Desconto';
    pceVendaImpostoIPI:                  Result:= 'VENDA - Imposto IPI';
    pceVendaImpostoST:                   Result:= 'VENDA - Imposto ICMS ST';
    pceVendaFixo:                        Result:= 'VENDA - Custo Fixo';
    pceVendaVariavel:                    Result:= 'VENDA - Custo Variável'; // Vai ser usado como erros de produção
    pceVendaFinanceiro:                  Result:= 'VENDA - Custo Financeiro';
    pceVendaComissaoRepresentante:       Result:= 'VENDA - Comissão Representante';
    pceVendaComissaoFuncionario:         Result:= 'VENDA - Comissão Funcionário';
    pceVendaComissaoAgencia:             Result:= 'VENDA - Agência';
    pceVendaComissaoPosVenda:            Result:= 'VENDA - Comissão pós Venda';
    pceVendaFrete:                       Result:= 'VENDA - Frete';
  end;
end;

function ProdutoCustoExtraToEnum(ACampo, ACompraVenda :String): String;
begin
  if ACompraVenda = 'COMPRA' then
  begin
    case IndexStr(ACampo,['NF_VICMSST', 'NF_IPI_VIPI', 'NF_VFRETE', 'VOUTRO', 'VDESC']) of
      0:                            Result:= ProdutoCustoExtraToDescricao(pceCompraImpostoST);
      1:                            Result:= ProdutoCustoExtraToDescricao(pceCompraImpostoIPI);
      2:                            Result:= ProdutoCustoExtraToDescricao(pceCompraFrete);
      3:                            Result:= ProdutoCustoExtraToDescricao(pceCompraOutro);
      4:                            Result:= ProdutoCustoExtraToDescricao(pceCompraDesc);
    end;
  end;
  if ACompraVenda = 'VENDA' then
  begin
    case IndexStr(ACampo,['VICMSST', 'IPI_VIPI', 'NF_FRETE', 'VOUTRO', 'VDESC', 'PERC_CUSTO_FIXO', 'PERC_CUSTO_FINANCEIRO', 'PERC_CUSTO_VARIAVEL']) of
      0:                            Result:= ProdutoCustoExtraToDescricao(pceVendaImpostoST);
      1:                            Result:= ProdutoCustoExtraToDescricao(pceVendaImpostoIPI);
      2:                            Result:= ProdutoCustoExtraToDescricao(pceVendaFrete);
      3:                            Result:= ProdutoCustoExtraToDescricao(pceVendaOutro);
      4:                            Result:= ProdutoCustoExtraToDescricao(pceVendaDesc);
      5:                            Result:= ProdutoCustoExtraToDescricao(pceVendaFixo);
      6:                            Result:= ProdutoCustoExtraToDescricao(pceVendaFinanceiro);
      7:                            Result:= ProdutoCustoExtraToDescricao(pceVendaVariavel);
    end;
  end;
end;

function CustoAdicionalClassificacaoStrToEnum(const ACodigo: string): TCustoAdicionalClassificacao;
begin
  for Result := Low(TCustoAdicionalClassificacao) to High(TCustoAdicionalClassificacao) do
  begin
    if CustoAdicionalClassificacaoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := cacOutro;
end;

function CustoAdicionalClassificacaoStrToDescricao(const ACodigo: string): string;
begin
  result:= CustoAdicionalClassificacaoToDescricao(CustoAdicionalClassificacaoStrToEnum(ACodigo));
end;

function CustoAdicionalClassificacaoDescricaoToEnum(const ACodigo: string): TCustoAdicionalClassificacao;
begin
  for Result := Low(TCustoAdicionalClassificacao) to High(TCustoAdicionalClassificacao) do
  begin
    if CustoAdicionalClassificacaoToDescricao(Result) = ACodigo then
      Exit;
  end;
  Result := cacOutro;
end;

function ProdutoCustoAdicionalContextoToCampo(AContexto: TProdutoCustoAdicionalContexto): string;
begin
  case AContexto of
    pcacCompra: Result := 'INICIAL';
    pcacVenda:  Result := 'VENDA';
  end;
end;

function ProdutoCustoAdicionalContextoToStr(AContexto: TProdutoCustoAdicionalContexto): string;
begin
  case AContexto of
    pcacCompra: Result := 'INICIAL';
    pcacVenda:  Result := 'VENDA';
  end;
end;

function ProdutoCustoAdicionalContextoToDescricao(AContexto: TProdutoCustoAdicionalContexto): string;
begin
  case AContexto of
    pcacCompra: Result := 'Compra';
    pcacVenda:  Result := 'Venda';
  end;
end;

function ProdutoCustoAdicionalContextoStrToEnum(const ACodigo: string): TProdutoCustoAdicionalContexto;
begin
  for Result := Low(TProdutoCustoAdicionalContexto) to High(TProdutoCustoAdicionalContexto) do
  begin
    if ProdutoCustoAdicionalContextoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := pcacVenda; //Caso seja inválido, a Venda sempre é o padrão!
end;    }

function NotaFiscalTipoRegistroToSQL(const ATipos: array of TNotaFiscalTipoRegistro): string;
var
  ATipo: TNotaFiscalTipoRegistro;
  ALista: TStringList;
begin
  ALista := TStringList.Create;
  try
    for ATipo in ATipos do
      ALista.Add(NotaFiscalTipoRegistroToStr(ATipo));
    {$IF Defined(COMERCIAL)}
    Result := ALista.QuotedList;
    {$IFEND}
  finally
    ALista.Free;
  end;
  if Result = '' then
    Result := QuotedStr('');
end;

function NotaFiscalTipoRegistroToStr(ATipo: TNotaFiscalTipoRegistro): string;
begin
  case ATipo of
    nftrNFe:              Result := 'NFe';
    nftrNFSe:             Result := 'NFSe';
    nftrNFCe:             Result := 'NFCe';
    nftrCCe:              Result := 'CCe';
    nftrNFeCancelamento:  Result := 'NFeCancel';
    nftrNFeInutilizacao:  Result := 'NFeInut';
    nftrNFSeCancelamento: Result := 'NFSeCancel';
    nftrSAT:              Result := 'CFeSAT';
    nftrSATCancelamento:  Result := 'CFeSATCancel';
    nftrOutro:            Result := 'Outro';
  end;
end;

function NotaFiscalTipoRegistroToDescricao(ATipo: TNotaFiscalTipoRegistro): string;
begin
  case ATipo of
    nftrNFe:              Result := 'NFe';
    nftrNFSe:             Result := 'NFSe';
    nftrNFCe:             Result := 'NFCe';
    nftrCCe:              Result := 'Carta de Correção';
    nftrNFeCancelamento:  Result := 'NFe Cancelamento';
    nftrNFeInutilizacao:  Result := 'NFe Inutilização';
    nftrNFSeCancelamento: Result := 'NFSe Cancelamento';
    nftrSAT:              Result := 'SAT';
    nftrSATCancelamento:  Result := 'SAT Cancelamento';
    nftrOutro:            Result := 'Outro';
  end;
end;

function NotaFiscalTipoRegistroStrToEnum(const ACodigo: string): TNotaFiscalTipoRegistro;
begin
  for Result := Low(TNotaFiscalTipoRegistro) to High(TNotaFiscalTipoRegistro) do
  begin
    if NotaFiscalTipoRegistroToStr(Result) = ACodigo then
      Exit;
  end;
  Result := nftrOutro;
end;

function ACBrTipoItemToStr(ATipo: TWRACBrTipoItem): string;
begin
  case ATipo of
    tiMercadoriaRevenda:    Result :=  '00';
    tiMateriaPrima:         Result :=  '01';
    tiEmbalagem:            Result :=  '02';
    tiProdutoProcesso:      Result :=  '03';
    tiProdutoAcabado:       Result :=  '04';
    tiSubproduto:           Result :=  '05';
    tiProdutoIntermediario: Result :=  '06';
    tiMaterialConsumo:      Result :=  '07';
    tiAtivoImobilizado:     Result :=  '08';
    tiServicos:             Result :=  '09';
    tiOutrosInsumos:        Result :=  '10';
    tiOutras:               Result :=  '99';
  end;
end;

function ACBrTipoItemToDescricao(ATipo: TWRACBrTipoItem): string;
begin
  case ATipo of

    tiMercadoriaRevenda:    Result :=  'Mercadoria para Revenda';
    tiMateriaPrima:         Result :=  'Matéria-Prima';
    tiEmbalagem:            Result :=  'Embalagem';
    tiProdutoProcesso:      Result :=  'Produto em Processo';
    tiProdutoAcabado:       Result :=  'Produto Acabado';
    tiSubproduto:           Result :=  'Subproduto';
    tiProdutoIntermediario: Result :=  'Produto Intermediário';
    tiMaterialConsumo:      Result :=  'Material de Uso e Consumo';
    tiAtivoImobilizado:     Result :=  'Ativo Imobilizado';
    tiServicos:             Result :=  'Serviços';
    tiOutrosInsumos:        Result :=  'Outros Insumos';
    tiOutras:               Result :=  'Outras';
  end;
end;




function ACBrTipoItemDescricaoToEnum(const s: string): TWRACBrTipoItem;
begin
  for Result := Low(TWRACBrTipoItem) to High(TWRACBrTipoItem) do
  begin
    if ACBrTipoItemToDescricao(Result) = s then
      Exit;
  end;
  Result := tiOutras;
end;

function ACBrTipoItemStrToEnum(const ACodigo: string): TWRACBrTipoItem;
begin
  for Result := Low(TWRACBrTipoItem) to High(TWRACBrTipoItem) do
  begin
    if ACBrTipoItemToStr(Result) = ACodigo then
      Exit;
  end;
  Result := tiOutras;
end;

{$IFDEF wrConversao_ACBr}
function NotaFiscalTipoRegistroTipoEventoToEnum(const ATipoEvento: TpcnTpEvento): TNotaFiscalTipoRegistro;
begin
  case ATipoEvento of
    TpcnTpEvento.teCCe:          Result := nftrCCe;
    TpcnTpEvento.teCancelamento : Result := nftrNFeCancelamento;
//    teCancelamento: Result := nftrNFeCancelamento;
  else
    Result := nftrOutro;
  end;
end;

function IssRetidoCadPessoasToEnum(const AISSRetidoCadastroPessoas: string): TnfseSituacaoTributaria;
begin
  {Os campos ISS_RETIDO pelo sistema estão todos errados. No cadastro de pessoas é varchar(15) contendo a literal do nome
   e na venda é um integer pelo índice do enumerator. Nenhum dos dois está correto. Fazer a migração destes campos e excluir
   esta rotina. Foi feita apenas paga "tapar buraco" até a correção ser feita}
  if AISSRetidoCadastroPessoas = 'Retido' then
    Result := stRetencao
  else if AISSRetidoCadastroPessoas = 'Substituicão' then
    Result := stSubstituicao
  else
    Result := stNormal;
end;
//TODO: Essas 2 rotinas até onde olhei, não são mais utilizadas e podem ser apagadas, ajustei os campos para usar o modelo do acbr
function IssRetidoEnumToCadPessoas(const AISSRetido: TnfseSituacaoTributaria): string;
begin
  {Vide IssRetidoCadPessoasToEnum}
  case AISSRetido of
    stRetencao:     Result := 'Retido';
    stNormal:       Result := 'Normal';
    stSubstituicao: Result := 'Substituicão';
  end;
end;
{$ENDIF}

{$IFDEF wrConversao_ACBr}
function CaracTituloToStr(const ACaracTitulo: TACBrCaracTitulo): string;
begin
  case ACaracTitulo of
    tcSimples:             Result := '0';
    tcVinculada:           Result := '1';
    tcCaucionada:          Result := '2';
    tcDescontada:          Result := '3';
    tcVendor:              Result := '4';
    tcDireta:              Result := '5';
    tcSimplesRapComReg:    Result := '6';
    tcCaucionadaRapComReg: Result := '7';
    tcDiretaEspecial:      Result := '8';
  end;
end;

function CaracTituloToDescricao(const ACaracTitulo: TACBrCaracTitulo): string;
begin
  {Entenda cada uma delas:
   https://blog.contaazul.com/tipos-de-carteiras-de-cobrancas-para-boletos}
  case ACaracTitulo of
    tcSimples:             Result := 'Simples';
    tcVinculada:           Result := 'Vinculada';
    tcCaucionada:          Result := 'Caucionada';
    tcDescontada:          Result := 'Descontada';
    tcVendor:              Result := 'Vendor';
    tcDireta:              Result := 'Direta';
    tcSimplesRapComReg:    Result := 'Simples (Rápida com Registro)';
    tcCaucionadaRapComReg: Result := 'Caucionada (Rápida com Registro)';
    tcDiretaEspecial:      Result := 'Direta Especial';
  end;
end;

function CaracTituloStrToEnum(const ACodigo: string): TACBrCaracTitulo;
begin
  for Result := Low(TACBrCaracTitulo) to High(TACBrCaracTitulo) do
  begin
    if CaracTituloToStr(Result) = ACodigo then
      Exit;
  end;
end;

function ResponEmissaoToStr(const AResponEmissao: TACBrResponEmissao): string;
begin
  case AResponEmissao of
    tbCliEmite:        Result := '0';
    tbBancoEmite:      Result := '1';
    tbBancoReemite:    Result := '2';
    tbBancoNaoReemite: Result := '3';
    tbBancoPreEmite:   Result := '4';
  end;
end;

function ResponEmissaoToDescricao(const AResponEmissao: TACBrResponEmissao): string;
begin
  case AResponEmissao of
    tbCliEmite:        Result := 'Cliente Emite';
    tbBancoEmite:      Result := 'Banco Emite';
    tbBancoReemite:    Result := 'Banco Reemite';
    tbBancoNaoReemite: Result := 'Banco Não Reemite';
    tbBancoPreEmite:   Result := 'Banco Pré-Emite';
  end;
end;

function ResponEmissaoStrToEnum(var ok: boolean; const s: string): TACBrResponEmissao;
begin
  ok := False;
  for Result := Low(TACBrResponEmissao) to High(TACBrResponEmissao) do
  begin
    if ResponEmissaoToStr(Result) = s then
    begin
      ok := True;
      Exit;
    end;
  end;
end;

function NFSeSimNaoToDescricao(const t: TnfseSimNao): string;
begin
  case t of
    snSim: Result := 'Sim';
    snNao: Result := 'Não';
  end;
end;

{$ENDIF}

function TipoLogoToStr(ATipo: TTipoLogo): string;
begin
  case ATipo of
       tplEmpresa: Result := 'LOGO';
    tplPrefeitura: Result := 'LOGO_PREF';
  end;
end;

function TipoLogoToDescricao(ATipo: TTipoLogo): string;
begin
  case ATipo of
       tplEmpresa: Result := 'Empresa';
    tplPrefeitura: Result := 'Prefeitura';
  end;
end;

function TipoArquivoFR3ToStr(ATipo: TTipoArquivoFR3): string;
begin
  case ATipo of
          tafr3DANFE: Result := 'DANFeRetrato.fr3';
         tafr3DANFSe: Result := 'DANFSeNovo.fr3';
        tafr3EVENTOS: Result := 'EVENTOS.fr3';
           tafr3Rave: Result := 'NotaFiscalEletronica.rav';
      tafr3DANFENFCe: Result := 'DANFeNFCe.fr3';
   tafr3INUTILIZACAO: Result := 'INUTILIZACAO.fr3';
        tafr3DANFSeX: Result := 'DANFSeX.fr3';
  end;
end;

function BoletosEmailTipoExibicaoDadosToStr(ATipo: TBoletosEmailTipoExibicaoDados): string;
begin
  case ATipo of
    betedColunas: Result := '0';
     betedLinhas: Result := '1';
  end;
end;

function BoletosEmailTipoExibicaoDadosToDescricao(ATipo: TBoletosEmailTipoExibicaoDados): string;
begin
  case ATipo of
    betedColunas: Result := 'Colunas';
     betedLinhas: Result := 'Linhas';
  end;
end;

function BoletosEmailTipoExibicaoDadosStrToEnum(const ACodigo: string): TBoletosEmailTipoExibicaoDados;
begin
  for Result := Low(TBoletosEmailTipoExibicaoDados) to High(TBoletosEmailTipoExibicaoDados) do
  begin
    if BoletosEmailTipoExibicaoDadosToStr(Result) = ACodigo then
      Exit;
  end;
  Result := betedColunas;
end;

function PrioridadeToStr(AItem: TPrioridade): Integer;
begin
  case AItem of
          prLembrete: Result := -3;
             prBaixo: Result := -2;
    prAbaixoDoNormal: Result := -1;
            prNormal: Result := 0;
     prAcimaDoNormal: Result := 1;
           prUrgente: Result := 2;
           prCritico: Result := 3;
  end;
end;

function PrioridadeToDescricao(AItem: TPrioridade): string;
begin
  case AItem of
    prLembrete:       Result := 'Lembrete';
    prBaixo:          Result := 'Baixo';
    prAbaixoDoNormal: Result := 'Abaixo do Normal';
    prNormal:         Result := 'Normal';
    prAcimaDoNormal:  Result := 'Acima do Normal';
    prUrgente:        Result := 'Urgente';
    prCritico:        Result := 'Crítico';
  end;
end;

function PrioridadeStrToEnum(ACodigo: Integer): TPrioridade;
begin
  for Result := Low(TPrioridade) to High(TPrioridade) do
  begin
    if PrioridadeToStr(Result) = ACodigo then
      Exit;
  end;
  Result := prNormal;
end;

function PrioridadeStrToDescricao(ACodigo: Integer): string;
begin
  Result := PrioridadeToDescricao(PrioridadeStrToEnum(ACodigo));
end;

function NotaFiscalModeloToStr(AMod: TNotaFiscalModelo): string;
begin
  case AMod of
    nfm00: Result := '';
    nfm01: Result := '01';
    nfm1B: Result := '1B';
    nfm02: Result := '02';
    nfm2D: Result := '2D';
    nfm2E: Result := '2E';
    nfm04: Result := '04';
    nfm06: Result := '06';
    nfm07: Result := '07';
    nfm08: Result := '08';
    nfm8B: Result := '8B';
    nfm09: Result := '09';
    nfm10: Result := '10';
    nfm11: Result := '11';
    nfm13: Result := '13';
    nfm14: Result := '14';
    nfm15: Result := '15';
    nfm16: Result := '16';
    nfm17: Result := '17';
    nfm18: Result := '18';
    nfm20: Result := '20';
    nfm21: Result := '21';
    nfm22: Result := '22';
    nfm23: Result := '23';
    nfm24: Result := '24';
    nfm25: Result := '25';
    nfm26: Result := '26';
    nfm27: Result := '27';
    nfm28: Result := '28';
    nfm29: Result := '29';
    nfm55: Result := '55';
    nfm57: Result := '57';
    nfm65: Result := '65';
  end;
end;

function NotaFiscalModeloToDescricao(AMod: TNotaFiscalModelo): string;
begin
  case AMod of
    nfm00: Result := 'Não especificado';
    nfm01: Result := '01 - Nota Fiscal';
    nfm1B: Result := '1B - Nota Fiscal Avulsa ';
    nfm02: Result := '02 - Nota Fiscal de Venda a Consumidor';
    nfm2D: Result := '2D - Cupom Fiscal';
    nfm2E: Result := '2E - Cupom Fiscal Bilhete de Passagem';
    nfm04: Result := '04 - Nota Fiscal de Produtor';
    nfm06: Result := '06 - Nota Fiscal/Conta de Energia Elétrica';
    nfm07: Result := '07 - Nota Fiscal de Serviço de Transporte';
    nfm08: Result := '08 - Conhecimento de Transporte Rodoviário de Cargas';
    nfm8B: Result := '8B - Conhecimento de Transporte de Cargas Avulso';
    nfm09: Result := '09 - Conhecimento de Transporte Aquaviário de Cargas';
    nfm10: Result := '10 - Conhecimento Aéreo';
    nfm11: Result := '11 - Conhecimento de Transporte Ferroviário de Cargas';
    nfm13: Result := '13 - Bilhete de Passagem Rodoviário';
    nfm14: Result := '14 - Bilhete de Passagem Aquaviário';
    nfm15: Result := '15 - Bilhete de Passagem e Nota de Bagagem';
    nfm16: Result := '16 - Bilhete de Passagem Ferroviário';
    nfm17: Result := '17 - Despacho de Transporte';
    nfm18: Result := '18 - Resumo Movimento Diário';
    nfm20: Result := '20 - Ordem de Coleta de Carga';
    nfm21: Result := '21 - Nota Fiscal de Serviço de Comunicação';
    nfm22: Result := '22 - Nota Fiscal de Serviço de Telecomunicações';
    nfm23: Result := '23 - GNRE';
    nfm24: Result := '24 - Autorização de Carregamento e Transporte';
    nfm25: Result := '25 - Manifesto de Carga';
    nfm26: Result := '26 - Conhecimento de Transporte Multimodal de Cargas';
    nfm27: Result := '27 - Nota Fiscal de Serviço de Transporte Ferroviário';
    nfm28: Result := '28 - Nota Fiscal/Conta de Fornecimento de Gás Canalizado';
    nfm29: Result := '29 - Nota Fiscal/Conta de Fornecimento D''água Canalizada';
    nfm55: Result := '55 - Nota Fiscal Eletrônica (NFe)';
    nfm57: Result := '57 - Conhecimento de Transporte Eletrônico (CTe)';
    nfm65: Result := '65 - Nota Fiscal de Consumidor Eletrônica (NFCe)';
  end;
end;

function NotaFiscalModeloStrToEnum(const ACodigo: string): TNotaFiscalModelo;
begin
  for Result := Low(TNotaFiscalModelo) to High(TNotaFiscalModelo) do
  begin
    if NotaFiscalModeloToStr(Result) = ACodigo then
      Exit;
  end;
  Result := nfm00;
end;

function ProducaoOperacaoToStr(const AOperacao: TProducaoOperacao): string;
begin
  case AOperacao of
          poProducaoNormal: Result := 'PRODUCAO_NORMAL';
    poCancelamentoProducao: Result := 'CANCELAMENTO_PRODUCAO';
                poRejeicao: Result := 'REJEICAO';
  end;
end;

function ProducaoOperacaoToDescricao(const AOperacao: TProducaoOperacao): string;
begin
  case AOperacao of
          poProducaoNormal: Result := 'Produção Normal';
    poCancelamentoProducao: Result := 'Cancelamento de Produção';
                poRejeicao: Result := 'Rejeição';
  end;
end;

function ProducaoOperacaoStrToEnum(const ACodigo: string): TProducaoOperacao;
begin
  for Result := Low(TProducaoOperacao) to High(TProducaoOperacao) do
  begin
    if ProducaoOperacaoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := poProducaoNormal;
end;

function ProducaoMaterialTipoUsoToStr(ATipo: TProducaoMaterialTipoUso): string;
begin
  case ATipo of
    pmtuUsoNormal:        Result := 'Fatura';  //Uso Normal
    pmtuReaproveitamento: Result := 'Rendimento'; //Aproveitamento
    pmtuDespesa:          Result := 'Despesa';
//    pmtuDesperdicio:      Result := 'Desperdício';
  end;
end;



function ProducaoMaterialTipoUsoStrToEnum(const ACodigo: string): TProducaoMaterialTipoUso;
begin
  for Result := Low(TProducaoMaterialTipoUso) to High(TProducaoMaterialTipoUso) do
  begin
    if ProducaoMaterialTipoUsoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := pmtuUsoNormal;
end;

function ProdutoTipoClassificacaoToStr(const AItem: TProduto_TipoClassificacao): string;
begin
  case AItem of
    ptcProduto:      Result := 'PRODUTO';
    ptcServico:      Result := 'SERVICO';
    ptcMateriaPrima: Result := 'MATERIAPRIMA';
    ptcPatrimonio:   Result := 'PATRIMONIO';
    ptcUsoeConsumo:  Result := 'USOECONSUMO';
    ptcComposicao:   Result := 'COMPOSICAO';
    ptcVariacao:     Result := 'VARIACAO';
    ptcPersonalizado:Result := 'PERSONALIZADO';
  end;
end;

function ProdutoTipoClassificacaoToDescricao(const AItem: TProduto_TipoClassificacao): string;
begin
  case AItem of
    ptcProduto:      Result := 'Produto';
    ptcServico:      Result := 'Serviço';
    ptcMateriaPrima: Result := 'Matéria Prima';
    ptcPatrimonio:   Result := 'Patrimônio';
    ptcUsoeConsumo: Result := 'Uso e Consumo';
    ptcComposicao:   Result := 'Composição';
    ptcVariacao:     Result := 'Variação';
    ptcPersonalizado:Result := 'Personalizado';
  end;
end;

function ProdutoTipoClassificacaoToObservacao(const AItem: TProduto_TipoClassificacao): string;
begin
  case AItem of
    ptcProduto:      Result := 'Produtos normais para Venda e Produção';
    ptcServico:      Result := 'Não controla estoque e não pode ser comprado';
    ptcMateriaPrima: Result := 'Não possui composição';
    ptcPatrimonio:   Result := 'Produtos usado com depreciação'; //Descrever
    ptcUsoeConsumo:  Result := 'Comsumo no administrativo'; //Descrever
    ptcComposicao:   Result := 'Composição Kit de materiais';
    ptcVariacao:     Result := 'Variação de produtos (Preço por quantidade / Cor e Tamanho)';
    ptcPersonalizado:Result := 'Personalizado com característica';
  end;
end;

function ProdutoTipoClassificacaoToImgIndex(const AClassificacao: TProduto_TipoClassificacao): Integer;
begin
  case AClassificacao of
    ptcProduto:      Result := 0; //  Tag_Produto_ProdutoSimples = 0;
    ptcServico:      Result := 1; //  Tag_Produto_Servico = 1;
    ptcVariacao:     Result := 2; //  Tag_Produto_Variacao = 2;
    ptcComposicao:   Result := 3; //  Tag_Produto_Composicao = 3;
    ptcMateriaPrima: Result := 4; //  Tag_Produto_MateriaPrima = 4;
    ptcPersonalizado:Result := 5; //  Tag_Produto_Personalizado = 5;
    ptcPatrimonio:   Result := 6; //  Tag_Produto_Patrimonio = 6;
    ptcUsoeConsumo:  Result := 7; //  Tag_Produto_UsoEConsumo = 7;
  end;
end;

function ProdutoTipoImgIndexToClassificacao(const AIndex: Integer): TProduto_TipoClassificacao;
begin
  case AIndex of
    0 : Result := ptcProduto; //  Tag_Produto_ProdutoSimples = 0;
    1 : Result := ptcServico; //  Tag_Produto_Servico = 1;
    2 : Result := ptcVariacao; //  Tag_Produto_Variacao = 2;
    3 : Result := ptcComposicao; //  Tag_Produto_Composicao = 3;
    4 : Result := ptcMateriaPrima; //  Tag_Produto_MateriaPrima = 4;
    5 : Result := ptcPersonalizado; //  Tag_Produto_Personalizado = 5;
    6 : Result := ptcPatrimonio; //  Tag_Produto_Patrimonio = 6;
    7 : Result := ptcUsoeConsumo; //  Tag_Produto_UsoEConsumo = 7;
  end;
end;

function ProdutoTipoClassificacaoStrToEnum(const ACodigo: string): TProduto_TipoClassificacao;
begin
  for Result := Low(TProduto_TipoClassificacao) to High(TProduto_TipoClassificacao) do
  begin
    if ProdutoTipoClassificacaoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := ptcProduto;
end;
       {
function ProdutoCustoToStr(const AProdutoCusto: TProdutoCusto): Variant;
begin
  case AProdutoCusto of
    pciValorDeCompra: Result := 'COMPRA';
    pciCustoMedio:    Result := 'MEDIO';
  end;
end;

function ProdutoCustoToDescricao(const AProdutoCusto: TProdutoCusto): string;
begin
  case AProdutoCusto of
    pciValorDeCompra: Result := 'Valor de Compra';
    pciCustoMedio:    Result := 'Custo Médio';
  end;
end;

function ProdutoCustoStrToEnum(const ACodigo: string): TProdutoCusto;
begin
  for Result := Low(TProdutoCusto) to High(TProdutoCusto) do
  begin
    if VarToStrDef(ProdutoCustoToStr(Result), '') = ACodigo then
      Exit;
  end;
  Result := pciValorDeCompra;
end;          }
{
function ProdutoTipo_DescontoToStr(const t: TProdutoTipo_Desconto): string;
begin
  case t of
    pdDigitado:        Result := 'DIGITADO';
    pdClienteCadastro: Result := 'CLIENTE_CADASTRO';
    pdClienteGrupo:    Result := 'CLIENTE_GRUPO';
    pdTabelaPreco:     Result := 'TABELA_PRECO';
    pdPrecoAtacado:    Result := 'PRECO_ATACADO';
    pdPrecoPrazo:      Result := 'PRECO_PRAZO';
    pdCustoVenda:      Result := 'CUSTO';
    pdVarejo:          Result := 'VAREJO';
    pdClienteTabelaPreco: Result := 'CLIENTE_TABELA_PRECO';
    pdPorPecas:        Result := 'POR_PECAS';
    pdPOutro:          Result := 'POUTRO';
    pdVOutro:          Result := 'VOUTRO';
  end;
end;

function ProdutoTipo_DescontoStrToEnum(out ok: boolean; const s: string): TProdutoTipo_Desconto;
begin
  Ok := True;
  for Result := Low(TProdutoTipo_Desconto) to High(TProdutoTipo_Desconto) do
  begin
    if ProdutoTipo_DescontoToStr(Result) = s then
      Exit;
  end;
  Ok := False;
end;   }

function ProdutoTipo_DescontoDescricaoToEnum(out ok: boolean; const s: string): TProdutoTipo_Desconto;
begin
  Ok := True;
  for Result := Low(TProdutoTipo_Desconto) to High(TProdutoTipo_Desconto) do
  begin
    if ProdutoTipo_DescontoToDescricao(Result) = s then
      Exit;
  end;
  Ok := False;
end;

function ProdutoTipo_DescontoToDescricao(const t: TProdutoTipo_Desconto): string;
begin
  case t of
    pdTabelaPreco:   Result := 'Desconto pela Tabela de preço';
    pdAcrTabelaPreco:Result := 'Acréscimo pela Tabela de preço';
    pdCustoVenda:    Result := 'Custo de Venda';
    pdVarejo:        Result := 'Varejo';
    pdPorPecas:      Result := 'Desconto Por Peças';
    pdPOutro_Manual: Result := 'Acréscimo %';
    pdVOutro_Manual: Result := 'Acréscimo R$';
    pdPDesc_Manual:  Result := 'Desconto %';
    pdVDesc_Manual:  Result := 'Desconto R$';
    pdPAF:           Result := 'Origem PAF-ECF';
    pdProdutoTabela: Result := 'Produto Tabela de Preço';
  end;
end;

function ProdutoTipo_DescontoToCaption(const t: TProdutoTipo_Desconto): string;
begin
  case t of
    pdVarejo:        Result := 'R$ Varejo';
    pdCustoVenda:    Result := 'R$ Custo Venda';
    pdTabelaPreco:   Result := 'R$ Tabela Preço';
    pdAcrTabelaPreco:Result := 'R$ Tabela Preço';
    pdPorPecas:      Result := 'R$ Valor por Peças';
    pdPOutro_Manual: Result := '% Acréscimos';
    pdVOutro_Manual: Result := 'R$ Acréscimos';
    pdPDesc_Manual:  Result := '% Desconto';
    pdVDesc_Manual:  Result := 'R$ Desconto';
    pdPAF:           Result := 'Origem PAF-ECF';
    pdProdutoTabela: Result := 'R$ Produto Tabela';
  end;
end;

function EstadoToCodigoUF(const AEstado: TEstado): Integer;
begin
  case AEstado of
                estAcre: Result := 12;
             estAlagoas: Result := 27;
               estAmapa: Result := 16;
            estAmazonas: Result := 13;
               estBahia: Result := 29;
               estCeara: Result := 23;
     estDistritoFederal: Result := 53;
       estEspiritoSanto: Result := 32;
               estGoias: Result := 52;
            estMaranhao: Result := 21;
          estMatoGrosso: Result := 51;
     estMatoGrossoDoSul: Result := 50;
         estMinasGerais: Result := 31;
                estPara: Result := 15;
             estParaiba: Result := 25;
              estParana: Result := 41;
          estPernambuco: Result := 26;
               estPiaui: Result := 22;
        estRioDeJaneiro: Result := 33;
    estRioGrandeDoNorte: Result := 24;
      estRioGrandeDoSul: Result := 43;
             estRoraima: Result := 14;
            estRondonia: Result := 11;
       estSantaCatarina: Result := 42;
            estSaoPaulo: Result := 35;
             estSergipe: Result := 28;
           estTocantins: Result := 17;
            estExterior: Result := -1;
  end;
end;

function EstadoDescricaoToUF(const ADesc: string): string;
begin
  Result:= EstadoToUF(EstadoDescricaoToEnum(ADesc));
end;

function EstadoToDescricao(const AEstado: TEstado): string;
begin
  case AEstado of
                estAcre: Result := 'Acre';
             estAlagoas: Result := 'Alagoas';
               estAmapa: Result := 'Amapá';
            estAmazonas: Result := 'Amazonas';
               estBahia: Result := 'Bahia';
               estCeara: Result := 'Ceará';
     estDistritoFederal: Result := 'Distrito Federal';
       estEspiritoSanto: Result := 'Espírito Santo';
               estGoias: Result := 'Goiás';
            estMaranhao: Result := 'Maranhão';
          estMatoGrosso: Result := 'Mato Grosso';
     estMatoGrossoDoSul: Result := 'Mato Grosso do Sul';
         estMinasGerais: Result := 'Minas Gerais';
                estPara: Result := 'Pará';
             estParaiba: Result := 'Paraíba';
              estParana: Result := 'Paraná';
          estPernambuco: Result := 'Pernambuco';
               estPiaui: Result := 'Piauí';
        estRioDeJaneiro: Result := 'Rio de Janeiro';
    estRioGrandeDoNorte: Result := 'Rio Grande do Norte';
      estRioGrandeDoSul: Result := 'Rio Grande do Sul';
            estRondonia: Result := 'Rondônia';
             estRoraima: Result := 'Roraima';
       estSantaCatarina: Result := 'Santa Catarina';
            estSaoPaulo: Result := 'São Paulo';
             estSergipe: Result := 'Sergipe';
           estTocantins: Result := 'Tocantins';
            estExterior: Result := 'Exterior';
  end;
end;

function EstadoToDescricaoCodigo(const AEstado: TEstado): string;
begin
  {$IF Defined(COMERCIAL)}
  Result := AnsiUpperCase(RemoveAcento(EstadoToDescricao(AEstado)));
  {$IFEND}
end;

function EstadoCodigoUFToEnum(const ACodigoUF: Integer): TEstado;
begin
  for Result := Low(TEstado) to High(TEstado) do
  begin
    if EstadoToCodigoUF(Result) = ACodigoUF then
      Exit;
  end;
end;

function EstadoDescricaoCodigoToEnum(const ADesc: string): TEstado;
begin
  for Result := Low(TEstado) to High(TEstado) do
  begin
    if EstadoToDescricaoCodigo(Result) = ADesc then
      Exit;
  end;
end;

function EstadoDescricaoToEnum(const ADesc: string): TEstado;
begin
  for Result := Low(TEstado) to High(TEstado) do
  begin
    if EstadoToDescricao(Result) = ADesc then
      Exit;
  end;
end;

function EstadoUFToEnum(const AUF: string): TEstado;
begin
  for Result := Low(TEstado) to High(TEstado) do
  begin
    if EstadoToUF(Result) = AUF then
      Exit;
  end;
end;

function EstadoToUF(const AEstado: TEstado): string;
begin
  case AEstado of
                estAcre: Result := 'AC';
             estAlagoas: Result := 'AL';
               estAmapa: Result := 'AP';
            estAmazonas: Result := 'AM';
               estBahia: Result := 'BA';
               estCeara: Result := 'CE';
     estDistritoFederal: Result := 'DF';
       estEspiritoSanto: Result := 'ES';
               estGoias: Result := 'GO';
            estMaranhao: Result := 'MA';
          estMatoGrosso: Result := 'MT';
     estMatoGrossoDoSul: Result := 'MS';
         estMinasGerais: Result := 'MG';
                estPara: Result := 'PA';
             estParaiba: Result := 'PB';
              estParana: Result := 'PR';
          estPernambuco: Result := 'PE';
               estPiaui: Result := 'PI';
        estRioDeJaneiro: Result := 'RJ';
    estRioGrandeDoNorte: Result := 'RN';
             estRoraima: Result := 'RR';
      estRioGrandeDoSul: Result := 'RS';
            estRondonia: Result := 'RO';
       estSantaCatarina: Result := 'SC';
            estSaoPaulo: Result := 'SP';
             estSergipe: Result := 'SE';
           estTocantins: Result := 'TO';
            estExterior: Result := 'EX';
  end;
end;

function TipoFiltroAgendamentoToStr(Const ATipoFiltro: TTipoFiltroAgendamento): String; overload;
begin
  case ATipoFiltro of
    tfTodos:     Result := 'Todos';
    tfSomenteEu: Result := 'Somente Eu';
    tfSetor:     Result := 'Setor';
  end;
end;

function EventoProdutividadeToStr(AEventoProdutividade: TEventoProdutividade): string;
begin
  case AEventoProdutividade of
             epEventoAberto : Result := 'EVENTO_ABERTO';
            epEventoFechado : Result := 'EVENTO_FECHADO';
      epJanelaEventoAtivada : Result := 'EVENTO_JANELA_ATIVADA';
    epJanelaEventoInativada : Result := 'EVENTO_JANELA_INATIVADA';
  else
    raise Exception.Create('Código de evento não cadastrado');
  end;
end;

function EventoProdutividadeToDescricao(AEventoProdutividade: TEventoProdutividade): string;
begin
  case AEventoProdutividade of
             epEventoAberto: Result := 'Evento aberto';
            epEventoFechado: Result := 'Evento fechado';
      epJanelaEventoAtivada: Result := 'Janela de evento Ativada';
    epJanelaEventoInativada: Result := 'Janela de evento Inativada';
                    epOutro: Result := 'Evento não especificado';
  end;
end;

function EventoProdutividadeStrToEnum(ACodigo: string): TEventoProdutividade;
begin
  for Result := Low(TEventoProdutividade) to High(TEventoProdutividade) do
  begin
    if EventoProdutividadeToStr(Result) = ACodigo then
      Exit;
  end;
  Result := epOutro;
end;

function EventoTipoToStr(AEventoTipo: TEventoTipo): Integer;
begin
  case AEventoTipo of
      etAgendamento : Result := 0;
     etLogAlteracao : Result := 1;
    etProdutividade : Result := 2;
  end;
end;

function EventoTipoStrToEnum(ACodigo: Integer): TEventoTipo;
begin
  for Result := Low(TEventoTipo) to High(TEventoTipo) do
  begin
    if EventoTipoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := etAgendamento;
end;

function EventoTipoDescricao(AEventoTipo: TEventoTipo): string;
begin
  case AEventoTipo of
      etAgendamento : Result := 'Agendamento';
     etLogAlteracao : Result := 'Log de Alteração';
    etProdutividade : Result := 'Produtividade';
  end;
end;

function TipoMensagemAgendaToStr(AMensagemAgenda: TTipoMensagemAgenda): string;
begin
  case AMensagemAgenda of
    maMensagem: Result := 'MENSAGEM';
      maEvento: Result := 'EVENTO';
  end;
end;

function TipoMensagemAgendaDescricao(AMensagemAgenda: TTipoMensagemAgenda): string;
begin
  case AMensagemAgenda of
    maMensagem: Result := 'Mensagem';
      maEvento: Result := 'Evento';
  end;
end;

function TipoMensagemAgendaStrToEnum(ACodigo: string): TTipoMensagemAgenda;
begin
  for Result := Low(TTipoMensagemAgenda) to High(TTipoMensagemAgenda) do
  begin
    if TipoMensagemAgendaToStr(Result) = ACodigo then
      Exit;
  end;
  Result := maMensagem;
end;

function TipoConsultaPessoaToDescricao(ATipoConsultaPessoa: TTipoConsultaPessoa): string;
begin
  case ATipoConsultaPessoa of
    cpConsulta: Result := 'Consulta';
    cpCadastro: Result := 'Cadastro';
  end;
end;

{ TContaTipo}

function ContaTipoToStr(AContaTipo: TContaTipo): string;
begin
  case AContaTipo of
    ctNenhum: Result := '';
     ctBanco: Result := 'BANCO';
     ctCaixa: Result := 'CAIXA';
    ctCartao: Result := 'CARTAO';
  end;
end;

function ContaTipoDescricao(AContaTipo: TContaTipo): string;
begin
  case AContaTipo of
    ctNenhum: Result := '<Nenhum>';
     ctBanco: Result := 'Banco';
     ctCaixa: Result := 'Caixa';
    ctCartao: Result := 'Cartão de Crédito';
  end;
end;

function ContaTipoStrToEnum(ACodigo: string): TContaTipo;
begin
  for Result := Low(TContaTipo) to High(TContaTipo) do
  begin
    if ContaTipoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := ctNenhum;
end;

{ TContaConvenioHelper }

function BancoConvenioToStr(ABancoConvenio: TBancoConvenio): Variant;
begin
  case ABancoConvenio of
    bcNenhum:        Result := Null;
    bcCresolSicoper: Result := 'CRESOL_SICOPER';
    bcCresolCentral: Result := 'CRESOL_CENTRAL';
    bcUnicredSC:     Result := 'UNICRED_SC';
    bcPine:          Result := 'PINE';
    bcSafra:         Result := 'SAFRA';
    bcSICOOB:        Result := 'SICOOB';
    bcBic:           Result := 'BIC';
  end;
end;

function BancoConvenioToDescricao(ABancoConvenio: TBancoConvenio): string;
begin
  case ABancoConvenio of
    bcNenhum:        Result := 'Nenhum';
    bcCresolSicoper: Result := 'CRESOL Sicoper';
    bcCresolCentral: Result := 'CRESOL Central SC/RS';
    bcUnicredSC:     Result := 'Unicred SC';
    bcPine:          Result := 'Banco Pine';
    bcSafra:         Result := 'Banco Safra';
    bcSICOOB:        Result := 'SICOOB';
    bcBic:           Result := 'Banco Bic';
  end;
end;

function BancoConvenioStrToEnum(const ACodigo: string): TBancoConvenio;
begin
  for Result := Low(TBancoConvenio) to High(TBancoConvenio) do
  begin
    if VarToStrDef(BancoConvenioToStr(Result), '') = ACodigo then
      Exit;
  end;
  Result := bcNenhum;
end;

{ TTipoControleCaixaHelper }

function TipoControleCaixaToStr(ATipoControleCaixa: TTipoControleCaixa): Integer;
begin
  case ATipoControleCaixa of
    tccNaoRestrito: Result := 0;
     tccPorUsuario: Result := 1;
     tccPorEmpresa: Result := 2;
  end;
end;

function TipoControleCaixaToDescricao(ATipoControleCaixa: TTipoControleCaixa): string;
begin
  case ATipoControleCaixa of
    tccNaoRestrito: Result := 'Não Restrito';
     tccPorUsuario: Result := 'Restrito por Usuário';
     tccPorEmpresa: Result := 'Restrito por Empresa';
  end;
end;

function TipoControleCaixaStrToEnum(ACodigo: Integer): TTipoControleCaixa;
begin
  for Result := Low(TTipoControleCaixa) to High(TTipoControleCaixa) do
  begin
    if TipoControleCaixaToStr(Result) = ACodigo then
      Exit;
  end;
  Result := tccNaoRestrito;
end;

{ TCaixaModeloHelper }

function CaixaModeloToStr(ACaixaModelo: TCaixaModelo): string;
begin
  case ACaixaModelo of
    cmCaixaPorTurno: Result := 'TURNO';
      cmCaixaPorDia: Result := 'DIA';
  end;
end;

function CaixaModeloToDescricao(ACaixaModelo: TCaixaModelo): string;
begin
  case ACaixaModelo of
    cmCaixaPorTurno: Result := 'Caixa por Turno (Horário de Abertura e Encerramento)';
      cmCaixaPorDia: Result := 'Caixa por Dia';
  end;
end;

function CaixaModeloStrToEnum(ACodigo: string): TCaixaModelo;
begin
  for Result := Low(TCaixaModelo) to High(TCaixaModelo) do
  begin
    if CaixaModeloToStr(Result) = ACodigo then
      Exit;
  end;
  Result := cmCaixaPorTurno;
end;

{ TBancoTipoArquivoHelper }

function BancoTipoArquivoToStr(ABancoTipoArquivo: TBancoTipoArquivo): string;
begin
  case ABancoTipoArquivo of
                taBoleto: Result := 'BOLETO';
            taGridStream: Result := 'GRID_STREAM';
           taLogoEmpresa: Result := 'LOGO';
        taLogoPrefeitura: Result := 'LOGO_PREF';
          taRetornoBanco: Result := 'RETORNO_BANCO';
            taAnexoVenda: Result := 'ANEXO_VENDA';
    taAnexoVenda_Produto: Result := 'ANEXO_VENDA_PRODUTO';
    taAnexoVendaProducao: Result := 'ANEXO_VENDA_PRODUCAO';
           taAnexoPessoa: Result := 'ANEXO_PESSOA';
      taAnexoPessoaVenda: Result := 'ANEXO_PESSOA_VENDA';
   taAnexoPessoaProducao: Result := 'ANEXO_PESSOA_PRODUCAO';
           taAnexoAgenda: Result := 'ANEXO_AGENDA';
         taAnexoContrato: Result := 'ANEXO_CONTRATO';
taAnexoProducaoProtocolo: Result := 'ANEXO_PRODUCAO_PROTOCOLO';
   taAnexoProducaoEquipe: Result := 'ANEXO_PRODUCAO_EQUIPE';
     taAnexoProdutoAnexo: Result := 'ANEXO_PRODUTO_ANEXO';
     taAnexoProdutoVenda: Result := 'ANEXO_PRODUTO_VENDA';
  taAnexoProdutoProducao: Result := 'ANEXO_PRODUTO_PRODUCAO';
      taAnexoFuncionario: Result := 'ANEXO_FUNCIONARIO';
     taAnexoEquipamentos: Result := 'ANEXO_EQUIPAMENTOS';
      taAnexoOcorrencias: Result := 'ANEXO_OCORRENCIAS';
   taAnexoRateioArquivos: Result := 'ANEXO_RATEIO_ARQUIVOS';
   taAnexoRateioExclusao: Result := 'ANEXO_RATEIO_EXCLUSAO';
           taNaoDefinido: Result := ''; // Tipo de arquivo inválido, não deve conter arquivos no banco com este tipo.
                                        // Usado apenas para validação do tipo de arquivo
  end;
end;

function BancoTipoArquivoToDescricao(ABancoTipoArquivo: TBancoTipoArquivo): string;
begin
  case ABancoTipoArquivo of
                    taBoleto: Result := 'Boleto';
                taGridStream: Result := 'Grid Stream';
               taLogoEmpresa: Result := 'Logo';
            taLogoPrefeitura: Result := 'Logo Prefeitura';
              taRetornoBanco: Result := 'Retorno de Banco';
                taAnexoVenda: Result := 'Anexo de Venda';
        taAnexoVenda_Produto: Result := 'Anexo do Venda Produto';
               taAnexoPessoa: Result := 'Anexo de Pessoa';
               taAnexoAgenda: Result := 'Anexo de Agenda/Produção';
             taAnexoContrato: Result := 'Anexo de Contrato';
    taAnexoProducaoProtocolo: Result := 'Anexo de Produção Protocolo';
       taAnexoProducaoEquipe: Result := 'Anexo de Produção Equipe';
         taAnexoProdutoAnexo: Result := 'Anexo de Produto Anexo';
         taAnexoProdutoVenda: Result := 'Anexo de Produto Venda';
      taAnexoProdutoProducao: Result := 'Anexo de Produto Produção';
          taAnexoFuncionario: Result := 'Anexo do Funcionário';
               taNaoDefinido: Result := '<Não Definido>';
  end;
end;

function BancoTipoArquivoStrToEnum(ACodigo: string): TBancoTipoArquivo;
begin
  for Result := Low(TBancoTipoArquivo) to High(TBancoTipoArquivo) do
  begin
    if BancoTipoArquivoToStr(Result) = ACodigo then
      Exit;
  end;
  {$IF Defined(COMERCIAL)}
  GeraExcecao('Tipo de arquivo inválido: ' + ACodigo);
  {$IFEND}
end;

function NFSeSituacaoTribDescricao(AItem: TSituacaoTrib): string;
begin
  case AItem of
    tsTributadaNoPrestador: Result := 'Tributada no Prestador';
       tsTibutadaNoTomador: Result := 'Tributada no Tomador';
                  tsIsenta: Result := 'Isenta';
                   tsImune: Result := 'Imune';
            tsNaoTributada: Result := 'Não Tributada';
                    tsFixo: Result := 'Fixo';
          tsOutroMunicipio: Result := 'Outro Município';
  end;
end;

{ TTipoBalancoAutomatico }

function TipoBalancoAutomaticoToStr(ATipo: TTipoBalancoAutomatico): string;
begin
  case ATipo of
      tbaAnual: Result := '0';
     tbaMensal: Result := '1';
    tbaSemanal: Result := '2';
  end;
end;

function TipoBalancoAutomaticoToDescricao(ATipo: TTipoBalancoAutomatico): string;
begin
  case ATipo of
      tbaAnual: Result := 'Anual';
     tbaMensal: Result := 'Mensal';
    tbaSemanal: Result := 'Semanal';
  end;
end;

function TipoBalancoAutomaticoCodigoToEnum(var AOk: Boolean; const ACodigo: string): TTipoBalancoAutomatico;
begin
  AOk := False;
  for Result := Low(TTipoBalancoAutomatico) to High(TTipoBalancoAutomatico) do
  begin
    if TipoBalancoAutomaticoToStr(Result) = ACodigo then
    begin
      AOk := True;
      Exit;
    end;
  end;
  Result := tbaMensal;
end;

function NotaFiscalTipoPossiveisToStr(t: TNotaFiscalTipoPossiveis): string;
begin
  case t of
    nfprNFeCCe: Result := 'NFe/NFCe';
    nfprNFSe:   Result := 'NFSe';
  end;
end;

function StrToNotaFiscalTipoPossiveis(out ok: boolean; const s: string): TNotaFiscalTipoPossiveis;
begin
  ok := True;
  for Result := Low(TNotaFiscalTipoPossiveis) to High(TNotaFiscalTipoPossiveis) do
  begin
    if NotaFiscalTipoPossiveisToStr(Result) = s then
      Exit;
  end;
  ok := False;
end;

function NotaFiscalTipoPossiveisToDescricao(t: TNotaFiscalTipoPossiveis): string;
begin
  case t of
    nfprNFeCCe: Result := 'NFe/NFCe';
    nfprNFSe:   Result := 'NFSe';
  end;
end;

{ TProdutoTipoClassificacaoHelper }

function Produto_TipoClassificacaoToStr(const t: TProduto_TipoClassificacao): string;
begin
  case t of
        ptcProduto: Result := 'PRODUTO';
        ptcServico: Result := 'SERVICO';
  ptcMateriaPrima : Result := 'MATERIAPRIMA';
     ptcPatrimonio: Result := 'PATRIMONIO';
   ptcUsoeConsumo:  Result := 'USOECONSUMO';
   ptcComposicao:   Result := 'COMPOSICAO';
   ptcVariacao:     Result := 'VARIACAO';
   ptcPersonalizado:Result := 'PERSONALIZADO';
  end;
end;

function Produto_TipoClassificacaoDescricao(const t: TProduto_TipoClassificacao): string;
begin
  case t of
        ptcProduto: Result := 'Produto';
        ptcServico: Result := 'Serviço';
  ptcMateriaPrima : Result := 'Matéria Prima';
     ptcPatrimonio: Result := 'Patrimônio';
   ptcUsoeConsumo:  Result := 'Uso e Consumo';
   ptcComposicao:   Result := 'Composição';
   ptcVariacao:     Result := 'Variação';
   ptcPersonalizado:Result := 'Personalizado';
  end;
end;

function Produto_TipoClassificacaoStrToCodigo(ACodigo: string): TProduto_TipoClassificacao;
begin
  for Result := Low(TProduto_TipoClassificacao) to High(TProduto_TipoClassificacao) do
  begin
    if Produto_TipoClassificacaoToStr(Result) = ACodigo then
      Exit;
  end;
  Result := ptcProduto;
end;

{ TTipoSetorHelper }

function TTipoSetorHelper.ToStr: string;
begin
  case Self of
      tsSetor: Result := 'SETOR';
    tsEstagio: Result := 'ESTAGIO';
  end;
end;

function TTipoSetorHelper.ToDescricao: string;
begin
  case Self of
      tsSetor: Result := 'Setor';
    tsEstagio: Result := 'Estágio';
  end;
end;

class function TTipoSetorHelper.StrToCodigo(ACodigo: string): TTipoSetor;
begin
  if ACodigo = tsSetor.ToStr then
    Result := tsSetor
  else if ACodigo = tsEstagio.ToStr then
    Result := tsEstagio;
end;

{ TEmailMassaSituacaoHelper }

function TEmailMassaMensagemSituacaoHelper.Codigo: string;
begin
  case Self of
    emmsAguardandoEnvio: Result := 'AGUARDANDO_ENVIO';
            emmsEnviado: Result := 'ENVIADO';
         emmsFalhaEnvio: Result := 'FALHA_ENVIO';
  end;
end;

function TEmailMassaMensagemSituacaoHelper.Cor: TColor;
begin
  case Self of
    emmsAguardandoEnvio: Result := $00AE0400;
            emmsEnviado: Result := clGreen;
         emmsFalhaEnvio: Result := clRed;
  end;
end;

function TEmailMassaMensagemSituacaoHelper.Descricao: string;
begin
  case Self of
    emmsAguardandoEnvio: Result := 'Aguardando Envio';
            emmsEnviado: Result := 'Enviado';
         emmsFalhaEnvio: Result := 'Falha no Envio';
  end;
end;

class function TEmailMassaMensagemSituacaoHelper.GetFromCodigo(ACodigo: string): TEmailMassaMensagemSituacao;
begin
  for Result := Low(TEmailMassaMensagemSituacao) to High(TEmailMassaMensagemSituacao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := emmsAguardandoEnvio;
end;

{ TEmailMassaSituacaoHelper }

function TEmailMassaSituacaoHelper.Codigo: string;
begin
  case Self of
       emsAguardandoEnvio: Result := 'AGUARDANDO_ENVIO';
        emsEnvioConcluido: Result := 'ENVIO_CONCLUIDO';
    emsMensagensPendentes: Result := 'MENSAGENS_PENDENTES';
  end;
end;

function TEmailMassaSituacaoHelper.Cor: TColor;
begin
  case Self of
       emsAguardandoEnvio: Result := $00AE0400;
        emsEnvioConcluido: Result := clGreen;
    emsMensagensPendentes: Result := $000000D2;
  end;
end;

function TEmailMassaSituacaoHelper.Descricao: string;
begin
  case Self of
       emsAguardandoEnvio: Result := 'Aguardando Envio';
        emsEnvioConcluido: Result := 'Envio Concluído';
    emsMensagensPendentes: Result := 'Mensagens Pendentes para Envio';
  end;
end;

class function TEmailMassaSituacaoHelper.GetFromCodigo(ACodigo: string): TEmailMassaSituacao;
begin
  for Result := Low(TEmailMassaSituacao) to High(TEmailMassaSituacao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := emsAguardandoEnvio;
end;

function indIEDestToDescricao(const ATipoContr: TpcnindIEDest): string;
begin
  case ATipoContr of
       inContribuinte: Result := 'Contribuinte';
             inIsento: Result := 'Isento';
    inNaoContribuinte: Result := 'Não Contribuinte';
  end;
end;

end.

