unit ConConfiguracao_Acoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, cxGridTableView,
  cxGridDBTableView, WREventos, UCHistDataset, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGrid, dxLayoutControl, dxPSRichEditControlLnk, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxBarEditItem, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxServerModeData, dxServerModeFireDACDataSource, dxRibbonStatusBar,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator;

type
  TConsuConfiguracao_Acoes = class(TConsuM)
    ActFiltroForm: TAction;
    ActFiltroAcao: TAction;
    dxLayoutItem1: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    dxLayoutItem2: TdxLayoutItem;
    WRButtonFlat2: TWRButtonFlat;
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure ActFiltroFormExecute(Sender: TObject);
    procedure edtRapidoAgruparPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses StrUtils, wrFuncoes;

{$R *.dfm}

procedure TConsuConfiguracao_Acoes.ActFiltroFormExecute(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TConsuConfiguracao_Acoes.edtRapidoAgruparPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if edtRapidoAgrupar.text = 'Ações'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1ACAO, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Telas'  then
//    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1CONFIGURACAO_FORM, TdxSortOrder.soDescending);
end;

procedure TConsuConfiguracao_Acoes.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
//  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if edtRapidoAgrupar.Text = 'Ações' then
//    AgrupaSubGrid('ACAO', 'ACAO', 'ACAO');
  if edtRapidoAgrupar.Text = 'Telas' then
//    AgrupaSubGrid('CODCONFIGURACAO_FORM', 'CONFIGURACAO_FORM', 'CA.CODCONFIGURACAO_FORM');
end;

procedure TConsuConfiguracao_Acoes.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'CA.ATIVO');
end;

initialization
  RegisterClass(TConsuConfiguracao_Acoes);

end.

