unit ChangeLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TFrmChangeLog = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    cxMemo: TcxMemo;
    dxLayoutItem2: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmChangeLog: TFrmChangeLog;

implementation

{$R *.dfm}

uses Principal;

procedure TFrmChangeLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // nada
  if FormStyle = fsMDIChild then
  begin
    Action:=caFree;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<3) then
      FrmPrincipal.dxTabbedMDIManager1.TabProperties.HideTabs:=True;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<2) then
      FrmPrincipal.cxImage1.Visible:= True;// (Sender = bgPrincipal);
  end;
end;

procedure TFrmChangeLog.FormCreate(Sender: TObject);
var
  ResStream: TResourceStream;
begin
  ResStream := TResourceStream.Create(HInstance, 'ChangeLog', RT_RCDATA);
  try
    ResStream.Position := 0;
    cxMemo.Lines.LoadFromStream(ResStream, TEncoding.UTF8 );
  finally
    ResStream.Free;
  end;
// Abrir o Recerce ChageLog
end;

end.
