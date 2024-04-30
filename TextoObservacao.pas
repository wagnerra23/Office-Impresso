unit TextoObservacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, cxLabel;

type
  TFrmObservacao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    MemoObservacao: TcxMemo;
    LiMemoObservacao: TdxLayoutItem;
    BtnCancelar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    BtnConfirmar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    LbCaracteres: TcxLabel;
    LiLbCaracteres: TdxLayoutItem;
    procedure MemoObservacaoPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTamanhoMinimo: Integer;
    procedure SetTitulo(const Value: string);
    function GetTitulo: string;
  protected
    procedure AtualizaContador;
  public
    { Public declarations }
    property Titulo: string read GetTitulo write SetTitulo;
    property TamanhoMinimo: Integer read FTamanhoMinimo write FTamanhoMinimo;

    class function GetObservacao(ATitulo: string; ATamanhoMinimo: Integer; var AObservacao: string): Boolean;
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes;

{ TFrmObservacao }

procedure TFrmObservacao.AtualizaContador;
var
  ATamanhoAtual: Integer;
begin
  ATamanhoAtual := Length(Trim(MemoObservacao.Lines.Text));
  BtnConfirmar.Enabled   := (FTamanhoMinimo = 0) or (ATamanhoAtual >= FTamanhoMinimo);
  LiLbCaracteres.Visible := (FTamanhoMinimo > 0) and (ATamanhoAtual < FTamanhoMinimo);
  if FTamanhoMinimo > 0 then
  begin
    LiMemoObservacao.Caption := 'Informe uma Observação com no mínimo ' + FTamanhoMinimo.ToString + ' caracteres.';
    LbCaracteres.Caption     := 'Falta(m) ' + (FTamanhoMinimo - ATamanhoAtual).ToString + ' caracter(es).';
  end;
end;

procedure TFrmObservacao.FormShow(Sender: TObject);
begin
  AtualizaContador;
  MemoObservacao.SetFocusWR;
end;

class function TFrmObservacao.GetObservacao(ATitulo: string; ATamanhoMinimo: Integer; var AObservacao: string): Boolean;
var
  AForm: TFrmObservacao;
begin
  AForm := TFrmObservacao.Create(nil);
  try
    AForm.Titulo        := ATitulo;
    AForm.TamanhoMinimo := ATamanhoMinimo;
    AForm.MemoObservacao.Lines.Text := AObservacao;
    Result := (AForm.ShowModal = mrOk);
    AObservacao := AForm.MemoObservacao.Lines.Text;
  finally
    AForm.Free;
  end;
end;

function TFrmObservacao.GetTitulo: string;
begin
  Result := Caption;
end;

procedure TFrmObservacao.MemoObservacaoPropertiesChange(Sender: TObject);
begin
  AtualizaContador;
end;

procedure TFrmObservacao.SetTitulo(const Value: string);
begin
  Caption := Value;
end;

end.
