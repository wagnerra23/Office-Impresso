unit ImpVeiculos_Estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRExport,
  QRPDFFilt, ImpMestre, ExtCtrls, QRWebFilt;

type
  TImpriVeiculos_Estoque = class(TImpriMestre)
    Produto: TIBQuery;
    ProdutoCODIGO: TIBStringField;
    IBStringField1: TIBStringField;
    FloatField2: TFloatField;
    ProdutoESTOQUE_P: TFloatField;
    DataSource1: TDataSource;
    Motos: TIBQuery;
    MotosCODPRODUTO: TIBStringField;
    MotosCHASSI: TIBStringField;
    MotosMOTOR: TIBStringField;
    MotosRENAVAN: TIBStringField;
    MotosANO_MODELO: TIBStringField;
    MotosCILINDRADA: TFloatField;
    MotosHP: TFloatField;
    MotosCODCOR: TIntegerField;
    MotosCOMBUSTIVEL: TIBStringField;
    MotosKM: TIBStringField;
    MotosPASSAGEIROS: TFloatField;
    MotosFRETE: TFloatField;
    MotosPIS: TFloatField;
    MotosCOFINS: TFloatField;
    MotosCUSTO_FABR: TFloatField;
    MotosCUSTO_LOJA: TFloatField;
    MotosMARGEM: TFloatField;
    MotosVALOR: TFloatField;
    MotosOBSERVACAO: TIBStringField;
    MotosPLACA: TIBStringField;
    MotosCOR: TIBStringField;
    MotosSTATUS: TIBStringField;
    Soma: TIBQuery;
    SomaTOTAL_CUSTO_LOJA: TFloatField;
    SomaTOTAL_VALOR: TFloatField;
    Soma_Estoque: TIBQuery;
    FloatField4: TFloatField;
    Estoque: TIBQuery;
    DS: TDataSource;
    Soma_Cor: TIBQuery;
    Soma_CorCODCOR: TIntegerField;
    Soma_CorCOUNT: TIntegerField;
    Soma_CorDESCRICAO: TIBStringField;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MotosBeforeOpen(DataSet: TDataSet);
    procedure ProdutoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriVeiculos_Estoque: TImpriVeiculos_Estoque;

implementation

{$R *.dfm}
Uses UnitFuncoes;

procedure TImpriVeiculos_Estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Produto.Close;
  Motos.Close;
  Soma.Close;
  Soma_Estoque.Close;
end;

procedure TImpriVeiculos_Estoque.FormCreate(Sender: TObject);
begin
  inherited;
  If perm[Tag] in ['1'] then
  ShowMessage('Você não tem autorização para acessar esse relátório')
  else
  begin
  Produto.Open;
  Motos.Open;
  Soma.Open;
  Soma_Estoque.Open;
  Soma_Cor.Open;
  QuickRep1.PreviewModal;
  end;
end;

procedure TImpriVeiculos_Estoque.MotosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Motos.ParamByName('Emp').AsString:=EmpresaAtiva;
end;

procedure TImpriVeiculos_Estoque.ProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produto.ParamByName('Emp').AsString:=EmpresaAtiva;
end;

end.
