unit Base_Produto_Venda_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Produto_Venda, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Venda_Modal = class(TFrmProduto_Venda)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Venda_Modal: TFrmProduto_Venda_Modal;

implementation

{$R *.dfm}

initialization
  RegisterClass(TFrmProduto_Venda_Modal);

end.
