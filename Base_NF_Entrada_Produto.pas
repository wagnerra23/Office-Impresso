unit Base_NF_Entrada_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;

type
  TFrmRelNF_Entrada_Produto = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelNF_Entrada_Produto: TFrmRelNF_Entrada_Produto;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterBase_MidChild(Tag_NF_Entrada_Produto, TFrmRelNF_Entrada_Produto);

end.
