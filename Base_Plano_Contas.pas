unit Base_Plano_Contas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;

type
  TBasePlanoContas = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasePlanoContas: TBasePlanoContas;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TBasePlanoContas);
  RegisterBase_MidChild(Tag_Plano_Contas, TBasePlanoContas);

end.
