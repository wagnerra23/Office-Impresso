unit Base_Comissao_Selecao_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Comissao_Selecao, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmComissao_Selecao_Modal = class(TFrmComissao_Selecao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissao_Selecao_Modal: TFrmComissao_Selecao_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmComissao_Selecao_Modal);
  RegisterBase_Normal(Tag_Comissao_Selecao_Financeiro, TFrmComissao_Selecao_Modal);
  RegisterBase_Normal(Tag_Comissao_Selecao_Venda, TFrmComissao_Selecao_Modal);
end.
