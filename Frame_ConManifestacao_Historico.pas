unit Frame_ConManifestacao_Historico;

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
  cxGrid, dxLayoutControl, cxMemo, cxRichEdit, cxHyperLinkEdit, System.StrUtils, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrame_ConsuManifestacao_Historico = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_CONSULTA: TcxGridDBColumn;
    GridConsultaDBTableView1DADOS: TcxGridDBColumn;
    GridConsultaDBTableView1SUCESSO_REQUISICAO: TcxGridDBColumn;
    GridConsultaDBTableView1EVENTOS: TcxGridDBColumn;
    GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1REQUISICAO: TcxGridDBColumn;
    procedure GridConsultaGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure GridConsultaDBTableView1EVENTOSPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridConsultaDBTableView1EVENTOSPropertiesURLClick(
      Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuManifestacao_Historico: TFrame_ConsuManifestacao_Historico;

implementation

{$R *.dfm}

uses
  Base, Tag.Form;

procedure TFrame_ConsuManifestacao_Historico.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Focused or AViewInfo.Selected then
  begin
    ACanvas.Brush.Color := clMenu;
    ACanvas.Font.Color := $00484848;
  end
  else
  begin
    ACanvas.Brush.Color := clMenu;
//    ACanvas.Font.Color := $00484848;
  end;
  if AViewInfo.Item.Index = GridConsultaDBTableView1EVENTOS.Index then
  begin
    ACanvas.Font.Color := clBlue;
  end;
end;

procedure TFrame_ConsuManifestacao_Historico.GridConsultaDBTableView1EVENTOSPropertiesURLClick(
  Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
begin
  inherited;
  ShowMessage(URLText);
  if Sender.ClassName = '' then
    Exit;
end;

procedure TFrame_ConsuManifestacao_Historico.GridConsultaDBTableView1EVENTOSPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if Sender.ClassName = '' then
    Exit;
end;

procedure TFrame_ConsuManifestacao_Historico.GridConsultaGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := StringReplace(ARecord.Values[Sender.Index],',',#13#10, [rfReplaceAll]);
end;

initialization
  RegisterClass(TFrame_ConsuManifestacao_Historico);
  RegisterFrameCon(Tag_Manifestacao_HistoricoRequisicoes, TFrame_ConsuManifestacao_Historico);

end.
