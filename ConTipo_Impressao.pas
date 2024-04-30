unit ConTipo_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, Menus, ExtCtrls,
  ComCtrls, StdCtrls, cxGridLevel, cxGridDBTableView, cxGrid, IBX.IBCustomDataSet, IBX.IBQuery, Buttons,
  IBX.IBUpdateSQL, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView, Datasnap.DBClient,
  IBX.IBDatabase, dxPSCore, dxPScxCommon, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, cxDBEdit, dxGDIPlusClasses, cxImage, cxTextEdit, cxLabel, cxButtons, cxClasses, cxGridCustomView,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxScreenTip,
  frxClass, frxDBSet, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint,
  cxHint, dxLayoutLookAndFeels, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxCalendar, cxButtonEdit, cxGridCustomLayoutView,
  dxLayoutControl, ConsM, dxCore, cxDateUtils, dxLayoutContainer, dxDateRanges, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxRibbon, dxOfficeSearchBox, dxServerModeData, dxServerModeFireDACDataSource, dxRibbonStatusBar,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TConsuTipo_Impressao = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuTipo_Impressao);

end.
