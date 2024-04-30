unit Base_Arquivos_Relatorio_Normal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Arquivos_Relatorio, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, Vcl.Menus, Vcl.ExtCtrls, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmArquivos_Relatorio_Normal = class(TFrmArquivos_Relatorio1)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArquivos_Relatorio_Normal: TFrmArquivos_Relatorio_Normal;

implementation

{$R *.dfm}

uses Base, Tag.Form;

initialization
  RegisterBase_Normal(Tag_Arquivos_Relatorio, TFrmArquivos_Relatorio_Normal);

end.
