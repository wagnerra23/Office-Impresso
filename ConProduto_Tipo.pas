unit ConProduto_Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, ConsM, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
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
  dxLayoutControl, dxStatusBar, cxButtonEdit, Vcl.ImgList, cxCheckBox, dxScreenTip, dxCustomHint, cxHint, dxBar,
  cxBarEditItem, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, Vcl.Imaging.pngimage, System.Actions,
  Vcl.ActnList, System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  cxImageList, frxClass, frxDBSet, uButtonFlat,
  cxGridViewLayoutContainer, dxTokenEdit, cxImageComboBox, dxRibbonSkins, dxRibbonCustomizationForm,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxDateNavigator, cxCustomData, cxFilter, cxData, dxDateRanges,
  cxSchedulerDateNavigator, dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.Generics.Collections,
  UCHistDataset, cxCustomStatusKeeper, cxStatusKeeper;

type
  TConsuProduto_Tipo = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1PODE_ALTERAR_ESTOQUE: TcxGridDBColumn;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ConsultaCLASSIFICACAO: TStringField;
    GridConsultaDBTableView1CLASSIFICACAO: TcxGridDBColumn;
    ConsultaPODE_ALTERAR_ESTOQUE: TStringField;
    ImgProduto_Tipo16x16: TcxImageList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  implementation

{$R *.dfm}

uses
  wrFuncoes, wrPreencheLookup;

procedure TConsuProduto_Tipo.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheImageComboBoxProduto_TipoClassificacao(GridConsultaDBTableView1CLASSIFICACAO.Properties);
end;

initialization
  RegisterClass(TConsuProduto_Tipo);

end.

