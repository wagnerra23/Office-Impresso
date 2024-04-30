unit frFrameHistorico_SLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Stan.Intf,
  FireDAC.Comp.Client, dxLayoutLookAndFeels, dxLayoutcxEditAdapters,
  cxContainer, dxGDIPlusClasses, Vcl.ExtCtrls, dxCustomTileControl,
  dxTileControl, cxDBLabel, cxTextEdit, cxMemo, cxDBEdit, cxLabel,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, dxSkinsCore, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrameHistorico_SLA = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    GridHistorico_SLAGridView: TcxGridDBTableView;
    GridHistorico_SLALevel1: TcxGridLevel;
    GridHistorico_SLA: TcxGrid;
    liGridHistorico_SLA: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    TransaFD: TFDTransaction;
    cxImageList_Pequena: TcxImageList;
    DS: TDataSource;
    lblLabelGravidade: TcxLabel;
    lilblLabelGravidade: TdxLayoutItem;
    memoObservacao: TcxDBMemo;
    limemoObservacao: TdxLayoutItem;
    lilblGravidade: TdxLayoutItem;
    lblGravidade: TcxDBLabel;
    lilblLabelNomeResponsavel: TdxLayoutItem;
    lblLabelNomeResponsavel: TcxLabel;
    lilblData: TdxLayoutItem;
    lblData: TcxDBLabel;
    GrupoGravidade: TdxLayoutGroup;
    GrupoNotificacao: TdxLayoutGroup;
    GrupoInformacoesNotificacao: TdxLayoutGroup;
    lilblLabelPessoasNotificadas: TdxLayoutItem;
    lblLabelPessoasNotificadas: TcxLabel;
    lilblPessoasNotificadas: TdxLayoutItem;
    lblPessoasNotificadas: TcxDBLabel;
    GrupoPessoasNotificadas: TdxLayoutGroup;
    AlignmentConstraint1: TdxLayoutAlignmentConstraint;
    tcControles: TdxTileControl;
    litcControles: TdxLayoutItem;
    tiFechar: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
    tiTrocarResponsavel: TdxTileControlItem;
    tiEncaminhar: TdxTileControlItem;
    GrupoInformacoes: TdxLayoutGroup;
    imgResponsavel: TImage;
    liimgResponsavel: TdxLayoutItem;
    GrupoResponsavel: TdxLayoutGroup;
    lilblLabelData: TdxLayoutItem;
    lblLabelData: TcxLabel;
    lilblNomeResponsavel: TdxLayoutItem;
    lblNomeResponsavel: TcxDBLabel;
    GrupoNomeResponsavel: TdxLayoutGroup;
    GrupoDataResponsavel: TdxLayoutGroup;
    lilblTitulo: TdxLayoutItem;
    lblTitulo: TcxLabel;
    lilblCriadaPor: TdxLayoutItem;
    lblCriadaPor: TcxLabel;
    lilblIdentificacaoRegistro: TdxLayoutItem;
    lblIdentificacaoRegistro: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    PnlPessoas: TPanel;
    TimerTooltip: TTimer;
    GridHistorico_SLAGridViewCONDICAO: TcxGridDBColumn;
    GridHistorico_SLAGridViewQUANT_NOTIFICADAS: TcxGridDBColumn;
    GridHistorico_SLAGridViewGRAVIDADE: TcxGridDBColumn;
    GridHistorico_SLAGridViewDT_NOTIFICADO: TcxGridDBColumn;
    GridHistorico_SLAGridViewSLA: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    tcBase: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tcBaseGroup1: TdxTileControlGroup;
    tiBasePadrao: TdxTileControlItem;
    Historico_Notificacao: TFDQuery;
    procedure tiFecharClick(Sender: TdxTileControlItem);
    procedure lblLabelPessoasNotificadasMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lblLabelPessoasNotificadasMouseLeave(Sender: TObject);
    procedure lblLabelPessoasNotificadasMouseEnter(Sender: TObject);
    procedure TimerTooltipTimer(Sender: TObject);
    procedure cxDBTextEdit1PropertiesChange(Sender: TObject);
    procedure dxLayoutControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FrameEnter(Sender: TObject);
    procedure FrameExit(Sender: TObject);
  private
    procedure RetornaImagem(const Picture: TPicture; ACodigo : String );
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses wrMenu, Frame_Cad, Classes.WR, wrFuncoes;

procedure TFrameHistorico_SLA.cxDBTextEdit1PropertiesChange(Sender: TObject);
begin
  lblCriadaPor.Caption := 'SLA criada por ' +
                          DS.Dataset.FieldByName('CRIADOR_SLA').AsString +
                          ' na data ' +
                          DS.Dataset.FieldByName('DT_CRIACAO_SLA').AsString +
                          '.';

  if DS.Dataset.FieldByName('GRAVIDADE').AsString = 'URGENTE' then
    lblGravidade.Style.TextColor := clRed
  else
    lblGravidade.Style.TextColor := clBlack;


  Historico_Notificacao.Close;
  Historico_Notificacao.ParamByName('CODIGO').AsString := DS.Dataset.FieldByName('CODIGO').AsString;
  Historico_Notificacao.Open;

  with TCarregaImagem.Create do
  begin
    Codigo   := DS.Dataset.FieldByName('CODPESSOA_RESPONSAVEL').AsString;
    Caminho  := GetCaminhoGED_Pessoa_Miniatura(DS.Dataset.FieldByName('CODPESSOA_RESPONSAVEL').AsString);
    Callback := RetornaImagem;
    FreeOnTerminate := True;
    Start;
  end;
end;

procedure TFrameHistorico_SLA.RetornaImagem(const Picture: TPicture; ACodigo : String );
begin
  try
    if Not DS.Dataset.Active then
      Exit;
    if ACodigo = DS.Dataset.FieldByName('CODPESSOA_RESPONSAVEL').AsString then
      imgResponsavel.Picture.Assign(Picture);
  except end;
end;

procedure TFrameHistorico_SLA.dxLayoutControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  OutputDebugString(StringToOLEStr(Sender.ClassName + ' ' + VarToStr(X) + ' ' + VarToStr(Y)));
end;

procedure TFrameHistorico_SLA.FrameEnter(Sender: TObject);
begin
  Historico_Notificacao.Open;
end;

procedure TFrameHistorico_SLA.FrameExit(Sender: TObject);
begin
  Historico_Notificacao.Close;
end;

procedure TFrameHistorico_SLA.lblLabelPessoasNotificadasMouseEnter(
  Sender: TObject);
var
  APoint : tPoint;
begin
  inherited;
  if TimerTooltip.Enabled then
  begin
    TimerTooltip.Enabled := False;
    Exit;
  end;

  APoint := Mouse.CursorPos;
  APoint := ScreenToClient(APoint);
  PnlPessoas.Left := APoint.X;
  PnlPessoas.Top := APoint.Y - PnlPessoas.Height;

  tcBase.Items.Clear;
  PnlPessoas.Height := 19 * Historico_Notificacao.RecordCount + 2;

  Historico_Notificacao.First;
  while not Historico_Notificacao.eof do
  begin
    if Historico_Notificacao.FieldByName('LIDO').AsString = 'S' then
      MenuCria_Lido_Verde(tcBase, Historico_Notificacao.FieldByName('USUARIO').AsString, 'Lido')
    else
      MenuCria_Nao_Lido_Vermelho(tcBase, Historico_Notificacao.FieldByName('USUARIO').AsString, 'Não Lido');

    Historico_Notificacao.Next;
  end;
  PnlPessoas.Parent := TFrmCad_Frame(Self.Owner);
  PnlPessoas.Show;

end;

procedure TFrameHistorico_SLA.lblLabelPessoasNotificadasMouseLeave(
  Sender: TObject);
begin
  TimerTooltip.Enabled := True
end;

procedure TFrameHistorico_SLA.lblLabelPessoasNotificadasMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  APoint : tPoint;
begin
  inherited;
  APoint := Mouse.CursorPos;
  APoint := ScreenToClient(APoint);
  PnlPessoas.Left := APoint.X- PnlPessoas.Width;
  PnlPessoas.Top := APoint.Y - PnlPessoas.Height;
//
////  PnlPessoas.Left := X + PnlPessoas.Width;
////  PnlPessoas.Top := Y;// + PnlPessoas.Height;
//  PnlPessoas.Show;

end;

procedure TFrameHistorico_SLA.tiFecharClick(
  Sender: TdxTileControlItem);
begin
  TForm(Self.Parent.Parent).Close;
end;

procedure TFrameHistorico_SLA.TimerTooltipTimer(Sender: TObject);
begin
  PnlPessoas.Parent := Self;
  PnlPessoas.Hide;
  TimerTooltip.Enabled := False;
end;

end.
