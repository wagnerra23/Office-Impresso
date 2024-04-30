unit Splash;

interface

uses
  Windows, Messages, Classes, Graphics, Forms, ExtCtrls, dxGDIPlusClasses, jpeg, Controls, SysUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxSkinsCore;

type
  TFrmSplash = class(TForm)
    ImgImpresso: TImage;
    ImgComercial: TImage;
    LbStatus: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetStatus(AStatus: string);
  end;

var
  FrmSplash: TFrmSplash;

implementation

uses
  Registry, wrFuncoes;

{$R *.DFM}

procedure TFrmSplash.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
end;

procedure TFrmSplash.SetStatus(AStatus: string);
begin
  LbStatus.Caption := AStatus;
  Self.Update;
end;

end.
