unit Base_Configuracao_Cronjob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmConfiguracao_CronJob = class(TFrmBase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfiguracao_CronJob: TFrmConfiguracao_CronJob;

implementation

{$R *.dfm}

Uses
  Tag.Form;

initialization
  RegisterClass(TFrmConfiguracao_CronJob);
  RegisterBase_MidChild(Tag_Configuracao_Cronjob, TFrmConfiguracao_CronJob);

end.
