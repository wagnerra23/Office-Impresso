unit PDV_Pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxClasses,
  dxLayoutControl, cxDBEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxLayoutLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxButtonEdit, uControleWR, dxCustomTileControl, dxTileControl, dxGDIPlusClasses,
  cxImage, Vcl.ExtCtrls, cxCurrencyEdit, ACBrPosPrinter, ACBrBase, ACBrTEFD, CadM, ACBrTEFDClass, Classes.Venda.TEF,
  ACBrTEFDCliSiTef, ACBrTEFPayGoComum, ACBrTEFPayGoWebComum, ACBrTEFComum, ACBrTEFDPayGoWeb, ACBrUtil,
  StrUtils, DateUtils, Math, TypInfo, IniFiles, uButtonFlat, cxCalendar, Vcl.Buttons, Vcl.Samples.Spin, System.ImageList, Vcl.ImgList, UCBase,
  unitfuncoes, Aguarde, cxCheckComboBox, cxImageList, cxSpinEdit, Printers, DataModuleImpressao,
  System.Generics.Collections, WREventos, PDV_TipoNF_Selecao, ACBrDevice, synaser, FundoTransparente, UCHistDataset, uWRCalculaConfiguracoes,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

const
  UM_SELECIONEPAGAMENTO = WM_USER + 1;

type
  TTipoBotaoOperacao = (bopNaoExibir, bopCancelarVenda, bopLiberarCaixa, bopCancelarEsperaTEF, bopFinalizarVenda, bopVendaFinalizada);

  TFrmPDV_Pagamento = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtParcela: TcxTextEdit;
    LiParcelas: TdxLayoutItem;
    cbxCondicaoPagto: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    LiIntervalo: TdxLayoutItem;
    edtIntervalo: TcxTextEdit;
    Venda_Financeiro_Tef: TFDQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelCinza: TdxLayoutSkinLookAndFeel;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    GrupoParcelas: TdxLayoutGroup;
    DS: TDataSource;
    chkIntervalo_Mensal: TcxCheckBox;
    LiMes: TdxLayoutItem;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel2: TdxLayoutStandardLookAndFeel;
    Panel1: TPanel;
    lblEmpresa: TcxLabel;
    lblFuncionario: TcxLabel;
    GrupoTabs: TdxLayoutGroup;
    TabCrediario: TdxLayoutGroup;
    tabOpercao: TdxLayoutGroup;
    tgidentificaCliente: TdxLayoutGroup;
    tgIdentifica: TdxLayoutGroup;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    lilblSubTotal: TdxLayoutItem;
    lblSubTotal: TcxLabel;
    lilblAcrescimo: TdxLayoutItem;
    lblAcrescimo: TcxLabel;
    dxLayoutItem16: TdxLayoutItem;
    cxLabel5: TcxLabel;
    TabMenuConfiguracoes: TdxLayoutGroup;
    ACBrTEFD1: TACBrTEFD;
    ACBrPosPrinter1: TACBrPosPrinter;
    lblStatus: TcxLabel;
    DSVenda_Financeiro_Tef: TDataSource;
    lilblTroco: TdxLayoutItem;
    lblTroco: TLabel;
    lilblQtdItens: TdxLayoutItem;
    lblQtdItens: TcxLabel;
    pnlDesconto: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem22: TdxLayoutItem;
    lblDescTotalAPagar: TLabel;
    dxLayoutItem21: TdxLayoutItem;
    edtValorDesconto: TcxCurrencyEdit;
    dxLayoutItem23: TdxLayoutItem;
    edtPercDesconto: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtDescObservacao: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    btnCancelaDesconto: TWRButtonFlat;
    dxLayoutItem26: TdxLayoutItem;
    btnConfirmaDesconto: TWRButtonFlat;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    pnlCPF: TPanel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    liedtCPF: TdxLayoutItem;
    edtCPF: TcxTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    btnCancelaCPF: TWRButtonFlat;
    dxLayoutItem29: TdxLayoutItem;
    btnConfirmaCPF: TWRButtonFlat;
    Transa: TFDTransaction;
    lilblDesconto: TdxLayoutItem;
    lblDesconto: TcxLabel;
    lblVendaCPF: TLabel;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutLookAndFeelList3: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel3: TdxLayoutStandardLookAndFeel;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    pnlAcrescimo: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    lblOutroTotalAPagar: TLabel;
    edtValorAcrescimo: TcxCurrencyEdit;
    edtPercAcrescimo: TcxCurrencyEdit;
    edtAcresObservacao: TcxTextEdit;
    btnCancelaAcrescimo: TWRButtonFlat;
    btnConfirmaAcrescimo: TWRButtonFlat;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxLabel1: TcxLabel;
    DS_Financeiro: TDataSource;
    dxLayoutItem7: TdxLayoutItem;
    GridFinanceiro: TcxGrid;
    cxGridViewFinanceiro: TcxGridDBTableView;
    cxGridViewFinanceiroPARCELA: TcxGridDBColumn;
    cxGridViewFinanceiroCODIGO: TcxGridDBColumn;
    cxGridViewFinanceiroVALOR: TcxGridDBColumn;
    cxGrid1DBTableView1VENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONTA: TcxGridDBColumn;
    cxGrid1DBTableView1CONTA: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1JUROS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCHEQUE: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C3: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C2: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_C1: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CONTA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_COMPE: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1CHEQUE_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1CODRESPONSAVEL: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1HISTORICO: TcxGridDBColumn;
    cxGrid1DBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    cxGrid1DBTableView1CONDICAOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODTIPOPAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTATOS: TcxGridDBColumn;
    cxGridViewFinanceiroTotal: TcxGridDBColumn;
    cxGridViewFinanceiroDATA: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_VENCTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_DATAPAGTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_STATUS: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_TIPO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_TOTAL: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_VALOR: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_DESCONTO: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_JUROS: TcxGridDBColumn;
    cxGridViewFinanceiroFIN_COUNTFIN: TcxGridDBColumn;
    cxGridViewFinanceiroMsgFinanceiro: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem10: TdxLayoutItem;
    lblVendaRazaoSocial: TLabel;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem11: TdxLayoutItem;
    pnlPrinci: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tiOperadoraTEF: TdxTileControlItem;
    tiImpressora: TdxTileControlItem;
    tiFormaPagamento: TdxTileControlItem;
    cbxGP: TComboBox;
    edCodigoLoja: TEdit;
    btTestarTEF: TBitBtn;
    btnSerial: TSpeedButton;
    btnProcurarImpressora: TSpeedButton;
    btTestarPosPrinter: TBitBtn;
    cbxPorta: TComboBox;
    cbxModeloPosPrinter: TComboBox;
    seEspLinhas: TSpinEdit;
    seLinhasPular: TSpinEdit;
    seColunas: TSpinEdit;
    cbxPagCodigo: TComboBox;
    cbIMprimirViaReduzida: TCheckBox;
    cbSuportaDesconto: TCheckBox;
    cbSuportaSaque: TCheckBox;
    cbSuportaReajusteValor: TCheckBox;
    cbConfirmarAntesComprovantes: TCheckBox;
    cbMultiplosCartoes: TCheckBox;
    cbxQRCode: TComboBox;
    seMaxCartoes: TSpinEdit;
    seTrocoMaximo: TSpinEdit;
    cbxTransacaoPendenteInicializacao: TComboBox;
    cbxImpressaoViaCliente: TComboBox;
    cbxTransacaoPendente: TComboBox;
    btSalvarParametros: TBitBtn;
    edRegistro: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_TEF: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
    Label19: TLabel;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    GrupoConfigGeral: TdxLayoutGroup;
    GrupoConfigImpressora: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    libtnProcuraImpressora: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    GrupoConfigImprAvancado: TdxLayoutGroup;
    dxLayoutItem44: TdxLayoutItem;
    GrupoImpressora: TdxLayoutGroup;
    GrupoGeralAvancado: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    GrupoGeral: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    GrupoTipoPagamento: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutItem61: TdxLayoutItem;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem63: TdxLayoutItem;
    liCodPinPad: TdxLayoutItem;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    GrupoTipoPagto: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    pnlUltimasTransações: TPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1PARCELA: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1VENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1DATA: TcxGridDBColumn;
    cxGrid2DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid2DBTableView1HISTORICO: TcxGridDBColumn;
    cxGrid2DBTableView1EMISSAO: TcxGridDBColumn;
    cxGrid2DBTableView1DATAPAGTO: TcxGridDBColumn;
    cxGrid2DBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOPAGTO: TcxGridDBColumn;
    cxGrid2DBTableView1CODCONDICAOPAGTO: TcxGridDBColumn;
    cxGrid2DBTableView1CONDICAOPAGTO: TcxGridDBColumn;
    cxGrid2DBTableView1CONTATOS: TcxGridDBColumn;
    cxGrid2DBTableView1CODCHEQUE: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_CODBANCO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_BANCO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_NOME: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_REPASSADO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_CNPJCPF: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_COMPE: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_AGENCIA: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_C1: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_CONTA: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_C2: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_C3: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_DT_CADASTRO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_DT_BOM_PARA: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_DT_REPASSADO: TcxGridDBColumn;
    cxGrid2DBTableView1CHEQUE_TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1ATUALIZADO: TcxGridDBColumn;
    cxGrid2DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid2DBTableView1CODCONTA: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_FORNECEDOR_TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1PESSOA_FORNECEDOR_SEQUENCIA: TcxGridDBColumn;
    cxGrid2DBTableView1PREVISAO: TcxGridDBColumn;
    cxGrid2DBTableView1GERADO_DO_FINANCEIRO: TcxGridDBColumn;
    cxGrid2DBTableView1PARCELA_ALTERADA: TcxGridDBColumn;
    cxGrid2DBTableView1NSU: TcxGridDBColumn;
    cxGrid2DBTableView1REDE: TcxGridDBColumn;
    cxGrid2DBTableView1CNPJ_CREDENCIADORA: TcxGridDBColumn;
    cxGrid2DBTableView1TEF_STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1LANCAMENTO_FUTURO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    tgIdentificaFuncionario: TdxLayoutGroup;
    grupoInformaValores: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    btTestarPinPad: TBitBtn;
    ImageList1: TImageList;
    dxLayoutItem60: TdxLayoutItem;
    BitBtn1: TBitBtn;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutItem66: TdxLayoutItem;
    tcMenuPagamento: TdxTileControl;
    tcMenuGroup1: TdxTileControlGroup;
    tcDinheiro: TdxTileControlItem;
    tcCartao: TdxTileControlItem;
    tcCrediario: TdxTileControlItem;
    tcMenuItem2: TdxTileControlItem;
    dxLayoutGroup16: TdxLayoutGroup;
    btnMenu: TcxButton;
    pImpressao: TPanel;
    lSaidaImpressao: TLabel;
    mImpressao: TMemo;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lTituloMsgOperador: TLabel;
    lMensagemOperador: TLabel;
    pMensagemCliente: TPanel;
    lTituloMensagemCliente: TLabel;
    lMensagemCliente: TLabel;
    pImpressoraBotes: TPanel;
    btImprimir: TBitBtn;
    btLimparImpressora: TBitBtn;
    cbEnviarImpressora: TCheckBox;
    pQRCode: TPanel;
    imgQRCode: TImage;
    dxLayoutItem2: TdxLayoutItem;
    btnVoltar: TBitBtn;
    cxLabel2: TcxLabel;
    pnlOperacao: TPanel;
    cxButton1: TcxButton;
    lblDataConta: TcxLabel;
    lblTipoVenda: TcxLabel;
    lblNumOperacao: TcxLabel;
    UCControls1: TUCControls;
    dxLayoutItem6: TdxLayoutItem;
    cxbFuncionario: TcxDBLookupComboBox;
    tcMenuRodape: TdxTileControl;
    dxLayoutItem3: TdxLayoutItem;
    tiAcrescimo: TdxTileControlItem;
    dxTileControl2Group1: TdxTileControlGroup;
    tiOperacao: TdxTileControlItem;
    dxTileControl2Group2: TdxTileControlGroup;
    tiEstornar: TdxTileControlItem;
    tcIdentifcaCPF: TdxTileControlItem;
    tcMenuItem1: TdxTileControlItem;
    tcMenuItem3: TdxTileControlItem;
    tcMenuItem5: TdxTileControlItem;
    tcMenuItem6: TdxTileControlItem;
    cxLabel3: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutItem30: TdxLayoutItem;
    MenuCondicaoPagto: TdxLayoutGroup;
    dxLayoutItem67: TdxLayoutItem;
    lblTotalAPagar: TLabel;
    dxLayoutItem68: TdxLayoutItem;
    lblValorPago: TLabel;
    dxLayoutGroup2: TdxLayoutGroup;
    DSTipoPagamento_Configuracao: TDataSource;
    Tipo_Pagamento_Configuracao: TFDQuery;
    tiDesconto: TdxTileControlItem;
    tiCancelar: TdxTileControlItem;
    tcTiposPagto: TdxTileControl;
    dxLayoutItem4: TdxLayoutItem;
    dxTileControl2Group3: TdxTileControlGroup;
    cxGrid1DBTableView1ACEITA_NO_CAIXA_ATUAL: TcxGridDBColumn;
    btnCPFPinPad: TWRButtonFlat;
    dxLayoutItem5: TdxLayoutItem;
    cxGridViewFinanceiroNSU: TcxGridDBColumn;
    mLog: TMemo;
    dxLayoutItem8: TdxLayoutItem;
    ceTrocoMaximo: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    TransaFinanceiroTEF: TFDTransaction;
    GridTransacoesTefDBTableView1: TcxGridDBTableView;
    GridTransacoesTefLevel1: TcxGridLevel;
    GridTransacoesTef: TcxGrid;
    cxGridTransacoesTef: TdxLayoutItem;
    GridTransacoesTefDBTableView1CODIGO: TcxGridDBColumn;
    GridTransacoesTefDBTableView1CODVENDA: TcxGridDBColumn;
    GridTransacoesTefDBTableView1NSU: TcxGridDBColumn;
    GridTransacoesTefDBTableView1TEF_STATUS: TcxGridDBColumn;
    GridTransacoesTefDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridTransacoesTefDBTableView1REDE: TcxGridDBColumn;
    GridTransacoesTefDBTableView1VALOR_TOTAL: TcxGridDBColumn;
    GridTransacoesTefDBTableView1QTD_PARCELAS: TcxGridDBColumn;
    GridTransacoesTefDBTableView1CNPJ_CREDENCIADORA: TcxGridDBColumn;
    GridTransacoesTefDBTableView1ARQ_RESPOSTA: TcxGridDBColumn;
    tiNotaFiscal: TdxTileControlItem;
    GrupoNotaFiscal: TdxLayoutGroup;
    ccbTiposNotaFiscal: TcxCheckComboBox;
    cbTiposNota: TdxLayoutItem;
    dxTileControl2: TdxTileControl;
    tiNF_PDV: TdxTileControlItem;
    dxTileControl2Group4: TdxTileControlGroup;
    tcNotaFiscal: TdxTileControl;
    tiNFe: TdxTileControlItem;
    dxTileControl3Group1: TdxTileControlGroup;
    tiNFCe: TdxTileControlItem;
    tiNFSe: TdxTileControlItem;
    GridTransacoesTefDBTableView1BtnReimprimir: TcxGridDBColumn;
    GridTransacoesTefDBTableView1BtnCancelar: TcxGridDBColumn;
    IconListTEF: TcxImageList;
    dxLayoutGroup1: TdxLayoutGroup;
    lblTipoVenda1: TcxLabel;
    dxLayoutItem13: TdxLayoutItem;
    dxTileControl3: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tiCaixa: TdxTileControlItem;
    GrupoImpressoes: TdxLayoutGroup;
    lblTituloDANFCe: TcxLabel;
    LilblTituloDANFCE: TdxLayoutItem;
    ImpressaoNFCe: TdxLayoutGroup;
    cbImpressoraNFCe: TcxComboBox;
    LicbImpressoraNFCe: TdxLayoutItem;
    seNumeroCopiasNFCe: TcxSpinEdit;
    LiseNumeroCopiasNFCe: TdxLayoutItem;
    edtMensagemNFCe: TcxTextEdit;
    LiedtMensagemNFCe: TdxLayoutItem;
    chkVisualizarNFCe: TcxCheckBox;
    LicbVisualizarNFCe: TdxLayoutItem;
    GrupoImpressaoNFCe1: TdxLayoutGroup;
    GrupoImpressaoNFCe2: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    ImpressaoNFe: TdxLayoutGroup;
    lblTituloDANFe: TcxLabel;
    LilblTituloDANFE: TdxLayoutItem;
    chkVisualizarNFe: TcxCheckBox;
    LicbVisualizarNFe: TdxLayoutItem;
    cbImpressoraNFe: TcxComboBox;
    LicbImpressoraNFe: TdxLayoutItem;
    seNumeroCopiasNFe: TcxSpinEdit;
    LiseNumeroCopiasNFe: TdxLayoutItem;
    edtMensagemNFe: TcxTextEdit;
    LiedtMensagemNFe: TdxLayoutItem;
    GrupoImpressaoNFe1: TdxLayoutGroup;
    GrupoImpressaoNFe2: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    ImpressaoNFSe: TdxLayoutGroup;
    cbImpressoraNFSe: TcxComboBox;
    LicbImpressoraNFSe: TdxLayoutItem;
    lblTituloDANFSe: TcxLabel;
    LilblTituloDANFSE: TdxLayoutItem;
    chkVisualizarNFSe: TcxCheckBox;
    LicbVisualizarNFSe: TdxLayoutItem;
    seNumeroCopiasNFSe: TcxSpinEdit;
    LiseNumeroCopiasNFSe: TdxLayoutItem;
    LiedtMensagemNFSe: TdxLayoutItem;
    GrupoImpressaoNFSe2: TdxLayoutGroup;
    GrupoImpressaoNFSe1: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    lblTituloNaoFiscal: TcxLabel;
    LilblTituloNaoFiscal: TdxLayoutItem;
    chkVisualizarNaoFiscal: TcxCheckBox;
    LicbVisualizarNaoFiscal: TdxLayoutItem;
    cbImpressoraNaoFiscal: TcxComboBox;
    LicbImpressoraNaoFiscal: TdxLayoutItem;
    seNumeroCopiasNaoFiscal: TcxSpinEdit;
    LiseNumeroCopiasNaoFiscal: TdxLayoutItem;
    edtMensagemNaoFiscal: TcxTextEdit;
    LiedtMensagemNaoFiscal: TdxLayoutItem;
    cbSelecionarImpressaoNaoFiscal: TcxLookupComboBox;
    LicbSelecionarImpressaoNaoFiscal: TdxLayoutItem;
    chkObrigatorioNaoFiscal: TcxCheckBox;
    LichkObrigatorioNaoFiscal: TdxLayoutItem;
    GrupoNaoFiscal2: TdxLayoutGroup;
    GrupoNaoFiscal1: TdxLayoutGroup;
    ImpressaoNaoFiscal: TdxLayoutGroup;
    tiImpressoes: TdxTileControlItem;
    edtMensagemNFSe: TcxTextEdit;
    WREventosCadastro: TWREventosCadastro;
    GridTransacoesTefDBTableView1MOTIVO: TcxGridDBColumn;
    cbNFSemTEF: TcxComboBox;
    dxLayoutItem69: TdxLayoutItem;
    chkObrigatorioImprimirNaoFiscal: TcxCheckBox;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    cxbFuncionarioCliente: TcxDBLookupComboBox;
    dxLayoutItem32: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbxCondicaoPagtoPropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tcDinheiroClick(Sender: TdxTileControlItem);
    procedure tcCrediarioClick(Sender: TdxTileControlItem);
    procedure ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
    procedure ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean; var Tratado: Boolean);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer; ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFPagamento(IndiceECF: string; Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1DepoisCancelarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1DepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1ExibeQRCode(const Dados: string);
    procedure ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo; ALogLine: string; var Tratado: Boolean);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
    procedure ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
    procedure ACBrTEFD1PayGoWebAguardaPinPad(OperacaoPinPad: TACBrTEFPGWebAPIOperacaoPinPad; var Cancelar: Boolean);
    procedure ACBrTEFD1PayGoWebAvaliarTransacaoPendente(var Status: Cardinal; const Mensagem: string; Resp: TACBrTEFDResp);
    procedure ACBrTEFD1PayGoWebExibeMensagem(Mensagem: string; Terminal: TACBrTEFPGWebAPITerminalMensagem; MilissegundosExibicao: Integer);
    procedure ACBrTEFD1PayGoWebExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var Cancelado: Boolean);
    procedure ACBrTEFD1PayGoWebObtemCampo(DefinicaoCampo: TACBrTEFPGWebAPIDefinicaoCampo; var Resposta: string; var Validado, Cancelado: Boolean);
    procedure ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer; Operacao: TACBrTEFDCliSiTefOperacaoCampo;
      var Resposta: AnsiString; var Digitado, VoltarMenu: Boolean);
    procedure btnConfirmaCPFClick(Sender: TObject);
    procedure btnCancelaCPFClick(Sender: TObject);
    procedure GridFormaPagamentoDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btLimparImpressoraClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cbEnviarImpressoraClick(Sender: TObject);
    procedure btTestarTEFClick(Sender: TObject);
    procedure btTestarPosPrinterClick(Sender: TObject);
    procedure btTestarPinPadClick(Sender: TObject);
    procedure btSalvarParametrosClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure tiOperadoraTEFClick(Sender: TdxTileControlItem);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnProcurarImpressoraClick(Sender: TObject);
    procedure cbxGPChange(Sender: TObject);
    procedure btnSerialClick(Sender: TObject);
    procedure tcIdentifcaCPFClick(Sender: TdxTileControlItem);
    procedure tiOperacaoClick(Sender: TdxTileControlItem);
    procedure tiDescontoClick(Sender: TdxTileControlItem);
    procedure tiAcrescimoClick(Sender: TdxTileControlItem);
    procedure btnConfirmaAcrescimoClick(Sender: TObject);
    procedure edtPercAcrescimoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtValorAcrescimoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtValorDescontoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtPercDescontoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure tiCancelarClick(Sender: TdxTileControlItem);
    procedure cxGrid1DBTableView1ACEITA_NO_CAIXA_ATUALPropertiesEditValueChanged(
      Sender: TObject);
    function ListaTipoPagamentoIni(ACodNFeTipoDePagamento: String): String;
    procedure tiEstornarClick(Sender: TdxTileControlItem);
    procedure BitBtn1Click(Sender: TObject);
    procedure ACBrTEFD1AntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
    procedure Venda_Financeiro_TefAfterOpen(DataSet: TDataSet);
    procedure Venda_Financeiro_TefAfterPost(DataSet: TDataSet);
    procedure ccbTiposNotaFiscalPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
    procedure tiNF_PDVClick(Sender: TdxTileControlItem);
    procedure EmitirNotaFiscalTile(Sender: TdxTileControlItem);
    procedure CarregarPropriedadesBotaoNotaFiscal(AItem: TdxTileControlItem);
    procedure GridTransacoesTefDBTableView1BtnReimprimirPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridTransacoesTefDBTableView1BtnCancelarPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure tiCaixaClick(Sender: TdxTileControlItem);
    procedure AtualizaTileCaixa;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure WREventosCadastroImpressaoBeforePrint(Sender: TObject;
      var APermiteImprimir: Boolean);
    procedure ACBrPosPrinter1ACBrDeviceStatus(Sender: TObject;
      Reason: THookSerialReason; const Value: string);
    procedure ACBrPosPrinter1ACBrDeviceHookAtivar(const APort: string;
      Params: string);
    procedure ACBrPosPrinter1ACBrDeviceHookDesativar(const APort: string);
    procedure ACBrPosPrinter1ACBrDeviceHookEnviaString(const cmd: AnsiString);
    procedure ACBrPosPrinter1ACBrDeviceHookLeString(const NumBytes,
      ATimeOut: Integer; var Retorno: AnsiString);
    procedure btnConfirmaDescontoClick(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);

  private
    FControleWR: TControleWR;

    FFrmDesconto :TPanelForm;
    FFrmAcrescimo :TPanelForm;

    FVenda: TVenda;
    FTipoBotaoOperacao: TTipoBotaoOperacao;
    FCanceladoPeloOperador: Boolean;
    FTempoDeEspera: TDateTime;
    FTestePayGo: Integer;
    FIndicePagto: String;
    FQRCode: Integer;
    FGP: Integer;
    FCodConta: Integer;
    FDtAberturaCaixa: TDateTime;
    FModo: String;
    function GetNomeArquivoVenda: String;
    function GetStatusVenda: TStatusVenda;
    procedure SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);
    procedure SetStatusVenda(AValue: TStatusVenda; Afuncao: String = '');

    procedure TratarException(Sender: TObject; E: Exception);
    // procedure AdicionarPagamentoOld(const Indice: String; AValor: Double);
    procedure SetCodConta(const Value: Integer);
    procedure ClickTipoPagto(Sender: TdxTileControlItem);
    function IntToTipoPagto(ATag: Integer): String;
    procedure InsereParcelaCartaoNoBanco(AUltResp: TACBrTEFResp; AValor: Double;
      AVencto: TDateTime; ATipoPagamentoSelecionada: String; ACodPK: Integer);
    procedure SincronizaRespostaComBancoDeDados(AResp: TACBrTEFResp; AStatus: string);
    procedure CarregaTiposPagtoNoTileControl;
    procedure CarregaTiposNotaNoCheckComboBox;
    procedure CarregaInterfaceConfiguracaoImpressao;
    procedure CancelaTransacaoNoBancoQuery(AResp: TACBrTEFDResp; AMsg, AComprovante: string);
    procedure ConfirmaCPF;
    procedure InteracaoTEF(Afuncao: String);
    procedure AdicionaFuncionarioValidate;
    procedure IdentificaCPF;
    procedure ConfirmaAcrescimo;
    procedure ConfirmaDesconto;
    procedure OperacaoTEFS;
    procedure AdicionarPagamentoCrediario(const Indice: String; AValor: Double;
      ATEF, ATipoPagamentoSelecionada: String; AIncDiaVencto: Integer);

  protected
    procedure LerConfiguracao;
    procedure GravarConfiguracao(CodConta: Integer);

    procedure IrParaOperacaoTEF;
    procedure IrParaConfiguracao;
    procedure irEscolhaCaixa;

    procedure AtivarTEF;
    procedure ConfigurarPosPrinter;
    procedure AtivarPosPrinter;
    procedure Ativar;
    procedure Desativar;

    procedure IniciarOperacao;
    procedure AdicionarPagamento(const Indice: String; AValor: Double; ATEF, ATipoPagamentoSelecionada: String);
    procedure ExcluirPagamento(IndicePagto: Integer);
    function AcharTransacaoTEFPendente(IndicePagto: Integer): TACBrTEFResp;
    procedure CancelarVenda;
    procedure FinalizarVenda(UltResp: TACBrTEFResp); // Em caso de Venda, Gere e transmita seu Documento Fiscal
    procedure VerificarTestePayGo;

    procedure AtualizarCaixaLivreNaInterface;
    procedure AtualizarVendaNaInterface;
    procedure AtualizarTotaisVendaNaInterface;
    procedure AtualizarPagamentosVendaNaInterface;
    procedure MensagemTEF(const MsgOperador, MsgCliente: String);
    procedure LimparMensagensTEF;
    procedure ExibirPainelQRCode;
    procedure OcultatPainelQRCode;

    procedure AdicionarLinhaLog(AMensagem: String);
    procedure AdicionarLinhaImpressao(ALinha: String);



  public
    { Public declarations }

    FCNPJCPF: String;
    FImprimiuNaoFiscal: Boolean;
    FWREventosCadastro: TWREventosCadastro;
    property NomeArquivoVenda: String
      read GetNomeArquivoVenda;

    property TipoBotaoOperacao: TTipoBotaoOperacao
      read FTipoBotaoOperacao
      write SetTipoBotaoOperacao;
    property Venda: TVenda
      read FVenda;
    property CodConta: Integer
      read FCodConta
      write SetCodConta;
    property Modo: String
      read FModo
      write FModo;
    procedure AchaBotaoConfirma;
    procedure AchaBotaoAltera;
    function AchaDataSetCadastro: TFDQuery;
    function AchaDataSetVenda_Financeiro: TFDQuery;
    function AchaUCHist_DataSet : TUCHist_DataSet;
    function AchouedtResponsavelÎPessoas : TcxDBButtonEdit;
    procedure AchaouExcluirparcelasPDVPagamentos;
    procedure AchouCancelarNFeInconsistentePDV;
    Function AchouWRCalc : TWRCalculaConfiguracoes;
    procedure AchoubtnCancelar;
    procedure AchouEmiteNFeTEF;
    procedure AchouEmiteNFCeTEF;
    procedure AchouEmiteNFSeTEF;
    procedure AchoubtnFaturamento;
    procedure AchoubtnCancela_Faturamento;

    procedure umSelecionePagamento(var Message: TMessage); message UM_SELECIONEPAGAMENTO;
    procedure AjustaParcelas;
    procedure SelecionaFormaDePagamento(AKey: Word);
    class function ProcuraVendaEmPagamento(ACodConta: Integer): String;
    class function ProcuraVendaComOperacaoTEF(ACodConta: Integer): String;
    class procedure Abrir(var AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrmCadM; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
      ACodConta, AQuantCaixas: Integer);
    class procedure AbrirFrame(var AFrmPDV_Pagamento: TFrmPDV_Pagamento;
      AParent: TFrame; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
      ACodConta, AQuantCaixas: Integer; AWREventosCadastro: TWREventosCadastro);
    class procedure AbrirConfiguracao(var AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrame; AConta: Integer);
    class function VerificaCodVendaIni(AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrmCadM; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
      ACodConta: Integer): String;
    class function ProcuraVendaInativaComOperacaoTEFConfirmada: String;
  end;

  function ProcuraVendaComOperacaoPagamento(AChaveVenda, ACodConta:String): String;

var
  FrmPDV_Pagamento: TFrmPDV_Pagamento;
  FOperacao: String;

implementation

uses
  wrfuncoes, wrForms, Classes.WR, frMenuTEF, frObtemCampo, frExibeMensagem, ACBrDelphiZXingQRCode, Principal,
  Financeiro_Contas_Escolha, configuraserial, PDV_Pagamento_Incluir, frFrameHistorico, AguardeConsulta, Frame_ConVenda_Mestre,
  Frame_CadVenda_Mestre, Frame_CadVenda_Venda, Base, Tag.Form;

{$R *.dfm}

function ProcuraVendaComOperacaoPagamento(AChaveVenda, ACodConta:String): String;
Var
  QuerX: TFDQuery;
begin
  Result:='';
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select V.CODIGO from venda v where (v.OPERACAO = ''EM PAGAMENTO'')and'+   //(v.TEM_OPERACAO_TEF = ''S'')and'+
                                                          '(V.CODCONTA_PDV = '''+ACodConta+''')';
    QuerX.Open;
    if QuerX.RecordCount > 0 then
      if QuerX.FieldByName('CODIGO').AsString <> AChaveVenda then
        Result:=QuerX.FieldByName('CODIGO').AsString;
  finally
    QuerX.Free;
  end;
end;

class procedure TFrmPDV_Pagamento.Abrir(var AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrmCadM; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
  ACodConta, AQuantCaixas: Integer);
Var
  I: Integer;
  ACodVendaComTEF, AImpressoraAtiva: string;
  ATemTipoPagamento: Boolean;
  AFormCriado: Boolean;
begin
  if Not Assigned(AFrmPDV_Pagamento) then
  begin
    AFrmPDV_Pagamento := TFrmPDV_Pagamento.Create(AParent);
    AFormCriado := True;
  end else
  begin
    AFormCriado := False;
  end;

  with AFrmPDV_Pagamento do
  begin
    FModo := 'Caixa';
    try
      DS.DataSet := ADataSource.DataSet;
      DS_Financeiro.DataSet := ADSFinanceiro.DataSet;
    except
      On E: Exception do
      begin
        WRLog(E.Message);
        ShowMessage(E.Message);
      end;
    end;

    if AQuantCaixas > 1 then
      dxTileControl3.Enabled := True
    else
      dxTileControl3.Enabled := False;

//    Venda_Financeiro_Tef.Transaction := TFrmVenda(AFrmPDV_Pagamento.Owner).TransaFD;
    // DS.DataSet.Open; // Erro sempre vai ter venda
    // DS_Financeiro.DataSet.Open;
    //
    // Aqui executa o LerConfiguracoes, onde tem acesso ao Ini
    CodConta := ACodConta; // Isso aqui sempre deve ser enviado, se não não deveria estar aqui
    AtualizaTileCaixa;
    if AFormCriado then
    begin
      AImpressoraAtiva := 'N';
      while AImpressoraAtiva <> 'S' do
      begin
        try
          AtivarPosPrinter;
          AdicionarLinhaImpressao('=============OPERACAO TEF=============');
          AImpressoraAtiva := 'S';
          WRLog('Ativou PosPrinter');
        except
          On E: Exception do
          begin
            TratarException(nil, E);
            WRLog('NÃO Ativou PosPrinter' + E.Message);
            ShowMessage('Não foi possivel comunicar com a impressora, verifique se a mesma está ligada (' + E.Message + ')');
          end;
        end;
        if AImpressoraAtiva <> 'S' then
        begin
           if ShowMessageWR('Deseja Tentar Novamente?', MB_ICONQUESTION) = mrYes then
             AImpressoraAtiva := 'N'
           else
             Abort;
        end;
      end;
    end;
    // Aqui testa se tem algum tipo de pagamento disponível de acordo com o visible
    // calculado no ler configurações
    ATemTipoPagamento := False;
    for I := 0 to tcMenuPagamento.Items.Count - 1 do
    begin
      if (tcMenuPagamento.Items[I].Visible) and (tcMenuPagamento.Items[I].Name <> 'tcCrediario') then
        ATemTipoPagamento := True;

    end;

    if not ATemTipoPagamento then
    begin
      ShowMessage('Não existe nenhum Tipo de Pagamento configurado no caixa ' + VarToStr(CodConta) + '.');
    end;

    /// Aqui inicia a configuração do componente da venda.
    FVenda := TVenda.Create(NomeArquivoVenda);

//    Se chegar aqui e estiver em  transação tef, CANCELAR TUDO PORQUE DEU ERRO


    Venda.CodVenda := DS.DataSet.FieldByName('CODIGO').AsString;
    Venda.DHInicio := DS.DataSet.FieldByName('DT_EMISSAO').AsDateTime;
    Venda.TotalAcrescimo := DS.DataSet.FieldByName('VOUTRO').AsFloat;
    Venda.TotalDesconto := DS.DataSet.FieldByName('VDESC').AsFloat;
    Venda.ValorInicial := DS.DataSet.FieldByName('SUB_TOTAL').AsFloat;
    lblQtdItens.Caption := FloatToStr(DS.DataSet.FieldByName('QUANTIDADE').AsInteger);

    pnlOperacao.Visible := True;

    // Aqui deve ter as parcelas ja pagas!!!!!

    /// Aqui passa todas as parcelas da venda para o componente.
    Venda.Pagamentos.Clear;
    I := 0;
    DS_Financeiro.DataSet.First;
    While Not DS_Financeiro.DataSet.eof do
    begin
      Venda.Pagamentos.New;
      Venda.Pagamentos[I].NSU := DS_Financeiro.DataSet.FieldByName('NSU').AsString;
      Venda.Pagamentos[I].TipoPagamento := DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString;
      Venda.Pagamentos[I].TipoPagamentoExtenso := DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString;
      Venda.Pagamentos[I].Rede := DS_Financeiro.DataSet.FieldByName('REDE').AsString;
      Venda.Pagamentos[I].RedeCNPJ := DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString;
      Venda.Pagamentos[I].ValorPago := DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat;

      if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
        Venda.Pagamentos[I].Confirmada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Confirmada']);

      if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
        Venda.Pagamentos[I].Cancelada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Cancelada']);

      DS_Financeiro.DataSet.Next;
      Inc(I);
    end;

    //CASO NAO ENCONTRE NADA NA PARCELA POR ALGUM MOTIVO ELE VAI VERIFICAR NA OUTRA TABELA
    if Venda.Pagamentos.Count = 0 then
    begin
      if Venda_Financeiro_Tef.RecordCount > 0 then
      begin
        Venda_Financeiro_Tef.First;
        While Not Venda_Financeiro_Tef.eof do
        begin
          Venda.Pagamentos.New;
          Venda.Pagamentos[I].NSU := Venda_Financeiro_Tef.FieldByName('NSU').AsString;
          Venda.Pagamentos[I].TipoPagamento := Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_EXTENSO').AsString;
          Venda.Pagamentos[I].TipoPagamentoExtenso := Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_EXTENSO').AsString;
          Venda.Pagamentos[I].Rede := Venda_Financeiro_Tef.FieldByName('REDE').AsString;
          Venda.Pagamentos[I].RedeCNPJ := Venda_Financeiro_Tef.FieldByName('CNPJ_CREDENCIADORA').AsString;
          Venda.Pagamentos[I].ValorPago := Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat;

          if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
            Venda.Pagamentos[I].Confirmada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Confirmada']);

          if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
            Venda.Pagamentos[I].Cancelada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Cancelada']);

          Venda_Financeiro_Tef.Next;
          Inc(I);
        end;
      end;
    end;


    //Aqui é o segredo
    // Se colocar Venda.Status := Operacao aqui não chama o evento.
    WRLog('Chamou o Evento SetStatusVenda; Rotina: Abrir; ' + ' Usuario: '+ usuario.Nome);
    SetStatusVenda(StatusVendaStrToEnum(DS.DataSet.FieldByName('OPERACAO').AsString));

    PreencheLookUpFuncionariosVendaFinanceiro(cxbFuncionario.Properties);
    PreencheLookUpFuncionariosVendaFinanceiro(cxbFuncionarioCliente.Properties);
    AtualizarTotaisVendaNaInterface;
    AtualizarVendaNaInterface;  // Aqui atualiza as parcelas Confirmadas e Canceladas

{$REGION 'Comentado, onde fazia a confirmaçao ou cancelamento automatico do TEF'}
          {
        /// Aqui faz o tratamento das parcelas pendentes de acordo com a opção selecionada.
            // 0 - não fazer nada | 1 - processar | 2 - cancelar/estornar
            for I := 0 to Venda.Pagamentos.Count - 1 do
            begin
              if  (Venda.Pagamentos[I].Confirmada = False)
              and (Venda.Pagamentos[I].Cancelada = False)
              and (Venda.Pagamentos[I].NSU <> '') then
              begin
                if  (DS.DataSet.FieldByName('OPERACAO').AsString = 'EM PAGAMENTO')
                and (cbxTransacaoPendenteInicializacao.ItemIndex = 1) then
                begin
                  ShowMessage('As operações pendentes nesta venda serão autorizadas.');
                  Venda.Status := stsLivre;
                  Ativar;
                  Venda.Status := stsEmPagamento;

                  SetStatusVenda(stsInativo,'TemOperacaoTefS');

                end
                else  // Deve garantir que a venda vai ser excluida e as parcelas canceladas.
                if (MatchStr(DS.DataSet.FieldByName('OPERACAO').AsString, ['TRANSACAO TEF']))
                or (cbxTransacaoPendenteInicializacao.ItemIndex = 2) then
                begin
                  ShowMessage('As Parcelas pendentes serão estornadas.');
        //          CancelarVenda;
                  WRLog('Vai estornar as parcelas, tiEstornar.Click');
                  tiEstornar.Click;
                  Ativar;
                end
                else // Quer dizer que alguem invadiu a venda, deve apenas não deixar entrar, sem cancelar.
                if (MatchStr(DS.DataSet.FieldByName('OPERACAO').AsString, ['OPERAÇÃO TEF']))
                or (cbxTransacaoPendenteInicializacao.ItemIndex = 2) then
                begin
                  ShowMessage('As operações pendentes nesta venda serão canceladas.');
                  Venda.Status := stsEmPagamento;
                  Ativar;

                  SetStatusVenda(stsInativo,'TemOperacaoTefS');
                end;
              end;
            end;
      }
{$ENDREGION}

    PopupMode := pmAuto;

    if not (Venda.TotalPago >= Venda.TotalVenda) then
      PostMessage(Handle, UM_SELECIONEPAGAMENTO, AKey, 0);

    ShowModal;
    WRLog('Vai abrir o PDV para o usuario ShowModal');
  end;
end;

class procedure TFrmPDV_Pagamento.AbrirFrame(var AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrame; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
  ACodConta, AQuantCaixas: Integer; AWREventosCadastro: TWREventosCadastro);
Var
  I: Integer;
  ACodVendaComTEF, AImpressoraAtiva: string;
  ATemTipoPagamento: Boolean;
  AFormCriado: Boolean;
begin

  if Not Assigned(AFrmPDV_Pagamento) then
  begin
    AFrmPDV_Pagamento := TFrmPDV_Pagamento.Create(AParent);
    AFrmPDV_Pagamento.FWREventosCadastro := AWREventosCadastro;
    AFormCriado := True;
  end else
  begin
    AFormCriado := False;
  end;

  with AFrmPDV_Pagamento do
  begin
    FModo := 'Caixa';
    try
      DS.DataSet := ADataSource.DataSet;
      DS_Financeiro.DataSet := ADSFinanceiro.DataSet;
    except
      On E: Exception do
      begin
        WRLog(E.Message);
        ShowMessage(E.Message);
      end;
    end;

    if AQuantCaixas > 1 then
      dxTileControl3.Enabled := True
    else
      dxTileControl3.Enabled := False;

//    Venda_Financeiro_Tef.Transaction := TFrmVenda(AFrmPDV_Pagamento.Owner).TransaFD;
    // DS.DataSet.Open; // Erro sempre vai ter venda
    // DS_Financeiro.DataSet.Open;
    //
    // Aqui executa o LerConfiguracoes, onde tem acesso ao Ini
    CodConta := ACodConta; // Isso aqui sempre deve ser enviado, se não não deveria estar aqui
    AtualizaTileCaixa;
    if AFormCriado then
    begin
      AImpressoraAtiva := 'N';
      while AImpressoraAtiva <> 'S' do
      begin
        try
          AtivarPosPrinter;
          AdicionarLinhaImpressao('=============OPERACAO TEF=============');
          AImpressoraAtiva := 'S';
          WRLog('Ativou PosPrinter');
        except
          On E: Exception do
          begin
            TratarException(nil, E);
            WRLog('NÃO Ativou PosPrinter' + E.Message);
            ShowMessage('Não foi possivel comunicar com a impressora, verifique se a mesma está ligada (' + E.Message + ')');
          end;
        end;
        if AImpressoraAtiva <> 'S' then
        begin
           if ShowMessageWR('Deseja Tentar Novamente?', MB_ICONQUESTION) = mrYes then
             AImpressoraAtiva := 'N'
           else
            Continue;
        end;
      end;
    end;
    // Aqui testa se tem algum tipo de pagamento disponível de acordo com o visible
    // calculado no ler configurações
    ATemTipoPagamento := False;
    for I := 0 to tcMenuPagamento.Items.Count - 1 do
    begin
      if (tcMenuPagamento.Items[I].Visible) and (tcMenuPagamento.Items[I].Name <> 'tcCrediario') then
        ATemTipoPagamento := True;
    end;

    if not ATemTipoPagamento then
    begin
      ShowMessage('Não existe nenhum Tipo de Pagamento configurado no caixa ' + VarToStr(CodConta) + '.');
    end;

    /// Aqui inicia a configuração do componente da venda.
    FVenda := TVenda.Create(NomeArquivoVenda);


//    Se chegar aqui e estiver em  transação tef, CANCELAR TUDO PORQUE DEU ERRO


    Venda.CodVenda := DS.DataSet.FieldByName('CODIGO').AsString;
    Venda.DHInicio := DS.DataSet.FieldByName('DT_EMISSAO').AsDateTime;
    Venda.TotalAcrescimo := DS.DataSet.FieldByName('VOUTRO').AsFloat;
    Venda.TotalDesconto := DS.DataSet.FieldByName('VDESC').AsFloat;
    Venda.ValorInicial := DS.DataSet.FieldByName('SUB_TOTAL').AsFloat;
    lblQtdItens.Caption := FloatToStr(DS.DataSet.FieldByName('QUANTIDADE').AsInteger);

    pnlOperacao.Visible := True;

    // Aqui deve ter as parcelas ja pagas!!!!!

    /// Aqui passa todas as parcelas da venda para o componente.
    Venda.Pagamentos.Clear;
    I := 0;
    DS_Financeiro.DataSet.First;
    While Not DS_Financeiro.DataSet.eof do
    begin
      Venda.Pagamentos.New;
      Venda.Pagamentos[I].NSU := DS_Financeiro.DataSet.FieldByName('NSU').AsString;
      Venda.Pagamentos[I].TipoPagamento := DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString;
      Venda.Pagamentos[I].TipoPagamentoExtenso := DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString;
      Venda.Pagamentos[I].Rede := DS_Financeiro.DataSet.FieldByName('REDE').AsString;
      Venda.Pagamentos[I].RedeCNPJ := DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString;
      Venda.Pagamentos[I].ValorPago := DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat;

      if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
        Venda.Pagamentos[I].Confirmada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Confirmada']);

      if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
        Venda.Pagamentos[I].Cancelada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Cancelada']);

      DS_Financeiro.DataSet.Next;
      Inc(I);
    end;

    //CASO NAO ENCONTRE NADA NA PARCELA POR ALGUM MOTIVO ELE VAI VERIFICAR NA OUTRA TABELA
    if Venda.Pagamentos.Count = 0 then
    begin
      if Venda_Financeiro_Tef.RecordCount > 0 then
      begin
        Venda_Financeiro_Tef.First;
        While Not Venda_Financeiro_Tef.eof do
        begin
          Venda.Pagamentos.New;
          Venda.Pagamentos[I].NSU := Venda_Financeiro_Tef.FieldByName('NSU').AsString;
          Venda.Pagamentos[I].TipoPagamento := Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_EXTENSO').AsString;
          Venda.Pagamentos[I].TipoPagamentoExtenso := Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_EXTENSO').AsString;
          Venda.Pagamentos[I].Rede := Venda_Financeiro_Tef.FieldByName('REDE').AsString;
          Venda.Pagamentos[I].RedeCNPJ := Venda_Financeiro_Tef.FieldByName('CNPJ_CREDENCIADORA').AsString;
          Venda.Pagamentos[I].ValorPago := Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat;

          if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
            Venda.Pagamentos[I].Confirmada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Confirmada']);

          if Venda_Financeiro_Tef.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
            Venda.Pagamentos[I].Cancelada := MatchStr(Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString, ['Cancelada']);

          Venda_Financeiro_Tef.Next;
          Inc(I);
        end;
      end;
    end;


    //Aqui é o segredo
    // Se colocar Venda.Status := Operacao aqui não chama o evento.
    WRLog('Chamou o Evento SetStatusVenda; Rotina: Abrir; ' + ' Usuario: '+ usuario.Nome);
    SetStatusVenda(StatusVendaStrToEnum(DS.DataSet.FieldByName('OPERACAO').AsString));

    PreencheLookUpFuncionariosVendaFinanceiro(cxbFuncionario.Properties);
    PreencheLookUpFuncionariosVendaFinanceiro(cxbFuncionarioCliente.Properties);
    AtualizarTotaisVendaNaInterface;
    AtualizarVendaNaInterface;  // Aqui atualiza as parcelas Confirmadas e Canceladas

{$REGION 'Comentado, onde fazia a confirmaçao ou cancelamento automatico do TEF'}
          {
        /// Aqui faz o tratamento das parcelas pendentes de acordo com a opção selecionada.
            // 0 - não fazer nada | 1 - processar | 2 - cancelar/estornar
            for I := 0 to Venda.Pagamentos.Count - 1 do
            begin
              if  (Venda.Pagamentos[I].Confirmada = False)
              and (Venda.Pagamentos[I].Cancelada = False)
              and (Venda.Pagamentos[I].NSU <> '') then
              begin
                if  (DS.DataSet.FieldByName('OPERACAO').AsString = 'EM PAGAMENTO')
                and (cbxTransacaoPendenteInicializacao.ItemIndex = 1) then
                begin
                  ShowMessage('As operações pendentes nesta venda serão autorizadas.');
                  Venda.Status := stsLivre;
                  Ativar;
                  Venda.Status := stsEmPagamento;

                  SetStatusVenda(stsInativo,'TemOperacaoTefS');

                end
                else  // Deve garantir que a venda vai ser excluida e as parcelas canceladas.
                if (MatchStr(DS.DataSet.FieldByName('OPERACAO').AsString, ['TRANSACAO TEF']))
                or (cbxTransacaoPendenteInicializacao.ItemIndex = 2) then
                begin
                  ShowMessage('As Parcelas pendentes serão estornadas.');
        //          CancelarVenda;
                  WRLog('Vai estornar as parcelas, tiEstornar.Click');
                  tiEstornar.Click;
                  Ativar;
                end
                else // Quer dizer que alguem invadiu a venda, deve apenas não deixar entrar, sem cancelar.
                if (MatchStr(DS.DataSet.FieldByName('OPERACAO').AsString, ['OPERAÇÃO TEF']))
                or (cbxTransacaoPendenteInicializacao.ItemIndex = 2) then
                begin
                  ShowMessage('As operações pendentes nesta venda serão canceladas.');
                  Venda.Status := stsEmPagamento;
                  Ativar;

                  SetStatusVenda(stsInativo,'TemOperacaoTefS');
                end;
              end;
            end;
      }
{$ENDREGION}

    PopupMode := pmAuto;

    if not (Venda.TotalPago >= Venda.TotalVenda) then
      PostMessage(Handle, UM_SELECIONEPAGAMENTO, AKey, 0);

    ShowModal;
    WRLog('Vai abrir o PDV para o usuario ShowModal');
  end;
end;

procedure TFrmPDV_Pagamento.OperacaoTEFS;
begin
  if DS.DataSet.FieldByName('TEM_OPERACAO_TEF').AsString <> 'S' then
  begin
    AchaBotaoAltera;
    AchaDataSetCadastro.FieldByName('TEM_OPERACAO_TEF').AsString := 'S';
    AchaBotaoConfirma;
    TFrameHistorico.AdicionaHistorico(nil,
      AchaUCHist_DataSet,
      'Identificou Operacoes pendentes que seram atuorizadas e a venda entrou em Operacao TEF');
    WRLog('COMMIT!(btnConfirmar.Click), Colocou TEM_OPERACAO_TEF para :S pois a venda tem operações pendentes que seram atuorizadas');
  end;
end;

class procedure TFrmPDV_Pagamento.AbrirConfiguracao(var AFrmPDV_Pagamento: TFrmPDV_Pagamento; AParent: TFrame; AConta: Integer);
Var
//  AConta: Integer;
  ACodVendaComTEF: string;
  AFormCriado: Boolean;
begin
  // Aqui deve selecionar o Primeiro caixa
//  AConta := TFrmFinanceiro_Contas_Escolha.SelecionarContaCaixa;
  if (AConta = 0) and not(usuario.Privilegiado) then
  begin
    ShowMessage('Este usuário não é dono de nenhum caixa, não é possível abrir a configuração do TEF. Entre com o usuário responsável pela máquina.');
    Exit;
  end;

  ACodVendaComTEF := ProcuraVendaEmPagamento(AConta);

  if  (ACodVendaComTEF <> '') then
  begin
    ShowMessage('A venda ' + ACodVendaComTEF + ' está em Recebimento ou em Operação TEF.' + sLineBreak +
                'Não é possível abrir a configuração.');
//    CadastroMidChildChave(TFrmVenda, ACodVendaComTEF);
    Exit;
  end;

  // Aqui testa se existe venda com Operação ou Transação TEF.
  ACodVendaComTEF := ProcuraVendaComOperacaoTEF(AConta);

  if  (ACodVendaComTEF <> '') then
  begin
    ShowMessage('Resolva o Recebimento na Venda ' + ACodVendaComTEF + '.');
//    CadastroMidChildChave(TFrmVenda, ACodVendaComTEF);
    CadastroTag_NormalChave(FrmPrincipal, Tag_Venda, ACodVendaComTEF);
    Exit;
  end;


  if Not Assigned(AFrmPDV_Pagamento) then
  begin
    AFrmPDV_Pagamento := TFrmPDV_Pagamento.Create(AParent);
    AFormCriado := True;
  end else
  begin
    AFormCriado := False;
  end;

  try
    with AFrmPDV_Pagamento do
    begin
      FModo := 'Configuração';
      pnlOperacao.Visible := False;
      PopupMode := pmAuto;
      CodConta := AConta;
      dxLayoutGroup14.TabbedOptions.HideTabs := True;
      IrParaConfiguracao;
      FVenda := TVenda.Create(NomeArquivoVenda);
//      FVenda.Ler;
      AFrmPDV_Pagamento.ShowModal;
    end;
  finally
//    AFrmPDV_Pagamento.Free;
  end;
end;

class function TFrmPDV_Pagamento.ProcuraVendaComOperacaoTEF(ACodConta: Integer): String;
var
  QuerX: TFDQuery;
begin
  Result := '';
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT V.OPERACAO, V.CODCONTA_PDV, V.CODIGO FROM VENDA V';
    QuerX.Open;

    if QuerX.Locate('OPERACAO;CODCONTA_PDV', VarArrayOf(['OPERAÇÃO TEF', ACodConta]), []) then
      Result := QuerX.FieldByName('CODIGO').AsString;
  finally
    QuerX.Free;
  end;
end;

class function TFrmPDV_Pagamento.ProcuraVendaEmPagamento(ACodConta: Integer): String;
var
  QuerX: TFDQuery;
begin
  Result := '';
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT V.OPERACAO, V.CODCONTA_PDV, V.CODIGO FROM VENDA V';
    QuerX.Open;

    if QuerX.Locate('OPERACAO;CODCONTA_PDV', VarArrayOf(['EM PAGAMENTO', ACodConta]), []) then
      Result := QuerX.FieldByName('CODIGO').AsString;
  finally
    QuerX.Free;
  end;
end;

class function TFrmPDV_Pagamento.ProcuraVendaInativaComOperacaoTEFConfirmada: String;
var
  QuerX: TFDQuery;
begin
  Result := '';
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT VFT.CODVENDA FROM VENDA_FINANCEIRO_TEF VFT ' +
                      'LEFT JOIN VENDA V ON VFT.CODVENDA = V.CODIGO ' +
                      'WHERE V.ATIVO = ''N'' AND VFT.TEF_STATUS <> ''Cancelada''';
    QuerX.Open;

    Result := QuerX.FieldByName('CODVENDA').AsString;
  finally
    QuerX.Free;
  end;
end;

/// Aqui faz a correção das parcelas, pois só pode entrar se estiver nesta conta.
procedure TFrmPDV_Pagamento.AjustaParcelas;
var
  QuerX, QuerFinanceiro: TFDQuery;

begin
  /// Aqui faz a conferência de cada parcela já passada anteriormente
  QuerX := GeraFDQuery(TFrame_Venda_Mestre(Owner).TransaFD);
  QuerFinanceiro := GeraFDQuery(TFrame_Venda_Mestre(Owner).TransaFD);
  try
//    QuerFinanceiro.SQL.Text :=  'select * from VENDA_FINANCEIRO VF WHERE VF.CODVENDA = :codvenda';
//    QuerFinanceiro.ParamByName('codvenda').AsString  := Venda.CodVenda;
//    QuerFinanceiro.Open;
//    while not QuerFinanceiro.Eof do
//    begin
//
//    end;

    QuerX.SQL.Text := 'UPDATE VENDA_FINANCEIRO VF SET VF.CODCONTA = :codconta ' +
                      'WHERE VF.CODVENDA = :codvenda';
    QuerX.ParamByName('codconta').AsInteger := FCodConta;
    QuerX.ParamByName('codvenda').AsString  := Venda.CodVenda;
    QuerX.ExecSQL;

  finally
    QuerX.Free;
  end;
//  DS_Financeiro.DataSet.First;
//  while not DS_Financeiro.DataSet.eof do
//  begin
//
//    /// Se caiu aqui a conta está errada e precisa corrigir;
//    if DS_Financeiro.DataSet.FieldByName('CODCONTA').AsInteger <> FCodConta then
//    begin
//      if not (DS_Financeiro.DataSet.State in dsEditModes)then
//        TFrmVenda(Owner).btnAlterar.Click;
//
//      DS_Financeiro.DataSet.FieldByName('CODCONTA').AsInteger := FCodConta;
//    end;
//
//    /// Verifica se a data de pagamento é menor que a data de abertura do caixa.
//    if DS_Financeiro.DataSet.FieldByName('DATAPAGTO').AsDateTime < FDtAberturaCaixa then
//    begin
//      if not (DS_Financeiro.DataSet.State in dsEditModes)then
//        TFrmVenda(Owner).btnAlterar.Click;
//
//      DS_Financeiro.DataSet.FieldByName('DATAPAGTO').AsDateTime := DataHoraSys;
//    end;
//
//    if DS_Financeiro.DataSet.state = dsEdit then
//      DS_Financeiro.DataSet.Post;
//
//    DS_Financeiro.DataSet.Next;
//  end;
end;

procedure TFrmPDV_Pagamento.cbEnviarImpressoraClick(Sender: TObject);
begin
  btImprimir.Enabled := ACBrPosPrinter1.Ativo and (not cbEnviarImpressora.Checked);
end;

procedure TFrmPDV_Pagamento.cbxCondicaoPagtoPropertiesEditValueChanged(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select PARCELAS, INTERVALO, INTERVALO_MENSAL from CONDICAOPAGTO where CODIGO = ' + vartostr(cbxCondicaoPagto.EditValue);
    QuerX.Open;
    edtParcela.Text := QuerX.FieldByName('PARCELAS').AsString;
    edtIntervalo.Text := QuerX.FieldByName('INTERVALO').AsString;
    chkIntervalo_Mensal.Checked := QuerX.FieldByName('INTERVALO_MENSAL').AsString = 'S';
  finally
    QuerX.Free;
  end;
end;

procedure TFrmPDV_Pagamento.cbxGPChange(Sender: TObject);
begin
  liCodPinPad.Visible := cbxGP.Text = 'gpCliSiTef';
end;

procedure TFrmPDV_Pagamento.ccbTiposNotaFiscalPropertiesClickCheck(
  Sender: TObject; ItemIndex: Integer; var AllowToggle: Boolean);
var
  Ini: TIniFile;
  ATipo: string;
begin
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(FCodConta) + '_Configuracao_PDV.ini');

  case ItemIndex of
    0: ATipo := 'NFe';
    1: ATipo := 'NFCe';
    2: ATipo := 'NFSe';
  end;

  try
    // if Unchecked
    if ccbTiposNotaFiscal.GetItemState(ItemIndex) = cbsUnchecked then
      Ini.WriteInteger(ATipo, 'Habilitado', 1)
    else
      Ini.WriteInteger(ATipo, 'Habilitado', 0);
  finally
    Ini.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ConfigurarPosPrinter;
begin
  AdicionarLinhaLog('- ConfigurarPosPrinter');
  ACBrPosPrinter1.Desativar;
  ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(cbxModeloPosPrinter.ItemIndex);
  ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(cbxPagCodigo.ItemIndex);
  ACBrPosPrinter1.Porta := cbxPorta.Text;
  ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
  ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
  ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
end;

procedure TFrmPDV_Pagamento.AdicionaFuncionarioValidate;
begin

end;

procedure TFrmPDV_Pagamento.cxGrid1DBTableView1ACEITA_NO_CAIXA_ATUALPropertiesEditValueChanged(
  Sender: TObject);
var
  Ini: TIniFile;
  ACodigo: String;
  ATemTipoPagamento: Boolean;
begin
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');
  try
    ATemTipoPagamento := False;
    Tipo_Pagamento_Configuracao.First;
    while not Tipo_Pagamento_Configuracao.eof do
    begin
      if Tipo_Pagamento_Configuracao.FieldByName('ACEITA_NO_CAIXA_ATUAL').AsString = 'S' 
      then
        Ini.WriteInteger('CodigoTipoDePagamento='+Tipo_Pagamento_Configuracao.FieldByName('CODNF_TIPO_PAGTO').AsString,
                         Tipo_Pagamento_Configuracao.FieldByName('DESCRICAO').AsString, 1)

      else if Ini.ReadInteger('CodigoTipoDePagamento='+Tipo_Pagamento_Configuracao.FieldByName('CODNF_TIPO_PAGTO').AsString,
                              Tipo_Pagamento_Configuracao.FieldByName('DESCRICAO').AsString, 0) = 1 
      then
        Ini.WriteInteger('CodigoTipoDePagamento='+Tipo_Pagamento_Configuracao.FieldByName('CODNF_TIPO_PAGTO').AsString,
                         Tipo_Pagamento_Configuracao.FieldByName('DESCRICAO').AsString, 0);

      // Aqui testa se ainda tem algum tipo de pagamento habilitado, senão ele apaga a seção.
      if Ini.ReadInteger('CodigoTipoDePagamento='+Tipo_Pagamento_Configuracao.FieldByName('CODNF_TIPO_PAGTO').AsString,
                              Tipo_Pagamento_Configuracao.FieldByName('DESCRICAO').AsString, 0) = 1
      then
        ATemTipoPagamento := True;

      Tipo_Pagamento_Configuracao.Next;
    end;

    if not ATemTipoPagamento then
      Ini.EraseSection('CodigoTipoDePagamento='+Tipo_Pagamento_Configuracao.FieldByName('CODNF_TIPO_PAGTO').AsString);
  finally
    Ini.Free;
  end;
end;

procedure TFrmPDV_Pagamento.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := $C0C0C0;
end;

procedure TFrmPDV_Pagamento.cxGrid1DBTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  AIsCartao: Boolean;
begin
  // AIsCartao := Condicao_Pagamento.FieldByName('IS_CARTAO').AsString = 'N';

  // btnGerarNFCe.Enabled := AIsCartao and (Empresa.FieldByName('EMITE_NFCE').AsString = 'S');

  LiParcelas.Enabled := AIsCartao;
  LiIntervalo.Enabled := AIsCartao;
  LiMes.Enabled := AIsCartao;

  // edtParcela.Text             := Condicao_Pagamento.FieldByName('PARCELAS').AsString;
  // edtIntervalo.Text           := Condicao_Pagamento.FieldByName('INTERVALO').AsString;
  // chkIntervalo_Mensal.Checked := Condicao_Pagamento.FieldByName('INTERVALO_MENSAL').AsString = 'S';
end;

procedure TFrmPDV_Pagamento.GridFormaPagamentoDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  // Default
  if AViewInfo.Focused or AViewInfo.Selected then
  begin
    ACanvas.Font.Color := clWindow;
    ACanvas.Brush.Color := clHotLight;
  end;
end;

procedure TFrmPDV_Pagamento.GridTransacoesTefDBTableView1BtnCancelarPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  I, AContador: Integer;
begin
  if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Cancelada' then
  begin
    ShowMessage('Não é possível cancelar uma operação que já esteja cancelada.');
    Exit;
  end;

  if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Confirmada' then
  begin
    if MessageDlg('Esta operação está Confirmada. '+ sLineBreak +
                  'Ao realizar o cancelamento, a OPERAÇÃO toda será CANCELADA.' + sLineBreak + sLineBreak +
                  'Deseja proceder com o cancelamento?'
                  , mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      CancelarVenda;
    end;
  end
  else
  if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Pendente' then
  begin
    if MessageDlg('Deseja cancelar esta operação TEF Pendente?' + sLineBreak +
                'Valor: R$' + FormatFloat('##,##0.00',Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat) + sLineBreak +
                'NSU: ' + Venda_Financeiro_Tef.FieldByName('NSU').AsString + sLineBreak +
                'Rede: ' + Venda_Financeiro_Tef.FieldByName('REDE').AsString + sLineBreak +
                'Data: ' + Venda_Financeiro_Tef.FieldByName('DT_ALTERACAO').AsString
                , mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for I := 0 to Venda.Pagamentos.Count - 1 do
      begin
        if Venda.Pagamentos[I].NSU = Venda_Financeiro_Tef.FieldByName('NSU').AsString then
        begin
          ExcluirPagamento(I);

          if not (DS.State in dsEditModes)then
            AchaBotaoAltera;

          while DS_Financeiro.Dataset.Locate('NSU', Venda_Financeiro_Tef.FieldByName('NSU').AsString, []) do
            DS_Financeiro.DataSet.Delete;

//          AContador := 0;
//          DS_Financeiro.DataSet.First;
//          while not DS_Financeiro.DataSet.Eof do
//          begin
//            AContador := AContador + 1;
//            DS_Financeiro.DataSet.FieldByName('PARCELA').AsInteger := AContador;
//          end;

          if not (Venda_Financeiro_Tef.State in dsEditModes)then
            Venda_Financeiro_Tef.Edit;
              
          Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString := 'Cancelada';

          Venda_Financeiro_Tef.Post;
          TransaFinanceiroTEF.Commit;
          WRLog('Chamou o Evento StatusVenda; Rotina: GridTransacoesTefDBTableView1BtnCancelarPropertiesButtonClick; ' + ' Usuario: '+ usuario.Nome);
          SetStatusVenda(stsEmPagamento);
        end;
      end;
    end;
  end;
end;

procedure TFrmPDV_Pagamento.GridTransacoesTefDBTableView1BtnReimprimirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Pendente') then
  begin
    ShowMessage('Cupom ainda está pendente. Não é possível reimprimir');
    Exit;
  end;
  
  if MessageDlg('Deseja REIMPRIMIR a 2a via do Comprovante?' + sLineBreak +
              'Valor: R$' + FormatFloat('#,##0.00',Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat) + sLineBreak +
              'NSU: ' + Venda_Financeiro_Tef.FieldByName('NSU').AsString + sLineBreak +
              'Rede: ' + Venda_Financeiro_Tef.FieldByName('REDE').AsString + sLineBreak +
              'Data: ' + Venda_Financeiro_Tef.FieldByName('DT_ALTERACAO').AsString
              , mtConfirmation, mbYesNo, 0) = mrYes then
  begin

//    try
//      AtivarPosPrinter;
//    except
//      On E: Exception do
//      begin
//        WRLog(E.Message);
//        TratarException(nil, E);
//      end;
//    end;
    // Limpa antes pra não ter sujeira.
//    mImpressao.Lines.Clear;

    AdicionarLinhaImpressao(Venda_Financeiro_Tef.FieldByName('ARQ_IMPRESSAO').AsString);
//    ACBrPosPrinter1.Buffer.Assign(mImpressao.Lines);
//    ACBrPosPrinter1.Imprimir;
//    // Depois Limpa tudo.
//    mImpressao.Lines.Clear;
  end;
end;

procedure TFrmPDV_Pagamento.AtualizarPagamentosVendaNaInterface;
var
  I, ARow: Integer;
  AResp: TACBrTEFResp;
  AInsere: String;
  ATemOperacaoTef: Boolean;
begin
  AInsere := 'S';
  ATemOperacaoTef := False;
//  ARow := DS_Financeiro.DataSet.RecordCount;
  for I := 0 to Venda.Pagamentos.Count - 1 do
  begin
    with Venda.Pagamentos[I] do
    begin
      if not Cancelada then
      begin
        AResp := AcharTransacaoTEFPendente(I);
        if Assigned(AResp) then
          Confirmada := AResp.CNFEnviado;
      end;

      if  (NSU <> '')  and
      not (Confirmada) and
      not (Cancelada)
      then
        ATemOperacaoTef := True;
      {
      DS_Financeiro.DataSet.First;
      while not DS_Financeiro.DataSet.eof do
      begin
        if NSU <> '' then
        begin
          if DS_Financeiro.DataSet.FieldByName('NSU').AsString = NSU then
          begin
            DS_Financeiro.DataSet.Edit;
            DS_Financeiro.DataSet.FieldByName('TEF_STATUS').AsString := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
            DS_Financeiro.DataSet.Post;
            AInsere := 'N';
          end;
        end;
        DS_Financeiro.DataSet.Next;
      end;
      }
      { if AInsere = 'S' then
        begin
        ARow := ARow + 1;
        DS_Financeiro.DataSet.Insert;
        DS_Financeiro.DataSet.FieldByName('CODIGO').AsInteger := trunc(GetProximoCodigoGen('CR_VENDA_FINANCEIRO_TEF'));
        DS_Financeiro.DataSet.FieldByName('CODVENDA').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
        DS_Financeiro.DataSet.FieldByName('PARCELA').AsString := IntToStr(ARow);
        DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat := edtValor_Pagto.Value;
        DS_Financeiro.DataSet.FieldByName('TIPO').AsString := 'RECEBIDA';
        DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString := Tipo_Pagamento.FieldByName('DESCRICAO').AsString;
        DS_Financeiro.DataSet.FieldByName('NSU').AsString := NSU;
        DS_Financeiro.DataSet.FieldByName('REDE').AsString := Rede;
        DS_Financeiro.DataSet.FieldByName('TEF_STATUS').AsString := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
        DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString := RedeCNPJ;
        DS_Financeiro.DataSet.Post;
        end; }

      AtualizarTotaisVendaNaInterface;
//      DS_Financeiro.DataSet.refresh;
    end;

    if ATemOperacaoTef then
    begin
      SetStatusVenda(stsInativo,'TemOperacaoTefS');
    end;

    //
    // sgPagamentos.RowCount := 1;
    // ARow := sgPagamentos.RowCount;
    // for i := 0 to Venda.Pagamentos.Count-1 do
    // begin
    // sgPagamentos.RowCount := sgPagamentos.RowCount + 1;
    //
    // with Venda.Pagamentos[i] do
    // begin
    // if not Cancelada then
    // begin
    // AResp := AcharTransacaoTEFPendente(i);
    // if Assigned(AResp) then
    // Confirmada := AResp.CNFEnviado;
    // end;
    //
    // sgPagamentos.Cells[0, ARow] := FormatFloat('000', ARow);
    // sgPagamentos.Cells[1, ARow] := TipoPagamento + ' - ' + DescricaoTipoPagamento(TipoPagamento);
    // sgPagamentos.Cells[2, ARow] := FormatFloatBr(ValorPago);
    // sgPagamentos.Cells[3, ARow] := NSU;
    // sgPagamentos.Cells[4, ARow] := Rede;
    // sgPagamentos.Cells[5, ARow] := ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
    // sgPagamentos.Cells[6, ARow] := RedeCNPJ;
    // end;
    //
    // Inc(ARow);
    // end;
    //
    // AtualizarTotaisVendaNaInterface;
  end;
end;

procedure TFrmPDV_Pagamento.Desativar;
begin
  AdicionarLinhaLog('- Desativar');
  ACBrPosPrinter1.Desativar;
  ACBrTEFD1.DesInicializar(TACBrTEFDTipo(FGP)); // Fazer
end;

procedure TFrmPDV_Pagamento.edtPercAcrescimoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AValor : Double;
begin
  AValor := DisplayValue;
  edtValorAcrescimo.EditValue := (AValor * Venda.ValorInicial) / 100;
end;

procedure TFrmPDV_Pagamento.edtPercDescontoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AValor : Double;
begin
  AValor := DisplayValue;
  edtValorDesconto.EditValue := (AValor * Venda.ValorInicial) / 100;
end;

procedure TFrmPDV_Pagamento.edtValorAcrescimoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AValor : Double;
begin
  AValor := DisplayValue;
  edtPercAcrescimo.EditValue := (AValor / Venda.ValorInicial) * 100;
end;

procedure TFrmPDV_Pagamento.edtValorDescontoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AValor : Double;
begin
  AValor := DisplayValue;
  edtPercDesconto.EditValue := (AValor / Venda.ValorInicial) * 100;
end;

procedure TFrmPDV_Pagamento.tiAcrescimoClick(Sender: TdxTileControlItem);
begin
  edtValorAcrescimo.EditValue := Venda.TotalAcrescimo;
  edtPercAcrescimo.EditValue := (Venda.TotalAcrescimo / Venda.ValorInicial) * 100;
  ShowPanelForm(pnlAcrescimo, bsSingle);
end;

procedure TFrmPDV_Pagamento.tiOperacaoClick(Sender: TdxTileControlItem);
begin
  AdicionarLinhaLog('- btOperacaoClick');
  WRLog('Entrou na rotina: tiOperacaoClick' + ' Usuario: '+ usuario.Nome);
  case TipoBotaoOperacao of
    bopLiberarCaixa:
      begin
        WRLog('Liberou Caixa ' + ' Usuario: '+ usuario.Nome);
        Close;
        SetStatusVenda(stsLivre);
      end;

    bopCancelarVenda:
      begin
//      CancelarVenda;
        WRLog('Chamou Estornar(tiEstornar.Click)' + ' Usuario: '+ usuario.Nome);
        tiEstornar.Click;
        Close;
//        SetStatusVenda(stsCancelada);
      end;

    bopCancelarEsperaTEF:
      begin
        WRLog('Cancela Espera TEF ' + ' Usuario: '+ usuario.Nome);
        AdicionarLinhaLog('  Operação Cancelada Pelo Operador');
        FCanceladoPeloOperador := True;
      end;

    bopFinalizarVenda:
      begin
        WRLog('Chamou Rotina de Finalizar Venda ' + ' Usuario: '+ usuario.Nome);
        AdicionarLinhaLog(' Finaliza a venda');
        FinalizarVenda(nil);
      end;

    bopVendaFinalizada:
      begin
        WRLog('Saido do PDV com venda FInalizada ' + ' Usuario: '+ usuario.Nome);
        AdicionarLinhaLog(' Saiu da Venda Finalizada');
        Close;
        SetStatusVenda(stsFinalizada);
      end;
  end;
end;

procedure TFrmPDV_Pagamento.IdentificaCPF;
var
  Saida, ACNPJCPF, AFieldCNPJCPF: String;
  APessoa: TPessoaRetorno;
  QuerX: TFDQuery;
  ACnpjEncontrado: Boolean;
  AOldBeforePost: TDataSetNotifyEvent;
begin
//  if Venda.Pagamentos.Count > 0 then
//  begin
//    ShowMessage('Não é possível alterar a identificação com PARCELAS RECEBIDAS.');
//    Exit;
//  end;

  Saida := '';
  case ShowPanelForm(pnlCPF, bsSingle) of    //in [mrOk, mrYes]
    mrOk:
      Saida := edtCPF.Text;
    mrYes:
    begin
      AtivarTEF;
      ACBrTEFD1.CDP('F', Saida);

      if Saida <> '' then
        edtCPF.Text := Saida
      else
        ShowMessage('Falha ao Obter CPF no PinPad');
    end;
  end;

  if (Saida <> '') then
  begin
    // VALIDAR CPF
    // SE SIM PROCURAR
    // SE ACHAR PUXAR NOME
    // SE NAO APENAS ADICIONAR O CPF

    {$REGION 'Antigo'}
    {
    QuerX := GeraFDQuery;
    try
      ACnpjEncontrado := False;
      ACNPJCPF := OnlyNumber(edtCPF.Text);
      QuerX.SQL.Text := 'select RAZAOSOCIAL, CNPJCPF, CODIGO ' + 'from PESSOAS ' + 'where (CNPJCPF = :Cnpj)OR(CNPJCPF = :CnpjFormatado)';
      // Procura pelos primeiros dígitos para reduzir a quantidade de registros no loop
      QuerX.ParamByName('Cnpj').AsString := ACNPJCPF;
      QuerX.ParamByName('CnpjFormatado').AsString := edtCPF.Text;
      QuerX.Open;
      AFieldCNPJCPF := QuerX.FieldByName('CNPJCPF').AsString;
      while not QuerX.eof do
      begin
        ACnpjEncontrado := (OnlyNumber(AFieldCNPJCPF) = ACNPJCPF);
        if ACnpjEncontrado then
          Break;
        QuerX.Next;
      end;
      if ACnpjEncontrado then
      begin
        lblVendaCPF.Caption := edtCPF.Text;
        lblVendaRazaoSocial.Caption := QuerX.FieldByName('RAZAOSOCIAL').AsString;
      end;
    finally
      QuerX.Free;
    end;
    }
  {$ENDREGION}


      if not (DS.State in dsEditModes)then
      AchaBotaoAltera;

    if cxbFuncionario.EditValue <> AchaDataSetCadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString then
    begin
      AchaDataSetCadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString := cxbFuncionario.EditValue;
      AchaDataSetCadastro.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString := 'FUN';
      AchaDataSetCadastro.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsInteger := PessoaSequencia(Transa, cxbFuncionario.EditValue, 'FUN');
        TFrameHistorico.AdicionaHistorico(nil,
      AchaUCHist_DataSet,
        'Adicionou um funcionario ' + 'Usuario: ' + usuario.Nome);
      WRLog('PASSOU NA ROTINA NOVA! Adicionou o funcionario:' + AchaDataSetCadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString + ' Usuario:' + usuario.Nome);
    end;

    if PessoaBuscaPeloCnpj(AchaDataSetCadastro.Transaction, Saida, APessoa, 'CLI') then
    begin
      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := APessoa.Codigo;
      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoa.Sequencia;
      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := APessoa.Tipo.Codigo;

        // Atualiza na venda o caption, pois precisa fechar e abrir a tela de novo para recarregar
      AchouedtResponsavelÎPessoas.Properties.Buttons[0].Caption := APessoa.Tipo.Codigo;

      // Puxa Razão social para atualizar no cadastro.
      QuerX := GeraFDQUery;
      try
        QuerX.SQL.Text := 'SELECT RAZAOSOCIAL FROM PESSOAS P WHERE P.CODIGO = :codpessoa';
        QuerX.ParamByName('codpessoa').AsString := APessoa.Codigo;
        QuerX.Open;

      AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString := QuerX.FieldByName('RAZAOSOCIAL').AsString;

      AchaDataSetCadastro.FieldByName('RESPONSAVEL_CNPJCPF').AsString := Saida;
      finally
        QuerX.Free;
      end;

      lblVendaRazaoSocial.Caption := AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString;
    end
    else
    begin
    if AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').IsNull then //NAO MODIFICAR O CLIENTE PADRAO
      begin
        AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := '0';
        AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := 0;
        AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := 'CLI';
        AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString := 'Cliente não identificado';
        AchaDataSetCadastro.FieldByName('RESPONSAVEL_CODCIDADE').AsString := Empresa.FieldByName('CODCIDADE').AsString;
        AchaDataSetCadastro.FieldByName('RESPONSAVEL_CIDADE').AsString := Empresa.FieldByName('CIDADE').AsString;
        AchaDataSetCadastro.FieldByName('RESPONSAVEL_UF').AsString := Empresa.FieldByName('UF').AsString;
        AchaDataSetCadastro.FieldByName('CONSUMIDOR_FINAL').AsString := 'S';
      end;
      try
        if MessageDlg('Cliente não encontrado. Deseja informar o CNPJ na nota mesmo assim?', mtConfirmation, mbYesNo, 0) = mrYes then
        begin
          AchaDataSetCadastro.FieldByName('RESPONSAVEL_CNPJCPF').AsString := Saida;
          AchaDataSetCadastro.FieldByName('RESPONSAVEL_TIPO').AsString := 'F';
        end
        else
        begin
          AchaDataSetCadastro.FieldByName('RESPONSAVEL_CNPJCPF').AsString := '';
          AchaDataSetCadastro.FieldByName('RESPONSAVEL_TIPO').AsString := 'O';
        end;

      except
        On E: Exception do
        begin
          WRLog(E.Message);
          ShowMessage(E.Message);
        end;
      end;
    end;


    if AchaDataSetVenda_Financeiro.RecordCount > 0 then
    begin
      AOldBeforePost := AchaDataSetVenda_Financeiro.BeforePost;
      AchaDataSetVenda_Financeiro.BeforePost := nil;

      AchaDataSetVenda_Financeiro.First;
    while not AchaDataSetVenda_Financeiro.eof do
      begin
      if not (AchaDataSetVenda_Financeiro.State in dsEditModes)then
        AchaDataSetVenda_Financeiro.Edit;

        AchaDataSetVenda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
        AchaDataSetVenda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
        AchaDataSetVenda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
        AchaDataSetVenda_Financeiro.FieldByName('RAZAOSOCIAL').AsString := AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString;
        AchaDataSetVenda_Financeiro.Post;

        AchaDataSetVenda_Financeiro.Next;
      end;

      AchaDataSetVenda_Financeiro.BeforePost := AOldBeforePost;
    end;

    TFrameHistorico.AdicionaHistorico(nil,
    AchaUCHist_DataSet,
      'Cliente Trocado: ' + sLineBreak +  sLineBreak +
    'Nome: ' + AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString + sLineBreak +
    'CPF/CNPJ: ' + AchaDataSetCadastro.FieldByName('RESPONSAVEL_CNPJCPF').AsString  + sLineBreak +
    'Código: ' + AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString + sLineBreak);

    lblVendaRazaoSocial.Caption := AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString;
    lblVendaCPF.Caption := AchaDataSetCadastro.FieldByName('RESPONSAVEL_CNPJCPF').AsString;

    // Aqui deve procurar o Cliente ou Colocar o CPF na Nota
    // bota procura e coloca o cliente ou apenas o cpf
  end;
end;

procedure TFrmPDV_Pagamento.tcIdentifcaCPFClick(Sender: TdxTileControlItem);
begin
  SetStatusVenda(stsInativo,'IdentificaCPF');
end;

procedure TFrmPDV_Pagamento.tiCaixaClick(Sender: TdxTileControlItem);
begin
  irEscolhaCaixa;
  AtualizaTileCaixa;
end;

procedure TFrmPDV_Pagamento.AtualizaTileCaixa;
begin
  if FCodConta <> 0 then
  begin
    tiCaixa.Text1.Value := 'Caixa ' + VarToStr(FCodConta);
    tiCaixa.Style.BorderColor := $2034CB7F;
    tiCaixa.Style.GradientBeginColor := $200EAF54;
    tiCaixa.Style.GradientEndColor := $2010C268;
  end;
end;

procedure TFrmPDV_Pagamento.tiCancelarClick(
  Sender: TdxTileControlItem);
begin
  if MessageDlg('Deseja CANCELAR esta Venda?', mtConfirmation, mbYesNo, 0) = mrYes then
    CancelarVenda;
end;

procedure TFrmPDV_Pagamento.EmitirNotaFiscalTile(Sender: TdxTileControlItem);
var
  Ini: TIniFile;
begin
  // Após clicar em alguma das opções, some a telinha;
  tcNotaFiscal.Visible := False;

  CarregarPropriedadesBotaoNotaFiscal(tcNotaFiscal.Items[Sender.Tag]);

  if (Venda.TotalPago >= Venda.TotalVenda) and (Venda.Status = stsEmPagamento) then
    if MessageDlg('Deseja emitir ' + tcNotaFiscal.Items[Sender.Tag].Text1.Value +
                  ' e finalizar a Venda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      FinalizarVenda(nil);

  // Grava Opção NF no Ini
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(FCodConta) + '_Configuracao_PDV.ini');
  try
    INI.WriteString('NotaFiscalPadrao', 'Modelo', tcNotaFiscal.Items[Sender.Tag].Text1.Value);
  finally
    Ini.Free;
  end;


end;

procedure TFrmPDV_Pagamento.CarregarPropriedadesBotaoNotaFiscal(AItem: TdxTileControlItem);
begin
  // Altera o item.
  tiNF_PDV.Tag                      := AItem.Tag;
  tiNF_PDV.Style.GradientBeginColor := AItem.Style.GradientBeginColor;
  tiNF_PDV.Style.GradientEndColor   := AItem.Style.GradientEndColor;
  tiNF_PDV.Text1.Value              := AItem.Text1.Value;

  // Troca a cor do focused pra ficar bonitinho
  dxTileControl2.Style.CheckedItemFrameColor := AItem.Style.GradientEndColor;
  dxTileControl2.Style.FocusedColor          :=  AItem.Style.GradientEndColor;
end;

procedure TFrmPDV_Pagamento.tiDescontoClick(Sender: TdxTileControlItem);
begin
  ShowPanelForm(pnlDesconto, bsSingle);
end;

procedure TFrmPDV_Pagamento.tiEstornarClick(Sender: TdxTileControlItem);
var
  I, AIndicePagto: Integer;
  AFrmAguarde: TFrmAguarde;
  ATem_TEF :String;
  PodeCancelarTef: Boolean;
begin
  WRLog('Entrou para estornar');
  PodeCancelarTef := False;
  Venda_Financeiro_Tef.First;
  while not Venda_Financeiro_Tef.eof do
  begin
    if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Confirmada' then
    begin
      ShowMessage('Não é possível cancelar uma venda com NSU confirmado. ' + sLineBreak +
                  'Cancele o NSU pelo administrativo. Para acessar:' + sLineBreak +
                  'Na venda, clique em Menu -> Configurar PDV -> Selecione o Caixa -> Administração.');
      Exit;
    end;
    Venda_Financeiro_Tef.Next;
  end;

  if DS.DataSet.FieldByName('DT_FATURAMENTO').AsString <> '' then
  begin
    ShowMessage('Não é possível realizar estorno com a venda faturada.');
    Exit;
  end;
  ATem_TEF := 'N';
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.ExibirCancelar := False;
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Preparando para Estornando Parcelas.';
    try

      if not (DS.State in dsEditModes)then
        AchaBotaoAltera;
    // Cancela primeiro tudo em banco de dados, depois que se resolver cancela TEF
//      AchaouExcluirparcelasPDVPagamentos; //COMENTEI AQUI DENTRO, SEMPRE ESTA CONFIRMADA

    // Depois de garantir banco de dados, cancela tef e zera o Componente
  //      for I := 0 to Venda.Pagamentos.Count - 1 do
  //        ExcluirPagamento(I);

      // Verifica se tem parcela com NSU
      for AIndicePagto := 0 to Venda.Pagamentos.Count - 1 do
      begin
        if  (Venda.Pagamentos[AIndicePagto].NSU <> '') and
            (Venda.Pagamentos[AIndicePagto].Confirmada) then //
        begin
//          if AchaDataSetCadastro.FieldByName('TEM_OPERACAO_TEF').AsString <> 'S' then
//          begin
//            AchaDataSetCadastro.FieldByName('TEM_OPERACAO_TEF').AsString := 'S';
//            AchaBotaoConfirma;

//            TFrameHistorico.AdicionaHistorico(nil,
//              AchaUCHist_DataSet,
//              'Colocou a Venda em Operação TEF, venda com operações pendentes');
//            WRLog('COMMIT!(btnConfirmar.Click), Colocou TEM_OPERACAO_TEF para :S pois a venda tem operações pendentes');
//          end;

          AFrmAguarde.Close;
          AtivarTEF;
          Venda.Status := stsOperacaoTEF;
          try
            if ACBrTEFD1.CNC(Venda.Pagamentos[AIndicePagto].Rede,
                            Venda.Pagamentos[AIndicePagto].NSU,
                            Venda.Pagamentos[AIndicePagto].Hora,
                            Venda.Pagamentos[AIndicePagto].ValorPago)
            then
            begin
              for I := 0 to Venda.Pagamentos.Count - 1 do
              begin
                if Venda.Pagamentos[I].NSU = Venda.Pagamentos[AIndicePagto].NSU then
                begin
                  Venda.Pagamentos[I].Confirmada := False;
                  Venda.Pagamentos[I].Cancelada := True;

                  if Venda_Financeiro_TEF.Locate('NSU', Venda.Pagamentos[I].NSU, []) then
                  begin
                    try
                      Venda_Financeiro_TEF.Edit;
                      Venda_Financeiro_TEF.FieldByName('TEF_STATUS').AsString := 'Cancelada';
                      Venda_Financeiro_TEF.Post;
                      ComitaTransacao(TransaFinanceiroTEF);
                    except
                      Venda_Financeiro_TEF.Cancel;
                      RollbackTransacao(TransaFinanceiroTEF);
                      WRLog('ROLLBACK! RollbackTransacao(TransaFinanceiroTEF)');
                      Raise;
                    end;
                  end;
                end;
              end;
            end
            else
            begin
              ShowMessage('Falha no Cancelamento');
//              Raise;
            end;
          except
            on E:Exception do
            begin
              WRLog(E.Message);
              ShowMessage('Não foi possível Cancelar a Transação TEF.');
              raise;
            end;
          end;
        end;
      end;

      for AIndicePagto := 0 to Venda.Pagamentos.Count - 1 do
      begin
        if (Venda.Pagamentos[AIndicePagto].Confirmada) and (Venda.Pagamentos[AIndicePagto].NSU <> '') then
        begin
          ShowMessage('Existem Transações TEF confirmadas, não foi possível estornar');
          Exit;     //RAISE????
        end;
        //ExcluirPagamento(AIndicePagto);
      end;

      for AIndicePagto := 0 to Venda.Pagamentos.Count - 1 do
      begin
        if (Venda.Pagamentos[AIndicePagto].NSU <> '') then
          PodeCancelarTef := True;
      end;

      if PodeCancelarTef then
      begin
        if ACBrTEFD1.Inicializado(TACBrTEFDTipo(FGP)) then
        begin
          ACBrTEFD1.CancelarTransacoesPendentes;
        end
        else
        begin
          Venda.Status := stsEmPagamento;
          Ativar;
        end;
      end;

      AchaDataSetCadastro.FieldByName('TEM_OPERACAO_TEF').AsString := 'N';

      ShowMessage('Procedimento Estornar:' + sLineBreak + 'Para sua segurança, Parcelas, Nota Fiscal e a Venda serão CANCELADAS.');
      Venda_Financeiro_Tef.First;
      while not Venda_Financeiro_Tef.eof do
      begin
        if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Cancelada' then
        begin

          // Se cair aqui tem que cancelar a nota.
          case tiNF_PDV.tag of
            //NF-e
            0: AchouCancelarNFeInconsistentePDV;

            //NFC-e
            1: AchouCancelarNFeInconsistentePDV;

            //NFS-e
  //          2: TFrmVenda(Self.Owner).CancelarNFSe;
          end;
          // Esta venda será cancelada
          CancelarVenda;
        end;

        Venda_Financeiro_Tef.Next;
      end;


      Venda.Pagamentos.Clear;

//      if not (DS.State in dsEditModes)then
//        AchaBotaoAltera;



      AchaouExcluirparcelasPDVPagamentos; // Não pode excluir sem commitar.

      if DS_Financeiro.DataSet.RecordCount = 0 then
      begin
        TFrameHistorico.AdicionaHistorico(nil,
          AchaUCHist_DataSet,
          'Todas as Parcelas foram ESTORNADAS.');
      end;
      WRLog('Chamou o Evento SetStatusVenda; Rotina: tiEstonarClick; ' + ' Usuario: '+ usuario.Nome);
      DS.DataSet.FieldbyName('TEM_TEF').AsString := 'N';
      SetStatusVenda(stsIniciada);   // Commita depois de cancelar transações
      AtualizarTotaisVendaNaInterface;
      AFrmAguarde.Close;
      LimparMensagensTEF;
      Close;

    except
      On E: Exception do
      begin
        ShowMessage(E.Message);
        LimparMensagensTEF;
        AchoubtnCancelar;
      end;
    end;

  finally   //VER SE COM EXPTION CAI AQUI
     AFrmAguarde.Free;
  end;
end;

procedure TFrmPDV_Pagamento.tiNF_PDVClick(Sender: TdxTileControlItem);
begin
  tcNotaFiscal.Visible := not tcNotaFiscal.Visible;
end;

procedure TFrmPDV_Pagamento.ExcluirPagamento(IndicePagto: Integer);
var
  AResp: TACBrTEFResp;
  Cancelada: Boolean;
begin
  if (IndicePagto < 0) or (IndicePagto >= Venda.Pagamentos.Count) then
    raise Exception.CreateFmt('Indice de pagamento [%d] inválido', [IndicePagto]);

  if Venda.Pagamentos[IndicePagto].Cancelada then
    raise Exception.CreateFmt('Pagamento [%d] já foi Cancelado', [IndicePagto]);

  Cancelada := False;
  AResp := AcharTransacaoTEFPendente(IndicePagto);
  if Assigned(AResp) then
  begin
    if AResp.CNFEnviado then
      raise Exception.CreateFmt('Pagamento TEF [%s] já foi Confirmado.' + sLineBreak + 'Para cancelar o mesmo, cancele Toda a Operação', [AResp.NSU])
    else
    begin
      ACBrTEFD1.NCN(AResp.Rede, AResp.NSU, AResp.Finalizacao, AResp.ValorTotal, AResp.DocumentoVinculado);
      Cancelada := True;
    end;
    if Cancelada then
    begin
      if (AResp.ArqBackup <> '') and FileExists(AResp.ArqBackup) then
        DeleteFile(AResp.ArqBackup);

      ACBrTEFD1.RespostasPendentes.Remove(AResp);
    end;
  end
  else
  begin
    if (Venda.Pagamentos[IndicePagto].NSU <> '') then
      raise Exception.CreateFmt('Transação TEF [%s] não foi Localizada.', [Venda.Pagamentos[IndicePagto].NSU])
    else
      Cancelada := True;
  end;

  if Cancelada then
  begin
    Venda.Pagamentos[IndicePagto].Cancelada := True;//Clear;//
    WRLog(' ExcluirPagamento Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
    AtualizarPagamentosVendaNaInterface;
  end;
end;

procedure TFrmPDV_Pagamento.tiOperadoraTEFClick(Sender: TdxTileControlItem);
begin
  GrupoGeral.Visible := (Sender = tiOperadoraTEF);
  GrupoImpressora.Visible := (Sender = tiImpressora);
  GrupoTipoPagto.Visible := (Sender = tiFormaPagamento);
  GrupoNotaFiscal.Visible := (Sender = tiNotaFiscal);
  GrupoImpressoes.Visible := (Sender = tiImpressoes);

  if Sender = tiFormaPagamento then
    CarregaTiposPagtoNoTileControl;

  if Sender = tiNotaFiscal then
    CarregaTiposNotaNoCheckComboBox;

  if Sender = tiImpressoes then
    CarregaInterfaceConfiguracaoImpressao;

end;

procedure TFrmPDV_Pagamento.CarregaTiposPagtoNoTileControl;
var
  QuerTipoPagto: TFDQuery;
  I, AIndex: Integer;
  ACodigo : String;
begin
  QuerTipoPagto := GeraFDQuery;
  try
    QuerTipoPagto.SQL.Text := 'SELECT NF_TIPO_PAGTO FROM TIPO_PAGAMENTO WHERE ATIVO = ''S''';
    QuerTipoPagto.Open;

    tcTiposPagto.Items.Clear;
    // Cria as caixinhas com os tipos de pagamento.
    for I := 0 to 19 do
    begin
      ACodigo := IntToTipoPagto(I);
      if QuerTipoPagto.Locate('NF_TIPO_PAGTO', ACodigo) then
      begin
        tcTiposPagto.Items.Add;

        // Pega o Index para editar pois tem que ser o último
        AIndex := tcTiposPagto.Items.Count - 1;

        tcTiposPagto.Items[AIndex].GroupIndex      := 1;
        tcTiposPagto.Items[AIndex].Tag             := I;
        tcTiposPagto.Items[AIndex].Size            := tcisRegular;
        tcTiposPagto.Items[AIndex].RowCount        := 1;
        tcTiposPagto.Items[AIndex].Text1.Font.Size := 10;
        tcTiposPagto.Items[AIndex].Text1.Align     := oaMiddleCenter;
        tcTiposPagto.Items[AIndex].Text1.WordWrap  := True;
        tcTiposPagto.Items[AIndex].Text1.Alignment := taCenter;
        tcTiposPagto.Items[AIndex].Style.BorderColor        := clDefault;
        tcTiposPagto.Items[AIndex].Style.GradientBeginColor := clDefault;
        tcTiposPagto.Items[AIndex].Style.GradientEndColor   := clDefault;
        tcTiposPagto.Items[AIndex].onClick := ClickTipoPagto;
        // Coloca por padrão a descrição Outros e testa abaixo.
        tcTiposPagto.Items[AIndex].Text1.Value     := 'Outros';

        if ACodigo = '01' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Dinheiro';

        if ACodigo = '02' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Cheque';

        if ACodigo = '03' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Cartão de Crédito';

        if ACodigo = '04' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Cartão de Débito';

        if ACodigo = '05' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Crédito de Loja';

        if ACodigo = '10' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Vale Alimentação';

        if ACodigo = '11' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Vale Refeição';

        if ACodigo = '12' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Vale Presente';

        if ACodigo = '13' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Vale Combustível';

        if ACodigo = '15' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Boleto Bancário';

        if ACodigo = '16' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Depósito Bancário';

        if ACodigo = '17' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'PIX';

        if ACodigo = '18' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Transferência';

        if ACodigo = '19' then
          tcTiposPagto.Items[AIndex].Text1.Value     := 'Cashback, Crédito Virtual';
      end;
    end;
    tcTiposPagto.Items[0].Click;
  finally
    QuerTipoPagto.Free;
  end;
end;

procedure TFrmPDV_Pagamento.CarregaTiposNotaNoCheckComboBox;
var
  Ini: TIniFile;
  I: Integer;
begin
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');

  try
    if Ini.ReadInteger('NFe', 'Habilitado', 0) = 1 then
      ccbTiposNotaFiscal.SetItemState(0, cbsChecked);

    if Ini.ReadInteger('NFCe', 'Habilitado', 0) = 1 then
      ccbTiposNotaFiscal.SetItemState(1, cbsChecked);

    if Ini.ReadInteger('NFSe', 'Habilitado', 0) = 1 then
      ccbTiposNotaFiscal.SetItemState(2, cbsChecked);

  finally
    Ini.Free;
  end;
end;

procedure TFrmPDV_Pagamento.CarregaInterfaceConfiguracaoImpressao;
var
  Ini: TIniFile;
  I: Integer;
begin
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');

  try
    ImpressaoNFe.Visible  := Ini.ReadInteger('NFe', 'Habilitado', 0) = 1;
    ImpressaoNFCe.Visible := Ini.ReadInteger('NFCe', 'Habilitado', 0) = 1;
    ImpressaoNFSe.Visible := Ini.ReadInteger('NFSe', 'Habilitado', 0) = 1;

    if ImpressaoNFe.Visible then
    begin
      // to-do: Aqui coloca as funções para carregar as configurações e tipos de impressão disponível
      PreencheComboBoxImpressorasDisponiveis(cbImpressoraNFe.Properties);
    end;

    if ImpressaoNFCe.Visible then
    begin
      // to-do: Aqui coloca as funções para carregar as configurações e tipos de impressão disponível
      PreencheComboBoxImpressorasDisponiveis(cbImpressoraNFCe.Properties);
    end;

    if ImpressaoNFSe.Visible then
    begin
      // to-do: Aqui coloca as funções para carregar as configurações e tipos de impressão disponível
      PreencheComboBoxImpressorasDisponiveis(cbImpressoraNFSe.Properties);
    end;
    //TDMImpressao.ImprimirPorNome(AForm, ANomeDoRelatorio, ASender, AImprimirDireto);

    // to-do: Aqui deve carregar as configurações e tipo de impressão não fiscal.
//    PreencheLookupVenda_ImpressaoNaoFiscal(cbSelecionarImpressaoNaoFiscal.Properties);
    PreencheComboBoxImpressorasDisponiveis(cbImpressoraNaoFiscal.Properties);

    // Configuraçoes Impressão Não Fiscal
    cbImpressoraNaoFiscal.EditText   := INI.ReadString('NaoFiscal', 'ImpressoraPadrao', '');

    // Configuraçoes NFe
    cbImpressoraNFe.EditText     := Ini.ReadString('NFe', 'ImpressoraPadrao', '');

    // Configuraçoes NFCe
    cbImpressoraNFCe.EditText    := Ini.ReadString('NFCe', 'ImpressoraPadrao', '');

    // Configuraçoes NFSe
    cbImpressoraNFSe.EditText    := Ini.ReadString('NFSe', 'ImpressoraPadrao', '');

  finally
    Ini.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ClickTipoPagto(Sender: TdxTileControlItem);
var
  Ini: TIniFile;
  ADescricao: String;
begin

  Tipo_Pagamento_Configuracao.Close;
  Tipo_Pagamento_Configuracao.ParamByName('CODNF_TIPO_PAGTO').AsString := IntToTipoPagto(Sender.Tag);
  Tipo_Pagamento_Configuracao.Open;

  
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');
  try
    Tipo_Pagamento_Configuracao.First;
    while not Tipo_Pagamento_Configuracao.eof do
    begin
      if Ini.ReadInteger('CodigoTipoDePagamento='+IntToTipoPagto(Sender.Tag), Tipo_Pagamento_Configuracao.FieldByName('DESCRICAO').AsString, 0) = 1 then
      begin
        Tipo_Pagamento_Configuracao.Edit;
        Tipo_Pagamento_Configuracao.FieldByName('ACEITA_NO_CAIXA_ATUAL').AsString := 'S';
        Tipo_Pagamento_Configuracao.Post;
        Tipo_Pagamento_Configuracao.Open;
      end;
      Tipo_Pagamento_Configuracao.Next;
    end; 
  finally
    Ini.Free;
  end;
end;


function TFrmPDV_Pagamento.IntToTipoPagto(ATag: Integer): String;
begin
  if ATag < 10 then
    Result := '0' + VarToStr(ATag)
  else
    Result := VarToStr(ATag);
end;


procedure TFrmPDV_Pagamento.TratarException(Sender: TObject; E: Exception);
begin
  AdicionarLinhaLog('');
  AdicionarLinhaLog('***************' + E.ClassName + '***************');
  AdicionarLinhaLog(E.Message);
  AdicionarLinhaLog('');
  // MessageDlg(E.Message, mtError, [mbOK], 0);
end;

procedure TFrmPDV_Pagamento.umSelecionePagamento(var Message: TMessage);
begin
  SelecionaFormaDePagamento(Integer(Message.WParam));
end;

procedure TFrmPDV_Pagamento.Venda_Financeiro_TefAfterOpen(DataSet: TDataSet);
begin
  cxGridTransacoesTef.Visible := (Venda_Financeiro_TEF.RecordCount > 0) ;
end;

procedure TFrmPDV_Pagamento.Venda_Financeiro_TefAfterPost(DataSet: TDataSet);
begin
  cxGridTransacoesTef.Visible := (Venda_Financeiro_TEF.RecordCount > 0) ;
end;

Class function TFrmPDV_Pagamento.VerificaCodVendaIni(AFrmPDV_Pagamento: TFrmPDV_Pagamento;
  AParent: TFrmCadM; AKey: Word; ADataSource, ADSFinanceiro: TDataSource;
  ACodConta: Integer): String;
var
  Ini: TIniFile;
begin
  Result := '';

  if Not Assigned(AFrmPDV_Pagamento) then
      AFrmPDV_Pagamento := TFrmPDV_Pagamento.Create(AParent);

  with AFrmPDV_Pagamento do
  begin
    FModo := 'Caixa';
    DS.DataSet := ADataSource.DataSet;
    DS_Financeiro.DataSet := ADSFinanceiro.DataSet;
//    Venda_Financeiro_Tef.Transaction := TFrmVenda(AFrmPDV_Pagamento.Owner).TransaFD;

    FVenda := TVenda.Create(NomeArquivoVenda);
    FVenda.Ler;

    if  (FVenda.CodVenda <> DS.DataSet.FieldByName('CODIGO').AsString) then
      Result := FVenda.CodVenda;
  end;
end;

procedure TFrmPDV_Pagamento.VerificarTestePayGo;
var
  P: Integer;
  ATeste: String;
begin
  // ATeste := cbTestePayGo.Text;
  // P := pos('-',ATeste);
  // ATeste := Trim(copy(ATeste, 1, P-1));
  // FTestePayGo := StrToIntDef(ATeste, 0);
end;

procedure TFrmPDV_Pagamento.WREventosCadastroImpressaoBeforePrint(
  Sender: TObject; var APermiteImprimir: Boolean);
begin
  APermiteImprimir := True;
end;

procedure TFrmPDV_Pagamento.ConfirmaDesconto;
begin
  Venda.TotalDesconto := edtValorDesconto.Value;
  AtualizarTotaisVendaNaInterface;

  if not (DS.State in dsEditModes)then AchaBotaoAltera;

  DS.DataSet.FieldByName('VDESC').AsFloat := Venda.TotalDesconto;
  DS.DataSet.FieldByName('PDESC').AsFloat := DS.DataSet.FieldByName('VDESC').AsFloat / DS.DataSet.FieldByName('SUB_TOTAL').AsFloat * 100;

  AchouWRCalc.RecalcularTodosOsProdutos;
  AchouWRCalc.SuperCalc;
  TFrameHistorico.AdicionaHistorico(nil,
    AchaUCHist_DataSet,
    'Colocou Desconto:' + FloatToStr(DS.DataSet.FieldByName('VDESC').AsFloat) + ' Usuario: '+ usuario.Nome);
end;

procedure TFrmPDV_Pagamento.btnConfirmaDescontoClick(Sender: TObject);
begin
  SetStatusVenda(stsInativo,'AdicionaDesconto');
end;


procedure TFrmPDV_Pagamento.btnMenuClick(Sender: TObject);
begin
  if TabMenuConfiguracoes.ActuallyVisible then
  begin
    IrParaOperacaoTEF;
    tabOpercao.MakeVisible;
  end
  else
    IrParaConfiguracao;
end;

procedure TFrmPDV_Pagamento.btnProcurarImpressoraClick(Sender: TObject);
begin
  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais(cbxPorta.Items);
{$IFDEF MSWINDOWS}
  ACBrPosPrinter1.Device.AcharPortasUSB(cbxPorta.Items);
{$ENDIF}
  ACBrPosPrinter1.Device.AcharPortasRAW(cbxPorta.Items);

  cbxPorta.Items.Add('TCP:192.168.0.31:9100');

{$IFNDEF MSWINDOWS}
  cbxPorta.Items.Add('/dev/ttyS0');
  cbxPorta.Items.Add('/dev/ttyUSB0');
  cbxPorta.Items.Add('/tmp/ecf.txt');
{$ELSE}
  cbxPorta.Items.Add('\\localhost\Epson');
  cbxPorta.Items.Add('c:\temp\ecf.txt');
{$ENDIF}
end;

procedure TFrmPDV_Pagamento.btnSerialClick(Sender: TObject);
var
  frConfiguraSerial: TfrConfiguraSerial;
begin
  AdicionarLinhaLog('- btSerialClick');
  frConfiguraSerial := TfrConfiguraSerial.Create(self);
  try
    frConfiguraSerial.Device.Porta := ACBrPosPrinter1.Device.Porta;
    frConfiguraSerial.cmbPortaSerial.Text := cbxPorta.Text;
    frConfiguraSerial.Device.ParamsString := ACBrPosPrinter1.Device.ParamsString;

    if frConfiguraSerial.ShowModal = mrOk then
    begin
      cbxPorta.Text := frConfiguraSerial.cmbPortaSerial.Text;
      ACBrPosPrinter1.Device.ParamsString := frConfiguraSerial.Device.ParamsString;
    end;
  finally
    FreeAndNil(frConfiguraSerial);
  end;
end;

procedure TFrmPDV_Pagamento.btSalvarParametrosClick(Sender: TObject);
begin
  GravarConfiguracao(FCodConta);
  if Tipo_Pagamento_Configuracao.State in dsEditModes then
  begin
    Tipo_Pagamento_Configuracao.Post;

  end;
  ShowMessage('Configuração Salva com Sucesso!');
end;

procedure TFrmPDV_Pagamento.btTestarPinPadClick(Sender: TObject);
var
  Msg: String;
begin
  Msg := 'Office Impresso|' + FormatDateTimeBr(now, 'DD/MM HH:NN:SS');
  ACBrTEFD1.ExibirMensagemPinPad(Msg);
end;

procedure TFrmPDV_Pagamento.btTestarPosPrinterClick(Sender: TObject);
var
  SL: TStringList;
begin
  AdicionarLinhaLog('- btTestarPosPrinterClick');
  try
//    AtivarPosPrinter;

    SL := TStringList.Create;
    try
      SL.Add('</zera>');
      SL.Add('</linha_dupla>');
      SL.Add('FONTE NORMAL: ' + IntToStr(ACBrPosPrinter1.ColunasFonteNormal) + ' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteNormal));
      SL.Add('<e>EXPANDIDO: ' + IntToStr(ACBrPosPrinter1.ColunasFonteExpandida) + ' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteExpandida));
      SL.Add('</e><c>CONDENSADO: ' + IntToStr(ACBrPosPrinter1.ColunasFonteCondensada) + ' Colunas');
      SL.Add(LeftStr('....+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....8', ACBrPosPrinter1.ColunasFonteCondensada));
      SL.Add('</c><n>FONTE NEGRITO</N>');
      SL.Add('<in>FONTE INVERTIDA</in>');
      SL.Add('<S>FONTE SUBLINHADA</s>');
      SL.Add('<i>FONTE ITALICO</i>');
      SL.Add('FONTE NORMAL');
      SL.Add('');
      SL.Add('TESTE DE ACENTOS. ÁÉÍÓÚáéíóú');
      SL.Add('');
      SL.Add('</corte_total>');

      cbEnviarImpressora.Checked := True;
      AdicionarLinhaImpressao(SL.Text);
    finally
      SL.Free;
    end;
  except
    On E: Exception do
    begin
      WRLog(E.Message);
      MessageDlg('Falha ao ativar a Impressora' + sLineBreak + E.Message, mtError, [mbOK], 0);
    end;
  end
end;

procedure TFrmPDV_Pagamento.btTestarTEFClick(Sender: TObject);
var
  NomeTEF: String;
begin
  GravarConfiguracao(FCodConta);
  NomeTEF := GetEnumName(TypeInfo(TACBrTEFDTipo), cbxGP.ItemIndex);
  AdicionarLinhaLog('- btTestarTEFClick: ' + NomeTEF);
  try
    try
      AtivarTEF;
      ACBrTEFD1.ATV;
      MessageDlg(Format('TEF %S ATIVO', [NomeTEF]), mtInformation, [mbOK], 0);
    finally

    end;
  except
    On E: Exception do
    begin
      WRLog(E.Message);
      MessageDlg(Format('Falha ao ativar TEF %S' + sLineBreak + E.Message, [NomeTEF]), mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmPDV_Pagamento.ConfirmaAcrescimo;
begin
  Venda.TotalAcrescimo := edtValorAcrescimo.Value;
  AtualizarTotaisVendaNaInterface;

  if not (DS.State in dsEditModes)then AchaBotaoAltera;

  DS.DataSet.FieldByName('VOUTRO').AsFloat := Venda.TotalAcrescimo;
  DS.DataSet.FieldByName('POUTRO').AsFloat := DS.DataSet.FieldByName('VOUTRO').AsFloat / DS.DataSet.FieldByName('SUB_TOTAL').AsFloat * 100;

  AchouWRCalc.RecalcularTodosOsProdutos;
  AchouWRCalc.SuperCalc;
  TFrameHistorico.AdicionaHistorico(nil,
    AchaUCHist_DataSet,
    'Colocou Acrescimo:' + FloatToStr(DS.DataSet.FieldByName('VDESC').AsFloat) + ' Usuario: '+ usuario.Nome);
end;

procedure TFrmPDV_Pagamento.btnConfirmaAcrescimoClick(Sender: TObject);
begin
  SetStatusVenda(stsInativo,'AdicionaAcrescimo');
end;


procedure TFrmPDV_Pagamento.ConfirmaCPF; //NAO ESTA SENDO UTILIZADA
var
  APessoa: TPessoaRetorno;
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQUery;
  if PessoaBuscaPeloCnpj(AchaDataSetCadastro.Transaction, edtCPF.Text, APessoa, 'CLI') then
  begin

      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := APessoa.Codigo;
      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := APessoa.Sequencia;
      AchaDataSetCadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := APessoa.Tipo.Descricao;

      try
        QuerX.SQL.Text := 'SELECT RAZAOSOCIAL FROM PESSOAS P WHERE P.CODIGO = :codpessoa';
        QuerX.ParamByName('codpessoa').AsString := APessoa.Codigo;
        QuerX.Open;

        AchaDataSetCadastro.FieldByName('RAZAOSOCIAL').AsString := QuerX.FieldByName('RAZAOSOCIAL').AsString;
      finally
        QuerX.Free;
      end;

      lblVendaRazaoSocial.Caption := QuerX.FieldByName('RAZAOSOCIAL').AsString;
      WRLog('PASSOU NA ROTINA NOVA! Adicionou cliente');
      AchaDataSetCadastro.Edit;    // Isso aqui não pode, tem que usar o btnAlterar

    end;
//  else
//  begin
//    ShowMessage('Cliente não Localizado na Base de Dados');
//  end;
  lblVendaCPF.Caption := edtCPF.Text;
end;

procedure TFrmPDV_Pagamento.btnConfirmaCPFClick(Sender: TObject);
begin
//  SetStatusVenda(stsInativo,'ConfirmaCPF');
end;


procedure TFrmPDV_Pagamento.tcDinheiroClick(Sender: TdxTileControlItem);
var
  FFrmPDV_Pagamento_Incluir: TFrmPDV_Pagamento_incluir;
  APagtosPermitidos: String;
begin
  FFrmPDV_Pagamento_Incluir := TFrmPDV_Pagamento_incluir.Create(self);
  Try
    APagtosPermitidos := ListaTipoPagamentoIni(FormatFloat('00', Sender.Tag));
    if APagtosPermitidos = '' then
    begin
      ShowMessage('Não há pagamentos permitidos para esse tipo de pagamento, favor configurar: Tela Principal > Financeiro > Configurar Conta TEF ');
      Exit;
    end;
    with FFrmPDV_Pagamento_Incluir do
    begin
      Tipo_Pagamento.Close;
      Tipo_Pagamento.SQL[4] := ' and TP.NF_TIPO_PAGTO = ' + FormatFloat('00', Sender.Tag) + ' and TP.DESCRICAO IN (' + APagtosPermitidos + ')';   
      Tipo_Pagamento.Open;
      edtValor_Pagto.Value := Max(Venda.Troco*-1,0);
      if (FFrmPDV_Pagamento_Incluir.ShowModal = mrOk) then
      begin
//        Venda.Status := stsEmPagamento;
        AdicionarPagamento(Tipo_Pagamento.FieldByName('CODNF_TIPO_PAGTO').AsString,
                           edtValor_Pagto.Value,
                           Tipo_Pagamento.FieldByName('TEM_TEF').AsString,
                           Tipo_Pagamento.FieldByName('DESCRICAO').AsString);
        if (Venda.TotalPago >= Venda.TotalVenda) then
          FinalizarVenda(nil); // FinalizarVenda;
      end;
    end;
  finally
    FFrmPDV_Pagamento_Incluir.Free;
  end;
end;

function TFrmPDV_Pagamento.ListaTipoPagamentoIni(ACodNFeTipoDePagamento: String): String;
var
  Ini: TIniFile;
  ALista: String;
  QuerX: TFDQUery;
begin
  Ini := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT TP.DESCRICAO FROM TIPO_PAGAMENTO TP WHERE TP.NF_TIPO_PAGTO = :codtipopagto';
    QuerX.ParamByName('codtipopagto').AsString := ACodNFeTipoDePagamento;
    QuerX.Open;

    QuerX.First;
    while not QuerX.eof do
    begin
      if Ini.ReadInteger('CodigoTipoDePagamento='+ACodNFeTipoDePagamento,
                         QuerX.FieldByName('DESCRICAO').AsString, 0) = 1
      then
        ALista := ALista + QuotedStr(QuerX.FieldByName('DESCRICAO').AsString) + ',';

      QuerX.Next;
    end;

    // Retorna a lista Removendo a vírgula do final.
    Result := Copy(ALista, 1, ALista.Length-1);
  finally
    QuerX.Free;
    Ini.Free;
  end;
  
end;

procedure TFrmPDV_Pagamento.tcCrediarioClick(Sender: TdxTileControlItem);
begin
//  TabCrediario.MakeVisible;
  MenuCondicaoPagto.Visible := True;
  cbxCondicaoPagto.SetFocusWR;
end;

procedure TFrmPDV_Pagamento.FinalizarVenda(UltResp: TACBrTEFResp);
var
  SL: TStringList;
  I, ARow, AOpcoesDisponiveis, AIndicePagto: Integer;
  ImpDocumentoOK, APassarNoTEF, ATemTef, ErroDocFiscal, PodeConfirmarTef: Boolean;
  MR: TModalResult;
  AResp: TACBrTEFResp;
  Parc: TACBrTEFRespParcela;
  QuerX: TFDQuery;
  AValor: Double;
  AVendaTemporaria: TVenda;
  Ini: TIniFile;
  ts:TStringList;
begin
  try
    WRLog('Entrou na Rotina de FInalizar Venda ' + ' Usuario: '+ usuario.Nome);
    PodeConfirmarTef := False;
  //    ESTA FATURANDO ANTES DE CONFIRMAR O NSU
  //    SE HOUVER UM NSU PENDENTE NA VENDA_FINANCEIRO_TEF VERIFICAR ANTES
  //    AO FINALIZAR A VENDA(ROTINA)
  //    -PASSO 0 VERIFICAR PARCELAS QUE DEVERIAM TER TEF ( Rotina independente, sem problemas ficar aqui)
  //    -PASSO 1 IMPRIME MODELO NÃO FISCAL e EMITIR NOTA  (Aqui ja comita)
  //    -PASSO 2 Confirma e Imprime os comprovantes TEF
  //    -PASSO 3 FATURA

    {$REGION '----PASSO 0 - PASSA TEF - (SE CHEGOU AQUI TODAS AS PARCELAS DEVEM ESTAR NA CONTA CORRETA) --------------------------------------'}
    try
      WRLog('Verifica Parcelas ' + ' Usuario: '+ usuario.Nome);
      QuerX := GeraFDQuery;
      try
        APassarNoTEF := False;
        DS_Financeiro.Dataset.First;
        while not DS_Financeiro.Dataset.Eof do
        begin
          if (DS_Financeiro.DataSet.FieldByName('NSU').AsString = '') and
             (DS_Financeiro.Dataset.FieldByName('EXIGE_TEF').AsString = 'S')
          then
          begin
            APassarNoTEF := True;
            break;
          end;
          DS_Financeiro.Dataset.Next;
        end;

        /// Só cai aqui se existir a necessidade de passar a venda no TEF.
        if APassarNoTEF then
        begin
          /// Faz uma cópia da venda atual para não perder as parcelas, limpa e copia.
          AVendaTemporaria := TVenda.Create(NomeArquivoVenda);
          AVendaTemporaria.Pagamentos.Clear;
          for I := 0 to Venda.Pagamentos.Count - 1 do
          begin
            AVendaTemporaria.Pagamentos.New;
            AVendaTemporaria.Pagamentos[I].ValorPago := Venda.Pagamentos[I].ValorPago;
            AVendaTemporaria.Pagamentos[I].TipoPagamentoExtenso := Venda.Pagamentos[I].TipoPagamentoExtenso;
          end;

          /// Limpa os pagamentos no banco e passa novamente para garantir que todas as parcelas do TEF vão passar.
          /// Se não fizer assim tem a possibilidade de dar erro na Nota Fiscal.
          Venda.Pagamentos.Clear;
          AchaouExcluirparcelasPDVPagamentos; // Não pode excluir sem commitar.
          WRLog('Chamou o Evento SetStatusVenda; Rotina: FinalizarVenda; ' + ' Usuario: '+ usuario.Nome);
          SetStatusVenda(stsEmPagamento);

          QuerX.SQL.Text := 'SELECT TP.NF_TIPO_PAGTO, TP.TEM_TEF FROM TIPO_PAGAMENTO TP ' +
                            'WHERE TP.DESCRICAO = :descTipoPagto ';
          /// Passa de parcela em parcela refazendo e passando no TEF.
          for I := 0 to AVendaTemporaria.Pagamentos.Count - 1 do
          begin
            /// Aqui pode ter QuerX? Se precisar tirar, tem que passar todas estas
            ///  informações para o AVendaTemporaria.
            QuerX.Close;
            QuerX.ParamByName('descTipoPagto').AsString := AVendaTemporaria.Pagamentos[I].TipoPagamentoExtenso;
            QuerX.Open;

            AdicionarPagamento(QuerX.FieldByName('NF_TIPO_PAGTO').AsString,
                               AVendaTemporaria.Pagamentos[I].ValorPago,
                               QuerX.FieldByName('TEM_TEF').AsString,
                               AVendaTemporaria.Pagamentos[I].TipoPagamentoExtenso);
          end;
        end;
      finally
        QuerX.Free;
      end;
    except
      on E: Exception do
      begin
        WRLog(E.Message);
      end;
    end;

    // Aqui verifica se tem TEF
    Venda_Financeiro_Tef.First;
    while not Venda_Financeiro_Tef.eof do
    begin
      if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Pendente' then
        ATemTef := True;
      Venda_Financeiro_Tef.Next;
    end;

    // Aqui verifica quantas opções estão disponíveis de NF.
    AOpcoesDisponiveis := 0;
    for I := 0 to tcNotaFiscal.Items.Count - 1 do
    begin
      if tcNotaFiscal.Items[I].Visible then
        AOpcoesDisponiveis := AOpcoesDisponiveis + 1;
    end;

    try
      if DS.DataSet.FieldByName('TEM_IMPRESSO').AsString<>'S' then
      begin
        // Caso exista mais de uma opção de nota, tem que selecionar qual.
        if ((cbNFSemTEF.EditText = 'Pergunta') and not ATemTef) or
           ((AOpcoesDisponiveis > 1) and ((cbNFSemTEF.EditText = 'Emite') or ATemTef)) then
          tiNF_PDV.tag := TFrmPDV_TipoNF_Selecao.GetOpcaoNF_Selecionada(tcNotaFiscal, cbNFSemTEF.EditText, ATemTef, Self);
      end;
    except
      on E: Exception do
      begin
        WRLog(E.Message);

        ShowMessage('Ocorreu um erro ao selecionar tipo de Nota..');
        Exit;
      end;
    end;
    if tiNF_PDV.tag = 99 then  //99 foi feito pra sair se clicar esc
      Exit;

    // Se for menor que zero, nenhuma opção de nota foi selecionada.
    // Se tiver Tef tem que cancelar.
    if ATemTef and (tiNF_PDV.tag < 0) then
    begin
      ShowMessage('Não é possível finalizar venda com TEF sem emitir nota fiscal.');
      Exit;
    end;

    // Verifica se existe parcela com tef para venda sem NFe.
    if not ATemTef and (cbNFSemTEF.EditText = 'Não Emite') then
      tiNF_PDV.tag := -1;
    WRLog('Fim do Verifica Parcelas ' + ' Usuario: '+ usuario.Nome);
    {$ENDREGION}

  {$REGION '----PASSO 1 - IMPRIME MODELO NÃO FISCAL e FISCAL --------------------------------------'}
    // Imprimir NFe, ImprimirNFSe, Imprimir NFCe, Imprimir não-fiscal
    // Se a nota não for aprovada, e quiser arrumar, cancela todos os pagamentos.
    // OBS: As funções Emite não devem ser utilizadas para Imprimir.
    WRLog(' Vai verificar qual nota vai imprimir ' + ' Usuario: '+ usuario.Nome);
    if tiNF_PDV.tag <> -1 then  // Sem nenhum selecionado é -1
    begin
      ErroDocFiscal := False;
      ImpDocumentoOK := False;
      while not ImpDocumentoOK do
      begin
        if DS.DataSet.FieldByName('TEM_IMPRESSO').AsString <> 'S' then
        begin
          try
            case tiNF_PDV.tag of
              //NF-e
              0: AchouEmiteNFeTEF;

              //NFC-e
              1: AchouEmiteNFCeTEF;

              //NFS-e
              2: AchouEmiteNFSeTEF;

              //Não fiscal
              3:
              begin
                WRLog(' Escolheu não fiscal ' + ' Usuario: '+ usuario.Nome);
                // Aqui deve ler o Ini.
                // Se for obrigatório imprimir modelo não fiscal, é obrigatório ter modelo configurado
                INI := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');
                try
                  if INI.ReadInteger('NaoFiscal', 'Obrigatorio', 0) = 1 then
                  begin
                    // to-do: Aqui deve testar se é obrigatório ou não.
                    DMImpressaoImprimirPorNomeComImpressoraECopias(Self,
                                                 INI.ReadString('NaoFiscal', 'ModeloImpressao', ''),
                                                 INI.ReadString('NaoFiscal', 'ImpressoraPadrao', 'Padrão'),
                                                 INI.ReadInteger('NaoFiscal', 'QtdeCopias', 1),
                                                 nil,
                                                 INI.ReadInteger('NaoFiscal', 'VisualizarAntesDeImprimir', 0) = 0);
                                                 // VisualizarAntes = ImprimirDireto = 0 = True
                    DS.DataSet.Edit;
                    DS.DataSet.FieldByName('TEM_IMPRESSO').AsString:='S';

                    WRLog('Chamou o Evento StatusVenda; Rotina: FinalizarVenda; ' + ' Usuario: '+ usuario.Nome);
                  end;
                finally
                  INI.Free;
                end;
              end;
            end;
            ImpDocumentoOK := DS.DataSet.FieldByName('TEM_IMPRESSO').AsString = 'S';

            if not ImpDocumentoOK then
            begin
              MR := MessageDlg('Falha no Documento Fiscal' + sLineBreak + 'Tentar novamente?', mtConfirmation, [mbYes, mbNo], 0);

              if (MR <> mrYes) then
                Exit;
      //          raise Exception.Create('Erro no Documento Fiscal')
            end;
          except
            on E:Exception do
            begin

              WRLog(E.Message);
              ShowMessage(' '+
                          e.Message);
              ImpDocumentoOK := False;
              ErroDocFiscal := True;
              if not ImpDocumentoOK then
              begin
                MR := MessageDlg('Falha no Documento Fiscal' + sLineBreak + 'Tentar novamente?', mtConfirmation, [mbYes, mbNo], 0);

                if (MR <> mrYes) then
                  Exit;
        //          raise Exception.Create('Erro no Documento Fiscal')
              end;

            end;
          end;
        end else
          ImpDocumentoOK := True;
      end;
    end; 
    WRLog('fim da rotina de imprimir nota ' + ' Usuario: '+ usuario.Nome);
  {$ENDREGION}

  {$REGION '----PASSO 2 - IMPRIMIR TRANSAÇÕES PENDENTES E VERIFICAR --------'}
    WRLog('verifica transacoes pendentes ' + ' Usuario: '+ usuario.Nome);
    if DS.DataSet.FieldByName('TEM_IMPRESSO_TEF').AsString <> 'S' then
    begin
      // Aqui precisa trocar para finalizada para confirmar o TEF.
      // OBS: este comando NÃO COMMITA.
      Venda.Status := stsFinalizada;
      // Aqui caso não aprove todas, cancela a nota, deve tentar aprovar novamente?.


      for AIndicePagto := 0 to Venda.Pagamentos.Count - 1 do
      begin
        if (Venda.Pagamentos[AIndicePagto].NSU <> '') then
          PodeConfirmarTef := True;
      end;

      if PodeConfirmarTef then
      begin
        if ACBrTEFD1.Inicializado(TACBrTEFDTipo(FGP)) then
        begin
          ACBrTEFD1.ImprimirTransacoesPendentes();
        end
        else
        begin
          Venda.Status := stsOperacaoTEF;
          Ativar;
        end;

      end;

      if chkObrigatorioImprimirNaoFiscal.Checked then
      begin
        SL := TStringList.Create;
        try
          for AIndicePagto := 0 to Venda.Pagamentos.Count - 1 do
          begin
            // Ao invés do relatório abaixo, você deve enviar a impressão de um DANFCE ou Extrato do SAT
            SL.Add(PadCenter( ' COMPROVANTE DE OPERAÇÃO ', ACBrPosPrinter1.Colunas, '-'));
            SL.Add('Número: <n>' + Venda.CodVenda + '</n>');
            SL.Add('Data/Hora: <n>' + FormatDateTimeBr(Venda.DHInicio) + '</n>');
            SL.Add('</linha_simples>');
//            SL.Add(Venda.Pagamentos[AIndicePagto].Rede);
//            SL.Add('DOC: <n>' + Venda.CodVenda + '  AUT: <n>' + Venda.Pagamentos[AIndicePagto].NSU);
//            SL.Add(UltResp.ModalidadePagtoExtenso);
//            SL.Add('Valor: <n>' + FloatToStr(Venda.Pagamentos[AIndicePagto].ValorPago)
            SL.Add('Valor Inicial...: <n>' + FormatFloatBr(Venda.ValorInicial) + '</n>');
            SL.Add('Total Descontos.: <n>' + FormatFloatBr(Venda.TotalDesconto) + '</n>');
            SL.Add('Total Acréscimos: <n>' + FormatFloatBr(Venda.TotalAcrescimo) + '</n>');
            SL.Add('</linha_simples>');
            SL.Add('VALOR FINAL.....: <n>' + FormatFloatBr(Venda.TotalVenda) + '</n>');
            SL.Add('');
            SL.Add(PadCenter( ' Pagamentos ', ACBrPosPrinter1.Colunas, '-'));
            for i := 0 to Venda.Pagamentos.Count-1 do
            begin
              with Venda.Pagamentos[i] do
              begin
                if not Cancelada then
                SL.Add(PadSpace( TipoPagamento+' - '+DescricaoTipoPagamento(TipoPagamento)+'|'+
                FormatFloatBr(ValorPago)+'|'+Rede, ACBrPosPrinter1.Colunas, '|') );
              end;
            end;
            SL.Add('</linha_simples>');
            SL.Add('Total Pago......: <n>' + FormatFloatBr(Venda.TotalPago) + '</n>');
            if (Venda.Troco > 0) then
              SL.Add('Troco...........: <n>' + FormatFloatBr(Venda.Troco) + '</n>');
            SL.Add('</linha_dupla>');
            SL.Add('</corte>');
          end;

          while not FImprimiuNaoFiscal do
          begin
//            try
//              AtivarPosPrinter;
//            except
//              On E: Exception do
//              begin
//                WRLog(E.Message);
//                TratarException(nil, E);
//              end;
//            end;
            AdicionarLinhaImpressao(SL.Text);

            if not FImprimiuNaoFiscal then
            begin
              MR := MessageDlg('Falha na impressão do documento não fiscal' + sLineBreak + 'Tentar novamente?', mtConfirmation, [mbYes, mbNo], 0);

              if (MR <> mrYes) then
              begin
                ShowMessage('Não foi possível finalizar a venda');
                WRLog(usuario.Login + ' escolheu NÃO tentar novamente ao ter falha na impressão não fiscal');
                Exit;
              end;
              WRLog(usuario.Login + ' escolheu tentar novamente ao ter falha na impressão não fiscal');
            end;
          end;
        finally
          SL.Free;
        end;
      end;

      Venda_Financeiro_Tef.First;
      while not Venda_Financeiro_Tef.eof do
      begin
        if Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString = 'Pendente' then
        begin
          ShowMessage('Houve inconsistência na transação TEF.' + sLineBreak + 'Para sua segurança, a Nota Fiscal e a Venda serão CANCELADAS.');
//          // Se cair aqui tem que cancelar a nota.   //ESSA REGRA É EXCLUSIVA DO ESTONAR
//          case tiNF_PDV.tag of
//            //NF-e
//            0: AchouCancelarNFeInconsistentePDV;
//
//            //NFC-e
//            1: AchouCancelarNFeInconsistentePDV;
//
//            //NFS-e
//  //          2: AchouCancelarNFSe;
//          end;
//          // Esta venda será cancelada, deseja duplicar esta venda?

          tiEstornar.Click;
//          CancelarVenda;
//          Close;
//          AchouPoupCopiarVendacomProdutosClick(nil);
//
//          Exit;
        end;

        Venda_Financeiro_Tef.Next;
      end;
    end;
     WRLog('fim do verifica transacoes pendentes ' + ' Usuario: '+ usuario.Nome);
  {$ENDREGION}

//    if FImprimiuNaoFiscal then
//    begin
//      DS.DataSet.FieldByName('TEM_IMPRESSO_TEF').AsString := 'S';
//    end;

    // Regra:
    //  Se Foi impresso ou não impresso documentos criar um log informando qual botão que o Usúário selecionou.
    //  Colocar na menssagem que o usuário Selecionou a Opção Simples ou sem nota, para desativar essas opções, ir as configurações do PDV

  //      raise Exception.Create('Erro no Documento Fiscal');        }
  //
  //    // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT) Ou,
  //    // Gravar Qual Opção o usuário registrou e Comitar, Pode ser Sem Nota ou Simples
  ////    ImpDocumentoOK := Faturar_Impressao;
  //  end;

      // AQUI você deve Chamar uma Rotina para Gerar e Transmitir o Documento Fiscal (NFCe ou SAT) Ou,
      // Gravar Qual Opção o usuário registrou e Comitar, Pode ser Sem Nota ou Simples
  //    ImpDocumentoOK := Faturar_Impressao;
  //  end;

  // Regra:
  // Se tiver Tef
  // Se tiver NSU
  // Se tiver Tef sem, impressão pedir senha( ter uma configuração para desativar mais sempre marcar quem fez essa operação e disse que não queria imprimir)
  // Logo após a confirmação dos NSU, Editar a venda e Criar Log impormando que foi Confirmado as transações TEF, pelo usuário Tal e se foi impresso o comprovante ou não
   { if Not Faturar_Confirmar_tef then
      AOK := False;
                      }

    {$REGION '----PASSO 3 - FATURA A VENDA -----------------------------------'}
    WRLog(' vai entrar no faturamento ' + ' Usuario: '+ usuario.Nome);
    AchoubtnFaturamento;   // Isso aqui ja tem vida própria, la deve informar que a venda foi finalizada
    // Só pode colocar stsFinalizada no faturar
    // OBS: este comando COMMITA.
    SetStatusVenda(stsFinalizada);
    // Caso não dê certo o commit, acontece o que?
    // Se não conseguiu faturar, pelo menos o fiscal tá garantido
    // Se tiver venda, não Finalizada Fica em Loop, e não permite faturar outra venda
    // Rera:
    // Só pode finalizar a venda na rotina de Faturamento
    // Se tiver venda em pagamento, não permitir, fazer outra venda
    if Not (ds.DataSet.FieldByName('DT_Faturamento').AsDateTime > 0) then
    begin
      ShowMessage('Não foi possível faturar a venda.'+
                  'Por favor retenha a impressão.');
      ImpDocumentoOK := False;
      WRLog('NÃO Faturou a venda ' + ' Usuario: '+ usuario.Nome);
    end else
    begin
      WRLog(' Faturou a venda ' + ' Usuario: '+ usuario.Nome);
    end;
    {$ENDREGION}

  except
    SetStatusVenda(stsCancelada);
  end;

end;

procedure TFrmPDV_Pagamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Assigned(Venda) then
  begin
    if Venda.Status = stsEmPagamento then
    begin
      ShowMessage('Não é possível fechar. Estorne os pagamentos(F4) ou finalize a venda');
      CanClose := False
    end
    else
      CanClose := True;
  end;
end;

procedure TFrmPDV_Pagamento.FormCreate(Sender: TObject);
var
  I: TACBrTEFDTipo;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
  AImpressoraAtiva: String;
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(self);
  Venda_Financeiro_Tef.Open;
  // TipoPagamento.Open;

  /// /////////////////////////////////

  cbxGP.Items.Clear;
  For I := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
    cbxGP.Items.Add(GetEnumName(TypeInfo(TACBrTEFDTipo), Integer(I)));
  cbxGP.ItemIndex := 4; // CLITEF

  cbxModeloPosPrinter.Items.Clear;
  For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add(GetEnumName(TypeInfo(TACBrPosPrinterModelo), Integer(N)));

  cbxPagCodigo.Items.Clear;
  For O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
    cbxPagCodigo.Items.Add(GetEnumName(TypeInfo(TACBrPosPaginaCodigo), Integer(O)));

  ImageList1.GetBitmap(2, btSalvarParametros.Glyph);
  ImageList1.GetBitmap(4, btTestarPosPrinter.Glyph);
  ImageList1.GetBitmap(4, btImprimir.Glyph);
  ImageList1.GetBitmap(5, btTestarTEF.Glyph);
  ImageList1.GetBitmap(6, btnSerial.Glyph);
  ImageList1.GetBitmap(7, btLimparImpressora.Glyph);
  ImageList1.GetBitmap(12, btnProcurarImpressora.Glyph);

  LimparMensagensTEF;
  // Venda.Status := High(TStatusVenda); // Força atualizar tela    Não pode aqui
  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
  FTestePayGo := 0;
  FIndicePagto := '';

  Application.OnException := TratarException;
  ACBrTEFD1.TEFCliSiTef.OnObtemCampo := ACBrTEFD1CliSiTefObtemCampo;
  btnProcurarImpressora.Click;

  /// /////////////////////////////////

  PreencheLookupVenda_CondicaoPagto(cbxCondicaoPagto.Properties);
  GrupoTabs.TabbedOptions.HideTabs := True;

  // LerConfiguracao;
  LimparMensagensTEF;

  FTipoBotaoOperacao := High(TTipoBotaoOperacao); // Força atualizar tela

  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
  FTestePayGo := 0;
  FIndicePagto := '';

  // Application.OnException := TratarException;
  ACBrTEFD1.TEFCliSiTef.OnObtemCampo := ACBrTEFD1CliSiTefObtemCampo;

  // btProcuraImpressoras.Click;


end;

procedure TFrmPDV_Pagamento.FormDestroy(Sender: TObject);
begin
  Venda_Financeiro_Tef.Close;
  Tipo_Pagamento_Configuracao.Close;
  FVenda.Free;
end;

procedure TFrmPDV_Pagamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 27)then
  begin
    if(pnlDesconto.Visible) then
    begin
      FechaPanelForm(pnlDesconto);
      Key := 0;
    end else
    if(pnlCPF.Visible) then
    begin
      FechaPanelForm(pnlCPF);
      Key := 0;
    end else
    if(pnlAcrescimo.Visible) then
    begin
      FechaPanelForm(pnlAcrescimo);
      Key := 0;
    end else
    if(tiOperacao.Visible and tiOperacao.Enabled) then
    begin
      tiOperacao.Click;
      Key := 0;
    end;
  end;
  if (Key = VK_RETURN)then
  begin
    if(pnlDesconto.Visible) then
    begin
      btnConfirmaDesconto.Click;
      Key := 0;
    end else
    if(pnlAcrescimo.Visible) then
    begin
      btnConfirmaAcrescimo.Click;
      Key := 0;
    end else
    if(pnlCPF.Visible) then
    begin
      btnConfirmaCPF.Click;
      Key := 0;
    end else
    begin
      Perform (wm_nextdlgctl, 0, 0);
      Key := 0;
    end;
  end;
  // if (Key = VK_F9) then
  // btnFinalizarNormal.Click;
  // if (Key = VK_F10) and (Empresa.FieldByName('EMITE_NFCE').AsString = 'S') then
  // btnGerarNFCe.Click;
  if IsAltGRPressed then
  begin
    case Key of
      // 70:
      // tcFinalizaVenda.Click; // F
      68:
        tcCartao.Click; // C
      // 86 : tcDoc_Credito.Click; // V
      88:
        tcCrediario.Click; // X
      77:
        btnMenu.Click; // M

    end;
  end;
  case Key of
    VK_F1:
      tcIdentifcaCPF.Click;
    VK_F2:
      if not pnlCPF.Visible then
        tiAcrescimo.Click
      else
        btnCPFPinPad.Click;
    VK_F3:
      tiDesconto.Click;
    VK_F4:
      tiEstornar.Click;
    VK_F6:
      tcDinheiro.Click;
    VK_F7:
      tcCartao.Click;
    VK_F8:
      tcMenuItem2.Click;
    VK_F9:
      tcMenuItem1.Click;
    VK_F10:
      tcMenuItem3.Click;
  end;
end;

procedure TFrmPDV_Pagamento.FormShow(Sender: TObject);
begin
  tcMenuPagamento.SetFocusWR;
  lblFuncionario.Caption := Usuario.Login;

  cxbFuncionario.Style.BorderStyle:=ebsNone;
  // IniciarOperacao;
end;

function TFrmPDV_Pagamento.GetNomeArquivoVenda: String;
begin
  Result := ApplicationPath + 'Caixa' + IntToStr(FCodConta) + '_Venda.ini'; // A Configuração deve ficar atrelada ao caixa
end;

function TFrmPDV_Pagamento.GetStatusVenda: TStatusVenda;
begin
  Result := Venda.Status;
end;

procedure TFrmPDV_Pagamento.GravarConfiguracao(CodConta: Integer);
Var
  INI: TIniFile;
begin
  AdicionarLinhaLog('- GravarConfiguracao');

  INI := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(CodConta) + '_Configuracao_PDV.ini');
  try
    INI.WriteInteger('PosPrinter', 'Modelo', cbxModeloPosPrinter.ItemIndex);
    INI.WriteString('PosPrinter', 'Porta', cbxPorta.Text);
    INI.WriteInteger('PosPrinter', 'PaginaDeCodigo', cbxPagCodigo.ItemIndex);
    INI.WriteString('PosPrinter', 'ParamsString', ACBrPosPrinter1.Device.ParamsString);
    INI.WriteInteger('PosPrinter', 'Colunas', seColunas.Value);
    INI.WriteInteger('PosPrinter', 'EspacoLinhas', seEspLinhas.Value);
    INI.WriteInteger('PosPrinter', 'LinhasEntreCupons', seLinhasPular.Value);
    INI.WriteString('PosPrinter', 'ObrigatorioImpressaoNaoFiscal', ifthen(chkObrigatorioImprimirNaoFiscal.Checked, 'S', 'N'));

    INI.WriteInteger('TEF', 'GP', cbxGP.ItemIndex);
    // INI.WriteString('TEF', 'Log', edLog.Text);
    INI.WriteInteger('TEF', 'MaxCartoes', seMaxCartoes.Value);
    INI.WriteFloat('TEF', 'TrocoMaximo', ceTrocoMaximo.Value);
    INI.WriteBool('TEF', 'ImprimirViaReduzida', cbIMprimirViaReduzida.Checked);
    INI.WriteBool('TEF', 'MultiplosCartoes', cbMultiplosCartoes.Checked);
    INI.WriteBool('TEF', 'ConfirmarAntesComprovantes', cbConfirmarAntesComprovantes.Checked);
    INI.WriteInteger('TEF', 'QRCode', cbxQRCode.ItemIndex);
    INI.WriteBool('TEF', 'SuportaDesconto', cbSuportaDesconto.Checked);
    INI.WriteBool('TEF', 'SuportaSaque', cbSuportaSaque.Checked);
    INI.WriteBool('TEF', 'SuportaReajusteValor', cbSuportaReajusteValor.Checked);
    INI.WriteString('TEF', 'CNPJEstabelecimento', FCNPJCPF);//OnlyNumberWR(FCNPJCPF));
    INI.WriteString('TEF', 'CodigoLoja', edCodigoLoja.Text);
    // INI.WriteString('TEF', 'CodigoConta', IntToStr(FCodConta));

    // 0 - não fazer nada | 1 - processar | 2 - cancelar/estornar
    INI.WriteInteger('TEF', 'PendenciaInicializacao', cbxTransacaoPendenteInicializacao.ItemIndex);

    // 0 - Confirmar| 1 - Estornar | 2 - Perguntar
    INI.WriteInteger('TEF', 'TransacaoPendente', cbxTransacaoPendente.ItemIndex);

    // 0 - Imprimir | 1 - Perguntar | 2 - Não Imprimir
    INI.WriteInteger('TEF', 'ImprimirViaCliente', cbxImpressaoViaCliente.ItemIndex );

    INI.WriteString('Aplicacao', 'RazaoSocial', 'WR Comercial LTDA');
    INI.WriteString('Aplicacao', 'Registro', edRegistro.Text);
    INI.WriteString('Aplicacao', 'Nome', 'Office Impresso');
    INI.WriteString('Aplicacao', 'Versao', '2022');

    // Configuraçoes Impressão Não Fiscal
    INI.WriteString('NaoFiscal', 'ImpressoraPadrao', cbImpressoraNaoFiscal.EditText);
    INI.WriteString('NaoFiscal', 'ModeloImpressao', cbSelecionarImpressaoNaoFiscal.EditText);
    Ini.WriteInteger('NaoFiscal', 'QtdeCopias', seNumeroCopiasNaoFiscal.Value);
    Ini.WriteInteger('NaoFiscal', 'Obrigatorio', ifThen(chkObrigatorioNaoFiscal.Checked, 1, 0));
    Ini.WriteInteger('NaoFiscal', 'VisualizarAntesDeImprimir', ifThen(chkVisualizarNaoFiscal.Checked, 1, 0));
    Ini.WriteString('NaoFiscal', 'InformacoesAdicionais', edtMensagemNaoFiscal.Text);
    Ini.WriteString('NaoFiscal', 'NotaSemTef', cbNFSemTEF.EditText);
    // Configuraçoes NFe
    Ini.WriteString('NFe', 'ImpressoraPadrao', cbImpressoraNFe.EditText);
    Ini.WriteInteger('NFe', 'QtdeCopias', seNumeroCopiasNFe.Value);
    Ini.WriteInteger('NFe', 'VisualizarAntesDeImprimir', ifThen(chkVisualizarNFe.Checked, 1, 0));
    Ini.WriteString('NFe', 'InformacoesAdicionais', edtMensagemNFe.Text);

    // Configuraçoes NFCe
    Ini.WriteString('NFCe', 'ImpressoraPadrao', cbImpressoraNFCe.EditText);
    Ini.WriteInteger('NFCe', 'QtdeCopias', seNumeroCopiasNFCe.Value);
    Ini.WriteInteger('NFCe', 'VisualizarAntesDeImprimir', ifThen(chkVisualizarNFCe.Checked, 1, 0));
    Ini.WriteString('NFCe', 'InformacoesAdicionais', edtMensagemNFCe.Text);


    // Configuraçoes NFSe
    Ini.WriteString('NFSe', 'ImpressoraPadrao', cbImpressoraNFSe.EditText);
    Ini.WriteInteger('NFSe', 'QtdeCopias', seNumeroCopiasNFSe.Value);
    Ini.WriteInteger('NFSe', 'VisualizarAntesDeImprimir', ifThen(chkVisualizarNFSe.Checked, 1, 0));
    Ini.WriteString('NFSe', 'InformacoesAdicionais', edtMensagemNFSe.Text);

  finally
    INI.Free;
  end;
end;

procedure TFrmPDV_Pagamento.IniciarOperacao;
begin
  Venda.Ler;
  // Venda.Clear;
  Venda.CodVenda := DS.DataSet.FieldByName('CODIGO').AsString; // Só pode cair aqui se for;
  Venda.DHInicio := now;
  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
end;

procedure TFrmPDV_Pagamento.irEscolhaCaixa;
begin
  AdicionarLinhaLog('- irEscolhaCaixa');
  // Deve escolher um caixa para esse usuário
  CodConta := TFrmFinanceiro_Contas_Escolha.SelecionarContaCaixa;
end;

procedure TFrmPDV_Pagamento.IrParaConfiguracao;
begin
  AdicionarLinhaLog('- IrParaConfiguracao');
  if CodConta = 0 then // Selecione primeiro um Caixa Pô
  begin
    CodConta := TFrmFinanceiro_Contas_Escolha.SelecionarContaCaixa;
    if CodConta = 0 then
      Exit;
  end;
  TabMenuConfiguracoes.MakeVisible;
  // Se for configuracao é assim
  Desativar;
end;

procedure TFrmPDV_Pagamento.IrParaOperacaoTEF;
begin
  AdicionarLinhaLog('- IrParaOperacaoTEF');
  Ativar;
  { btMudaPagina.Caption := 'Configuração';
    btMudaPagina.Glyph := nil;
    ImageList1.GetBitmap(0, btMudaPagina.Glyph);
    pgPrincipal.ActivePage := tsOperacao;
    btImprimir.Enabled := ACBrPosPrinter1.Ativo;
    cbEnviarImpressora.Enabled := ACBrPosPrinter1.Ativo;
    cbEnviarImpressora.Checked := cbEnviarImpressora.Enabled; }
  WRLog('Chamou o Evento StatusVenda; Rotina: IrParaOperacaoTEF; ' + ' Usuario: '+ usuario.Nome);
  SetStatusVenda(stsLivre);
end;

procedure TFrmPDV_Pagamento.LerConfiguracao;
Var
  INI: TIniFile;
  APosPrinterModelo, ATEFTipo, APaginaCodigo, AQRCode, ATagNFe: Integer;
  QuerX: TFDQuery;
  AModeloPadraoNF: String;
begin
  if Not(FCodConta > 0) then
    Exit;

  AdicionarLinhaLog('- LerConfiguracao');
  INI := TIniFile.Create(GetDirSistema + 'Caixa' + IntToStr(FCodConta) + '_Configuracao_PDV.ini');
  try
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo(INI.ReadInteger('PosPrinter', 'Modelo', 1));
    ACBrPosPrinter1.Porta := INI.ReadString('PosPrinter', 'Porta', ACBrPosPrinter1.Porta);
    ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo(INI.ReadInteger('PosPrinter', 'PaginaDeCodigo', 2));
    ACBrPosPrinter1.Device.ParamsString := INI.ReadString('PosPrinter', 'ParamsString', '');
    ACBrPosPrinter1.ColunasFonteNormal := INI.ReadInteger('PosPrinter', 'Colunas', 40);
    ACBrPosPrinter1.EspacoEntreLinhas := INI.ReadInteger('PosPrinter', 'EspacoLinhas', 0);
    ACBrPosPrinter1.LinhasEntreCupons := INI.ReadInteger('PosPrinter', 'LinhasEntreCupons', 0);
    chkObrigatorioImprimirNaoFiscal.Checked := INI.ReadString('PosPrinter', 'ObrigatorioImpressaoNaoFiscal', 'N') = 'S';
    FGP := INI.ReadInteger('TEF', 'GP', 0);
    case FGP of
      0:
        ACBrTEFD1.GPAtual := gpNenhum;
      1:
        ACBrTEFD1.GPAtual := gpTefDial;
      2:
        ACBrTEFD1.GPAtual := gpTefDisc;
      3:
        ACBrTEFD1.GPAtual := gpHiperTef;
      4:
        ACBrTEFD1.GPAtual := gpCliSiTef;
      5:
        ACBrTEFD1.GPAtual := gpTefGpu;
      6:
        ACBrTEFD1.GPAtual := gpVeSPague;
      7:
        ACBrTEFD1.GPAtual := gpBanese;
      8:
        ACBrTEFD1.GPAtual := gpTefAuttar;
      9:
        ACBrTEFD1.GPAtual := gpGoodCard;
      10:
        ACBrTEFD1.GPAtual := gpFoxWin;
      11:
        ACBrTEFD1.GPAtual := gpCliDTEF;
      12:
        ACBrTEFD1.GPAtual := gpPetrocard;
      13:
        ACBrTEFD1.GPAtual := gpCrediShop;
      14:
        ACBrTEFD1.GPAtual := gpTicketCar;
      15:
        ACBrTEFD1.GPAtual := gpConvCard;
      16:
        ACBrTEFD1.GPAtual := gpCappta;
      17:
        ACBrTEFD1.GPAtual := gpPayGo;
      18:
        ACBrTEFD1.GPAtual := gpPayGoWeb;
    end;
    if FGP = 4 then // ACBrTEFD1.GPAtual = gpCliSiTef
    begin
      ACBrTEFD1.TEFCliSiTef.CodigoLoja := INI.ReadString('TEF', 'CodigoLoja', '0000'); // Empresa.FieldByName('TEF_CODIGO_LOJA').AsString;
      ACBrTEFD1.TEFCliSiTef.CNPJEstabelecimento := INI.ReadString('TEF', 'CNPJEstabelecimento', ''); // OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString);
    end;
    ACBrTEFD1.ArqLOG := INI.ReadString('TEF', 'Log', '');
    ACBrTEFD1.NumeroMaximoCartoes := INI.ReadInteger('TEF', 'MaxCartoes', 5);
    ACBrTEFD1.TrocoMaximo := trunc(INI.ReadFloat('TEF', 'TrocoMaximo', 0));
    ACBrTEFD1.ImprimirViaClienteReduzida := INI.ReadBool('TEF', 'ImprimirViaReduzida', False);
    ACBrTEFD1.MultiplosCartoes := INI.ReadBool('TEF', 'MultiplosCartoes', True);
    ACBrTEFD1.ConfirmarAntesDosComprovantes := INI.ReadBool('TEF', 'ConfirmarAntesComprovantes', True);

    // 0 - não fazer nada | 1 - processar | 2 - cancelar/estornar
    cbxTransacaoPendenteInicializacao.ItemIndex := INI.ReadInteger('TEF', 'PendenciaInicializacao', 2);

    // 0 - Confirmar| 1 - Estornar | 2 - Perguntar
    cbxTransacaoPendente.ItemIndex := INI.ReadInteger('TEF', 'TransacaoPendente', 1);

    // 0 - Imprimir | 1 - Perguntar | 2 - Não Imprimir
    cbxImpressaoViaCliente.ItemIndex := INI.ReadInteger('TEF', 'ImprimirViaCliente', 0);

    // FCodConta := StrToInt(INI.ReadString('TEF', 'CodigoConta', '1'));

    AQRCode := INI.ReadInteger('TEF', 'QRCode', 0);
    if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    begin
      case AQRCode of
        3, 4:
          ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=1}'; { No CheckOut }
      else
        ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=0}'; { No PinPad }
      end;
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 122;
    end;

    ACBrTEFD1.SuportaDesconto := INI.ReadBool('TEF', 'SuportaDesconto', True);
    ACBrTEFD1.SuportaSaque := INI.ReadBool('TEF', 'SuportaSaque', True);

    //PAYGO SOMENTE ATÉ ONDE VI
    cbSuportaReajusteValor.Checked := INI.ReadBool('TEF', 'SuportaReajusteValor', True);

    // Configurações abaixo são obrigatórios, para funcionamento de Não Fiscal //
    ACBrTEFD1.AutoEfetuarPagamento := False;
    ACBrTEFD1.AutoFinalizarCupom := False;

    ACBrTEFD1.Identificacao.RazaoSocial := INI.ReadString('Aplicacao', 'RazaoSocial', 'WR Comercial LTDA');
    ACBrTEFD1.Identificacao.RegistroCertificacao := INI.ReadString('Aplicacao', 'Registro', '');
    ACBrTEFD1.Identificacao.NomeAplicacao := INI.ReadString('Aplicacao', 'Nome', 'Office Impresso');
    ACBrTEFD1.Identificacao.VersaoAplicacao := INI.ReadString('Aplicacao', 'Versao', '2022');

    // Atualiza Configurações TEF
    seMaxCartoes.Value := ACBrTEFD1.NumeroMaximoCartoes;
    ceTrocoMaximo.Value := ACBrTEFD1.TrocoMaximo;
    cbImprimirViaReduzida.Checked := ACBrTEFD1.ImprimirViaClienteReduzida;
    cbConfirmarAntesComprovantes.Checked := ACBrTEFD1.ConfirmarAntesDosComprovantes;
    cbMultiplosCartoes.Checked := ACBrTEFD1.MultiplosCartoes;
    cbSuportaDesconto.Checked := ACBrTEFD1.SuportaDesconto;
    cbSuportaSaque.Checked := ACBrTEFD1.SuportaSaque;
    edCodigoLoja.Text := ACBrTEFD1.TEFCliSiTef.CodigoLoja;
    cbxQRCode.ItemIndex := INI.ReadInteger('TEF', 'QRCode', 0);

    // Atualiza Configurações Impressora
    cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo', 1);
    cbxPorta.Text := ACBrPosPrinter1.Porta;
    seEspLinhas.Value := ACBrPosPrinter1.EspacoEntreLinhas;
    seLinhasPular.Value := ACBrPosPrinter1.LinhasEntreCupons;
    seColunas.Value := ACBrPosPrinter1.ColunasFonteNormal;
    cbxPagCodigo.ItemIndex := INI.ReadInteger('PosPrinter', 'PaginaDeCodigo', 1);
//    cbSuportaReajusteValor = TEF, SuportaReajusteValor 0 1

    // Dinheiro
    tcDinheiro.Visible := INI.SectionExists('CodigoTipoDePagamento=01');

    // Credito
    tcCartao.Visible := INI.SectionExists('CodigoTipoDePagamento=03');

    // Debito
    tcMenuItem2.Visible := INI.SectionExists('CodigoTipoDePagamento=04');

    // Convenio
    tcMenuItem1.Visible := INI.SectionExists('CodigoTipoDePagamento=05');

    // Cheque
    tcMenuItem3.Visible := INI.SectionExists('CodigoTipoDePagamento=02');

    // Carteira
    tcMenuItem5.Visible := INI.SectionExists('CodigoTipoDePagamento=17');
    
    // Credito
    tcMenuItem6.Visible := INI.SectionExists('CodigoTipoDePagamento=05');

    // Crediário
    // tcCrediario.Visible := INI.SectionExists('CodigoTipoDePagamento=05');
    MenuCondicaoPagto.Visible := False;

    // Carrega Configurações de Nota Fiscal
    tiNFe.Visible := Ini.ReadInteger('NFe', 'Habilitado', 0) = 1;
    tiNFCe.Visible := Ini.ReadInteger('NFCe', 'Habilitado', 0) = 1;
    tiNFSe.Visible := Ini.ReadInteger('NFSe', 'Habilitado', 0) = 1;

    // Carrega Configurações Padrão
    AModeloPadraoNF := Ini.ReadString('NotaFiscalPadrao', 'Modelo', 'Nenhum');

    ATagNFe := -1;
    if AModeloPadraoNF <> 'Nenhum' then
    begin
      if (AModeloPadraoNF = 'NF-e') and tiNFe.Visible then
        ATagNFe := 0;

      if (AModeloPadraoNF = 'NFC-e') and tiNFCe.Visible then
        ATagNFe := 1;

      if (AModeloPadraoNF = 'NFS-e') and tiNFSe.Visible then
        ATagNFe := 2;

    end;

    if ATagNFe >= 0 then
      CarregarPropriedadesBotaoNotaFiscal(tcNotaFiscal.Items[ATagNFe]);

    // IMPRESSÃO
    CarregaInterfaceConfiguracaoImpressao;

    // Configuraçoes Impressão Não Fiscal
    cbImpressoraNaoFiscal.EditText          := INI.ReadString('NaoFiscal', 'ImpressoraPadrao', '');
    cbSelecionarImpressaoNaoFiscal.EditText := INI.ReadString('NaoFiscal', 'ModeloImpressao', '');
    seNumeroCopiasNaoFiscal.Value           := Ini.ReadInteger('NaoFiscal', 'QtdeCopias', 0);
    chkObrigatorioNaoFiscal.Checked         := Ini.ReadInteger('NaoFiscal', 'Obrigatorio', 0) = 1;
    chkVisualizarNaoFiscal.Checked          := Ini.ReadInteger('NaoFiscal', 'VisualizarAntesDeImprimir', 0) = 1;
    edtMensagemNaoFiscal.Text               := Ini.ReadString('NaoFiscal', 'InformacoesAdicionais', '');
    cbNFSemTEF.EditText                     := Ini.ReadString('NaoFiscal', 'NotaSemTef', '');

    // Configuraçoes NFe
    cbImpressoraNFe.EditText      := Ini.ReadString('NFe', 'ImpressoraPadrao', '');
    seNumeroCopiasNFe.Value       := Ini.ReadInteger('NFe', 'QtdeCopias', 0);
    chkVisualizarNFe.Checked      := Ini.ReadInteger('NFe', 'VisualizarAntesDeImprimir', 0) = 1;
    edtMensagemNFe.Text           := Ini.ReadString('NFe', 'InformacoesAdicionais', '');

    // Configuraçoes NFCe
    cbImpressoraNFCe.EditText     := Ini.ReadString('NFCe', 'ImpressoraPadrao', '');
    seNumeroCopiasNFCe.Value      := Ini.ReadInteger('NFCe', 'QtdeCopias', 0);
    chkVisualizarNFCe.Checked     := Ini.ReadInteger('NFCe', 'VisualizarAntesDeImprimir', 0) = 1;
    edtMensagemNFCe.Text          := Ini.ReadString('NFCe', 'InformacoesAdicionais','' );

    // Configuraçoes NFSe
    cbImpressoraNFSe.EditText     := Ini.ReadString('NFSe', 'ImpressoraPadrao', '');
    seNumeroCopiasNFSe.Value      := Ini.ReadInteger('NSFe', 'QtdeCopias', 0);
    chkVisualizarNFSe.Checked     := Ini.ReadInteger('NFSe', 'VisualizarAntesDeImprimir', 0) = 1;
    edtMensagemNFSe.Text          := Ini.ReadString('NFSe', 'InformacoesAdicionais', '');

{$REGION 'Código da procedure antiga - COnfigurar TEF'}
    // AdicionarLinhaLog('- ConfigurarTEF');
    (* ACBrTEFD1.ArqLOG := edLog.Text;
      ACBrTEFD1.TrocoMaximo := seTrocoMaximo.Value;
      ACBrTEFD1.ImprimirViaClienteReduzida := cbImprimirViaReduzida.Checked;
      ACBrTEFD1.MultiplosCartoes := cbMultiplosCartoes.Checked;
      ACBrTEFD1.ConfirmarAntesDosComprovantes := cbConfirmarAntesComprovantes.Checked;
      ACBrTEFD1.NumeroMaximoCartoes := seMaxCartoes.Value;
      ACBrTEFD1.SuportaDesconto := cbSuportaDesconto.Checked;
      ACBrTEFD1.SuportaSaque := cbSuportaSaque.Checked;

      ACBrTEFD1.Identificacao.SoftwareHouse := 'WR2 Sistemas';
      ACBrTEFD1.Identificacao.RegistroCertificacao := edRegistro.Text;
      ACBrTEFD1.Identificacao.NomeAplicacao := 'Office Impresso';
      ACBrTEFD1.Identificacao.VersaoAplicacao := Versao;

      ACBrTEFD1.TEFPayGo.SuportaReajusteValor := cbSuportaReajusteValor.Checked;
      ACBrTEFD1.TEFPayGo.SuportaNSUEstendido := True;
      ACBrTEFD1.TEFPayGo.SuportaViasDiferenciadas := True;

      case FQRCode of
      0: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreNaoSuportado;
      2: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoPinPad;
      3, 4: ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreExibirNoCheckOut;
      else
      ACBrTEFD1.TEFPayGoWeb.ExibicaoQRCode := qreAuto;
      end;

      if ACBrTEFD1.GPAtual = gpCliSiTef then
      begin  // Essas Informações devem vir do Caixa, Cofiguração
      ACBrTEFD1.TEFCliSiTef.CodigoLoja := Empresa.FieldByName('TEF_CODIGO_LOJA').AsString;
      ACBrTEFD1.TEFCliSiTef.CNPJEstabelecimento := OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString);

      // SiTef precisa de parâmetros extras, vamos informar...
      ACBrTEFD1.TEFCliSiTef.PinPadIdentificador := '01123456000107';   //'01.123.456/0001-07';
      ACBrTEFD1.TEFCliSiTef.PinPadChaveAcesso := 'Chave Fornecida pela Software Express, exclusiva para o Identificador acima';
      end;

    *)
    // ACBrTEFD1.TEFPayGoWeb.DiretorioTrabalho := 'C:\PAYGOWEB';
    // ACBrTEFD1.PathBackup := 'C:\TEF\TER01';
    // ACBrTEFD1.TEFPayGoWeb.PathDLL := 'C:\DLLs';

    // Configurações abaixo são obrigatórios, para funcionamento de Não Fiscal //
    // ACBrTEFD1.AutoEfetuarPagamento := False;
    // ACBrTEFD1.AutoFinalizarCupom := False;
{$ENDREGION}
  finally
    INI.Free;
  end;

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select E.CNPJCPF,E.RAZAOSOCIAL, C.DESCRICAO from CONTAS c left join EMPRESA E on E.CODIGO = C.CODEMPRESA where C.CODIGO = :Codigo';
    QuerX.ParamByName('Codigo').AsInteger := CodConta;
    QuerX.Open;
    FCNPJCPF := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
    if FModo = 'Configuração' then
      lblStatus.Caption := QuerX.FieldByName('DESCRICAO').AsString + ' - ' + QuerX.ParamByName('Codigo').AsString;
    lblEmpresa.Caption := QuerX.FieldByName('RAZAOSOCIAL').AsString;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmPDV_Pagamento.LimparMensagensTEF;
begin
  MensagemTEF(' ', ' ');
end;

procedure TFrmPDV_Pagamento.MensagemTEF(const MsgOperador, MsgCliente: String);
begin
  if (MsgOperador <> '') then
    lMensagemOperador.Caption := MsgOperador;

//  if (MsgCliente <> '') then
//    lMensagemCliente.Caption := MsgCliente;

  pMensagemOperador.Visible := (Trim(lMensagemOperador.Caption) <> '');
//  pMensagemCliente.Visible := (Trim(lMensagemCliente.Caption) <> '');
  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  if pMensagem.Visible then
  begin
    pImpressao.Visible := True;
    pImpressao.Left:= Trunc((Self.Width - PImpressao.Width)/2);
    pImpressao.Top := Trunc((Self.Height - PImpressao.Height)/2) - 20;
//    ShowPanelForm(pImpressao, bsNone)
  end
  else
  begin
    pImpressao.Visible := False;
    pImpressao.Left:= Trunc(5000);
    pImpressao.Top := Trunc(5000);
  end;
  Application.ProcessMessages;
end;

procedure TFrmPDV_Pagamento.ExibirPainelQRCode;
begin
  if pQRCode.Visible then
    Exit;

//  mImpressao.Visible := False;
//  lSaidaImpressao.Visible := False;
  pQRCode.Visible := True;
  pQRCode.Align := alClient;
end;

procedure TFrmPDV_Pagamento.OcultatPainelQRCode;
begin
  if not pQRCode.Visible then
    Exit;

  pQRCode.Visible := False;
//  mImpressao.Visible := True;
//  lSaidaImpressao.Visible := True;
end;

procedure TFrmPDV_Pagamento.SelecionaFormaDePagamento(AKey: Word);
begin
  case AKey of
    VK_F1:
      tcIdentifcaCPF.Click;
    VK_F6:
      tcDinheiro.Click;
    VK_F7:
      tcCartao.Click;
    VK_F8:
      tcMenuItem2.Click;
    VK_F9:
      tcMenuItem1.Click;
    // 70:
    // tcFinalizaVenda.Click; // F
    68:
      tcCartao.Click; // C
    // 86 : tcDoc_Credito.Click;   // V
    88:
      tcCrediario.Click; // X
  end;
end;

procedure TFrmPDV_Pagamento.SetCodConta(const Value: Integer);
begin
  FCodConta := Value;

  LerConfiguracao;

  lblTipoVenda.Visible := False;
  lblNumOperacao.Visible := False;
  lblDataConta.Visible := False;
  lblFuncionario.Caption := Usuario.Login;
end;

procedure TFrmPDV_Pagamento.InteracaoTEF(Afuncao:String);
begin
  FWREventosCadastro.ValidaCamposObrigatorio(Self, 'CONFIRMAR');
  FWREventosCadastro.ValidaCamposObrigatorio(Self, 'PDV');
  FWREventosCadastro.ValidaCamposObrigatorio(Self, 'TEF');
  if AFuncao = 'IdentificaCPF' then
  begin
    IdentificaCPF;
    Exit;
  end;

  if AFuncao = 'ConfirmaCPF' then
  begin
    ConfirmaCPF;
    Exit;
  end;

  if AFuncao = 'AdicionaFuncionario' then
  begin
    AdicionaFuncionarioValidate;
    Exit;
  end;

  if AFuncao = 'AdicionaDesconto' then
  begin
    ConfirmaDesconto;
    Exit;
  end;

  if AFuncao = 'AdicionaAcrescimo' then
  begin
    ConfirmaAcrescimo;
    Exit;
  end;

  if AFuncao = 'TemOperacaoTefS' then
  begin
    OperacaoTEFS;
    Exit;
  end;
end;
procedure TFrmPDV_Pagamento.SetStatusVenda(AValue: TStatusVenda; Afuncao: String = '');
var
  MsgStatus: String;
begin
  try
    try
      if Afuncao <> '' then
      begin
        InteracaoTEF(Afuncao);
        Exit;
      end;

    //  if StatusVenda = AValue then
    //    Exit;

      AdicionarLinhaLog('- StatusOperacao: ' + GetEnumName(TypeInfo(TStatusVenda), Integer(AValue)));

      case AValue of
        // Status da venda: Botão NOVO
        stsIniciada:
          begin
            MsgStatus := 'EM VENDA';
            TipoBotaoOperacao := bopCancelarVenda;
            AtualizarVendaNaInterface;
            WRlog('SetStatusVenda : stsIniciada');
          end;

        // Se abrir o PDV, automaticamente vai para esse se estiver EM VENDA
        stsEmPagamento:
          begin
            FWREventosCadastro.ValidaCamposObrigatorio(TWinControl(Self.Owner), 'CONFIRMAR');
            FWREventosCadastro.ValidaCamposObrigatorio(TWinControl(Self.Owner), 'PDV');
            MsgStatus := 'EM PAGAMENTO';
            if (Venda.TotalPago >= Venda.TotalVenda) and (Venda.TotalPago > 0) then
              TipoBotaoOperacao := bopFinalizarVenda
            else
              TipoBotaoOperacao := bopCancelarVenda;
            // sgPagamentos.SetFocus;   rever isso aqui, acho que o Foco deveria ser no dinheiro
            WRlog('SetStatusVenda : stsEmPagamento');
          end;

        stsFinalizada:
          begin
            MsgStatus := 'FINALIZADA';
            TipoBotaoOperacao := bopVendaFinalizada;
            if Visible then
              tcMenuRodape.SetFocusWR;
            tcMenuRodape.Controller.FocusedItem:= tiOperacao;
            WRlog('SetStatusVenda : stsFinalizada');
          end;

        stsCancelada:
          begin
            MsgStatus := 'CANCELADA';
            TipoBotaoOperacao := bopCancelarVenda;
    //        tcMenuRodape.SetFocus;
            tcMenuRodape.Controller.FocusedItem:= tiOperacao;
            WRlog('SetStatusVenda : stsCancelada');

          end;

        // Tem que buscar as operações e comparar se as operações estão pendentes dentro do componente
        stsAguardandoTEF:
          begin
            MsgStatus := 'TRANSACAO TEF';
            TipoBotaoOperacao := bopCancelarEsperaTEF;
            WRlog('SetStatusVenda : stsAguardandoTEF');
          end;

        // Tem que buscar as operações e comparar se as operações estão pendentes dentro do componente
        stsOperacaoTEF:
          begin
            AValue := stsEmPagamento; //DE OLHO NESSA JOGADA AQUI, AQUI TEM JOGO
            MsgStatus := 'OPERAÇÃO TEF';
            TipoBotaoOperacao := bopNaoExibir;
            AtualizarVendaNaInterface;
            WRlog('SetStatusVenda : stsOperacaoTEF - stsEmPagamento');
          end;

      else
        MsgStatus := 'CAIXA LIVRE';
        TipoBotaoOperacao := bopNaoExibir;
        AtualizarCaixaLivreNaInterface;
        WRlog('SetStatusVenda : Vazio - CAIXA LIVRE');
        if tabOpercao.ActuallyVisible then
        begin
          tcMenuRodape.SetFocusWR; //AQUI DA ERRO
    //      tcMenuRodape.Controller.FocusedItem:= tiOperacao;
        end;
      end;



      tcMenuPagamento.Enabled       := (AValue = stsEmPagamento) and (TipoBotaoOperacao <> bopFinalizarVenda);
      tcIdentifcaCPF.Enabled        := (AValue <> stsFinalizada); // btAdministrativo.Enabled;
      pImpressao.Enabled            := (AValue in [stsLivre, stsFinalizada, stsCancelada]);
      lblNumOperacao.Visible        := (AValue <> stsLivre);
      tiEstornar.Enabled            := (AValue in [stsEmPagamento, stsLivre, stsFinalizada, stsCancelada]);
      tiDesconto.Enabled            := (AValue in [stsEmPagamento, stsLivre]) and (TipoBotaoOperacao <> bopFinalizarVenda);
      tiAcrescimo.Enabled           := (AValue in [stsEmPagamento, stsLivre]) and (TipoBotaoOperacao <> bopFinalizarVenda);
      // btEfetuarPagamentos.Enabled := (AValue = stsIniciada);
      // btAdministrativo.Enabled   := (AValue = stsLivre);
      // gbTotaisVenda.Enabled := (AValue in [stsLivre, stsIniciada]);     // rever isso aqui

      lblStatus.Caption := MsgStatus;

      Venda.Status := AValue;
      if (AValue <> stsLivre) then
        Venda.Gravar;

    finally
      if {(Self.Owner is TFrmVenda) or }(Self.Owner is TFrame_Venda_Mestre) {and (ds.DataSet.FieldbyName('OPERACAO').asString<>MsgStatus)}  then
      begin

          if not (DS.State in dsEditModes)then
          begin
            AchaBotaoAltera;
            WRlog('EDIT ANTIGO!');
          end;
          if MsgStatus <> '' then
            DS.DataSet.FieldbyName('OPERACAO').AsString := MsgStatus;
          if (Venda.Status = stsFinalizada) then
            DS.DataSet.FieldbyName('TEM_TEF').AsString := 'S';
    //      DS.DataSet.FieldbyName('CODCONTA_PDV').AsInteger := FCodConta;
    //
    ////      DS.DataSet.Post;
    //      if (AValue = stsCancelada) or (AValue = stsFinalizada) then
    //      begin
    //        // Se estiver na zona vermelha no quadro.
    //        if ds.DataSet.FieldbyName('TEM_OPERACAO_TEF').asString  = 'S' then
    //          ds.DataSet.FieldbyName('TEM_OPERACAO_TEF').asString := 'N'
    //      end;


      end;

//      if Self.Owner is TFrmCadM then
      AchaBotaoConfirma;
      WRlog('COMMIT NOVO!');
      if (Venda.Status <> stsFinalizada) and (Venda.Status <> stsCancelada) and (Venda.Status <> stsIniciada) then
      begin
        if not (DS.State in dsEditModes)then
        begin
          AchaBotaoAltera;
           WRlog('EDIT NOVO!');
        end;
      end;

      TFrameHistorico.AdicionaHistorico(nil, AchaUCHist_DataSet,
        'Mudou a Operacao da venda: ' + DS.DataSet.FieldbyName('OPERACAO').AsString + ' Usuario: ' + usuario.Nome);

    end;
  except
    On E: Exception do
    begin
      WRLog(E.Message);
      ShowMessage(E.Message);
      RollbackTransacao(AchaDataSetCadastro.Transaction);
      WRlog('DEU RUIM NOVO!');
    end;
  end;
end;

procedure TFrmPDV_Pagamento.SetTipoBotaoOperacao(AValue: TTipoBotaoOperacao);
var
  MsgOperacao: String;
begin
  if FTipoBotaoOperacao = AValue then
    Exit;

  MsgOperacao := '';

  case AValue of
    bopCancelarVenda, bopCancelarEsperaTEF:
      MsgOperacao := 'Cancelar';

    bopLiberarCaixa:
      MsgOperacao := 'Liberar';

    bopFinalizarVenda:
      MsgOperacao := 'Finalizar';

    bopVendaFinalizada:
      MsgOperacao := 'Liberar';
  end;

  FTipoBotaoOperacao := AValue;

  tiOperacao.Visible := (MsgOperacao <> '');
  tiOperacao.Text1.Value := MsgOperacao;
end;

procedure TFrmPDV_Pagamento.AtualizarCaixaLivreNaInterface;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select max(Codigo), DATA_FECHAMENTO, DATA_ABERTURA from CAIXA C where C.CODCONTA = :CODCONTA group by 2,3';
    QuerX.ParamByName('CODCONTA').AsInteger := FCodConta;
    QuerX.Open;
    if QuerX.FieldByName('DATA_FECHAMENTO').IsNull then
    begin
      lblStatus.Caption := 'CAIXA ABERTO';
      lblStatus.Style.Font.Color := clGreen;
      lblDataConta.Caption := 'Abertura: ' + DateToStr(QuerX.FieldByName('DATA_ABERTURA').AsDateTime);
      FDtAberturaCaixa := QuerX.FieldByName('DATA_ABERTURA').AsDateTime
    end
    else
    begin
      lblStatus.Caption := 'CAIXA FECHADO';
      lblStatus.Style.Font.Color := clRed;
      lblDataConta.Caption := 'Fechamento: ' + DateToStr(QuerX.FieldByName('DATA_FECHAMENTO').AsDateTime);
    end;
  finally
    QuerX.Free;
  end;
  AdicionarLinhaLog('- AtualizarCaixaLivreNaInterface');
  LimparMensagensTEF;

  mImpressao.Clear;
  // cbTestePayGo.ItemIndex := 0;

  AtualizarVendaNaInterface;
  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
end;

procedure TFrmPDV_Pagamento.AtualizarTotaisVendaNaInterface;
begin
  lblDesconto.Caption := FormatFloat('#,###,##0.00####', Venda.TotalDesconto);
  edtValorDesconto.Value := Venda.TotalDesconto;
  lblAcrescimo.Caption := FormatFloat('#,###,##0.00####', Venda.TotalAcrescimo);
  lblValorPago.Caption := FormatFloat('#,###,##0.00####', Venda.TotalPago);
  lblSubTotal.Caption := FormatFloat('#,###,##0.00####', Venda.ValorInicial);
  lblTotalAPagar.Caption := FormatFloat('#,###,##0.00####', Venda.TotalPago - Venda.TotalVenda);
  lblDescTotalAPagar.Caption := FormatFloat('#,###,##0.00####', Venda.TotalVenda);
  lblOutroTotalAPagar.Caption := FormatFloat('#,###,##0.00####', Venda.TotalVenda);
  lblTroco.Caption := FormatFloat('#,###,##0.00####', max(Venda.Troco, 0));
  // edtValor_Pagto.Value := Venda.TotalVenda - Venda.TotalPago;
  // if edtValor_Pagto.Value > 0 then // verificar
  // begin
  // edtValor_Pagto.SetFocusWR;
  // edtValor_Pagto.SelectAll;
  // end;
end;

procedure TFrmPDV_Pagamento.AtualizarVendaNaInterface;
begin
//  lblTipoVenda.Caption := 'Tipo de Venda: ' + DS.DataSet.FieldByName('VENDA_TIPO').AsString;
  lblTipoVenda1.Caption := 'Tipo de Venda: ' + DS.DataSet.FieldByName('VENDA_TIPO').AsString;
  lblEmpresa.Caption := Empresa.FieldByName('FANTASIA').AsString;
  lblVendaRazaoSocial.Caption := DS.DataSet.FieldByName('RAZAOSOCIAL').AsString;
  lblVendaCPF.Caption := DS.DataSet.FieldByName('RESPONSAVEL_CNPJCPF').AsString;
  cxbFuncionario.EditValue := DS.DataSet.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;

  // lblStatus
  // lblNumOperacao

  lblNumOperacao.Caption := Venda.CodVenda;
  // seValorInicialVenda.Value := Venda.ValorInicial;
  WRLog(' AtualizarVendaNaInterface Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
  AtualizarPagamentosVendaNaInterface;
end;

procedure TFrmPDV_Pagamento.BitBtn1Click(Sender: TObject);
var
  AResp: TACBrTEFResp;
  AFrmAguarde: TFrmAguarde;
  I: integer;
begin
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.ExibirCancelar := False;
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Ativando o TEF.';

//     Precisa passar para livre para usar ADM. Mas isso cancela todas as pendentes.
    if MessageDlg('Ao realizar esta operação, todas as operações TEF Pendentes serão Canceladas. '+ sLineBreak +
                  'Deseja continuar?'
                  , mtConfirmation, mbYesNo, 0) <> mrYes then
      Exit;

//    for I := 0 to 100 do
//      AResp := AcharTransacaoTEFPendente(I);
//
//    if AResp <> nil then
//    begin
//      ShowMessage('Não é possível abrir a Administração pois existem Respostas Pendentes.' + slinebreak +
//                  'Procure nos outros caixas para resolver.');
//      Exit;
//    end;

    Venda.Status := stsIniciada;
    WRLog('Status : stsIniciada');
    Ativar;

    AFrmAguarde.Close;
  finally
    AFrmAguarde.Free;
  end;

  ACBrTEFD1.ADM;
  FOperacao := ''; //Essa Variavel é definida ao Cancelar o Cupom confirmado, que é feito dentro
end;               // do ADM que só deixa fazer uma função por abertura, então a variavel é limpa assim que a função
                   // é executada
procedure TFrmPDV_Pagamento.btnVoltarClick(Sender: TObject);
begin
  lblStatus.Caption := 'CLIQUE PARA CONFIGURAR UM CAIXA';
  irEscolhaCaixa;      
end;

procedure TFrmPDV_Pagamento.btImprimirClick(Sender: TObject);
begin
  AdicionarLinhaImpressao(Venda_Financeiro_Tef.FieldByName('ARQ_IMPRESSAO').AsString);
  ACBrPosPrinter1.Buffer.Assign(mImpressao.Lines);
  ACBrPosPrinter1.Imprimir;
end;

procedure TFrmPDV_Pagamento.btLimparImpressoraClick(Sender: TObject);
begin
  mImpressao.Lines.Clear;
end;

procedure TFrmPDV_Pagamento.btnAdicionarProdutoClick(Sender: TObject);
var
  AValorPago, AValorTotalParcela: Double;
  I, AQuantidadeParcelas, AQuantDia: Integer;
begin
  AQuantidadeParcelas := StrToInt(edtParcela.Text);
  AValorPago := Venda.TotalVenda / AQuantidadeParcelas;
  AQuantidadeParcelas := AQuantidadeParcelas - 1;



  AQuantDia := 0;
  for I := 1 to AQuantidadeParcelas do
  begin
    AQuantDia := AQuantDia + StrToInt(edtIntervalo.Text);

    AdicionarPagamentoCrediario(cbxCondicaoPagto.EditValue,
                       RdT(AValorPago, -2),
                       'N',
                       cbxCondicaoPagto.Text, AQuantDia);
  end;

  DS_Financeiro.DataSet.First;
  while not DS_Financeiro.DataSet.Eof do
  begin
    AQuantDia := AQuantDia + StrToInt(edtIntervalo.Text);

    AValorTotalParcela :=  AValorTotalParcela + DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat;
    DS_Financeiro.DataSet.Next;
  end;
  AValorPago := Venda.TotalVenda - AValorTotalParcela;

  AdicionarPagamentoCrediario(cbxCondicaoPagto.EditValue,
                     RdT(AValorPago, -2),
                     'N',
                     cbxCondicaoPagto.Text, AQuantDia);
end;

procedure TFrmPDV_Pagamento.btnCancelaCPFClick(Sender: TObject);
begin
  FechaPanelForm(pnlCPF);
end;

/// ///////////////////////////////// Operações TEF Não alterar essas linhas ///////////////////////////////////////////////////

procedure TFrmPDV_Pagamento.ACBrPosPrinter1ACBrDeviceHookAtivar(
  const APort: string; Params: string);
begin
  OutputDebugString(StringToOLEStr('Port: ' + APort));
  OutputDebugString(StringToOLEStr('Params: ' + Params));
end;

procedure TFrmPDV_Pagamento.ACBrPosPrinter1ACBrDeviceHookDesativar(
  const APort: string);
begin
  OutputDebugString(StringToOLEStr('Params: ' + APort));
end;

procedure TFrmPDV_Pagamento.ACBrPosPrinter1ACBrDeviceHookEnviaString(
  const cmd: AnsiString);
begin
  OutputDebugString(StringToOLEStr('cmd: ' + cmd));
end;

procedure TFrmPDV_Pagamento.ACBrPosPrinter1ACBrDeviceHookLeString(
  const NumBytes, ATimeOut: Integer; var Retorno: AnsiString);
begin
  OutputDebugString(StringToOLEStr('NumBytes: ' + VarToStr(NumBytes)));
  OutputDebugString(StringToOLEStr('TimeOut: ' + VarToStr(ATimeOut)));
  OutputDebugString(StringToOLEStr('Retorno : ' + Retorno));
end;

procedure TFrmPDV_Pagamento.ACBrPosPrinter1ACBrDeviceStatus(Sender: TObject;
  Reason: THookSerialReason; const Value: string);
begin
  if TBlockSerial(Sender).RaiseExcept then
  begin
    FImprimiuNaoFiscal := False;
    WRLog('Erro ao imprimir no PINPAD setou FImprimiuNaoFiscal como FALSE')
  end
  else
  begin
    FImprimiuNaoFiscal := True;
    WRLog('Não deu erro no pinpad setou FImprimiuNaoFiscal como TRUE')
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg: String;
begin
  if FCanceladoPeloOperador then
  begin
    FCanceladoPeloOperador := False;
    Interromper := True;
    Exit;
  end;

  Msg := '';
  if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague, gpPayGoWeb]) then // É TEF dedicado ?
  begin
    if (Arquivo = '23') and ACBrTEFD1.TecladoBloqueado then // Está aguardando Pin-Pad ?
    begin
      // Desbloqueia o Teclado
      ACBrTEFD1.BloquearMouseTeclado(False);
      // Ajusta Interface para Espera do TEF, com opçao de cancelamento pelo Operador
      Venda.Status := stsAguardandoTEF;
      WRLog('Status : stsAguardandoTEF');
      WRLog('Aqui esta indo para cancelar');
      Msg := 'Aguardando Resposta do Pinpad.  Pressione <ESC> para Cancelar';
      FCanceladoPeloOperador := False;
    end;
  end
  else if FTempoDeEspera <> SegundosTimeOut then
  begin
    Msg := 'Aguardando: ' + Arquivo + ' ' + IntToStr(SegundosTimeOut);
    FTempoDeEspera := SegundosTimeOut;
  end;

  if Msg <> '' then
    AdicionarLinhaLog(Msg);

  Application.ProcessMessages;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1AntesCancelarTransacao(
  RespostaPendente: TACBrTEFDResp);
begin
  //
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1AntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
  AdicionarLinhaLog('Enviando: ' + Req.Header + ' ID: ' + IntToStr(Req.ID));

  FCanceladoPeloOperador := False;
  FTempoDeEspera := 0;
  // Use esse evento, para inserir campos personalizados, ou modificar o arquivo
  // de requisião, que será criado e envido para o Gerenciador Padrão

  if (ACBrTEFD1.GPAtual = gpPayGo) then
  begin
    if (Req.Header = 'CRT') then
    begin
      // Instruindo CRT a apenas transações de Crédito
      if (FIndicePagto = '03') then
      begin
        Req.GravaInformacao(730, 000, '1'); // 1: venda (pagamento com cartão)
        Req.GravaInformacao(731, 000, '1'); // 1: crédito
        // Req.GravaInformacao(732,000,'1');  // 1: à vista
      end

      // Instruindo CRT a apenas transações de Débito
      else if (FIndicePagto = '04') then
      begin
        Req.GravaInformacao(730, 000, '1'); // 1: venda (pagamento com cartão)
        Req.GravaInformacao(731, 000, '2'); // 2: débito
        // Req.GravaInformacao(732,000,'1');  // 1: à vista
      end;

      FIndicePagto := '';
    end;

    if (FTestePayGo > 0) then
    begin
      if (Req.Header = 'CRT') and (FTestePayGo = 2) then // Passo 02 - Venda à vista aprovada com pré-seleção de parâmetros
      begin
        Req.GravaInformacao(010, 000, 'CERTIF');
        Req.GravaInformacao(730, 000, '1'); // operação “VENDA”
        Req.GravaInformacao(731, 000, '1'); // tipo de cartão “CRÉDITO”
        Req.GravaInformacao(732, 000, '1'); // tipo de financiamento “À VISTA”
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 3) then // Passo 03 - Venda parcelada aprovada com pré-seleção de parâmetros
      begin
        Req.GravaInformacao(010, 000, 'CERTIF');
        Req.GravaInformacao(018, 000, '3'); // número de parcelas = 3
        Req.GravaInformacao(730, 000, '1'); // operação “VENDA”
        Req.GravaInformacao(731, 000, '2'); // tipo de cartão “DÉBITO”
        Req.GravaInformacao(732, 000, '3'); // tipo de financiamento “PARCELADO PELO ESTABELECIMENTO”
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 4) then // Passo 04 - Venda aprovada em moeda estrangeira
      begin
        Req.GravaInformacao(004, 000, '1'); // Dólar americano
      end

      else if (Req.Header = 'CRT') and (FTestePayGo = 27) then // Passo 27 - Venda aprovada com pré-seleção de parâmetros de carteira digital
      begin
        Req.GravaInformacao(010, 000, 'CERTIF');
        Req.GravaInformacao(749, 000, '8'); // Tipo de Pagamento como carteira digital
        Req.GravaInformacao(750, 000, '1'); // Identificação da Carteira Digital como QR Code
      end

      else if (Req.Header = 'ADM') and (FTestePayGo = 31) then // Passo 31 - Operação bem sucedida com valor pré-definido
      begin
        Req.GravaInformacao(003, 000, '1');
      end;

      FTestePayGo := 0;
    end;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean; var Tratado: Boolean);
begin
  self.Enabled := not Bloqueia;
  AdicionarLinhaLog('BloqueiaMouseTeclado = ' + ifthen(Bloqueia, 'SIM', 'NAO'));
  Tratado := False; { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
Var
  MR: TModalResult;
  FormMenuTEF: TFormMenuTEF;
begin
  FormMenuTEF := TFormMenuTEF.Create(self);
  try
    FormMenuTEF.Titulo := Titulo;
    FormMenuTEF.Opcoes := Opcoes;

    MR := FormMenuTEF.ShowModal;

    VoltarMenu := (MR = mrRetry);

    if (MR = mrOk) then
      ItemSelecionado := FormMenuTEF.ItemSelecionado;
  finally
    FormMenuTEF.Free;
  end;

end;

procedure TFrmPDV_Pagamento.ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer;
  Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString; var Digitado, VoltarMenu: Boolean);
Var
  MR: TModalResult;
  FormObtemCampo: TFormObtemCampo;
begin

  FormObtemCampo := TFormObtemCampo.Create(self);
  try
    FormObtemCampo.Titulo := Titulo;
    FormObtemCampo.TamanhoMaximo := TamanhoMaximo;
    FormObtemCampo.TamanhoMinimo := TamanhoMinimo;
    FormObtemCampo.Resposta := Resposta; { Para usar Valores Previamente informados }

    case Operacao of
      tcDouble:
        FormObtemCampo.TipoCampo := tcoCurrency;
      tcCMC7, tcBarCode:
        FormObtemCampo.TipoCampo := tcoNumeric;
    else
      FormObtemCampo.TipoCampo := tcoString;
    end;

    if (Operacao = tcStringMask) then
      FormObtemCampo.Ocultar := True;

    MR := FormObtemCampo.ShowModal;

    Digitado := (MR = mrOk);
    VoltarMenu := (MR = mrRetry);

    if Digitado then
      Resposta := FormObtemCampo.Resposta;
  finally
    FormObtemCampo.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
var
  AMsg, Comprovante: string;
  procedure PularLinhasECortar;
  begin
    AdicionarLinhaImpressao('</pular_linhas>');
    AdicionarLinhaImpressao('</corte>');
  end;

begin
  AdicionarLinhaLog('ACBrTEFD1ComandaECF: ' + GetEnumName(TypeInfo(TACBrTEFDOperacaoECF), Integer(Operacao)));
  WRLog('Entra no ACBrTEFD1ComandaECF');
  try
    case Operacao of
      opeAbreGerencial:
        begin
          WRLog('opeAbreGerencial');
          AdicionarLinhaImpressao('</zera>');
        end;


      opeSubTotalizaCupom:
        begin
          WRLog('opeSubTotalizaCupom');
          if Venda.Status = stsIniciada then
          begin
            Venda.Status := stsEmPagamento;
            WRLog('Status : stsEmPagamento');
          end;
        end;

      opeCancelaCupom:
        begin
          WRLog('opeCancelaCupom');
        // Aqui deve ir rodar uma função que cancela...
        // ... e insere no histórico da venda onde a transação TEF está
          while AMsg = '' do
          begin
            AMsg :=  InputBox('Cancelamento de TEF', 'Digite o motivo do cancelamento:', '');
          end;

          Comprovante := Resp.ImagemComprovante1aVia.Text;
          Comprovante := ReplaceStr(Comprovante, 'APROVADA', 'CANCELADA');
          CancelaTransacaoNoBancoQuery(Resp, AMsg, Comprovante);
          FOperacao := 'Cancelamento';
//        CancelarVenda;
        end;

      opeImprimePagamentos:
      begin
        WRLog('opeImprimePagamentos: nenhum codigo aqui');
      end;

      opeFechaCupom:
      begin
        WRLog('opeFechaCupom');
        FinalizarVenda(Resp);
      end;

      opePulaLinhas:
      begin
        WRLog('opePulaLinhas');
        PularLinhasECortar;
      end;

      opeFechaGerencial, opeFechaVinculado:
        begin
          WRLog('opeFechaGerencial, opeFechaVinculado');                                   //EI VC QUE ESTA VENDO PELO SVN
          PularLinhasECortar;                     //ALERTA VERMELHO AQUI!!!!!!!!!!!!!
          if Venda.Status = stsOperacaoTEF then //StatusVenda in [stsOperacaoTEF]
          begin
            Venda.Status := stsFinalizada;
            WRLog('Status : stsFinalizada');
          end;
        end;
    end;

    RetornoECF := 1;
  except
    on E:Exception do
    begin
      WRLog(E.Message);
      RetornoECF := 0;
    end;
  end;
end;

procedure TFrmPDV_Pagamento.CancelaTransacaoNoBancoQuery(AResp: TACBrTEFDResp; AMsg, AComprovante: string);
var
  QuerX: TFDQuery;
begin
  WRlog('Entrou no Cancelamento da Transacao CONFIMADA para o BANCO');
  QuerX := GeraFDQuery(TransaFinanceiroTEF);
  try
    QuerX.SQL.Text := 'SELECT VFT.* FROM VENDA_FINANCEIRO_TEF VFT ' +
                      'WHERE NSU = :Nsu';
    QuerX.ParamByName('Nsu').Value := AResp.NSUTransacaoCancelada;
    QuerX.Open;

    if QuerX.RecordCount > 0 then
    begin
       WRlog('ACHOU O NSU CORRESPONDENTE');
      QuerX.Edit;
      QuerX.FieldByName('TEF_STATUS').AsString := 'Cancelada';
      QuerX.FieldByName('MOTIVO').AsString := 'Operação cancelada pelo operador ' + Usuario.Login + ' pelo Menu Administrativo. | ' +
                                              'NSU de cancelamento: ' +  AResp.NSU + ' | ' +
                                              'Motivo: ' + AMsg;
      QuerX.FieldByName('NSU_TRANSACAO_CANCELADA').AsString  := AResp.NSU;
      QuerX.FieldByName('ARQ_IMPRESSAO').AsString  := AComprovante;
      QuerX.Post;
    end;

    TransaFinanceiroTEF.Commit;
    WRlog('COMMIT');
    Venda.Status := stsLivre;
    WRLog('Status : stsLivre');
  finally
    QuerX.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  AdicionarLinhaLog('ACBrTEFD1ComandaECFAbreVinculado, COO:' + COO + ' IndiceECF: ' + IndiceECF + ' Valor: ' + FormatFloatBr(Valor));
  AdicionarLinhaImpressao('</zera>');
  AdicionarLinhaImpressao('</linha_dupla>');
  RetornoECF := 1;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ComandaECFImprimeVia(TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer; ImagemComprovante: TStringList;
  var RetornoECF: Integer);
var
  Comprovante: String;

begin
  AdicionarLinhaLog('ACBrTEFD1ComandaECFImprimeVia: ' + IntToStr(Via));
  Comprovante := ImagemComprovante.Text;
  if FOperacao = 'Cancelamento' then
    Comprovante := ReplaceStr(Comprovante, 'APROVADA', 'CANCELADA');
  AdicionarLinhaImpressao(Comprovante);
  RetornoECF := 1;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ComandaECFPagamento(IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  AdicionarLinhaLog('ACBrTEFD1ComandaECFPagamento, IndiceECF: ' + IndiceECF + ' Valor: ' + FormatFloatBr(Valor));
  RetornoECF := 1;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double; var RetornoECF: Integer);
begin
  AdicionarLinhaLog('ACBrTEFD1ComandaECFSubtotaliza: DescAcre: ' + FormatFloatBr(DescAcre));
  if Venda.Status = stsIniciada then
  begin
    Venda.Status := stsEmPagamento;
    WRLog('Status : stsEmPagamento');
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1DepoisCancelarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I: Integer;
begin
  for I := 0 to RespostasPendentes.Count - 1 do
  begin
    with RespostasPendentes[I] do
    begin
      AdicionarLinhaLog('Cancelada: ' + Header + ' ID: ' + IntToStr(ID));
      AdicionarLinhaLog('- Rede: ' + Rede + ', NSU: ' + NSU);

      Venda.Pagamentos.CancelarPagamento(Rede, NSU, ValorTotal);
//                AdicionarLinhaImpressao(Resp.ImagemComprovante2aVia.Text);

      // Aqui tem que pegar o Cancelamento, Aqui deve gravar os Cancelamentos Nofinancieor da Venda Berne

      SincronizaRespostaComBancoDeDados(RespostasPendentes[I], 'Cancelada');
    end;

  end;
  WRLog(' ACBrTEFD1DepoisCancelarTransacoes Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
  AtualizarPagamentosVendaNaInterface;
end;

procedure TFrmPDV_Pagamento.SincronizaRespostaComBancoDeDados(AResp: TACBrTEFResp; AStatus: string);
var
  APropList: PPropList;
  I, APropCount: Integer;
  AObjetoSalvarBanco: TStringList;
  AResposta: String;
begin
    // Se der errado, joga o resumo no histórico na venda.
//  Try
    if Venda_Financeiro_Tef.Locate('NSU', AResp.NSU, []) then
    begin
      TFrameHistorico.AdicionaHistorico(nil,
                        AchaUCHist_DataSet,
                        'TRANSAÇÃO TEF ATUALIZADA: ' + sLineBreak +  sLineBreak +
                        'NSU: ' + AResp.NSU + sLineBreak +
                        'Data: ' + VarToStr(Now)  + sLineBreak +
                        'Status: ' + AStatus + sLineBreak +
                        'Rede: ' + AResp.Rede  + sLineBreak +
                        'Valor: R$ ' + FormatFloat('##,##0.00', AResp.ValorTotal)  + sLineBreak +
                        'Quant. Parcelas: ' + IfThen(AResp.QtdParcelas = 0, '1', VarToStr(AResp.QtdParcelas)) + sLineBreak );
      Venda_Financeiro_Tef.Edit;
    end
    else
    begin
      TFrameHistorico.AdicionaHistorico(nil,
                        AchaUCHist_DataSet,
                        'NOVA TRANSAÇÃO TEF: ' + sLineBreak +  sLineBreak +
                        'NSU: ' + AResp.NSU + sLineBreak +
                        'Data: ' + VarToStr(Now)  + sLineBreak +
                        'Status: ' + AStatus + sLineBreak +
                        'Rede: ' + AResp.Rede  + sLineBreak +
                        'Valor: R$ ' + FormatFloat('##,##0.00', AResp.ValorTotal)  + sLineBreak +
                        'Quant. Parcelas: ' + IfThen(AResp.QtdParcelas = 0, '1', VarToStr(AResp.QtdParcelas)) +  sLineBreak);
      Venda_Financeiro_Tef.Insert;


    end;

    // Salvar no banco todas as informações relevantes dentro de RespostasPendentes[i]
    Venda_Financeiro_Tef.FieldByName('CODIGO').AsInteger                            := trunc(GetProximoCodigoGen('CR_VENDA_FINANCEIRO_TEF'));
    Venda_Financeiro_Tef.FieldByName('CODVENDA').AsString                           := DS.DataSet.FieldByName('CODIGO').AsString;
    Venda_Financeiro_Tef.FieldByName('NSU').AsString                                := AResp.NSU;
    Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString                         := AStatus;
    Venda_Financeiro_Tef.FieldByName('DT_ALTERACAO').AsDateTime                     := Now;
    Venda_Financeiro_Tef.FieldByName('REDE').AsString                               := AResp.Rede;
    Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat                         := AResp.ValorTotal;
    Venda_Financeiro_Tef.FieldByName('QTD_PARCELAS').AsInteger                      := IfThen(AResp.QtdParcelas = 0, 1, AResp.QtdParcelas);
    Venda_Financeiro_Tef.FieldByName('CNPJ_CREDENCIADORA').AsString                 := AResp.NFCeSAT.CNPJCredenciadora;
    Venda_Financeiro_Tef.FieldByName('NSU_TRANSACAO_CANCELADA').AsString            := AResp.NSUTransacaoCancelada;
    Venda_Financeiro_Tef.FieldByName('DATA_HORA_TRANSACAO_COMPROVANTE').AsDateTime := AResp.DataHoraTransacaoComprovante;
    Venda_Financeiro_Tef.FieldByName('DATA_HORA_TRANSACAO_CANCELADA').AsDateTime   := AResp.DataHoraTransacaoCancelada;
    Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_DESCRITA').AsString         := AResp.ModalidadePagtoDescrita;
    Venda_Financeiro_Tef.FieldByName('MODALIDADE_PAGTO_EXTENSO').AsString          := AResp.ModalidadePagtoExtenso;
    Venda_Financeiro_Tef.FieldByName('INSTITUICAO').AsString                       := AResp.Instituicao;

    Venda_Financeiro_Tef.FieldByName('MOTIVO').AsString := 'Transação TEF Aprovada.';

    if AStatus = 'Cancelada' then
    begin
      AResposta :=  sLineBreak + '--------- TRANSAÇÃO CANCELADA --------' + sLineBreak + sLineBreak;
      Venda_Financeiro_Tef.FieldByName('MOTIVO').AsString := 'Transação TEF Estornada diretamente da venda.';
    end;

    if AStatus <> 'Pendente' then
      Venda_Financeiro_Tef.FieldByName('ARQ_IMPRESSAO').AsString                    := AResposta + AResp.ImagemComprovante2aVia.Text;

    if AResp.NSUTransacaoCancelada <> '' then
      Venda_Financeiro_Tef.FieldByName('TIPO').AsString := 'Cancelamento'
    else
      Venda_Financeiro_Tef.FieldByName('TIPO').AsString := 'Transação';


    AResposta :=  'NSU: '                             + AResp.NSU + sLineBreak +
                  'Data: '                            + VarToStr(Now)  + sLineBreak +
                  'Status: '                          + AStatus + sLineBreak +
                  'Rede: '                            + AResp.Rede  + sLineBreak +
                  'Valor: '                           + VarToStr(AResp.ValorTotal)  + sLineBreak +
                  'Qtde. Parcelas: '                  + VarToStr(AResp.QtdParcelas) +
                  'AGENCIA: '                         + AResp.Agencia  + sLineBreak +
                  'AGENCIADC: '                       + AResp.AgenciaDC  + sLineBreak +
                  'AUTENTICACAO: '                    + AResp.Autenticacao  + sLineBreak +
                  'ARQ_BACKUP: '                      + AResp.ArqBackup  + sLineBreak +
                  'ARQ_RESP_PENDENTE: '               + AResp.ArqRespPendente  + sLineBreak +
                  'VIA_CLIENTE_REDUZIDA: '            + IfThen(AResp.ViaClienteReduzida, 'S', 'N')  + sLineBreak +
                  'BANCO: '                           + AResp.Banco  + sLineBreak +
                  'CHEQUE: '                          + AResp.Cheque  + sLineBreak +
                  'CHEQUE_DC: '                       + AResp.ChequeDC  + sLineBreak +
                  'CMC7: '                            + AResp.CMC7  + sLineBreak +
                  'CNF_ENVIADO: '                     + IfThen(AResp.CNFEnviado, 'S', 'N')  + sLineBreak +
                  'CODIGO_AUTORIZACAO_TRANSACAO: '    + AResp.CodigoAutorizacaoTransacao  + sLineBreak +
                  'CODIGO_OPERADORA_CELULAR: '        + AResp.CodigoOperadoraCelular  + sLineBreak +
                  'CONTA: '                           + AResp.Conta  + sLineBreak +
                  'CONTA_DC: '                        + AResp.ContaDC  + sLineBreak +
                  'CONTEUDO: '                        + AResp.Conteudo.Conteudo.Text  + sLineBreak +
                  'DATA_CHEQUE: '                     + VarToStr(AResp.DataCheque)  + sLineBreak +
                  'DATAHORA_TRANSACAO_CANCELADA: '    + VarToStr(AResp.DataHoraTransacaoCancelada)  + sLineBreak +
                  'DATAHORA_TRANSACAO_COMPROVANTE: '  + VarToStr(AResp.DataHoraTransacaoComprovante)  + sLineBreak +
                  'DATAHORA_TRANSACAO_HOST: '         + VarToStr(AResp.DataHoraTransacaoHost)  + sLineBreak +
                  'DATAHORA_TRANSACAO_LOCAL: '        + VarToStr(AResp.DataHoraTransacaoLocal)  + sLineBreak +
                  'DATA_PREDATADO: '                  + VarToStr(AResp.DataPreDatado)  + sLineBreak +
                  'DOCUMENTO_PESSOA: '                + AResp.DocumentoPessoa  + sLineBreak +
                  'FINALIZACAO: '                     + AResp.Finalizacao  + sLineBreak +
                  'HEADER: '                          + AResp.Header  + sLineBreak +
                  'ID: '                              + VarToStr(AResp.ID)  + sLineBreak +
                  'MOEDA: '                           + VarToStr(AResp.Moeda)  + sLineBreak +
                  'NOME_ADMINISTRADORA: '             + AResp.NomeAdministradora  + sLineBreak +
                  'NOME_OPERADORA_CELULAR: '          + AResp.NomeOperadoraCelular  + sLineBreak +
                  'NSU_TRANSACAO_CANCELADA: '         + AResp.NSUTransacaoCancelada  + sLineBreak +
                  'NUMERO_LOTE_TRANSACAO: '           + VarToStr(AResp.NumeroLoteTransacao)  + sLineBreak +
                  'NUMERO_RECARGA_CELULAR: '          + AResp.NumeroRecargaCelular  + sLineBreak +
                  'QTD_LINHAS_COMPROVANTE: '          + VarToStr(AResp.QtdLinhasComprovante)  + sLineBreak +
                  'STATUS_TRANSACAO: '                + AResp.StatusTransacao  + sLineBreak +
                  'TEXTO_ESPECIAL_CLIENTE: '          + AResp.TextoEspecialCliente  + sLineBreak +
                  'TEXTO_ESPECIAL_OPERADOR: '         + AResp.TextoEspecialOperador  + sLineBreak +
                  'TIPO_PESSOA: '                     + AResp.TipoPessoa  + sLineBreak +
                  'TIPO_TRANSACAO: '                  + VarToStr(AResp.TipoTransacao)  + sLineBreak +
                  'TRAILER: '                         + AResp.Trailer  + sLineBreak +
                  'BIN: '                             + AResp.BIN  + sLineBreak +
                  'VALOR_TOTAL: '                     + VarToStr(AResp.ValorTotal)  + sLineBreak +
                  'VALOR_ORIGINAL: '                  + VarToStr(AResp.ValorOriginal)  + sLineBreak +
                  'VALOR_RECARGA_CELULAR: '           + VarToStr(AResp.ValorRecargaCelular)  + sLineBreak +
                  'SAQUE: '                           + VarToStr(AResp.Saque)  + sLineBreak +
                  'DESCONTO: '                        + VarToStr(AResp.Desconto)  + sLineBreak +
                  'TAXA_SERVICO: '                    + VarToStr(AResp.TaxaServico)  + sLineBreak +
                  'DOCUMENTO_VINCULADO: '             + AResp.DocumentoVinculado  + sLineBreak +
                  'TIPO_PARCELAMENTO: '               + VarToStr(AResp.TipoParcelamento)  + sLineBreak +
                  'IMAGEM_COMPROVANTE_PRI_VIA: '      + AResp.ImagemComprovante1aVia.Text  + sLineBreak +
                  'IMAGEM_COMPROVANTE_SEG_VIA: '      + AResp.ImagemComprovante2aVia.Text  + sLineBreak +
                  'DATA_VENCIMENTO: '                 + VarToStr(AResp.DataVencimento)  + sLineBreak +
                  'INSTITUICAO: '                     + AResp.Instituicao  + sLineBreak +
                  'MODALIDADE_PAGTO: '                + AResp.ModalidadePagto  + sLineBreak +
                  'MODALIDADE_PAGTO_DESCRITA: '       + AResp.ModalidadePagtoDescrita  + sLineBreak +
                  'MODALIDADE_PAGTO_EXTENSO: '        + AResp.ModalidadePagtoExtenso  + sLineBreak +
                  'CODIGO_REDE_AUTORIZADA: '          + AResp.CodigoRedeAutorizada  + sLineBreak +
                  'DEBITO: '                          + IfThen(AResp.Debito, 'S', 'N')  + sLineBreak +
                  'CREDITO: '                         + IfThen(AResp.Credito, 'S', 'N')  + sLineBreak +
                  'DIGITADO: '                        + IfThen(AResp.Digitado, 'S', 'N')  + sLineBreak +
                  'PARCELADO_POR: '                   + VarToStr(AResp.ParceladoPor)  + sLineBreak +
                  'VALOR_ENTRADA_CDC: '               + VarToStr(AResp.ValorEntradaCDC)  + sLineBreak +
                  'DATA_ENTRADA_CDC: '                + VarToStr(AResp.DataEntradaCDC)  + sLineBreak +
                  'TIPO_OPERACAO: '                   + VarToStr(AResp.TipoOperacao)  + sLineBreak +
                  'NFCE_SAT_CODCREDENCIADORA: '       + AResp.NFCeSAT.CodCredenciadora  + sLineBreak +
                  'NFCE_SAT_AUTORIZACAO: '            + AResp.NFCeSAT.Autorizacao  + sLineBreak +
                  'NFCE_SAT_BANDEIRA: '               + AResp.NFCeSAT.Bandeira  + sLineBreak +
                  'NFCE_SAT_CNPJ_CREDENCIADORA: '     + AResp.NFCeSAT.CNPJCredenciadora  + sLineBreak +
                  'NFCE_SAT_DONO_CARTAO: '            + AResp.NFCeSAT.DonoCartao  + sLineBreak +
                  'NFCE_SAT_DATA_EXPIRACAO: '         + AResp.NFCeSAT.DataExpiracao  + sLineBreak +
                  'NFCE_SAT_ULTIMOS_DIGITOS: '        + AResp.NFCeSAT.UltimosQuatroDigitos  + sLineBreak +
                  'ID_PAGAMENTO: '                    + VarToStr(AResp.IdPagamento)  + sLineBreak +
                  'ID_RESPOSTA_FISCAL: '              + VarToStr(AResp.IdRespostaFiscal)  + sLineBreak +
                  'SERIAL_POS: '                      + AResp.SerialPOS  + sLineBreak +
                  'ESTABELECIMENTO: '                 + AResp.Estabelecimento  + sLineBreak +
                  'CODIGO_BANDEIRA_PADRAO: '          + AResp.CodigoBandeiraPadrao  + sLineBreak +
                  'CONFIRMAR: '                       + IfThen(AResp.Confirmar, 'S', 'N')  + sLineBreak +
                  'QRCODE: '                          + AResp.QRCode  + sLineBreak +
                  'ID_CARTEIRA_DIGITAL: '             + AResp.IdCarteiraDigital  + sLineBreak +
                  'NOME_CARTEIRA_DIGITAL: '           + AResp.NomeCarteiraDigital  + sLineBreak +
                  'CODIGO_PSP: '                      + AResp.CodigoPSP  + sLineBreak +
                  'NSU_TEF: '                         + AResp.NSU_TEF  + sLineBreak +
                  'SUCESSO: '                         + IfThen(AResp.Sucesso, 'S', 'N')  + sLineBreak ;

    Venda_Financeiro_Tef.FieldByName('ARQ_RESPOSTA').AsString := AResposta;
    Venda_Financeiro_Tef.Post;
    TransaFinanceiroTEF.Commit;

//  except
//    // Gravar no arquivo  Log   RespostasPendentes  Salvar no PC - Com as informações do Resposta (Não deu para inserir no banco)
//    WriteToTXT('C:\WR Sistema\LogVendaFinanceiroTEF.txt', 'NSU - ' + AResp.NSU + ' - Erro ao inserir no banco:' + sLineBreak, True);
//    RollbackTransacao(TransaFinanceiroTEF);
//  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1DepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var
  I: Integer;
begin
  for I := 0 to RespostasPendentes.Count - 1 do
  begin
    if (RespostasPendentes[I].NSUTransacaoCancelada <> '') then
      Exit;
    AchaBotaoAltera;
    WRlog('Editou: ACBrTEFD1DepoisConfirmarTransacoes');
    with RespostasPendentes[I] do
    begin
      AdicionarLinhaLog('Confirmado: ' + Header + ' ID: ' + IntToStr(ID));

      // Lendo os campos mapeados //
      AdicionarLinhaLog('- Rede: ' + Rede + ', NSU: ' + NSU);
      AdicionarLinhaLog('- Parcelas: ' + IntToStr(QtdParcelas) + ', parcelado por: ' + GetEnumName(TypeInfo(TACBrTEFRespParceladoPor), Integer(ParceladoPor)));
      AdicionarLinhaLog('- É Débito: ' + BoolToStr(Debito) + ', É Crédito: ' + BoolToStr(Credito) + ', Valor: ' + FormatFloat('###,###,##0.00', ValorTotal));

      // Lendo um Campo Específico //
      AdicionarLinhaLog('- Campo 11: ' + LeInformacao(11, 0).AsString);

      Venda.Pagamentos.ConfirmarPagamento(Rede, NSU, ValorTotal);

      SincronizaRespostaComBancoDeDados(RespostasPendentes[I], 'Confirmada');

      if (Venda.TotalPago >= Venda.TotalVenda) and (Venda.Status <> stsFinalizada) then
        FinalizarVenda(RespostasPendentes[I]); // FinalizarVenda;

//      AdicionarLinhaImpressao(RespostasPendentes[I].ImagemComprovante2aVia.Text);
    end;

  end;
  WRLog('ACBrTEFD1DepoisConfirmarTransacoes Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
  AtualizarPagamentosVendaNaInterface;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
var
  Fim: TDateTime;
  OldMensagem: String;
begin
  case Operacao of
    opmOK:
      begin
        if ACBrTEFD1.GPAtual = gpPayGoWeb then
          ACBrTEFD1PayGoWebExibeMensagem(Mensagem, tmOperador, CMilissegundosMensagem)
        else
          AModalResult := MessageDlg(Mensagem, mtInformation, [mbOK], 0);
      end;

    opmYesNo:
      AModalResult := MessageDlg(Mensagem, mtConfirmation, [mbYes, mbNo], 0);

    opmExibirMsgOperador:
      MensagemTEF(Mensagem, '');

    opmRemoverMsgOperador:
      MensagemTEF(' ', '');

    opmExibirMsgCliente:
      MensagemTEF('', Mensagem);

    opmRemoverMsgCliente:
      MensagemTEF('', ' ');

    opmDestaqueVia:
      begin
        OldMensagem := lMensagemOperador.Caption;
        try
          { Aguardando 3 segundos }
          Fim := IncSecond(now, 3);
          repeat
            MensagemTEF(Mensagem + ' ' + IntToStr(SecondsBetween(Fim, now)), '');
            Sleep(200);
          until (now > Fim);
        finally
          MensagemTEF(OldMensagem, '');
        end;
      end;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1ExibeQRCode(const Dados: string);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
begin                                                                          //ALERTA VERMELHO
  if not((Venda.Status = stsAguardandoTEF) or (Venda.Status = stsOperacaoTEF)) then//  not(StatusVenda in [stsAguardandoTEF, stsOperacaoTEF]) then
  begin
    Venda.Status := stsAguardandoTEF;
    WRLog('Status : stsAguardandoTEF');
    WRLog('aqui 2');
  end;

  if (FQRCode = 4) then // 4 - Imprimir
  begin
    if (Dados <> '') then
      AdicionarLinhaImpressao('</zera></ce>' + '<qrcode_largura>8</qrcode_largura>' + '<qrcode>' + Dados + '</qrcode>' + '</lf></lf></corte_total>');

    Exit;
  end;

  if (Dados <> '') then
    ExibirPainelQRCode
  else
  begin
    OcultatPainelQRCode;
    Exit;
  end;
  // acho que é apenas interface
  QRCode := TDelphiZXingQRCode.Create;
  QRCodeBitmap := TBitmap.Create;
  try
    QRCode.Encoding := qrUTF8NoBOM;
    QRCode.QuietZone := 2;
    QRCode.Data := widestring(Dados);

    QRCodeBitmap.Width := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
      end;
    end;

    imgQRCode.Picture.Bitmap.Assign(QRCodeBitmap);
  finally
    QRCode.Free;
    QRCodeBitmap.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
begin
  // try
  // if not ACBrECF1.Ativo then
  // ACBrECF1.Ativar ;
  // except
  // { Para CliSiTEF ou V&SPague aplique o IF abaixo em sua aplicação, que
  // permite saber se o Cupom foi concluido mesmo com o ECF desligado }
  //
  // if (not ACBrTEFD1.TEF.Inicializado) and   { Está na inicialização ? }
  // (Operacao = ineEstadoECF) and          { Quer Saber o estado do ECF ? (mas se chegou aqui é pq o ECF já está com problemas) }
  // (ACBrTEFD1.GPAtual in [gpCliSiTef,gpVeSPague]) then
  // begin
  // { Leia o último Documento Gravado no seu Banco de Dados, e verifique
  // se o Cupom já foi finalizado,ou se já foi aberto um CCD ou Gerencial...
  // Exemplo:
  //
  // Documento.Le(0);
  //
  // if (Documento.Finalizado) or (pos(Documento.Denominacao,'CC|RG') > 0) then
  // RetornoECF := 'R'
  // else
  // RetornoECF := 'O' ;
  // }
  //
  // //RetornoECF := 'O';    // Executará CancelarTransacoesPendentes;
  // RetornoECF := 'R';    // Executará ConfirmarESolicitarImpressaoTransacoesPendentes;
  // exit ;
  // end ;
  //
  // raise ;
  // end;

  case Operacao of
    ineSubTotal:
      RetornoECF := FloatToStr(Venda.TotalVenda);

    ineTotalAPagar:
      begin
        // ACBrTEFD1.RespostasPendentes.TotalPago  deve ser subtraido, pois ACBrTEFD já subtrai o total dos pagamentos em TEF internamente
        RetornoECF := FloatToStr(RoundTo(Venda.TotalPago - ACBrTEFD1.RespostasPendentes.TotalPago, -2));
      end;

    ineEstadoECF:
      begin
        // "L" - Livre
        // "V" - Venda de Itens
        // "P" - Pagamento (ou SubTotal efetuado)
        // "C" ou "R" - CDC ou Cupom Vinculado
        // "G" ou "R" - Relatório Gerencial
        // "N" - Recebimento Não Fiscal
        // "O" - Outro
        Case Venda.Status of
          stsIniciada:
          begin
            RetornoECF := 'V';//CANCELA TRANSACAO PENDENTE
            WRlog('RETORNOT ECF : V');
          end;
          stsEmPagamento:
          begin
            RetornoECF := 'P';//CANCELA TRANSACAO PENDENTE
            WRlog('RETORNOT ECF : P');
          end;
          stsLivre, stsFinalizada, stsCancelada, stsAguardandoTEF, stsOperacaoTEF:
          begin
            RetornoECF := 'L';//CONFIRMA TRANSACAO PENDENTE
            WRlog('RETORNOT ECF : L');
          end;
        else
          begin
            RetornoECF := 'O';//CANCELA TRANSACAO PENDENTE
            WRlog('RETORNOT ECF : O');
          end;
        end;
      end;

  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1PayGoWebAguardaPinPad(OperacaoPinPad: TACBrTEFPGWebAPIOperacaoPinPad; var Cancelar: Boolean);
begin
  AdicionarLinhaLog('PayGoWebAguardaPinPad: ' + GetEnumName(TypeInfo(TACBrTEFPGWebAPIOperacaoPinPad), Integer(OperacaoPinPad)));

  if FCanceladoPeloOperador then
  begin
    FCanceladoPeloOperador := False;
    Cancelar := True;
  end
  else if (Venda.Status <> stsAguardandoTEF) then
  begin
    Venda.Status := stsAguardandoTEF; // Liga Botão que permite cancelar
    WRLog('Status : stsAguardandoTEF');
    FCanceladoPeloOperador := False;
  end;

  Application.ProcessMessages;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1PayGoWebAvaliarTransacaoPendente(var Status: Cardinal; const Mensagem: string; Resp: TACBrTEFDResp);
// var
// MR: TModalResult;
begin
  // Opção 1: Confirmando todas as transações pendentes...
  Status := PWCNF_CNF_MANU_AUT;

  (*
    // Opção 2: Perguntando ao Operador, o que fazer com a transação pendente

    // Aqui você pode Confirmar ou Cancelar as transações pendentes de acordo com a sua lógica
    // Ou ainda, fazer uma pergunta ao usuário, como nesse exemplo...
    // Veja os valores possíveis, para "Status", em ACBrTEFPayGoWebComum.pas, procure por: "PWCNF_"

    MR := mrYes;
    ACBrTEFD1ExibeMsg( opmYesNo, Mensagem + sLineBreak + sLineBreak + 'Confirmar ?', MR);

    if (MR = mrNo) then
    Status := PWCNF_REV_MANU_AUT
    else
    begin
    // Imprimindo comrovante pendente //
    AdicionarLinhaImpressao( Resp.ImagemComprovante1aVia.Text );
    AdicionarLinhaImpressao('</pular_linhas>');
    AdicionarLinhaImpressao('</corte>');
    AdicionarLinhaImpressao( Resp.ImagemComprovante2aVia.Text );
    AdicionarLinhaImpressao('</pular_linhas>');
    AdicionarLinhaImpressao('</corte>');

    Status := PWCNF_CNF_MANU_AUT;
    end;
  *)
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1PayGoWebExibeMensagem(Mensagem: string; Terminal: TACBrTEFPGWebAPITerminalMensagem; MilissegundosExibicao: Integer);
var
  FormExibeMensagem: TFormExibeMensagem;
begin
  if (Mensagem = '') then
  begin
    if Terminal = tmCliente then
      MensagemTEF('', ' ');
    if Terminal = tmOperador then
      MensagemTEF(' ', '');
  end

  else if MilissegundosExibicao >= 0 then
  begin
    FormExibeMensagem := TFormExibeMensagem.Create(self);
    try
      FormExibeMensagem.Mensagem := Mensagem;
      FormExibeMensagem.TempoEspera := MilissegundosExibicao;
      FormExibeMensagem.ShowModal;
    finally
      FormExibeMensagem.Free;
    end;
  end

  else
  begin
    if Terminal = tmCliente then
      MensagemTEF('', Mensagem);
    if Terminal = tmOperador then
      MensagemTEF(Mensagem, '');
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1PayGoWebExibeMenu(Titulo: string; Opcoes: TStringList; var ItemSelecionado: Integer; var Cancelado: Boolean);
Var
  MR: TModalResult;
  FormMenuTEF: TFormMenuTEF;
begin
  AdicionarLinhaLog('PayGoWebExibeMenu: ' + Titulo + sLineBreak + Opcoes.Text);
  if Opcoes.Count < 1 then
  begin
    Cancelado := True;
    Exit;
  end;

  FormMenuTEF := TFormMenuTEF.Create(self);
  try
    FormMenuTEF.Titulo := Titulo;
    FormMenuTEF.Opcoes := Opcoes;
    FormMenuTEF.btVoltar.Visible := False; // PayGoWeb não suporta Voltar
    FormMenuTEF.UsaTeclasDeAtalho := (copy(Opcoes[0], 1, 4) = '1 - ');
    FormMenuTEF.ItemSelecionado := ItemSelecionado;

    MR := FormMenuTEF.ShowModal;

    if (MR = mrOk) then
      ItemSelecionado := FormMenuTEF.ItemSelecionado
    else
      Cancelado := True;
  finally
    FormMenuTEF.Free;
  end;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1PayGoWebObtemCampo(DefinicaoCampo: TACBrTEFPGWebAPIDefinicaoCampo; var Resposta: string;
  var Validado, Cancelado: Boolean);
Var
  MR: TModalResult;
  FormObtemCampo: TFormObtemCampo;
begin
  AdicionarLinhaLog('PayGoWebObtemCampo: ' + DefinicaoCampo.Titulo);

  { NOTA: Se DefinicaoCampo.ValidacaoDado = "pgvSenhaLojista"
    Você deve chamar a Tela de Senha do seu sistema, e retornar o NOME do
    Operador, NUNCA a Senha digitada

    if (DefinicaoCampo.ValidacaoDado = pgvSenhaLojista) then
    begin
    Validado := True;
    Cancelado := False;
    Resposta := fOperador;
    Exit;
    end;
  }

  FormObtemCampo := TFormObtemCampo.Create(self);
  try
    FormObtemCampo.Titulo := DefinicaoCampo.Titulo;
    FormObtemCampo.TamanhoMaximo := DefinicaoCampo.TamanhoMaximo;
    FormObtemCampo.TamanhoMinimo := DefinicaoCampo.TamanhoMinimo;
    FormObtemCampo.Resposta := DefinicaoCampo.ValorInicial;
    FormObtemCampo.Ocultar := DefinicaoCampo.OcultarDadosDigitados;
    FormObtemCampo.Mascara := DefinicaoCampo.MascaraDeCaptura;
    FormObtemCampo.btVoltar.Visible := False; // PayGoWeb não suporta Voltar;

    if (pos('R$', DefinicaoCampo.MascaraDeCaptura) > 0) or (pos('@.@@@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) or
      (pos('@@@@@@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) then
      FormObtemCampo.TipoCampo := tcoCurrency
    else
    begin
      case DefinicaoCampo.TiposEntradaPermitidos of
        pgApenasLeitura:
          FormObtemCampo.edtResposta.ReadOnly := True;
        pgtNumerico:
          if (pos('@,@@', DefinicaoCampo.MascaraDeCaptura) > 0) then
            FormObtemCampo.TipoCampo := tcoDecimal
          else
            FormObtemCampo.TipoCampo := tcoNumeric;
        pgtAlfabetico:
          FormObtemCampo.TipoCampo := tcoAlfa;
        pgtAlfaNum:
          FormObtemCampo.TipoCampo := tcoAlfaNum;
      else
        FormObtemCampo.TipoCampo := tcoString;
      end;
    end;

    MR := FormObtemCampo.ShowModal;

    Cancelado := (MR <> mrOk);
    Resposta := FormObtemCampo.Resposta;

    if (FormObtemCampo.TipoCampo = tcoCurrency) then // PayGoWeb não precisa de ponto decimal
      Resposta := OnlyNumber(Resposta);
  finally
    FormObtemCampo.Free;
  end;
end;

procedure TFrmPDV_Pagamento.AchaBotaoAltera;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).btnAlterar.Click;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Mestre(Self.Owner).btnAlterar.Click;
end;

procedure TFrmPDV_Pagamento.AchaBotaoConfirma;
begin
//  if Self.Owner is TFrmVenda then
//  begin
//    if TFrmVenda(Self.Owner).Cadastro.State in dsEditModes then
//      TFrmVenda(Self.Owner).btnConfirmar.Click;
//  end;
  if Self.Owner is TFrame_Venda_Mestre then
  begin
    if TFrame_Venda_Mestre(Self.Owner).Cadastro.State in dsEditModes then
      TFrame_Venda_Mestre(Self.Owner).btnConfirmar.Click;
  end;
end;

function TFrmPDV_Pagamento.AchaDataSetCadastro: TFDQuery;
begin
//  if Self.Owner is TFrmVenda then
//    Result:= TFrmVenda(Self.Owner).Cadastro;
  if Self.Owner is TFrame_Venda_Mestre then
    Result:= TFrame_Venda_Mestre(Self.Owner).Cadastro;
end;

function TFrmPDV_Pagamento.AchaDataSetVenda_Financeiro: TFDQuery;
begin
//  if Self.Owner is TFrmVenda then
//    Result:= TFrmVenda(Self.Owner).Venda_Financeiro;
  if Self.Owner is TFrame_Venda_Mestre then
    Result:= TFrame_Venda_Mestre(Self.Owner).Venda_Financeiro;
end;

procedure TFrmPDV_Pagamento.AchaouExcluirparcelasPDVPagamentos;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).ExcluirparcelasPDVPagamentos;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Mestre(Self.Owner).ExcluirparcelasPDVPagamentos;
end;

function TFrmPDV_Pagamento.AchaUCHist_DataSet: TUCHist_DataSet;
begin
//  if Self.Owner is TFrmVenda then
//    Result:= TFrmVenda(Self.Owner).UCHist_Cadastro;
  if Self.Owner is TFrame_Venda_Mestre then
    Result:= TFrame_Venda_Mestre(Self.Owner).UCHist_Cadastro;
end;

procedure TFrmPDV_Pagamento.AchoubtnCancelar;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).btnCancelar.Click;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Mestre(Self.Owner).btnCancelar.Click;
end;

procedure TFrmPDV_Pagamento.AchoubtnFaturamento;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).btnFaturamento.Click;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).btnFaturamento.Click;
end;

procedure TFrmPDV_Pagamento.AchoubtnCancela_Faturamento;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).btnCancela_Faturamento.Click;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).btnCancela_Faturamento.Click;
end;

procedure TFrmPDV_Pagamento.AchouCancelarNFeInconsistentePDV;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).CancelarNFeInconsistentePDV;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).CancelarNFeInconsistentePDV;
end;

function TFrmPDV_Pagamento.AchouedtResponsavelÎPessoas: TcxDBButtonEdit;
begin
//  if Self.Owner is TFrmVenda then
//    Result:= TFrmVenda(Self.Owner).edtResponsavelÎPessoas;
  if Self.Owner is TFrame_Venda_Mestre then
    Result:= TFrame_Venda_Mestre(Self.Owner).edtResponsavelÎPessoas;
end;

procedure TFrmPDV_Pagamento.AchouEmiteNFeTEF;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).EmiteNFeTEF;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).EmiteNFeTEF;
end;

procedure TFrmPDV_Pagamento.AchouEmiteNFSeTEF;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).EmiteNFSeTEF;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).EmiteNFSeTEF;
end;

procedure TFrmPDV_Pagamento.AchouEmiteNFCeTEF;
begin
//  if Self.Owner is TFrmVenda then
//    TFrmVenda(Self.Owner).EmiteNFCeTEF;
  if Self.Owner is TFrame_Venda_Mestre then
    TFrame_Venda_Venda(Self.Owner).EmiteNFCeTEF;
end;

function TFrmPDV_Pagamento.AchouWRCalc: TWRCalculaConfiguracoes;
begin
//  if Self.Owner is TFrmVenda then
//    Result:= TFrmVenda(Self.Owner).WRCalc;
  if Self.Owner is TFrame_Venda_Mestre then
    Result:= TFrame_Venda_Mestre(Self.Owner).WRCalc;
end;

function TFrmPDV_Pagamento.AcharTransacaoTEFPendente(IndicePagto: Integer): TACBrTEFResp;
var
  I: Integer;
  AValorCurrency: Currency;
begin
  Result := Nil;
  if (IndicePagto < 0) and (IndicePagto >= Venda.Pagamentos.Count) then
    Exit;

  I := 0;
  while (I < ACBrTEFD1.RespostasPendentes.Count) and (Result = Nil) do
  begin
    // Precisa converter para currency antes do if senão dá False...
    AValorCurrency := ACBrTEFD1.RespostasPendentes[I].ValorTotal;

    if (ACBrTEFD1.RespostasPendentes[I].Rede = Venda.Pagamentos[IndicePagto].Rede)
    and (ACBrTEFD1.RespostasPendentes[I].NSU = Venda.Pagamentos[IndicePagto].NSU)
    and (AValorCurrency = Venda.Pagamentos[IndicePagto].ValorPago ) then
      Result := ACBrTEFD1.RespostasPendentes[I];

    Inc(I);
  end;
end;

procedure TFrmPDV_Pagamento.AdicionarLinhaImpressao(ALinha: String);
begin
  mImpressao.Lines.Add(ALinha);
  if ACBrPosPrinter1.Ativo then
    ACBrPosPrinter1.Imprimir(ALinha);
end;

procedure TFrmPDV_Pagamento.AdicionarLinhaLog(AMensagem: String);
begin
  mLog.Lines.Add(AMensagem);
  WriteToTXT('C:\WR Sistema\LogTEF.txt', AMensagem, True);
end;

procedure TFrmPDV_Pagamento.AdicionarPagamento(const Indice: String; AValor: Double; ATEF, ATipoPagamentoSelecionada: String);
var
  Ok: Boolean;
  ReajusteValor: Double;
  UltResp: TACBrTEFResp;
  I, AQuantParcelasInicial: Integer;
  AFrmAguarde: TFrmAguarde;
  AFundoTransparente: TFundoTransparente;

  procedure InformarParametrosCartaoCredito;
  begin
    // Instruindo CRT a apenas transações de Crédito...
    // Isso é Opcional, e está aqui apenas para demonstração
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '01'; // 01: crédito;  3 = 1 crédito + 2 débito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='1'; //01: crédito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='1'; //01: à vista, 2: parcelado
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_AUTHSYST]:='REDE';
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_INSTALLMENTS]:='3';
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 3;
  end;

  procedure InformarParametrosCartaoDebito;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '02'; // 02: débito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='01'; //01: à vista
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 2;
  end;

  procedure InformarParametrosCarteiraDigital;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '8'
      // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    begin
      case cbxQRCode.ItemIndex of
        3, 4:
          ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=1}'; { No CheckOut }
      else
        ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=0}'; { No PinPad }
      end;
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 122;
    end;
  end;

  procedure InformarParametrosVoucher;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '1';
      // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '04';
      // 1: crédito 2: débito 4: voucher/PAT 8: private label 16: frota 128: outros
    end;
  end;

begin
  Ok := False;

  FIndicePagto := Indice;
  if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.Clear
  else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 0;

  try
    // ** NOTA **
    // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
    // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento
    if ATEF = 'S' then
    begin
      WRLog('Chamou o Evento StatusVenda; Rotina: AdicionarPagamento; ' + ' Usuario: '+ usuario.Nome);
      SetStatusVenda(stsOperacaoTEF); //AQUI VAI MASCARAR E COLOCAR EM PAGAMENTO  // Bandeira Vermelha
//      Venda.Status := stsEmPagamento;  // Não pode fazer isso pois para o TEF precisa estar EM PAGAMENTO.
//      AFundoTransparente := TFundoTransparente.CarregaFundo(Self);
//      AFundoTransparente.Show;
      Ativar;     //aquiu deveria ativar o tef
    //      AFrmAguarde := TFrmAguarde.Create(nil);
    //      try
    //        AFrmAguarde.ExibirCancelar := False;
    //        AFrmAguarde.Show;
    //        AFrmAguarde.Mensagem := 'Tentando conectar ao Servidor.';
    //      finally
    //        AFrmAguarde.Free;
    //      end;
//      BlocoBranco := TFrmBlocoBranco.Create(dxLayoutControl1);
//      TFrmBlocoBranco.ExibirCancelar := False;
//      TFrmBlocoBranco.Show;
      while not Ok do
      begin
        if (Indice = '02') then // 02-CHEQUE
        begin
          Ok := ACBrTEFD1.CHQ(AValor, '01');
        end

        else if (Indice = '03') then // 03-CREDITO
        begin
          InformarParametrosCartaoCredito;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '04') then // 04-DEBITO
        begin
          InformarParametrosCartaoDebito;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '17') then // 05-CARTEIRA DIGITAL
        begin
          FTestePayGo := 27;
          InformarParametrosCarteiraDigital;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '11') then // 05-VALE REFEICAO
        begin
          InformarParametrosVoucher;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end;
//        TFrmBlocoBranco.Close;
        if not Ok then
        begin
          if MessageDlg('Deseja tentar novamente?' , mtConfirmation, mbYesNo, 0) <> mrYes then
          begin
            LimparMensagensTEF;
            FCanceladoPeloOperador := True;
            Exit;
          end;
        end;

//        AFundoTransparente.Free;
      end;

      UltResp := ACBrTEFD1.RespostasPendentes[ACBrTEFD1.RespostasPendentes.Count - 1];

      SincronizaRespostaComBancoDeDados(UltResp, 'Pendente');
    end
    else
      Ok := True; // Pagamentos não TEF

    AFrmAguarde := TFrmAguarde.Create(self);
    AFrmAguarde.Mensagem := 'Processando pagamento';
    AFrmAguarde.Show;


    if Ok then
    begin
      AQuantParcelasInicial := Venda.Pagamentos.Count;
      // Daqui em diante se der erro em alguma parte cancela a parcela inteira.
      try
        // Se for TEF, adiciona cada parcela listando
        if ATEF = 'S' then
        begin

          // Se for A Vista é só UltResp
          if UltResp.TipoOperacao = opAvista then
            InsereParcelaCartaoNoBanco(UltResp, UltResp.ValorTotal, DataHoraSys, ATipoPagamentoSelecionada, I + AQuantParcelasInicial + 1)
          else
          if UltResp.TipoOperacao = opParcelado then
          begin
            // Se for parcelado é UltResp.Parcelas
            for I := 0 to UltResp.Parcelas.Count - 1 do
              InsereParcelaCartaoNoBanco(UltResp, UltResp.Parcelas[I].Valor, UltResp.Parcelas[I].Vencimento, ATipoPagamentoSelecionada, I + AQuantParcelasInicial + 1);
          end;

        end
        else
        begin
          // Se não for TEF, adiciona uma parcela como estava fazendo antes
          AdicionarLinhaLog('- Novo Pagamento Adicionado: ' + ATipoPagamentoSelecionada);
          with Venda.Pagamentos.New do
          begin
            TipoPagamento := Indice;
            TipoPagamentoExtenso := ATipoPagamentoSelecionada;
            ValorPago := AValor;

            Confirmada := True;
            if (ValorPago - Max(Venda.Troco,0) > 0) then
            begin
              DS_Financeiro.DataSet.Insert;
              DS_Financeiro.DataSet.FieldByName('CODIGO').AsInteger := Venda.Pagamentos.Count;
              DS_Financeiro.DataSet.FieldByName('CODVENDA').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
              DS_Financeiro.DataSet.FieldByName('CODCONTA').AsInteger := FCodConta;
              DS_Financeiro.DataSet.FieldByName('PARCELA').AsString := IntToStr(Venda.Pagamentos.Count);
              DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat := ValorPago - Max(Venda.Troco,0);
              DS_Financeiro.DataSet.FieldByName('TIPO').AsString := 'RECEBIDA';
              DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString := ATipoPagamentoSelecionada;
              DS_Financeiro.DataSet.FieldByName('NSU').AsString := NSU;
              DS_Financeiro.DataSet.FieldByName('REDE').AsString := Rede;
              DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString := RedeCNPJ;
              DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := lblVendaRazaoSocial.Caption;
              DS_Financeiro.DataSet.FieldByName('EMISSAO').AsDateTime := DataHoraSys;
              DS_Financeiro.DataSet.FieldByName('DATAPAGTO').AsDateTime := DataHoraSys;
              DS_Financeiro.DataSet.FieldByName('VENCTO').AsDateTime := DataHoraSys;
              DS_Financeiro.DataSet.FieldByName('STATUS').AsString := 'ATIVO';
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
              DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := DS.DataSet.FieldByName('RAZAOSOCIAL').AsString;

              // Se no cadastro for TEF obrigatório, tem que registrar que neste momento não era TEF.
              // A Validação se é TEF ou não já é feita acima, então sempre que cai aqui não tem TEF.
              DS_Financeiro.DataSet.FieldByName('EXIGE_TEF').AsString := 'N';
              DS_Financeiro.DataSet.Post;
            end;

            TFrameHistorico.AdicionaHistorico(nil,
                  AchaUCHist_DataSet,
                  'Novo Pagamento à Vista Adicionado: ' + sLineBreak +  sLineBreak +
                  'Parcela: ' + IntToStr(Venda.Pagamentos.Count) + sLineBreak +
                  'Tipo: ' + 'À VISTA' + sLineBreak +
                  'Valor: R$ ' + FormatFloat('##,##0.00', (ValorPago - Max(Venda.Troco,0)))  + sLineBreak +
                  'Tipo Pagamento: ' + ATipoPagamentoSelecionada  + sLineBreak +
                  'Cód. Caixa: ' + VarToStr(FCodConta) + sLineBreak +
                  'Vencimento: ' + VarToStr(DataHoraSys)  + sLineBreak );

          end;
        end;
        Venda.Gravar;
        WRLog('Chamou o Evento StatusVenda; Rotina: Adicionar Pagamento; ' + ' Usuario: '+ usuario.Nome);
        SetStatusVenda(stsEmPagamento);
      except
        on E:Exception do
        begin
          WRLog(E.Message);
          ShowMessage(E.Message);
          LimparMensagensTEF;
          ACBrTEFD1.CancelarTransacoesPendentes;
          AchaDataSetCadastro.Transaction.Rollback;
        end;
      end;

  //  Inserir no Banco
      WRLog(' AdicionarPagamento Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
      AtualizarPagamentosVendaNaInterface;

      // Removido daqui pois não faz sentido a função AdicionarPagamento também finalizar
//      if (Venda.TotalPago >= Venda.TotalVenda) then
//          FinalizarVenda(nil); // FinalizarVenda;

      LimparMensagensTEF;

    end;
    AFrmAguarde.Close;
  finally
    AFrmAguarde.Free;
   //Comit quando trocar de transacao tef para pagamento
  end;
  if Not Ok then
  begin
    ShowMessage('Não foi possível realizar a transação.');
    Venda.Status := stsEmPagamento;
    WRLog('Status : stsEmPagamento');
  end;

end;

procedure TFrmPDV_Pagamento.AdicionarPagamentoCrediario(const Indice: String; AValor: Double; ATEF, ATipoPagamentoSelecionada: String; AIncDiaVencto: Integer);
var
  Ok: Boolean;
  ReajusteValor: Double;
  UltResp: TACBrTEFResp;
  I, AQuantParcelasInicial: Integer;
  AFrmAguarde: TFrmAguarde;
  AFundoTransparente: TFundoTransparente;
  QuerX: TFDQuery;

  procedure InformarParametrosCartaoCredito;
  begin
    // Instruindo CRT a apenas transações de Crédito...
    // Isso é Opcional, e está aqui apenas para demonstração
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '01'; // 01: crédito;  3 = 1 crédito + 2 débito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE]:='1'; //01: crédito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='1'; //01: à vista, 2: parcelado
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_AUTHSYST]:='REDE';
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_INSTALLMENTS]:='3';
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 3;
  end;

  procedure InformarParametrosCartaoDebito;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '02'; // 02: débito
      // ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_FINTYPE]:='01'; //01: à vista
    end
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 2;
  end;

  procedure InformarParametrosCarteiraDigital;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '8'
      // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
    else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    begin
      case cbxQRCode.ItemIndex of
        3, 4:
          ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=1}'; { No CheckOut }
      else
        ACBrTEFD1.TEFCliSiTef.Restricoes := '{DevolveStringQRCode=0}'; { No PinPad }
      end;
      ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 122;
    end;
  end;

  procedure InformarParametrosVoucher;
  begin
    // Instruindo CRT a apenas transações de Débito
    if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    begin
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_PAYMNTTYPE] := '1';
      // Modalidade de pagamento:   1: cartão   2: dinheiro   4: cheque   8: carteira virtual
      ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.ValueInfo[PWINFO_CARDTYPE] := '04';
      // 1: crédito 2: débito 4: voucher/PAT 8: private label 16: frota 128: outros
    end;
  end;

begin
  Ok := False;

  FIndicePagto := Indice;
  if (ACBrTEFD1.GPAtual = gpPayGoWeb) then
    ACBrTEFD1.TEFPayGoWeb.ParametrosAdicionais.Clear
  else if (ACBrTEFD1.GPAtual = gpCliSiTef) then
    ACBrTEFD1.TEFCliSiTef.OperacaoCRT := 0;

  QuerX := GeraFDQuery;
  try
    // ** NOTA **
    // Usa '01' como Indice de Forma de Pagamento de ECF, para todas as operações TEF,
    // para evitar que o ACBrTEFD tente separar os Comprovantes por Forma de Pagamento
    if ATEF = 'S' then
    begin
      WRLog('Chamou o Evento StatusVenda; Rotina: AdicionarPagamento; ' + ' Usuario: '+ usuario.Nome);
      SetStatusVenda(stsOperacaoTEF); //AQUI VAI MASCARAR E COLOCAR EM PAGAMENTO  // Bandeira Vermelha
//      Venda.Status := stsEmPagamento;  // Não pode fazer isso pois para o TEF precisa estar EM PAGAMENTO.
//      AFundoTransparente := TFundoTransparente.CarregaFundo(Self);
//      AFundoTransparente.Show;
      Ativar;     //aquiu deveria ativar o tef
    //      AFrmAguarde := TFrmAguarde.Create(nil);
    //      try
    //        AFrmAguarde.ExibirCancelar := False;
    //        AFrmAguarde.Show;
    //        AFrmAguarde.Mensagem := 'Tentando conectar ao Servidor.';
    //      finally
    //        AFrmAguarde.Free;
    //      end;
//      BlocoBranco := TFrmBlocoBranco.Create(dxLayoutControl1);
//      TFrmBlocoBranco.ExibirCancelar := False;
//      TFrmBlocoBranco.Show;
      while not Ok do
      begin
        if (Indice = '02') then // 02-CHEQUE
        begin
          Ok := ACBrTEFD1.CHQ(AValor, '01');
        end

        else if (Indice = '03') then // 03-CREDITO
        begin
          InformarParametrosCartaoCredito;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '04') then // 04-DEBITO
        begin
          InformarParametrosCartaoDebito;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '17') then // 05-CARTEIRA DIGITAL
        begin
          FTestePayGo := 27;
          InformarParametrosCarteiraDigital;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end

        else if (Indice = '11') then // 05-VALE REFEICAO
        begin
          InformarParametrosVoucher;
          Ok := ACBrTEFD1.CRT(AValor, '01');
        end;
//        TFrmBlocoBranco.Close;
        if not Ok then
        begin
          if MessageDlg('Deseja tentar novamente?' , mtConfirmation, mbYesNo, 0) <> mrYes then
          begin
            LimparMensagensTEF;
            FCanceladoPeloOperador := True;
            Exit;
          end;
        end;

//        AFundoTransparente.Free;
      end;

      UltResp := ACBrTEFD1.RespostasPendentes[ACBrTEFD1.RespostasPendentes.Count - 1];

      SincronizaRespostaComBancoDeDados(UltResp, 'Pendente');
    end
    else
      Ok := True; // Pagamentos não TEF

    AFrmAguarde := TFrmAguarde.Create(self);
    AFrmAguarde.Mensagem := 'Processando pagamento';
    AFrmAguarde.Show;


    if Ok then
    begin
      AQuantParcelasInicial := Venda.Pagamentos.Count;
      // Daqui em diante se der erro em alguma parte cancela a parcela inteira.
      try
        // Se for TEF, adiciona cada parcela listando
        if ATEF = 'S' then
        begin

          // Se for A Vista é só UltResp
          if UltResp.TipoOperacao = opAvista then
            InsereParcelaCartaoNoBanco(UltResp, UltResp.ValorTotal, DataHoraSys, ATipoPagamentoSelecionada, I + AQuantParcelasInicial + 1)
          else
          if UltResp.TipoOperacao = opParcelado then
          begin
            // Se for parcelado é UltResp.Parcelas
            for I := 0 to UltResp.Parcelas.Count - 1 do
              InsereParcelaCartaoNoBanco(UltResp, UltResp.Parcelas[I].Valor, UltResp.Parcelas[I].Vencimento, ATipoPagamentoSelecionada, I + AQuantParcelasInicial + 1);
          end;

        end
        else
        begin
          // Se não for TEF, adiciona uma parcela como estava fazendo antes
          AdicionarLinhaLog('- Novo Pagamento Adicionado: ' + ATipoPagamentoSelecionada);
          with Venda.Pagamentos.New do
          begin
            TipoPagamento := Indice;
            TipoPagamentoExtenso := ATipoPagamentoSelecionada;
            ValorPago := AValor;

            QuerX.SQL.Text := 'select * from tipo_pagamento tp where tp.codigo = ' + Indice;
            QuerX.Open;

            Confirmada := True;
            if (ValorPago - Max(Venda.Troco,0) > 0) then
            begin
              DS_Financeiro.DataSet.Insert;
              DS_Financeiro.DataSet.FieldByName('CODIGO').AsInteger := Venda.Pagamentos.Count;
              DS_Financeiro.DataSet.FieldByName('CODVENDA').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
              DS_Financeiro.DataSet.FieldByName('CODCONTA').AsInteger := FCodConta;
              DS_Financeiro.DataSet.FieldByName('PARCELA').AsString := IntToStr(Venda.Pagamentos.Count);
              DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat := ValorPago - Max(Venda.Troco,0);
              DS_Financeiro.DataSet.FieldByName('TIPO').AsString := 'A RECEBER';
              DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString := ATipoPagamentoSelecionada;
              DS_Financeiro.DataSet.FieldByName('NSU').AsString := NSU;
              DS_Financeiro.DataSet.FieldByName('REDE').AsString := Rede;
              DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString := RedeCNPJ;
              DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := lblVendaRazaoSocial.Caption;
              DS_Financeiro.DataSet.FieldByName('EMISSAO').AsDateTime := DataHoraSys;
//              DS_Financeiro.DataSet.FieldByName('DATAPAGTO').AsDateTime := DataHoraSys;
              DS_Financeiro.DataSet.FieldByName('VENCTO').AsDateTime := incDay(DataHoraSys, AIncDiaVencto);
              DS_Financeiro.DataSet.FieldByName('STATUS').AsString := 'ATIVO';
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
              DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
              DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := DS.DataSet.FieldByName('RAZAOSOCIAL').AsString;

              // Se no cadastro for TEF obrigatório, tem que registrar que neste momento não era TEF.
              // A Validação se é TEF ou não já é feita acima, então sempre que cai aqui não tem TEF.
              DS_Financeiro.DataSet.FieldByName('EXIGE_TEF').AsString := 'N';
              DS_Financeiro.DataSet.Post;
            end;

            TFrameHistorico.AdicionaHistorico(nil,
                  AchaUCHist_DataSet,
                  'Novo Pagamento à Vista Adicionado: ' + sLineBreak +  sLineBreak +
                  'Parcela: ' + IntToStr(Venda.Pagamentos.Count) + sLineBreak +
                  'Tipo: ' + 'À VISTA' + sLineBreak +
                  'Valor: R$ ' + FormatFloat('##,##0.00', (ValorPago - Max(Venda.Troco,0)))  + sLineBreak +
                  'Tipo Pagamento: ' + ATipoPagamentoSelecionada  + sLineBreak +
                  'Cód. Caixa: ' + VarToStr(FCodConta) + sLineBreak +
                  'Vencimento: ' + VarToStr(DataHoraSys)  + sLineBreak );

          end;
        end;
        Venda.Gravar;
        WRLog('Chamou o Evento StatusVenda; Rotina: Adicionar Pagamento; ' + ' Usuario: '+ usuario.Nome);
        SetStatusVenda(stsEmPagamento);
      except
        on E:Exception do
        begin
          WRLog(E.Message);
          ShowMessage(E.Message);
          LimparMensagensTEF;
          ACBrTEFD1.CancelarTransacoesPendentes;
          AchaDataSetCadastro.Transaction.Rollback;
        end;
      end;

  //  Inserir no Banco
      WRLog(' AdicionarPagamento Vai chamar a Rotina: AtualizarPagamentosVendaNaInterface ' + ' Usuario: '+ usuario.Nome);
      AtualizarPagamentosVendaNaInterface;

      // Removido daqui pois não faz sentido a função AdicionarPagamento também finalizar
//      if (Venda.TotalPago >= Venda.TotalVenda) then
//          FinalizarVenda(nil); // FinalizarVenda;

      LimparMensagensTEF;

    end;
    AFrmAguarde.Close;
  finally
    AFrmAguarde.Free;
   //Comit quando trocar de transacao tef para pagamento
  end;
  if Not Ok then
  begin
    ShowMessage('Não foi possível realizar a transação.');
    Venda.Status := stsEmPagamento;
    WRLog('Status : stsEmPagamento');
  end;
end;

procedure TFrmPDV_Pagamento.InsereParcelaCartaoNoBanco(AUltResp: TACBrTEFResp; AValor: Double; AVencto: TDateTime; ATipoPagamentoSelecionada: String; ACodPK: Integer);
var
  AReajusteValor: Double;
begin
  AdicionarLinhaLog('- Novo Pagamento Adicionado: ' + ATipoPagamentoSelecionada);

  with Venda.Pagamentos.New do
  begin
//    ReajusteValor := RoundTo(UltResp.ValorTotal - ValorPago, -2);
//    AReajusteValor := RoundTo(AValor - ValorPago, -2);

    // Calcula Saques, descontos na primeira vez que passa
    Saque := AUltResp.Saque;
    // Calcula a Diferença do Valor Retornado pela Operação TEF do Valor que
    // Informamos no CRT/CHQ
    if (Saque > 0) then
    begin
      // Se houve Saque na operação TEF, devemos adicionar no ValorPago,
      // para que o Saque conste como Troco
//      AValor := AValor + Saque;
    end
    else if AReajusteValor > 0 then
    begin
      // Se não é Saque, mas houve acréscimo no valor Retornado, devemos lançar
      // o Reajuste como Acréscimo na venda
      Venda.TotalAcrescimo := Venda.TotalAcrescimo + AReajusteValor;
    end;

    Desconto := AUltResp.Desconto;
    if Desconto > 0 then
    begin
      // Se houve Desconto na Operação TEF, devemos subtrair do ValorPago
      // e lançar um Desconto no Total da Transacao
//      AValor := AValor - Desconto;
      Venda.TotalDesconto := Venda.TotalDesconto + Desconto;
    end
    else if (AReajusteValor < 0) then
    begin
      // Se não é Desconto, mas houve redução no Valor Retornado, devemos
      // considerar a redução no ValorPago, pois a Adquirente limitou o
      // valor da Operação, a um máximo permitido... Deverá fechar o cupom,
      // com outra forma de Pagamento
//      AValor := AValor + AReajusteValor/AUltResp.QtdParcelas;
    end;

    // Alimenta o componente
    NSU := AUltResp.NSU;
    Rede := AUltResp.Rede;
    RedeCNPJ := AUltResp.NFCeSAT.CNPJCredenciadora;
    ValorPago := AValor;
    TipoPagamento := FIndicePagto;
    TipoPagamentoExtenso := ATipoPagamentoSelecionada;
//    Confirmada := True;

    try
      // Insere no banco
      DS_Financeiro.DataSet.Insert;

      // Se não tiver o código 1, coloca 1, se tiver, coloca o último mais 1.
      DS_Financeiro.DataSet.FieldByName('CODIGO').AsInteger := Venda.Pagamentos.Count;
      DS_Financeiro.DataSet.FieldByName('CODVENDA').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
      DS_Financeiro.DataSet.FieldByName('CODCONTA').AsInteger := FCodConta;
      DS_Financeiro.DataSet.FieldByName('PARCELA').AsString := VarToStr(Venda.Pagamentos.Count);
      DS_Financeiro.DataSet.FieldByName('VALOR').AsFloat := AValor;
      DS_Financeiro.DataSet.FieldByName('TIPO').AsString := 'RECEBIDA';
      DS_Financeiro.DataSet.FieldByName('TIPOPAGTO').AsString := ATipoPagamentoSelecionada;
      DS_Financeiro.DataSet.FieldByName('NSU').AsString := NSU;
      DS_Financeiro.DataSet.FieldByName('REDE').AsString := Rede;
      DS_Financeiro.DataSet.FieldByName('CNPJ_CREDENCIADORA').AsString := RedeCNPJ;
      DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := lblVendaRazaoSocial.Caption;
      DS_Financeiro.DataSet.FieldByName('EMISSAO').AsDateTime := DataHoraSys;
      DS_Financeiro.DataSet.FieldByName('DATAPAGTO').AsDateTime := DataHoraSys;
      DS_Financeiro.DataSet.FieldByName('VENCTO').AsDateTime := AVencto;
      DS_Financeiro.DataSet.FieldByName('STATUS').AsString := 'ATIVO';
      DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
      DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
      DS_Financeiro.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
      DS_Financeiro.DataSet.FieldByName('RAZAOSOCIAL').AsString := DS.DataSet.FieldByName('RAZAOSOCIAL').AsString;

      /// Se no cadastro for TEF obrigatório, tem que registrar que neste momento não era TEF.
      /// Se está dentro dessa função já é TEF por obrigação.
      DS_Financeiro.DataSet.FieldByName('EXIGE_TEF').AsString := 'S';
      DS_Financeiro.DataSet.Post;

      TFrameHistorico.AdicionaHistorico(nil,
                AchaUCHist_DataSet,
                'Novo Pagamento à Vista Adicionado: ' + sLineBreak +  sLineBreak +
                'Parcela: ' + VarToStr(Venda.Pagamentos.Count) + sLineBreak +
                'Tipo: ' + ATipoPagamentoSelecionada + sLineBreak +
                'Valor: R$ ' + FormatFloat('##,##0.00', AValor)  + sLineBreak +
                'Tipo Pagamento: ' + ATipoPagamentoSelecionada  + sLineBreak +
                'Cód. Caixa: ' + VarToStr(FCodConta) + sLineBreak +
                'Vencimento: ' + VarToStr(AVencto)  + sLineBreak );


      // Insere o NSU no banco 1 vez
//      if not Venda_Financeiro_Tef.Locate('NSU', NSU, []) then
//      begin
//        Venda_Financeiro_Tef.Insert;
//        Venda_Financeiro_Tef.FieldByName('CODIGO').AsInteger := trunc(GetProximoCodigoGen('CR_VENDA_FINANCEIRO_TEF'));
//        Venda_Financeiro_Tef.FieldByName('NSU').AsString := NSU;
//        Venda_Financeiro_Tef.FieldByName('REDE').AsString := Rede;
//        Venda_Financeiro_Tef.FieldByName('TEF_STATUS').AsString :=  ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));//'Confirmada';//ifthen(Cancelada, 'Cancelada', ifthen(Confirmada, 'Confirmada', 'Pendente'));
//        Venda_Financeiro_Tef.FieldByName('CNPJ_CREDENCIADORA').AsString := RedeCNPJ;
//        Venda_Financeiro_Tef.FieldByName('VALOR_TOTAL').AsFloat := AUltResp.ValorTotal;
//        Venda_Financeiro_Tef.Post;
//      end;
//      TransaFinanceiroTEF.Commit;
    except
//      TransaFinanceiroTEF.Rolbar;
      raise Exception.Create('Erro ao inserir parcela no banco de dados.');
    end;
  end;
end;

procedure TFrmPDV_Pagamento.Ativar;
var
  AFrmAguarde: TFrmAguarde;

begin
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.ExibirCancelar := False;
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Ativando o TEF.';

    AdicionarLinhaLog('- Ativar');


    try
      AtivarTEF;
      WRLog('Ativou TEF');
    except
      On E: Exception do
      begin
        TratarException(nil, E);
        WRLog('NÃO Ativou TEF' + E.Message);
        ShowMessage('Não foi possivel ativar o TEF (' + E.Message + ')');
        Abort;
      end;
    end;

    AFrmAguarde.Close;
  finally
    AFrmAguarde.Free;
  end;
end;

procedure TFrmPDV_Pagamento.AtivarPosPrinter;
begin
  AdicionarLinhaLog('- AtivarPosPrinter');
  ConfigurarPosPrinter;
  if (ACBrPosPrinter1.Porta <> '') then
    ACBrPosPrinter1.Ativar
  else
    raise Exception.Create('Porta não definida');
end;

procedure TFrmPDV_Pagamento.AtivarTEF;
begin
  AdicionarLinhaLog('- AtivarTEF');
  LerConfiguracao;
  // FGP := 4;
  ACBrTEFD1.Inicializar(TACBrTEFDTipo(FGP));
end;

procedure TFrmPDV_Pagamento.CancelarVenda;
var
  I: integer;
  ACancelada: boolean;
begin
  AdicionarLinhaLog('- CancelarVenda');
  // AQUI você deve cancelar a sua venda no Banco de Dados, desfazendo baixa de
  // estoque ou outras operações que ocorreram durante a venda.
  if DS.DataSet.FieldByName('DT_FATURAMENTO').AsString <> '' then
    AchoubtnCancela_Faturamento;

  //TFrmVenda(Self.Owner).btnExcluir.Click;
  try

    ACancelada := True;
    for I := 0 to Venda.Pagamentos.Count - 1 do
    begin
      if not Venda.Pagamentos[I].Cancelada then
        ACancelada := False;
    end;

    if ACancelada then
    begin
      WRLog('Chamou o Evento StatusVenda; Rotina: CancelarVenda; ' + ' Usuario: '+ usuario.Nome);
      SetStatusVenda(stsCancelada);
    end;

  except
    on E:Exception do
    begin
      WRLog(E.Message);
      ShowMessage('Não foi possível cancelar a venda');
    end;
  end;
  Close;
end;

procedure TFrmPDV_Pagamento.ACBrTEFD1GravarLog(const GP: TACBrTEFDTipo; ALogLine: string; var Tratado: Boolean);
begin
  AdicionarLinhaLog(ALogLine);
  Tratado := False;
end;

/// /////////////////////////////// Fim das Operações TEF ////////////////////////////////////////////////////////////

end.
