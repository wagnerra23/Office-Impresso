unit SAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, dxLayoutControl;

type
  TFrmSAT = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    EdtSATCodigoVinculacao: TcxMemo;
    EdtSATCodigoAtivacao: TcxTextEdit;
    BtnSATCancelar: TcxButton;
    BtnSATConfirmar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    procedure BtnSATConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure AbrirConfiguracao;
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Classes.WR;

procedure TFrmSAT.BtnSATConfirmarClick(Sender: TObject);
begin
  TConfig.SaveGlobalString('SAT_ASSINATURA_AC', EdtSATCodigoVinculacao.Text);
  TConfig.SaveGlobalString('SAT_CODIGO_ATIVACAO', EdtSATCodigoAtivacao.Text);
  Close;
end;

procedure TFrmSAT.FormShow(Sender: TObject);
begin
  EdtSATCodigoVinculacao.Text := TConfig.ReadString('SAT_ASSINATURA_AC');
  EdtSATCodigoAtivacao.Text   := TConfig.ReadString('SAT_CODIGO_ATIVACAO');
end;

class procedure TFrmSAT.AbrirConfiguracao;
var
  AForm: TFrmSAT;
begin
  AForm := TFrmSAT.Create(nil);
  try
    AForm.ShowModal;
  finally
    AForm.Free;
  end;
end;

end.

