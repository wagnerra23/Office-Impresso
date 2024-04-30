unit ConNF_Natureza_Operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  cxClasses, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon,
  dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, dxSkinsCore,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, frxClass, frxDBSet, dxDateRanges, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit,
  dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem, UCHistDataset, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator,
  System.Generics.Collections, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper;

type
  TConsuNF_Natureza_Operacao = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    ConsultaNFSE_CODIGO: TIntegerField;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1TIPO_NF: TcxGridDBColumn;
    GridConsultaDBTableView1NFSE_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    ConsultaTIPO_NF: TStringField;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TConsuNF_Natureza_Operacao.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
  SQLWhere.Add(' and TIPO_NF like ''NFe%''');
end;

initialization
  RegisterClass(TConsuNF_Natureza_Operacao);

end.
