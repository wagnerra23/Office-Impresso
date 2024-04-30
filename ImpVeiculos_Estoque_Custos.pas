unit ImpVeiculos_Estoque_Custos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImpMestre, QuickRpt, QRCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRExport,
  QRPDFFilt, ExtCtrls, QRWebFilt;

type
  TImpriVeiculos_Estoque_Custos = class(TImpriMestre)
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    IBStringField1: TIBStringField;
    ProdutoESTOQUE_P: TFloatField;
    DataSource1: TDataSource;
    Veiculos: TIBQuery;
    VeiculosCODPRODUTO: TIBStringField;
    VeiculosCHASSI: TIBStringField;
    VeiculosMOTOR: TIBStringField;
    VeiculosRENAVAN: TIBStringField;
    VeiculosANO_MODELO: TIBStringField;
    VeiculosCILINDRADA: TFloatField;
    VeiculosHP: TFloatField;
    VeiculosCODCOR: TIntegerField;
    VeiculosCOMBUSTIVEL: TIBStringField;
    VeiculosKM: TIBStringField;
    VeiculosPASSAGEIROS: TFloatField;
    VeiculosFRETE: TFloatField;
    VeiculosPIS: TFloatField;
    VeiculosCOFINS: TFloatField;
    VeiculosCUSTO_FABR: TFloatField;
    VeiculosCUSTO_LOJA: TFloatField;
    VeiculosMARGEM: TFloatField;
    VeiculosVALOR: TFloatField;
    VeiculosOBSERVACAO: TIBStringField;
    VeiculosPLACA: TIBStringField;
    VeiculosCOR: TIBStringField;
    VeiculosSTATUS: TIBStringField;
    Soma_Estoque: TIBQuery;
    FloatField4: TFloatField;
    Soma: TIBQuery;
    SomaTOTAL_CUSTO_LOJA: TFloatField;
    SomaTOTAL_VALOR: TFloatField;
    SomaTOTAL_CUSTO_FABR: TFloatField;
    DetailBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure VeiculosBeforeOpen(DataSet: TDataSet);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
    procedure ProdutoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriVeiculos_Estoque_Custos: TImpriVeiculos_Estoque_Custos;

implementation

{$R *.dfm}

USES UnitFuncoes;

procedure TImpriVeiculos_Estoque_Custos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Produto.Close;
  Veiculos.Close;
  Soma.Close;
  Soma_Estoque.Close;
end;

procedure TImpriVeiculos_Estoque_Custos.FormCreate(Sender: TObject);
begin
  inherited;
  If perm[Tag] in ['1'] then
    ShowMessage('Você não tem autorização para acessar esse relátório')
  else
  begin
    Produto.Open;
    Veiculos.Open;
    Soma.Open;
    Soma_Estoque.Open;
    QuickRep1.PreviewModal;
  end;
end;

procedure TImpriVeiculos_Estoque_Custos.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produto.ParamByName('Emp').AsString:=EmpresaAtiva;
end;

procedure TImpriVeiculos_Estoque_Custos.ProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  Produto.FieldByName('Total').asFloat  := Produto.FieldByName('Valor').asFloat*Produto.FieldByName('Estoque').asFloat;
end;

procedure TImpriVeiculos_Estoque_Custos.VeiculosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Veiculos.ParamByName('Emp').AsString:=EmpresaAtiva;
end;

end.
