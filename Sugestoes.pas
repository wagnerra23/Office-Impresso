unit Sugestoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, dxTileControl, cxClasses, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TFrmSugestoes = class(TForm)
    dxTileControl1: TdxTileControl;
    dxTileControl2: TdxTileControl;
    dxTileControl2Item1: TdxTileControlItem;
    dxTileControl2Group1: TdxTileControlGroup;
    dxTileControl3: TdxTileControl;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSugestoes: TFrmSugestoes;

implementation

{$R *.dfm}

uses Principal;

procedure TFrmSugestoes.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSugestoes.FormCreate(Sender: TObject);
begin
  Left:= Trunc(FrmPrincipal.ClientWidth / 2)- Trunc(Width / 2);
  Top := Trunc(FrmPrincipal.ClientHeight - Height - 10 );
end;

end.
