unit Base_Comissao_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmComissao_Pocket = class(TFrmBase_Pocket)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissao_Pocket: TFrmComissao_Pocket;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterBase_Pocket(Tag_Comissao, TFrmComissao_Pocket);

end.
