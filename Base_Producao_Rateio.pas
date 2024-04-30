unit Base_Producao_Rateio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxCustomTileControl,
  cxClasses, dxTileControl, cxContainer, cxEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmProducao_Rateio = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducao_Rateio: TFrmProducao_Rateio;

implementation

{$R *.dfm}

Uses UnitFuncoes, Tag.Form;

initialization
  RegisterClass(TFrmProducao_Rateio);
  RegisterBase_MidChild(Tag_Producao_Rateio, TFrmProducao_Rateio);

end.
