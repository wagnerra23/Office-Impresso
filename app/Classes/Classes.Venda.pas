unit Classes.Venda;

interface

uses
  Data.DB, IBX.IBDatabase, FireDAC.Comp.Client, FireDAC.Stan.Param, wrConversao;

type
  TVendaCamposIs = class
  private
    FDataSet: TDataSet;
    FModeloDefinidoManualmente: Boolean;
    FUsarEsteModelo: TVendaTipoModelo;

    function GetVendaTipoModelo: TVendaTipoModelo;
    function GetIsVenda: Boolean;
    function GetIsNotaFiscal: Boolean;
    function GetIsOrcamento: Boolean;
    procedure SetUsarEsteModelo(const Value: TVendaTipoModelo);
  public
    property IsVenda: Boolean read GetIsVenda;
    property IsOrcamento: Boolean read GetIsOrcamento;
    property IsNotaFiscal: Boolean read GetIsNotaFiscal;
    property VendaTipoModelo: TVendaTipoModelo read GetVendaTipoModelo;
    property UsarEsteModelo: TVendaTipoModelo read FUsarEsteModelo write SetUsarEsteModelo;
    procedure UpdateDataSet;
    constructor Create(ADataSet: TDataSet);

    class procedure AtualizaCamposIs(ADataSet: TDataSet);
    class procedure AtualizaCamposIsFromVenda(ADataSetVenda: TDataSet; AVendaTipoModelo: TVendaTipoModelo); overload;
    class procedure AtualizaCamposIsFromVenda(ADataSetVenda: TDataSet; const AVendaTipoModelo: string); overload;
  end;



  {INATIVO
INATIVO AGRUPADO
INATIVO APROVADO
INATIVO ALTERADO
INATIVO CANCELADO AGRUPADO
INATIVO REPROVADO
INATIVO CANCELADO
INATIVO EXCLUÍDO
INATIVO FATURAMENTO
ATIVO
ATIVO PRODUTOS PARCIAL
ATIVO AGRUPADO
ATIVO APROVADO
ATIVO NOTA
ATIVO AGRUPADO CLIENTE
ATIVO PRODUTOS FATURADO
ATIVO AGRUPADO REPRESENTANTE}

implementation

uses
  StrUtils, UnitFuncoes, Variants;

{ TVendaCamposIs }

class procedure TVendaCamposIs.AtualizaCamposIs(ADataSet: TDataSet);
var
  ACamposIs: TVendaCamposIs;
begin
  ACamposIs := TVendaCamposIs.Create(ADataSet);
  try
    ACamposIs.UpdateDataSet;
  finally
    ACamposIs.Free;
  end;
end;

class procedure TVendaCamposIs.AtualizaCamposIsFromVenda(ADataSetVenda: TDataSet; AVendaTipoModelo: TVendaTipoModelo);
var
  ACamposIs: TVendaCamposIs;
begin
  ACamposIs := TVendaCamposIs.Create(ADataSetVenda);
  try
    ACamposIs.UsarEsteModelo := AVendaTipoModelo;
    ACamposIs.UpdateDataSet;
  finally
    ACamposIs.Free;
  end;
end;

class procedure TVendaCamposIs.AtualizaCamposIsFromVenda(ADataSetVenda: TDataSet; const AVendaTipoModelo: string);
begin
  AtualizaCamposIsFromVenda(ADataSetVenda, VendaTipoModeloStrToEnum(AVendaTipoModelo));
end;

constructor TVendaCamposIs.Create(ADataSet: TDataSet);
begin
  FDataSet := ADataSet;
end;

function TVendaCamposIs.GetIsVenda: Boolean;
begin
  Result := (VendaTipoModelo = vtmVenda) or not FDataSet.FieldByName('DT_FATURAMENTO').IsNull;
end;

function TVendaCamposIs.GetIsNotaFiscal: Boolean;
begin
  Result := (VendaTipoModelo = vtmNotaFiscal) or (FDataSet.FieldByName('NOTAFISCAL').AsLargeInt > 0);   // LargeInt Fora do Padrão
end;

function TVendaCamposIs.GetIsOrcamento: Boolean;
begin
  Result := (VendaTipoModelo = vtmOrcamento) and FDataSet.FieldByName('DT_FATURAMENTO').IsNull and (FDataSet.FieldByName('NOTAFISCAL').AsLargeInt = 0); // LargeInt Fora do Padrão
end;

procedure TVendaCamposIs.UpdateDataSet;
begin
  FDataSet.FieldByName('IS_VENDA').AsString      := BoolToStrDB(IsVenda);
  FDataSet.FieldByName('IS_ORCAMENTO').AsString  := BoolToStrDB(IsOrcamento);
  FDataSet.FieldByName('IS_NOTAFISCAL').AsString := BoolToStrDB(IsNotaFiscal);
end;

function TVendaCamposIs.GetVendaTipoModelo: TVendaTipoModelo;
begin
  if FModeloDefinidoManualmente then
    Result := FUsarEsteModelo
  else
    Result := VendaTipoModeloStrToEnum(FDataSet.FieldByName('VENDA_TIPO_MODELO').AsString);
end;

procedure TVendaCamposIs.SetUsarEsteModelo(const Value: TVendaTipoModelo);
begin
  FUsarEsteModelo := Value;
  FModeloDefinidoManualmente := True;
end;

end.
