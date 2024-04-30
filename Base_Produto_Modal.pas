unit Base_Produto_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Produto, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmProduto_Modal = class(TFrmProduto)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Modal: TFrmProduto_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmProduto_Modal);
  RegisterBase_Normal(Tag_Produto_ProdutoSimples, TFrmProduto_Modal);
  RegisterBase_Normal(Tag_Produto_Servico, TFrmProduto_Modal);

end.
