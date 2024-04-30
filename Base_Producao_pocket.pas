unit Base_Producao_pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxContainer, cxEdit, cxImage;

type
  TFrmBase_Producao_Pocket = class(TFrmBase_Pocket)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBase_Producao_Pocket: TFrmBase_Producao_Pocket;

implementation

{$R *.dfm}

uses Base, Tag.Form;

initialization
  RegisterBase_Pocket(Tag_Agenda_Kanban, TFrmBase_Producao_Pocket);
  RegisterBase_Pocket(Tag_Producao, TFrmBase_Producao_Pocket);
end.
