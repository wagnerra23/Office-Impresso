unit Base_Precificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmRateio_Custo = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRateio_Custo: TFrmRateio_Custo;

implementation

{$R *.dfm}

Uses UnitFuncoes, Tag.Form;

initialization
  RegisterClass(TFrmRateio_Custo);
  RegisterBase_MidChild(Tag_Precificacao, TFrmRateio_Custo);

end.
