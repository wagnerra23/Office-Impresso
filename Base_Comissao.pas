unit Base_Comissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmBaseComissao = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseComissao: TFrmBaseComissao;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TFrmBaseComissao);
  RegisterBase_MidChild(Tag_Comissao, TFrmBaseComissao);

end.
