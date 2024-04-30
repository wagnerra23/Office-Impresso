unit Base_Ficha_Ponto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;

type
  TFrmFicha_ponto = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFicha_ponto: TFrmFicha_ponto;

implementation

{$R *.dfm}

Uses
 Tag.Form;

initialization
  RegisterClass(TFrmFicha_ponto);
  RegisterBase_MidChild(Tag_Funcionario_Ficha_Ponto, TFrmFicha_ponto);



end.
