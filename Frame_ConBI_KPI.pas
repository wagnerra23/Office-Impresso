unit Frame_ConBI_KPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  dxOfficeSearchBox, dxBar, cxBarEditItem, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxStatusBar, dxRibbonStatusBar, cxDropDownEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  StrUtils, System.Generics.Collections, cxCheckBox, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  UCHistDataset, cxCustomStatusKeeper, cxStatusKeeper, Frame_Con, dxCustomTileControl, dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TConsuBI_KPI = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_REGISTROS: TcxGridDBColumn;
    GridConsultaDBTableView1GRAFICO_PERIODO: TcxGridDBColumn;
    GridConsultaDBTableView1GRAFICO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1FORM: TcxGridDBColumn;
    GridConsultaDBTableView1Bloco: TcxGridDBColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    PopupMenu1: TPopupMenu;
    ntnAgruparPorBLOCO1: TMenuItem;
    ntnAgruparFROM1: TMenuItem;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuBI_KPI: TConsuBI_KPI;

implementation

{$R *.dfm}

uses FrFrameDashboards, Principal, Base, Tag.Form;

procedure TConsuBI_KPI.WREventosConsultaSQLTrataNomes(Sender: TObject;
  var ASQL: string);
begin
  inherited;
  ASQL := ReplaceStr(ASQL, '(FORM', '(CF.DESCRICAO');
  if ASQL = 'ATIVO' then
    ASQL := ReplaceStr(ASQL, 'ATIVO', 'C.ATIVO')
  else
    ASQL := ReplaceStr(ASQL, '(ATIVO', '(C.ATIVO');
end;

initialization
  RegisterFrameCon(Tag_bi_KPI, TConsuBI_KPI);


end.
