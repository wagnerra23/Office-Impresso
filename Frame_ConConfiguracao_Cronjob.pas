unit Frame_ConConfiguracao_Cronjob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
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
  cxGrid, dxLayoutControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, Controller.KPI;

type
  TConsuConfiguracao_Cronjob = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1SERVIDOR_CRON_HOST: TcxGridDBColumn;
    GridConsultaDBTableView1SERVIDOR_CRON_PROCESS: TcxGridDBColumn;
    GridConsultaDBTableView1SERVIDOR_CRON_OS_USER: TcxGridDBColumn;
    GridConsultaDBTableView1SERVIDOR_CRON_ADDRESS: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ULTIMA_ATUALIZACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1ACAO: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    TimerVerificaServidor: TTimer;
    tiPCNaoServidor: TdxTileControlItem;
    tiTornarCronJob: TdxTileControlItem;
    tiExecutarRotina: TdxTileControlItem;
    procedure dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure VerificaSeServidor;
    procedure FrameEnter(Sender: TObject);
    procedure TimerVerificaServidorTimer(Sender: TObject);
    procedure tiTornarCronJobClick(Sender: TdxTileControlItem);
    procedure tcAcoesItem1Click(Sender: TdxTileControlItem);
    procedure tiExecutarRotinaClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuConfiguracao_Cronjob: TConsuConfiguracao_Cronjob;

implementation

{$R *.dfm}

Uses UnitFuncoes, Base, Classes.WR, wrFuncoes, Principal, Tag.Form;

procedure TConsuConfiguracao_Cronjob.dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  Desvincular_Configuracao_Cronjob(Usuario.Codigo);
  Consulta.Refresh;
  VerificaSeServidor;
  FrmPrincipal.TimerCronJob.Enabled := False;
  FrmPrincipal.TimerCronJob.Enabled := True;
end;

procedure TConsuConfiguracao_Cronjob.FrameEnter(Sender: TObject);
begin
  inherited;
  VerificaSeServidor;
end;

procedure TConsuConfiguracao_Cronjob.tcAcoesItem1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  FrmPrincipal.TimerCronJobTimer(nil);
end;

procedure TConsuConfiguracao_Cronjob.tiExecutarRotinaClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  Executa_Configuracao_CronJob(Usuario.Codigo);   // Aqui registra execução na tabela
  TConfig.SaveGlobalDateTime('SERVIDOR_CRON_ULTIMA_ATUALIZACAO', DataHoraSys);

  KPI_Execute_Todos;
end;

procedure TConsuConfiguracao_Cronjob.TimerVerificaServidorTimer(
  Sender: TObject);
begin
  inherited;
  VerificaSeServidor;
end;

procedure TConsuConfiguracao_Cronjob.tiTornarCronJobClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  Insere_Registro_Configuracao_CronJob('Assumiu', Usuario.Codigo);
  Consulta.Refresh;
  VerificaSeServidor;
end;

procedure TConsuConfiguracao_Cronjob.VerificaSeServidor;
begin
  if ServidorCronJob then
  begin
    tiPCNaoServidor.Visible := False;
    tiTornarCronJob.Visible := False;
    dxTileControlItem1.Visible := True;
  end
  else
  begin
    tiPCNaoServidor.Visible := True;
    tiTornarCronJob.Visible := True;
    dxTileControlItem1.Visible := False;
  end;
end;

initialization
  RegisterClass(TConsuConfiguracao_Cronjob);
  RegisterFrameCon(Tag_Configuracao_Cronjob, TConsuConfiguracao_Cronjob);

end.
