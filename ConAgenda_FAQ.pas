unit ConAgenda_FAQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, cxClasses, dxServerModeData, dxServerModeFireDACDataSource, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBEdit, dxGDIPlusClasses, cxImage, Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar,
  cxCurrencyEdit, cxGroupBox, cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxStatusBar,
  cxRichEdit, dxScreenTip, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxButtonEdit,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog,
  WREventos, cxImageList, dxDateRanges, ConsM,
  dxRibbonCustomizationForm, dxRibbonSkins, dxOfficeSearchBox, dxBar,
  cxBarEditItem, System.Generics.Collections, frxClass, frxDBSet, dxRibbon,
  dxRibbonStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator;

type
  TConsuAgenda_FAQ = class(TConsuM)
    dxLayoutControl1Item15: TdxLayoutItem;
    CbAtivo: TcxComboBox;
    dxLayoutControl1Group1: TdxLayoutGroup;
    ConsultaCODIGO: TStringField;
    ConsultaDESCRICAO: TStringField;
    ConsultaRESPOSTA: TBlobField;
    ConsultaVALOR: TFloatField;
    ConsultaTIPO: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaINDICE1: TIntegerField;
    ConsultaINDICE2: TIntegerField;
    ConsultaINDICE3: TIntegerField;
    ConsultaINDICE4: TIntegerField;
    ConsultaDATA: TSQLTimeStampField;
    ConsultaTAG: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1RESPOSTA: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1TAG: TcxGridDBColumn;
    procedure GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  ConsuAgenda_FAQ: TConsuAgenda_FAQ;

implementation

{$R *.dfm}

uses
  wrFuncoes, UnitFuncoes;

procedure TConsuAgenda_FAQ.GridConsultaDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index > -1 then
  begin
    if (GridConsultaDBTableView1.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridConsultaDBTableView1TIPO.Index] = 'T') then
    begin
      ACanvas.Font.Color := clRed;
      ACanvas.Font.Style := [fsBold];
    end;
  end;
end;

procedure TConsuAgenda_FAQ.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  if CbAtivo.ItemIndex > 0 then
    SQLWhere.AddAnd('(ATIVO = ' + QuotedStr(ComboBoxGetItemSelecionado(CbAtivo)) + ')');
end;

initialization
  RegisterClass(TConsuAgenda_FAQ);

end.
