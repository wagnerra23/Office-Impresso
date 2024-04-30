unit Principal;

interface

  ///////////////////////////////////////////// DOCUMENTAÇÃO ///////////////////////////////////////////////////////////
  ///  SEÇÃO 1: FUNÇÕES GERAIS - Funções que Precisam ser acessadas por todo o sistema e precisa do SELF da tela
  ///  SEÇÃO 2: FUNÇÕES DA TELA- Eventos do Form - Create, hide, destroy, Show,
  ///  SEÇÃO 3: CONSULTAS      - Chamada tela Antiga - Função Consulta de chamada de tela (Deprecated) << Legal isso
  ///  SEÇÃO 4: CONTROLEFORMS  - Chamada tela Nova   - Aproveitar as tela já criadas
  ///  SEÇÃO 5: CHAMADA DE RELATÓRIOS - Chama relatórios FR3 e Quicreport
  ///  SEÇÃO 6: Cria Form (Sem Padrão) - Essas funções devem ser Revistas
  ///  SEÇÃO 7: SKINS - Funções de Skins do sistema
  ///  SEÇÃO 8: CONEXÃO BANCO DE DADOS Escolha de Empresa Ativa e UserControl
  ///  SEÇÃO 9: MÓDULOS
  ///  SEÇÃO 10: REGISTRO E ATUALIZACAO SISTEMA
  ///  SEÇÃO 11: BACKUP -
  ///  SEÇÃO 12: BALANCO AUTOMÁTICO
  ///////////////////////////////////////////// FIM DOCUMENTAÇÃO ///////////////////////////////////////////////////////

{TODO: Fazer uma análise e estatística de dados do sistema
       Elencar os custos dos produtos em relação ao espaço físico necessário a produção do item}
{TODO: Criar botão "Análise de Dados"
       - Regras dinâmicas via excel, selecionando qual será analisado
       - Capacidade   http://notaltaemadministracaoproducao.blogspot.com.br/2012/12/capacidade-produtiva.html
           Produtiva: Capacidade atual de operação da empresa, ficando entre 60% e 80% dependendo da empresa.
           Instalada: Capacidade máxima da empresa, contando horas disponíveis de máquinas instaladas
           Efetiva:  Capacidade máxima da empresa, contando horas disponíveis dos funcionários
       - Tempo de cada operação      }

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, Db, ComCtrls, IBX.IBDatabase, cxLookAndFeels, IBX.IBQuery,
  cxGraphics, ActnList, ActnMan, cxEdit, cxStyles, UCBase, IBX.IBServices,
  Unitfuncoes, BandActn, UCIBXConn, UCSettings, AutoUpdate, UrlMon, UCMail,
  UCHist_Base, cxLocalization, cxGridTableView, cxImage, ThdTimer, cxHint,
  cxLabel, cxButtons, Types, uRegistro, UCHist_WRGeral, IdFTP, IdFTPCommon,
  DdeMan, cxControls, dxCustomHint, ImgList, StdCtrls, ActnCtrls, ToolWin,
  ActnMenus, jpeg, cxCheckBox, dxStatusBar, UCDataConnector, System.Actions,
  cxClasses, dxGDIPlusClasses, Generics.Collections, dxBar, dxRibbon,
  cxBarEditItem, cxContainer, dxBarApplicationMenu, IBX.IBCustomDataSet,
  madExceptVcl, DataModuleImpressao, System.ImageList, dxSkinsForm,
  dxRibbonGallery, dxSkinChooserGallery, cxPropertiesStore, cxImageList,
  dxScreenTip, cxLookAndFeelPainters, dxSkinsCore, dxRibbonSkins,
  dxRibbonCustomizationForm, Vcl.PlatformDefaultStyleActnCtrls,
  cxFontNameComboBox, cxDropDownEdit, wrConstantes, cxTextEdit, cxMaskEdit,
  cxDBLookupComboBox, Classes.WR, dxRibbonForm, dxCore, wrForms, Variants,
  ActiveX, cxEditRepositoryItems, cxDBExtLookupComboBox, dxRibbonRadialMenu,
  dxLayoutContainer, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxLayoutControl, dxRibbonBackstageView, dxUIAdorners, dxLayoutControlAdapters,
  cxPC, dxTabbedMDI, Vcl.OleCtrls, System.Notification, System.Win.TaskbarCore,
  Vcl.Taskbar, dxBarBuiltInMenu, dxLayoutLookAndFeels, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, AdvTypes, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Base,

  {$REGION 'Uses das Skins'}
  //Manter as Skins APENAS AQUI! Remover de qualquer outra unit do sistema caso esteja adicionada
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinVS2010, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, dxSkinsDefaultPainters,
  cxExtEditRepositoryItems, dxOfficeSearchBox, dxSkinOffice2016Colorful,
  dxSkinOffice2019Colorful, dxRibbonColorGallery, System.Generics.Collections,
  WREventos, dxCustomTileControl, dxTileControl, dxNavBarOfficeNavigationBar,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White{$ENDREGION}, Routes.API, Controller.API, Vcl.Grids, Vcl.DBGrids, SHDocVw, dxSkinDarkroom, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxmdaset, dxAlertWindow;

const
  WM_FOCUSMAILMESSAGE = WM_USER + 1;

type
  TPermissaoAction = record
    Action: TAction;
    Enabled: Boolean;
    Tag: Integer;
  end;

//  TdxRibbonAccess = class(TdxRibbon);
//  TdxRibbonControllerAccess = class(TdxRibbonController);

  TFrmPrincipal = class(TdxRibbonForm, IdxLocalizerListener)
    TimerHoraDoServidor: TTimer;
    PopupMenu_Banco: TPopupMenu;
    PopupMenu_Empresa: TPopupMenu;
    Teste_Procura_Banco: TMenuItem;
    Estilo: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle13: TcxStyle;
    cxImageList_Grandes: TcxImageList;
    cxImageList_Pequena: TcxImageList;
    Menu_ActionManager: TActionManager;
    Action_Empresa_Ativa: TAction;
    Action_Fechar: TAction;
    Action_Informacoes: TAction;
    Action_Atualizar: TAction;
    Action_Notas_e_Solicitacao: TAction;
    Action_Produto_Movimento: TAction;
    Action_Produtos: TAction;
    Action_Clientes: TAction;
    Action_Fornecedores: TAction;
    CustomizeActionBars1: TCustomizeActionBars;
    Action_Email_Suporte: TAction;
    Action_Telefones: TAction;
    Action_Compromissos: TAction;
    CONECTAR: TIBDatabase;
    Transacao: TIBTransaction;
    Action_Usuario: TAction;
    IBBackup: TIBBackupService;
    Action_Logof: TAction;
    Action_TrocarSenha: TAction;
    Transa: TIBTransaction;
    Action_Financeiro: TAction;
    ActionA_Pagar: TAction;
    ActionA_Receber: TAction;
    Action_Recebimento: TAction;
    Action_Cad_Produto: TAction;
    Action_Cad_Clientes: TAction;
    Action_Caixa: TAction;
    Action_Funcionario: TAction;
    Action_Representantes: TAction;
    Action_Contas: TAction;
    Action_Bancos: TAction;
    Action_Cad_Cidades: TAction;
    Action_PlanoContas: TAction;
    Action_GrupoProdutos: TAction;
    Action_CondicaoPagto: TAction;
    Action_LocalAuto: TAction;
    Action_Cad_OS: TAction;
    Action_Empresa: TAction;
    Action_Cad_Fornecedor: TAction;
    Action_Barras: TAction;
    Action_Relatorios: TAction;
    Action_Procura_Banco: TAction;
    Action_Parametros: TAction;
    Action_Folha_Pagamento: TAction;
    Action_Seleciona_Banco: TAction;
    Action_Rel_Clientes: TAction;
    Action_Rel_Vendas: TAction;
    Action_Balanco: TAction;
    cxLocalizer1: TcxLocalizer;
    Action_Produto_Patrimonio: TAction;
    Action_Tipo_Produto: TAction;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    Action_Boleto: TAction;
    Action_Rel_Produtos_abaixo_Minimo: TAction;
    Rel_Produtos_Regencial: TAction;
    Action_Rel_Vendas_Produtos_Pauta: TAction;
    Action_NF_CFOP: TAction;
    Action_NF_NCM: TAction;
    cxStyle41: TcxStyle;
    Action_Produto_Grade_Modelo: TAction;
    Action_Funcionario_Ponto: TAction;
    Action_Produto_Estoque_Local: TAction;
    Action_Clientes_Grupo: TAction;
    Controle_de_estilo_Geral: TcxEditStyleController;
    act_Historico: TAction;
    Action_Comissoes: TAction;
    act_Equipamento: TAction;
    OpenDialog1: TOpenDialog;
    Action_ClientesSimplificado: TAction;
    Action_Cadastro_Setores: TAction;
    ControleSkin: TdxSkinController;
    Action_Venda: TAction;
    Action4: TAction;
    TimerRegistro: TThreadedTimer;
    AutoUpdate1: TAutoUpdate;
    Action_Cad_TipoAgenda: TAction;
    cxHintStyleController1: TcxHintStyleController;
    PnlAtualizacaoPendente: TPanel;
    ImgAttPendente1: TImage;
    TimerAtualizacaoPendente: TTimer;
    ImgAttPendente2: TImage;
    LbAtualizacaoPendente: TcxLabel;
    Action_Unidades: TAction;
    Action_Rel_Entradas: TAction;
    PnlAguardeAtualizacao: TPanel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    UCIBXConn1: TUCIBXConn;
    TransaUC: TIBTransaction;
    UCControlHistorico1: TUCControlHistorico;
    MailUserControl1: TMailUserControl;
    UCControls1: TUCControls;
    UCSettings1: TUCSettings;
    UserControl: TUserControl;
    UCHistWRGeral1: TUCHistWRGeral;
    Act_Relatorios: TAction;
    Action_Relatorio_Producao: TAction;
    TimerGestor: TTimer;
    Action_CadTipoPessoas: TAction;
    ActionFinanceiro_Cheque: TAction;
    MenuErroBanco: TPopupMenu;
    ConfigurarcaminhosdoBancodeDados1: TMenuItem;
    SelecionarBanco1: TMenuItem;
    PnlMensagemEncerramento: TPanel;
    BtnSairSim: TcxButton;
    BtnSairNao: TcxButton;
    CkMensagemSair: TcxCheckBox;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    Bevel3: TBevel;
    Image2: TImage;
    Action_SPED: TAction;
    Action_Tipo_Impressao: TAction;
    Action_Folha_Pagamento_Grupo: TAction;
    cxBalloonHint: TcxHintStyleController;
    TimerBallonHint: TTimer;
    Action_Consulta_Agenda: TAction;
    Action_Venda_Situacao: TAction;
    Action_Configurar_Backup: TAction;
    StatusBar: TdxStatusBar;
    dxStatusBar1Container5: TdxStatusBarContainerControl;
    ImgBackup: TcxImage;
    TimerVerificaConfiguracaoBackup: TTimer;
    Action_Notas_Fiscais: TAction;
    BtnAtualizacaoPendenteOlho: TcxButton;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarCadastros: TdxBar;
    dxBarQuickAccessToobar: TdxBar;
    btnEmreaAtiva: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarAtendimento: TdxBar;
    dxBarVendas: TdxBar;
    dxBarFinanceiro: TdxBar;
    dxBarControleEstoque: TdxBar;
    dxBarImpressao: TdxBar;
    dxBarSair: TdxBar;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    BarSair: TdxBarLargeButton;
    dxBarSuporte: TdxBar;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarBtnProcuraBanco: TdxBarLargeButton;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    BarDepartamentos: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    BarVenda: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    BarProdutos: TdxBarSubItem;
    BarFinanceiro: TdxBarSubItem;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    BarNotasFiscais: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    BarComissoes: TdxBarButton;
    BarFolhaPagamento_Convenio: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxRibbonMenuBaseDados: TdxRibbonPopupMenu;
    dxBarButton54: TdxBarButton;
    CkSolicitaSenha: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    Action_Cad_Pessoas: TAction;
    BarContatos: TdxBarSubItem;
    Action_Consulta_Pessoas: TAction;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarButton55: TdxBarButton;
    dxBarLargeButton27: TdxBarLargeButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    Action_CadTipoPagamento: TAction;
    dxBarButton40: TdxBarButton;
    dxBarButton56: TdxBarButton;
    BtnBarBigData: TdxBarLargeButton;
    Action_Configurar_NFe: TAction;
    dxBarButton57: TdxBarButton;
    MadExceptionHandler1: TMadExceptionHandler;
    Action_Acabamento: TAction;
    dxBarButton59: TdxBarButton;
    BtnBarMensalidade: TdxBarLargeButton;
    ActMensalidade: TAction;
    Action_Produto_Lote: TAction;
    dxBarButton60: TdxBarButton;
    BtnBarLote: TdxBarButton;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarButton62: TdxBarButton;
    actProducao_Equipe: TAction;
    dxBarAssociacao: TdxBar;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    Action_DRE: TAction;
    dxBarButton64: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarLargeButton32: TdxBarLargeButton;
    Action_Notafiscal: TAction;
    Action_Ocorrencias: TAction;
    dxBarLargeButton37: TdxBarLargeButton;
    Action_Modulos: TAction;
    Action_Equipamento: TAction;
    Action_Rateio: TAction;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarProducao: TdxBar;
    dxBarButton61: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    BarProducao: TdxBarSubItem;
    Action_DRE_Classificacao: TAction;
    Action_TabelaFipe: TAction;
    Action_TabelaFipeAtualiza: TAction;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton63: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSeparator4: TdxBarSeparator;
    dxBarButton66: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    Action_Ocorrencias_Tipo: TAction;
    dxBarButton67: TdxBarButton;
    Action_Equipamento_Tipo: TAction;
    dxBarButton68: TdxBarButton;
    Action_Equipamento_Situacao: TAction;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarLargeButton39: TdxBarLargeButton;
    Action_Producao_OS: TAction;
    dxBarButton71: TdxBarButton;
    Action_Rel_Associados: TAction;
    Action_Equipamento_Associado: TAction;
    BarRelEquipamentos: TdxBarSubItem;
    dxBarButton72: TdxBarButton;
    BarOcorencias_Relatorio: TdxBarButton;
    Action_RelOcorrencias: TAction;
    Action_MalaDireta: TAction;
    dxBarButton74: TdxBarButton;
    Action_NF_Natureza_Operacao: TAction;
    dxBarButton75: TdxBarButton;
    Action_NF_Regime_Especial_Tributacao: TAction;
    dxBarButton76: TdxBarButton;
    Action_Antifurto_Tipo: TAction;
    dxBarButton77: TdxBarButton;
    btnSupoteTeamViewer: TdxBarLargeButton;
    btnSupoteAnyDesk: TdxBarLargeButton;
    ActEmail_Massa: TAction;
    dxBarLargeButton42: TdxBarLargeButton;
    actProducao_Planejamento: TAction;
    dxBarLargeButton43: TdxBarLargeButton;
    ActRecurso: TAction;
    dxBarButton78: TdxBarButton;
    ActProdutoCategoria: TAction;
    dxBarButton79: TdxBarButton;
    LbAlertaDebug: TLabel;
    dxBarButton80: TdxBarButton;
    Act_Etiquetas: TAction;
    ActPermissaoVerCustos: TAction;
    ActFormulaPerfil: TAction;
    dxBarButton81: TdxBarButton;
    TimerEstruturaBanco: TTimer;
    ImgEstruturaBanco: TcxImage;
    dxBarButton82: TdxBarButton;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton83: TdxBarButton;
    Action_Produto_Marca: TAction;
    ImgProduto: TcxImageList;
    ImgEnabled: TcxImageList;
    ImgListPrioridades: TcxImageList;
    ImgListPermissaoMensagens: TcxImageList;
    ImgListBotoes32: TcxImageList;
    ImgListBotoes16: TcxImageList;
    ImgListMenuConfig: TImageList;
    ActFamilia: TAction;
    dxBarButton84: TdxBarButton;
    ActProdutoMarkup: TAction;
    actProducao_Situacao: TAction;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    actProducao_Template: TAction;
    actProducao_Estagio: TAction;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    actProducao_Status: TAction;
    dxBarButton90: TdxBarButton;
    actProducao_Marcador: TAction;
    actConfiguracao_Componente: TAction;
    dxBarButton91: TdxBarButton;
    actConfiguracoes_grid: TAction;
    actConfiguracao_Acao: TAction;
    actConfiguracao_Regras: TAction;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ColorEdit1: TcxEditRepositoryColorEdit;
    actConfiguracao_Filtro: TAction;
    actConfiguracao_Agrupamento: TAction;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    ActTabela: TAction;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    actProducao_Roteiro: TAction;
    barProdutoPersonalizado: TdxBarSeparator;
    dxBarSeparator7: TdxBarSeparator;
    Empresa: TFDQuery;
    EmpresaLista: TFDQuery;
    dxBarLargeButton44: TdxBarLargeButton;
    actProducao_Calendario: TAction;
    bliSkinColorPalette: TdxBarListItem;
    actProducao_Producao: TAction;
    actProducao_Impressao: TAction;
    imgProducaoPequena: TcxImageList;
    imgProducaoGrande: TcxImageList;
    dxBarLargeButton8: TdxBarLargeButton;
    lokCidade: TcxEditRepositoryExtLookupComboBoxItem;
    cxImage1: TcxImage;
    ImgLogoBottom: TcxImage;
    dxRibbonRadialMenu1: TdxRibbonRadialMenu;
    edtFuncionario_Ponto: TdxBarButton;
    TransaConfiguracao_Componente: TFDTransaction;
    dxBarButton36: TdxBarButton;
    dxBarButton100: TdxBarButton;
    Action_NF_Erros: TAction;
    Action_NF_Provedor: TAction;
    dxBarButton101: TdxBarButton;
    Action_DashBoard: TAction;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    Action_NF_CST: TAction;
    Action_NF_CNAE: TAction;
    Action_NF_CEST: TAction;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    amValidacao: TdxUIAdornerManager;
    bdgAnuncios: TdxBadge;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    LafDashboard: TdxLayoutSkinLookAndFeel;
    LafDashboardGrupoBlocos: TdxLayoutSkinLookAndFeel;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    Action_Web_Service: TAction;
    TimerNotificacao: TTimer;
    Historico_Notificacao: TFDQuery;
    ImgSkype: TcxImage;
    btnComunicacao: TcxButton;
    dxBarButton107: TdxBarButton;
    Action_Atalho_Rapido: TAction;
    dxBarBI: TdxBarSubItem;
    dxBarButton108: TdxBarButton;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    btnMenuSuperior: TcxButton;
    dxBarButton109: TdxBarButton;
    Action_Email_Modelo: TAction;
    NotificationCenter1: TNotificationCenter;
    Taskbar1: TTaskbar;
    Image4: TImage;
    dxBarButton1: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxBarButton114: TdxBarButton;
    BarCRM: TdxBarSubItem;
    BArEstoque: TdxBarSubItem;
    dxBarSubItem19: TdxBarSubItem;
    dxBarLargeButton45: TdxBarLargeButton;
    dxBarLargeButton46: TdxBarLargeButton;
    BarRH: TdxBarSubItem;
    BarAssociacao: TdxBarSubItem;
    BarAPI: TdxBarSubItem;
    dxBarSubItem22: TdxBarSubItem;
    BarEmpresa: TdxBarSubItem;
    dxBarSeparator8: TdxBarSeparator;
    dxBarSeparator9: TdxBarSeparator;
    dxBarSeparator10: TdxBarSeparator;
    dxBarSeparatorBoletoCheque: TdxBarSeparator;
    dxBarSeparatorComissoes: TdxBarSeparator;
    dxBarSeparatorDre: TdxBarSeparator;
    dxBarSeparatorCaixa: TdxBarSeparator;
    dxBarSeparator15: TdxBarSeparator;
    dxBarButton116: TdxBarButton;
    BarFolhaPagamento: TdxBarButton;
    dxBarButton118: TdxBarButton;
    dxBarSeparator16: TdxBarSeparator;
    dxBarSeparator17: TdxBarSeparator;
    dxBarSeparator18: TdxBarSeparator;
    dxBarSeparator19: TdxBarSeparator;
    dxBarSeparator20: TdxBarSeparator;
    dxBarButton120: TdxBarButton;
    dxBarButton121: TdxBarButton;
    dxBarSeparator21: TdxBarSeparator;
    dxBarButton122: TdxBarButton;
    BarUsuario: TdxBarSubItem;
    dxBarButton123: TdxBarButton;
    dxBarButton124: TdxBarButton;
    dxBarButton125: TdxBarButton;
    dxBarButton126: TdxBarButton;
    dxBarButton127: TdxBarButton;
    dxBarSeparator22: TdxBarSeparator;
    dxBarButton128: TdxBarButton;
    dxBarButton129: TdxBarButton;
    dxBarButton130: TdxBarButton;
    dxBarSeparator23: TdxBarSeparator;
    BarCompra: TdxBarSubItem;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator24: TdxBarSeparator;
    dxBarSeparator25: TdxBarSeparator;
    dxBarSeparator26: TdxBarSeparator;
    dxBarSeparator27: TdxBarSeparator;
    BarRelatorios: TdxBarSubItem;
    BarRelatorios_Personalizados: TdxBarButton;
    dxBarSeparator28: TdxBarSeparator;
    dxBarSeparator29: TdxBarSeparator;
    dxBarSeparator30: TdxBarSeparator;
    dxBarButton119: TdxBarButton;
    Action_CadVenda: TAction;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton131: TdxBarButton;
    dxBarSeparator31: TdxBarSeparator;
    btnMenuLateral: TcxButton;
    btnPonto: TcxButton;
    PoupMenuRibbon: TPopupMenu;
    poupMenuLateral: TMenuItem;
    poupMenuRibbonSuperior: TMenuItem;
    dxBarButton53: TdxBarButton;
    Action_Importar_XML: TAction;
    dxBarButton132: TdxBarButton;
    Action_Orcamento: TAction;
    BarProposta: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton134: TdxBarButton;
    dxBarButton135: TdxBarButton;
    dxBarButton136: TdxBarButton;
    dxBarButton137: TdxBarButton;
    dxBarButton138: TdxBarButton;
    dxBarButton139: TdxBarButton;
    dxBarButton140: TdxBarButton;
    dxBarButton141: TdxBarButton;
    dxBarButton142: TdxBarButton;
    dxBarButton143: TdxBarButton;
    dxBarButton144: TdxBarButton;
    dxBarButton145: TdxBarButton;
    dxBarButton146: TdxBarButton;
    BarGarantias: TdxBarButton;
    dxBarSeparator32: TdxBarSeparator;
    dxBarButton148: TdxBarButton;
    dxBarButton149: TdxBarButton;
    Action_NF_Entrada: TAction;
    Action_Nota_Fiscal_Entrada: TAction;
    dxBarButton150: TdxBarButton;
    dxBarButton151: TdxBarButton;
    Action_Consulta_Representante: TAction;
    dxBarButton152: TdxBarButton;
    Action_Consulta_Funcionario: TAction;
    BarFuncionario: TdxBarButton;
    dxBarSeparator33: TdxBarSeparator;
    dxBarSeparator13: TdxBarSeparator;
    dxBarSeparator34: TdxBarSeparator;
    dxBarButton154: TdxBarButton;
    Action_Venda_Estagio: TAction;
    dxBarButton155: TdxBarButton;
    Action_ConOrcamento: TAction;
    BarConsultaProposta: TdxBarButton;
    dxBarSeparator35: TdxBarSeparator;
    Action_PreVenda: TAction;
    Action_ConPreVenda: TAction;
    dxBarButton157: TdxBarButton;
    dxBarButton158: TdxBarButton;
    dxBarButton159: TdxBarButton;
    Action_Producao_Motivo: TAction;
    dxBarButton160: TdxBarButton;
    WREventosCadastro1: TWREventosCadastro;
    ImgLogoAssociacao: TcxImage;
    Action_Rel_Produtos_Comprados: TAction;
    dxBarButton161: TdxBarButton;
    dxBarSeparator36: TdxBarSeparator;
    barProducao_Fila_TV: TdxBarButton;
    Action_Producao_Fila: TAction;
    dxBarButton163: TdxBarButton;
    Action_Conciliacao_Bancaria: TAction;
    dxBarSeparator37: TdxBarSeparator;
    dxBarButton164: TdxBarButton;
    BarImportarFinanceiro: TdxBarButton;
    Action_Equipamento_Rateio: TAction;
    dxBarButton165: TdxBarButton;
    dxBarButton166: TdxBarButton;
    dxBarButton167: TdxBarButton;
    dxBarButton168: TdxBarButton;
    dxBarButton169: TdxBarButton;
    dxBarButton170: TdxBarButton;
    dxBarButton171: TdxBarButton;
    dxBarButton172: TdxBarButton;
    dxBarButton173: TdxBarButton;
    dxBarSeparator38: TdxBarSeparator;
    Action_ChangeLog: TAction;
    dxBarButton175: TdxBarButton;
    Action_VendaNotasFiscais: TAction;
    dxBarButton176: TdxBarButton;
    dxBarButton177: TdxBarButton;
    dxBarButton178: TdxBarButton;
    dxBarButton179: TdxBarButton;
    dxBarButton180: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton181: TdxBarButton;
    dxBarSeparator39: TdxBarSeparator;
    dxBarButton182: TdxBarButton;
    Action_ConFinanceiro: TAction;
    Action_Financeiro_Metas: TAction;
    BarVendas_metas: TdxBarButton;
    tcMenu: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tcmProduto: TdxTileControlItem;
    tcmContato: TdxTileControlItem;
    tcmProducao: TdxTileControlItem;
    tcmVenda: TdxTileControlItem;
    tcmFiscal: TdxTileControlItem;
    tcmEmpresaSelecionada: TdxTileControlItem;
    tcmCompra: TdxTileControlItem;
    tcmFinanceiro: TdxTileControlItem;
    tcmCRM: TdxTileControlItem;
    tcmEstoque: TdxTileControlItem;
    tcmIntegracoes: TdxTileControlItem;
    tcmEmpresa: TdxTileControlItem;
    tcmUsuarios: TdxTileControlItem;
    tcmBaseDeConhecimento: TdxTileControlItem;
    tcmMensagens: TdxTileControlItem;
    tcmAssociacao: TdxTileControlItem;
    tcmPrincipal: TdxTileControlItem;
    tcmRelatorio: TdxTileControlItem;
    tcmRH: TdxTileControlItem;
    imgTile64: TcxImageList;
    imgTile32: TcxImageList;
    t: TdxTileControlItem;
    tcmProdutoComposto: TdxTileControlItem;
    Action_Venda_Financeiro_Tef: TAction;
    tcmProdutoPresonalizados: TdxTileControlItem;
    tcmProdutoPrecificacao: TdxTileControlItem;
    Action_Almoxarifado_Requisicao: TAction;
    dxBarButton184: TdxBarButton;
    Action_Servico: TAction;
    Action_Patrimonio: TAction;
    Action_MateriaPrima: TAction;
    Action_Composicao: TAction;
    Action_Personalizado: TAction;
    Action_UsoEConsumo: TAction;
    Action_Variacao: TAction;
    dxBarButton185: TdxBarButton;
    Action_Boleto_API: TAction;
    Action_PDV: TAction;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton186: TdxBarButton;
    dxBarSeparator40: TdxBarSeparator;
    Action_Painel_Principal: TAction;
    Action_Requisicao_Motivo: TAction;
    btnKPI_Producao: TcxButton;
    btnKPI_RH: TcxButton;
    TimerCronJob: TTimer;
    btnKPI_Estoque: TcxButton;
    btnKPI_Vendas: TcxButton;
    btnKPI_Financeiro: TcxButton;
    btnKPI_Compras: TcxButton;
    cxStylePinel_MenuFundo: TcxStyle;
    bdgFinanceiro: TdxBadge;
    bdgProducao: TdxBadge;
    bdgCompras: TdxBadge;
    bdgEstoque: TdxBadge;
    bdgRH: TdxBadge;
    bdgVendas: TdxBadge;
    btnKPI_Olho: TcxButton;
    btnKPI_Produto: TcxButton;
    Action_CronJob: TAction;
    tcmPowerBI: TdxTileControlItem;
    Action_Business_Intelligence: TAction;
    dxBarButton188: TdxBarButton;
    dxBarButton189: TdxBarButton;
    Action_Consulta_Associacao: TAction;
    dxBarSeparator12: TdxBarSeparator;
    Action_Centro_Custo: TAction;
    dxBarButton39: TdxBarButton;
    Action_RelEquipamento: TAction;
    dxBarButton10: TdxBarButton;
    BarMarkup: TdxBarButton;
    Action_Produto_Estoque: TAction;
    dxBarButton42: TdxBarButton;
    dxBarSeparator6: TdxBarSeparator;
    Action_Venda_Produto: TAction;
    Action_NF_Entrada_Produtos: TAction;
    dxBarButton73: TdxBarButton;
    dxBarButton115: TdxBarButton;
    dxBarButton117: TdxBarButton;
    Action_SINTEGRA: TAction;
    dxBarButton133: TdxBarButton;
    dxBarButton147: TdxBarButton;
    dxBarButton153: TdxBarButton;
    dxBarButton156: TdxBarButton;
    dxBarButton162: TdxBarButton;
    dxBarButton183: TdxBarButton;
    dxBarButton190: TdxBarButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarButton191: TdxBarButton;
    dxBarSeparator11: TdxBarSeparator;
    Action1: TAction;
    dxBarButton174: TdxBarButton;
    Action_Funcionario_Ficha_Ponto: TAction;
    dxBarSeparator14: TdxBarSeparator;
    Action_Comissao_Funcionario: TAction;
    Action_Comissao_Venda: TAction;
    Action_Comissao_Representante: TAction;
    Action_Comissao_Agencia: TAction;
    dxBarButton85: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    BarComissoesFinanceiro: TdxBarButton;
    BarComissoesVenda: TdxBarButton;
    BarComissoesProducao: TdxBarButton;
    dxBarSeparator41: TdxBarSeparator;
    lblBaixaVelocidade: TcxLabel;
    Action_Produto_Simples: TAction;
    Action_ManifestacaoEventos: TAction;
    Action_Historico_Requisicao: TAction;
    Action_Relatorio_Categoria: TAction;
    Action_Relatorio_Funcionario: TAction;
    Action_Relatorio_TipoProduto: TAction;
    dxBarButton192: TdxBarButton;
    dxBarButton193: TdxBarButton;
    actProducao_Kanban: TAction;
    dxBarButton194: TdxBarButton;
    actControle: TAction;
    dxBarButton187: TdxBarButton;
    ActCentro_Custo: TAction;
    awmAlert: TdxAlertWindowManager;
    ilAlert: TcxImageList;
    mdAlertHelper: TdxMemData;
    mdAlertHelperIdentifier: TIntegerField;
    procedure ShowHint(Sender: TObject);
    procedure TimerHoraDoServidorTimer(Sender: TObject);
    procedure ProdutosMateriaPrima1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure REGISTRO1Click(Sender: TObject);
    procedure CONECTARBeforeConnect(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Motos2Click(Sender: TObject);
    procedure MotoscomValores1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure UserControlLoginSucess(Sender: TObject; AIdUser: Integer; AUsuario, ANome, ASenha, AEmail: string; APrivilegiado: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Carros3Click(Sender: TObject);
    procedure PRODUTOSEMESTOQUE1Click(Sender: TObject);
    procedure ESTOQUEABAIXODAQUANTIDADEMINIMA1Click(Sender: TObject);
    procedure PautadePreos1Click(Sender: TObject);
    procedure NotaFiscaisSada1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure Action_FecharExecute(Sender: TObject);
    procedure Action_TelefonesExecute(Sender: TObject);
    procedure Action_CompromissosExecute(Sender: TObject);
    procedure Action_Acerto_de_estoqueExecute(Sender: TObject);
    procedure Action_Notas_e_SolicitacaoExecute(Sender: TObject);
    procedure Action_InformacoesExecute(Sender: TObject);
    procedure Action_FinanceiroExecute(Sender: TObject);
    procedure ActionA_PagarExecute(Sender: TObject);
    procedure ActionA_ReceberExecute(Sender: TObject);
    procedure Action_CaixaExecute(Sender: TObject);
    procedure Action_LocalAutoExecute(Sender: TObject);
    procedure Action_RecebimentoExecute(Sender: TObject);
    procedure Action_AtualizarExecute(Sender: TObject);
    procedure Action_Cad_CidadesExecute(Sender: TObject);
    procedure Action_BancosExecute(Sender: TObject);
    procedure Action_ContasExecute(Sender: TObject);
    procedure Action_EmpresaExecute(Sender: TObject);
    procedure Action_CondicaoPagtoExecute(Sender: TObject);
    procedure Action_GrupoProdutosExecute(Sender: TObject);
    procedure Action_Cad_OSExecute(Sender: TObject);
    procedure Action_BarrasExecute(Sender: TObject);
    procedure Action_Procura_BancoExecute(Sender: TObject);
    procedure Action_ParametrosExecute(Sender: TObject);
    procedure Action_Empresa_AtivaExecute(Sender: TObject);
    procedure Action_Seleciona_BancoExecute(Sender: TObject);
    procedure Action_BalancoExecute(Sender: TObject);
    procedure Action_Produto_PatrimonioExecute(Sender: TObject);
    procedure Action_Tipo_ProdutoExecute(Sender: TObject);
    procedure Action_BoletoExecute(Sender: TObject);
    procedure Rel_Produtos_RegencialExecute(Sender: TObject);
    procedure Action_Rel_ClientesExecute(Sender: TObject);
    procedure Action_Rel_Vendas_Produtos_PautaExecute(Sender: TObject);
    procedure Action_NF_CFOPExecute(Sender: TObject);
    procedure Action_NF_NCMExecute(Sender: TObject);
    procedure Action_Rel_VendasExecute(Sender: TObject);
    procedure Action_Produto_Grade_ModeloExecute(Sender: TObject);
    procedure Action_Funcionario_PontoExecute(Sender: TObject);
    procedure Action_Produto_Estoque_LocalExecute(Sender: TObject);
    procedure Action_Email_SuporteExecute(Sender: TObject);
    procedure Action_Clientes_GrupoExecute(Sender: TObject);
    procedure UserControlStartApplication(Sender: TObject);
    procedure Action_Cadastro_SetoresExecute(Sender: TObject);
    procedure UserControlLogoff(Sender: TObject; IDUser: Integer);
    procedure Action4Execute(Sender: TObject);
    procedure TimerRegistroTimer(Sender: TObject);
    procedure Action_Cad_TipoAgendaExecute(Sender: TObject);
    procedure UserControlAfterLogin(Sender: TObject);
    procedure TimerAtualizacaoPendenteTimer(Sender: TObject);
    procedure LbAtualizacaoPendenteClick(Sender: TObject);
    procedure Action_UnidadesExecute(Sender: TObject);
    procedure Action_Rel_EntradasExecute(Sender: TObject);
    procedure Act_RelatoriosExecute(Sender: TObject);
    procedure ControleSkinSkinForm(Sender: TObject; AForm: TCustomForm; var ASkinName: string; var UseSkin: Boolean);
    procedure TimerGestorTimer(Sender: TObject);
    procedure Action_CadTipoPessoasExecute(Sender: TObject);
    procedure CONECTARAfterConnect(Sender: TObject);
    procedure CONECTARBeforeDisconnect(Sender: TObject);
    procedure ActionFinanceiro_ChequeExecute(Sender: TObject);
    procedure SelecionarBanco1Click(Sender: TObject);
    procedure ConfigurarcaminhosdoBancodeDados1Click(Sender: TObject);
    procedure BtnSelecionarBancoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Action_SPEDExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Action_Folha_PagamentoExecute(Sender: TObject);
    procedure Action_Tipo_ImpressaoExecute(Sender: TObject);
    procedure UserControlLogin(Sender: TObject; var User, Password: string);
    procedure Action_Folha_Pagamento_GrupoExecute(Sender: TObject);
    procedure TimerBallonHintTimer(Sender: TObject);
    procedure Action_Venda_SituacaoExecute(Sender: TObject);
    procedure Action_Configurar_BackupExecute(Sender: TObject);
    procedure ImgBackupClick(Sender: TObject);
    procedure TimerVerificaConfiguracaoBackupTimer(Sender: TObject);
    procedure BtnAtualizacaoPendenteOlhoClick(Sender: TObject);
    procedure RibbonQuickAccessToolbar1MoreCommands(Sender: TObject; var Handled: Boolean);
    procedure Action_CadastroExecute(Sender: TObject);
    procedure Action_CadTipoPagamentoExecute(Sender: TObject);
    procedure Action_Configurar_NFeExecute(Sender: TObject);
    procedure MadExceptionHandler1Exception(const exceptIntf: IMEException; var handled: Boolean);
    procedure Action_AcabamentoExecute(Sender: TObject);
    procedure Action_Produto_LoteExecute(Sender: TObject);
    procedure Action_CadastroTipoContratoExecute(Sender: TObject);
    procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const ASkinName: string);
    procedure actProducao_EquipeExecute(Sender: TObject);
    procedure Action_DREExecute(Sender: TObject);
    procedure Action_NotafiscalExecute(Sender: TObject);
    procedure Action_ModulosExecute(Sender: TObject);
    procedure Action_OcorrenciasExecute(Sender: TObject);
    procedure Action_RateioExecute(Sender: TObject);
    procedure Action_DRE_ClassificacaoExecute(Sender: TObject);
    procedure Action_Rel_AssociadosExecute(Sender: TObject);
    procedure Action_Equipamento_AssociadoExecute(Sender: TObject);
    procedure Action_RelOcorrenciasExecute(Sender: TObject);
    procedure Action_MalaDiretaExecute(Sender: TObject);
    procedure Action_NF_Natureza_OperacaoExecute(Sender: TObject);
    procedure Action_NF_Regime_Especial_TributacaoExecute(Sender: TObject);
    procedure ActEmail_MassaExecute(Sender: TObject);
    procedure ActRecursoExecute(Sender: TObject);
    procedure ActProdutoCategoriaExecute(Sender: TObject);
    procedure Act_EtiquetasExecute(Sender: TObject);
    procedure ActPermissaoVerCustosExecute(Sender: TObject);
    procedure Action_Notas_FiscaisExecute(Sender: TObject);
    procedure TimerEstruturaBancoTimer(Sender: TObject);
    procedure ImgEstruturaBancoClick(Sender: TObject);
    procedure Action_Produto_MarcaExecute(Sender: TObject);
    procedure ActFamiliaExecute(Sender: TObject);
    procedure ActProdutoMarkupExecute(Sender: TObject);
    procedure actProducao_SituacaoExecute(Sender: TObject);
    procedure actProducao_TemplateExecute(Sender: TObject);
    procedure actProducao_EstagioExecute(Sender: TObject);
    procedure actProducao_StatusExecute(Sender: TObject);
    procedure actProducao_MarcadorExecute(Sender: TObject);
    procedure actConfiguracao_ComponenteExecute(Sender: TObject);
    procedure actConfiguracoes_gridExecute(Sender: TObject);
    procedure actConfiguracao_AcaoExecute(Sender: TObject);
    procedure actConfiguracao_RegrasExecute(Sender: TObject);
    procedure actConfiguracao_FiltroExecute(Sender: TObject);
    procedure actConfiguracao_AgrupamentoExecute(Sender: TObject);
    procedure ActTabelaExecute(Sender: TObject);
    procedure actProducao_RoteiroExecute(Sender: TObject);
    procedure EmpresaBeforeOpen(DataSet: TDataSet);
    procedure dxBarLargeButton48Click(Sender: TObject);
    procedure bliSkinColorPaletteClick(Sender: TObject);
    procedure Action_NF_ErrosExecute(Sender: TObject);
    procedure Action_NF_ProvedorExecute(Sender: TObject);
    procedure Action_NF_CSTExecute(Sender: TObject);
    procedure Action_NF_CNAEExecute(Sender: TObject);
    procedure Action_NF_CESTExecute(Sender: TObject);
    procedure Action_Centro_CustoExecute(Sender: TObject);
    procedure TimerNotificacaoTimer(Sender: TObject);
    procedure Historico_NotificacaoBeforeOpen(DataSet: TDataSet);
    procedure Action_Email_ModeloExecute(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject; ANotification: TNotification);
    procedure dxTabbedMDIManager1PageAdded(Sender: TdxTabbedMDIManager; APage: TdxTabbedMDIPage);
    procedure btnMenuLateralDropDownMenuPopup(Sender: TObject; var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure poupMenuLateralClick(Sender: TObject);
    procedure Action_Importar_XMLExecute(Sender: TObject);
    procedure btnMenuSuperiorClick(Sender: TObject);
    procedure Action_NF_EntradaExecute(Sender: TObject);
    procedure bdgAnunciosClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure Action_Venda_EstagioExecute(Sender: TObject);
    procedure Action_Producao_MotivoExecute(Sender: TObject);
    procedure Action_Rel_Produtos_CompradosExecute(Sender: TObject);
    procedure Action_Producao_FilaExecute(Sender: TObject);
    procedure Action_ConsultaExecute(Sender: TObject);
    procedure Action_Equipamento_RateioExecute(Sender: TObject);
    procedure Action_ChangeLogExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tcmPrincipalClick(Sender: TdxTileControlItem);
    procedure tcmBaseDeConhecimentoClick(Sender: TdxTileControlItem);
    procedure tcmEmpresaSelecionadaClick(Sender: TdxTileControlItem);
    procedure Action_Venda_Financeiro_TefExecute(Sender: TObject);
    procedure tcMenuMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure TimerCronJobTimer(Sender: TObject);
    procedure bdgProducaoClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure btnKPI_OlhoDropDownMenuPopup(Sender: TObject; var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure btnKPI_ProdutoClick(Sender: TObject);
    procedure btnKPI_FinanceiroMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure tcmPowerBIClick(Sender: TdxTileControlItem);
    procedure Action_Business_IntelligenceExecute(Sender: TObject);
    procedure btnSupoteTeamViewerClick(Sender: TObject);
    procedure btnSupoteAnyDeskClick(Sender: TObject);
    procedure btnComunicacaoClick(Sender: TObject);
    procedure Action_RelEquipamentoExecute(Sender: TObject);
    procedure awmAlertMouseDown(Sender: TObject; AAlertWindow: TdxAlertWindow; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
    procedure awmAlertMouseLeave(Sender: TObject; AAlertWindow: TdxAlertWindow);
    procedure awmAlertMouseMove(Sender: TObject; AAlertWindow: TdxAlertWindow; AShift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    FrmAtualizacaoPendente: TPanelForm;
    FAtualizacaoManual: Boolean;
    FBackupAtivo, FBackupConfigVerificado: Boolean;
    FCaminhoBancoLogado: string;
    FDiffDataServidor: Extended; //Armazena a diferença entre a data do servidor e a data local

    FBotoesHabilitados: Array [0..6] of Boolean;

    procedure RespostaThdAtualizacao(Sender: TObject; DadosAtualizacao: TDadosAtualizacao);
    procedure RespostaThdRegistro(Sender: TObject);
    procedure AtualizarSistema(ADadosAtualizacao: TDadosAtualizacao);
    procedure BalancoAutomatico;
    procedure AplicaSkinUsuario;
    procedure MSAbrirVenda(var Msg: TMessage); message WM_ABRIR_VENDA;
    procedure WMFocusMailMessage(var AMessage: TMessage); message WM_FOCUSMAILMESSAGE;

    procedure AplicaModulosAtivos;
    procedure VerificaSeExisteBackupConfiguradoOuPendenteParaGerar;
    procedure TranslationChanged;
  public
    FExibirCallStack: Boolean;
    FListaPermissoesActions: TList<TPermissaoAction>;

    { Public declarations }
    procedure AtualizaLabelAlerta;
    procedure OnClickConectaBanco(Sender: TObject);
    procedure OnClickConectaBancoEReinicia(Sender: TObject);
    procedure OnClickPanelIndex4(Sender: TObject);
    procedure FechaAplicacao(Restart: Boolean);
    procedure VerificaSistemaModulo;
    procedure ActivateBalloonHint(ACtrl: TControl; const ATitulo, ADescricao: string; AMessageType: TMsgDlgType = mtInformation; ATempo: Integer = 7000);
    procedure CloseBalloonHint;
    procedure Register_Permissao(ACaption, ACompName, AFormName, AGroupName: String;
                ANotAllowedMode: TNotAllowedMode; APackage: TUCPackage; AValue: Boolean);
    function GetPermissaoAction(AAction: TAction): Boolean;
    function GetFormBorderIcons: TdxRibbonBorderIcons; override;
  end;

function GetPodeVerCustos: Boolean;

var
  FrmPrincipal: TFrmPrincipal;
  QuantNotificacao: Integer;
  FTAG_CriandoTela:Integer;

implementation

{$R *.DFM}

uses
  CadProduto_Barras, Controller.KPI, CadEmpresa, Financeiro_Boleto, Agenda, CadOcorrencia,
  CadBalanco, CadNotaFiscal, CadRateio, wrMenu, DataModule, CadMalaDireta,
  CadFuncionario_Ponto, CadBackup, ImpClientes, ImpProduto_Pauta, Senha,
  ConTelefones, ShellAPI, Splash, DateUtils, Registry, Rotinas, CaminhoBanco,
  Registro, ImpVendas_Periodo, Financeiro_Contas_Escolha, About, NF_Entrada,
  ImpVeiculos_Estoque_Custos, ImpProdutoCusto_Fabrica,
  RelAuditoriaSINTEGRA_e_SPED, ImpVeiculos_Estoque, ImpProduto,
  ImpProdutoCusto_Loja, ImpVeiculos_Medidas, StrUtils, ImpNotasFiscais_Preriodo,
  ImpProdutos_Gerencial, Unit_SQL, uLayout, Math, ConFolha_Pagamento_Grupo,
  ImpEntradas, Relatorios, PngImage, ImpEtiquetas, Financeiro, DataModuleBanco,
  Financeiro_Recebimento, Financeiro_AReceber, Financeiro_APagar,
  Financeiro_Cheque, DataModuleAtualizacao, ConFolha_Pagamento, DataModuleBackup,
  FalhaConexaoBanco, BigData, NFe, ConNota_Fiscal, ConMensalidade, ConLogSistema,
  ConNF_Natureza_Operacao, ConOcorrencia, ConProduto_Grupo, ImpCad_Equipamento,
  ImpClientes_Ativos, ImpEquipamentoAssociado, ImpOcorrencias,
  ConCentro_Trabalho, Email, ACBrUtil, Aguarde, uWeb, wrFuncoes, uBalanco,
  ConRecurso, ConProduto_Categoria, ConContas, uGerenciadorThreads, ConCidades,
  ConSetor, ConNF_Regime_Especial_Tributacao, ConNF_NCM, ConNF_CFOP,
  ConTipo_Pagamento, ConBancos, ConCondicaoPagto, ConProduto_Tipo,
  ConProduto_Estoque_Local, ConProduto_Grade_Modelo, ConUnidade, ConProduto_Lote,
  ConVenda_Tipo, ConVenda_Situacao, ConAcabamento, ConLocal, ConTipo_Impressao,
  ConPessoas_Tipo, ConProduto_Marca, ConAgenda_Titulo, ConDRE,
  ConDRE_Classificacao, ConEmail_Massa, ConNF_Entrada, ConFamilia,
  ConProduto_Markup, ConfiguracoesM, ConContrato_Tipo, ConProducao_Situacao,
  ConProducao_Template, ConProducao_Estagio, ConProducao_Acao,
  ConProducao_Marcador, ConConfiguracao_Componente, ConConfiguracao_Acoes,
  ConConfiguracao_Regra, ConProduto_Tabela, ConPessoas_Grupo,
  ConConfiguracoes_Grid, ConConfiguracao_Filtro, ConConfiguracao_Agrupamento,
  wrFuncoes_Office, ConNF_Erros, ConNF_Provedor, ConEmpresa, ConNF_CEST,
  ConNF_CNAE, ConNF_CST, ConCentro_Custo, ConWeb_Service, ConProjeto,
  ConEmail_Modelo, ConProducao_Kanban, ConVenda_Estagio, ConProducao_Motivo,
  Producao_Fila, CadFinanceiro_Cartao, ConVenda_Financeiro_Tef,
  ConEquipamento_Rateio, ChangeLog, Menu, ConProducao_Roteiro, wrSLA, Sugestoes,
  Classes.APP, Base_APP_Menu, Classes.Acoes, wr_memoria, routes, SQL.Contas,
  Tag.APP, Tag.Agrupador, Tag.Componente, Tag.Valor_Inicial, Tag.Form, Tag.Filtro, Tag.Report, Tag.Modulo,
  Controller.Principal, Controller.WR_APP;

function GetPodeVerCustos: Boolean;
begin
  Result := FrmPrincipal.ActPermissaoVerCustos.Enabled;
end;

procedure TFrmPrincipal.tcmPowerBIClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Business_Intelligence.Execute;  // Isso ta errado
end;

procedure TFrmPrincipal.bdgAnunciosClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
begin
  btnComunicacao.Click;
end;

procedure TFrmPrincipal.Register_Permissao(ACaption, ACompName, AFormName, AGroupName: String;
                ANotAllowedMode: TNotAllowedMode; APackage: TUCPackage; AValue: Boolean);
begin
  with UserControl.ExtraRights.Add do
  begin
    Caption        := ACaption;
    CompName       := ACompName;
    FormName       := AFormName;
    GroupName      := AGroupName;
    NotAllowedMode := ANotAllowedMode;
    Package        := APackage;
  end;
end;


{$REGION '//////////////////////// SEÇÃO 1: Funções Gerais do sistema //////////////////////////////////////////////////////////'}
  //////////////////////// SEÇÃO 1: Funções Gerais do sistema //////////////////////////////////////////////////////////
  /// Pode ser colocados aqui funções que Precisam ser acessadas por todo o sistema e precisa Do self da tela

procedure TFrmPrincipal.ActPermissaoVerCustosExecute(Sender: TObject);
begin
  //Manter esta linha, necessário para a action ficar habilitada
end;

procedure TFrmPrincipal.TranslationChanged;
begin

end;

procedure TFrmPrincipal.TimerBallonHintTimer(Sender: TObject);
begin
  cxBalloonHint.HideHint;
  TimerBallonHint.Enabled := False;
end;

procedure TFrmPrincipal.TimerHoraDoServidorTimer(Sender: TObject);
begin
  try
    if not Assigned(StatusBar) then
      Exit;

    StatusBar.Panels[2].Text := FormatDateTime(FormatSettings.LongTimeFormat + ' dd/mm/yyyy', Now + FDiffDataServidor);
    TimerHoraDoServidor.Tag := TimerHoraDoServidor.Tag + 1;
    if TimerHoraDoServidor.Tag >= 120 then
    begin
      //Atualiza a diferença de data com o servidor a cada 2 minutos
      TimerHoraDoServidor.Tag := 0;
      if CONECTAR.Connected then
        FDiffDataServidor := DataHoraSys - Now;
    end;

    //No dev, alterar a cor para vermelho
    if MinutesBetween(Now + FDiffDataServidor, Now) >= 10 then
      StatusBar.Panels[2].Text := '(!)' + StatusBar.Panels[2].Text + '(!)';
  except
    TimerHoraDoServidor.Tag := 0;
  end;
end;

procedure TFrmPrincipal.TimerNotificacaoTimer(Sender: TObject);   // Routes
var
  MyNotification: TNotification; //Defines a TNotification variable
  Notifica: string;
begin
  Exit;

  TimerNotificacao.Enabled := False;

  if (CONECTAR.Connected) and (Usuario.Codigo <> 0) then
  try
    if Historico_Notificacao.Active then
      Historico_Notificacao.Refresh
    else
      Historico_Notificacao.Open;

    bdgAnuncios.Visible := (Historico_Notificacao.FieldByName('Quant').AsInteger > 0);
    bdgAnuncios.Text := Historico_Notificacao.FieldByName('Quant').AsString;

    bdgAnuncios.Size.Width := 18;
    if Historico_Notificacao.FieldByName('Quant').AsInteger >= 10 then
      bdgAnuncios.Size.Width := 24;
    if Historico_Notificacao.FieldByName('Quant').AsInteger >= 100 then
      bdgAnuncios.Size.Width := 30;

    if Historico_Notificacao.FieldByName('Quant').AsInteger < QuantNotificacao then
      QuantNotificacao := Historico_Notificacao.FieldByName('Quant').AsInteger;

    if Historico_Notificacao.FieldByName('Quant').AsInteger > 0 then
    begin
      TaskBar1.ProgressMaxValue := 100;
      TaskBar1.ProgressState := TTaskBarProgressState.Normal;
      TaskBar1.ProgressValue := 0;
      TaskBar1.OverlayHint := 'Você tem ' + QuantNotificacao.ToString + ' notificações não lidas ';
      TaskBar1.OverlayIcon := Image4.Picture.Icon;
    end
    else
    begin
      TaskBar1.OverlayIcon := nil;
    end;

    if Historico_Notificacao.RecordCount > 0 then
    begin
      Historico_Notificacao.First;
      while not Historico_Notificacao.eof do
      begin
        ControllerPrincipal_MessagensNovas(Historico_Notificacao);
        Historico_Notificacao.Next;
      end;
    end;

    if Historico_Notificacao.FieldByName('Quant').AsInteger > QuantNotificacao then
    begin
      QuantNotificacao := Historico_Notificacao.FieldByName('Quant').AsInteger;
      MyNotification := NotificationCenter1.CreateNotification;
      try
        MyNotification.Name := 'Comunição - Office Impresso'; //Defines the name of the notification.
        MyNotification.Title := 'Mensagens'; //Defines the name that appears when the notification is presented.
        MyNotification.AlertBody := 'Você tem uma nova notificação'; //Defines the body of the notification that appears below the title.

        NotificationCenter1.PresentNotification(MyNotification); //Presents the notification on the screen.
      finally
        MyNotification.Free; //Frees the variable
      end;
    end;

  except
    Historico_Notificacao.Close;
  end;
  TimerNotificacao.Interval := 2 * TimerNotificacao.Interval;
  TimerNotificacao.Enabled := (Historico_Notificacao.RecordCount > 0);
end;

procedure TFrmPrincipal.TimerEstruturaBancoTimer(Sender: TObject);
var
  AListaErros: TStringList;
begin
  {Tags:
   0 - Efetuando a verificação da estrutura
   1 - Ícone piscando: Visível
   2 - Ícone piscando: Invisível}

  //--------------------------------
  //Recurso desativado até que seja totalmente implementado
  TimerEstruturaBanco.Enabled := False;
  Exit;
  //--------------------------------

  if TimerEstruturaBanco.Tag = 0 then
  begin
    AListaErros := TStringList.Create;
    try
      TBancoEstrutura.ValidarEstrutura(AListaErros);
      if AListaErros.Count > 0 then
      begin
        ImgEstruturaBanco.Hint := AListaErros.Text;
        TimerEstruturaBanco.Tag := 1;
      end
      else
        TimerEstruturaBanco.Enabled := False;
    finally
      AListaErros.Free;
    end;
  end
  else if TimerEstruturaBanco.Tag = 1 then
  begin
    ImgEstruturaBanco.Visible := True;
    TimerEstruturaBanco.Tag := 2;
  end
  else if TimerEstruturaBanco.Tag = 2 then
  begin
    ImgEstruturaBanco.Visible := False;
    TimerEstruturaBanco.Tag := 1;
  end;
end;

procedure TFrmPrincipal.TimerGestorTimer(Sender: TObject);
var
  AHandle: THandle;
begin
  TimerGestor.Enabled := False;
  if PAFNFE then
    Exit;
  if IsBancoAtualizado then
  begin
    TimerGestor.Interval := 100000;
    TimerGestor.Enabled := True;
    Exit;
  end;
  try
    AHandle := 0;
    if not FileExists(GetDirSistema + 'WR2Gestor.exe') then
    begin
      if TimerGestor.Tag = 0 then
      begin
        TimerGestor.Tag := 99; //99 = Thread de download sendo executada
        TThread.CreateAnonymousThread(
          procedure()
          begin
            try
              with TIdFTP.Create(nil) do
              try
                //Cria o componente
                Host := 'ftp.microgrupo.com.br';
                Username := 'microgrupo01';
                Password := 'wscrct000465';
                Passive := True;
                AutoLogin := True;
                ProxySettings.ProxyType := fpcmNone;
                ProxySettings.Port := 0;
                Connect;
                ChangeDir('gestor');

                //Faz o download
                TransferType := ftBinary;
                if not DirectoryExists(GetDirSistema + 'Temp') then
                  ForceDirectories(GetDirSistema + 'Temp');
                Get('WR2Gestor.zib', GetDirSistema + 'Temp\WR2Gestor.zib', True);
                AutoUpdate1.Descompactar(GetDirSistema + 'Temp\WR2Gestor.zib', GetDirSistema, 'WR2Gestor.exe');
//                ShellExecute(Self.Handle, 'open', PChar(GetDirSistema + 'WR2Gestor.exe'), '-oculto', '', SW_SHOWNORMAL);
              finally
                Free;
                TThread.Synchronize(TThread.CurrentThread,
                  procedure()
                  begin
                    TimerGestor.Tag := 0;
                  end);
              end;
            except
            end;
          end).Start;
      end;
    end
    else
    begin
      AHandle := OpenMutex(MUTEX_ALL_ACCESS, False, 'UNClasses.APP');
      if AHandle = 0 then
        TThread.CreateAnonymousThread(
          procedure()
          begin
            ShellExecute(Handle, 'open', PChar(GetDirSistema + 'WR2Gestor.exe'), '-oculto', '', SW_SHOWNORMAL);
          end).Start;
    end;
  finally
    if AHandle <> 0 then
      CloseHandle(AHandle);
    TimerGestor.Interval := 100000;
    TimerGestor.Enabled := True;
  end;
end;

procedure TFrmPrincipal.CloseBalloonHint;
begin
  cxBalloonHint.HideHint;
end;

procedure TFrmPrincipal.ActivateBalloonHint(ACtrl: TControl; const ATitulo, ADescricao: string; AMessageType: TMsgDlgType = mtInformation; ATempo: Integer = 7000);
var
  APoint: TPoint;
begin
  cxBalloonHint.HideHint;
  TimerBallonHint.Enabled := False;

  APoint := GetScreenCoordinates(ACtrl);
  APoint.X := APoint.X + (ACtrl.Width - Trunc(ACtrl.Width * 0.2));
  APoint.Y := APoint.Y + (ACtrl.Height div 2);

  with TcxHintStyle(cxBalloonHint.HintStyle) do
  begin
    case AMessageType of
      mtWarning:
        IconType := cxhiWarning;
      mtError:
        IconType := cxhiError;
      mtInformation:
        IconType := cxhiInformation;
      mtConfirmation:
        IconType := cxhiQuestion;
    else
      IconType := cxhiInformation;
    end;
  end;

  cxHintStyleController1.Global := False;
  cxBalloonHint.Global := True;
  cxBalloonHint.ShowHint(APoint.X, APoint.Y, ATitulo, ADescricao);

  TimerBallonHint.Interval := ATempo;
  TimerBallonHint.Enabled := True;

  cxBalloonHint.Global := False;
  cxHintStyleController1.Global := True;
end;

procedure TFrmPrincipal.MadExceptionHandler1Exception(const exceptIntf: IMEException; var handled: Boolean);
var
  AClassName, AMessage, AMsgFormatada: string;
  AModalResult, i: Integer;
begin
  if FExibirCallStack or PAFNFE then
    Exit;
  AMessage := exceptIntf.ExceptMessage;
  AClassName := exceptIntf.ExceptClass;

  if (Pos('gds32.dll not found', AnsiLowerCase(AMessage)) > 0) or (Pos('connection rejected by remote interface', AMessage) > 0) then
  begin
    try
      showmessage('Não foi localizada a GDS32');
      KillTask('WR2Gestor.exe');
      CONECTAR.Close;
      DMBanco.Banco.Close;
      DeleteFile(GetDirSistema + 'GDS32.dll');
      if not FileExists(GetDirSistema + 'GDS32.dll') then
        THttpToStream.BaixarArquivo('http://microgrupo.com.br/wratualizacao/GDS32.dll', GetDirSistema + 'GDS32.dll', nil);
    except
    end;
    handled := True;
//    if not PAFNFE and FileExists(GetDirSistema + 'WR2Gestor.exe') then
//      ShellExecute(Handle, 'open', PChar(GetDirSistema + 'WR2Gestor.exe'), '', '', SW_SHOWNORMAL);
//    Application.Terminate;
//    Abort;
  end
  else
  if MatchStr(AClassName, ['EAbort', 'EWRException', 'EPrinter', 'EcxEditValidationError']) then
  begin
    handled := True;
    if (AClassName <> 'EAbort') and (AMessage <> '') then
      ShowMessageWR(AMessage, MB_ICONWARNING);
  end
  else
  {$IFDEF DEBUG}
//  Exit;
  {$ENDIF}
  if (AnsiContainsText(AMessage, 'network request') or AnsiContainsText(AMessage, 'unavailable database') or (AnsiContainsText(AMessage, '.GDB') and AnsiContainsText(AMessage, 'open file')) or (AnsiContainsText(AMessage, '.FDB') and AnsiContainsText(AMessage, 'open file')) or AnsiContainsText(AMessage, 'Error reading data from the connection') or AnsiContainsText(AMessage, 'Error writing data to the connection') or AnsiContainsText(AMessage, 'connection lost') or AnsiContainsText(AMessage, 'connection rejected by remote interface') or AnsiContainsText(AMessage, 'connection shutdown')) then
  begin
    if (AnsiContainsText(AMessage, 'ATUALIZA.FDB')) then
    begin
      handled := True;
      Exit;
    end;
    TFrmFalhaConexaoBanco.ValidaEAguardaLiberacaoBanco;  // Forma Nova De chamar
    // Aqui deveria conferir a conecção e tentar reconectare não dar erro
    handled := True;
  end
  else if (AClassName = 'EACBrNFeException') then
  begin
    ShowMessageWR(AMessage, MB_ICONWARNING);
    handled := True;
  end
  else if (Pos('is not a valid', AMessage) > 0) or (Pos('Invalid floating point operation', AMessage) > 0) or (Pos('Invalid argument to date encode', AMessage) > 0) then
  begin
    ShowMessageWR('Há informações que não estão corretas. Verifique as datas e os campos numéricos.' + sLineBreak + 'Informações adicionais: ' + AMessage);
    handled := True;
  end
  else if (Pos('operation was cancelled.', AMessage) > 0) then
  begin
    handled := True;
  end
  else if (Pos('no permission for', AMessage) > 0) then
  begin
    ShowMessageWR('Erro de permissão de acesso ao Banco de Dados. Entre em contato com o administrador de sua rede.');
    handled := True;
  end
  else if (Pos('OUT OF MEMORY', AnsiUpperCase(AMessage)) > 0) then
  begin
    {AMsgFormatada := '';
    for I := 0 to AExceptionInfo.CallStack.Count - 1 do
      AMsgFormatada := AMsgFormatada + sLineBreak +
                       AExceptionInfo.CallStack.ItemText[i];}
    ShowMessageWR('Não há memória suficiente para carregar todos os registros solicitados. ' + sLineBreak + sLineBreak + 'Tente refinar sua pesquisa para que o sistema possa exibir a informação que você busca.', MB_ICONWARNING);
    handled := True;
  end
  else if (Pos('sistema não pode encontrar', AMessage) > 0) and ((Pos('gdb', AMessage) > 0) or (Pos('fdb', AMessage) > 0)) then
  begin
    ShowMessageWR('O Banco de Dados não foi localizado no caminho especificado. ' + 'Verifique o caminho do banco e tente novamente.');
    handled := True;
  end
  else if ContainsText(AClassName, 'EdxSpreadSheetProtectionError') then
  begin
    {Quando o usuário tenta editar uma célula protegida de um SpreadSheet, uma exceção é lançada. Não há opções para
     evitar este comportamento, é nativo da DevExpress. No link abaixo é descrito que a solução é tratar a exceção:
     https://supportcenter.devexpress.com/ticket/details/t545652/error-editing-protected-spreadsheet}
    handled := True;
  end
  else if (Pos('CHECK constraint', AMessage) > 0) then
  begin
    AMessage := ReplaceText(AMessage, 'Operation violates CHECK constraint ', '');
    AMessage := Copy(AMessage, 1, Pos(' on view or', AMessage));
    ShowMessageWR('Favor verificar campos Obrigatórios. ' + 'Verifique o(s) Campos e tente novamente.' + sLineBreak + AMessage);
    handled := True;   //'Operation violates CHECK constraint OUTROS OBRIGATORIO on view or table PESSOAS'#$D#$A'At trigger ''CHECK_22''.'
  end
  else
  {if (Pos('arithmetic exception, numeric overflow, or string truncation', AMessage) > 0) then
  begin
    ShowMessageWR('Ocorreu um erro ao processar a informação. ' +
                  'Informações adicionais: ' + AMessage);
    Handled := True;
  end;  }
    if (Pos('lock conflict on no wait transaction', AMessage) > 0) then
  begin
    ShowMessageWR('Este lançamento está sendo alterado por um outro usuário e não pode ser alterado neste momento. ' + 'Aguarde até que este usuário finalize as alterações.', MB_ICONWARNING);
    handled := True;
  end;
  {$IFNDEF DEBUG}
  if AnsiContainsText(AMessage, 'Foreign Key') then
  begin
    AMessage := Copy(AMessage, Pos('on table "', AMessage), Length(AMessage));
    AMessage := ReplaceText(AMessage, 'on table "', '');
    AMessage := Copy(AMessage, 1, Pos('"', AMessage) - 1);
    ShowMessageWR('Atualmente este registro está sendo referenciado na tabela "' + AMessage + '" e não pode ser excluído.' + sLineBreak + 'Para excluí-lo, remova os vínculos que este registro possui com outros recursos do sistema.', MB_ICONWARNING);
    handled := True;
  end;
  {$ENDIF}

  if not FExibirCallStack then
  begin
    ShowMessageWR('Não foi possível concluir a operação:' + sLineBreak +
                   AMessage, MB_ICONWARNING);
    handled := True;
  end;

end;

procedure TFrmPrincipal.MSAbrirVenda(var Msg: TMessage);
begin
  if PAFNFE then
  begin
//    Action_VendaExecute(nil);
    with ABaseClass_MidChild[Tag_Venda].Create(Self) do
      ShowCadastroItem(Tag_Venda, null);
    Close; //Não usar Application.Terminate! É necessário que as rotinas no Close desta form sejam executadas
  end;
end;

function TFrmPrincipal.GetPermissaoAction(AAction: TAction): Boolean;
var
  i: Integer;
begin
  Result := AAction.Enabled;
  for i := 0 to FListaPermissoesActions.Count - 1 do
  begin
    if FListaPermissoesActions[i].Action = AAction then
    begin
      Result := FListaPermissoesActions[i].Enabled;
      Break;
    end;
  end;
end;

procedure TFrmPrincipal.Historico_NotificacaoBeforeOpen(DataSet: TDataSet);
begin
  Historico_Notificacao.ParamByName('CodUsuario').AsInteger := Usuario.Codigo;
end;

procedure TFrmPrincipal.EmpresaBeforeOpen(DataSet: TDataSet);
begin
  Empresa.ParamByName('Codigo').AsInteger := StrToIntDef(EmpresaAtiva, 1);
end;

procedure TFrmPrincipal.ImgEstruturaBancoClick(Sender: TObject);
begin
  ShowMessageWR('Os seguintes problemas foram encontrados ao validar a estrutura do banco de dados: ' + sLineBreak + ImgEstruturaBanco.Hint);
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 2: Funções da Tela ////////////////////////////////////////////////////////////////////'}

// 1 Primeira Função a ser executada no sistema

function TFrmPrincipal.GetFormBorderIcons: TdxRibbonBorderIcons;
begin
  Result := inherited GetFormBorderIcons - [rbiDisplayOptions];
end;

procedure TFrmPrincipal.UserControlStartApplication(Sender: TObject);
begin
  UserControl.ApplicationID := IntToStr(EmpresaLerDoRegistro);
  EmpresaAtiva := UserControl.ApplicationID;
end;

// 2 Segunda Função a ser executada no sistema
procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
  ItemPermissao: TUCExtraRightsItem;
  Png: TPngImage;
  Reg: TRegistry;
  i: Integer;
  {TODO: Backup. Não travar e tentar passar a funcionalidade para o IBExtract. 2hrs}
  {TODO: Procedure com parâmetros, atrasa e avisa que há uma atualização e quem está atualizando. Mensagem "Adiar" com timer}
begin
  DisableAero := True;
//  btnNotificacaoes.Top:= -6;
//  btnMenuSuperior.Top:= -6;
//  btnMenuLateral.Top:= -7;
//
  btnPonto.Top := -33;
  btnComunicacao.Top := -33;
  btnMenuSuperior.Top := -33;
  btnMenuLateral.Top := -34;
  btnPonto.Top := -33;
  btnKPI_Produto.Top := -34;
  btnKPI_Producao.Top := -34;
  btnKPI_Estoque.Top := -34;
  btnKPI_RH.Top := -34;
  btnKPI_Vendas.Top := -34;
  btnKPI_Financeiro.Top := -34;
  btnKPI_Compras.Top := -34;
  btnKPI_Olho.Top := -34;

  dxBarProducao.Visible := False;
  dxBarVendas.Visible := False;
  dxBarFinanceiro.Visible := False;
  dxBarAtendimento.Visible := False;
  dxBarControleEstoque.Visible := False;
  dxBarAssociacao.Visible := False;
//  dxRibbon1.BeginUpdate;
//  dxRibbon1.ShowTabHeaders:= False;
//  dxRibbon1.ShowTabGroups := False;
//  dxRibbon1.EndUpdate;

//  ExtraiDllsXMLSec; // Isso estava na unitinicialização
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];
  //Inicialização do Banco de Dados
  //  dxRibbon1Tab1.Active := True;
  Application.HintHidePause := 20000;

  {$IFDEF WR2}
  Action_Procura_Banco.Free;
  dxBarBtnProcuraBanco.Free;
  {$ELSE}
  BtnBarBigData.Free;
  {$ENDIF}

  //Lista de Actions que devem se manter ativas mesmo sem código no OnExecute
//  Action_Outros.DisableIfNoHandler := False;

  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := ':';
  FrmAtualizacaoPendente := nil;

  Assert(not CONECTAR.Connected, 'Atenção Programador!! Essa conecção não ser aberta antes desse evento. ' + LineBreakWR + 'Caso tenha esquecido a coneção abrerta no dmf Feche.' + LineBreakWR + 'Isso causa lentidão na abertura da tela no cliente caso o banco não exista ele tenta 2 vezes' + LineBreakWR + 'E Faz a troca de banco não ser possível pelo parametro de inicializacção');
  Assert(not UCControlHistorico1.Active, 'Atenção Programador!! Não pode deixar o Active= True no Dfm. Isso faz Conectar o banco antes do previsto');

  {  Empresa.LerEmpresaAtivaDoRegistro;
    UserControl.ApplicationID := Empresa.Codigo.ToString;
}
//  Action_Solicita_Senha.Checked := SolSenha; // Remover Usar o TConfig
//  ListaDeFormsAbertas := TObjectList<TControleFormsInstancia>.Create;
  try
    UserControl.AutoStart := True;
    ApplicationTitle := 'Office Comercial';  //Não alterar esta linha!!!!
    CarregaSistema;      // Toda leitura do deveira estar aqui do registro abri uma nunica vez
    try
      CONECTAR.Open;
    except
    end;
  except
    on E: Exception do
    begin
      if E.Message = '' then
        ; //Debug
      if FrmSplash <> nil then
        FreeAndNil(FrmSplash);
    end;
  end;
  if CONECTAR.Connected then
  begin

    VerificaEmpresaAtiva;
    if UserControl.ApplicationID <> EmpresaAtiva then
      UserControl.ApplicationID := EmpresaAtiva;
//    dxRibbon1.Caption := Caption;
  end;
  if FileExists(GetDirSistema + 'Portugues_Lang.ini') then
  begin
    cxLocalizer1.StorageType := lstIni;
    cxLocalizer1.FileName := GetDirSistema + 'Portugues_Lang.ini';
  end
  else
    cxLocalizer1.StorageType := lstResource;

  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := 1046;
  if FileExists(GetDirSistema + 'LogoMarca.jpg') then
  begin
    cxImage1.Picture.LoadFromFile(GetDirSistema + 'LogoMarca.jpg');
  end;

//  ImgLogoCentro.Parent:=cxImage1;
  ImgLogoBottom.Parent := cxImage1;

//  ImgLogoCentro.Left:= Trunc(cxImage1.ClientWidth / 2);
//  ImgLogoCentro.Top := Trunc(cxImage1.ClientHeight / 2);

  ImgLogoBottom.Left := Trunc(cxImage1.ClientWidth - ImgLogoBottom.Width - 10);
  ImgLogoBottom.Top := Trunc(cxImage1.ClientHeight - ImgLogoBottom.Height - 10);

  //Se for para emitir NFe pelo PAF, adia a abertura da tela de Venda para depois que toda a inicialização do sistema
  //estiver concluída. Antes estava abrindo aqui mesmo, nem chegava no Application.Run!!
  if PAFNFE then
    PostMessage(Handle, WM_ABRIR_VENDA, 0, 0);
end;

  /// FUNÇÕES DA TELA- Eventos do Form - hide, destroy, Show  //////////////////////////////////////////////////

procedure TFrmPrincipal.ShowHint(Sender: TObject);
begin
  if not Assigned(StatusBar) then
    Exit;

  if Length(Application.Hint) > 0 then
    StatusBar.Panels[0].Text := Application.Hint
  else
    StatusBar.Panels[0].Text := '';
end;

procedure TFrmPrincipal.tcmPrincipalClick(Sender: TdxTileControlItem);
var
  I, J: Integer;
  Achou: Boolean;
begin
  if Assigned(FrmMenu) and not (FrmMenu.Visible) then
  try
    FreeAndNil(FrmMenu);
  except
  end;
  if not Assigned(FrmMenu) then
    Application.CreateForm(TFrmMenu, FrmMenu);

  with FrmMenu do
  begin
    Show;
    tgPrincipal.Visible := (Sender = tcmPrincipal);

    tgProduto.Visible := (Sender = tcmProduto);
    tgProdutoValores.Visible := (Sender = tcmProduto);
    tgProdutoOutros.Visible := (Sender = tcmProduto);
    tgProdutoReatorios.Visible := (Sender = tcmProduto);

    tgContato.Visible := (Sender = tcmContato);
    tgContatoRelatorio.Visible := (Sender = tcmContato);
    tgContatoExtra.Visible := (Sender = tcmContato);

    tgProducao.Visible := (Sender = tcmProducao);
    tgProducaoEquipe.Visible := (Sender = tcmProducao);
    tgProducaoFluxoTrabalho.Visible := (Sender = tcmProducao);
    tgProducaoClassificacoes.Visible := (Sender = tcmProducao);
    tgProducaoOutros.Visible := (Sender = tcmProducao);
    tgProducaoRelatorio.Visible := (Sender = tcmProducao);

    tgVenda.Visible := (Sender = tcmVenda);
    tgVendaOutros.Visible := (Sender = tcmVenda);
    tgVendaRelatorio.Visible := (Sender = tcmVenda);
    tgVendaPainel.Visible := (Sender = tcmVenda);

    tgFiscal.Visible := (Sender = tcmFiscal);
    tgFiscalOutros.Visible := (Sender = tcmFiscal);
    tgFiscalConfiguracao.Visible := (Sender = tcmFiscal);

    tgFinanceiro.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroCaixas.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroBoleto.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroComissao.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroDRE.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroOutros.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroBalancoPatrimonial.Visible := (Sender = tcmFinanceiro);
    tgFinanceiroDFC.Visible := (Sender = tcmFinanceiro);

    tgAssociacao.Visible := (Sender = tcmAssociacao);
    tgAssociacaoContribuicao.Visible := (Sender = tcmAssociacao);
    tgAssociacaoEquipamento.Visible := (Sender = tcmAssociacao);
    tgAssociacaoFipe.Visible := (Sender = tcmAssociacao);
    tgAssociacaoRelatorios.Visible := (Sender = tcmAssociacao);

    tgRH.Visible := (Sender = tcmRH);

    tgCRM.Visible := (Sender = tcmCRM);
    tgCRMConfiguracao.Visible := (Sender = tcmCRM);

    tgEstoque.Visible := (Sender = tcmEstoque);

    tgCompra.Visible := (Sender = tcmCompra);
    tgCompraRelatorio.Visible := (Sender = tcmCompra);

    tgIntegracoes.Visible := (Sender = tcmIntegracoes);

    tgRelatorio.Visible := (Sender = tcmRelatorio);

    tgUsuarios.Visible := (Sender = tcmUsuarios);

    tgEmpresa.Visible := (Sender = tcmEmpresa);
    tgEmpresaConfiguracoes.Visible := (Sender = tcmEmpresa);
    tgEmpresaBancoDados.Visible := (Sender = tcmEmpresa);
    tgEmpresaRelatorioPaineis.Visible := (Sender = tcmEmpresa);

    tgAssociacao.Visible := (Sender = tcmAssociacao);

    tgNotificacao.Visible := (Sender = tcmMensagens);
    tgBaseDeConhecimento.Visible := (Sender = tcmBaseDeConhecimento);

//    tgPowerBI.Visible                  :=(Sender =  tcmPowerBI);


    tcBase.Controller.StopItemContentAnimation;
    try
      for I := 0 to tcBase.Items.Count - 1 do
      begin
        Achou := False;
        for J := 0 to Menu_ActionManager.ActionCount - 1 do
        begin
          if Achou then
            Continue;
          if tcBase.Items[I].Tag = Menu_ActionManager.Actions[J].tag then
          begin
            tcBase.Items[I].Enabled := Menu_ActionManager.Actions[J].Enabled;
            tcBase.Items[I].Visible := Menu_ActionManager.Actions[J].Visible;
            Achou := True; // Aqui pula pro decima
          end;
        end;
      end;
    finally
      tcBase.Controller.StartItemContentAnimation;
    end;

    tcBase.ActiveDetail := nil;
//   tcBase.Style.GradientBeginColor:=Sender.Style.GradientEndColor;
//   tcBase.Style.GradientEndColor:= Sender.Style.GradientBeginColor;
    tcBase.Title.Text := Sender.Text1.Value;
  end;
end;

procedure TFrmPrincipal.FechaAplicacao(Restart: Boolean);
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CommandLine, StartDir: string;
begin
  if Restart then
  begin
    CommandLine := Application.ExeName;
//    GetStartupInfoA(StartInfo);
    FillChar(ProcInfo, SizeOf(TProcessInformation), #0);
    FillChar(StartInfo, SizeOf(TStartupInfo), #0);
    StartInfo.cb := SizeOf(TStartupInfo);
    StartDir := ExcludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
    CreateProcess(nil, PChar(CommandLine), nil, nil, False, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, PChar(StartDir), StartInfo, ProcInfo);
  end;
  TerminateProcess(GetCurrentProcess, 1);
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Reg: TRegistry;
begin
  FrmAtualizacaoPendente.Free;
  TimerHoraDoServidor.Enabled := False;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Empresa', True);
    Reg.WriteString('CodEmpresaAtiva', EmpresaAtiva);
    if not CONECTAR.Connected then
      Exit;
    try
      if Empresa.Active then
      begin
        Reg.WriteString('Modulo', Empresa.FieldByName('MODULO').AsString);
        if UserControl.UsersLogged.UsuarioJaLogado(CodigoUsuario) then
          GravaSkinUsuario(ControleSkin.SkinName);
      end;
    except
    end;
  finally
    Reg.Free;
  end;
  FinalizarSocketClient;
  Hide;
  {$IFDEF DEBUG}
  GerenciadorThreads.FinalizarTodasThreads;
  TimerNotificacao.Enabled := False;
  {$ENDIF}
  inherited;
//  TerminateProcess(GetCurrentProcess, 1);
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Reg: TRegistry;
  AMostrarMsg: Boolean;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Sistema.RegPath, True) then
      AMostrarMsg := not Reg.ReadBoolWR('NaoMostrarMensagemSair');

    if not PAFNFE and AMostrarMsg then
    begin
      PnlMensagemEncerramento.Caption := Sistema.Nome;
      CanClose := (ShowPanelForm(PnlMensagemEncerramento, bsSingle, BtnSairNao) = mrYes);
      Reg.CloseKey;
      if Reg.OpenKey(Sistema.RegPath, True) then
        Reg.WriteBool('NaoMostrarMensagemSair', CkMensagemSair.Checked);
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  try
//    ListaDeFormsAbertas.Free;
    TimerNotificacao.Enabled := False;
    FListaPermissoesActions.Free;
  except end;

  try
    if Assigned(DMImpressaoLocal) then
      FreeAndNil(DMImpressaoLocal);
  except end;
end;

procedure TFrmPrincipal.FormHide(Sender: TObject);
begin
  Transacao.Active := False;   /// Gambiara - deixaram por algum motivo a transação aberta(dai precisa disso)
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_f4 then
  begin
    if not Assigned(FrmMenu) then
      Application.CreateForm(TFrmMenu, FrmMenu);
    if FrmMenu.FormStyle = fsStayOnTop then
      FrmMenu.FormStyle := fsMDIChild
    else
    begin
      FrmMenu.WindowState := wsMaximized;
      FrmMenu.FormStyle := fsStayOnTop;
    end;
  end;
end;

procedure TFrmPrincipal.RibbonQuickAccessToolbar1MoreCommands(Sender: TObject; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TFrmPrincipal.Action_FecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.dxTabbedMDIManager1PageAdded(Sender: TdxTabbedMDIManager; APage: TdxTabbedMDIPage);
begin
  if dxTabbedMDIManager1.TabProperties.PageCount > 1 then
    dxTabbedMDIManager1.TabProperties.HideTabs := False;
  cxImage1.Visible := False; // (Sender = bgPrincipal);
end;

procedure TFrmPrincipal.tcmEmpresaSelecionadaClick(Sender: TdxTileControlItem);
begin
  FrmPrincipal.Action_Empresa_AtivaExecute(Sender);
end;

procedure TFrmPrincipal.tcMenuMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  MouseMoveMenuKPI(Sender, Shift, X, Y);
end;

procedure TFrmPrincipal.btnKPI_OlhoDropDownMenuPopup(Sender: TObject; var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  if btnKPI_Olho.OptionsImage.ImageIndex = 17 then
    btnKPI_Olho.OptionsImage.ImageIndex := 97
  else
    btnKPI_Olho.OptionsImage.ImageIndex := 17;
  TConfig.SaveInteger('MOSTRA_KPI_OLHO', btnKPI_Olho.OptionsImage.ImageIndex, Usuario.Codigo);
  Carrega_KPIs_na_Tela;
end;

procedure TFrmPrincipal.btnMenuLateralDropDownMenuPopup(Sender: TObject; var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  if tcMenu.Width = 233 then
    tcMenu.Width := 45
  else
    tcMenu.Width := 233;
  TConfig.SaveInteger('POUPMENULATERAL_POR_USUARIO_MENU_FECHADO', tcMenu.Width, Usuario.Codigo);
end;

procedure TFrmPrincipal.btnMenuSuperiorClick(Sender: TObject);
begin
  PoupMenuRibbon.PopupOnMouse;
end;

///SUB-SEÇÃO - FUNÇÕES DE AUXÍLIO ao suporte
procedure TFrmPrincipal.tcmBaseDeConhecimentoClick(Sender: TdxTileControlItem);
begin
  ShellExecute(0, 'open', 'https://oimpresso.com/ajuda/', nil, nil, SW_SHOW);
end;

   ///SUB-SEÇÃO - FUNÇÕES DE PERDIDAS SIMPLES

procedure TFrmPrincipal.AtualizaLabelAlerta;  // Essa rotina deve ficar fora da tela principal
var                                           // a quantidade de execuções esta ok, pois é leve
  ATexto: TStringList;
begin
  {Esta rotina é chamada duas vezes:
   A primeira é para mostrar o MODO DEBUG mesmo antes de o usuário fazer login no sistema.
   A segunda é para incluir o BANCO DE DEMONSTRAÇÃO caso este seja demo.

   Na primeira vez que chama, as configurações ainda não foram carregadas, então uma exceção é gerada e o nome do
   banco demo não é mostrado. Manter assim, não é feito acesso ao banco e a exceção é ignorada.}

  ATexto := TStringList.Create;
  try
    {$IFDEF DEBUG}
    ATexto.Add('MODO DEBUG');
    {$ENDIF}
    {$IFDEF WR2}
    ATexto.Add('EXCLUSIVO WR2');
    {$ENDIF}
    try
      {Aqui só vai operar depois que o banco conectou e as configurações foram carregadas, antes disso ele apenas ignora}
      if TConfig.ReadGlobalBoolean('BANCO_DEMO') then
        ATexto.Add('BANCO DE DEMONSTRAÇÃO')
    except
    end;

    LbAlertaDebug.Caption := ATexto.Text;
    LbAlertaDebug.Visible := (ATexto.Count > 0);
  finally
    ATexto.Free;
  end;
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 3: CONSULTAS //////////////////////////////////////////////////////////////////////////'}
  //////////////////////// SEÇÃO 3: CONSULTAS //////////////////////////////////////////////////////////////////////////
  /// Essas telas tem que ser substituidas pelas novas chamadas da SEÇÂO 2
  /// Funções com chamada difereferete fazer função diferente não aumentar o nível de parametros
  /// Telas que redimensionam True    Merece isso na chamada:  ConsultaComRedimensionamento()

procedure TFrmPrincipal.Action_BarrasExecute(Sender: TObject);
begin
  ConsultaChaveRedimenciona(TFrmProduto_Barras, Self, '', True);
end;

procedure TFrmPrincipal.ActionA_PagarExecute(Sender: TObject);
begin
  if not UsuarioSenha(False, True) then
    Exit;
  ConsultaMidChildAntiga(TFrmFinanceiro_APagar);
end;

procedure TFrmPrincipal.ActionFinanceiro_ChequeExecute(Sender: TObject);
begin
  if not UsuarioSenha(False, True) then
    Exit;
  ConsultaMidChildAntiga(TFrmFinanceiro_Cheque);
end;

procedure TFrmPrincipal.ActionA_ReceberExecute(Sender: TObject);
begin
  if not UsuarioSenha(False, True) then
    Exit;
  ConsultaMidChildAntiga(TFrmFinanceiro_AReceber);
end;

procedure TFrmPrincipal.Action_BalancoExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmBalanco);
end;

procedure TFrmPrincipal.Action_Producao_FilaExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmProducao_Fila);
end;

procedure TFrmPrincipal.Action_FinanceiroExecute(Sender: TObject);
begin
  if not GetPermissaoAction(Action_Financeiro) then
    Exit;
  if not UsuarioSenha(False, True) then
    Exit;
  ConsultaMidChildAntiga(TFrmFinanceiro);
end;

procedure TFrmPrincipal.Action_MalaDiretaExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmMalaDireta);
end;

procedure TFrmPrincipal.Action_OcorrenciasExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmOcorrencia);
end;

procedure TFrmPrincipal.Action_RateioExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmRateio);
end;

procedure TFrmPrincipal.Act_EtiquetasExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmEtiquetas);
end;

procedure TFrmPrincipal.Action_BoletoExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmFinanceiro_Boleto);
end;

procedure TFrmPrincipal.Action_NotafiscalExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TConsuNota_Fiscal);
end;

procedure TFrmPrincipal.Action_ChangeLogExecute(Sender: TObject);
begin
  ConsultaMidChildAntiga(TFrmChangeLog);
end;

{$ENDREGION}

{$REGION 'Chamadas de telas novas, usar somente essas'}
// SUB Seção Chama Frame

procedure TFrmPrincipal.Action_CadastroExecute(Sender: TObject);
begin
  Codigo := '';
  with ABaseClass_MidChild[QuemeoPai(TAction(Sender).Tag)].Create(Self) do
  begin
    ShowCadastroItem(TAction(Sender).Tag, null);
    Application.ProcessMessages;
    FrameCadastro.btnNovo.Click;
  end;
end;

procedure TFrmPrincipal.Action_ConsultaExecute(Sender: TObject);
begin
  with ABaseClass_MidChild[QuemeoPai(TAction(Sender).Tag)].Create(Self) do
    ShowConsultaItem(TAction(Sender).Tag);
end;

procedure TFrmPrincipal.bdgProducaoClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
begin
  with ABaseClass_Normal[AAdorner.Tag].Create(Self) do
    ShowMenu(AAdorner.Tag);
end;

procedure TFrmPrincipal.btnKPI_FinanceiroMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  MouseMoveMenuKPIButton(Sender, Shift, X, Y);
end;

procedure TFrmPrincipal.Action_Business_IntelligenceExecute(Sender: TObject);
begin
  with ABaseClass_MidChild[TComponent(Sender).Tag].Create(Self) do
    ShowMenu(TComponent(Sender).Tag);
end;

procedure TFrmPrincipal.btnComunicacaoClick(Sender: TObject);
begin
  with ABaseClass_MidChild[TComponent(Sender).Tag].Create(Self) do
    ShowConsultaItem(TComponent(Sender).Tag);
//  CriarServidorWebSocket;
//  SocketClient(Empresa.FieldByName('RAZAOSOCIAL').AsString, Empresa.FieldByName('CNPJCPF').AsString, Usuario.Login);
end;

procedure TFrmPrincipal.Action_ModulosExecute(Sender: TObject);
var
  AForm: TFrmBase;
begin
  AForm := ABaseClass_Normal[TComponent(Sender).Tag].Create(Self);
  try
    AForm.ShowMenu(TComponent(Sender).Tag);
  except  end;
  AguardaFormFechar(AForm);
  AplicaModulosAtivos;
end;

procedure TFrmPrincipal.btnKPI_ProdutoClick(Sender: TObject);
begin
//  with ABaseClass_Menu[TComponent(Sender).Tag].Create(Self) do
//    ShowMenu(TComponent(Sender).Tag);
end;

procedure TFrmPrincipal.NotificationCenter1ReceiveLocalNotification(Sender: TObject; ANotification: TNotification);
begin
  btnComunicacao.Click; // detecta se o usuario clicou na notificação do windows.    //Feito
end;

{$ENDREGION}


{$REGION '//////////////////////// SEÇÃO 4: CHAMADAS CADASTRO OU CONSULTA   ////////////////////////////////////////////////////'}
/// CHAMADAS CADASTRO OU CONSULTA - Modelo novo e correto de aproveitar as tela ja criadas

/// SUB-SEÇAO 1: AbrirCadastro

procedure TFrmPrincipal.Action_NF_EntradaExecute(Sender: TObject);
begin
  CadastroMidChild(TFrmNF_Entrada);     //Feito
end;

  /// SUB-SEÇAO 2: ConsultaCadastro

procedure TFrmPrincipal.LbAtualizacaoPendenteClick(Sender: TObject);
begin
  ConsultaMidChild(TConsuLogSistema);
end;

procedure TFrmPrincipal.Action_Equipamento_RateioExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuEquipamento_Rateio);
end;

procedure TFrmPrincipal.Action_EmpresaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuEmpresa); //Feito
end;

procedure TFrmPrincipal.Action_Folha_PagamentoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuFolha_Pagamento); //Feito
end;

procedure TFrmPrincipal.Action_Folha_Pagamento_GrupoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuFolha_Pagamento_Grupo); //Feito
end;

procedure TFrmPrincipal.Action_Email_ModeloExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuEmail_Modelo); //Feito
end;

procedure TFrmPrincipal.Action_Centro_CustoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuCentro_Custo); //Feito
end;

procedure TFrmPrincipal.Action_GrupoProdutosExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProduto_Grupo); //Feito
end;

procedure TFrmPrincipal.Action_Clientes_GrupoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuPessoas_Grupo); //Feito
end;

procedure TFrmPrincipal.actProducao_MarcadorExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Marcador);  //Feito
end;

procedure TFrmPrincipal.actProducao_EstagioExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Estagio);   //Feito
end;

procedure TFrmPrincipal.actProducao_RoteiroExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Roteiro);
end;

procedure TFrmPrincipal.actProducao_SituacaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Situacao); //Feito
end;

procedure TFrmPrincipal.actProducao_StatusExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Acao); //Feito
end;

procedure TFrmPrincipal.actProducao_TemplateExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Template); //Feito
end;

procedure TFrmPrincipal.Action_CadastroTipoContratoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuContrato_Tipo);    // Onde isso Abre????
end;

procedure TFrmPrincipal.Action_CadTipoPessoasExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuPessoas_Tipo); //Feito
end;

procedure TFrmPrincipal.Action_TelefonesExecute(Sender: TObject);
begin
  if GetPermissaoAction(Action_Telefones) then
    ConsultaMidChild(TConsuTelefones); //Feito
end;

procedure TFrmPrincipal.Action_Notas_e_SolicitacaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_Entrada);  //Feito
end;

procedure TFrmPrincipal.Action_Producao_MotivoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProducao_Motivo);  //Feito
end;

procedure TFrmPrincipal.actConfiguracao_AcaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracao_Acoes);  //Feito
end;

procedure TFrmPrincipal.actConfiguracao_AgrupamentoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracao_Agrupamento); //Feito
end;

procedure TFrmPrincipal.actConfiguracao_ComponenteExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracao_Componente); //Feito
end;

procedure TFrmPrincipal.actConfiguracao_FiltroExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracao_Filtro); //Feito
end;

procedure TFrmPrincipal.actConfiguracao_RegrasExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracao_Regra);  //Feito
end;

procedure TFrmPrincipal.actConfiguracoes_gridExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuConfiguracoes_Grid); //Feito
end;

procedure TFrmPrincipal.ActEmail_MassaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuEmail_Massa);   //Feito
end;

procedure TFrmPrincipal.Action_Acerto_de_estoqueExecute(Sender: TObject);
begin                                                                               // 28/06 revisar
end;

procedure TFrmPrincipal.Action_DREExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuDRE);   //Feito                             //revisar padrao , não vou olhar, pois até todos entender isso aqui muda.
end;                                                                                 // vou esperar a empresa amadurer as regras de negócio primeiro

procedure TFrmPrincipal.Action_DRE_ClassificacaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuDRE_Classificacao); //Feito   //revisar padrao, não vou olhar, pois até todos entender isso aqui muda.
end;                                                                                 // vou esperar a empresa amadurer as regras de negócio primeiro

procedure TFrmPrincipal.ActRecursoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuRecurso);  //Feito                      // Revisado: 28/06/2020, funcionando mais tem conversões na consulta e no layot tem visivel, da para trocar por enable
end;

procedure TFrmPrincipal.ActTabelaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProduto_Tabela); //Feito
end;

procedure TFrmPrincipal.Action_Tipo_ProdutoExecute(Sender: TObject);
begin                                                                        // Verificar no sistema inteiro as regras de negócio
  ConsultaMidChild(TConsuProduto_Tipo);  //Feito    // Cadastro e consulta Funcionando
end;

procedure TFrmPrincipal.Action_UnidadesExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuUnidade);   //Feito             // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.Action_Venda_EstagioExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuVenda_Estagio);
end;

procedure TFrmPrincipal.Action_Venda_Financeiro_TefExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuVendaFinanceiroTef);
end;

procedure TFrmPrincipal.Action_Venda_SituacaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuVenda_Situacao);  //Feito // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.ActProdutoCategoriaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProduto_Categoria); //Feito     // Consulta OK, cadastro conferir
end;

procedure TFrmPrincipal.ActProdutoMarkupExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProduto_Markup); //Feito // TODO: Falta formatação e Atualização da tabelas de preço
end;

procedure TFrmPrincipal.Action_Tipo_ImpressaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuTipo_Impressao); //Feito // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.Action_CondicaoPagtoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuCondicaoPagto); //Feito  // Refazer essa tela, deve reduzir a programação da tela
end;

procedure TFrmPrincipal.Action_ContasExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuContas);      //Feito   // Revisar Cadastro, Bastante coisa
end;

procedure TFrmPrincipal.Action_NF_CESTExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_CEST);
end;

procedure TFrmPrincipal.Action_NF_CFOPExecute(Sender: TObject);
begin                                                                      // Tem código Botão Insert
  ConsultaMidChild(TConsuNF_CFOP);     //Feito   // Revisado: 27/06/2020
end;

procedure TFrmPrincipal.Action_NF_CNAEExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_CNAE);    //Feito
end;

procedure TFrmPrincipal.Action_NF_CSTExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_CST);    //Feito
end;

procedure TFrmPrincipal.Action_NF_ErrosExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_Erros);   //Feito
end;

procedure TFrmPrincipal.Action_Produto_Estoque_LocalExecute(Sender: TObject);
begin                                                                                     // Tem que testar
  ConsultaMidChild(TConsuProduto_Estoque_Local); //Feito // 28/06/2020
end;

procedure TFrmPrincipal.Action_Produto_Grade_ModeloExecute(Sender: TObject);
begin                                                                                   // 28/06/2020
  ConsultaMidChild(TConsuProduto_Grade_Modelo); //Feito    // Coloquei na ordem do TAB correto
end;

procedure TFrmPrincipal.Action_NF_Natureza_OperacaoExecute(Sender: TObject);
begin                                                                                   // Tem código
  ConsultaMidChild(TConsuNF_Natureza_Operacao); //Feito     // Revisado: 27/06/2020   TODO: Fazer rotina para preencher automático
end;

procedure TFrmPrincipal.Action_NF_NCMExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_NCM);  //Feito                 // Revisado: 27/06/2020
end;

procedure TFrmPrincipal.Action_NF_ProvedorExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_Provedor); //Feito
end;

procedure TFrmPrincipal.Action_NF_Regime_Especial_TributacaoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuNF_Regime_Especial_Tributacao); //Feito // Revisado: 27/06/2020
end;

procedure TFrmPrincipal.Action_Produto_LoteExecute(Sender: TObject);
begin                                                                         // Retestar essa tela quando tiver funcionando o Lote
  ConsultaMidChild(TConsuProduto_Lote); //Feito      // Ta ruim
end;

procedure TFrmPrincipal.Action_Produto_MarcaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuProduto_Marca); //Feito    // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.ActFamiliaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuFamilia); //Feito               // Revisado: 19/07/2020
end;

procedure TFrmPrincipal.Action_BancosExecute(Sender: TObject);
begin                                                                          // Consulta OK  Revisado: 28/06/2020
  ConsultaMidChild(TConsuBancos);  //Feito                  // Cadastro TODO: Revisar AfterOpen
end;

procedure TFrmPrincipal.Action_CadTipoPagamentoExecute(Sender: TObject);
begin                                                                          // ConsultaOK 28/06/2020
  ConsultaMidChild(TConsuTipo_Pagamento); //Feito    // Revisar essa tela e deixar ela no padrão
end;

procedure TFrmPrincipal.Action_Cad_OSExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuVenda_Tipo); //Feito           // Testar melhor tem opções que não estao mais sendo usada
end;                                                                           // Desctacar II na nota fiscal

procedure TFrmPrincipal.Action_Cad_TipoAgendaExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuAgenda_Titulo); //Feito     // Revisado: 27/06/2020
end;

procedure TFrmPrincipal.Action_LocalAutoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuLocal);   //Feito                     // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.Action_AcabamentoExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuAcabamento); //Feito           // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.actProducao_EquipeExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuCentro_Trabalho); //Feito  // Revisar
end;

procedure TFrmPrincipal.Action_Cad_CidadesExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuCidades); //Feito                // Revisado: 28/06/2020
end;

procedure TFrmPrincipal.Action_Cadastro_SetoresExecute(Sender: TObject);
begin
  ConsultaMidChild(TConsuSetor);  //Feito                   // Testar tudo, inclusive as regras de negócio
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 5: CHAMADA DE RELATÓRIOS //////////////////////////////////////////////////////////////'}
  /// Chamada de Relatórios Agrupar todos os relatórios Aqui ///////////////////////////////////////////////////////////
  /// Separar as Chamadas novas FR3 das quickreport Criar SubSeção /////////////////////////////////////////////////////

  /// SUB-SEÇÂO 1: QuickReports
procedure TFrmPrincipal.Action_Equipamento_AssociadoExecute(Sender: TObject);
begin
  with TImpriEquipamentoAssociado.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_Rel_Vendas_Produtos_PautaExecute(Sender: TObject);
begin
  Application.CreateForm(TImpriProduto, ImpriProduto);
  try
    ImpriProduto.Produto.Close;
    ImpriProduto.Produto.SQL[2] := 'WHERE (E.ESTOQUE > 0) AND (CODEMPRESA = :Emp)';
    ImpriProduto.Produto.Open;

//    if not DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0058'), Sender, True) then
    if not DMImpressao.ImprimirTag(Self, Tag_Report_Produtos_Pauta_Preco, Sender, True) then
    begin
      ImpriProduto.QRLabel_Titulo_Estoque.Enabled := False;
      ImpriProduto.QRDBText_Estoque_campo.Enabled := False;
      ImpriProduto.QuickRep1.PreviewModal;
    end;
  finally
    FreeAndNil(ImpriProduto);
  end;
end;

procedure TFrmPrincipal.Action_Rel_VendasExecute(Sender: TObject);
begin
  with TImpriVendas_Periodo.Create(Self) do
  try
    Show;
    repeat
      try
        Application.ProcessMessages;
      except
        Application.HandleException(nil);
      end;
    until not Visible;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_Rel_EntradasExecute(Sender: TObject);
begin
  with TImpriEntradas.Create(Self) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_Rel_Produtos_CompradosExecute(Sender: TObject);
begin
  DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0067'));
end;

procedure TFrmPrincipal.Action_Rel_ClientesExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriClientes, ImpriClientes);
  finally
    FreeAndNil(ImpriClientes);
  end;
end;

procedure TFrmPrincipal.Action_Rel_AssociadosExecute(Sender: TObject);
begin
  with TImpriClientes_Ativos.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.MotoscomValores1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriVeiculos_Estoque_Custos, ImpriVeiculos_Estoque_Custos);
  finally
    ImpriVeiculos_Estoque_Custos.Free;
  end;
end;

procedure TFrmPrincipal.Motos2Click(Sender: TObject);
begin
  Application.CreateForm(TImpriVeiculos_Estoque, ImpriVeiculos_Estoque);
  FreeAndNil(ImpriVeiculos_Estoque);
end;

procedure TFrmPrincipal.PRODUTOSEMESTOQUE1Click(Sender: TObject);
begin
  Application.CreateForm(TImpriProduto, ImpriProduto);
  try
    ImpriProduto.Produto.Close;
    ImpriProduto.Produto.SQL[2] := 'WHERE (E.ESTOQUE > 0) and (CODEMPRESA= :Emp)';
    ImpriProduto.Produto.Open;
    ImpriProduto.QuickRep1.PreviewModal;
  finally
    FreeAndNil(ImpriProduto);
  end;
end;

procedure TFrmPrincipal.Produtos2Click(Sender: TObject);
begin
  Application.CreateForm(TImpriProduto, ImpriProduto);
  try
    ImpriProduto.QuickRep1.Preview;
    ImpriProduto.Show;
  finally
    FreeAndNil(ImpriProduto);
  end;
end;

procedure TFrmPrincipal.NotaFiscaisSada1Click(Sender: TObject);
begin
  with TImpriNotasFiscais_Periodo.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.PautadePreos1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriProduto_Pauta, ImpriProduto_Pauta);
  finally
    FreeAndNil(ImpriProduto_Pauta);
  end;
end;

procedure TFrmPrincipal.Rel_Produtos_RegencialExecute(Sender: TObject);
begin
  with TImpriProdutos_Gerencial.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.ProdutosMateriaPrima1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriProdutoCusto_Loja, ImpriProdutoCusto_Loja);
  finally
    FreeAndNil(ImpriProdutoCusto_Loja);
  end;
end;

procedure TFrmPrincipal.Carros3Click(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriVeiculos_Medidas, ImpriVeiculos_Medidas);
  finally
    FreeAndNil(ImpriVeiculos_Medidas);
  end;
end;

  /// SUB-SEÇÂO 2: FastReports

procedure TFrmPrincipal.dxBarButton1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TImpriProdutoCusto_Fabrica, ImpriProdutoCusto_Fabrica);
  finally
    ImpriProdutoCusto_Fabrica.Free;
  end;
end;

procedure TFrmPrincipal.ESTOQUEABAIXODAQUANTIDADEMINIMA1Click(Sender: TObject);
begin
  Application.CreateForm(TImpriProduto, ImpriProduto);
  try
    ImpriProduto.Produto.Close;
    ImpriProduto.Produto.SQL[2] := 'where (E.ESTOQUE > 0) and (CODEMPRESA = :Emp)';
    ImpriProduto.Produto.Open;
    ImpriProduto.QuickRep1.PreviewModal;
  finally
    FreeAndNil(ImpriProduto);
  end;
end;

procedure TFrmPrincipal.Action_Produto_PatrimonioExecute(Sender: TObject);
begin
  DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0059'));
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 6: CHAMADA DE TELAS SEM PADRÃO ////////////////////////////////////////////////////////'}
  /// Chamadas de telas aleatórias - Rever essa necessidade ////////////////////////////////////////////////////////////

procedure TFrmPrincipal.Action_Importar_XMLExecute(Sender: TObject);
begin
//  ConsultaMidChild(TConsuNF_Entrada);
  with TFrmNF_Entrada.Create(self) do
  begin
    Show;
    MainLayout.EndUpdate;
    Application.ProcessMessages;
    Cadastro.Open;
    ImportarXML1Click(Self);
  end;
end;

procedure TFrmPrincipal.Action_RelEquipamentoExecute(Sender: TObject);
begin
  with TImpriCad_Equipamento.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_RelOcorrenciasExecute(Sender: TObject);
begin
  with TImpriOcorrencias.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_SPEDExecute(Sender: TObject);
begin
  with TFrmAuditoriaSINTEGRA_e_SPED.Create(Self) do
  try
    if TAction(Sender).Tag = 119 then
      rgEscolha.ItemIndex := 0;  // 0 = Sintegra;
    if TAction(Sender).Tag = 118 then
      rgEscolha.ItemIndex := 1;  // 1 = SPED
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmPrincipal.REGISTRO1Click(Sender: TObject);   // Porque Duas?
begin
  with TFrmRegistro.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action4Execute(Sender: TObject);   // Porque Duas? olha abaixo
begin
  FrmRegistro := TFrmRegistro.Create(Self);
  with FrmRegistro do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmPrincipal.Action_Procura_BancoExecute(Sender: TObject);
begin
  with TFrmCaminhoBanco.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_Configurar_NFeExecute(Sender: TObject);
begin
  with TFrmNFe.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmPrincipal.Action_Funcionario_PontoExecute(Sender: TObject);
begin
  with TFrmFuncionario_Ponto.Create(nil) do
  try
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_Email_SuporteExecute(Sender: TObject);
begin
  with TFrmEmail.Create(Self, Self.ClassName) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFrmPrincipal.Action_Configurar_BackupExecute(Sender: TObject);
begin
  if Action_Configurar_Backup.Enabled then
  begin
    with TFrmBackup.Create(nil) do
    try
      ShowModal;
    finally
      Destroy;
    end;
  end;
end;

procedure TFrmPrincipal.Action_ParametrosExecute(Sender: TObject);
begin
  TFrmConfiguracoesM.MostrarConfiguracoes(Self);
end;

procedure TFrmPrincipal.Action_Notas_FiscaisExecute(Sender: TObject);
var
  AFrmNotaFiscal: TFrmNotaFiscal;
begin
  AFrmNotaFiscal := TFrmNotaFiscal.Create(Self);
  AFrmNotaFiscal.Show;
end;

procedure TFrmPrincipal.Act_RelatoriosExecute(Sender: TObject);
begin
  FrmRelatorios := TFrmRelatorios.Create(nil);
  try
    FrmRelatorios.ShowModal;
  finally
    FreeAndNil(FrmRelatorios);
  end;
end;

procedure TFrmPrincipal.Action_InformacoesExecute(Sender: TObject);
begin
  with TFrmAbout.Create(nil) do
  try
    Show;
    repeat
      try
        Application.HandleMessage;
      except
        Application.HandleException(nil);
      end;
    until not Visible;
  finally
    Destroy;
  end;
end;

procedure TFrmPrincipal.Action_CaixaExecute(Sender: TObject);
begin
  if not UsuarioSenha(False, True) then
    Exit;
  TFrmFinanceiro_Contas_Escolha.AbrirCaixa;
end;

procedure TFrmPrincipal.Action_CompromissosExecute(Sender: TObject);
begin
  if not GetPermissaoAction(Action_Compromissos) then
    Exit;
  TFrmAgenda.AbreFrame(FrmAgenda, maAgenda);
end;

procedure TFrmPrincipal.Action_RecebimentoExecute(Sender: TObject);
var
  ACodConta: Integer;
begin
  ACodConta := TFrmFinanceiro_Contas_Escolha.SelecionarContaCaixa;
  if ACodConta <> 0 then
    TFrmFinanceiro_Recebimento.Abrir(ACodConta);
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 7: SKINS //////////////////////////////////////////////////////////////////////////////'}
  //////////////////////// SEÇÃO 7: SKINS //////////////////////////////////////////////////////////////////////////////
  /// Todas as funções referentes a Skins (Usar com cuidado pois pesa toda a aplicação) ////////////////////////////////
  /// Rotinas de Skin quero separar por fazer o sistema ficar lento ////////////////////////////////////////////////////

procedure TFrmPrincipal.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject; const ASkinName: string);
begin
  ControleSkin.SkinName := ASkinName;
  dxRibbon1.ColorSchemeName := ASkinName;
  dxRibbon1.Style := rs2019;
  dxRibbon1.CapitalizeTabCaptions := bTrue;
//  dxRibbon1.ColorSchemeName:='Colorful';
  GravaSkinUsuario(ASkinName);
end;

procedure TFrmPrincipal.bliSkinColorPaletteClick(Sender: TObject);
begin
  if bliSkinColorPalette.ItemIndex >= 0 then
    ControleSkin.SkinPaletteName := bliSkinColorPalette.Items[bliSkinColorPalette.ItemIndex];
end;

procedure TFrmPrincipal.AplicaSkinUsuario;  // Routes
var
  QuerX: TIBQuery;
begin
//  LockWindowUpdate(Self.Handle);
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select SKIN ' + 'from USUARIO ' + 'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := Usuario.Codigo;
    QuerX.Open;
    if not QuerX.IsEmpty then
    begin
      LayoutMan.UsuarioPrivilegiado := Usuario.Privilegiado;
      if QuerX.FieldByName('SKIN').AsString <> '0' then
      begin
        ControleSkin.BeginUpdate;
        if ControleSkin.SkinName <> QuerX.FieldByName('SKIN').AsString then
          ControleSkin.SkinName := QuerX.FieldByName('SKIN').AsString;
        ControleSkin.UseSkins := True;
        ControleSkin.EndUpdate;
      end;
      if Empresa.FieldByName('Cor').AsString = 'Roxo' then
        dxRibbon1.ColorSchemeAccent := rcsaPurple
      else if Empresa.FieldByName('Cor').AsString = 'Verde' then
        dxRibbon1.ColorSchemeAccent := rcsaGreen
      else if Empresa.FieldByName('Cor').AsString = 'Azul' then
        dxRibbon1.ColorSchemeAccent := rcsaBlue
      else if Empresa.FieldByName('Cor').AsString = 'Laranja' then
        dxRibbon1.ColorSchemeAccent := rcsaOrange
      else if Empresa.FieldByName('Cor').AsString = 'Amarelo' then
        dxRibbon1.ColorSchemeAccent := rcsaYellow
      else
        dxRibbon1.ColorSchemeAccent := rcsaPurple;
      Menu_AplicarCoresTile(tcMenu, dxRibbon1.ColorSchemeAccent);
      LayoutMan.CarregaPerfil;
      LayoutMan.AtualizaLayouts;
    end;
  finally
    QuerX.Free;
//    LockWindowUpdate(0);
  end;
end;

procedure TFrmPrincipal.ControleSkinSkinForm(Sender: TObject; AForm: TCustomForm; var ASkinName: string; var UseSkin: Boolean);
begin
  if MatchStr(AForm.ClassName, ['TFrmAbout', 'TFrmSplash', 'TfrmStatus', 'TFrmFalhaConexaoBanco']) then
    UseSkin := False;
end;

procedure TFrmPrincipal.btnSupoteTeamViewerClick(Sender: TObject);
begin
  FrmAguarde := TFrmAguarde.Create(Self);
  FrmAguarde.Show;
  FrmAguarde.Mensagem := 'Aguarde um momento enquanto abrimos o Teamviewer';
  try
    KillTask('TeamViewer.exe');
//    if FileSize(GetDirSistema + 'TeamViewerQS-idcbc3qkbq.exe') = 0 then
//      DeleteFile(GetDirSistema + 'TeamViewerQS-idcbc3qkbq.exe');
    if not FileExists(GetDirSistema + 'TeamViewerQS.exe') then
      THttpToStream.BaixarArquivo('http://microgrupo.com.br/wratualizacao/TeamViewerQS.exe', GetDirSistema + 'TeamViewerQS.exe', FrmAguarde);
    Sleep(5000);
    RunCommand(GetDirSistema + 'TeamViewerQS.exe');
  except
  end;
  FrmAguarde.Close;
  FrmAguarde.Free;
end;

procedure TFrmPrincipal.btnSupoteAnyDeskClick(Sender: TObject);
begin
  FrmAguarde := TFrmAguarde.Create(Self);
  FrmAguarde.Show;
  FrmAguarde.Mensagem := 'Aguarde um momento enquanto abrimos o AnyDesk';
  try
    KillTask('AnyDesk.exe');
//    if FileSize(GetDirSistema + 'AnyDesk.exe') = 0 then
//      DeleteFile(GetDirSistema + 'AnyDesk.exe');
    if not FileExists(GetDirSistema + 'AnyDesk.exe') then
      THttpToStream.BaixarArquivo('http://officeimpresso.com.br/downloads/AnyDesk.exe', GetDirSistema + 'AnyDesk.exe');
    Sleep(5000);
    RunCommand(GetDirSistema + 'AnyDesk.exe');
  except
  end;
  FrmAguarde.Close;
  FrmAguarde.Free;
end;

procedure TFrmPrincipal.dxBarLargeButton48Click(Sender: TObject);
begin
  if bliSkinColorPalette.ItemIndex >= 0 then
    ControleSkin.SkinPaletteName := bliSkinColorPalette.Items[bliSkinColorPalette.ItemIndex];
end;
{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 8: CONEXÃO BANCO DE DADOS Escolha de Empresa Ativa e UserControl///////////////////////'}

  /// Menu de troca de empresa e seleção de banco de dados /////////////////////////////////////////////////////////////
  ///
  ///
  ///

procedure TFrmPrincipal.UserControlAfterLogin(Sender: TObject);
var
  APermissaoAction: TPermissaoAction;
  i, j: Integer;
  AAction: TAction;
  Achou: Boolean;
  ANomeComponente: string;
  Quer: TFDQuery;
begin
  FCaminhoBancoLogado := CONECTAR.DatabaseName;
  AtualizaLabelAlerta;
  tcMenu.Width := TConfig.ReadInteger('POUPMENULATERAL_POR_USUARIO_MENU_FECHADO', Usuario.Codigo);
  btnKPI_Olho.OptionsImage.ImageIndex := TConfig.ReadInteger('MOSTRA_KPI_OLHO', Usuario.Codigo);
  if btnKPI_Olho.OptionsImage.ImageIndex = 0 then
    btnKPI_Olho.OptionsImage.ImageIndex := 17;
  if tcMenu.Width = 0 then
    tcMenu.Width := 45;
  if not (poupMenuLateral.Checked) and TConfig.ReadBoolean('POUPMENULATERAL_POR_USUARIO', Usuario.Codigo) then
    poupMenuLateral.Click
  else
  begin
    dxRibbon1.BeginUpdate;
    dxRibbon1.ShowTabHeaders := poupMenuRibbonSuperior.Checked;
    dxRibbon1.ShowTabGroups := poupMenuRibbonSuperior.Checked;
    dxRibbon1.QuickAccessToolbar.Visible := False; //poupMenuRibbonSuperior.Checked;
    dxRibbon1.EndUpdate;
  //  btnMenuSuperior.SpeedButtonOptions.Down:=False;
    tcMenu.Visible := poupMenuLateral.Checked;
    btnMenuLateral.Visible := poupMenuLateral.Checked;
    if tcMenu.Visible and not Assigned(FrmMenu) then
      Application.CreateForm(TFrmMenu, FrmMenu);
  end;
//  StatusBar.Visible:= Not poupMenuLateral.Checked;

  if Agenda_Ativa then
    Action_CompromissosExecute(nil);

  Action_Cad_Pessoas.Enabled := Action_Cad_Clientes.Enabled or Action_Cad_Fornecedor.Enabled or Action_Representantes.Enabled;

  Action_Consulta_Pessoas.Enabled := Action_Clientes.Enabled or Action_Fornecedores.Enabled;

  for i := 0 to UserControl.ControlRight.ActionManager.ActionCount - 1 do
  begin
    AAction := TAction(UserControl.ControlRight.ActionManager.Actions[i]);

    //Adiciona a action na lista de permissões com a permissão atual
    //Usado para não desativar o ícone do Ribbon quando não há permissão na action mas há permissão nas actions filhas
    for j := 0 to (FListaPermissoesActions.Count - 1) do
    begin
      //Exclui a Action da lista caso já esteja adicionada
      if (FListaPermissoesActions.Items[j].Action = AAction) then
      begin
        FListaPermissoesActions.Delete(j);
        Break;
      end;
    end;

    APermissaoAction.Action := AAction;
    APermissaoAction.Enabled := AAction.Enabled;
    APermissaoAction.Tag := AAction.Tag;
    FListaPermissoesActions.Add(APermissaoAction);

    if AAction = Action_Financeiro then
    begin
      Action_Financeiro.Enabled := APermissaoAction.Enabled or ActionA_Pagar.Enabled or ActionA_Receber.Enabled or ActionFinanceiro_Cheque.Enabled or Action_Boleto.Enabled or ActMensalidade.Enabled;

    end;
    if AAction = Action_Compromissos then
    begin
      Action_Compromissos.Enabled := APermissaoAction.Enabled or Action_Consulta_Agenda.Enabled;
//      Image_Agenda.Enabled        := APermissaoAction.Enabled;
    end;
    if AAction = Action_Clientes then
    begin
      Action_Clientes.Enabled := APermissaoAction.Enabled or Action_Cad_Clientes.Enabled;
    end;
    if AAction = Action_Fornecedores then
    begin
      Action_Fornecedores.Enabled := APermissaoAction.Enabled or Action_Cad_Fornecedor.Enabled;
    end;
  end;

  //Actions que sempre devem estar disponíveis
  Action_Fechar.Enabled := True;
  Action_Logof.Enabled := True;

  LoginUsuario := Procura('LOGIN', 'USUARIO', CodigoUsuario.ToString);
  //Disponível somente para o usuário Administrador
  if not Action_Usuario.Enabled then
    Action_Usuario.Enabled := (LoginUsuario = 'ADMINISTRADOR');

  dxRibbon1.BeginUpdate;
  LockWindowUpdate(Self.Handle);
  AplicaModulosAtivos;        // Aqui é uma rota
  SocketClient(Empresa.FieldByName('RAZAOSOCIAL').AsString, Empresa.FieldByName('CNPJCPF').AsString, Usuario.Login);
  //Aplica Skin do Usuário
  AplicaSkinUsuario;
  // depois de aplicas tudo mostra isso, fica mais bonito
  tcMenu.Visible := poupMenuLateral.Checked;
  LockWindowUpdate(0);
  dxRibbon1.EndUpdate;


 { try
    if TConfig.ReadInteger('dashboar_principal',Usuario.Codigo) = 0 then
      dxRibbonRadialMenu1.Popup(Trunc(cxImage1.ClientWidth / 2) + nbMain.Width,Trunc(cxImage1.ClientHeight / 2) + cxImage1.Top)
    else
      bgNotificacaoClick(self);
  except end;   }

//  if Assigned(AAPP_KPI) then
//    AAPP_KPI.Free;

  Historico_Notificacao.Close;
  TimerNotificacao.Enabled := True;
  // As merdas das imagens não pegam transparencia que bosta., o image fica tremilicando a tela, e o cx image é bosta
//  TimerGestor.Enabled := True;

  Quer := GeraFDQuery;
  try
    Quer.SQL.Text := ' SELECT RDB$GET_CONTEXT(''SYSTEM'', ''WIRE_COMPRESSED'') wire_compressed FROM rdb$database ';
    Quer.open;
    lblBaixaVelocidade.Visible := (Quer.FieldByName('wire_compressed').AsString = '1');
  finally
    Quer.Free;
  end;

//Carrega Provedor da NFSe para a Empresa Ativa
  NFSe_Provedor := TConfig.ReadGlobalString('NFSE_PROVEDOR');
  Competencia_Atual := DataHoraSys;

  ControllerPrincipal_AfterLogin;    // Primeiro carrega os modulos e app ativo para depois executar o timer

  TimerCronJob.Enabled := True;
  TimerCronJobTimer(Self);

end;

procedure TFrmPrincipal.UserControlLogin(Sender: TObject; var User, Password: string);
begin
  if not PAFNFE and (User = 'PAFNFE') then
  begin
    FinalizarSocketClient;
    UserControl.Logoff;
    Abort;
  end;
//  LockWindowUpdate(Handle);
end;

procedure TFrmPrincipal.UserControlLoginSucess(Sender: TObject; AIdUser: Integer; AUsuario, ANome, ASenha, AEmail: string; APrivilegiado: Boolean);
var
  ARect: TRect;
  AOldSize: TPoint;
  QuerX: TFDQuery;
  ItemPermissao: TUCExtraRightsItem;
begin
  CodigoUsuario := AIdUser;     // Matar essa Variálvel
  FExibirCallStack := (GetKeyState(VK_CONTROL) < 0); //Com o CTRL pressionado, não são exibidas as mensagens "amigáveis", mas sim o erro natural com CallStack
  FListaPermissoesActions.Clear;
  TControleUnidades.ReleaseInstance;
  ConfigGrid.Limpar;

  UCControlHistorico1.VerificaTabelaHistorico;
  UCHistWRGeral1.RegistraLogin;              // Routes

  if DMBanco = nil then                      // Routes
  begin
    DMBanco := TDMBanco.Create(Self);
    QuerX := SQLConta_Caixas;
    try
      while not QuerX.Eof do
      begin
        ItemPermissao := TUCExtraRightsItem.Create(UserControl.ExtraRights);
        ItemPermissao.CompName := 'BtCaixa' + QuerX.FieldByName('CODIGO').AsString;
        ItemPermissao.FormName := 'FrmFinanceiro_Contas_Escolha';
        ItemPermissao.GroupName := 'Caixas';
        ItemPermissao.Caption := QuerX.FieldByName('DESCRICAO').AsString;
        ItemPermissao.NotAllowedMode := amDisabled;
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;
  end;                  // Routes
  UCControls1.LoadRights;  /// <<<<---- Ficar nessa linha logo após criar as permissões dos caixas
  Usuario.CarregarUsuario(AIdUser);
  VerificaTabelaConfiguracoes;            // Isso aqui ta meio estranho pois dveria executar uma única vez.
  TConfig.Atualizar;    // Routes
  PessoaListaTipos.Atualizar;

  if not IsBancoAtualizado then
  begin
    MostraFormAtualizandoBanco;
    WinExec('taskkill /f /im WR2Gestor.exe', Wm_Close);
    try
      Application.ProcessMessages;
      with TFrmUpgrade.Create(nil) do
      try
        Atualiza_SQL;
        if not PodeExecutar then
        begin
          //Se ocorreu algum erro na atualização, mostra a pequena form de alerta no canto direito inferior.
          if not Assigned(FrmAtualizacaoPendente) then
          begin
            FrmAtualizacaoPendente := TPanelForm.Create(PnlAtualizacaoPendente, bsSingle);
            with FrmAtualizacaoPendente.Form do
            begin
              AOldSize.X := ClientHeight;
              AOldSize.Y := ClientWidth;
              BorderStyle := bsNone;
              Height := AOldSize.X; //Ao tirar a borda, o tamanho muda...
              Width := AOldSize.Y;
              FormStyle := fsStayOnTop;
              Position := poDesigned;
              Left := Screen.Width - ClientWidth;
              SystemParametersInfo(SPI_GETWORKAREA, 0, @ARect, 0);
              Top := Screen.Height - (Screen.Height - ARect.Bottom) - Height - 2;
              LbAtualizacaoPendente.Caption := 'Atualização Pendente. Clique aqui para mais informações.';
              Show;
              TimerAtualizacaoPendente.Enabled := True;
            end;
          end;
          ActivateBalloonHint(LbAtualizacaoPendente, '', 'Existem atualizações pendentes.');
        end
        else if Assigned(FrmAtualizacaoPendente) then
        begin
          FreeAndNil(FrmAtualizacaoPendente);
          TimerAtualizacaoPendente.Enabled := False;
        end;
      finally
        Destroy;
      end;
    finally
      FreeAndNil(FrmAtualizacaoBanco);
    end;
  end;
  Empresa.Close;
  Empresa.Open;

  //Verifica se existe backup configurado ou pendente para gerar
  VerificaSeExisteBackupConfiguradoOuPendenteParaGerar;

  SetCaminhoFotosPadrao(Transa);
  Transa.Commit;                   /// Que Coisa kkkk
  if Assigned(StatusBar) then
    StatusBar.Panels[1].Text := '[Usuário: ' + AUsuario + ']';

  EmpresaLista.Close;
  EmpresaLista.Open;
  MultiEmpresa := (EmpresaLista.RecordCount > 1);

  if Empresa.IsEmpty then
  begin
    if EmpresaLista.IsEmpty then
    begin
      if ShowMessageWR('Sua empresa ainda não está cadastrada.' + sLineBreak + 'Deseja cadastrar agora?', MB_ICONQUESTION) = mrYes then
        ConsultaMidChild(TFrmEmpresa);
    end;
    Empresa.Close;
    Empresa.Open;
    if Empresa.IsEmpty then
      ShowMessageWR('Você ainda não possui nenhuma empresa cadastrada. Por favor, cadastre sua empresa antes de ' + 'iniciar a utilização do sistema.', MB_ICONWARNING);
  end;
  //UserControl.ApplicationID := EmpresaAtiva;
  tcmEmpresaSelecionada.Text1.Value := Empresa.FieldByName('FANTASIA').AsString + ' - ' + Empresa.FieldByName('CIDADE').AsString;
  if Assigned(StatusBar) then
    StatusBar.Panels[4].Text := tcmEmpresaSelecionada.Text1.Value;
  VerificaSistemaModulo;

  if (ANome = 'MASTER') and (ASenha = 'MASTER') then
  begin
    {$IFNDEF DEBUG}
    IBBackup.DatabaseName := CONECTAR.DatabaseName;
    IBBackup.BackupFile.Text := 'C:\' + FormatDateTime('ddmmyyyy-hhnn', Now) + '.gbk=4096';
    IBBackup.Active := True;
    IBBackup.ServiceStart;
    while not IBBackup.Eof do
    begin
      Application.ProcessMessages;
      IBBackup.GetNextLine;
    end;
    IBBackup.Active := False;
    { CABFile.CABFileContents.Clear;
      CABFile.CABFileContents.AddFolder(Copy(IBBackup.BackupFile.Text,1,Length(IBBackup.BackupFile.Text)-7));
      CABFile.CABFile := 'C:\wbrak.com';
      CABFile.Compress; }
    if Assigned(StatusBar) then
      StatusBar.Panels[0].Text := Format('Backup Finalizado às %s horas', [FormatDateTime('hh:nn:ss', Now)]);
    // if not DeleteFile(Copy(IBBackup.BackupFile.Text,1,Length(IBBackup.BackupFile.Text)-7)) then
    // StatusBar.Panels[0].Text:=StatusBar.Panels[0].Text+' - Erro excluir ';
    {$ENDIF}

    Transa.StartTransaction;
    CriaSqlTrans(Transa);
    try
      Quer.SQL.Text := 'DELETE FROM FINANCEIRO WHERE (NOTAFISCAL IS NULL) OR (NOTAFISCAL = ' + QuotedStr('') + ')';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM FINANCEIRO_HISTORICO WHERE (NOTAFISCAL IS NULL) OR (NOTAFISCAL = ' + QuotedStr('') + ')';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM NF_ENTRADA_PARCELAS NE WHERE NOT((SELECT MAX(N.TIPO) FROM NF_ENTRADA N WHERE (NE.CODNF_ENTRADA =N.CODIGO)) = ''' + 'NOTA FISCAL' + ''')';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM NF_ENTRADA_PRODUTOS NE ' + 'WHERE NOT((SELECT MAX(N.TIPO) FROM NF_ENTRADA N WHERE (NE.CODNF_ENTRADA =N.CODIGO)) = ''' + 'NOTA FISCAL' + ''')';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM NF_ENTRADA WHERE NOT (TIPO = ' + QuotedStr('NOTA FISCAL') + ')';
      Quer.ExecSQL;

      Quer.SQL.Text := 'DELETE FROM VENDA_FINANCEIRO PF WHERE (SELECT MAX(P.NOTAFISCAL) FROM VENDA P WHERE PF.codVENDA =P.CODIGO) IS NULL ';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM VENDA_PRODUTO PF WHERE (SELECT MAX(P.NOTAFISCAL) FROM VENDA P WHERE PF.codVENDA =P.CODIGO) IS NULL ';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM VENDA WHERE (NOTAFISCAL IS NULL)';
      Quer.ExecSQL;
      Quer.SQL.Text := 'DELETE FROM CAIXA';
      Quer.ExecSQL;
      Quer.SQL.Text := 'alter trigger produto_movimento_bd0 inactive';
      Quer.ExecSQL;
      Transa.Commit;
      Quer.SQL.Text := 'DELETE FROM PRODUTO_MOVIMENTO';
      Quer.ExecSQL;
      Quer.SQL.Text := 'alter trigger produto_movimento_bd0 active';
      Quer.ExecSQL;
    finally
      FreeAndNil(Quer);
    end;
    Transa.Commit;
  end;

  if TConfig.ReadString('CASAS_DECIMAIS_FINANCEIRO') <> '' then
    DecimalFinanceiro := TConfig.ReadString('CASAS_DECIMAIS_FINANCEIRO')
  else
    DecimalFinanceiro := '#,###,##0.00';
  if TConfig.ReadString('CASAS_DECIMAIS_QUANTIDADE') <> '' then
    DecimalQuantidade := TConfig.ReadString('CASAS_DECIMAIS_QUANTIDADE')
  else
    DecimalQuantidade := '#,###,##0.00###';

  //Efetua o Balanço Automático
  BalancoAutomatico;

//  {$IFNDEF DEBUG}
  //Eliminado o registro em modo debug para poder utilizar livremente no desenvolvimento
  //Ativar caso seja necessário fazer testes ou manutenção na ativação do sistema
 { if FUsarThreads then
  begin
    if not Assigned(FThdRegistro) then
    begin
      FThdRegistro := TVerificaRegistro.Create(nil, RespostaThdRegistro);
      FThdRegistro.Start;
    end;
  end
  else}   if not PAFNFE then
    TimerRegistro.Enabled := True;
//  {$ENDIF}

  UCControlHistorico1.Active := True;
  AtualizaLabelAlerta;

  //Ativa a verificação d estrutura de banco de dados
  TimerEstruturaBanco.Enabled := True;
  wr_memoria.Carrega_Cache;
end;

procedure TFrmPrincipal.UserControlLogoff(Sender: TObject; IDUser: Integer);
begin
  UCHistWRGeral1.RegistraLogout;
//  if FrmAgenda <> nil then
//    FreeAndNil(FrmAgenda);
//  ListaDeFormsAbertas.Free;
//  ListaDeFormsAbertas := TObjectList<TControleFormsInstancia>.Create;
  TimerGestor.Enabled := False;
end;

procedure TFrmPrincipal.CONECTARAfterConnect(Sender: TObject);
begin
  if FrmSplash <> nil then
    FrmSplash.SetStatus('Carregando Sistema...');

  TDefinicoesBancoIB.Banco := CONECTAR;
  TDefinicoesBancoIB.Transacao := Transacao;
  if DMBanco <> nil then
  begin
    DMBanco.Banco.Close;
    DMBanco.Banco.Open;
    FDiffDataServidor := DataHoraSys - Now;
  end;
  FListaPermissoesActions := TList<TPermissaoAction>.Create;

  //A Tag do CONECTAR é usada pra sinalizar quando uma operação que envolve uma reconexão segura do banco está sendo
  //efetuada, assim não é necessário fazer o login novamente. O login nesses casos já deve ser efetuado pela própria rotina
  //que fez a reconexão
  if (CONECTAR.Tag = 0) and not MatchStr(FCaminhoBancoLogado, ['', CONECTAR.DatabaseName]) then
    UserControl.StartLogin;
 // FDiffDataServidor := DataHoraSys - Now;
end;

procedure TFrmPrincipal.CONECTARBeforeConnect(Sender: TObject);
var
  Reg: TRegistry;
begin
  if FrmSplash <> nil then
    FrmSplash.SetStatus('Conectando ao Banco de Dados...');

  StatusBar.Panels[1].Text := 'Usuário:';
  if ParamCount > 0 then
  begin
    CONECTAR.DatabaseName := ReplaceStr(ParamStr(1), '"', '');
    ShowMessage('"Caminho do Banco" ' + ParamStr(1));
    FrmSplash.SetStatus('Conectando ao Banco de Dados...' + ParamStr(1));
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      Reg.OpenKey('\Software\Rocha\Office Comercial\Banco', False);
      if Reg.ReadString('LOGIN').Trim <> '' then
        CONECTAR.Params.Values['user_name'] := Reg.ReadString('LOGIN');
      if Reg.ReadString('SENHA') <> '' then
        CONECTAR.Params.Values['password'] := Reg.ReadString('SENHA');
      if Reg.ReadString('CHARSET') <> '' then
        CONECTAR.Params.Values['lc_ctype'] := Reg.ReadString('CHARSET');
    finally
      Reg.Free;
    end;
  end
  else
  begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      Reg.OpenKey('\Software\Rocha\Office Comercial\Banco', False);
      {$IFDEF WR2}
      CONECTAR.DatabaseName := 'Servidor-CRM:Banco';
      CONECTAR.Params.Values['password'] := 'masterkey';
      CONECTAR.Params.Values['user_name'] := 'SYSDBA';
     {$ELSE}
      CONECTAR.DatabaseName := Reg.ReadString('BANCO');
      if Reg.ReadString('LOGIN').Trim <> '' then
        CONECTAR.Params.Values['user_name'] := Reg.ReadString('LOGIN');
      if Reg.ReadString('SENHA') <> '' then
        CONECTAR.Params.Values['password'] := Reg.ReadString('SENHA');
      if Reg.ReadString('CHARSET') <> '' then
        CONECTAR.Params.Values['lc_ctype'] := Reg.ReadString('CHARSET');
     {$ENDIF}
  //    ShowMessage(CONECTAR.Params.Text);
    finally
      Reg.Free;
    end;
  end;
end;

procedure TFrmPrincipal.CONECTARBeforeDisconnect(Sender: TObject);
begin
  if Assigned(DMBanco) then
    DMBanco.Banco.Close;
end;

procedure TFrmPrincipal.OnClickConectaBancoEReinicia(Sender: TObject);
var
  Reg: TRegistry;
  AListaCaminhos: TStringList;
  ABanco: string;
begin
  AListaCaminhos := TStringList.Create;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco\Caminhos', False) then
      Reg.GetValueNames(AListaCaminhos);
    AListaCaminhos.Sort;
    ABanco := Reg.ReadString(AListaCaminhos[TMenuItem(Sender).Tag]);
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True) then
      Reg.WriteString('BANCO', ABanco);
    ShowMessageWR('A aplicação será reiniciada para efetivar a conexão com o Banco de Dados.');
    FechaAplicacao(True);
  finally
    AListaCaminhos.Free;
    Reg.Free;
  end;
end;

procedure TFrmPrincipal.OnClickConectaBanco(Sender: TObject);
var
  Reg: TRegistry;
  AListaCaminhos: TStringList;
  ANovoCaminho: string;
begin
  AListaCaminhos := TStringList.Create;
  try
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco\Caminhos', False) then
        Reg.GetValueNames(AListaCaminhos);
      AListaCaminhos.Sort;
      ANovoCaminho := Reg.ReadString(AListaCaminhos[TMenuItem(Sender).Tag]);
      if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco', True) then
        Reg.WriteString('BANCO', ANovoCaminho);
    finally
      Reg.Free;
    end;
    CONECTAR.Tag := 1;
    try
      CONECTAR.Close;
      CONECTAR.Open;
    finally
      CONECTAR.Tag := 0;
    end;
    if CONECTAR.Connected then
    begin
      ShowMessageWR('Conectado com Sucesso em: ' + ANovoCaminho);
      //EmpresaAtiva := IntToStr(TMenuItem(Sender).Tag);
      StatusBar.Panels[4].Text := '';
      VerificaEmpresaAtiva;
      UserControl.Logoff;
      UserControl.ApplicationID := EmpresaAtiva;
    end
    else
      ShowMessageWR('Não foi possível conectar o Banco: ' + ANovoCaminho);
    StatusBar.Panels[3].Text := 'Banco Selecionado: ' + ANovoCaminho;
  finally
    AListaCaminhos.Free;
  end;
end;

procedure TFrmPrincipal.OnClickPanelIndex4(Sender: TObject);
begin
  EmpresaAtiva := IntToStr(TMenuItem(Sender).Tag);
  Empresa.Close;
  Empresa.Open;
  StatusBar.Panels[4].Text := Empresa.FieldByName('FANTASIA').AsString + ' - ' + Empresa.FieldByName('CIDADE').AsString;
//  FrmVenda.ReleaseInstance;
  UserControl.ApplicationID := EmpresaAtiva;
  UserControl.Logoff;
end;

procedure TFrmPrincipal.SelecionarBanco1Click(Sender: TObject);
begin
  Action_Seleciona_BancoExecute(Sender);
end;

procedure TFrmPrincipal.poupMenuLateralClick(Sender: TObject);
begin
  dxRibbon1.BeginUpdate;
  dxRibbon1.ShowTabHeaders := poupMenuRibbonSuperior.Checked;
  dxRibbon1.ShowTabGroups := poupMenuRibbonSuperior.Checked;
  dxRibbon1.QuickAccessToolbar.Visible := False; //poupMenuRibbonSuperior.Checked;
  TConfig.SaveBoolean('POUPMENULATERAL_POR_USUARIO', poupMenuLateral.Checked, Usuario.Codigo);
//  btnMenuSuperior.SpeedButtonOptions.Down:=False;
  tcMenu.Visible := poupMenuLateral.Checked;
  btnMenuLateral.Visible := poupMenuLateral.Checked;
  if tcMenu.Visible and not Assigned(FrmMenu) then
    Application.CreateForm(TFrmMenu, FrmMenu);
//  StatusBar.Visible := Not poupMenuLateral.Checked;
  dxRibbon1.EndUpdate;
end;

procedure TFrmPrincipal.Action_Seleciona_BancoExecute(Sender: TObject);
var
  Reg: TRegistry;
  i: Integer;
  AListaCaminhos: TStringList;
  AMenuItem: TMenuItem;
begin
  AListaCaminhos := TStringList.Create;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Rocha\' + ApplicationTitle + '\Banco\Caminhos', False) then
      Reg.GetValueNames(AListaCaminhos);
    PopupMenu_Banco.Items.Clear;
    AListaCaminhos.Sort; //Teste
    if AListaCaminhos.Count > 0 then
    begin
      for i := 0 to AListaCaminhos.Count - 1 do
      begin
        AMenuItem := TMenuItem.Create(PopupMenu_Banco);
        AMenuItem.Caption := AListaCaminhos[i];
        AMenuItem.Checked := (Reg.ReadString(AListaCaminhos[i]) = CONECTAR.DatabaseName);
        AMenuItem.Tag := i;
        if (Sender <> nil) and (Sender = SelecionarBanco1) then
          AMenuItem.OnClick := OnClickConectaBancoEReinicia
        else
          AMenuItem.OnClick := OnClickConectaBanco;
        PopupMenu_Banco.Items.Add(AMenuItem);
      end;
    end;
  finally
    Reg.Free;
    AListaCaminhos.Free;
  end;
  PopupMenu_Banco.PopupOnMouse;
end;

procedure TFrmPrincipal.Action_Empresa_AtivaExecute(Sender: TObject);
var
  AMenuItem: TMenuItem;
begin
  PopupMenu_Empresa.Items.Clear;
  if not EmpresaLista.Active then
    Exit;

  EmpresaLista.First;
  while not EmpresaLista.Eof do
  begin
    AMenuItem := TMenuItem.Create(PopupMenu_Empresa);
    AMenuItem.Caption := EmpresaLista.FieldByName('CODIGO').AsString + ' - ' + EmpresaLista.FieldByName('FANTASIA').AsString + ' - ' + EmpresaLista.FieldByName('CIDADE').AsString;
    AMenuItem.Tag := EmpresaLista.FieldByName('CODIGO').AsInteger;
    if EmpresaLista.FieldByName('CODIGO').AsString = EmpresaAtiva then
      AMenuItem.Checked := True;
    AMenuItem.OnClick := OnClickPanelIndex4;
    PopupMenu_Empresa.Items.Add(AMenuItem);
    EmpresaLista.Next;
  end;
  PopupMenu_Empresa.PopupOnMouse;
end;

procedure TFrmPrincipal.ConfigurarcaminhosdoBancodeDados1Click(Sender: TObject);
begin
  Action_Procura_BancoExecute(nil);
end;

procedure TFrmPrincipal.BtnSelecionarBancoClick(Sender: TObject);
begin
  MenuErroBanco.PopupOnMouse;
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 9: MÓDULOS do sistema /////////////////////////////////////////////////////////////////'}

  /// Funções relativas a módulos //////////////////////////////////////////////////////////////////////////////////////

procedure TFrmPrincipal.AplicaModulosAtivos; // Isso vira uma Rota
var
  i, j, k, ALeft: Integer;
begin
  ControllerPrincipal_AplicaModulosAtivos(Empresa.FieldByName('CNPJCPF').AsString);

//  Action_Telefones.Visible             := True;
//  BarAPI.Enabled                       := True;
//  BarProdutos.Enabled                  := True;
//  BarContatos.Enabled                  := True;
//  BarRelatorios.Enabled                := True;
//  BarUsuario.Enabled                   := True;

  // Monta as Telas do APP
  ControllerWR_APP_Telas;

  // Libera as Actions
  for i := TagAPP_First to TagAPP_Last do
  begin
    if Not Assigned(AWR_APP[i]) then  Continue;

    for j := 0 to AWR_APP[i].TagTelas.Count - 1 do
    begin
      for k := 0 to Menu_ActionManager.ActionCount - 1 do
      begin
        if AWR_APP[i].TagTelas[j] = Menu_ActionManager.Actions[k].Tag then
          Menu_ActionManager.Actions[k].Visible := AWR_APP[i].Ativo; //True;
      end;
    end;
  end;

  if Assigned(FrmMenu) then
  begin
    frmMenu.tlProduto.Visible := AWR_Modulo[TagModulo_Estoque].Ativo;
    frmMenu.tlVendas.Visible := AWR_Modulo[TagModulo_Vendas].Ativo;
    FrmMenu.tlProducao.Visible := AWR_Modulo[TagModulo_Producao].Ativo;
    frmMenu.tlFinanceiro.Visible := AWR_Modulo[TagModulo_Financeiro].Ativo;
    frmMenu.tlCompras.Visible := AWR_Modulo[TagModulo_Compras].Ativo;
    frmMenu.tlFichaPonto.Visible := AWR_Modulo[TagModulo_RH].Ativo;
    frmMenu.tiPainelControle.Visible := AWR_Modulo[TagModulo_BI].Ativo;
  end;

  if AWR_Modulo[TagModulo_Estoque].Ativo then
    BarProdutos.Visible := ivAlways;
  BarProdutos.Enabled := AWR_Modulo[TagModulo_Estoque].Ativo;
  tcmProduto.Visible := AWR_Modulo[TagModulo_Estoque].Ativo;
  tcmEstoque.Visible := AWR_Modulo[TagModulo_Estoque].Ativo;
//

  if AWR_Modulo[TagModulo_Vendas].Ativo then
    BarVenda.Visible := ivAlways;
  BarVenda.Enabled := AWR_Modulo[TagModulo_Vendas].Ativo;
  tcmVenda.Visible := AWR_Modulo[TagModulo_Vendas].Ativo;
//
  dxBarVendas.Visible := AWR_Modulo[TagModulo_Vendas].Ativo or AWR_Modulo[TagModulo_Faturamento].Ativo;

  if AWR_Modulo[TagModulo_Producao].Ativo then
    BarProducao.Visible := ivAlways;
  BarProducao.Enabled := AWR_Modulo[TagModulo_Producao].Ativo;
  dxBarProducao.Visible := AWR_Modulo[TagModulo_Producao].Ativo;
  tcmProducao.Visible := AWR_Modulo[TagModulo_Producao].Ativo;
//

  if AWR_Modulo[TagModulo_Financeiro].Ativo then
    BarFinanceiro.Visible := ivAlways;
  BarFinanceiro.Enabled := AWR_Modulo[TagModulo_Financeiro].Ativo;
  tcmFinanceiro.Visible := AWR_Modulo[TagModulo_Financeiro].Ativo;
  dxBarFinanceiro.Visible := AWR_Modulo[TagModulo_Financeiro].Ativo or AWR_Modulo[TagModulo_RH].Ativo;

  if AWR_Modulo[TagModulo_Compras].Ativo then
    BarCompra.Visible := ivAlways;
  BarCompra.Enabled := AWR_Modulo[TagModulo_Compras].Ativo;
  tcmCompra.Visible := AWR_Modulo[TagModulo_Compras].Ativo;

  dxBarControleEstoque.Visible := AWR_Modulo[TagModulo_Compras].Ativo or AWR_Modulo[TagModulo_Estoque].Ativo;



  if AWR_Modulo[TagModulo_Estoque].Ativo then
    BArEstoque.Visible := ivAlways;
  BArEstoque.Enabled := AWR_Modulo[TagModulo_Estoque].Ativo;

  if AWR_Modulo[TagModulo_CRM].Ativo then
    BarCRM.Visible := ivAlways;
  BarCRM.Enabled := AWR_Modulo[TagModulo_CRM].Ativo;
  dxBarAtendimento.Visible := AWR_Modulo[TagModulo_CRM].Ativo;
  tcmCRM.Visible := AWR_Modulo[TagModulo_CRM].Ativo;
  tcmMensagens.Visible := AWR_Modulo[TagModulo_CRM].Ativo;
//
//  if GetModuloPeloNomeAtivo('Produtividade') then  BarProducao.Visible := ivAlways;
//  BarProducao.Enabled       := GetModuloPeloNomeAtivo('Produtividade');
//  dxBarProducao.Visible     := GetModuloPeloNomeAtivo('Produtividade');

  if AWR_Modulo[TagModulo_Integracoes].Ativo then
    BarAPI.Visible := ivAlways;
  BarAPI.Enabled := AWR_Modulo[TagModulo_Integracoes].Ativo;
  tcmIntegracoes.Visible := AWR_Modulo[TagModulo_Integracoes].Ativo;

  if AWR_Modulo[TagModulo_RH].Ativo then
    BarRH.Visible := ivAlways;
  BarRH.Enabled := AWR_Modulo[TagModulo_RH].Ativo;
  tcmRH.Visible := AWR_Modulo[TagModulo_RH].Ativo;

  if AWR_Modulo[TagModulo_Associacao].Ativo then
  begin
    BarAssociacao.Visible := ivAlways;
    BarRelEquipamentos.Visible := ivAlways;
  end;
  BarAssociacao.Enabled := AWR_Modulo[TagModulo_Associacao].Ativo;
  dxBarAssociacao.Visible := AWR_Modulo[TagModulo_Associacao].Ativo;
  tcmAssociacao.Visible := AWR_Modulo[TagModulo_Associacao].Ativo;

  if AWR_Modulo[TagModulo_BI].Ativo then
    dxBarBI.Visible := ivAlways;
  dxBarBI.Enabled := AWR_Modulo[TagModulo_BI].Ativo;
  tcmPowerBI.Visible := AWR_Modulo[TagModulo_BI].Ativo;

  if AWR_Modulo[TagModulo_Relatorio].Ativo then
    BarRelatorios.Visible := ivAlways;
  BarRelatorios.Enabled := AWR_Modulo[TagModulo_Relatorio].Ativo;
  tcmRelatorio.Visible := AWR_Modulo[TagModulo_Relatorio].Ativo;

  if AWR_Modulo[TagModulo_Faturamento].Ativo then
    BarNotasFiscais.Visible := ivAlways;
  BarNotasFiscais.Enabled := AWR_Modulo[TagModulo_Faturamento].Ativo;
  tcmFiscal.Visible := AWR_Modulo[TagModulo_Faturamento].Ativo;

  BarContatos.Enabled := True;
  tcmContato.Visible := True;
  dxBarImpressao.Visible := True;
  tcmEmpresaSelecionada.Visible := True;
  tcmEmpresa.Visible := True;
  tcmPrincipal.Visible := True;
  BarUsuario.Enabled := True;
  dxBarButton122.Visible := ivAlways;
  tcmUsuarios.Visible := True;
  tcmBaseDeConhecimento.Visible := True;
  dxBarLargeButton19.Visible := ivAlways;
  dxBarLargeButton20.Visible := ivAlways;
  dxBarLargeButton21.Visible := ivAlways;

  for I := 0 to Length(FBotoesHabilitados) do
    FBotoesHabilitados[0]:= False;

  if false {AWR_Modulo[TagModulo_BI].Ativo}  then  // Desativei os botões até ficar bonito
  begin
//    FBotoesHabilitados[0] := AWR_Modulo[TagModulo_RH].Ativo;
//    FBotoesHabilitados[1] := AWR_Modulo[TagModulo_Estoque].Ativo;
    FBotoesHabilitados[2] := AWR_Modulo[TagModulo_Producao].Ativo;
    FBotoesHabilitados[3] := AWR_Modulo[TagModulo_Estoque].Ativo;
    FBotoesHabilitados[4] := AWR_Modulo[TagModulo_Compras].Ativo;
    FBotoesHabilitados[5] := AWR_Modulo[TagModulo_Vendas].Ativo;
    FBotoesHabilitados[6] := AWR_Modulo[TagModulo_Financeiro].Ativo;
//    FBotoesHabilitados[3] := False;
//    FBotoesHabilitados[5] := False;

    ALeft := 44;
    for I := 0 to Length(FBotoesHabilitados) do
    begin
      if FBotoesHabilitados[I] then
      begin
        case I of
          0:
          begin
            btnKPI_RH.Visible := FBotoesHabilitados[I];
            btnKPI_RH.Left    := ALeft;
          end;
          1:
          begin
            btnKPI_Produto.Visible := FBotoesHabilitados[I];
            btnKPI_Produto.Left    := ALeft;
          end;
          2:
          begin
            btnKPI_Producao.Visible := FBotoesHabilitados[I];
            btnKPI_Producao.Left    := ALeft;
          end;
          3:
          begin
            btnKPI_Estoque.Visible := FBotoesHabilitados[I];
            btnKPI_Estoque.Left    := ALeft;
          end;
          4:
          begin
            btnKPI_Compras.Visible := FBotoesHabilitados[I];
            btnKPI_Compras.Left    := ALeft;
          end;
          5:
          begin
            btnKPI_Vendas.Visible := FBotoesHabilitados[I];
            btnKPI_Vendas.Left    := ALeft;
          end;
          6:
          begin
            btnKPI_Financeiro.Visible := FBotoesHabilitados[I];
            btnKPI_Financeiro.Left    := ALeft;
          end;
        end;
        ALeft := ALeft + 66;
        btnKPI_Olho.Visible := True;
      end;
    end;
    btnKPI_Olho.Left := ALeft;
  end;

end;

procedure TFrmPrincipal.VerificaSistemaModulo;
begin
  Informatica := (Empresa.FieldByName('MODULO').AsString = 'Informática');
  Motos := (Empresa.FieldByName('MODULO').AsString = 'Revenda de Motos');
  ComunicacaoVisual := (Empresa.FieldByName('MODULO').AsString = 'Comunicação Visual');

  if ComunicacaoVisual then
    Sistema.Nome := 'Office Impresso ' + Sistema.Ano
  else
    Sistema.Nome := 'Office Comercial ' + Sistema.Ano;
end;

procedure TFrmPrincipal.WMFocusMailMessage(var AMessage: TMessage);
begin
//  SetFocusedMail(AMessage.WParam, AMessage.LParam);
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 10: REGISTRO E ATUALIZACAO SISTEMA/////////////////////////////////////////////////////'}

  /// Conecção com a WR2 Sistemas Para atualizar e verificar o Registro ////////////////////////////////////////////////
  ///
  ///
  ///
  ///
procedure TFrmPrincipal.RespostaThdRegistro(Sender: TObject);
begin
  //Na resposta da verificação inicial do registro, caso o sistema continue inativo, então abre a tela de registro.
  if not Sistema.Ativado then
  begin
    if not Assigned(FrmRegistro) then
      FrmRegistro := TFrmRegistro.Create(nil);
    FrmRegistro.ShowModal;
  end;
end;

procedure TFrmPrincipal.RespostaThdAtualizacao(Sender: TObject; DadosAtualizacao: TDadosAtualizacao);
begin
  try
    try
      if TForm(PnlAguardeAtualizacao.Parent) <> Self then
        TForm(PnlAguardeAtualizacao.Parent).Close;
    except
    end;

    //Se veio alguma resposta, então executa o procedimento de atualização, comparando a versão e vendo se é necessário
    if DadosAtualizacao.AttDisponivel then
      AtualizarSistema(DadosAtualizacao)

    //Se nenhuma resposta foi obtida, então houve um erro de conexão.
    else if FAtualizacaoManual then
    begin
      if DadosAtualizacao.VersaoDisponivel = '' then
        ShowMessage('Não foi possível conectar ao servidor. Verifique sua conexão e tente novamente.')
      else
        ShowMessage('Seu sistema já está na última versão disponível');
    end;

    //Se a atualização não foi disparada manualmente, então foi o sistema que executou de forma automática e o próximo
    //passo é fazer a verificação do registro.
    if not FAtualizacaoManual then
    begin
      //A Thread de verificação só é disparada se ainda não estiver rodando
      if not RodandoPeloDelphi and not Assigned(FThdRegistro) then
      begin
        FThdRegistro := TVerificaRegistro.Create(nil, RespostaThdRegistro);
        FThdRegistro.Start;
      end;
    end;
  finally
    Action_Atualizar.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPrincipal.AtualizarSistema(ADadosAtualizacao: TDadosAtualizacao);
var
  QuerX: TIBQuery;
  ATransa: TIBTransaction;
begin
  ATransa := GeraTransacao;
  QuerX := GeraQuery(ATransa);
  try
    QuerX.SQL.Text := 'select CNPJCPF from EMPRESA where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    if not ADadosAtualizacao.AttDisponivel then
      Exit;

    if ADadosAtualizacao.VersaoObrigatoria <> '' then
    begin
      TConfig.SaveGlobalString('VERSAO_MIN_OBRIGATORIA', ADadosAtualizacao.VersaoObrigatoria);
      if CompareVersion(ADadosAtualizacao.VersaoObrigatoria, Sistema.Versao) > 0 then
      begin
        {$IFDEF DEBUG}
        if ShowMessageWR('Seu sistema deve ser atualizado agora. Deseja Fazer Atualização agora?', MB_ICONQUESTION) <> mrYes then
          Exit;
        {$ELSE}
        ShowMessageWR('Seu sistema deve ser atualizado agora. Pressione OK e aguarde o término da atualização');
        {$ENDIF}
        FrmPrincipal.AutoUpdate1.UpdateVersao(ADadosAtualizacao.VersaoObrigatoria);
      end;
    end;
    if FAtualizacaoManual and (ADadosAtualizacao.VersaoDisponivel <> '') and (ShowMessageWR('A versão "' + ADadosAtualizacao.VersaoDisponivel + '" está disponível para download. Deseja atualizar seu sistema agora?', MB_ICONQUESTION) = mrYes) then
    begin
      FrmPrincipal.AutoUpdate1.UpdateVersao(ADadosAtualizacao.VersaoDisponivel);
    end;
  finally
    QuerX.Free;
    if ATransa.InTransaction then
      ATransa.Rollback;
    ATransa.Free;
  end;
end;

procedure TFrmPrincipal.awmAlertMouseDown(Sender: TObject; AAlertWindow: TdxAlertWindow; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
var
  AMailBoxID, AMailID: Integer;
begin
  AAlertWindow.HitTest.HitPoint := Point(X, Y);
  if (AButton = mbLeft) and AAlertWindow.HitTest.HitAtMessageText then
  begin
    ShowWindow(Application.Handle, SW_RESTORE);
    SetForegroundWindow(Application.Handle);
    AMailBoxID := AAlertWindow.Tag mod 100;
    AMailID := AAlertWindow.Tag div 100;
    SendMessage(Application.MainForm.Handle, WM_FOCUSMAILMESSAGE, AMailBoxID, AMailID);    // Aqui abre a bagaça
    AAlertWindow.Close;
  end;
end;

procedure TFrmPrincipal.awmAlertMouseLeave(Sender: TObject; AAlertWindow: TdxAlertWindow);
var
  AFontStyles: TFontStyles;
begin
  AFontStyles := AAlertWindow.OptionsMessage.Text.Font.Style;
  Exclude(AFontStyles, fsUnderline);
  AAlertWindow.OptionsMessage.Text.Font.Style := AFontStyles;
  AAlertWindow.Cursor := crDefault;
end;

procedure TFrmPrincipal.awmAlertMouseMove(Sender: TObject; AAlertWindow: TdxAlertWindow; AShift: TShiftState; X, Y: Integer);
const
  BooleanToCursor: array[Boolean] of TCursor = (crDefault, crHandPoint);
var
  AFontStyles: TFontStyles;
  AHitTest: Boolean;
begin
  AFontStyles := AAlertWindow.OptionsMessage.Text.Font.Style;
  AAlertWindow.HitTest.HitPoint := Point(X, Y);
  AHitTest := AAlertWindow.HitTest.HitAtMessageText;
  AAlertWindow.Cursor := BooleanToCursor[AHitTest];
  if AHitTest then
    Include(AFontStyles, fsUnderline)
  else
    Exclude(AFontStyles, fsUnderline);
  AAlertWindow.OptionsMessage.Text.Font.Style := AFontStyles;
end;

procedure TFrmPrincipal.Action_AtualizarExecute(Sender: TObject);
begin
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    //Ctrl pressionado inicia o Deploy do sistema;
    if InputBox('', '', '') = 'Wscrct' then
      AutoUpdate1.Deploy
    else
    begin
      Sleep(5000);
      Application.Terminate; //Trava por 5 segs e mata a aplicação se a senha for digitada errada
    end;
    Exit;
  end;
  //Novo método de atualização
{  if DMAtualizacao = nil then
    DMAtualizacao := TDMAtualizacao.Create(Self);     }
  try
    Action_Atualizar.Enabled := False;
    try
      FrmRegistro := TFrmRegistro.Create(nil);
      with FrmRegistro do
      try
        if OpenConnection then
        begin
          try
            AtualizarSistema(False)
          finally
            CloseConnection;
          end;
        end
        else
          ShowMessageWR('Não foi possível conectar-se ao servidor. Verifique sua conexão e tente novamente.');
      finally
        FreeAndNil(FrmRegistro);
      end;
    except
    end;
  finally
    Action_Atualizar.Enabled := True;
  end;
end;

procedure TFrmPrincipal.BtnAtualizacaoPendenteOlhoClick(Sender: TObject);
begin
  FreeAndNil(FrmAtualizacaoPendente);
  TimerAtualizacaoPendente.Enabled := False;
  cxBalloonHint.HideHint;
end;

procedure TFrmPrincipal.TimerAtualizacaoPendenteTimer(Sender: TObject);
begin
  ImgAttPendente2.Visible := not ImgAttPendente2.Visible;
end;

procedure TFrmPrincipal.TimerRegistroTimer(Sender: TObject);
begin
  //Utilizado apenas pelo sistema antigo de verificação
  TimerRegistro.Enabled := False;
  FrmRegistro := TFrmRegistro.Create(Self);
  with FrmRegistro do
  try
//    if not RodandoPeloDelphi then
    begin
      if OpenConnection then
      try
        AtualizarSistema(True);
        if not CadastrarEquipamento(True) then
          ShowModal;
      finally
        CloseConnection;
      end;
    end;
  finally
    FreeAndNil(FrmRegistro);
  end;
end;

procedure TFrmPrincipal.TimerCronJobTimer(Sender: TObject);
begin
  if TDefinicoesBancoFD.BancoServidor.Connected then
  begin
    if not ServidorCronJob and (TConfig.ReadGlobalDateTime('SERVIDOR_CRON_ULTIMA_ATUALIZACAO') < IncMinute(DataHoraSys, -6)) then
      Verifica_Se_Assume_Controle_Configuracao_CronJob(Usuario.Codigo);
    if ServidorCronJob then
    begin
      // Rotinas que só o servidor pode executar
      Executa_Configuracao_CronJob(Usuario.Codigo);   // Aqui registra execução na tabela
      TConfig.SaveGlobalDateTime('SERVIDOR_CRON_ULTIMA_ATUALIZACAO', DataHoraSys);

      KPI_Execute_Todos;
    end;
    // Rotinas que todos os computadores tem que executar após a mineração do servidor
    Carrega_KPIs_na_Tela;
    Acao_CarregarDoBanco;
  end;
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 11: BACKUP PELO SISTEMA ///////////////////////////////////////////////////////////////'}

  /// Essa rotina esta em desuso pois o bakup na própia mauina não adianta e normalmente o restaure não funciona ///////
  /// REVER a necessidade de manter ela no fonte ///////////////////////////////////////////////////////////////////////
  ///
  ///

procedure TFrmPrincipal.VerificaSeExisteBackupConfiguradoOuPendenteParaGerar;
begin
  if Usuario.Privilegiado and (not TConfig.ReadGlobalBoolean('BACKUP_NAO_MOSTRAR_AVISOS')) then
  begin
    if (not TConfig.ReadGlobalBoolean('BACKUP_ATIVO')) then
    begin
      ImgBackup.Visible := True;
      TcxHintStyle(cxBalloonHint.HintStyle).CallOutPosition := cxbpBottomRight;
      ActivateBalloonHint(ImgBackup, 'O Backup do Banco de Dados não está ativo.', '       Clique aqui para configurar!');
      TcxHintStyle(cxBalloonHint.HintStyle).CallOutPosition := cxbpAuto;
      TimerVerificaConfiguracaoBackup.Enabled := True;
    end
    else if TDMBackup.VerificaExecucaodeBackup then
    begin
      ImgBackup.Visible := True;
      TcxHintStyle(cxBalloonHint.HintStyle).CallOutPosition := cxbpBottomRight;
      ActivateBalloonHint(ImgBackup, 'O Backup do Banco de Dados Automático.', ' Esta a mais de 1 dia sem ser executado.' + sLineBreak + '       Verifique!');
      ImgBackup.Hint := 'O Backup do Banco de Dados Automático.' + sLineBreak + 'Esta a mais de 1 dia sem ser executado.' + sLineBreak + '       Verifique!';
      TcxHintStyle(cxBalloonHint.HintStyle).CallOutPosition := cxbpAuto;
      TimerVerificaConfiguracaoBackup.Enabled := True;
    end;
  end;
end;

procedure TFrmPrincipal.TimerVerificaConfiguracaoBackupTimer(Sender: TObject);
begin
  {TODO: Ajustar o tratamento da exceção do Timer do Backup quando não há conexão com o banco de dados}

  if not FBackupConfigVerificado then
  begin
    FBackupAtivo := TConfig.ReadGlobalBoolean('BACKUP_ATIVO');
    FBackupConfigVerificado := True;
  end;
  if not FBackupAtivo then
    Exit;
  try
    if not TDMBackup.VerificaExecucaodeBackup(False) then
    begin
      if ImgBackup.Visible then
      begin
        ImgBackup.Visible := False;
        TimerVerificaConfiguracaoBackup.Enabled := False;
      end;
    end;
  except
    TimerVerificaConfiguracaoBackup.Enabled := False;
  end;
end;

procedure TFrmPrincipal.ImgBackupClick(Sender: TObject);
begin
  Action_Configurar_Backup.Execute;
end;

{$ENDREGION}

{$REGION '//////////////////////// SEÇÃO 12: BALANÇO AUTOMÁTICO/////////////////////////////////////////////////////////////////'}

  /// Isso serve para saber quanto tinha de estoque no último perríodo informado para facilitar o rastreio de possível//
  /// erros de contagem de estoque /////////////////////////////////////////////////////////////////////////////////////
  ///

procedure TFrmPrincipal.BalancoAutomatico;
var
  ADataAtual: TDateTime;
  QuerX: TIBQuery;
  ATipoBalanco: TTipoBalancoAutomatico;
begin
  FrmAguarde := TFrmAguarde.Create(Self);
  FrmAguarde.Mensagem := 'Fazendo balanço do período, Aguarde.';

  if ATipoBalanco = tbaSemanal then
    FrmAguarde.Mensagem := FrmAguarde.Mensagem + slineBreak + 'Balanço da semanal anterior';
  if ATipoBalanco <> tbaMensal then
    FrmAguarde.Mensagem := FrmAguarde.Mensagem + slineBreak + 'Balanço do mês anterior.';
  if ATipoBalanco = tbaAnual then
    FrmAguarde.Mensagem := FrmAguarde.Mensagem + slineBreak + 'Balanço do ano anterior';

  ADataAtual := DataHoraSys;
  QuerX := GeraQuery;
  try
    //Define a configuração padrão se ainda não foi definida nenhuma
    QuerX.SQL.Text := 'select 1 from CONFIGURACOES where (CONFIG = :Key) and (CODEMPRESA = :CodEmpresa)';
    QuerX.ParamByName('Key').AsString := 'TIPO_BALANCO_AUTOMATICO';
    QuerX.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
    QuerX.Open;
    if QuerX.IsEmpty then
      TConfig.SaveInteger('TIPO_BALANCO_AUTOMATICO', tbaMensal.Codigo);

    //Resgata a configuração salva
    ATipoBalanco := TTipoBalancoAutomatico.GetFromCodigo(TConfig.ReadInteger('TIPO_BALANCO_AUTOMATICO'));

    //Verifica se o Balanço Mensal obrigatório do mês anterior já foi efetuado
    QuerX.SQL.Text := 'select first 1 1 ' + 'from BALANCO ' + 'where (DATA = :Data)';
    QuerX.Params[0].AsDateTime := EndOfTheMonth(IncMonth(ADataAtual, -1));
    QuerX.Open;
    if QuerX.IsEmpty then
    begin
      FrmAguarde.Show;
      CriaBalanco(tbaMensal);
    end;
    QuerX.Close;

    //Efetua o Balanço Automático selecionado nas opções
    if ATipoBalanco <> tbaMensal then
    begin
      if ATipoBalanco = tbaAnual then
      begin
        QuerX.Params[0].AsDateTime := EndOfTheYear(IncYear(ADataAtual, -1));
        QuerX.Open;
        if QuerX.IsEmpty then
        begin
          FrmAguarde.Show;
          CriaBalanco(tbaAnual);
        end;
      end
      else if ATipoBalanco = tbaSemanal then
      begin
        QuerX.Params[0].AsDateTime := IncDay(EndOfTheWeek(IncWeek(ADataAtual, -1)), -1);
        QuerX.Open;
        if QuerX.IsEmpty then
        begin
          FrmAguarde.Show;
          CriaBalanco(tbaSemanal);
        end;
      end;
    end;
  finally
    QuerX.Free;
  end;
  FrmAguarde.Close;
  FrmAguarde.Free;
end;


{$ENDREGION}

end.




