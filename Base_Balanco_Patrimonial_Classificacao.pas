unit Base_Balanco_Patrimonial_Classificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmBalanco_Patr_Classificacao = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBalanco_Patr_Classificacao: TFrmBalanco_Patr_Classificacao;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TFrmBalanco_Patr_Classificacao);
  RegisterBase_MidChild(Tag_Balanco_Patrimonial_Classificacao, TFrmBalanco_Patr_Classificacao);

end.
