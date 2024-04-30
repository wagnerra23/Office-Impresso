unit ConPlanilha_Tempo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  dxOfficeSearchBox, dxBar, cxBarEditItem, System.Generics.Collections,
  WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxStatusBar, dxRibbonStatusBar, cxDropDownEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator;

type
  TConsuPlanilha_Tempo = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPESSOA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1DURACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    btnNovas: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnLogados: TcxButton;
    DSConsultaLogados: TDataSource;
    GridConsultaDBTableViewLogados: TcxGridDBTableView;
    GridConsultaDBTableViewLogadosID_LOGIN: TcxGridDBColumn;
    GridConsultaDBTableViewLogadosUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableViewLogadosCODEMPRESA: TcxGridDBColumn;
    GridConsultaDBTableViewLogadosNOME_MAQUINA: TcxGridDBColumn;
    GridConsultaDBTableViewLogadosDATA: TcxGridDBColumn;
    ConsultaLogados: TFDQuery;
    procedure btnLogadosDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure btnNovasDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuPlanilha_Tempo: TConsuPlanilha_Tempo;

implementation

{$R *.dfm}

procedure TConsuPlanilha_Tempo.btnLogadosDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  inherited;
  //Muda o Grid e Mostra quem esta Logado
  ConsultaLogados.Open;
  cxGridLevel1.GridView := GridConsultaDBTableViewLogados;

end;

procedure TConsuPlanilha_Tempo.btnNovasDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  inherited;
  ConsultaLogados.Close;;
  cxGridLevel1.GridView := GridConsultaDBTableView1;
end;

initialization
  RegisterClass(TConsuPlanilha_Tempo);

end.
