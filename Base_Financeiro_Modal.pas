unit Base_Financeiro_Modal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Financeiro, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmFinanceiro_Modal = class(TFrmFinanceiro_Base)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinanceiro_Modal: TFrmFinanceiro_Modal;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrmFinanceiro_Modal);
  RegisterBase_Normal(Tag_Financeiro, TFrmFinanceiro_Modal);

end.
