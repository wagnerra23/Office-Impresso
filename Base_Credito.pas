unit Base_Credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmCredito = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCredito: TFrmCredito;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterBase_Normal(Tag_Credito, TFrmCredito);

end.
