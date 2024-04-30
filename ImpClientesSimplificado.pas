unit ImpClientesSimplificado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ImpMestre, QRPDFFilt, QRExport,
  QuickRpt, QRCtrls, qrpctrls, ExtCtrls, QRWebFilt, UCHist_WRGeral;

type
  TImpriClientesSimplificado = class(TImpriMestre)
    QRPBand1: TQRPBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    UCHistWRGeral1: TUCHistWRGeral;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriClientesSimplificado: TImpriClientesSimplificado;

implementation

{$R *.dfm}

end.
