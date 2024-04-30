unit Frame_ConCor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxServerModeData, dxServerModeFireDACDataSource,
  dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxPropertiesStore, dxPSCore, dxPScxCommon,
  Vcl.ExtCtrls, cxDateProfileButton, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxGroupBox,
  cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxStatusBar,
  dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit, cxDBEdit, dxGDIPlusClasses, cxImage, Gradient,
  ConsM, dxScreenTip, System.ImageList, Vcl.ImgList, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, cxButtonEdit, cxGridCustomLayoutView,
  cxGridLayoutView, cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxDateRanges, dxRibbonSkins,
  dxRibbonCustomizationForm, dxPSRichEditControlLnk, dxOfficeSearchBox, dxBar, cxBarEditItem, UCHistDataset,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon, dxRibbonStatusBar,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  System.Generics.Collections, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper, Frame_Con, dxCustomTileControl, dxTileControl, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TConsuCor = class(TConsu_Frame)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaSIGLA: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1SIGLA: TcxGridDBColumn;
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

Uses Base, UnitFuncoes, Tag.Form;

initialization
  RegisterClass(TConsuCor);
  RegisterFrameCon(Tag_Cor, TConsuCor);

end.
