unit CadNF_Erros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, uWeb, cxMemo,
  cxRichEdit, cxDBRichEdit, System.Generics.Collections, cxLabel;

type
  TFrmNF_Erros = class(TFrmCadM)
    LibtnAtualizar: TdxLayoutItem;
    btnAtualizar: TcxButton;
    LiedtLink: TdxLayoutItem;
    edtLink: TcxDBTextEdit;
    LiedtTela: TdxLayoutItem;
    edtTela: TcxDBTextEdit;
    LiEdtComponente: TdxLayoutItem;
    EdtComponente: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtObservacao: TcxDBRichEdit;
    LiedtObservacao: TdxLayoutItem;
    LiedtTipo_Documento: TdxLayoutItem;
    edtTipo_Documento: TcxDBComboBox;
    LiedtErro: TdxLayoutItem;
    edtErro: TcxDBTextEdit;
    LiedtCampo: TdxLayoutItem;
    edtCampo: TcxDBTextEdit;
    procedure btnAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses UnitFuncoes;

procedure TFrmNF_Erros.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * from NF_Erros ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    TWRFTP.UploadArquivoVersionado('ArqINI','NF_Erros', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'NF_Erros', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

initialization
  RegisterClass(TFrmNF_Erros);


end.
