unit ConAcabamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, cxClasses, dxServerModeData, dxServerModeFireDACDataSource, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBEdit, dxGDIPlusClasses, cxImage, Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar,
  cxCurrencyEdit, cxGroupBox, cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxStatusBar,
  ConsM, dxScreenTip, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxButtonEdit, cxGridCustomLayoutView,
  cxGridLayoutView, cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  frxClass, frxDBSet, dxDateRanges, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxRibbon, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator,
  System.Generics.Collections, cxDateNavigator, dxRibbonStatusBar;

type
  TConsuAcabamento = class(TConsuM)
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
  RegisterClass(TConsuAcabamento);

end.
