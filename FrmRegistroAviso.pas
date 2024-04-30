unit FrmRegistroAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxLayoutContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxLayoutControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxLayoutcxEditAdapters,
  cxContainer, cxLabel;

type
  TFormRegistroAviso = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    FDMemTable1: TFDMemTable;
    DS: TDataSource;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    class procedure Abrir(AMemTable: TFDMemTable; AMensagem: String);
    { Public declarations }
  end;

var
  FormRegistroAviso: TFormRegistroAviso;

implementation

uses
  wrFuncoes_Office, UnitFuncoes;

{$R *.dfm}

class procedure TFormRegistroAviso.Abrir(AMemTable: TFDMemTable; AMensagem: String);
var
  AFormRegistroAviso: TFormRegistroAviso;
begin
  AFormRegistroAviso := TFormRegistroAviso.Create(nil);
  try
    AFormRegistroAviso.cxLabel1.Caption := AMensagem;
    AFormRegistroAviso.PopupMode  := pmAuto;
    AFormRegistroAviso.DS.DataSet := AMemTable;
    AFormRegistroAviso.DS.DataSet.Open;
//    PosicionarControleAbaixoDe(AFormRegistroAviso, ASender);
    AFormRegistroAviso.ShowModal;
  finally
    AFormRegistroAviso.Free;
  end;
end;

end.
