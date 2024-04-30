unit Frame_ConProducao_Agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Vcl.Menus, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  dxCustomTileControl, dxTileControl, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, Frame_ConProducao_Mestre, cxImage,
  dxRatingControl, cxHyperLinkEdit, dxTokenEdit, cxProgressBar, cxImageComboBox, cxButtonEdit, cxTL, cxTLdxBarBuiltInMenu, FireDAC.Stan.StorageBin,
  cxEditRepositoryItems, dxBar, dxRibbon, UCBase, cxInplaceContainer, cxDBTL, cxTLData, cxGridWinExplorerView, cxGridDBWinExplorerView, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TFrame_Consuproducao_Agenda = class(TFrame_ConsuProducao_Mestre)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Consuproducao_Agenda: TFrame_Consuproducao_Agenda;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrame_Consuproducao_Agenda);
  RegisterFrameCon(Tag_Agenda_Producao, TFrame_Consuproducao_Agenda);

end.
