unit ImpProdutoCusto_Loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRExport,
  QRPDFFilt, QuickRpt, ImpMestre, ExtCtrls, QRWebFilt;

type
  TImpriProdutoCusto_Loja = class(TImpriMestre)
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    IBStringField1: TIBStringField;
    FloatField2: TFloatField;
    ProdutoUNIDADE: TIBStringField;
    ProdutoCUSTO_LOJA: TFloatField;
    FloatField1: TFloatField;
    Soma: TIBQuery;
    SomaTOTAL_CUSTO_LOJA: TFloatField;
    SomaTOTAL_VALOR: TFloatField;
    SomaTOTAL_ESTOQUE: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriProdutoCusto_Loja: TImpriProdutoCusto_Loja;

implementation

{$R *.dfm}
Uses UnitFuncoes;

procedure TImpriProdutoCusto_Loja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Produto.Close;
end;

procedure TImpriProdutoCusto_Loja.FormCreate(Sender: TObject);
begin
  inherited;
  Produto.Open;
  QuickRep1.PreviewModal;
end;

procedure TImpriProdutoCusto_Loja.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  If (MultiEmpresa) Then
  begin
    Produto.Sql[2]:=Produto.Sql[2]+'Where (CODIGO LIKE :T)';
    Produto.ParamByName('T').asString:='%'+'-'+EmpresaAtiva;
  end;
end;

end.
