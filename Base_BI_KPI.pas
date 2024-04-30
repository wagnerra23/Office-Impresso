unit Base_BI_KPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;

type
  TBaseBI_KPI = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseBI_KPI: TBaseBI_KPI;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterBase_MidChild(Tag_BI_KPI, TBaseBI_KPI);

end.
