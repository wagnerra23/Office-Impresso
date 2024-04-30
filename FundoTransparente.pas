unit FundoTransparente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFundoTransparente = class(TForm)
  private
    { Private declarations }
  public
    constructor CarregaFundo(AControle: TWinControl; AParent: TForm);
  end;

implementation

{$R *.dfm}

{ TFundoTransparente }

constructor TFundoTransparente.CarregaFundo(AControle: TWinControl; AParent: TForm);
begin
  Create(AParent);
  Width := AControle.Width;
  Height := AControle.Height;
  Left := AControle.Left;
  Top := AControle.Top;
end;

end.
