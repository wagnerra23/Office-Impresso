unit CadNF_CNAE;

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
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  System.Generics.Collections, cxLabel;

type
  TFrmNF_CNAE = class(TFrmCadM)
    dxLayoutItem1: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    btnAtualizar: TcxButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF_CNAE: TFrmNF_CNAE;

implementation

{$R *.dfm}
uses
  Classes.WR, uWeb, UnitFuncoes;

procedure TFrmNF_CNAE.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * from NF_CNAE ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    TWRFTP.UploadArquivoVersionado('ArqINI','NF_CNAE', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'NF_CNAE', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

procedure TFrmNF_CNAE.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
 // tem que usar generator
end;

initialization
  RegisterClass(TFrmNF_CNAE);

end.
