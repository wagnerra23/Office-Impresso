unit Base_DRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TBaseDRE = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseDRE: TBaseDRE;

implementation

{$R *.dfm}

uses
  wrConstantes, UnitFuncoes, wrFuncoes, Principal, Tag.Form;


initialization
  RegisterClass(TBaseDRE);
  RegisterBase_MidChild(Tag_ConDRE, TBaseDRE);

end.
