unit frFrameImposto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadPessoasFrameFuncoes, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uWRFormataCamposDataSet, uWRFrameEventos, cxClasses, dxLayoutLookAndFeels,
  UCBase, System.ImageList, Vcl.ImgList, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, FrFrameMestre, Vcl.ExtCtrls, cxCurrencyEdit, dxStatusBar,
  cxCheckBox, cxDBEdit, cxButtonEdit, cxLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFrameImposto = class(TFrmFrameMestre)
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    RadioGroup1: TRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    RadioGroup2: TRadioGroup;
    dxLayoutItem3: TdxLayoutItem;
    RadioGroup3: TRadioGroup;
    dxLayoutItem4: TdxLayoutItem;
    PnlFrameHistorico: TPanel;
    CbxCST_IPI: TcxDBLookupComboBox;
    cbPIEEstado: TcxComboBox;
    EdtPIEMVA: TcxCurrencyEdit;
    EdtPIEPrecoPauta: TcxCurrencyEdit;
    EdtPIEICMSST: TcxCurrencyEdit;
    EdtPIEICMS: TcxCurrencyEdit;
    EdtPREDBCST: TcxCurrencyEdit;
    EdtFCPUFDest: TcxCurrencyEdit;
    cxGrid1: TcxGrid;
    DBTableView1: TcxGridDBTableView;
    DBTableView1ESTADO: TcxGridDBColumn;
    DBTableView1MVA: TcxGridDBColumn;
    DBTableView1PRECO_PAUTA: TcxGridDBColumn;
    DBTableView1PICMSST: TcxGridDBColumn;
    DBTableView1PICMS: TcxGridDBColumn;
    DBTableView1PREDBCST: TcxGridDBColumn;
    DBTableView1PFCP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    CbDeterminacaoBaseIcms: TcxDBLookupComboBox;
    DBEpRedBC: TcxDBCurrencyEdit;
    edtPREDBC: TcxDBCurrencyEdit;
    DBEdit2: TcxDBCurrencyEdit;
    CbDeterminacaoBaseIcmsST: TcxDBLookupComboBox;
    DBEpRedBCST: TcxDBCurrencyEdit;
    DBEpMVAST: TcxDBCurrencyEdit;
    CbxCST_PIS: TcxDBLookupComboBox;
    DBEdit5: TcxDBTextEdit;
    DBEdit4: TcxDBCurrencyEdit;
    DBEIPI_pIPI: TcxDBCurrencyEdit;
    edtCodEnquadramento: TcxDBTextEdit;
    DBEPIS_pPIS: TcxDBCurrencyEdit;
    DBEdit3: TcxDBCurrencyEdit;
    DBEPISST_pPIS: TcxDBCurrencyEdit;
    CbCST_CONFINS: TcxDBLookupComboBox;
    CbSimNaoII: TcxDBLookupComboBox;
    DBEII_pII: TcxDBCurrencyEdit;
    DBEII_pIOF: TcxDBCurrencyEdit;
    GridVendaTipo: TcxGrid;
    GridVendaTipoDBTableView2: TcxGridDBTableView;
    GridVendaTipoDBTableView2DESCRICAO: TcxGridDBColumn;
    GridVendaTipoDBTableView2CODNF_CFOP: TcxGridDBColumn;
    GridVendaTipoDBTableView2CODNF_CFOP_FORA: TcxGridDBColumn;
    GridVendaTipoLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    EdtCFOPÎNF_CFOP: TcxDBButtonEdit;
    LblCFOPÎNF_CFOPÎDESCRICAO: TcxLabel;
    cxLabel2: TcxLabel;
    EdtCFOPForaÎNF_CFOP: TcxDBButtonEdit;
    LblCFOPForaÎNF_CFOPÎDESCRICAO: TcxLabel;
    DBEISSQN_pALIQ: TcxDBCurrencyEdit;
    CbISSQNcSitTrib: TcxDBLookupComboBox;
    CbindISSRet: TcxDBLookupComboBox;
    CbindIncentivo: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    CbSimNaoICMS: TcxDBLookupComboBox;
    CbSimNaoICMS_ST: TcxDBLookupComboBox;
    CbSimNaoPIS: TcxDBLookupComboBox;
    CbSimNaoIPI: TcxDBLookupComboBox;
    CbSimNaoCONFINS: TcxDBLookupComboBox;
    DBECOFINS_pCOFINS: TcxDBCurrencyEdit;
    DBEdit6: TcxDBCurrencyEdit;
    DBEdit8: TcxDBTextEdit;
    DBECOFINSST_pCOFINS: TcxDBCurrencyEdit;
    CBSimNaoISSQN: TcxDBLookupComboBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    CbImpostoPafEcf: TcxDBLookupComboBox;
    CbNF_CST: TcxDBLookupComboBox;
    CBSimNaoTem_Diferimento: TcxDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    edtcBenef: TcxDBTextEdit;
    LiPnlFrameLogAtividades: TdxLayoutItem;
    GrupoLogAlteracoes: TdxLayoutGroup;
    MainLayoutGroup3: TdxLayoutGroup;
    GrupoICMS: TdxLayoutGroup;
    GrupoPIS: TdxLayoutGroup;
    GrupoIPI: TdxLayoutGroup;
    GrupoCOFINS: TdxLayoutGroup;
    GrupoImpostoPorEstado: TdxLayoutGroup;
    MainLayoutGroup13: TdxLayoutGroup;
    MainLayoutGroup15: TdxLayoutGroup;
    MainLayoutGroup14: TdxLayoutGroup;
    MainLayoutGroup16: TdxLayoutGroup;
    MainLayoutItem34: TdxLayoutItem;
    MainLayoutGroup18: TdxLayoutGroup;
    MainLayoutItem58: TdxLayoutItem;
    MainLayoutItem59: TdxLayoutItem;
    MainLayoutItem60: TdxLayoutItem;
    MainLayoutItem61: TdxLayoutItem;
    MainLayoutItem62: TdxLayoutItem;
    MainLayoutItem63: TdxLayoutItem;
    MainLayoutItem64: TdxLayoutItem;
    MainLayoutItem65: TdxLayoutItem;
    MainLayoutItem68: TdxLayoutItem;
    MainLayoutItem66: TdxLayoutItem;
    GrupoICMSCalculos: TdxLayoutGroup;
    MainLayoutItem3: TdxLayoutItem;
    MainLayoutItem19: TdxLayoutItem;
    MainLayoutItem22: TdxLayoutItem;
    MainLayoutItem24: TdxLayoutItem;
    GrupoICMSSTCalculos: TdxLayoutGroup;
    MainLayoutItem5: TdxLayoutItem;
    MainLayoutItem25: TdxLayoutItem;
    MainLayoutItem26: TdxLayoutItem;
    GrupoPISDados: TdxLayoutGroup;
    MainLayoutItem29: TdxLayoutItem;
    GrupoIPIDados: TdxLayoutGroup;
    GrupoIPICalculos: TdxLayoutGroup;
    MainLayoutItem39: TdxLayoutItem;
    MainLayoutItem38: TdxLayoutItem;
    MainLayoutItem37: TdxLayoutItem;
    MainLayoutItem35: TdxLayoutItem;
    GrupoPISCalculos: TdxLayoutGroup;
    GrupoPISCalculosInt: TdxLayoutGroup;
    MainLayoutItem31: TdxLayoutItem;
    MainLayoutItem33: TdxLayoutItem;
    GrupoPISSTCalculos: TdxLayoutGroup;
    MainLayoutItem32: TdxLayoutItem;
    MainLayoutItem40: TdxLayoutItem;
    MainLayoutGroup7: TdxLayoutGroup;
    GroupOutrosImpostos: TdxLayoutGroup;
    MainLayoutGroup11: TdxLayoutGroup;
    GrupoII: TdxLayoutGroup;
    MainLayoutItem48: TdxLayoutItem;
    GrupoIICalculos: TdxLayoutGroup;
    MainLayoutItem50: TdxLayoutItem;
    GrupoIOF: TdxLayoutGroup;
    MainLayoutItem51: TdxLayoutItem;
    GrupoNaturezaOperacao: TdxLayoutGroup;
    MainLayoutItem80: TdxLayoutItem;
    GrupoCFOP: TdxLayoutGroup;
    MainLayoutGroup23: TdxLayoutGroup;
    MainLayoutItem74: TdxLayoutItem;
    MainLayoutGroup22: TdxLayoutAutoCreatedGroup;
    MainLayoutItem73: TdxLayoutItem;
    MainLayoutItem75: TdxLayoutItem;
    MainLayoutGroup25: TdxLayoutGroup;
    MainLayoutItem78: TdxLayoutItem;
    MainLayoutGroup24: TdxLayoutAutoCreatedGroup;
    MainLayoutItem77: TdxLayoutItem;
    MainLayoutItem79: TdxLayoutItem;
    GrupoISS: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    GrupoISSQN: TdxLayoutGroup;
    MainLayoutItem47: TdxLayoutItem;
    MainLayoutItem41: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    GrupoCOFINSCalculos: TdxLayoutGroup;
    MainLayoutGroup4: TdxLayoutGroup;
    MainLayoutItem42: TdxLayoutItem;
    MainLayoutItem44: TdxLayoutItem;
    MainLayoutItem45: TdxLayoutItem;
    MainLayoutGroup6: TdxLayoutGroup;
    MainLayoutItem43: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    GrupoDiferencial: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    liedtcBenef: TdxLayoutItem;
    DSNF_NCM_Imposto_Estado: TDataSource;
    NF_NCM_Imposto_Estado: TFDQuery;
    NF_NCM_Imposto: TFDQuery;
    DSNF_NCM_Imposto: TDataSource;
    TransaFD: TFDTransaction;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    procedure wrFrameEventosInicializar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure CarregaFrame(var AFrame: TFrameImposto; AParent: TWinControl; ADataSource: TDataSource);
  end;

implementation

{$R *.dfm}

Uses wrFuncoes, wrPreencheLookup;
{ TFrameImposto }

class procedure TFrameImposto.CarregaFrame(var AFrame: TFrameImposto;
  AParent: TWinControl; ADataSource: TDataSource);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameImposto.Create(AParent, ADataSource);
//    AFrame.WRCalc := AWRCalc;
    AFrame.wrFrameEventos.DoOnInicializar;
  end;
  AFrame.NF_NCM_Imposto.Open;
  AFrame.NF_NCM_Imposto_Estado.Open;
end;

procedure TFrameImposto.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
  PreencheLookupCST_ICMS(CbNF_CST.Properties);
  PreencheLookupCST_PIS_COFINS(CbxCST_PIS.Properties);
  PreencheLookupCST_PIS_COFINS(CbCST_CONFINS.Properties);
  PreencheLookupCST_IPI(CbxCST_IPI.Properties);
  PreencheLookupindIncentivo(CbindIncentivo.Properties);
  PreencheLookupindISSRet(CbindISSRet.Properties);
  PreencheLookupDeterminacaoBaseIcms(CbDeterminacaoBaseIcms.Properties);
  PreencheLookupDeterminacaoBaseIcmsST(CbDeterminacaoBaseIcmsST.Properties);
  PreencheLookupTpcnISSQNcSitTrib(CbISSQNcSitTrib.Properties);
  PreencheLookupImpostoPafEcf(CbImpostoPafEcf.Properties);
  PreencheLookupCSTICMST_CSOSN(CbNF_CST.Properties);

  PreencheLookupSimNao(CbSimNaoII.Properties);       // Não esta padrão
  PreencheLookupSimNao(CbSimNaoICMS.Properties);     // Não esta padrão
  PreencheLookupSimNao(CbSimNaoICMS_ST.Properties);  // Não esta padrão
  PreencheLookupSimNao(CbSimNaoPIS.Properties);      // Não esta padrão
  PreencheLookupSimNao(CbSimNaoIPI.Properties);      // Não esta padrão
  PreencheLookupSimNao(CbSimNaoCONFINS.Properties);  // Não esta padrão
  PreencheLookupSimNao(CBSimNaoISSQN.Properties);    // Não esta padrão
  PreencheLookupSimNao(CBSimNaoTem_Diferimento.Properties);    // Não esta padrão
end;

end.
