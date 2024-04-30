unit Base_SLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmNotificacao = class(TFrmBase)
    tcBaseItem1: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotificacao: TFrmNotificacao;

implementation

{$R *.dfm}

//initialization
//  RegisterClass(TFrmNotificacao);
//  RegisterBase_MidChild(Tag_Notificacao, TFrmNotificacao);

end.
