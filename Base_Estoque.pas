unit Base_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, dxCustomTileControl, dxTileControl, Frame_Cad, Frame_Con, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;


type
  TFrmEstoque = class(TFrmBase)
    tiRequisicao: TdxTileControlItem;
    tiProduto_Movimento: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstoque: TFrmEstoque;

implementation

{$R *.dfm}

Uses
  Tag.APP, Tag.Form;

procedure TFrmEstoque.FormCreate(Sender: TObject);
begin
  inherited;
//  tiBasePadrao.Visible  :=AAPP[TagAPP_Financeiro].Ativo;               // Sempre Visivel
//  tiProduto_Movimento.Visible:=AAPP[TagAPP_Estoque].Ativo;             // Sempre Visivel
  tiRequisicao.Visible :=AWR_APP[TagAPP_Estoque].Ativo;
end;

initialization
  RegisterBase_MidChild(Tag_Estoque_Estoque, TFrmEstoque);

end.
