unit CadVenda_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Cad, cxGraphics, cxControls, Vcl.Menus, cxCustomData, cxEdit, Data.DB, cxContainer,
  dxLayoutContainer, FireDAC.Comp.Client, IBX.IBCustomDataSet, Vcl.ExtCtrls, cxDBLabel, cxLabel, cxTextEdit, cxDBEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtons, dxLayoutControl, FireDAC.Stan.Param, cxDBLookupComboBox, cxCheckBox, IBX.IBQuery, FireDAC.Comp.DataSet,
  cxCurrencyEdit, cxButtonEdit, cxCalendar, dxGDIPlusClasses, frFrameAnexos,
  cxTimeEdit, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxSpinEdit, cxMemo,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, cxDBNavigator, Vcl.StdCtrls, dxStatusBar,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView,
  FireDAC.Stan.StorageBin, uButtonFlat, System.Actions, Vcl.ActnList, dxGaugeCustomScale, dxGaugeQuantitativeScale,
  dxGaugeCircularScale, dxGaugeControl, wrConstantes, cxGroupBox, wrFuncoes, frFrameCustos, Classes.WR,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxImageList, FrFrameComposicao, DataModule,
  uWRFormataCamposDataSet, uWRCalculaConfiguracoes, dxDateRanges, UCHistDataset, wrFuncoes_Office,
  System.Generics.Collections, frFrameAnexosVenda_Produto, Frame_Producao_Fluxo_Venda_Produto, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmVenda_Produto = class(TFrmCad)
    DSNF_CST: TDataSource;
    DSNT_CST_PIS_COFINS: TDataSource;
    DSNT_CST_IPI: TDataSource;
    edtResultadoICMSBC: TcxDBTextEdit;
    edtResultadoICMSValor: TcxDBTextEdit;
    edtResultadoPISBC: TcxDBTextEdit;
    edtResultadoPISValor: TcxDBTextEdit;
    edtResultadoCOFINSBC: TcxDBTextEdit;
    edtResultadoCOFINSValor: TcxDBTextEdit;
    edtResultadoIPIBC: TcxDBTextEdit;
    edtResultadoIPIValor: TcxDBTextEdit;
    BtnRecalcularImpostos: TcxButton;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    GrupoTabs: TdxLayoutGroup;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Item30: TdxLayoutItem;
    GrupoVeiculo: TdxLayoutGroup;
    TabProducao: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    GrupoMateriais: TdxLayoutGroup;
    GrupoDados: TdxLayoutGroup;
    EdtPecas: TcxDBCurrencyEdit;
    LiEdtPecas: TdxLayoutItem;
    LiEdtLargura: TdxLayoutItem;
    EdtLargura: TcxDBCurrencyEdit;
    LiEdtComprimento: TdxLayoutItem;
    EdtComprimento: TcxDBCurrencyEdit;
    LiEdtEspessura: TdxLayoutItem;
    EdtEspessura: TcxDBCurrencyEdit;
    LiEdtQuant: TdxLayoutItem;
    EdtQuant: TcxDBCurrencyEdit;
    LiEdtValor: TdxLayoutItem;
    EdtValor: TcxDBCurrencyEdit;
    LiEdtTotal: TdxLayoutItem;
    EdtTotal: TcxDBCurrencyEdit;
    edtUnidade: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    edtLocalÎLocalÎDESCRICAO: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    EdtCorÎCorÎDESCRICAO: TcxDBTextEdit;
    LiEdtVDesc_Manual: TdxLayoutItem;
    EdtVDesc_Manual: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    EdtCusto: TcxDBCurrencyEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutItem25: TdxLayoutItem;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutItem30: TdxLayoutItem;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    EdtGrupoÎProduto_Grupo: TcxDBButtonEdit;
    dxLayoutItem31: TdxLayoutItem;
    LblGrupoÎProduto_GrupoÎDESCRICAO: TcxLabel;
    dxLayoutItem32: TdxLayoutItem;
    EdtCorÎCor: TcxDBButtonEdit;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    EdtMarcaÎProduto_Marca: TcxDBButtonEdit;
    LblMarcaÎProduto_MarcaÎDESCRICAO: TcxLabel;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    dxLayoutItem42: TdxLayoutItem;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    dxLayoutItem43: TdxLayoutItem;
    cxDBTextEdit30: TcxDBTextEdit;
    dxLayoutItem44: TdxLayoutItem;
    cxDBTextEdit31: TcxDBTextEdit;
    dxLayoutItem45: TdxLayoutItem;
    cxDBTextEdit32: TcxDBTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    cxDBTextEdit33: TcxDBTextEdit;
    dxLayoutItem47: TdxLayoutItem;
    cxDBTextEdit34: TcxDBTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    cxDBTextEdit35: TcxDBTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    cxDBTextEdit36: TcxDBTextEdit;
    CbLocalEstoque: TcxDBLookupComboBox;
    dxLayoutItem50: TdxLayoutItem;
    GrupoProducao: TdxLayoutGroup;
    EdtPrevisaoEntrega: TcxDBDateEdit;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem57: TdxLayoutItem;
    EdtPrevisaoInicio: TcxDBDateEdit;
    dxLayoutItem59: TdxLayoutItem;
    EdtImpressaoÎTipo_ImpressaoÎDESCRICAO: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutItem61: TdxLayoutItem;
    cxDBTextEdit38: TcxDBTextEdit;
    dxLayoutItem64: TdxLayoutItem;
    cxDBTextEdit39: TcxDBTextEdit;
    dxLayoutGroup12: TdxLayoutGroup;
    GrupoDadosFiscais: TdxLayoutGroup;
    NF_CST: TFDQuery;
    NT_CST_PIS_COFINS: TFDQuery;
    NF_CST_IPI: TFDQuery;
    NF_CSTCODIGO: TStringField;
    NF_CSTDESCRICAO: TStringField;
    NT_CST_PIS_COFINSCODIGO: TStringField;
    NT_CST_PIS_COFINSDESCRICAO: TStringField;
    NF_CST_IPICODIGO: TStringField;
    NF_CST_IPIDESCRICAO: TStringField;
    dxLayoutItem132: TdxLayoutItem;
    cxLabel14: TcxLabel;
    dxLayoutItem133: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem134: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem135: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem136: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutItem137: TdxLayoutItem;
    dxLayoutItem138: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    GrupoDI: TdxLayoutGroup;
    dxLayoutItem140: TdxLayoutItem;
    cxDBCurrencyEdit76: TcxDBCurrencyEdit;
    dxLayoutItem141: TdxLayoutItem;
    cxLabel15: TcxLabel;
    dxLayoutItem142: TdxLayoutItem;
    cxLabel16: TcxLabel;
    dxLayoutItem143: TdxLayoutItem;
    cxLabel17: TcxLabel;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutItem144: TdxLayoutItem;
    cxDBCurrencyEdit77: TcxDBCurrencyEdit;
    dxLayoutItem145: TdxLayoutItem;
    cxDBCurrencyEdit78: TcxDBCurrencyEdit;
    dxLayoutItem146: TdxLayoutItem;
    cxDBCurrencyEdit79: TcxDBCurrencyEdit;
    dxLayoutItem154: TdxLayoutItem;
    BtnDetalhesICMS: TcxButton;
    dxLayoutItem139: TdxLayoutItem;
    BtnDetalhesIPI: TcxButton;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem155: TdxLayoutItem;
    BtnDetalhesPIS: TcxButton;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutItem156: TdxLayoutItem;
    BtnDetalhesCOFINS: TcxButton;
    GrupoImpostos: TdxLayoutGroup;
    dxLayoutItem157: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel;
    dxLayoutItem158: TdxLayoutItem;
    LblNCMÎNF_NCMÎDESCRICAO: TcxLabel;
    dxLayoutItem159: TdxLayoutItem;
    EdtCFOPÎNF_CFOP: TcxDBButtonEdit;
    dxLayoutItem12: TdxLayoutItem;
    EdtNCMÎNF_NCM: TcxDBButtonEdit;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    EdtImpressaoÎTipo_Impressao: TcxDBButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edtResultadoISSQNBC: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtResultadoISSQNValor: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    BtnDetalhesISSQN: TcxButton;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    EdtDBCodProduto: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    GrupoProducaoFluxo: TdxLayoutGroup;
    DS_CentroTrabalho: TDataSource;
    GrupoVendaProduto: TdxLayoutGroup;
    TransaFD: TFDTransaction;
    liImportacao: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    EdtValorFrete: TcxDBCurrencyEdit;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem56: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutItem63: TdxLayoutItem;
    edtNumeroItemNFe: TcxDBCurrencyEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem66: TdxLayoutItem;
    edtALIQNacional: TcxDBCurrencyEdit;
    dxLayoutItem67: TdxLayoutItem;
    edtALIQImportacao: TcxDBCurrencyEdit;
    dxLayoutItem68: TdxLayoutItem;
    edtALIQEstadual: TcxDBCurrencyEdit;
    dxLayoutItem69: TdxLayoutItem;
    edtALIQMunicipal: TcxDBCurrencyEdit;
    dxLayoutItem161: TdxLayoutItem;
    edtValorPauta: TcxDBCurrencyEdit;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem162: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem163: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem164: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutItem165: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutItem167: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutItem166: TdxLayoutItem;
    EdtDespesasAcessorias: TcxDBCurrencyEdit;
    dxLayoutItem168: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem169: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutItem171: TdxLayoutItem;
    edtResultadoIIBC: TcxDBTextEdit;
    dxLayoutItem172: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutItem178: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutItem182: TdxLayoutItem;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    dxLayoutItem184: TdxLayoutItem;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    dxLayoutItem187: TdxLayoutItem;
    BtnDetalhesII: TcxButton;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup20: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cbbICMSModalidadeBaseCalculo: TcxDBLookupComboBox;
    cxDBCurrencyEdit19: TcxDBCurrencyEdit;
    cxDBCurrencyEdit20: TcxDBCurrencyEdit;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    CbICMSModalidadeBCST: TcxDBLookupComboBox;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    cxDBCurrencyEdit28: TcxDBCurrencyEdit;
    cxDBCurrencyEdit29: TcxDBCurrencyEdit;
    cxDBCurrencyEdit30: TcxDBCurrencyEdit;
    cxDBCurrencyEdit31: TcxDBCurrencyEdit;
    cxLabel3: TcxLabel;
    cxDBCurrencyEdit32: TcxDBCurrencyEdit;
    cxDBCurrencyEdit33: TcxDBCurrencyEdit;
    cxDBCurrencyEdit34: TcxDBCurrencyEdit;
    cxDBCurrencyEdit35: TcxDBCurrencyEdit;
    cxDBCurrencyEdit36: TcxDBCurrencyEdit;
    GrupoICMS: TdxLayoutGroup;
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutItem83: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutItem87: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dxLayoutItem88: TdxLayoutItem;
    dxLayoutItem89: TdxLayoutItem;
    GrupoICMSST: TdxLayoutGroup;
    dxLayoutItem84: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutItem72: TdxLayoutItem;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutItem90: TdxLayoutItem;
    dxLayoutItem76: TdxLayoutItem;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem91: TdxLayoutItem;
    dxLayoutItem77: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    GrupoICMSDifa: TdxLayoutGroup;
    dxLayoutItem85: TdxLayoutItem;
    dxLayoutItem78: TdxLayoutItem;
    dxLayoutItem79: TdxLayoutItem;
    dxLayoutItem80: TdxLayoutItem;
    dxLayoutItem81: TdxLayoutItem;
    dxLayoutItem153: TdxLayoutItem;
    LIPnlCOFINS: TdxLayoutItem;
    PnlCOFINS: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxDBCurrencyEdit37: TcxDBCurrencyEdit;
    cxDBCurrencyEdit38: TcxDBCurrencyEdit;
    cxDBCurrencyEdit39: TcxDBCurrencyEdit;
    cxDBCurrencyEdit40: TcxDBCurrencyEdit;
    cxDBCurrencyEdit55: TcxDBCurrencyEdit;
    cxLabel5: TcxLabel;
    cxDBCurrencyEdit56: TcxDBCurrencyEdit;
    cxDBCurrencyEdit57: TcxDBCurrencyEdit;
    cxDBCurrencyEdit58: TcxDBCurrencyEdit;
    cxDBCurrencyEdit59: TcxDBCurrencyEdit;
    cxDBCurrencyEdit60: TcxDBCurrencyEdit;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    GrupoCOFINS: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group23: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem107: TdxLayoutItem;
    dxLayoutItem110: TdxLayoutItem;
    dxLayoutItem113: TdxLayoutItem;
    dxLayoutItem111: TdxLayoutItem;
    dxLayoutItem115: TdxLayoutItem;
    dxLayoutItem109: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem108: TdxLayoutItem;
    dxLayoutItem112: TdxLayoutItem;
    dxLayoutItem114: TdxLayoutItem;
    dxLayoutItem118: TdxLayoutItem;
    dxLayoutItem117: TdxLayoutItem;
    dxLayoutItem116: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    liPnlIPI: TdxLayoutItem;
    PnlIPI: TPanel;
    dxLayoutControl5: TdxLayoutControl;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBCurrencyEdit61: TcxDBCurrencyEdit;
    cxDBCurrencyEdit44: TcxDBCurrencyEdit;
    cxDBCurrencyEdit23: TcxDBCurrencyEdit;
    cxDBCurrencyEdit41: TcxDBCurrencyEdit;
    cxDBCurrencyEdit42: TcxDBCurrencyEdit;
    cxDBCurrencyEdit43: TcxDBCurrencyEdit;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    GrupoIPI: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group19: TdxLayoutGroup;
    dxLayoutItem131: TdxLayoutItem;
    dxLayoutItem94: TdxLayoutItem;
    dxLayoutItem82: TdxLayoutItem;
    dxLayoutItem86: TdxLayoutItem;
    dxLayoutItem92: TdxLayoutItem;
    dxLayoutItem93: TdxLayoutItem;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    liPIS: TdxLayoutItem;
    PnlPIS: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxDBCurrencyEdit45: TcxDBCurrencyEdit;
    cxDBCurrencyEdit46: TcxDBCurrencyEdit;
    cxDBCurrencyEdit49: TcxDBCurrencyEdit;
    cxDBCurrencyEdit48: TcxDBCurrencyEdit;
    cxDBCurrencyEdit50: TcxDBCurrencyEdit;
    cxLabel7: TcxLabel;
    cxDBCurrencyEdit51: TcxDBCurrencyEdit;
    cxDBCurrencyEdit47: TcxDBCurrencyEdit;
    cxDBCurrencyEdit53: TcxDBCurrencyEdit;
    cxDBCurrencyEdit54: TcxDBCurrencyEdit;
    cxDBCurrencyEdit52: TcxDBCurrencyEdit;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    GrupoPIS: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem105: TdxLayoutItem;
    dxLayoutItem95: TdxLayoutItem;
    dxLayoutItem96: TdxLayoutItem;
    dxLayoutItem99: TdxLayoutItem;
    dxLayoutItem98: TdxLayoutItem;
    dxLayoutItem100: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutItem106: TdxLayoutItem;
    dxLayoutItem101: TdxLayoutItem;
    dxLayoutItem97: TdxLayoutItem;
    dxLayoutItem103: TdxLayoutItem;
    dxLayoutItem104: TdxLayoutItem;
    dxLayoutItem102: TdxLayoutItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    liISSQN: TdxLayoutItem;
    PnlISSQN: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    CbISSQNTipoTributacao: TcxDBLookupComboBox;
    CbISSQNAliquota: TcxDBCurrencyEdit;
    CbISSQNBC: TcxDBCurrencyEdit;
    CbISSQNValor: TcxDBCurrencyEdit;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    GrupoISSQN: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem119: TdxLayoutItem;
    dxLayoutItem120: TdxLayoutItem;
    dxLayoutItem121: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutItem70: TdxLayoutItem;
    PnlII: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel8: TcxLabel;
    cxDBCurrencyEdit66: TcxDBCurrencyEdit;
    cxDBCurrencyEdit67: TcxDBCurrencyEdit;
    cxDBCurrencyEdit68: TcxDBCurrencyEdit;
    cxDBCurrencyEdit69: TcxDBCurrencyEdit;
    cxLabel9: TcxLabel;
    cxDBCurrencyEdit70: TcxDBCurrencyEdit;
    cxDBCurrencyEdit71: TcxDBCurrencyEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    GrupoII: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem129: TdxLayoutItem;
    dxLayoutItem127: TdxLayoutItem;
    dxLayoutItem123: TdxLayoutItem;
    dxLayoutItem124: TdxLayoutItem;
    dxLayoutItem125: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem130: TdxLayoutItem;
    dxLayoutItem128: TdxLayoutItem;
    dxLayoutItem126: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutItem189: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutItem190: TdxLayoutItem;
    cxDBCheckBox9: TcxDBCheckBox;
    dxLayoutItem191: TdxLayoutItem;
    cxDBCheckBox10: TcxDBCheckBox;
    dxLayoutItem194: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutItem195: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutGroup7: TdxLayoutGroup;
    edtCalculaICMS: TcxDBComboBox;
    dxLayoutItem199: TdxLayoutItem;
    edtCalculaIPI: TcxDBComboBox;
    dxLayoutItem198: TdxLayoutItem;
    edtCalculaPIS: TcxDBComboBox;
    dxLayoutItem197: TdxLayoutItem;
    edtCalculaCOFINS: TcxDBComboBox;
    dxLayoutItem196: TdxLayoutItem;
    edtPath: TcxDBButtonEdit;
    dxLayoutItem58: TdxLayoutItem;
    OpenDialog1: TOpenDialog;
    edtNumeroPedidoNFe: TcxDBTextEdit;
    dxLayoutItem37: TdxLayoutItem;
    GrupoAnexo: TdxLayoutItem;
    PnlFrameAnexos: TPanel;
    dxLayoutItem204: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    dxLayoutItem209: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutItem203: TdxLayoutItem;
    CbISSQNCalculaISSQN: TcxDBComboBox;
    dxLayoutItem11: TdxLayoutItem;
    CbISSQNIncentivadorCultural: TcxDBLookupComboBox;
    dxLayoutItem205: TdxLayoutItem;
    CbISSQNValorRetido: TcxDBCurrencyEdit;
    dxLayoutItem206: TdxLayoutItem;
    CbISSQNCodMunicipioFG: TcxDBTextEdit;
    dxLayoutItem211: TdxLayoutItem;
    cxDBCheckBox14: TcxDBCheckBox;
    dxLayoutItem212: TdxLayoutItem;
    cxDBCheckBox15: TcxDBCheckBox;
    EdtCest: TcxDBTextEdit;
    LiCest: TdxLayoutItem;
    dxLayoutItem122: TdxLayoutItem;
    CbCalculaICMSST: TcxDBComboBox;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    dxLayoutItem54: TdxLayoutItem;
    cxDBCheckBox16: TcxDBCheckBox;
    dxLayoutItem65: TdxLayoutItem;
    CkTem_Producao_Finalizada_NoEnvio: TcxDBCheckBox;
    dxLayoutItem148: TdxLayoutItem;
    cxDBCheckBox18: TcxDBCheckBox;
    dxLayoutItem149: TdxLayoutItem;
    cxDBCheckBox19: TcxDBCheckBox;
    dxLayoutItem36: TdxLayoutItem;
    EdtAcabamentoÎAcabamentoÎDESCRICAO: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    EdtAcabamentoÎAcabamento: TcxDBButtonEdit;
    dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    cxStyleRepository1: TcxStyleRepository;
    EstiloSegoeSB14: TcxStyle;
    EstiloSegoe12: TcxStyle;
    EstiloSegoe14: TcxStyle;
    EstiloSegoe8: TcxStyle;
    dxLayoutItem150: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutAutoCreatedGroup26: TdxLayoutAutoCreatedGroup;
    LiEdtVOutro_Manual: TdxLayoutItem;
    EdtVOutro_Manual: TcxDBCurrencyEdit;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup25: TdxLayoutGroup;
    BtnMenu: TcxButton;
    dxLayoutItem152: TdxLayoutItem;
    MenuDireita: TPopupMenu;
    VisualizarProduo1: TMenuItem;
    GrupoCustos: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    LayoutControlCustos: TdxLayoutControl;
    dxGaugeControl1: TdxGaugeControl;
    GcGraficoCustos: TdxGaugeCircularWideScale;
    SpCustoMateriais: TShape;
    LbCustoMateriais: TcxLabel;
    SpImpostos: TShape;
    LbImpostos: TcxLabel;
    SpCustosProducao: TShape;
    LbCustoProducao: TcxLabel;
    SpLucro: TShape;
    LbLucro: TcxLabel;
    SpComissao: TShape;
    LbComissao: TcxLabel;
    LbValorCompra: TcxLabel;
    SpValorCompra: TShape;
    LayoutControlCustosGroup_Root: TdxLayoutGroup;
    dxLayoutItem235: TdxLayoutItem;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutItem236: TdxLayoutItem;
    dxLayoutItem237: TdxLayoutItem;
    dxLayoutItem238: TdxLayoutItem;
    dxLayoutItem239: TdxLayoutItem;
    dxLayoutItem240: TdxLayoutItem;
    dxLayoutItem241: TdxLayoutItem;
    dxLayoutItem242: TdxLayoutItem;
    dxLayoutItem243: TdxLayoutItem;
    dxLayoutItem253: TdxLayoutItem;
    dxLayoutItem254: TdxLayoutItem;
    GrupoGcComissao: TdxLayoutGroup;
    dxLayoutItem260: TdxLayoutItem;
    dxLayoutItem261: TdxLayoutItem;
    dxLayoutItem213: TdxLayoutItem;
    LbCustoVariavel: TcxLabel;
    dxLayoutItem214: TdxLayoutItem;
    SpCustoVariavel: TShape;
    dxLayoutItem215: TdxLayoutItem;
    LbCustoFixo: TcxLabel;
    dxLayoutItem216: TdxLayoutItem;
    SpCustoFixo: TShape;
    dxLayoutItem217: TdxLayoutItem;
    LbCustoFinanceiro: TcxLabel;
    dxLayoutItem218: TdxLayoutItem;
    SpCustoFinanceiro: TShape;
    dxLayoutItem220: TdxLayoutItem;
    PnlFrameCustos: TPanel;
    dxLayoutItem160: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem192: TdxLayoutItem;
    EdtCompCustoLoja: TcxDBCurrencyEdit;
    dxLayoutItem219: TdxLayoutItem;
    LbNaoCobrados: TcxLabel;
    dxLayoutItem222: TdxLayoutItem;
    SpNaoCobrados: TShape;
    GrupoGraficoMarkup: TdxLayoutGroup;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutGroup43: TdxLayoutGroup;
    GrupoGrafico: TdxLayoutGroup;
    EstiloGrupo: TcxStyle;
    EstiloGrupoInterno: TcxStyle;
    dxLayoutItem223: TdxLayoutItem;
    LbFrete: TcxLabel;
    dxLayoutItem224: TdxLayoutItem;
    SpFrete: TShape;
    dxLayoutItem225: TdxLayoutItem;
    LbCustosExtras: TcxLabel;
    dxLayoutItem226: TdxLayoutItem;
    SpCustosExtras: TShape;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup42: TdxLayoutGroup;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutGroup45: TdxLayoutGroup;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutGroup47: TdxLayoutGroup;
    dxLayoutGroup48: TdxLayoutGroup;
    dxLayoutGroup49: TdxLayoutGroup;
    EstiloSegoe14Verde: TcxStyle;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBCheckBox20: TcxDBCheckBox;
    dxLayoutItem228: TdxLayoutItem;
    dxLayoutItem175: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup28: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutItem183: TdxLayoutItem;
    CkManterMargem: TcxDBCheckBox;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxLayoutGroup5: TdxLayoutGroup;
    EstiloSegoe10: TcxStyle;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem55: TdxLayoutItem;
    cxLabel11: TcxLabel;
    dxLayoutItem177: TdxLayoutItem;
    CkNaoCalculaValorISS: TcxDBCheckBox;
    cxDBButtonEdit1: TcxDBTextEdit;
    dxLayoutItem193: TdxLayoutItem;
    CbPodeFaturar: TcxDBComboBox;
    dxLayoutItem188: TdxLayoutItem;
    dxLayoutItem200: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    EdtPDesc_Manual: TcxDBCurrencyEdit;
    LiEdtPDesc_Manual: TdxLayoutItem;
    EdtPOutro_Manual: TcxDBCurrencyEdit;
    LiEdtPOutro_Manual: TdxLayoutItem;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem62: TdxLayoutItem;
    LiedtImpostos: TdxLayoutItem;
    edtImpostos: TcxDBCurrencyEdit;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    PmComposicaoRT: TwrProdutoMemoria;
    WRCalc: TWRCalculaConfiguracoes;
    LiedtValor_Original: TdxLayoutItem;
    edtValor_Original: TcxDBCurrencyEdit;
    cbxTipo_Desconto: TcxDBComboBox;
    LicbxTipo_Desconto: TdxLayoutItem;
    LiTipoDesconto: TdxLayoutGroup;
    LibtnAtualizarValor_Original: TdxLayoutItem;
    btnAtualizarValor_Original: TcxButton;
    dtValor_Original: TcxDBDateEdit;
    dxLayoutItem15: TdxLayoutItem;
    PmComposicao: TwrProdutoMemoria;
    WRCalcMemoria: TWRCalculaConfiguracoes;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem13: TdxLayoutItem;
    edtNF_pCredSN: TcxDBCurrencyEdit;
    dxLayoutItem52: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    GrupoDiferencial: TdxLayoutGroup;
    dxLayoutItem147: TdxLayoutItem;
    CBSimNaoTem_Diferimento: TcxDBLookupComboBox;
    dxLayoutItem151: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem170: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutItem173: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutItem174: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    LblCFOPÎNF_CFOPÎOPERACAO: TcxTextEdit;
    dxLayoutItem176: TdxLayoutItem;
    dxLayoutItem179: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎENTRADA_SAIDA: TcxTextEdit;
    dxLayoutItem180: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎPODE_NFE: TcxTextEdit;
    dxLayoutItem181: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎPODE_NFCE: TcxTextEdit;
    dxLayoutItem201: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎPODE_TRANSPORTE: TcxTextEdit;
    dxLayoutItem202: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎTIPO: TcxTextEdit;
    dxLayoutItem210: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎPODE_DEVOLUCAO: TcxTextEdit;
    dxLayoutItem221: TdxLayoutItem;
    LblCFOPÎNF_CFOPÎPODE_COMUNICACAO: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem53: TdxLayoutItem;
    edtLocalÎLocal: TcxDBButtonEdit;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutItem227: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    edtNF_INFADPROD: TcxDBMemo;
    liedtNF_INFADPROD: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    pnlProducaoEtapas: TPanel;
    dxLayoutItem9: TdxLayoutItem;
    Venda_Produto_Prerequisito: TFDQuery;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField3: TFloatField;
    Venda_Produto_Baixa_Automatica: TFDQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    Venda_Produto_Etapas: TFDQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    dxLayoutItem185: TdxLayoutItem;
    edtAtendenteÎPessoas: TcxDBButtonEdit;
    dxLayoutItem186: TdxLayoutItem;
    lblAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutItem207: TdxLayoutItem;
    edtAtendenteÎPessoasÎCOMISSAO: TcxDBCurrencyEdit;
    procedure BtnRecalcularImpostosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnDetalhesICMSClick(Sender: TObject);
    procedure BtnDetalhesIPIClick(Sender: TObject);
    procedure BtnDetalhesPISClick(Sender: TObject);
    procedure btnAddCentroTrabalhoClick(Sender: TObject);
    procedure btnDelCentroTrabalhoClick(Sender: TObject);
    procedure btnNavegacaoAnteriorClick(Sender: TObject);
    procedure btnNavegacaoProximoClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure BtnDetalhesISSQNClick(Sender: TObject);
    procedure BtnDetalhesIIClick(Sender: TObject);
    procedure BtnDetalhesCOFINSClick(Sender: TObject);
    procedure cxDBTextEdit27PropertiesButtonClick(Sender: TObject;   AButtonIndex: Integer);
    procedure MenuDireitaPopup(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtUnidadePropertiesChange(Sender: TObject);
    procedure EdtQuantPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure edtValor_OriginalPropertiesChange(Sender: TObject);
    procedure EdtTotalPropertiesEditValueChanged(Sender: TObject);
    procedure GrupoTabsTabChanged(Sender: TObject);
    procedure EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtComprimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtLarguraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtEspessuraPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtVDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtPOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtVOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtPecasPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure EdtPDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure EdtCFOPÎNF_CFOPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure Venda_Produto_PrerequisitoBeforeEdit(DataSet: TDataSet);
    procedure Venda_Produto_Baixa_AutomaticaBeforeEdit(DataSet: TDataSet);
    procedure Venda_Produto_EtapasBeforeEdit(DataSet: TDataSet);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
  private
    FFrameAnexos: TFrameAnexos;
    FFrameCustos: TFrameCustos;
    FFrameAnexosVenda_Produto: TFrameAnexosVenda_Produto;
    FFrame_Producao_Fluxo: TFrmFrame_Producao_Fluxo_Venda_Produto;

    procedure SetEnabledDataSources(AEnabled: Boolean);
  public
    class procedure AbreProduto(var AForm: TFrmVenda_Produto; const AWRCalc: TWRCalculaConfiguracoes;
      const AGridProdutos: TcxDBTreeList;
      AVenda_Produto_Prerequisito, AVenda_Produto_Baixa_Automatica, AVenda_Produto_Etapas: TFDQuery);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, pcnConversao, Rotinas, Math, Principal, Base_Produto,
  Registry, StrUtils, wrPreencheLookup, wrConversao, frFrameHistorico, wrForms, Base, Tag.APP;

class procedure TFrmVenda_Produto.AbreProduto(var AForm: TFrmVenda_Produto; const AWRCalc: TWRCalculaConfiguracoes;
  const AGridProdutos: TcxDBTreeList;
  AVenda_Produto_Prerequisito, AVenda_Produto_Baixa_Automatica, AVenda_Produto_Etapas: TFDQuery);
begin
  if AForm = nil then
  begin
    AForm := TFrmVenda_Produto.Create(AWRCalc.Owner);
    AForm.PopupParent := TForm(AWRCalc.Owner);

    AForm.WRCalc := AWRCalc;
    AForm.DS.DataSet                 := AWRCalc.DBProduto;
    AForm.UCHist_Cadastro.DataSet    := AWRCalc.DBProduto;
    AForm.DS_CentroTrabalho.DataSet  := AWRCalc.DBCentroTrabalho;
  end;

  // Produção Etapas
  TFrmVenda_Produto(AForm).Venda_Produto_Prerequisito      := AVenda_Produto_Prerequisito;
  TFrmVenda_Produto(AForm).Venda_Produto_Baixa_Automatica  := AVenda_Produto_Baixa_Automatica;
  TFrmVenda_Produto(AForm).Venda_Produto_Etapas            := AVenda_Produto_Etapas;

  AForm.DS.AutoEdit                  := AWRCalc.DSVendaOuCompra.AutoEdit;
  AForm.DS_CentroTrabalho.AutoEdit   := AWRCalc.DSCentroTrabalho.AutoEdit;
  AForm.edtValor.Properties.ReadOnly := AGridProdutos.GetColumnByFieldName('VALOR').Properties.ReadOnly;
  AForm.edtTotal.Properties.ReadOnly := AForm.edtValor.Properties.ReadOnly;
  AForm.ShowModal;
end;

procedure TFrmVenda_Produto.btnAddCentroTrabalhoClick(Sender: TObject);
begin
//  if edtCentro_TrabalhoÎCentro_Trabalho.Text = '' then
//  begin
//    ShowMessageWR('Digite o código do Centro de Trabalho');
//    edtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
//    Exit;
//  end;
//  if (edtCentro_TrabalhoÎCentro_Trabalho.Text <> '') and (lblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO.Caption = '') then
//  begin
//    ShowMessageWR('Centro de trabalho não cadastrado');
//    edtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
//    Exit;
//  end;
//  AlteraDataSet;
//  DS_CentroTrabalho.Dataset.DisableControls;
//  try
//    DS_CentroTrabalho.Dataset.Insert;
//    try
//      DS_CentroTrabalho.Dataset.FieldByName('CODCENTRO_TRABALHO').AsString := edtCentro_TrabalhoÎCentro_Trabalho.Text;
//      DS_CentroTrabalho.Dataset.FieldByName('TEMPO').AsFloat               := EdtCentroTrabalhoEquMinutos.Time;
//      DS_CentroTrabalho.Dataset.FieldByName('CODVENDA_PRODUTO_CT_PRE_REQ').Value := DBlPreRequisito.EditValue;
//      DS_CentroTrabalho.Dataset.Post;
//    except
//      DS_CentroTrabalho.Dataset.Cancel;
//      raise;
//    end;
//    DBlPreRequisito.Text := '';
//    DS_CentroTrabalho.Dataset.Close;
//    DS_CentroTrabalho.Dataset.Open;
//  finally
//    DS_CentroTrabalho.Dataset.EnableControls;
//  end;
//  edtCentro_TrabalhoÎCentro_Trabalho.Text := '';
//  edtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
end;

procedure TFrmVenda_Produto.btnAlterarClick(Sender: TObject);
begin
  inherited;
  DSStateChange(nil);
end;

procedure TFrmVenda_Produto.btnCancelarClick(Sender: TObject);  //TODO: Aqui tem que fazer o rolback da tela, até o ponto de confirmar ou cancelar
begin
  //inherited;
  if DS.DataSet.State in dsEditModes then    // se chegou nesse botão e fez as composições ja deu erro
    DS.DataSet.Cancel;                       // botão não deve existir ou tratar os itens da composições voltarem, isso difícil arramcar o botão é mais fácil
end;

procedure TFrmVenda_Produto.btnConfirmarClick(Sender: TObject);
begin
  //inherited;  não usar os eventos do mestre. Aqui a transação não é comitada

  WRCalc.DBProduto.Post;
end;

procedure TFrmVenda_Produto.btnDelCentroTrabalhoClick(Sender: TObject);
var
  APreRequesito: Integer;
begin
  inherited;
  AlteraDataSet(DS.DataSet);

  if DS_CentroTrabalho.Dataset.IsEmpty then
    Exit;

  APreRequesito:= WRCalc.DBCentroTrabalho.FieldByName('CODIGO').AsInteger;
  if WRCalc.DBCentroTrabalho.Locate('CODVENDA_PRODUTO_CT_PRE_REQ', APreRequesito, []) then
  begin
    ShowMessageWR('Este Centro de Trabalho é pré-requisito de outro item e não pode ser excluído.', MB_ICONWARNING);
    Exit;
  end;
  DS_CentroTrabalho.Dataset.Delete;
end;

procedure TFrmVenda_Produto.btnNavegacaoAnteriorClick(Sender: TObject);
begin
//  inherited;
  WRCalc.TreeList.GotoPrev;
end;

procedure TFrmVenda_Produto.btnNavegacaoProximoClick(Sender: TObject);
begin
//  inherited;
  WRCalc.TreeList.GotoNext;
end;

procedure TFrmVenda_Produto.BtnRecalcularImpostosClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet(DS.DataSet);
  WRCalc.CalcularImpostosProdutoSelecionado;
end;

procedure TFrmVenda_Produto.BtnDetalhesCOFINSClick(Sender: TObject);
begin
  inherited;
  LIPnlCOFINS.MakeVisible;
end;

procedure TFrmVenda_Produto.BtnDetalhesISSQNClick(Sender: TObject);
begin
  inherited;
  liISSQN.MakeVisible;
end;

procedure TFrmVenda_Produto.BtnDetalhesIIClick(Sender: TObject);
begin
  inherited;
  liImportacao.MakeVisible;
end;

procedure TFrmVenda_Produto.BtnDetalhesIPIClick(Sender: TObject);
begin
  inherited;
  liPnlIPI.MakeVisible;
end;

procedure TFrmVenda_Produto.BtnDetalhesICMSClick(Sender: TObject);
begin
  inherited;
  GrupoICMS.MakeVisible;
end;

procedure TFrmVenda_Produto.BtnDetalhesPISClick(Sender: TObject);
begin
  inherited;
  liPIS.MakeVisible;
end;

procedure TFrmVenda_Produto.EdtCFOPÎNF_CFOPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DisplayValue = '' then
  begin

  end;
  if Copy(DisplayValue,1,1) = '3' then
  begin
    ShowMessage('Importação');
  end;
end;

procedure TFrmVenda_Produto.EdtComprimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('COMP', DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtEspessuraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('ESPESSURA', DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtLarguraPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('LARG', DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtPDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  WRCalc.ProdutoAlterarPDesc_Manual(DisplayValue);
end;

procedure TFrmVenda_Produto.EdtPecasPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ValidaCampoMedidas('QTDADEPECA', DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtPOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarCALC_POutro_Manual(DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtQuantPropertiesChange(Sender: TObject);
begin
  inherited;
//  LiedtValor_Por_Peca.Visible:= DS.DataSet.FieldByName('QTDADEPECA').AsFloat <> DS.DataSet.FieldByName('QUANT').AsFloat;  morto
end;

procedure TFrmVenda_Produto.EdtTotalPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if not VendaValidarProdutoValorAbaixoMinimoDS(DS.DataSet, True) then   { TODO -oLeandro -cValidação : CONFERIR ESSA REGRA }
  begin
    EdtTotal.Style.TextColor := clRed;
    EdtTotal.Hint            := 'O valor está abaixo do Valor Mínimo de Venda';
  end else
  begin
    EdtTotal.Style.TextColor := $00008A11;
    EdtTotal.Hint            := '';
  end;
end;

procedure TFrmVenda_Produto.EdtTotalPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarTotal(DisplayValue);
    WRCalc.SuperCalc;
  end;
end;

procedure TFrmVenda_Produto.edtUnidadePropertiesChange(Sender: TObject);
begin
  inherited;
  ProdutoAtualizaViewUnidade(edtUnidade.Text, LiEdtComprimento, LiEdtLargura, LiEdtEspessura);
end;

procedure TFrmVenda_Produto.EdtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarValor(DisplayValue);       // Desconto, acrescimo, impostos entre outros
  end;
end;

procedure TFrmVenda_Produto.edtValor_OriginalPropertiesChange(Sender: TObject);
begin
  inherited;
  LiTipoDesconto.Visible:= DS.DataSet.FieldByName('CALC_VALOR_ORIGINAL').AsFloat <> DS.DataSet.FieldByName('VALOR').AsFloat;
end;

procedure TFrmVenda_Produto.EdtVDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarVDesc_Manual(DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.EdtVOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if WRCalc.DBproduto.State in dsEditModes then
  begin
    WRCalc.ProdutoAlterarCALC_vOutro_Manual(DisplayValue);
  end;
end;

procedure TFrmVenda_Produto.cxButton1Click(Sender: TObject);
begin
  inherited;
  TFrmProduto.Create(self).ShowCadastroModalItem(0, EdtDBCodProduto.Text);
end;

procedure TFrmVenda_Produto.cxDBLookupComboBox1PropertiesChange(
  Sender: TObject);
begin
  inherited;
  GrupoDiferencial.Visible:= (cxDBLookupComboBox1.EditValue = '51');
end;

procedure TFrmVenda_Produto.cxDBTextEdit27PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if DS.AutoEdit then    // Aqui deve olhar o própia tela, a regra ja de ve estar no Autoedit = False
  begin
    AlteraDataSet;
    if OpenDialog1.Execute then
      DS.DataSet.FieldByName('PATH').AsString := OpenDialog1.FileName;
  end;
end;

procedure TFrmVenda_Produto.DSStateChange(Sender: TObject);
begin
  if DS.DataSet <> nil then
    inherited;
end;

procedure TFrmVenda_Produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  {Aqui precisamos desativar os DataSources senão eles ficam disparando eventos nos
   edits mesmo depois que a tela for fechada, deixando a venda lenta}
  SetEnabledDataSources(False);
end;

procedure TFrmVenda_Produto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DS.State in dsEditModes then
  begin
    case ShowMessageWR('Existe um processo em aberto!!!' + sLineBreak + 'Deseja salvar suas modificações?', MB_ICONWARNING or MB_YESNOCANCEL) of
      mrCancel: CanClose := False;
      mrYes: btnConfirmar.Click;
      mrNo: btnCancelar.Click;
    end;
  end;
end;

procedure TFrmVenda_Produto.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupindIncentivo(CbISSQNIncentivadorCultural.Properties);
  PreencheLookupDeterminacaoBaseIcms(cbbICMSModalidadeBaseCalculo.Properties);
  PreencheLookupTpcnISSQNcSitTrib(CbISSQNTipoTributacao.Properties);
  PreencheComboProdutoTipo_Desconto(cbxTipo_Desconto.Properties);
  PreencheLookupProduto_Estoque_Local(CbLocalEstoque.Properties);
  PreencheLookupDeterminacaoBaseIcmsST(CbICMSModalidadeBCST.Properties);
  PreencheLookupSimNao(CBSimNaoTem_Diferimento.Properties);    // Não esta padrão

  NF_CST.Open;              { TODO -oLeandro -cPreenche : Migrar para o Preenche }
  NT_CST_PIS_COFINS.Open;
  NF_CST_IPI.Open;
end;

procedure TFrmVenda_Produto.FormShow(Sender: TObject);
begin
  Codigo := '';
  inherited;
  SetEnabledDataSources(True);
  GrupoCustos.Visible := GetPodeVerCustos;
  LiPnlFrameLogAtividades.Visible := GetPodeVerCustos;
  GrupoVendaProduto.Enabled := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  GrupoProducao.Enabled     := GrupoVendaProduto.Enabled;

  if (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') then
  begin
    LiEdtPDesc_Manual.Enabled := True;
    LiEdtVDesc_Manual.Enabled := True;
    UCControls1.AplicaDireito(EdtPDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
    UCControls1.AplicaDireito(EdtVDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
  end
  else
  begin
    LiEdtPDesc_Manual.Enabled := False;
    LiEdtVDesc_Manual.Enabled := False;
  end;






//  LiEdtPDesc_Manual.Enabled   := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
//  LiEdtVDesc_Manual.Enabled   := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  LiEdtPOutro_Manual.Enabled  := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  LiEdtVOutro_Manual.Enabled  := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  LiedtImpostos.Enabled       := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  LiedtValor_Original.Enabled := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;
  LicbxTipo_Desconto.Enabled  := (WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull) and not(DS.DataSet.FieldByName('EM_PRODUCAO').AsString = 'S') ;


  GrupoProducaoFluxo.Visible  := AWR_APP[TagAPP_Ordem_Producao].Ativo;
  TabProducao.Visible         := AWR_APP[TagAPP_Ordem_Producao].Ativo;
  GrupoAnexo.Visible          := AWR_APP[TagAPP_Anexo].Ativo;

  UCControls1.AplicaDireito(edtAtendenteÎPessoasÎCOMISSAO,'Frame_Venda_Venda.edtAtendenteÎPessoasÎCOMISSAO');
//  UCControls1.AplicaDireito(EdtPDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
//  UCControls1.AplicaDireito(EdtVDesc_Manual,'Frame_Venda_Venda.LbUCPermiteDarDesconto');
  UCControls1.AplicaDireito(cxDBTextEdit10,'Frame_Venda_Venda.LbUCAlterarDescricaoProduto');
end;

procedure TFrmVenda_Produto.GrupoTabsTabChanged(Sender: TObject);
begin
  inherited;
  { TODO -oLeandro -chistorico : Preciso do historico no GrupoTabsTabChanged, Frame Histórico }
  // Tem que ser no Show por causa do DS que só é atribuído depois do Create
  // TFrameRegistro_Atividade.Cadastros(FFrameRegistro_Atividade, DS, PnlFrameRegistro_Atividade, FFrameAnexos);
  if LiPnlFrameLogAtividades.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameRegistro_Atividade, UCHist_Cadastro, nil );
  if GrupoCustos.ActuallyVisible then
    TFrameCustos.CarregaFrame(FFrameCustos, PnlFrameCustos, WRCalc);
  if GrupoAnexo.ActuallyVisible then
  begin
    TFrameAnexosVenda_Produto.CarregaFrame1(FFrameAnexosVenda_Produto, PnlFrameAnexos, DS, UCHist_Cadastro);
//    FFrameAnexos.MenuGrid.AutoPopup := DS.AutoEdit;
  end;

  if GrupoProducaoFluxo.ActuallyVisible then
    TFrmFrame_Producao_Fluxo_Venda_Produto.CarregaFrame1(FFrame_Producao_Fluxo, pnlProducaoEtapas, DS, Venda_Produto_Etapas, Venda_Produto_Prerequisito, Venda_Produto_Baixa_Automatica);

end;

procedure TFrmVenda_Produto.MenuDireitaPopup(Sender: TObject);
begin
  inherited;
  VisualizarProduo1.Visible := AWR_APP[TagAPP_Ordem_Producao].Ativo;
  VisualizarProduo1.Enabled := (DS.DataSet.State = dsBrowse) and not DS.DataSet.FieldByName('CODPRODUCAO').IsNull;
end;

procedure TFrmVenda_Produto.SetEnabledDataSources(AEnabled: Boolean);
begin
  DS.Enabled := AEnabled;
  DS_CentroTrabalho.Enabled := AEnabled;
end;

procedure TFrmVenda_Produto.Venda_Produto_Baixa_AutomaticaBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(DS.DataSet);
end;

procedure TFrmVenda_Produto.Venda_Produto_EtapasBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(DS.DataSet);
end;

procedure TFrmVenda_Produto.Venda_Produto_PrerequisitoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet(DS.DataSet);
end;

procedure TFrmVenda_Produto.WREventosCadastroLayoutChange(Sender: TObject);
begin
  inherited;
  dxLayoutItem50.Visible := AWR_APP[TagAPP_Multiplos_Estoques].Ativo;

end;

procedure TFrmVenda_Produto.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets1.AdicionarDataSet(PmComposicao.Produto, 'PRODUTO');
end;

end.
