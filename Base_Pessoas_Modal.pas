unit Base_Pessoas_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pessoas, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmPessoas_Modal = class(TFrmPessoas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPessoas_Modal: TFrmPessoas_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmPessoas_Modal);
  RegisterBase_Normal(Tag_Pessoas, TFrmPessoas_Modal);

end.
