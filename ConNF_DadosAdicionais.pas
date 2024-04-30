unit ConNF_DadosAdicionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, cxGridDBTableView, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  Datasnap.DBClient, cxClasses, dxServerModeData, dxServerModeFireDACDataSource, dxLayoutLookAndFeels, dxPSCore,
  dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit,
  dxGDIPlusClasses, cxImage, Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar, cxCurrencyEdit, cxGroupBox,
  cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView, cxGridCustomView, cxGrid,
  dxLayoutControl, dxStatusBar, ConsM, dxScreenTip, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, cxButtonEdit,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog,
  WREventos, cxImageList, dxDateRanges, dxRibbonCustomizationForm,
  dxRibbonSkins, dxOfficeSearchBox, dxBar, cxBarEditItem,
  System.Generics.Collections, frxClass, frxDBSet, dxRibbon, dxRibbonStatusBar,
  uButtonFlat, cxGridViewLayoutContainer, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator;

type
  TConsuNF_DadosAdicionais = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  ConsuNF_DadosAdicionais: TConsuNF_DadosAdicionais;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuNF_DadosAdicionais);

end.
