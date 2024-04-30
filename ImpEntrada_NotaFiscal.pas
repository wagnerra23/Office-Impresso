unit ImpEntrada_NotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, QRCtrls, QuickRpt, QRExport,
  QRPDFFilt, ImpMestre, ExtCtrls, QRWebFilt, Data.DB;

type
  TImpriEntrada_NotaFiscal = class(TImpriMestre)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRLSoma: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    FImpSomaNf: Double;
    FDataSet: TDataSet;
    procedure SetDataSet(const Value: TDataSet);
  public
    property ImpSomaNf: Double read FImpSomaNf write FImpSomaNf;
    property DataSet: TDataSet read FDataSet write SetDataSet;
  end;

var
  ImpriEntrada_NotaFiscal: TImpriEntrada_NotaFiscal;

implementation

{$R *.dfm}

procedure TImpriEntrada_NotaFiscal.QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRLSoma.Caption := FormatFloat('###,###,##0.00', FImpSomaNf);
end;

procedure TImpriEntrada_NotaFiscal.SetDataSet(const Value: TDataSet);
begin
  FDataSet := Value;
  QuickRep1.DataSet := FDataSet;
  QRSubDetail1.DataSet := FDataSet;
  QRDBText10.DataSet := FDataSet;
  QRDBText1.DataSet := FDataSet;
  QRDBText3.DataSet := FDataSet;
  QRDBText4.DataSet := FDataSet;
  QRDBText5.DataSet := FDataSet;
end;

end.
