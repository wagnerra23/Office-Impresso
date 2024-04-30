unit wr.Obrigatorio;

interface

procedure Inicializa_WR_Obrigatorio;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_Inicializa_WR_Obrigatorio = 1;

implementation

uses Base;

procedure Inicializa_WR_Obrigatorio;
begin
//  Registra_APP_Validate(ATag_Validate: Integer; ADescricao: string; AFuncaoValidate: TAPPFuncaoValidate; ATag_Rules: Integer);
//  Registra_APP_Validate(Tag_Validate_VALOR_ABAIXO_DO_MINIMO, 'Verifica se o valor é abaixo do valor mínimo', ValidaVendaVenda_ValorMinimoVendaProduto);
//  Registra_APP_Validate(Tag_Validate_NFE_RazaoSocial_Preenchida, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_CNPJCPFObrigatorioNFe);
//  Registra_APP_Validate(ATag_Validate: Integer; ADescricao: string; AFuncaoValidate: TAPPFuncaoValidate; ATag_Rules: Integer);
//  Registra_WR_Validate(Tag_Validate_VALOR_ABAIXO_DO_MINIMO, 'Verifica se o valor é abaixo do valor mínimo', ValidaRoutesVendaVenda_ValorMinimoVendaProduto);
//  Registra_WR_Validate(Tag_Validate_NFE_RazaoSocial_Preenchida, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_RazaoSocialVazia);
//  Registra_WR_Validate(Tag_Validate_Venda_cbxTipo_Venda, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_CNPJCPFObrigatorioNFe);
//  Registra_WR_Validate(Tag_Validate_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_CNPJCPFObrigatorioNFe);
//  Registra_WR_Validate(Tag_Validate_Venda_GrupoRecebimento, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_NFCe_ParcelaFinanceiroObrigatoria);
//  Registra_WR_Validate(Tag_Validate_Venda_edtPDesc, 'Verifica se Razão Social está Preenchida', ValidaVendaVenda_NF_DescontoMaiorQueValorOriginalDaFatura);
//  Registra_WR_Validate(Tag_Validate_Venda_edtResponsavelÎPessoasÎFONE1, 'NFe - TElefone Obrigatório', ValidaVendaVenda_TelefoneNFe);
//  Registra_WR_Validate(Tag_Validate_Venda_GridFinanceiro, 'Verifica se Razão Social está Preenchida', );
end;

initialization
  Inicializa_WR_Obrigatorio;

end.

