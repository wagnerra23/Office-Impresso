unit Base_Boleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxGDIPlusClasses, cxImage;

type
  TFrmBoleto = class(TFrmBase)
    tcBaseItem1: TdxTileControlItem;
    tcBaseItem2: TdxTileControlItem;
    tcBaseItem3: TdxTileControlItem;
    procedure tcBaseItem1ActivateDetail(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBoleto: TFrmBoleto;

implementation

{$R *.dfm}

Uses
  Tag.Form;

procedure TFrmBoleto.tcBaseItem1ActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
// [Filtros Em Aberto, Baixado, Conscelados, Vencidos, Conceladas, Não registrado]
// Status não registrado
//Remessa aceita, Boleto Registrado
// Confgurações
// Recorrente, Configuração por conta bancária, modelo de email de cobrança, campos que são modificados
// Configuração Email Vencido, a vencer**
end;

initialization
  RegisterBase_Normal(Tag_Boleto, TFrmBoleto);
  RegisterBase_MidChild(Tag_Boleto, TFrmBoleto);

end.
