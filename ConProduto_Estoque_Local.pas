unit ConProduto_Estoque_Local;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxLabel, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSFillPatterns, dxPSEdgePatterns,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, cxGridTableView, cxGridDBTableView, frxClass,
  frxDBSet, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses,
  dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView,
  dxTokenEdit, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGrid, dxLayoutControl, dxSkinsCore,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxDateNavigator, cxCustomData, cxFilter, cxData, dxDateRanges,
  cxSchedulerDateNavigator, dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.Generics.Collections,
  UCHistDataset;

type
  TConsuProduto_Estoque_Local = class(TConsuM)
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
  RegisterClass(TConsuProduto_Estoque_Local);

end.
