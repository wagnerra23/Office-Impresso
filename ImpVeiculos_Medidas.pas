unit ImpVeiculos_Medidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRPDFFilt,
  QuickRpt, ImpMestre, QRWebFilt, QRCtrls, ExtCtrls;

type
  TImpriVeiculos_Medidas = class(TImpriMestre)
    Carro: TIBQuery;
    CarroCODIGO: TIntegerField;
    CarroDESCRICAO: TIBStringField;
    DSCarro: TDataSource;
    CarroTemp: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CarroTempCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImpriVeiculos_Medidas: TImpriVeiculos_Medidas;

implementation

{$R *.dfm}
USES UnitFuncoes;

procedure TImpriVeiculos_Medidas.CarroTempCalcFields(DataSet: TDataSet);
begin
  inherited;
  CarroTemp.FieldByName('MT2').asFloat:=CarroTemp.FieldByName('Comp').asFloat*CarroTemp.FieldByName('Larg').asFloat;
end;

procedure TImpriVeiculos_Medidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   CarroTemp.Close;
   Carro.Close;
end;

procedure TImpriVeiculos_Medidas.FormCreate(Sender: TObject);
begin
  inherited;
If perm[Tag] in ['1'] then
  ShowMessage('Você não tem autorização para acessar esse relátório')
  else
  begin
   Carro.Open;
   CarroTemp.Open;
   QuickRep1.Preview;
  end;
end;

end.
