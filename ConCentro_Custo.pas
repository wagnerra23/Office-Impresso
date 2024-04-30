unit ConCentro_Custo;

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
  dxOfficeSearchBox, dxBar, cxBarEditItem, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxStatusBar, dxRibbonStatusBar, cxDropDownEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, UCHistDataset, dxSkinsCore,
  dxScrollbarAnnotations, cxCustomStatusKeeper, cxStatusKeeper, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TConsuCentro_Custo = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1REFERENCIA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuCentro_Custo: TConsuCentro_Custo;

implementation

{$R *.dfm}
initialization
  RegisterClass(TConsuCentro_Custo);

end.
