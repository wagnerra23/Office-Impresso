unit Base_Produto_Compra_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Produto_Compra, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Compra_Modal = class(TFrmProduto_Compra)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Compra_Modal: TFrmProduto_Compra_Modal;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmProduto_Compra_Modal);

end.
