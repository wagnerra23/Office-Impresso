unit Controller.Compra.Estoque;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils;

procedure ValidaRegras_MovimentacaoEstoquePelaCompra(ANF_Entrada: TDataSet);

implementation

Uses UnitFuncoes, Classes.WR;

procedure ValidaRegras_MovimentacaoEstoquePelaCompra(ANF_Entrada: TDataSet);
begin
  if ANF_Entrada.FieldByName('TIPO').AsString = 'TRANSFERÊNCIA' then
  begin
    if ANF_Entrada.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 0 then //Transferência entre estoques
    begin
      if (ANF_Entrada.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString = '') or (ANF_Entrada.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString = '') then
        raise EWRException.Create('Selecione os estoques de Origem e Destino para fazer a transferência.');

      if ANF_Entrada.FieldByName('ESTOQUE_LOCAL_ORIGEM').AsString = ANF_Entrada.FieldByName('ESTOQUE_LOCAL_DESTINO').AsString then
        raise EWRException.Create('Selecione locais de estoque diferentes na Origem e Destino para fazer a transferência.');

    end
    else if ANF_Entrada.FieldByName('TRANSFERENCIA_TIPO').AsInteger = 1 then //Transferência entre empresas
    begin
      if (ANF_Entrada.FieldByName('CODEMPRESA_ORIGEM').AsString = '') or (ANF_Entrada.FieldByName('CODEMPRESA_DESTINO').AsString = '') then
        raise EWRException.Create('Selecione as empresas de Origem e Destino para fazer a transferência.');

      if ANF_Entrada.FieldByName('CODEMPRESA_ORIGEM').AsString = ANF_Entrada.FieldByName('CODEMPRESA_DESTINO').AsString then
        raise EWRException.Create('Selecione empresas diferentes na Origem e Destino para fazer a transferência.');

    end;
  end;
end;



end.
