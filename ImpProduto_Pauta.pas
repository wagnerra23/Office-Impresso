unit ImpProduto_Pauta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRExport,
  QRPDFFilt, QuickRpt, ImpMestre, ExtCtrls, QRWebFilt, UCHist_WRGeral;

type
  TImpriProduto_Pauta = class(TImpriMestre)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    FloatField2: TFloatField;
    ProdutoUNIDADE: TIBStringField;
    FloatField1: TFloatField;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    UCHistWRGeral1: TUCHistWRGeral;
    ProdutoDESCRICAO: TIBStringField;
    ProdutoCODFABRICA: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriProduto_Pauta: TImpriProduto_Pauta;

implementation

{$R *.dfm}

Uses UnitFuncoes;

procedure TImpriProduto_Pauta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Produto.Close;
end;

procedure TImpriProduto_Pauta.FormCreate(Sender: TObject);
begin
  inherited;
  Produto.Open;
  QuickRep1.PreviewModal;
end;

procedure TImpriProduto_Pauta.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if MultiEmpresa then
  begin
    Produto.SQL[2] := Produto.SQL[2] + 'WHERE (CODIGO LIKE :T)';
    Produto.ParamByName('T').AsString := '%-' + EmpresaAtiva;
  end;
end;

end.
