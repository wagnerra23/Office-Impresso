unit CadNF_CEST;

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
  TFrmNF_CEST = class(TFrmCadM)
    dxLayoutItem1: TdxLayoutItem;
    btnAtualizar: TcxButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNF_CEST: TFrmNF_CEST;

implementation

{$R *.dfm}
uses
  Classes.WR, uWeb, UnitFuncoes;

procedure TFrmNF_CEST.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * from NF_CEST ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    TWRFTP.UploadArquivoVersionado('ArqINI','NF_CEST', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'NF_CEST', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

procedure TFrmNF_CEST.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
    end;
  end;
//  Cadastro.FieldByName('CODIGO').AsInteger := GetProximoCodigo('NF_CEST', TransaFD);
end;

initialization
  RegisterClass(TFrmNF_CEST);

end.
