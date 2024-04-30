unit ConCentro_Trabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, Menus, ComCtrls, ExtCtrls,
  StdCtrls, cxGridDBTableView, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxContainer, dxCore, cxDateUtils,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, cxGridCustomTableView, cxGridTableView, WREventos, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomView, cxGrid, dxLayoutControl, frxClass,
  frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxDateRanges, dxRibbonSkins, dxRibbonCustomizationForm,
  dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  dxRibbon, dxOfficeSearchBox, dxRibbonStatusBar, System.Generics.Collections,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper;

type
  TConsuCentro_Trabalho = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaRESPONSAVEL: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1RESPONSAVEL: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  StrUtils;

procedure TConsuCentro_Trabalho.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
//
end;

procedure TConsuCentro_Trabalho.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'S.ATIVO');
  ASQL := ReplaceText(ASQL, '(CODIGO', '(S.CODIGO');
  ASQL := ReplaceText(ASQL, '(DESCRICAO', '(S.DESCRICAO');
  ASQL := ReplaceText(ASQL, '(RESPONSAVEL', '(P.RAZAOSOCIAL');
  ASQL := ReplaceText(ASQL, '(DT_ALTERACAO', '(S.DT_ALTERACAO');
end;

initialization
  RegisterClass(TConsuCentro_Trabalho);

end.
