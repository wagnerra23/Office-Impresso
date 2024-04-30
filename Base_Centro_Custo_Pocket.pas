unit Base_Centro_Custo_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxContainer, cxEdit, cxImage;

type
  TFrmCentro_Custo_Pocket = class(TFrmBase_Pocket)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCentro_Custo_Pocket: TFrmCentro_Custo_Pocket;

implementation

uses Base, Tag.Form;

{$R *.dfm}

initialization
  RegisterBase_Pocket(Tag_Financeiro_Centro_Custo_Produto_Categoria, TFrmCentro_Custo_Pocket);

end.
