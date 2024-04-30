unit ConBalanco;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxGridDBTableView, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  cxGridCustomTableView, cxGridTableView, Datasnap.DBClient, cxClasses, dxServerModeData, dxServerModeFireDACDataSource,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, Vcl.ExtCtrls, cxDBLookupComboBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBEdit, dxGDIPlusClasses, cxImage, Gradient, cxDateProfileButton, cxLabel, cxMaskEdit, cxCalendar,
  cxCurrencyEdit, cxGroupBox, cxCheckGroup, Vcl.StdCtrls, cxButtons, cxTextEdit, cxGridLevel, cxGridServerModeTableView,
  cxGridCustomView, cxGrid, dxLayoutControl, dxStatusBar, cxButtonEdit, Vcl.ImgList, cxCheckBox, dxScreenTip,
  dxCustomHint, cxHint, dxBar, cxBarEditItem, cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList, dxDateRanges,
  ConsM, dxRibbonCustomizationForm, dxRibbonSkins, dxOfficeSearchBox,
  System.Generics.Collections, frxClass, frxDBSet, dxRibbon, dxRibbonStatusBar,
  uButtonFlat, cxGridViewLayoutContainer, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset;

type
  TConsuBalanco = class(TConsuM)
    ConsultaCODIGO: TStringField;
    ConsultaDATA: TSQLTimeStampField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DATA: TcxGridDBColumn;
    ConsultaDESCRICAO: TStringField;
    GridConsultaDBTableView1Column1: TcxGridDBColumn;
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure LbNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuBalanco: TConsuBalanco;

implementation

{$R *.dfm}

uses
  UnitFuncoes, System.SysUtils, CadBalanco;

{ TConsuBalanco }

procedure TConsuBalanco.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  LimpaSQLWhere(Consulta);
  if MultiEmpresa then
  begin
    Consulta.SQL.Add('where (BT.CODIGO like ' + QuotedStr('%-' + Empresa.FieldByName('CODIGO').AsString) + ')');
    if Empresa.FieldByName('CODIGO').AsInteger = 1 then
      Consulta.SQL.Add(' or (position(''-'' in BT.CODIGO) = 0)');
  end else
  begin
    Consulta.SQL.Add('where (position(''-'' in BT.CODIGO) = 0)');
  end;
  Consulta.SQL.Add(' order by BT.DATA desc');
  DebugSalvaSQLBeforeOpen(Consulta);
end;

procedure TConsuBalanco.FormCreate(Sender: TObject);
begin
  inherited;
  InicializaSQLWhere(Consulta);
end;

procedure TConsuBalanco.LbNovoClick(Sender: TObject);
var
  AForm: TFrmBalanco;
  AField: TField;
begin
  //inherited;
//  ShowFormCadastro;
//  AForm := TFrmBalanco(FFormCadastro);
  //AForm.NovoBalanco1.Click;
  //AField := AForm.GetMasterDataSet.FindField(AForm.dbtxtDescricao.DataBinding.DataField);
  if AField <> nil then
    AField.AsString := EdtPesquisa.Text;
  Close;
end;

initialization
  RegisterClass(TConsuBalanco);

end.
