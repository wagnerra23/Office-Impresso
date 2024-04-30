unit Base_Arquivos_Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit,
  dxGDIPlusClasses, cxImage;

type
  TFrmArquivos_Relatorio1 = class(TFrmBase)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArquivos_Relatorio1: TFrmArquivos_Relatorio1;

implementation

{$R *.dfm}

uses Frame_CadArquivos_Relatorio, Tag.Form;

procedure TFrmArquivos_Relatorio1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FrameCadastro) and (FrameCadastro is TFrmArquivos_Relatorio) then 
  begin
    with TFrmArquivos_Relatorio(FrameCadastro) do
    begin
      PnlPreview.Parent := FrameCadastro;
      PnlPreview.Visible:= False;
    end;
  end;
end;

procedure TFrmArquivos_Relatorio1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  inherited; bosta pula enquanto escreve

end;

procedure TFrmArquivos_Relatorio1.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;   bosta fecha a tela

end;

initialization
  RegisterBase_MidChild(Tag_Arquivos_Relatorio, TFrmArquivos_Relatorio1);

end.
