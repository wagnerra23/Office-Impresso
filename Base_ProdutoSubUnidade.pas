unit Base_ProdutoSubUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxGDIPlusClasses, cxImage;

type
  TFrmProdutoSubUnidade = class(TFrmBase)
  private
    { Private declarations }
  public
    class function Abrir(AParent: TFrame): integer;
    { Public declarations }
  end;

var
  FrmProdutoSubUnidade: TFrmProdutoSubUnidade;

implementation

uses
  FundoTransparente, Principal, Tag.Form;

{$R *.dfm}


class function TFrmProdutoSubUnidade.Abrir(AParent: TFrame): integer;
var
  AFrm: TFrmProdutoSubUnidade;
  AFundoTransparente : TFundoTransparente;
begin
  AFundoTransparente := TFundoTransparente.CarregaFundo(AParent, FrmPrincipal);
  AFrm := TFrmProdutoSubUnidade.Create(AFundoTransparente);
  AFrm.Left := Trunc((AFrm.tcBase.Width - AFundoTransparente.Width)/2);
  AFrm.Top := Trunc((AFrm.tcBase.Height - AFundoTransparente.Height)/2);
  try
    AFundoTransparente.Show;
    if (AFrm.ShowModal = mrOk) then
    begin
      Result := 1;
    end
    else
      Result := 99;
  finally
    AFundoTransparente.Free;
  end;
end;

initialization
  RegisterClass(TFrmProdutoSubUnidade);
  RegisterBase_MidChild(Tag_ProdutoSubUnidade, TFrmProdutoSubUnidade);

end.
