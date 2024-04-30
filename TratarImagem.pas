unit TratarImagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, cxImage;

type
  TFrmTratarImagem = class(TForm)
    ImgFotoExpandida: TcxImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTratarImagem: TFrmTratarImagem;

implementation

{$R *.dfm}

end.
