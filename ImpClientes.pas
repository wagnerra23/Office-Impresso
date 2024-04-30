unit ImpClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ImpMestre, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRWebFilt, ExtCtrls, UCHist_WRGeral;

type
  TImpriClientes = class(TImpriMestre)
    Clientes: TIBQuery;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText17: TQRDBText;
    UCHistWRGeral1: TUCHistWRGeral;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriClientes: TImpriClientes;

implementation

{$R *.dfm}

procedure TImpriClientes.FormCreate(Sender: TObject);
begin
  inherited;
  Clientes.Open;
  QuickRep1.PreviewModal;
end;

end.
