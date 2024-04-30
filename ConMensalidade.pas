unit ConMensalidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxCheckBox, dxScreenTip, dxCustomHint, cxHint, cxClasses, dxBar, cxBarEditItem, Vcl.ImgList,
  FireDAC.Comp.Client, dxServerModeData, dxServerModeFireDACDataSource, dxLayoutLookAndFeels, FireDAC.Comp.DataSet,
  dxPSCore, dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, cxDBEdit, dxGDIPlusClasses, cxImage, Gradient, Vcl.StdCtrls, cxButtons, cxDateProfileButton,
  cxCalendar, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridServerModeTableView, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Imaging.pngimage, dxLayoutControl, System.Actions, Vcl.ActnList,
  dxSkinsdxStatusBarPainter, dxStatusBar, ConsM, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList, dxDateRanges, frxClass,
  frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, UCHistDataset, dxRibbonSkins,
  dxRibbonCustomizationForm, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, System.Generics.Collections,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper, dxScrollbarAnnotations;

type
  TConsuMensalidade = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaMES: TDateField;
    ConsultaDT_FINANCEIRO: TSQLTimeStampField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1MES: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuMensalidade);

end.
