unit RptCodigoBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, DB, IBX.IBCustomDataSet, IBX.IBQuery, QuickRpt, RLReport,
  RLBarcode, frxClass, frxDBSet, frxBarcode, Datasnap.DBClient;

type
  TRpt_Barras = class(TForm)
    Procedure_Barras_DESATIVADO: TIBQuery;
    Procedure_Barras_DESATIVADODESCRICAO: TIBStringField;
    Procedure_Barras_DESATIVADOTAMANHO: TIBStringField;
    Procedure_Barras_DESATIVADOQUANT: TIntegerField;
    //RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText8: TRLDBText;
    RLDBBarcode2: TRLDBBarcode;
    DS: TDataSource;
    Procedure_Barras_DESATIVADOCODPRODUTO: TIBStringField;
    Procedure_Barras_DESATIVADOREFERENCIA: TIBStringField;
    Procedure_Barras_DESATIVADOVALOR: TFloatField;
    Procedure_Barras_DESATIVADOCODBARRAS: TLargeintField;
    RLReport2: TRLReport;
    RLDetailGrid2: TRLDetailGrid;
    RLLabel3: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLReport4: TRLReport;
    rlgor: TRLDetailGrid;
    RLImage1: TRLImage;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBBarcode3: TRLDBBarcode;
    RLReport3: TRLReport;
    RLDetailGrid3: TRLDetailGrid;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBBarcode4: TRLDBBarcode;
    RLImage2: TRLImage;
    RLDBMemo2: TRLDBMemo;
    RLReport5: TRLReport;
    RLDetailGrid4: TRLDetailGrid;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBBarcode5: TRLDBBarcode;
    RLImage3: TRLImage;
    RLDBMemo3: TRLDBMemo;
    RLLabel6: TRLLabel;
    RLReport6: TRLReport;
    RLDetailGrid5: TRLDetailGrid;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBBarcode6: TRLDBBarcode;
    RLImage4: TRLImage;
    RLDBMemo4: TRLDBMemo;
    RLLabel11: TRLLabel;
    RLDBText4: TRLDBText;
    RLReport7: TRLReport;
    RLDetailGrid6: TRLDetailGrid;
    RLLabel12: TRLLabel;
    RLDBBarcode7: TRLDBBarcode;
    RLDBMemo5: TRLDBMemo;
    RLDBText5: TRLDBText;
    RLReport8: TRLReport;
    RLDetailGrid7: TRLDetailGrid;
    RLDBBarcode8: TRLDBBarcode;
    RLDBMemo6: TRLDBMemo;
    RLDBText6: TRLDBText;
    RLReport9: TRLReport;
    RLReport1: TRLReport;
    RLDetailGrid8: TRLDetailGrid;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBBarcode9: TRLDBBarcode;
    RLImage5: TRLImage;
    RLDBMemo7: TRLDBMemo;
    RLLabel13: TRLLabel;
    RLPimaco2: TRLReport;
    RLDetailGrid9: TRLDetailGrid;
    RLDBText13: TRLDBText;
    RLDBBarcode10: TRLDBBarcode;
    CDSBarrasImprimir: TClientDataSet;
    CDSBarrasImprimirCODPRODUTO: TStringField;
    CDSBarrasImprimirDESCRICAO: TStringField;
    CDSBarrasImprimirTAMANHO: TStringField;
    CDSBarrasImprimirQUANT: TIntegerField;
    CDSBarrasImprimirREFERENCIA: TStringField;
    CDSBarrasImprimirVALOR: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    CDSBarrasImprimirFAMILIA: TIntegerField;
    CDSBarrasImprimirCODBARRAS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLDetailGrid7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Procedure_Barras_DESATIVADOBeforeOpen(DataSet: TDataSet);
    procedure RLDetailGrid9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlgorBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid8BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    function DeveImprimir: Boolean;
  public
    { Public declarations }
  end;

var
  Rpt_Barras: TRpt_Barras;

implementation

uses
  UnitFuncoes, CadProduto_Barras;

{$R *.dfm}

procedure TRpt_Barras.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  I: Integer;
begin
  CDSBarrasImprimir.Open;
  QuerX := GeraQuery;
  try
    //Insere registros nulos no início para pular para uma posição X na página da etiqueta
    for I := 1 to FrmProduto_Barras.SpinEdit1.Value - 1 do
    begin
      CDSBarrasImprimir.Insert;
      CDSBarrasImprimir.Post;
    end;

    QuerX.SQL.Text := 'SELECT * FROM PRODUTO_BARRAS';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      for I := 1 to QuerX.FieldByName('QUANT').AsInteger do
      begin
        CDSBarrasImprimir.Append;
        CDSBarrasImprimir.FieldByName('CODPRODUTO').Value := QuerX.FieldByName('CODPRODUTO').Value;
        CDSBarrasImprimir.FieldByName('CODBARRAS').Value  := QuerX.FieldByName('CODBARRAS').Value;
        CDSBarrasImprimir.FieldByName('DESCRICAO').Value  := QuerX.FieldByName('DESCRICAO').Value;
        CDSBarrasImprimir.FieldByName('TAMANHO').Value    := QuerX.FieldByName('TAMANHO').Value;
        CDSBarrasImprimir.FieldByName('QUANT').Value      := QuerX.FieldByName('QUANT').Value;
        CDSBarrasImprimir.FieldByName('REFERENCIA').Value := QuerX.FieldByName('REFERENCIA').Value;
        CDSBarrasImprimir.FieldByName('VALOR').Value      := QuerX.FieldByName('VALOR').Value;
        CDSBarrasImprimir.FieldByName('FAMILIA').Value    := QuerX.FieldByName('FAMILIA').Value;
        CDSBarrasImprimir.Post;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;

  RLDBBarcode1.CheckSum := True;
  RLDBBarcode2.CheckSum := True;
  RLDBBarcode3.CheckSum := True;
  RLDBBarcode4.CheckSum := True;
  RLDBBarcode5.CheckSum := True;
  RLDBBarcode6.CheckSum := True;
  RLDBBarcode9.CheckSum := True;
end;

procedure TRpt_Barras.Procedure_Barras_DESATIVADOBeforeOpen(DataSet: TDataSet);
begin
  //Procedure_Barras.ParamByName('IniciarEm').AsInteger := FrmProduto_Barras.SpinEdit1.Value;
end;

procedure TRpt_Barras.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode2.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode1.Visible := DeveImprimir;
  RLLabel3.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode4.Visible := DeveImprimir;
  RLLabel5.Visible := DeveImprimir;
  RLLabel2.Visible := DeveImprimir;
  RLImage2.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode5.Visible := DeveImprimir;
  RLLabel1.Visible := DeveImprimir;
  RLLabel6.Visible := DeveImprimir;
  RLImage3.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode6.Visible := DeveImprimir;
  RLLabel4.Visible := DeveImprimir;
  RLLabel11.Visible := DeveImprimir;
  RLImage4.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode7.Visible := DeveImprimir;
  RLLabel12.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid7BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
 { if Pos(RLDBMemo6.Caption,'-') > 0 then
    RLDBMemo6.Caption:=Copy(RLDBMemo6.Caption,1,Pos(RLDBMemo6.Caption,'-'));  }
  RLDBBarcode8.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode9.Visible := DeveImprimir;
  RLImage5.Visible := DeveImprimir;
  RLLabel14.Visible := DeveImprimir;
  RLLabel13.Visible := DeveImprimir;
end;

procedure TRpt_Barras.RLDetailGrid9BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode10.Visible := DeveImprimir;
end;

procedure TRpt_Barras.rlgorBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLDBBarcode3.Visible := DeveImprimir;
  RLLabel7.Visible := DeveImprimir;
  RLLabel8.Visible := DeveImprimir;
  RLLabel9.Visible := DeveImprimir;
  RLImage1.Visible := DeveImprimir;
  RLLabel10.Visible := DeveImprimir;
end;

function TRpt_Barras.DeveImprimir: Boolean;
begin
  Result := (CDSBarrasImprimir.FieldByName('CODBARRAS').AsString <> '');
end;

procedure TRpt_Barras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSBarrasImprimir.Close;
end;

initialization
  RegisterClass(TRpt_Barras);

end.
