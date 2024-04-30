unit Consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, IBX.IBQuery, Provider,
  DBClient, cxGridLevel, cxGridDBTableView, cxGrid, StdCtrls, ComCtrls, Grids, DBGrids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, IBX.IBCustomDataSet, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, dxDateRanges;

type
  TFrmConsulta = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CdsConsulta: TClientDataSet;
    DS: TDataSource;
    DSProvider: TDataSetProvider;
    QrConsulta: TIBQuery;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CompEdit : TCustomEdit;
    CompCodEdit : TCustomEdit;
    procedure Pesquisar(SQL, Filtro: String);
    procedure Posicionar(EditFilho: TCustomEdit);
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

procedure TFrmConsulta.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if CdsConsulta.Fields.FindField('FANTASIA') <> nil then
    CompEdit.Text := CdsConsulta.FieldByName('FANTASIA').AsString
  else
    CompEdit.Text := CdsConsulta.FieldByName('RAZAOSOCIAL').AsString;
  CompCodEdit.Text := CdsConsulta.FieldByName('CODIGO').AsString;
  FrmConsulta := nil;
  Destroy;
end;

procedure TFrmConsulta.Pesquisar(SQL, Filtro: String);
begin
  QrConsulta.SQL.Text := SQL;
  if not CdsConsulta.Active then CdsConsulta.Open;
  CdsConsulta.Filtered := False;
  CdsConsulta.Filter := Filtro;
  CdsConsulta.Filtered := True;
end;

procedure TFrmConsulta.Posicionar(EditFilho: TCustomEdit);
var
  FormPai : TForm;
  AuxTop, AuxLeft : Integer;
begin
  FormPai := TForm(EditFilho.Parent.Parent.Parent);
  AuxTop  := TPageControl(EditFilho.Parent.Parent).Top;
  AuxLeft := TPageControl(EditFilho.Parent.Parent).Left;
  Top     := FormPai.Top + EditFilho.Top + EditFilho.Height + 29 + AuxTop;
  Left    := FormPai.Left + EditFilho.Left + 7 + AuxLeft;
  Width   := EditFilho.Width - 3;
  Height  := Trunc(Width / 2);
end;

end.
