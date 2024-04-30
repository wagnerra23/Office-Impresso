unit Base_Produto_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Produto, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, Frame_ConProduto_Compra, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_Compra = class(TFrmProduto)
    tcBaseItem4: TdxTileControlItem;
    procedure tcBaseItem4ActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Compra: TFrmProduto_Compra;

implementation

{$R *.dfm}

procedure TFrmProduto_Compra.tcBaseItem4ActivateDetail(
  Sender: TdxTileControlItem);
begin
  IndexSelecionado := Sender.Index;
  if Sender.DetailOptions.DetailControl = nil then
    Sender.DetailOptions.DetailControl := TFrame_ConsuProduto_Compra.Create(Self);
end;

initialization
  RegisterClass(TFrmProduto_Compra);

end.
