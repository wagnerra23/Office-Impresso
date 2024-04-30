unit Base_Produto_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base_Produto, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Venda = class(TFrmProduto)
    tiVenda: TdxTileControlItem;
    procedure tiVendaActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto_Venda: TFrmProduto_Venda;

implementation

{$R *.dfm}

Uses Frame_ConProduto_Venda;

procedure TFrmProduto_Venda.tiVendaActivateDetail(
  Sender: TdxTileControlItem);
begin
  IndexSelecionado:=Sender.Index;
  if Sender.DetailOptions.DetailControl = nil then
    Sender.DetailOptions.DetailControl := TFrame_ConsuProduto_Venda.Create(Self);
end;

initialization
  RegisterClass(TFrmProduto_Venda);

end.
