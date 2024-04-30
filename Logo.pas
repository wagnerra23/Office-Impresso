unit Logo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  Vcl.StdCtrls, cxButtons, cxImage, dxLayoutControl, dxLayoutLookAndFeels, wrConversao, cxLabel, Generics.Collections, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmLogo = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    ImgLogo: TcxImage;
    btnAlteraLogo: TcxButton;
    BtnFecharLogo: TcxButton;
    btnLogoConfirmar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    OpenDialog1: TOpenDialog;
    lblStatus: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    procedure btnAlteraLogoClick(Sender: TObject);
    procedure btnLogoConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharLogoClick(Sender: TObject);
  private
    FTipoLogo: TTipoLogo;
    FCodEmpresa : Integer;
  public
    class procedure AlterarLogo(ATipoLogo: TTipoLogo; ACodEmpresa: Integer);
  end;

implementation

{$R *.dfm}

uses
  DataModuleImpressao, UnitFuncoes, wrFuncoes, Classes.WR;

{ TFrmLogo }

class procedure TFrmLogo.AlterarLogo(ATipoLogo: TTipoLogo; ACodEmpresa: Integer);
var
  AForm: TFrmLogo;
begin
  AForm := TFrmLogo.Create(nil);
  try
    AForm.FTipoLogo := ATipoLogo;
    AForm.FCodEmpresa := ACodEmpresa;
    AForm.ShowModal;
  finally
    AForm.Free;
  end;
end;

procedure TFrmLogo.btnAlteraLogoClick(Sender: TObject);
begin
  ImgLogo.LoadFromFile;
end;

procedure TFrmLogo.BtnFecharLogoClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogo.btnLogoConfirmarClick(Sender: TObject);
var
  ABitmap: TBitmap;
begin
  ABitmap := TBitmap.Create;
  try
    ABitmap.Width  := ImgLogo.Picture.Width;
    ABitmap.Height := ImgLogo.Picture.Height;
    ABitmap.Canvas.Draw(0, 0, ImgLogo.Picture.Graphic);
    DMImpressaoSalvaLogoEmpresa(ABitmap, FTipoLogo, FCodEmpresa);
  finally
    ABitmap.Free;
  end;
  Close;
end;

procedure TFrmLogo.FormShow(Sender: TObject);
begin
  Caption := 'Alteração de Logo da ' + TipoLogoToDescricao(FTipoLogo);
  DMImpressaoCarregaLogoCodEmpresa(ImgLogo.Picture.Bitmap, FCodEmpresa, FTipoLogo);
end;

end.

