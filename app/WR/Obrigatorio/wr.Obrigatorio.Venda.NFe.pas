unit wr.Obrigatorio.Venda.NFe;

interface

procedure Inicializa_WR_Mensagens_Venda_NFe;

implementation

uses Base, Tag.Obrigatorio;

procedure Inicializa_WR_Mensagens_Venda_NFe;     // Registrar Todos aqui
begin
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_DtEmissao_Maior_Que_Data_Atual, 'Data de emissão maior que a data atual');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_DtEmissao_Posterior_Hora_Recebimento, '703-Rejeição: Data-Hora de Emissão posterior ao horário de recebimento');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Posterior, '504-Rejeição: Data de Entrada/Saída posterior ao permitido');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Anterior, '505-Rejeição: Data de Entrada/Saída anterior ao permitido');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CNPJCPF_Obrigatorio, 'O CNPJ ou CPF não pode estar vazio.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_ValorDescontoMaiorQueValorFatura, '895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CFOPEntradaParaSaida, 'CFOP de Entrada para NFe de Saída.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CFOPSaidaParaEntrada, 'CFOP de Saída para NFe de Entrada.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CFOPInvalido, 'CFOP inválido: Deve ter 4 dígitos.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CSTInvalidoSimples, 'CST/CSOSN inválido: Sua empresa é do Regime Simples Nacional, deve ter 3 dígitos.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_CSTInvalidoRegimeNormal, 'CST/CSOSN inválido: Sua empresa é do Regime Normal, deve ter 2 dígitos.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_Obrigatorio_NCM, 'NCM obrigatório.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_SimplesNacional_ImpostoInvalido, 'Sua empresa é do Simples Nacional. Valor de Imposto inválido.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_Obrigatorio_Descricao, 'Descrição do Produto é Obrigatória.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_NFe_DescricaoMaiorQuePermitido, 'Descrição do produto maior que o máximo permitido pela Sefaz (150 caracteres).');


end;

initialization
  Inicializa_WR_Mensagens_Venda_NFe;

end.
