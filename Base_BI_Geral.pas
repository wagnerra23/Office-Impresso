unit Base_BI_Geral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmBase_BI_Geral = class(TFrmBase)
    tcBaseItem1: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase_BI_Geral: TFrmBase_BI_Geral;

implementation


{$R *.dfm}

Uses
  Tag.Form;

initialization
   RegisterBase_MidChild(Tag_BI_Geral, TFrmBase_BI_Geral);

end.
