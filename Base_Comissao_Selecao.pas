unit Base_Comissao_Selecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmComissao_Selecao = class(TFrmBase)
    tiAgencia: TdxTileControlItem;
    tiFuncionario: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissao_Selecao: TFrmComissao_Selecao;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TFrmComissao_Selecao);
  RegisterBase_MidChild(Tag_Comissao_Selecao_Venda, TFrmComissao_Selecao);

end.
