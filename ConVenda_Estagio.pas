unit ConVenda_Estagio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, WREventos,
  UCHistDataset, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, System.Generics.Collections, dxRibbonStatusBar,
  dxPSdxDBOCLnk, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper;

type
  TConsuVenda_Estagio = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaICONE: TIntegerField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1ICONE: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuVenda_Estagio: TConsuVenda_Estagio;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuVenda_Estagio);

end.