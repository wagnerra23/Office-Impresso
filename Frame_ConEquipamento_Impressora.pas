unit Frame_ConEquipamento_Impressora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConEquipamento_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxLabel,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxButtonEdit,
  uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxDateNavigator, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxDateProfileButton, cxTextEdit, cxMaskEdit,
  cxCalendar, dxLayoutControl, dxCustomTileControl, dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TConsuEquipamento_Impressora = class(TConsuEquipamento_Mestre)
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuEquipamento_Impressora: TConsuEquipamento_Impressora;

implementation

{$R *.dfm}

uses UnitFuncoes, Base, Tag.Form;

procedure TConsuEquipamento_Impressora.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('E.TIPO = ''IMPRESSORA'' ');
end;

initialization
  RegisterClass(TConsuEquipamento_Impressora);
  RegisterFrameCon(Tag_Equipamento_Impressora, TConsuEquipamento_Impressora);

end.
