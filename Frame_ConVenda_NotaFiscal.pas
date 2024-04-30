unit Frame_ConVenda_NotaFiscal;

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
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxTextEdit, dxLayoutControl, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrame_ConsuVenda_NotaFiscal = class(TFrame_ConsuVenda_Mestre)
    btnNotaFiscal: TdxTileControlItem;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DSStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_NotaFiscal: TFrame_ConsuVenda_NotaFiscal;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form;

procedure TFrame_ConsuVenda_NotaFiscal.DSStateChange(Sender: TObject);
begin
  inherited;
  btnNotaFiscal.Enabled := (DS.State = dsBrowse);
end;

procedure TFrame_ConsuVenda_NotaFiscal.GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if Consulta.Active and Assigned(Sender)and(Sender.ItemCount > 0) then
  begin
    // Se a venda existir o módulo de faturamento, a nota fical só tira no faturamento
      //NotaFiscal1.Visible :=  VarIsNull(LRecordValue(GridConsultaDBTableView1NOTAFISCAL));
      btnNotaFiscal.Visible := VarIsNull(LRecordValue(GridConsultaDBTableView1NOTAFISCAL, ACellViewInfo)); //True;  EDU
  end;
end;

procedure TFrame_ConsuVenda_NotaFiscal.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('(P.IS_NOTAFISCAL = ''S'')');  // and (P.STATUS like ''ATIVO%'') and (P.NOTAFISCAL > 0)
end;

initialization
  RegisterClass(TFrame_ConsuVenda_NotaFiscal);
  RegisterFrameCon(Tag_Venda_NotaFiscal, TFrame_ConsuVenda_NotaFiscal);

end.
