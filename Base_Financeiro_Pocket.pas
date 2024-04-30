unit Base_Financeiro_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, frFrameHistorico, Base_Pocket_Mestre, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, dxGDIPlusClasses, cxImage ;

type
  TFrmFinanceiro_Pocket = class(TFrmBase_Pocket)
    tcBaseItem2: TdxTileControlItem;
    procedure tiFecharActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
    FFrameHistorico: TFrameHistorico;
  end;

var
  FrmFinanceiro_Pocket: TFrmFinanceiro_Pocket;

implementation

{$R *.dfm}

uses Frame_Cad, Tag.Form;


procedure TFrmFinanceiro_Pocket.tiFecharActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  Close;
end;

initialization
  RegisterBase_Pocket(Tag_Financeiro, TFrmFinanceiro_Pocket);

end.
