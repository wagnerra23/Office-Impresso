unit Controller.Obrigatorio.Venda.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, SysUtils, Variants, Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Async, FireDAC.DApt, System.Generics.Collections, WREventos, System.StrUtils, ACBrUtil,
  cxMemo, VCL.Controls;

procedure ControllerVendaVendaObrigatorio_ValorMinimoVendaProduto(AValor: Variant; AVenda_Produto: TDataSet);

procedure ControllerVendaVendaObrigatorio_RazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_GerarParcelasRazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_Contribuinte_ObrigatorioInscIdent(AResponsavelInscricaoEstadual: Variant; AQuery: TFDQuery);
procedure ControllerVendaVendaObrigatorio_ObrigatorioTipoContribuinte_InscIdentPreenchida(AResponsavelInscricaoEstadual: Variant; AQuery: TFDQuery);

procedure ControllerVendaVendaObrigatorio_NF_DescontoMaiorQueValorOriginalDaFatura(APDesc: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_NFeDevolucao_ObrigatorioChaveAcesso(AChaveAcesso: Variant; AQuery: TFDQuery);
procedure ControllerVendaVendaObrigatorio_NFeDevolucao_ChaveAcesso44Digitos(AChaveAcesso: Variant; AQuery: TFDQuery);

procedure ControllerVendaVendaObrigatorio_NFCe_UFDestinatario_UFEmitente(AResponsavelUF: Variant; AEmpresa: TFDQuery);
procedure ControllerVendaVendaObrigatorio_NFCe_ClienteNaoContribuinte(ATipoContribuinte: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFCe_ParcelaFinanceiroObrigatoria(APDesc: Variant; AVenda_Financeiro: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFCe_RazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_FinalidadeNFCe(AFinalidade: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_EntradaSaidaNFCe(ANF_Entrada_Saida: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_ConsumidorFinalNFCe(AConsumidor_Final: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_NFSe_InscricalMunicipalISSRetido(AResponsavelInscMunicipal: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFSe_TamanhoEnderecoTomador(AResponsavelEndereco: Variant; AQuery: TFDQuery = nil);



{$REGION 'NFe'}
procedure ControllerVendaVendaObrigatorio_NFe_ExisteParcelasDevolucao(ANF_Finalidade: Variant; AVenda_Financeiro: TFDQuery);
procedure ControllerVendaVendaObrigatorio_NFe_UFDestinatarioObrigatoria(AResponsavelUF: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_CFOPEntradaParaSaida(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_CFOPSaidaParaEntrada(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_CFOPInvalido(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_CSTInvalidoSimples(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_CSTInvalidoRegimeNormal(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_Obrigatorio_NCM(ANCM: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_SimplesNacional_ImpostoInvalido(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_Obrigatorio_Descricao(ADescricao: Variant; AQuerEmpresa: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_NFe_DescricaoMaiorQuePermitido(ADescricao: Variant; AQuerEmpresa: TFDQuery = nil);


procedure ControllerVendaVendaObrigatorio_DataHoraEmissaoNFe(ADataHoraEmissao: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_DataHoraEmissaoNFePosteriorDTRecebimento(ADataHoraEmissao: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_DataHoraEntradaSaidaNFe(ADataHoraEntradaSaida: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_DataHoraEntradaSaidaAnteriorNFe(ADataHoraEntradaSaida: Variant; AQuery: TFDQuery = nil);


procedure ControllerVendaVendaObrigatorio_TelefoneNFe(ATelefone: Variant; AQuery: TFDQuery = nil);
procedure ControllerVendaVendaObrigatorio_TelefoneMaiorQue15CaracteresNFe(ATelefone: Variant; AQuery: TFDQuery = nil);

procedure ControllerVendaVendaObrigatorio_CNPJCPFObrigatorioNFe(ACNPJCPF: Variant; AQuery: TFDQuery = nil);

{$ENDREGION}

implementation

uses Base, UnitFuncoes, wrFuncoes, Classes.WR, pcnConversaoNFe, Tag.Obrigatorio;

// Regras de Validação
procedure ControllerVendaVendaObrigatorio_DataHoraEmissaoNFe(ADataHoraEmissao: Variant; AQuery: TFDQuery = nil);
begin
  if ADataHoraEmissao = 0 then Exit;

  if (ADataHoraEmissao > Now) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_DtEmissao_Maior_Que_Data_Atual].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_DataHoraEmissaoNFePosteriorDTRecebimento(ADataHoraEmissao: Variant; AQuery: TFDQuery = nil);
begin
  if ADataHoraEmissao = 0 then Exit;

  if ((Now - ADataHoraEmissao) > 30) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_DtEmissao_Posterior_Hora_Recebimento].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_DataHoraEntradaSaidaNFe(ADataHoraEntradaSaida: Variant; AQuery: TFDQuery = nil);
begin
  if ADataHoraEntradaSaida = 0 then Exit;

  if ((ADataHoraEntradaSaida - Now) > 30) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Posterior].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_DataHoraEntradaSaidaAnteriorNFe(ADataHoraEntradaSaida: Variant; AQuery: TFDQuery = nil);
begin
  if ADataHoraEntradaSaida = 0 then Exit;

  if ((Now - ADataHoraEntradaSaida) > 30) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Anterior].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_TelefoneNFe(ATelefone: Variant; AQuery: TFDQuery = nil);
begin
  if (ATelefone = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Telefone_Obrigatorio].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_TelefoneMaiorQue15CaracteresNFe(ATelefone: Variant; AQuery: TFDQuery = nil);
begin
  if (VarToStr(ATelefone).Length > 5) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Telefone_Maior_15_Caracteres].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_FinalidadeNFCe(AFinalidade: Variant; AQuery: TFDQuery = nil);
begin
  if (AFinalidade <> 1) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_Finalidade_Normal].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_EntradaSaidaNFCe(ANF_Entrada_Saida: Variant; AQuery: TFDQuery = nil);
begin
  if (ANF_Entrada_Saida <> 1) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_Operacao_Saida].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_ConsumidorFinalNFCe(AConsumidor_Final: Variant; AQuery: TFDQuery = nil);
begin
  if (AConsumidor_Final <> 'S') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_Consumidor_Final].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_CNPJCPFObrigatorioNFe(ACNPJCPF: Variant; AQuery: TFDQuery = nil);
begin
  if (VarToStr(ACNPJCPF) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CNPJCPF_Obrigatorio].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NF_DescontoMaiorQueValorOriginalDaFatura(APDesc: Variant; AQuery: TFDQuery = nil);
begin
  if (APDesc > 100) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_ValorDescontoMaiorQueValorFatura].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFCe_ParcelaFinanceiroObrigatoria(APDesc: Variant; AVenda_Financeiro: TFDQuery = nil);
begin
  if (AVenda_Financeiro.FieldByName('CODIGO').AsString <> '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_Financeiro].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_ValorMinimoVendaProduto(AValor: Variant; AVenda_Produto: TDataSet);
begin
  if (AValor < AVenda_Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Proibido_Venda_Abaixo_Valor_Minimo].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_ExisteParcelasDevolucao(ANF_Finalidade: Variant; AVenda_Financeiro: TFDQuery);
begin
  if ((ANF_Finalidade = 3) or (ANF_Finalidade = 4)) and (AVenda_Financeiro.FieldByName('CODIGO').AsString <> '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFeDevolucao_Obrigatorio_FinanceiroVazio].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_RazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);
begin
  if (Trim(ARazaoSocial) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Obrigatorio_RazaoSocial].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_GerarParcelasRazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);
begin
  if (Trim(ARazaoSocial) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Parcelas_Obrigatorio_RazaoSocial].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFCe_RazaoSocialVazia(ARazaoSocial: Variant; AQuery: TFDQuery = nil);
begin
  if (Trim(ARazaoSocial) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_RazaoSocial].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFeDevolucao_ObrigatorioChaveAcesso(AChaveAcesso: Variant; AQuery: TFDQuery);
begin
  if (AChaveAcesso = '') and
    ((AQuery.FieldByName('NF_FINALIDADE').AsString = '3') or
    (AQuery.FieldByName('NF_FINALIDADE').AsString = '4'))
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFeDevolucao_Obrigatorio_ChaveAcesso].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFeDevolucao_ChaveAcesso44Digitos(AChaveAcesso: Variant; AQuery: TFDQuery);
begin
  if  (AChaveAcesso <> '') and
      (VarToStr(AChaveAcesso).Length <> 44) and
      ((AQuery.FieldByName('NF_FINALIDADE').AsString = '3') or
      (AQuery.FieldByName('NF_FINALIDADE').AsString = '4'))
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFeDevolucao_ChaveAcesso_44Digitos].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_Contribuinte_ObrigatorioInscIdent(AResponsavelInscricaoEstadual: Variant; AQuery: TFDQuery);
begin
  if  (VarToStr(AResponsavelInscricaoEstadual) = '') and
      (AQuery.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsFloat = 1)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_Contribuinte_Obrigatorio_InscIdent].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_ObrigatorioTipoContribuinte_InscIdentPreenchida(AResponsavelInscricaoEstadual: Variant; AQuery: TFDQuery);
begin
  if  (AResponsavelInscricaoEstadual <> 0) and
      (AQuery.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsFloat = 9)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_InscricaoPreenchida_TipoContribuinte].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFCe_UFDestinatario_UFEmitente(AResponsavelUF: Variant; AEmpresa: TFDQuery);
begin
  if  VarToStr(AResponsavelUF) <> (AEmpresa.FieldByName('UF').AsString)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_UFDestinatario_UFEmitente].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_UFDestinatarioObrigatoria(AResponsavelUF: Variant; AQuery: TFDQuery = nil);
begin
  if (VarToStr(AResponsavelUF) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_UFDestinatario].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFCe_ClienteNaoContribuinte(ATipoContribuinte: Variant; AQuery: TFDQuery = nil);
begin
  if (ATipoContribuinte <> 9) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFCe_Obrigatorio_NaoContribuinte].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFSe_InscricalMunicipalISSRetido(AResponsavelInscMunicipal: Variant; AQuery: TFDQuery = nil);
begin
  if (AQuery.FieldByName('RESPONSAVEL_INSC_MUNICIPAL').AsString = '') and
     (AQuery.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 1)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFSe_InscMunicipal_ISSRetido].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFSe_TamanhoEnderecoTomador(AResponsavelEndereco: Variant; AQuery: TFDQuery = nil);
begin
  if (VarToStr(AResponsavelEndereco).Length < 1) or
     (VarToStr(AResponsavelEndereco).Length > 125)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFSe_TamanhoEnderecoTomador].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_CFOPEntradaParaSaida(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
begin
  if ((VarToStr(ACodNF_CFOP)[1] = '1') or
      (VarToStr(ACodNF_CFOP)[1] = '2') or
      (VarToStr(ACodNF_CFOP)[1] = '3')) and
      (AQuery.FieldByName('NF_SAIDA_ENTRADA').AsString = '1')
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CFOPEntradaParaSaida].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_CFOPSaidaParaEntrada(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
begin
  if ((VarToStr(ACodNF_CFOP)[1] = '5') or
      (VarToStr(ACodNF_CFOP)[1] = '6') or
      (VarToStr(ACodNF_CFOP)[1] = '7')) and
      (AQuery.FieldByName('NF_SAIDA_ENTRADA').AsString = '0')
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CFOPSaidaParaEntrada].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_CFOPInvalido(ACodNF_CFOP: Variant; AQuery: TFDQuery = nil);
begin
  if (VarToStr(ACodNF_CFOP).Length < 4) then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CFOPInvalido].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_CSTInvalidoSimples(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
begin
  if  (AQuerEmpresa.FieldByName('CRT').AsString = 'Simples Nacional') and
      (VarToStr(ACodNF_CST).Length <> 3)
//      and (venda_produto.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') TERIA QUE VER COMO COLOCAR ISSO AQUI <<<
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CSTInvalidoSimples].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_CSTInvalidoRegimeNormal(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
begin
  if  (AQuerEmpresa.FieldByName('CRT').AsString = 'Regime Normal') and
      (VarToStr(ACodNF_CST).Length <> 2)
//      and (venda_produto.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO')  TERIA QUE VER COMO COLOCAR ISSO AQUI <<<
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_CSTInvalidoRegimeNormal].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_Obrigatorio_NCM(ANCM: Variant; AQuery: TFDQuery = nil);
begin
  if VarToStr(ANCM) <> '' then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_Obrigatorio_NCM].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_SimplesNacional_ImpostoInvalido(ACodNF_CST: Variant; AQuerEmpresa: TFDQuery = nil);
begin
  if (AQuerEmpresa.FieldByName('CRT').AsString = 'Simples Nacional') and
    (VarToStr(ACodNF_CST) <> '400') and
    (VarToStr(ACodNF_CST) <> '900')
//   and (venda_produto.FieldByName('NF_VICMS').AsFloat <> 0)    TERIA QUE VER COMO COLOCAR ISSO AQUI <<<
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_SimplesNacional_ImpostoInvalido].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_Obrigatorio_Descricao(ADescricao: Variant; AQuerEmpresa: TFDQuery = nil);
begin
  if (VarToStr(ADescricao) = '') then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_Obrigatorio_Descricao].Mensagem);
end;

procedure ControllerVendaVendaObrigatorio_NFe_DescricaoMaiorQuePermitido(ADescricao: Variant; AQuerEmpresa: TFDQuery = nil);
begin
  if  (VarToStr(ADescricao) <> '') and
      (VarToStr(ADescricao).Length > 150)
  then
    raise EWRException.Create(AWR_Obrigatorio[TagWR_Obrigatorio_NFe_DescricaoMaiorQuePermitido].Mensagem);
end;

//procedure ControllerVendaVendaObrigatorio_Campo_Obrigatorio(AValor: Variant; AVenda_Produto: TFDQuery);
//begin
////  if (AValor < AVenda_Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat) then
////    raise EWRException.Create(AWR_Exception[Tag]);
//end;



end.
