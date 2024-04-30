unit Base_WR_Controle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl;

type
  TFrmWR_Controle = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWR_Controle: TFrmWR_Controle;

implementation

{$R *.dfm}
uses
  wrConstantes, UnitFuncoes, wrFuncoes, Principal, Tag.APP, Tag.Form;

initialization
  RegisterClass(TFrmWR_Controle);
  RegisterBase_MidChild(Tag_WR_Controle, TFrmWR_Controle);

end.
