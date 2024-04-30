unit Controller.Interno.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, VCL.Controls;

// AQUI SÃO OS IFS QUE VÃO SER VALIDADOS NO CONTROLLER - Validações NFe
procedure ValidaRegra_DataHoraEmissaoNFe(ADataHoraEmissao: Variant);
procedure ValidaRegra_DataHoraEntradaSaidaNFe(ADataHoraEntradaSaida: Variant);
procedure ValidaRegra_DataHoraEntradaSaidaMenorQueEmissaoNFe(ADataHoraEntradaSaida, ADataHoraEmissao: Variant);
procedure ValidaRegra_TelefoneNFe(ATelefone: Variant);
procedure ValidaRegra_FinalidadeNFCe(AFinalidade: Variant);
procedure ValidaRegra_EntradaSaidaNFCe(ANF_Entrada_Saida: Variant);
procedure ValidaRegra_ConsumidorFinalNFCe(AConsumidor_Final: Variant);
procedure ValidaRegra_DIFAL(ANF_Finalidade, AResponsavel_UF, AEmpresa_UF,
                            AResponsavel_Tipo_Contribuinte, AEmpresa_CRT,
                            ANFe_Calcula_Difal: Variant);
procedure ValidaRegra_DescontoNFCe(APDesc: Variant);
procedure ValidaRegra_ParcelasNFCe(AVendaFinanceiroCodigo: Variant);
procedure ValidaRegra_ParcelasExistentesNFeDevolucao(AVendaFinanceiroCodigo: Variant; ANF_Finalidade: integer);

implementation

Uses UnitFuncoes, SQL.Boleto, Utils.Boleto, Utils.Boleto.Retorno, Classes.WR, Services.Boleto, ACBrBoletoConversao,
  Services.Venda, SQL.Venda;

procedure ValidaRegra_DataHoraEmissaoNFe(ADataHoraEmissao: Variant);
begin
  if ADataHoraEmissao = 0 then Exit;

  if (ADataHoraEmissao > Now) then
    raise EWRException.Create('Data de emissão maior que a data atual');

  if ((Now - ADataHoraEmissao) > 30) then
    raise EWRException.Create('703-Rejeição: Data-Hora de Emissão posterior ao horário de recebimento');

end;

procedure ValidaRegra_DataHoraEntradaSaidaNFe(ADataHoraEntradaSaida: Variant);
begin
  if ADataHoraEntradaSaida = 0 then Exit;

  if ((ADataHoraEntradaSaida - Now) > 30) then
    raise EWRException.Create('504-Rejeição: Data de Entrada/Saída posterior ao permitido');

  if ((Now - ADataHoraEntradaSaida) > 30) then
    raise EWRException.Create('505-Rejeição: Data de Entrada/Saída anterior ao permitido');
end;

procedure ValidaRegra_DataHoraEntradaSaidaMenorQueEmissaoNFe(ADataHoraEntradaSaida, ADataHoraEmissao: Variant);
begin
  if ADataHoraEntradaSaida = 0 then Exit;

  if (ADataHoraEntradaSaida < ADataHoraEmissao) then
    raise EWRException.Create('Validar: 506-Saida < Emissao');
end;

procedure ValidaRegra_TelefoneNFe(ATelefone: Variant);
begin
  if (ATelefone = '') then
    raise EWRException.Create('Telefone Obrigatório');

  if (VarToStr(ATelefone).Length > 15) then
    raise EWRException.Create('Telefone deve conter no máximo 15 caracteres');
end;

procedure ValidaRegra_FinalidadeNFCe(AFinalidade: Variant);
begin
  if (AFinalidade <> 1) then
    raise EWRException.Create('Obrigatório Finalidade Normal para NFC-e.');
end;

procedure ValidaRegra_EntradaSaidaNFCe(ANF_Entrada_Saida: Variant);
begin
  if (ANF_Entrada_Saida <> 1) then
    raise EWRException.Create('Obrigatório operação de Saída para NFC-e.');
end;

procedure ValidaRegra_ConsumidorFinalNFCe(AConsumidor_Final: Variant);
begin
  if (AConsumidor_Final <> 'S') then
    raise EWRException.Create('Obrigatório Consumidor Final = S para NFC-e.');
end;

procedure ValidaRegra_DIFAL(ANF_Finalidade, AResponsavel_UF, AEmpresa_UF,
                            AResponsavel_Tipo_Contribuinte, AEmpresa_CRT,
                            ANFe_Calcula_Difal: Variant);
begin
  if {(WREventosCadastro.AcaoTabelaAtiva = 'NFE') and} (ANF_Finalidade = '1') and (AResponsavel_UF <> AEmpresa_UF) and
     (AResponsavel_Tipo_Contribuinte = 9) and (AEmpresa_CRT = 'Regime Normal') and (ANFe_Calcula_Difal = 'N')
  then
    raise EWRException.Create('Sua empresa é do Regime Normal. Para cliente fora do estado e não contribuinte, ' +
                              'deve marcar a opção CALCULA DIFAL e recalcular impostos.');

end;

procedure ValidaRegra_DescontoNFCe(APDesc: Variant);
begin
  if APDesc > 100 then
    raise EWRException.Create('895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura');
end;

procedure ValidaRegra_ParcelasNFCe(AVendaFinanceiroCodigo: Variant);
begin
  if AVendaFinanceiroCodigo = '' then
    raise EWRException.Create('Obrigatório gerar financeiro para emitir NFC-e.');
end;

procedure ValidaRegra_ParcelasExistentesNFeDevolucao(AVendaFinanceiroCodigo: Variant; ANF_Finalidade: integer);
begin
  if(AVendaFinanceiroCodigo <> '') and ((ANF_Finalidade = 3) or (ANF_Finalidade = 4)) then
    raise EWRException.Create('Obrigatório excluir parcelas do Financeiro para NFe Devolução ou Estorno.');
end;

end.

