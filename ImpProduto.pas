unit ImpProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QRExport,
  QRPDFFilt, QuickRpt, ImpMestre, ExtCtrls, QRWebFilt, frxClass, frxDBSet;

type
  TImpriProduto = class(TImpriMestre)
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText_Campo_Valor: TQRDBText;
    QRDBText_Estoque_campo: TQRDBText;
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    FloatField1: TFloatField;
    ProdutoESTOQUE_P: TFloatField;
    QRLabel4: TQRLabel;
    QRLabel_Titulo_Valor: TQRLabel;
    QRLabel_Titulo_Estoque: TQRLabel;
    QRLabel5: TQRLabel;
    frxProdutoPautaPreco: TfrxDBDataset;
    ProdutoDESCRICAO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriProduto: TImpriProduto;

implementation

{$R *.dfm}
uses
  UnitFuncoes;

{Impressão OK!
 Revisado em 29/06/2020 por Leandro
 Mantido estrutura de montagem do SQL}

procedure TImpriProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Produto.Close;
end;

procedure TImpriProduto.FormCreate(Sender: TObject);
begin
  inherited;
  If perm[Tag] in ['1'] then
    ShowMessage('Você não tem autorização para acessar esse relátório');
  Produto.Open;
end;

procedure TImpriProduto.FormShow(Sender: TObject);
begin
  inherited;
  Produto.Open;
end;

procedure TImpriProduto.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produto.ParamByName('Emp').AsString := Empresa.FieldByName('CODIGO').AsString;
 // ShowMessage(Produto.SQL.Text);
end;

initialization
  RegisterClass(TImpriProduto);

end.
