unit Frame_ConComissao_Selecao_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, Frame_ConVenda_Venda, cxCurrencyEdit, cxTL,
  cxTLdxBarBuiltInMenu, dxBar, dxRibbon, uWRFormataCamposDataSet,
  cxEditRepositoryItems, UCBase, cxInplaceContainer, cxDBTL, cxTLData,
  dxActivityIndicator, Vcl.DBCtrls, Vcl.Buttons, cxGridChartView,
  cxGridDBChartView, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrame_ConsuComissao_Selecao_Venda = class(TFrame_ConsuVenda_Venda)
    Financeiro: TFDQuery;
    Comissao_Financeiro: TFDQuery;
    DSComissao_Financeiro: TDataSource;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBViewIS_PAGAR: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1FRASE: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView1VALOR: TcxGridDBColumn;
    cxGridDBTableView1PARCELA: TcxGridDBColumn;
    cxGridDBTableView1DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView1DT_FINANCEIRO: TcxGridDBColumn;
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure GridConsultaDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure QueryDragAndDropBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuComissao_Selecao_venda: TFrame_ConsuComissao_Selecao_Venda;

implementation

{$R *.dfm}

uses UnitFuncoes, Base, wrFuncoes, Tag.Form;

procedure TFrame_ConsuComissao_Selecao_Venda.ConsultaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  Comissao_Financeiro.Open;
end;

procedure TFrame_ConsuComissao_Selecao_Venda.ConsultaBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  Comissao_Financeiro.Close;
end;

procedure TFrame_ConsuComissao_Selecao_Venda.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := clWhite
  else
    ACanvas.Brush.Color := clWhite;

  if  (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBTableView1DT_FINANCEIRO.Index], varString)) <> '') and
      (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGridDBViewIS_PAGAR.Index], varString)) = 'S') then
  begin
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end
  else
  begin
    ACanvas.Font.Color := clGrayText;
    ACanvas.Font.Style := [];
  end;
end;

procedure TFrame_ConsuComissao_Selecao_Venda.GridConsultaDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//  inherited;

end;

procedure TFrame_ConsuComissao_Selecao_Venda.GridConsultaDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  Financeiro.Open;
  MultiploSelectMemTable(Financeiro);
end;

procedure TFrame_ConsuComissao_Selecao_Venda.GridConsultaDBTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
//  inherited;

end;

procedure TFrame_ConsuComissao_Selecao_Venda.GridConsultaDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
//  inherited;

end;

procedure TFrame_ConsuComissao_Selecao_Venda.QueryDragAndDropBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  UCHist_Cadastro.MensagemHistorico.Add('Registro alterado pelo usuário ' + Usuario.Nome + ' pela Tela de COMISSÃO.');
end;

procedure TFrame_ConsuComissao_Selecao_Venda.tcTopoBtnItem1Click(
  Sender: TdxTileControlItem);
begin
//  inherited;
  GridConsultaDBTableView1DblClick(Sender);
end;

initialization
  RegisterClass(TFrame_ConsuComissao_Selecao_Venda);
  RegisterFrameCon(Tag_Comissao_Selecao_Venda, TFrame_ConsuComissao_Selecao_Venda);


end.
