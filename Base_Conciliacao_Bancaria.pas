unit Base_Conciliacao_Bancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmConciliacao_Bancaria = class(TFrmBase)
    tcBaseItem1: TdxTileControlItem;
    tcBaseGroup1: TdxTileControlGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConciliacao_Bancaria: TFrmConciliacao_Bancaria;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterBase_MidChild(Tag_Conciliacao_bancaria, TFrmConciliacao_Bancaria);

end.
