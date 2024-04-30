unit NFeDuplicidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxLabel, ACBrBase, ACBrDFe, ACBrNFe, Classes.WR, ShellAPI;

type
  TFrmNFeDuplicidade = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    BtnSEFAZAbrirSite: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxTextEdit2: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxCurrencyEdit1: TcxCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDateEdit1: TcxDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    GrupoNotaEncontrada: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxLabel3: TcxLabel;
    EdtCaminhoXML: TcxButtonEdit;
    dxLayoutItem10: TdxLayoutItem;
    GrupoSEFAZ: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    EdtSEFAZChave: TcxTextEdit;
    BtnCopiarChave: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    BtnSEFAZConcluir: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    procedure BtnCopiarChaveClick(Sender: TObject);
    procedure BtnSEFAZConcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSEFAZAbrirSiteClick(Sender: TObject);
    procedure EdtCaminhoXMLPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    FACBrNFe: TACBrNFe;
  public
    class function AbrirQuandoNaoEncontrou(const AChaveDuplicidade: string; ANotaSelecionada: TACBrNFe): Boolean;
    class procedure AbrirComNotaEncontrada(ANotaEncontrada: TACBrNFe);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrFuncoes, ClipBrd;

{ TFrmNFeDuplicidade }

class procedure TFrmNFeDuplicidade.AbrirComNotaEncontrada(ANotaEncontrada: TACBrNFe);
begin
  //Implementar...
end;

class function TFrmNFeDuplicidade.AbrirQuandoNaoEncontrou(const AChaveDuplicidade: string; ANotaSelecionada: TACBrNFe): Boolean;
var
  AFrm: TFrmNFeDuplicidade;
begin
  AFrm := TFrmNFeDuplicidade.Create(nil);
  try
    AFrm.GrupoNotaEncontrada.Visible := False;
    AFrm.GrupoSEFAZ.Visible := True;
    AFrm.FACBrNFe := ANotaSelecionada;
    AFrm.EdtSEFAZChave.Text := AChaveDuplicidade;
    Result := (AFrm.ShowModal = mrOk);
  finally
    AFrm.Free;
  end;
end;

procedure TFrmNFeDuplicidade.BtnCopiarChaveClick(Sender: TObject);
begin
  Clipboard.AsText := EdtSEFAZChave.Text;
  ShowMessageWR('Chave copiada');
end;

procedure TFrmNFeDuplicidade.BtnSEFAZConcluirClick(Sender: TObject);
begin
  if not FileExists(EdtCaminhoXML.Text) then
  begin
    ShowMessageWR('Arquivo não encontrado: ' + EdtCaminhoXML.Text, MB_ICONWARNING);
    Exit;
  end;

  FACBrNFe.NotasFiscais.Clear;
  FACBrNFe.NotasFiscais.LoadFromFile(EdtCaminhoXML.Text);
  if FACBrNFe.NotasFiscais.Count > 0 then
    ModalResult := mrOk
  else
    ShowMessageWR('Arquivo de NFe inválido. Nenhuma nota encontrada no arquivo selecionado.', MB_ICONWARNING);
end;

procedure TFrmNFeDuplicidade.EdtCaminhoXMLPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AOpen: TOpenDialog;
begin
  AOpen := TOpenDialog.Create(Self);
  try
    AOpen.Filter := 'Arquivos XML|*.xml';
    if AOpen.Execute then
      EdtCaminhoXML.Text := AOpen.FileName;
  finally
    AOpen.Free;
  end;
end;

procedure TFrmNFeDuplicidade.BtnSEFAZAbrirSiteClick(Sender: TObject);
begin
  ShellExecute(0, 'OPEN', PChar('http://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa'), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TFrmNFeDuplicidade.FormShow(Sender: TObject);
begin
  Self.ClientHeight := dxLayoutControl1.OccupiedClientHeight;
end;

end.

