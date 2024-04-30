unit Base_VendaNormal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Venda, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl;

type
  TFrmVenda_BaseNormal = class(TFrmVenda_Base)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVenda_BaseNormal: TFrmVenda_BaseNormal;

implementation

{$R *.dfm}

end.
