unit Base_Requisicao_Motivo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer,
  cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmBaseRequisicao_Motivo = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaseRequisicao_Motivo: TFrmBaseRequisicao_Motivo;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TFrmBaseRequisicao_Motivo);
  RegisterBase_MidChild(Tag_Estoque_Requisicao_Motivo, TFrmBaseRequisicao_Motivo);

end.
