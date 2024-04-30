unit Frame_ConVenda_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConVenda_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, cxCalendar, cxLabel, cxCurrencyEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, dxBar, dxRibbon, uWRFormataCamposDataSet,
  cxEditRepositoryItems, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxInplaceContainer, cxDBTL, cxTLData,
  dxActivityIndicator, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, cxButtonEdit, dxCustomTileControl, dxTileControl, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxTextEdit, dxLayoutControl,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuVenda_PDV = class(TFrame_ConsuVenda_Mestre)
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_PDV: TFrame_ConsuVenda_PDV;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_ConsuVenda_PDV.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_VENDA = ''S''');
  //SQLWhere.AddAnd('P.IS_PDV = ''S'' ');
end;

initialization
  RegisterClass(TFrame_ConsuVenda_PDV);
  RegisterFrameCon(Tag_Venda_PDV, TFrame_ConsuVenda_PDV);

end.
