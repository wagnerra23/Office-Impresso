unit ImpFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, QRCtrls, QuickRpt, DB, ExtCtrls,
  QRPDFFilt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TImpriFicha = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape19: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape8: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText73: TQRDBText;
    QRShape63: TQRShape;
    QRLabel62: TQRLabel;
    QRDBText72: TQRDBText;
    QRShape62: TQRShape;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel84: TQRLabel;
    QRLabel88: TQRLabel;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRLabel58: TQRLabel;
    QRLabel60: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText61: TQRDBText;
    QRBand1: TQRBand;
    QRLabel79: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRBand3: TQRBand;
    QRLabel76: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel59: TQRLabel;
    Quinta: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel50: TQRLabel;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape13: TQRShape;
    QRLabel67: TQRLabel;
    QRShape4: TQRShape;
    QRLabel68: TQRLabel;
    QRShape22: TQRShape;
    QRLabel70: TQRLabel;
    QRShape40: TQRShape;
    QRLabel71: TQRLabel;
    QRShape44: TQRShape;
    QRShape20: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel73: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape52: TQRShape;
    Cadastro: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriFicha: TImpriFicha;

implementation

{$R *.dfm}

end.