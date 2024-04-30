unit Base_Requisicao_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Pocket_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, dxTileControl, Base, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmRequisicao_Pocket = class(TFrmBase_Pocket)
    procedure tiFecharActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRequisicao_Pocket: TFrmRequisicao_Pocket;

implementation

{$R *.dfm}

uses Frame_Cad, Tag.Form;

procedure TFrmRequisicao_Pocket.tiFecharActivateDetail(
  Sender: TdxTileControlItem);
begin
  inherited;
  Close;
end;

initialization
  RegisterBase_Pocket(Tag_Estoque_Requisicao, TFrmRequisicao_Pocket);

end.
