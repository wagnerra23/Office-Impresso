unit Base_Balanco_Patrimonial_Classificacao_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Balanco_Patrimonial_Classificacao,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxCustomTileControl, cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmBalanco_Patr_Classificacao_Modal = class(TFrmBalanco_Patr_Classificacao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalanco_Patr_Classificacao_Modal: TFrmBalanco_Patr_Classificacao_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmBalanco_Patr_Classificacao_Modal);
  RegisterBase_Normal(Tag_Balanco_Patrimonial_Classificacao, TFrmBalanco_Patr_Classificacao_Modal);

end.
