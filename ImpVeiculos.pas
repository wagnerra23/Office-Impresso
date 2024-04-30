unit ImpVeiculos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBQuery, QRCtrls, QRPDFFilt,
  QuickRpt, ImpMestre, IBX.IBCustomDataSet, QRExport, QRWebFilt, ExtCtrls;

type
  TImpriVeiculos = class(TImpriMestre)
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    Veiculos: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriVeiculos: TImpriVeiculos;

implementation

{$R *.dfm}

end.
