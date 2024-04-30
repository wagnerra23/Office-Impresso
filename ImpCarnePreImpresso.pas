unit ImpCarnePreImpresso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, ExtCtrls;

type
  TImpriCarnePreImpresso = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel3: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriCarnePreImpresso: TImpriCarnePreImpresso;

implementation



{$R *.dfm}

end.
