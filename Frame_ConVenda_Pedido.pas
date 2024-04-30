unit Frame_ConVenda_Pedido;

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
  TFrame_ConsuVenda_Pedido = class(TFrame_ConsuVenda_Mestre)
    tiFiltroOrcamentos: TdxTileControlItem;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure btnOrcamentoRetornarClick(Sender: TObject);
    procedure tiOrcamentosClick(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_Pedido: TFrame_ConsuVenda_Pedido;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Tag.Form, Base_Venda, Frame_CadVenda_Venda, StrUtils, wrFuncoes, Rotinas, DateUtils;

procedure TFrame_ConsuVenda_Pedido.btnOrcamentoRetornarClick(Sender: TObject);
begin
  inherited;
  // Verifica se pode retornar
end;

procedure TFrame_ConsuVenda_Pedido.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;
  ADataLimite, ADataAtual : TDateTime;
begin
  inherited;
  if AViewInfo.Item.Index = GridConsultaDBTableView1PROJETO_DT_FIM.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1PROJETO_DT_FIM.Index];
    if not VarIsNull(AValue) then
    begin
      ADataLimite := AValue;
      ADataLimite := DateOf(ADataLimite);
      ADataAtual  := DateOf(Now);
      if ADataLimite < ADataAtual then
        ACanvas.Brush.Color := clRed
      else if ADataLimite < IncDay(ADataAtual, 30) then
        ACanvas.Brush.Color := clRed
      else if ADataLimite < IncDay(ADataAtual, 60) then
        ACanvas.Brush.Color := clYellow
      else if ADataLimite < IncDay(ADataAtual, 90) then
        ACanvas.Brush.Color := clMoneyGreen;
    end;
  end;
end;

procedure TFrame_ConsuVenda_Pedido.tiOrcamentosClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  tiFiltroOrcamentos.Click;
end;

procedure TFrame_ConsuVenda_Pedido.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_PEDIDO = ''S''');

  if btnFiltro_Filtro.Caption = 'Orçamentos' then
  begin
    SQLWhere.AddAnd('COALESCE(P.IS_VENDA, ''N'') = ''N''');
  end;
end;

initialization
  RegisterClass(TFrame_ConsuVenda_Pedido);
  RegisterFrameCon(Tag_Venda_Pedido, TFrame_ConsuVenda_Pedido);

end.
