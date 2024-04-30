unit ImpVenda;

{ Classes que herdam de TImpriVenda:
    TImpriVendaA4
    TImpriFaturamento

  Manter todas as classes abertas ao fazer modificações
}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, DB, IBX.IBQuery, QuickRpt, QRCtrls,
  jpeg, UCBase, QRPDFFilt, QRExport, Registry, frxClass, frxDBSet, ExtCtrls, DataModuleImpressao;

type
  TImpriVenda = class(TForm)
    QuickRep1: TQuickRep;
    UCControls1: TUCControls;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QrLabel10: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText41: TQRDBText;
    QR_QtdItens: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText52: TQRDBText;
    QRChildBand3: TQRChildBand;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel_Proximo: TQRLabel;
    QRLabel651: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel_Titulo1: TQRLabel;
    QRLabel_Titulo2: TQRLabel;
    QRLabel62: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText25: TQRDBText;
    ChildBand3: TQRChildBand;
    QRSubDetail3: TQRSubDetail;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape1: TQRShape;
    QRBand4: TQRBand;
    Pedido_Linha1: TQRLabel;
    Pedido_Linha2: TQRLabel;
    QRLabel39: TQRLabel;
    QRBand5: TQRBand;
    Pedido_Linha3: TQRLabel;
    Pedido_Linha4: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel57: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText42: TQRDBText;
    QRShape2: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel_Cidade: TQRLabel;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    QrDivisor: TQuickRep;
    QRBand6: TQRBand;
    QRLinhaDivisoria: TQRLabel;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    QRChildBand1: TQRChildBand;
    QRLabel61: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel63: TQRLabel;
    QRBandEquipamentoElero: TQRChildBand;
    QRLabel64: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel42: TQRLabel;
    QRLbMetragem: TQRLabel;
    QRDBMetragem: TQRDBText;
    QRLabel65: TQRLabel;
    QRLabel54: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel66: TQRLabel;
    QRLabel70: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText32: TQRDBText;
    frxDBDataset5: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBandEquipamentoEleroBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FQuerEnderecoResponsavel : ^TIBQuery;
    procedure PreencheDadosResponsavel;
  end;

var
  ImpriVenda: TImpriVenda;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Classes.WR;

procedure TImpriVenda.FormShow(Sender: TObject);
begin
  QuickRep1.PreviewModal;
end;

procedure TImpriVenda.PreencheDadosResponsavel;
begin
  if Assigned(FQuerEnderecoResponsavel) then
  begin
    QRLabel51.Caption       := FQuerEnderecoResponsavel.FieldByName('INSCIDENT').AsString;
    QRLabel46.Caption       := FQuerEnderecoResponsavel.FieldByName('CNPJCPF').AsString;

    QRLabel49.Caption       := FQuerEnderecoResponsavel.FieldByName('ENDERECO').AsString + ',' +
                               FQuerEnderecoResponsavel.FieldByName('NUMERO').AsString+ ' - ' +
                               FQuerEnderecoResponsavel.FieldByName('BAIRRO').AsString;

    QRLabel_Cidade.Caption  := FQuerEnderecoResponsavel.FieldByName('CIDADE').AsString + '/' +
                               FQuerEnderecoResponsavel.FieldByName('UF').AsString;

    QRLabel_Proximo.Caption := FQuerEnderecoResponsavel.FieldByName('PROXIMIDADE').AsString;
  end;
end;

procedure TImpriVenda.ChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLbMetragem.Enabled := ComunicacaoVisual;
  QRDBMetragem.Enabled := ComunicacaoVisual;
  if not ComunicacaoVisual then
  begin
    QRDBText11.Width := 380; //324 original
  end;
end;

procedure TImpriVenda.ChildBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := (QRDBText10.DataSet.FieldByName('VEICULO_CHASSI').AsString <> '');
end;

procedure TImpriVenda.ChildBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if (QRDBText28.DataSet.FieldByName('SOLICITACAO_SERVICO').AsString = '') and
     (QRDBText29.DataSet.FieldByName('OBSERVACAO_SERVICO').AsString = '') then
    Sender.Enabled := False
  else
  begin
    Sender.Enabled := True;
    if (QRDBText29.DataSet.FieldByName('OBSERVACAO_SERVICO').AsString <> '') then
      Sender.Height := QRDBText29.Top + QRDBText29.Height + 1
    else
      Sender.Height := QRLabel41.Top - 1;
  end;
end;

procedure TImpriVenda.FormCreate(Sender: TObject);
Var
  Reg : TRegistry;
  QuerX : TIBQuery;
begin
 // if QRDBText10.DataSet.RecordCount = 0 then  QRChildBand2.Enabled:=False;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'SELECT * FROM EMPRESA WHERE (CODIGO = :Codigo)';
    QuerX.Params[0].AsString := EmpresaAtiva;
    QuerX.Open;
    QrLabel1.Caption := QuerX.FieldByName('FANTASIA').AsString;
    QRLabel5.Caption := QuerX.FieldByName('ENDERECO').AsString + ' - ' +
                        QuerX.FieldByName('BAIRRO').AsString + ' - ' +
                        QuerX.FieldByName('CIDADE').AsString + '/' +
                        QuerX.FieldByName('UF').AsString + ' - CEP: ' +
                        QuerX.FieldByName('CEP').AsString;
    QRLabel6.Caption := '';
    if QuerX.FieldByName('CNPJCPF').AsString <> '' then
    begin
      QRLabel6.Caption := 'CNPJ: ' + QuerX.FieldByName('CNPJCPF').AsString +
                          ' INSC: ' + QuerX.FieldByName('INSCIDENT').AsString + ' ';
    end;
    QRLabel6.Caption := QRLabel6.Caption + 'Fone: ' +
                        QuerX.FieldByName('FONE1').AsString + '/' +
                        QuerX.FieldByName('FAX').AsString;

    Pedido_Linha1.Caption := TConfig.ReadString('PEDIDO_LINHA1');
    Pedido_Linha2.Caption := TConfig.ReadString('PEDIDO_LINHA2');
    Pedido_Linha3.Caption := TConfig.ReadString('PEDIDO_LINHA3');
    Pedido_Linha4.Caption := TConfig.ReadString('PEDIDO_LINHA4');
  finally
    QuerX.Free;
  end;
end;

procedure TImpriVenda.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel10.Enabled := QRLabel10.Enabled and (QRDBText15.DataSet.FieldByName('TOTAL').AsFloat <> 0);
  QRLabel11.Enabled := QRLabel10.Enabled;
{  if QRDBText10.DataSet.FieldByName('VEICULO_CHASSI').AsString = '' then
  begin
    Sender.Height:=15;
    QRLabel4.Enabled:=False;
    QRLabel8.Enabled:=False;
    QRLabel26.Enabled:=False;
    QRLabel9.Enabled:=False;
    QRLabel12.Enabled:=False;
    QRLabel13.Enabled:=False;
    QRLabel14.Enabled:=False;
    QRLabel18.Enabled:=False;
    QRLabel27.Enabled:=False;
    QRLabel28.Enabled:=False;
  end
  else begin
    Sender.Height:=45;
    QRLabel4.Enabled:=True;
    QRLabel8.Enabled:=True;
    QRLabel26.Enabled:=True;
    QRLabel9.Enabled:=True;
    QRLabel12.Enabled:=True;
    QRLabel13.Enabled:=True;
    QRLabel14.Enabled:=True;
    QRLabel18.Enabled:=True;
    QRLabel27.Enabled:=True;
    QRLabel28.Enabled:=True;
  end;    }
end;

procedure TImpriVenda.QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  {QrLabel10.Enabled  := QrLabel10.Visible;
  QrLabel11.Enabled  := QrLabel11.Visible;
  QRDBText40.Enabled := QrLabel10.Visible;
  QRDBText41.Enabled := QrLabel11.Visible;}
end;

procedure TImpriVenda.QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Sender.Enabled := (Pedido_Linha1.Caption <> '') or (Pedido_Linha2.Caption <> '');
end;

procedure TImpriVenda.QRBandEquipamentoEleroBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QuerX : TIBQuery;
begin
  Sender.Enabled := False;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'SELECT TIPO FROM EQUIPAMENTO WHERE (CODIGO = :Codigo)';
    QuerX.ParamS[0].AsString := Trim(QRDBText21.DataSet.FieldByName('PLACA').AsString);
    QuerX.Open;
    if QuerX.Fields[0].AsString = 'ELETRODOMÉSTICO' then
    begin
      Sender.Enabled    := True;
      QRLabel69.Caption := QRDBText19.DataSet.FieldByName('EQUIPAMENTO_NUMERO_SERIE').AsString;
      QRLabel68.Caption := QRDBText19.DataSet.FieldByName('EQUIPAMENTO_DT_COMPRA').AsString;
      QRLabel42.Caption := QRDBText19.DataSet.FieldByName('EQUIPAMENTO_NUMERO_NF').AsString;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TImpriVenda.QRChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := (Trim(QRDBText21.DataSet.FieldByName('PLACA').AsString) <> '');
end;

initialization
  RegisterClass(TImpriVenda);

end.
