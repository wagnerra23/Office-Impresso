unit Base_SLA_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmNotificacao_Pocket = class(TFrmBase_Pocket)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNotificacao_Pocket: TFrmNotificacao_Pocket;

implementation

{$R *.dfm}

Uses UnitFuncoes, Base;

//initialization
//  RegisterBase_Pocket(Tag_Notificacao, TFrmNotificacao_Pocket);

end.
