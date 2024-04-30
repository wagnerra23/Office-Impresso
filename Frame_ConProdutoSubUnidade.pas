unit Frame_ConProdutoSubUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, uWRFrameEventos, Vcl.AppEvnts, Frame_Con,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuProdutoSubUnidade = class(TConsu_Frame)
    GridConsultaDBTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    wrFrameEventos: TwrFrameEventos;
    ApplicationEvents1: TApplicationEvents;
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
  private
    procedure Inicializar;

    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrame_ConsuProdutoSubUnidade;
    ATileSender: TdxTileControlItem; ADataSource: TDataSource); static;
    { Public declarations }
  end;

var
  Frame_ConsuProdutoSubUnidade: TFrame_ConsuProdutoSubUnidade;

implementation

{$R *.dfm}

uses
  Base, UnitFuncoes, Base_ProdutoSubUnidade;

class procedure TFrame_ConsuProdutoSubUnidade.CarregaFrame1(var AFrame: TFrame_ConsuProdutoSubUnidade; ATileSender: TdxTileControlItem; ADataSource: TDataSource);
begin
  if AFrame = nil then
  begin
    AFrame := TFrame_ConsuProdutoSubUnidade.Create(TWinControl(ATileSender.Owner.Owner)); // se colocar só Owner dá erro
    AFrame.wrFrameEventos.DoOnInicializar;
//    ATileSender.DetailOptions.DetailControl:=AFrame;
    AFrame.Inicializar;
  end;
end;

procedure TFrame_ConsuProdutoSubUnidade.GridConsultaDBTableView1DblClick(
  Sender: TObject);
var
  AKeys:Variant;
  AClassFrmCadastro: TFormClass;
  AForm :TFrmBase;
begin
  FSelecionouRegistro := True;
  if Consulta.ResourceOptions.CmdExecMode = amAsync then Exit;

  AKeys:=null;
  if (Consulta.State = dsBrowse) then
    AKeys:=GridConsultaDBTableView1.DataController.GetKeyFieldsValues;


//  TFrmProdutoSubUnidade.Abrir(self); tentativa copiando do eduardo não deu

  AClassFrmCadastro:= TFormClass(FindClass(WREventosCadastro.FormClassCadastro));
  AForm := TFrmBase(AClassFrmCadastro.Create(self));
  with AForm do
  begin
//    PosicionarControleAbaixoDeWR(AForm,EdtPesquisa,alRight);



    ShowCadastroItem(TFrmBase(Owner).tcBase.Tag, AKeys);
  end;



  ApenasConsulta := False;  //isso morre e vira apenas visivel
end;

procedure TFrame_ConsuProdutoSubUnidade.Inicializar;
begin
//  Produto_SubUnidade.Open;
end;


end.
