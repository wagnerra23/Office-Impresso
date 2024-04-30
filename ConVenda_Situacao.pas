unit ConVenda_Situacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint,
  cxHint, cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, dxStatusBar,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomView, cxGrid, dxLayoutControl, dxSkinsCore, cxDataControllerConditionalFormattingRulesManagerDialog,
  WREventos, cxImageList, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, frxClass, frxDBSet, dxDateRanges, uButtonFlat, cxGridViewLayoutContainer,
  dxTokenEdit, UCHistDataset, dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, System.Generics.Collections, dxRibbonStatusBar,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator;

type
  TConsuVenda_Situacao = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuVenda_Situacao);

end.
