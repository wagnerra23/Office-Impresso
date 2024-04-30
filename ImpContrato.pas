unit ImpContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBQuery, QRPDFFilt, QRExport, QuickRpt, QRCtrls, ExtCtrls, IBX.IBCustomDataSet;

type
  TImpriContrato = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRChildBand2: TQRChildBand;
    QRLabel38: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    Cliente: TIBQuery;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriContrato: TImpriContrato;

implementation

{$R *.dfm}

procedure TImpriContrato.FormCreate(Sender: TObject);
begin
  Cliente.Open;
end;

end.
