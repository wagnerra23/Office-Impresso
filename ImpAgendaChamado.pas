unit ImpAgendaChamado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ImpMestre, QRCtrls, QuickRpt, DB,
  IBX.IBQuery, ExtCtrls, IBX.IBCustomDataSet, QRPDFFilt, QRExport, QRWebFilt;

type
  TImpriAgendaChamado = class(TImpriMestre)
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    qrdbtxtFUNCIONARIO: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    qrlbl1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrdbtxtNUMERO: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qrdbtxtPROXIMIDADE: TQRDBText;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    QRLabel14: TQRLabel;
    Clientes: TIBQuery;
    qrdbtxtBAIRRO: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrdbtxtCIDADE: TQRDBText;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrdbtxtUF: TQRDBText;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrdbtxtCEP: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrdbtxtINSCIDENT: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrdbtxtCONTATO: TQRDBText;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrdbtxtCNPJCPF: TQRDBText;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrdbtxtEMAIL: TQRDBText;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrdbtxtDT_EMISSAO: TQRDBText;
    qrlbl17: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText6: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriAgendaChamado: TImpriAgendaChamado;

implementation

{$R *.dfm}

end.
