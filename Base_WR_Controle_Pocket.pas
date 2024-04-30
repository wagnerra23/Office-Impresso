unit Base_WR_Controle_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCustomTileControl, cxClasses, dxTileControl;

type
  TFrmWR_Controle_Pocket = class(TFrmBase_Pocket)
    procedure tiFecharActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmWR_Controle_Pocket: TFrmWR_Controle_Pocket;

implementation

{$R *.dfm}

uses Frame_Cad, Tag.Form, Base;

procedure TFrmWR_Controle_Pocket.tiFecharActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Close;
end;

initialization
  RegisterClass(TFrmWR_Controle_Pocket);
  RegisterBase_Pocket(Tag_WR_Controle, TFrmWR_Controle_Pocket);

end.
