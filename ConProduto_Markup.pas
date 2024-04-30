unit ConProduto_Markup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSFillPatterns,
  dxPSEdgePatterns, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint,
  cxHint, cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, dxStatusBar,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, dxSkinsCore, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxRibbon, dxOfficeSearchBox,
  dxRibbonStatusBar, cxSchedulerStorage,
  cxSchedulerCustomControls, cxDateNavigator, cxCustomData, cxFilter, cxData,
  dxDateRanges, cxSchedulerDateNavigator, dxPSCompsProvider, dxPSPDFExportCore,
  dxPSPDFExport, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  System.Generics.Collections, UCHistDataset;

type
  TConsuProduto_Markup = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaPERC_CUSTO_FIXO: TFloatField;
    ConsultaPERC_CUSTO_FINANCEIRO: TFloatField;
    ConsultaPERC_LUCRO_DESEJADO: TFloatField;
    ConsultaPERC_CUSTO_VARIAVEL: TFloatField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1PERC_CUSTO_FIXO: TcxGridDBColumn;
    GridConsultaDBTableView1PERC_CUSTO_FINANCEIRO: TcxGridDBColumn;
    GridConsultaDBTableView1PERC_LUCRO_DESEJADO: TcxGridDBColumn;
    GridConsultaDBTableView1PERC_CUSTO_VARIAVEL: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuProduto_Markup);

end.
