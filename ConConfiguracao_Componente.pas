unit ConConfiguracao_Componente;

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
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, WREventos,
  UCHistDataset, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, cxCheckBox, dxPSRichEditControlLnk, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxBarEditItem, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, System.Generics.Collections,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator;

type
  TConsuConfiguracao_Componente = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1TABELA: TcxGridDBColumn;
    GridConsultaDBTableView1CAMPO: TcxGridDBColumn;
    GridConsultaDBTableView1CAPTION: TcxGridDBColumn;
    GridConsultaDBTableView1HINT: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1FORMATACAO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ActFiltroTabela: TAction;
    dxLayoutItem1: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    GridConsultaDBTableView1FORM: TcxGridDBColumn;
    ActFiltroForm: TAction;
    dxLayoutItem2: TdxLayoutItem;
    WRButtonFlat2: TWRButtonFlat;
    GridConsultaDBTableView1PADRAO: TcxGridDBColumn;
    GridConsultaDBTableView1COMPONENTE: TcxGridDBColumn;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure ActFiltroFormExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TConsuConfiguracao_Componente.ActFiltroFormExecute(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TConsuConfiguracao_Componente.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  if ActFiltroTabela.Checked then
    AgrupaSubGrid('TABELA', 'TABELA', 'TABELA');
  if ActFiltroForm.Checked then
    AgrupaSubGrid('FORM', 'FORM', 'FORM');
end;

initialization
  RegisterClass(TConsuConfiguracao_Componente);

end.
