unit Base_Salario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmSalario = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSalario: TFrmSalario;

implementation

{$R *.dfm}

Uses UnitFuncoes, Tag.Form;

initialization
  RegisterClass(TFrmSalario);
  RegisterBase_MidChild(Tag_Salario, TFrmSalario);

end.
