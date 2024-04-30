unit Frame_ConVenda_Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConVenda_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxStyles, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxCalendar, cxLabel, cxCurrencyEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, dxBar, dxRibbon, uWRFormataCamposDataSet, cxEditRepositoryItems,
  UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxInplaceContainer,
  cxDBTL, cxTLData, dxActivityIndicator, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel,
  cxGridChartView, cxGridDBChartView, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDateNavigator, cxDateProfileButton, cxDropDownEdit,
  dxCustomTileControl, dxTileControl, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxTextEdit, dxLayoutControl;

type
  TFrame_ConsuVenda_Projeto = class(TFrame_ConsuVenda_Mestre)
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_Projeto: TFrame_ConsuVenda_Projeto;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_ConsuVenda_Projeto.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('(P.IS_PROJETO = ''S'')');  // and (P.STATUS like ''ATIVO%'') and (P.NOTAFISCAL > 0)
end;

initialization
  RegisterClass(TFrame_ConsuVenda_Projeto);
  RegisterFrameCon(Tag_Venda_Projeto, TFrame_ConsuVenda_Projeto);

end.
