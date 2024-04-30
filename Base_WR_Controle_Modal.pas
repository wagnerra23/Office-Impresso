unit Base_WR_Controle_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_WR_Controle, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl;

type
  TFrmWR_Controle_Modal = class(TFrmWR_Controle)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWR_Controle_Modal: TFrmWR_Controle_Modal;

implementation

{$R *.dfm}
Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmWR_Controle_Modal);
  RegisterBase_Normal(Tag_WR_Controle, TFrmWR_Controle_Modal);

end.
