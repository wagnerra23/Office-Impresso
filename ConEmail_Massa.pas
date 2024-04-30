unit ConEmail_Massa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxDateRanges, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxRibbon, dxOfficeSearchBox,
  System.Generics.Collections, dxRibbonStatusBar, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  dxPSRichEditControlLnk;

type
  TConsuEmail_Massa = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaCODUSUARIO: TIntegerField;
    ConsultaSITUACAO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    procedure GridConsultaDBTableView1SITUACAOGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  wrConversao;

procedure TConsuEmail_Massa.GridConsultaDBTableView1SITUACAOGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
begin
  inherited;
  if ARecord <> nil then
    AText := TEmailMassaSituacao.GetFromCodigo(VarToStrDef(ARecord.Values[GridConsultaDBTableView1SITUACAO.Index], '')).Descricao;
end;

initialization
  RegisterClass(TConsuEmail_Massa);

end.
