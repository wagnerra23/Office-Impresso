unit Tag.Permissao;

interface

Uses
  Classes.APP, System.Generics.Collections;


const
  TagPermissao_Venda_LbUCMensagem                                      = 1;
  TagPermissao_First =  TagPermissao_Venda_LbUCMensagem;
  TagPermissao_Venda_Label_Obriga_Representante                        = 2;
  TagPermissao_Venda_btnConsultar                                      = 3;
  TagPermissao_Venda_GrupoNotaFiscal                                   = 4;
  TagPermissao_Venda_BtnProducao                                       = 5;
  TagPermissao_Venda_Financeiro1                                       = 6;
  TagPermissao_Venda_LbControleCaixa                                   = 7;
  TagPermissao_Venda_btnNovo                                           = 8;
  TagPermissao_Venda_LbUCAlteraFuncionario                             = 9;
  TagPermissao_Venda_LbUCAlterarDescricaoProduto                       = 10;
  TagPermissao_Venda_LbUCAlterarRazaoSocial                            = 11;
  TagPermissao_Venda_LbUCAlterarDescCondPagto                          = 12;
  TagPermissao_Venda_ransferirVendaparaEmpresa1                        = 13;
  TagPermissao_Venda_LbUCFuncionarioOuRep                              = 14;
  TagPermissao_Venda_LblCampoObrigatorioImpressao                      = 15;
  TagPermissao_Venda_LblCampoObrigatorioAplicacao                      = 16;
  TagPermissao_Venda_LblCampoObrigatorioCaminho                        = 17;
  TagPermissao_Venda_LblCampoObrigatorioOBSProduto                     = 18;
  TagPermissao_Venda_LbUCImpedirProducaoFatura                         = 19;
  TagPermissao_Venda_LbUCPermiteEmissaoNFVendaNaoFaturada              = 20;
  TagPermissao_Venda_LbUCCampoOpcionalPrometidoPara                    = 21;
  TagPermissao_Venda_lbUCdtemissao                                     = 22;
  TagPermissao_Venda_LbUCPermiteAlterarQuantNoGrid                     = 23;
  TagPermissao_Venda_LbUCPermiteCustomizarGridFinanceiro               = 24;
  TagPermissao_Venda_CkAgrupar                                         = 25;
  TagPermissao_Venda_ornarOramento1                                    = 26;
  TagPermissao_Venda_LbUCPermiteDarDesconto                            = 27;
  TagPermissao_Venda_LbUCAlterarValorProduto                           = 28;
  TagPermissao_Venda_LbUCPermiteVenderAbaixoDoValorMinimo              = 29;
  TagPermissao_Venda_LbUCPermiteImprimirVendaAbaixoDoValorMinimo       = 30;
  TagPermissao_Venda_LbUCPermiteAlterarParcelas                        = 31;
  TagPermissao_Venda_liedtCondicaoPagto_CondicaoPagto_PARCELAS         = 32;
  TagPermissao_Venda_btnCancela_Faturamento                            = 33;
  TagPermissao_Venda_btnFaturamento                                    = 34;
  TagPermissao_Venda_btnAprovarOrcamento                               = 35;
  TagPermissao_Venda_BtnReprovarOrcamento                              = 36;
  TagPermissao_Venda_BtnImprimir                                       = 37;
  TagPermissao_Venda_edtAtendente_Pessoas_COMISSAO                     = 38;
  TagPermissao_Venda_edtRepresentante_Pessoas_COMISSAO                 = 39;
  TagPermissao_Venda_BtnExcluir                                        = 40;
//                                                                          = 41;
  TagPermissao_Produto_Mestre_btnExcluir                               = 42;
  TagPermissao_Produto_Mestre_edtValor                                 = 43;
  TagPermissao_Produto_Mestre_btnAdicionarEstoque                      = 44;
  TagPermissao_Produto_Mestre_btnVisualizaEstoque                      = 45;

  TagPermissao_Produto_Grade_Modelo_btnNovo                            = 46;
  TagPermissao_Produto_Grade_Modelo_btnAlterar                         = 47;
  TagPermissao_Produto_Grade_Modelo_btnExcluir                         = 48;

  TagPermissao_Producao_OS_EdtPrazoFinal                               = 49;

  TagPermissao_Producao_LayoutItemSetores                              = 50;
  TagPermissao_Producao_LbUCPermiteEncaminharWorkflow                  = 51;
  TagPermissao_Producao_GrupoFrameCusto                                = 52;
  TagPermissao_Producao_ClonarItem1                                    = 53;
  TagPermissao_Producao_VisualizarPedido1                              = 54;
  TagPermissao_Producao_LbAlteraQuant                                  = 55;
  TagPermissao_Producao_BtnVisualizarFuncionarios                      = 56;
  TagPermissao_Producao_DefinircomoResponsvel1                         = 57;
  TagPermissao_Producao_BtnFuncionarioAdd                              = 58;
  TagPermissao_Producao_BtnAnexoAbrirPasta                             = 59;
  TagPermissao_Producao_BtnAnexoRemover                                = 60;
  TagPermissao_Producao_BtnAnexoAdd                                    = 61;
  TagPermissao_Producao_BtnMostrarWorkflow                             = 62;
  TagPermissao_Producao_Finalizar1                                     = 63;
  TagPermissao_Producao_GrupoTempoFuncionario                          = 64;
  TagPermissao_Producao_lblOrcamento                                   = 65;
  TagPermissao_Producao_EdtVenda_Venda                                 = 66;

  TagPermissao_Principal_Image_Ponto                                   = 67;

  TagPermissao_PessoasTipo_GrupoCabecalho                              = 68;
  TagPermissao_PessoasTipo_MainLayoutGroup1                            = 69;
  TagPermissao_PessoasTipo_MainLayoutItem17                            = 70;

  TagPermissao_Pessoas_Todos_btnExcluir                                = 71;
  TagPermissao_Pessoas_Todos_GrupoFinanceiro                           = 72;
  TagPermissao_Pessoas_Todos_GrupoDadosAdicionais                      = 73;
  TagPermissao_Pessoas_Todos_GrupoObservacao                           = 74;
  TagPermissao_Pessoas_Todos_GrupoVendas                               = 75;
  TagPermissao_Pessoas_Todos_GrupoTabelaDePrecos                       = 76;
  TagPermissao_Pessoas_Todos_GrupoEndCorrespondencia                   = 77;
  TagPermissao_Pessoas_Todos_GrupoCrediario                            = 78;
  TagPermissao_Pessoas_Todos_GrupoConjuge                              = 79;
  TagPermissao_Pessoas_Todos_GrupoAgenda                               = 80;
  TagPermissao_Pessoas_Todos_GrupoEquipamento                          = 81;
  TagPermissao_Pessoas_Todos_GrupoAnexos                               = 82;
  TagPermissao_Pessoas_Todos_GrupoHistoricoDeCompras                   = 83;
  TagPermissao_Pessoas_Todos_GrupoDadosPessoais                        = 84;
  TagPermissao_Pessoas_Todos_GrupoContatos                             = 85;
  TagPermissao_Pessoas_Todos_GrupoHistoricoAlteracoes                  = 86;
  TagPermissao_Pessoas_Todos_LbUCCrediario                             = 87;
  TagPermissao_Pessoas_Todos_LbUCFinanceiro                            = 88;
  TagPermissao_Pessoas_Todos_LbUCConsultaSPC                           = 89;
  TagPermissao_Pessoas_Todos_btnNovo                                   = 90;
  TagPermissao_Pessoas_Todos_btnAlterar                                = 91;
  TagPermissao_Pessoas_Todos_GrupoEmail                                = 92;
  TagPermissao_Pessoas_Todos_GrupoAssociacao                           = 93;

  TagPermissao_Pessoas_Funcionario_GrupoBeneficiarios                  = 94;
  TagPermissao_Pessoas_Funcionario_GrupoPensaoAlimenticia              = 95;
  TagPermissao_Pessoas_Funcionario_GrupoSalarios                       = 96;
  TagPermissao_Pessoas_Funcionario_GrupoFuncoes                        = 97;
  TagPermissao_Pessoas_Funcionario_GrupoFerias                         = 98;
  TagPermissao_Pessoas_Funcionario_GrupoHorarios                       = 99;
  TagPermissao_Pessoas_Funcionario_GrupoDemissao                       = 100;
  TagPermissao_Pessoas_Funcionario_GrupoAnotacoesTrabalho              = 101;
  TagPermissao_Pessoas_Funcionario_GrupoFichaPonto                     = 102;
  TagPermissao_Pessoas_Funcionario_GrupoAtestado                       = 103;
  TagPermissao_Pessoas_Funcionario_GrupoFuncionario                    = 104;

  TagPermissao_NotaFiscal_ActVisualizarDANFeSemValidacao               = 105;

  TagPermissao_NF_Entrada_Produtos_LbUCAprovarConversao                = 106;
  TagPermissao_NF_Entrada_RgTipoTransferencia                          = 107;
  TagPermissao_NF_Entrada_btnExcluir                                   = 108;
  TagPermissao_NF_Entrada_BtnConfiguracoes                             = 109;
  TagPermissao_NF_Entrada_BtnFinalizaCompra                            = 110;
  TagPermissao_NF_Entrada_BtnCancelarEstoque                           = 111;
  TagPermissao_NF_Entrada_BtnAtualizarEstoque                          = 112;
  TagPermissao_NF_Entrada_BtnCancelarFinalizacao                       = 113;

  TagPermissao_Mensalidade_btnExcluir                                  = 114;
  TagPermissao_Mensalidade_BtnCancelarFinanceiro                       = 115;
  TagPermissao_Mensalidade_BtnEnviarFinanceiro                         = 116;
  TagPermissao_Mensalidade_BtnGerarMensalidade                         = 117;

  TagPermissao_ImpriVenda_QrLabel10                                    = 118;
  TagPermissao_ImpriVenda_QRLabel11                                    = 119;
  TagPermissao_ImpriAgenda_LbUCResponsavel                             = 120;

  TagPermissao_Grupo_btnNovo                                           = 121;
  TagPermissao_Grupo_btnAlterar                                        = 122;
  TagPermissao_Grupo_btnExcluir                                        = 123;

  TagPermissao_FramePessoasFichaPonto_BtnNovoPonto                     = 124;
  TagPermissao_FramePessoasFichaPonto_BtnDelPonto                      = 125;
  TagPermissao_FramePessoasFichaPonto_LbUCAlterarFichaPonto            = 126;

  TagPermissao_FramePessoasDadosPessoais_GrupoDadosPessoaisFuncionario = 127;
  TagPermissao_FramePessoasCrediario_EdtLimiteDesconto                 = 128;

  TagPermissao_Financeiro_Recebimento_LbUCRecibo                       = 129;
  TagPermissao_Financeiro_Recebimento_BitBtn_Cancelar                  = 130;
  TagPermissao_Financeiro_Recebimento_ComboBox5                        = 131;
  TagPermissao_Financeiro_Recebimento_LbUCLimiteDesconto               = 132;
  TagPermissao_Financeiro_Recebimento_BitBtn1                          = 133;
  TagPermissao_Financeiro_Recebimento_wrButton12                       = 134;
  TagPermissao_Financeiro_Recebimento_Imprimir1                        = 135;
  TagPermissao_Financeiro_Caixa_BitBtn3                                = 136;
  TagPermissao_Financeiro_Caixa_BitBtn5                                = 137;
  TagPermissao_Financeiro_Caixa_cxButton2                              = 138;
  TagPermissao_Financeiro_Caixa_BtnCredito                             = 139;
  TagPermissao_Financeiro_LbContaObrigatoria                           = 140;
  TagPermissao_Financeiro_btnExcluir                                   = 141;
  TagPermissao_Financeiro_CancelarConciliao1                           = 142;
  TagPermissao_Financeiro_NopermiteExtornarContasPagasouRecebidas1     = 143;

  TagPermissao_Encaminhar_lblPermissaoEquipe                           = 144;

  TagPermissao_Contas_LbUCDtBalanco                                    = 145;

  TagPermissao_ConsuVenda_Venda_LbUCLiberarVerTodasVendas              = 146;
  TagPermissao_ConsuVenda_Venda_VisualizarTotalVenda1                  = 147;
  TagPermissao_ConsuVenda_Venda_ActMigraVentaTipo                      = 148;
  TagPermissao_ConsuVenda_Venda_VisualizarTodasEmpresas1               = 149;
  TagPermissao_ConsuVenda_Venda_btnFaturarr                            = 150;
  TagPermissao_ConsuVenda_Venda_btnDesagrupar                          = 151;

  TagPermissao_ConsuProduto_ProdutoSimples_Ativar1                     = 152;
  TagPermissao_ConsuProduto_ProdutoSimples_ExibirInativos1             = 153;
  TagPermissao_ConsuProduto_ProdutoSimples_PnlEstoque                  = 154;
  TagPermissao_ConsuProduto_CbEstoque                                  = 155;

  TagPermissao_ConsuProducao_Finalizados1                              = 156;
  TagPermissao_ConsuProducao_ConsultaRAZAOSOCIAL                       = 157;
  TagPermissao_ConsuProducao_ActVisualizarPedido                       = 158;

  TagPermissao_ConsuPessoas_Todos_ActAlterarRepresentante              = 159;

  TagPermissao_ConsuNF_Entrada_SelecionaEmpresa1                       = 160;

  TagPermissao_ConsuFinanceiro_Caixa_ActFiltroMostrarCaixasFechados    = 161;
  TagPermissao_ConsuCaixa_LbUCVisualizarOsCaixasFechados               = 162;

  TagPermissao_CondicaoPagto_CondicaoPagtoDESCONTO_ACRESCIMO           = 163;

  TagPermissao_AgendaEditor_btnDelete                                  = 164;
  TagPermissao_AgendaEditor_LbUCResponsavel                            = 165;

  TagPermissao_Agenda_LBAgenda                                         = 166;
  TagPermissao_Agenda_AlterarOpesdaAgenda1                             = 167;
  TagPermissao_Agenda_TreeListUsuarios                                 = 168;

  TagPermissao_Last =  TagPermissao_Agenda_TreeListUsuarios;


procedure RegistraWR_Permissao(ATagPermissao: Integer; AFormName, ACompName, ACaption, AGroupName,
                                ANotAllowedMode: String;AValue: Boolean; ATag_Componente: Integer);
Var
  AWR_Permissao : array [TagPermissao_First..TagPermissao_Last] of TWR_Permissao;

implementation

procedure RegistraWR_Permissao(ATagPermissao: Integer; AFormName, ACompName, ACaption, AGroupName,
                                ANotAllowedMode: String;AValue: Boolean; ATag_Componente: Integer);
begin
  AWR_Permissao[ATagPermissao] := TWR_Permissao.Create;
  AWR_Permissao[ATagPermissao].Codigo          :=  ATagPermissao;
  AWR_Permissao[ATagPermissao].FormName        :=  AFormName;
  AWR_Permissao[ATagPermissao].CompName        :=  ACompName;
  AWR_Permissao[ATagPermissao].Caption         :=  ACaption;
  AWR_Permissao[ATagPermissao].GroupName       :=  AGroupName;
  AWR_Permissao[ATagPermissao].NotAllowedMode  :=  ANotAllowedMode;
  AWR_Permissao[ATagPermissao].Value           :=  AValue;
  AWR_Permissao[ATagPermissao].Tag_Componente  :=  ATag_Componente;

//  NotAllowedMode: String; //TNotAllowedMode;
//  Package : TUCPackage;    // Não uso em lugar negum isso aqui
end;

//  RegistraWRPermissao('ACaption','ACompName','AFormName','AGroupName', amAll, upStandard, True);
//  RegistraWR_ExtraRights( Tag_ExtraRights_Venda_LbUCPermiteVenderAbaixoDoValorMinimo ,TagComponente_Venda_edtValor );
  
end.