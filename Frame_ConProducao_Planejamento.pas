unit Frame_ConProducao_Planejamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConProducao_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Vcl.Menus, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  dxCustomTileControl, dxTileControl, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxGanttControl, dxGanttControlCustomSheet,
  dxGanttControlViewChart, dxGanttControlViewResourceSheet, dxGanttControlViewTimeline, dxGanttControlTasks, dxGanttControlAssignments, dxGanttControlResources,
  dxGanttControlCustomClasses, cxImage, dxRatingControl, cxHyperLinkEdit, dxTokenEdit, cxProgressBar, cxImageComboBox, cxButtonEdit, cxTL, cxTLdxBarBuiltInMenu,
  FireDAC.Stan.StorageBin, cxEditRepositoryItems, dxBar, dxRibbon, UCBase, cxInplaceContainer, cxDBTL, cxTLData, cxGridWinExplorerView, cxGridDBWinExplorerView,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TFrame_Consuproducao_Planejamento = class(TFrame_ConsuProducao_Mestre)
    dxGanttControl1: TdxGanttControl;
    liGantt: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    btnMostrarGrig: TcxButton;
    GrupoGrid: TdxLayoutGroup;
    liSplitGantt: TdxLayoutSplitterItem;
    procedure btnMostrarGrigClick(Sender: TObject);
    procedure dxGanttControl1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Consuproducao_Planejamento: TFrame_Consuproducao_Planejamento;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

procedure TFrame_Consuproducao_Planejamento.btnMostrarGrigClick(Sender: TObject);
begin
  inherited;
  GrupoDados.Visible:=Not GrupoDados.Visible;
  if btnMostrarGrig.Caption = 'Mostrar grid' then
    btnMostrarGrig.Caption := 'Ocultar grid'
  else
    btnMostrarGrig.Caption := 'Mostrar grid';

  liSplitGantt.Visible:= GrupoDados.Visible;
end;

procedure TFrame_Consuproducao_Planejamento.dxGanttControl1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = 70) then
  begin
    btnMostrarGrig.Click;
    GridConsultaDBTableView1.Controller.ShowFindPanel;
  end;
end;

initialization
  RegisterClass(TFrame_Consuproducao_Planejamento);
  RegisterFrameCon(Tag_Producao_Planejamento, TFrame_Consuproducao_Planejamento);

end.
