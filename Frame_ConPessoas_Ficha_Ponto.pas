unit Frame_ConPessoas_Ficha_Ponto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConPessoas_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, dxRatingControl, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, uWRFormataCamposDataSet, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset,
  System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar,
  cxTextEdit, dxCustomTileControl, dxTileControl, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxButtonEdit, dxLayoutControl;

type
  TFrame_ConsuPessoas_Funcionario_Ficha_Ponto = class(TFrame_ConsuPessoas_Mestre)
    tcAcoesItem1: TdxTileControlItem;
    tcAcoesItem2: TdxTileControlItem;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure tcAcoesItem1Click(Sender: TdxTileControlItem);
    procedure tcAcoesItem2Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuPessoas_Funcionario_Ficha_Ponto: TFrame_ConsuPessoas_Funcionario_Ficha_Ponto;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, Principal, PontoEletronico, Tag.Form;

procedure TFrame_ConsuPessoas_Funcionario_Ficha_Ponto.tcAcoesItem1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  with TFrmPontoEletronico.Create(nil) do
  try
    ProcessaArquivo := True;
    GeraPonto       := False;
    //FOnGetDataReferencia(Self, FData);
    ShowModal;
  finally
    Destroy;
  end;
end;

procedure TFrame_ConsuPessoas_Funcionario_Ficha_Ponto.tcAcoesItem2Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  FrmPrincipal.Action_Funcionario_Ponto.Execute;
end;

procedure TFrame_ConsuPessoas_Funcionario_Ficha_Ponto.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_FUN = ''S'' ');
end;

initialization
  RegisterClass(TFrame_ConsuPessoas_Funcionario_Ficha_Ponto);
  RegisterFrameCon(Tag_Funcionario_Ficha_Ponto, TFrame_ConsuPessoas_Funcionario_Ficha_Ponto);

end.
