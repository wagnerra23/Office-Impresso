unit ImpFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, QuickRpt, QRCtrls, ImpVenda,
  frxClass, frxDBSet, QRPDFFilt, QRExport, UCBase, ExtCtrls;

type
  TImpriFaturamento = class(TImpriVenda)
    QRChildBandOrcamento: TQRChildBand;
    QRLabelEntrada: TQRLabel;
    QRLabelNParcelas: TQRLabel;
    QRLabelJuros: TQRLabel;
    QRLabelValorParcela: TQRLabel;
    QRLabelOrcamento: TQRLabel;
    QRSubOrcamento: TQRSubDetail;
    QRDBEntrada: TQRDBText;
    QRDBQuant: TQRDBText;
    QrDBJuros: TQRDBText;
    QRDBValorParcela: TQRDBText;
    QRDBText50: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriFaturamento: TImpriFaturamento;

implementation

{$R *.dfm}

end.
