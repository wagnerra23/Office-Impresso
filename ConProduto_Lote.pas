unit ConProduto_Lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, ConsM, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSFillPatterns, dxPSEdgePatterns, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, cxGridTableView,
  cxGridDBTableView, frxClass, frxDBSet, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions,
  Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxPSCore, dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGrid,
  dxLayoutControl, dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxDateNavigator, cxCustomData, cxFilter, cxData, dxDateRanges,
  cxSchedulerDateNavigator, dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.Generics.Collections,
  UCHistDataset;

type
  TConsuProduto_Lote = class(TConsuM)
    ConsultaCODPRODUTO: TStringField;
    ConsultaREFERENCIA: TStringField;
    ConsultaQUANTIDADE: TFloatField;
    ConsultaDESCRICAO: TStringField;
    GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1REFERENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1QUANTIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    ConsultaPRODUTO: TStringField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaFANTASIA: TStringField;
    GridConsultaDBTableView1PRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1FANTASIA: TcxGridDBColumn;
    ConsultaCODIGO: TIntegerField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    Action1: TAction;
    ActFiltroCliente: TAction;
    ConsultaPESSOA_CLIENTE_CODIGO: TStringField;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
  private
    FCodProduto: string;
    FCodCliente: string;
  public
    property CodProduto: string read FCodProduto write FCodProduto;
    property CodCliente: string read FCodCliente write FCodCliente;
    class function ConsultaForm(ACodProduto, ACodCliente: string): Integer;
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, StrUtils, UnitFuncoes, Classes.WR;

class function TConsuProduto_Lote.ConsultaForm(ACodProduto, ACodCliente: string): Integer;
var
  AForm: TConsuProduto_Lote;
begin
  AForm := TConsuProduto_Lote.Create(nil);
  try
    AForm.CodProduto := ACodProduto;
    AForm.CodCliente := ACodCliente;
    AForm.Show;
    AguardaFormFechar(AForm);
    Result := StrToIntDef(Codigo, 0);
  finally
    AForm.Free;
  end;
end;

procedure TConsuProduto_Lote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FCodProduto := '';
end;

procedure TConsuProduto_Lote.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  if FCodProduto <> '' then
    SQLWhere.AddAnd('PL.CODPRODUTO = ' + QuotedStr(FCodProduto));
  if (FCodCliente <> '') and ActFiltroCliente.Checked then
    SQLWhere.AddAnd('PL.PESSOA_CLIENTE_CODIGO = ' + QuotedStr(FCodCliente) );
end;

procedure TConsuProduto_Lote.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'PL.ATIVO');
  ASQL := ReplaceStr(ASQL, '(CODIGO', '(PL.CODIGO');
  ASQL := ReplaceStr(ASQL, '(CODPRODUTO', '(PL.CODPRODUTO');
  ASQL := ReplaceStr(ASQL, '(REFERENCIA', '(PL.REFERENCIA');
  ASQL := ReplaceStr(ASQL, '(QUANTIDADE', '(PL.QUANTIDADE');
  ASQL := ReplaceStr(ASQL, '(DESCRICAO', '(PL.DESCRICAO');
  ASQL := ReplaceStr(ASQL, '(PESSOA_CLIENTE_CODIGO', '(PL.PESSOA_CLIENTE_CODIGO');
  ASQL := ReplaceStr(ASQL, '(DT_ALTERACAO', '(PL.DT_ALTERACAO');
  ASQL := ReplaceStr(ASQL, '(PRODUTO', '(P.DESCRICAO');
  ASQL := ReplaceStr(ASQL, '(RAZAOSOCIAL', '(PS.RAZAOSOCIAL');
  ASQL := ReplaceStr(ASQL, '(FANTASIA', '(PS.FANTASIA');
end;

initialization
  RegisterClass(TConsuProduto_Lote);

end.
