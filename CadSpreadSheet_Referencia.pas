unit CadSpreadSheet_Referencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, System.Generics.Collections, cxLabel;

type
  TFrmSpreadSheet_Referencia = class(TFrmCadM)
    LiedtSpreadSheet: TdxLayoutItem;
    edtSpreadSheet: TcxDBTextEdit;
    LiedtReferencia: TdxLayoutItem;
    edtReferencia: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrmSpreadSheet_Referencia.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
//        Acoes('SPREADSHEET_REFERENCIA', 'SPREADSHEET', 'edtSpreadSheet', 'Informar a Descrição' ,'');
end;

initialization
  RegisterClass(TFrmSpreadSheet_Referencia);

end.

