unit ConUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, dxCustomHint, cxHint, cxClasses, Vcl.ImgList, FireDAC.Comp.Client, dxServerModeData,
  dxServerModeFireDACDataSource, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon,
  cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCurrencyEdit, cxDBEdit, dxGDIPlusClasses, cxImage,
  Gradient, Vcl.StdCtrls, cxButtons, cxDateProfileButton, cxCalendar, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridServerModeTableView,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Imaging.pngimage,
  dxLayoutControl, dxSkinsdxStatusBarPainter, System.Actions, Vcl.ActnList, dxStatusBar,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList, dxDateRanges,
  frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxRibbonSkins, dxRibbonCustomizationForm,
  dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  dxRibbon, dxOfficeSearchBox, dxRibbonStatusBar, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator,
  System.Generics.Collections, cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper;

type
  TConsuUnidade = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1FORMULA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuUnidade);

end.
