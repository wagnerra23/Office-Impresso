unit ConEquipamento_Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint,
  cxHint, cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, dxStatusBar,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, dxSkinsCore, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  ConsM, dxDateRanges, dxRibbonCustomizationForm, dxRibbonSkins,
  dxOfficeSearchBox, dxBar, cxBarEditItem, System.Generics.Collections,
  frxClass, frxDBSet, dxRibbon, dxRibbonStatusBar, uButtonFlat,
  cxGridViewLayoutContainer, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator;

type
  TConsuEquipamento_Tipo = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaRATEIO: TStringField;
    ConsultaMENSSALIDADE: TFloatField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1RATEIO: TcxGridDBColumn;
    GridConsultaDBTableView1MENSSALIDADE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuEquipamento_Tipo: TConsuEquipamento_Tipo;

implementation

{$R *.dfm}
initialization
  RegisterClass(TConsuEquipamento_Tipo);

end.
