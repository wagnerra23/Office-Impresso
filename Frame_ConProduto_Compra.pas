unit Frame_ConProduto_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxImageComboBox, cxCurrencyEdit, dxRatingControl,
  cxLabel, dxLayoutContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.StorageBin, dxScreenTip, uWRCalculaConfiguracoes,
  uWRFormataCamposDataSet, ThdTimer, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos,
  frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.DBCtrls,
  cxButtonEdit, dxCustomTileControl, dxTileControl, cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxLayoutControl, cxImage, cxButtons, cxTextEdit,
  cxMemo, Frame_ConProduto_Mestre, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxActivityIndicator;

type
  TFrame_ConsuProduto_Compra = class(TFrame_ConsuProduto_Mestre)
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuProduto_Compra: TFrame_ConsuProduto_Compra;

implementation

{$R *.dfm}

Uses Base, unitFuncoes, Tag.Form;


procedure TFrame_ConsuProduto_Compra.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
//  SQLWhere.AddAnd('PODE_SER_COMPRADO = ''S'' ');
end;

initialization
  RegisterClass(TFrame_ConsuProduto_Compra);
  RegisterFrameCon(Tag_Produto_Compra, TFrame_ConsuProduto_Compra);

end.
