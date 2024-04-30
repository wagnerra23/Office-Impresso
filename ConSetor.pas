unit ConSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ConsM, DB, Menus, ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, ExtCtrls, StdCtrls,
  cxGridDBTableView, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxContainer, dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  Datasnap.DBClient, cxClasses, dxServerModeData, dxServerModeFireDACDataSource, dxLayoutLookAndFeels, dxPSCore,
  dxPScxCommon, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit, dxGDIPlusClasses, cxImage,
  Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar, cxCurrencyEdit, cxGroupBox, cxCheckGroup, cxButtons,
  cxTextEdit, cxGridLevel, cxGridServerModeTableView, cxGridCustomView, cxGrid, dxLayoutControl, dxStatusBar,
  cxButtonEdit, Vcl.ImgList, cxCheckBox, dxScreenTip, dxCustomHint, cxHint, dxBar, cxBarEditItem,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList,
  System.ImageList, wrFuncoes, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  frxClass, frxDBSet, uButtonFlat, cxGridViewLayoutContainer, dxTokenEdit, dxDateRanges, UCHistDataset, dxRibbonSkins,
  dxRibbonCustomizationForm, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, System.Generics.Collections, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator;

type
  TConsuSetor = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaRESPONSAVEL: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1RESPONSAVEL: TcxGridDBColumn;
    ConsultaPARENT: TIntegerField;
    GridConsultaDBTableView1PARENT: TcxGridDBColumn;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    liGridArvore: TdxLayoutItem;
    GridArvore: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    SetorTreelist: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    BlobField1: TBlobField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DSSetorTreelist: TDataSource;
    dxLayoutItem2: TdxLayoutItem;
    btnArvore: TcxButton;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure GridArvoreDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btnArvoreDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
    procedure btnTabelaDropDownMenuPopup(Sender: TObject;
      var APopupMenu: TPopupMenu; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuSetor: TConsuSetor;

implementation

{$R *.dfm}
Uses
  StrUtils;

procedure TConsuSetor.btnArvoreDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  inherited;
  GrupoFlip.Visible := False;
  GrupoCabecalho.Visible := False;
  GrupoAlterarView.Visible:=False;
  LiGridArvore.Visible:=True;
end;

procedure TConsuSetor.btnTabelaDropDownMenuPopup(Sender: TObject;
  var APopupMenu: TPopupMenu; var AHandled: Boolean);
begin
  inherited;
  LiGridArvore.Visible:=False;
end;

procedure TConsuSetor.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetorTreelist.Open;
end;

procedure TConsuSetor.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  SetorTreelist.Close;
end;

procedure TConsuSetor.GridArvoreDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TcxDBTreeList) and (TcxDBTreeList(Source).Owner = Self);
end;

procedure TConsuSetor.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'S.ATIVO');
end;

initialization
  RegisterClass(TConsuSetor);

end.
