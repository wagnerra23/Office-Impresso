unit Base_API_OImpresso_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, Vcl.ExtCtrls, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmAPI_OImpressao_Pocket = class(TFrmBase_Pocket)
    tcBaseItem3: TdxTileControlItem;
    tcBaseItem4: TdxTileControlItem;
    tcBaseItem5: TdxTileControlItem;
    tcBaseItem6: TdxTileControlItem;
    tcBaseItem7: TdxTileControlItem;
    tcBaseItem8: TdxTileControlItem;
    tcBaseItem9: TdxTileControlItem;
    tcBaseItem10: TdxTileControlItem;
    tcBaseItem2: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAPI_OImpressao_Pocket: TFrmAPI_OImpressao_Pocket;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterBase_Pocket(Tag_API_Oimpresso, TFrmAPI_OImpressao_Pocket);

end.
