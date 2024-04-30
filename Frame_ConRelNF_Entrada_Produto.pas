unit Frame_ConRelNF_Entrada_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections,
  WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, cxDataControllerConditionalFormattingRulesManagerDialog, cxCurrencyEdit, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, Frame_ConEstoque_Mestre;

type
  TFrame_ConsuRelNF_Entrada_Produto = class(TFrame_ConsuEstoque_Mestre)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuRelNF_Entrada_Produto: TFrame_ConsuRelNF_Entrada_Produto;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrame_ConsuRelNF_Entrada_Produto);
  RegisterFrameCon(Tag_NF_Entrada_Produto, TFrame_ConsuRelNF_Entrada_Produto);


end.
