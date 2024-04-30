unit ImpNF_Entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImpMestre, QRExport, QRPDFFilt, QRCtrls, QuickRpt,
  DB, IBX.IBQuery, ExtCtrls, QRWebFilt, qrpctrls, grimgctrl;

type
  TImpriNF_Entrada = class(TImpriMestre)
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText1: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText43: TQRDBText;
    QR_QtdItens: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRBand5: TQRBand;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel_Usuario: TQRLabel;
    QRLabel_Contato: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel_Soma_Produto: TQRLabel;
    QRDBText_Valor: TQRDBText;
    QRDBText_Total_Venda: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel28: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRImage2: TQRImage;
    QRLabel37: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel38: TQRLabel;
    QRBand6: TQRBand;
    QRLabel39: TQRLabel;
    QRSysData4: TQRSysData;
    QRSubDetail2: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRBand7: TQRBand;
    QRLabel48: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRBand8: TQRBand;
    QRDBText26: TQRDBText;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel75: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel76: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriNF_Entrada: TImpriNF_Entrada;

implementation

uses
  UnitFuncoes;

{$R *.dfm}

procedure TImpriNF_Entrada.FormShow(Sender: TObject);
begin
  inherited;
  QuickRep1.PreviewModal;
end;

procedure TImpriNF_Entrada.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QuerX : TIBQuery;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'SELECT * FROM EMPRESA WHERE (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    QR_Fantasia.Caption := QuerX.FieldByName('FANTASIA').AsString;
    QR_Endereco.Caption := QuerX.FieldByName('ENDERECO').AsString + ' - ' +
                           QuerX.FieldByName('BAIRRO').AsString + ' - ' +
                           QuerX.FieldByName('CIDADE').AsString + '/' +
                           QuerX.FieldByName('UF').AsString + ' - CEP:' +
                           QuerX.FieldByName('CEP').AsString;
    QR_CNPJ_INSC_Fone.Caption := 'CNPJ: ' + QuerX.FieldByName('CNPJCPF').AsString + ' INSC: ' +
                                 QuerX.FieldByName('INSCIDENT').AsString + ' Fone:' +
                                 QuerX.FieldByName('FONE1').AsString + '/Fax: ' +
                                 QuerX.FieldByName('FAX').AsString;
    try
      if FileExists(GetDirSistema + 'Logo_Relatorio.jpg') then
      begin
        QRImage2.Picture.LoadFromFile(GetDirSistema + 'Logo_Relatorio.jpg');
        QRImage1.Picture.LoadFromFile(GetDirSistema + 'Logo_Relatorio.jpg');
      end;
    except end;
  finally
    QuerX.Free;
  end;
end;

procedure TImpriNF_Entrada.QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QuerX : TIBQuery;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'SELECT * FROM EMPRESA WHERE (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    QRLabel34.Caption := QuerX.FieldByName('FANTASIA').AsString;
    QRLabel35.Caption := QuerX.FieldByName('ENDERECO').AsString + ' - ' +
                           QuerX.FieldByName('BAIRRO').AsString + ' - ' +
                           QuerX.FieldByName('CIDADE').AsString + '/' +
                           QuerX.FieldByName('UF').AsString + ' - CEP:' +
                           QuerX.FieldByName('CEP').AsString;
    QRLabel36.Caption := 'CNPJ: ' + QuerX.FieldByName('CNPJCPF').AsString + ' INSC: ' +
                                 QuerX.FieldByName('INSCIDENT').AsString + ' Fone:' +
                                 QuerX.FieldByName('FONE1').AsString + '/Fax: ' +
                                 QuerX.FieldByName('FAX').AsString;
    try
      if FileExists(GetDirSistema + 'Logo_Relatorio.jpg') then
      begin
        QRImage2.Picture.LoadFromFile(GetDirSistema + 'Logo_Relatorio.jpg');
        QRImage1.Picture.LoadFromFile(GetDirSistema + 'Logo_Relatorio.jpg');
      end;
    except end;
  finally
    QuerX.Free;
  end;
end;

end.
