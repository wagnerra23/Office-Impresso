unit ConProduto_Grade_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, cxGridDBTableView, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSFillPatterns, dxPSEdgePatterns, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxClasses, dxLayoutLookAndFeels, dxPSCore,
  dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit,
  dxGDIPlusClasses, cxImage, Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar, cxCurrencyEdit,
  cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView, cxGridCustomView, cxGrid,
  dxLayoutControl, dxStatusBar, ConsM, dxScreenTip, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxButtonEdit,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog,
  WREventos, cxImageList, frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon, dxPSRichEditControlLnk, dxOfficeSearchBox,
  dxRibbonStatusBar, cxSchedulerStorage,
  cxSchedulerCustomControls, cxDateNavigator, cxCustomData, cxFilter, cxData,
  dxDateRanges, cxSchedulerDateNavigator, dxPSCompsProvider, dxPSPDFExportCore,
  dxPSPDFExport, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  System.Generics.Collections, UCHistDataset, dxScrollbarAnnotations,
  cxCustomStatusKeeper, cxStatusKeeper;

type
  TConsuProduto_Grade_Modelo = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaT1: TStringField;
    ConsultaT2: TStringField;
    ConsultaT3: TStringField;
    ConsultaT4: TStringField;
    ConsultaT5: TStringField;
    ConsultaT6: TStringField;
    ConsultaT7: TStringField;
    ConsultaT8: TStringField;
    ConsultaT9: TStringField;
    ConsultaT10: TStringField;
    ConsultaT11: TStringField;
    ConsultaT12: TStringField;
    ConsultaT13: TStringField;
    ConsultaT14: TStringField;
    ConsultaT15: TStringField;
    ConsultaT16: TStringField;
    ConsultaT17: TStringField;
    ConsultaT18: TStringField;
    ConsultaT19: TStringField;
    ConsultaT20: TStringField;
    ConsultaT21: TStringField;
    ConsultaT22: TStringField;
    ConsultaT23: TStringField;
    ConsultaT24: TStringField;
    ConsultaT25: TStringField;
    ConsultaT26: TStringField;
    ConsultaT27: TStringField;
    ConsultaT28: TStringField;
    ConsultaT29: TStringField;
    ConsultaT30: TStringField;
    ConsultaTIPO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  StrUtils;

procedure TConsuProduto_Grade_Modelo.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO','PGM.ATIVO');
end;

initialization
  RegisterClass(TConsuProduto_Grade_Modelo);

end.
