unit CadLancaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxClasses, dxLayoutLookAndFeels, cxTextEdit, cxButtonEdit, cxCurrencyEdit,
  Vcl.ExtCtrls, dxGDIPlusClasses, Vcl.StdCtrls, cxButtons, uButtonFlat,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCheckBox, cxLabel,
  dxLayoutControl;

type
  TFrmLancaCredito = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    LbCreditoDisponivel: TcxLabel;
    LbResponsavel: TcxLabel;
    CkCreditoRecebidas: TcxCheckBox;
    LbCreditoRecebidas: TcxLabel;
    CkCreditoPagas: TcxCheckBox;
    LbCreditoPagas: TcxLabel;
    CbCreditoStatus: TcxComboBox;
    GridCredito: TcxGrid;
    GridCreditoDBTableView1: TcxGridDBTableView;
    GridCreditoDBTableView1CODIGO: TcxGridDBColumn;
    GridCreditoDBTableView1CODPEDIDO: TcxGridDBColumn;
    GridCreditoDBTableView1CODEMPRESA: TcxGridDBColumn;
    GridCreditoDBTableView1EMISSAO: TcxGridDBColumn;
    GridCreditoDBTableView1VALOR: TcxGridDBColumn;
    GridCreditoDBTableView1VENCTO: TcxGridDBColumn;
    GridCreditoDBTableView1TIPO: TcxGridDBColumn;
    GridCreditoDBTableView1DOCUMENTO: TcxGridDBColumn;
    GridCreditoDBTableView1STATUS: TcxGridDBColumn;
    GridCreditoDBTableView1HISTORICO: TcxGridDBColumn;
    GridCreditoDBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    GridCreditoDBTableView1PLANOCONTAS: TcxGridDBColumn;
    GridCreditoDBTableView1CODCONTA: TcxGridDBColumn;
    GridCreditoDBTableView1CONTA: TcxGridDBColumn;
    GridCreditoDBTableView1MOTIVO_EXCLUSAO: TcxGridDBColumn;
    GridCreditoLevel1: TcxGridLevel;
    CkCreditoAPagar: TcxCheckBox;
    LbCreditoAPagar: TcxLabel;
    btnLancaCredito: TWRButtonFlat;
    btnCancelarCredito: TWRButtonFlat;
    Image1: TImage;
    btnVisualizarPedido: TWRButtonFlat;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    PnlAdicionarCredito: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    EdtCreditoValor: TcxCurrencyEdit;
    BtnCreditoCancelar: TcxButton;
    BtnCreditoConfirmar: TcxButton;
    EdtCrediarioPlanoContasÎPlanoContas: TcxButtonEdit;
    LblCrediarioPlanoContasÎPlanoContasÎDESCRICAO: TcxLabel;
    cxLabel1: TcxLabel;
    EdtContaÎContas: TcxButtonEdit;
    LblContaÎContasÎDESCRICAO: TcxLabel;
    edtDocumento: TcxTextEdit;
    edtHistorico: TcxTextEdit;
    edtCodigo: TcxTextEdit;
    chkLancaNoFinanceiroRecebida: TcxCheckBox;
    cbTipoPagamento: TcxComboBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    liedtDocumento: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    liedtHistorico: TdxLayoutItem;
    liedtCodigo: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Credito: TFDQuery;
    DSCredito: TDataSource;
    MenuGridCredito: TPopupMenu;
    LanarCrdito1: TMenuItem;
    CancelarCrdito1: TMenuItem;
    VisualizarPedido1: TMenuItem;
    ActionList1: TActionList;
    ActCancelarCredito: TAction;
    ActVisualizarPedido: TAction;
    ActLancarCredito: TAction;
    Action1: TAction;
    cxImageList1: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancaCredito: TFrmLancaCredito;

implementation

{$R *.dfm}


end.
