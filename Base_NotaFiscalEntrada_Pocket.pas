unit Base_NotaFiscalEntrada_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, Base_Pocket_Mestre, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmNotaFiscalEntrada_Pocket = class(TFrmBase_Pocket)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotaFiscalEntrada_Pocket: TFrmNotaFiscalEntrada_Pocket;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterBase_Pocket(Tag_Manifestacao_NotaFiscalEntrada, TFrmNotaFiscalEntrada_Pocket);

end.
