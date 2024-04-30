unit Tag.Obrigatorio;

interface

Uses
  Classes.APP;

const
  Tag_PRODUTO_UNIDADE_MEDIDA = 1;
//  TagWR_Obrigatorio_First = Tag_PRODUTO_UNIDADE_MEDIDA;
//  Tag_VENDA_PRODUTO_VALOR = 2;
  TagWR_Obrigatorio_NFe_DtEmissao_Maior_Que_Data_Atual = 0;
  TagWR_Obrigatorio_First = TagWR_Obrigatorio_NFe_DtEmissao_Maior_Que_Data_Atual;
  TagWR_Obrigatorio_NFe_DtEmissao_Posterior_Hora_Recebimento = 1;
  TagWR_Obrigatorio_Proibido_Venda_Abaixo_Valor_Minimo = 2;
  TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Posterior = 3;
  TagWR_Obrigatorio_NFe_Data_Entrada_Saida_Anterior = 4;
  TagWR_Obrigatorio_Telefone_Obrigatorio = 5;
  TagWR_Obrigatorio_Telefone_Maior_15_Caracteres       = 6;
  TagWR_Obrigatorio_NFCe_Obrigatorio_Finalidade_Normal = 7;
  TagWR_Obrigatorio_NFCe_Obrigatorio_Operacao_Saida =  8;
  TagWR_Obrigatorio_NFCe_Obrigatorio_Consumidor_Final = 9;
  TagWR_Obrigatorio_NFe_CNPJCPF_Obrigatorio = 10;
  TagWR_Obrigatorio_NFe_ValorDescontoMaiorQueValorFatura = 11;
  TagWR_Obrigatorio_NFCe_Obrigatorio_Financeiro = 12;
  TagWR_Obrigatorio_NFeDevolucao_Obrigatorio_FinanceiroVazio = 13;
  TagWR_Obrigatorio_Obrigatorio_RazaoSocial = 14;
  TagWR_Obrigatorio_Parcelas_Obrigatorio_RazaoSocial = 15;
  TagWR_Obrigatorio_NFCe_Obrigatorio_RazaoSocial = 16;
  TagWR_Obrigatorio_NFeDevolucao_Obrigatorio_ChaveAcesso = 17;
  TagWR_Obrigatorio_NFeDevolucao_ChaveAcesso_44Digitos = 18;
  TagWR_Obrigatorio_InscricaoPreenchida_TipoContribuinte = 19;
  TagWR_Obrigatorio_Contribuinte_Obrigatorio_InscIdent = 20;
  TagWR_Obrigatorio_NFCe_UFDestinatario_UFEmitente = 21;
  TagWR_Obrigatorio_NFCe_Obrigatorio_UFDestinatario = 22;
  TagWR_Obrigatorio_NFCe_Obrigatorio_NaoContribuinte = 23;
  TagWR_Obrigatorio_NFSe_InscMunicipal_ISSRetido = 24;
  TagWR_Obrigatorio_NFSe_TamanhoEnderecoTomador = 25;
  TagWR_Obrigatorio_NFe_CFOPEntradaParaSaida = 26;
  TagWR_Obrigatorio_NFe_CFOPSaidaParaEntrada = 27;
  TagWR_Obrigatorio_NFe_CFOPInvalido = 28;
  TagWR_Obrigatorio_NFe_CSTInvalidoSimples = 29;
  TagWR_Obrigatorio_NFe_CSTInvalidoRegimeNormal = 30;
  TagWR_Obrigatorio_NFe_Obrigatorio_NCM = 31;
  TagWR_Obrigatorio_NFe_SimplesNacional_ImpostoInvalido = 32;
  TagWR_Obrigatorio_NFe_Obrigatorio_Descricao = 33;
  TagWR_Obrigatorio_NFe_DescricaoMaiorQuePermitido = 34;
  TagWR_Obrigatorio_Last = TagWR_Obrigatorio_NFe_DescricaoMaiorQuePermitido;

//  TagWR_Obrigatorio_Last = Tag_VENDA_PRODUTO_VALOR;

procedure RegistraWR_Obrigatorio(ATagObrigatorio, ATagWR_Componente, ATagCondicao: Integer; ADescricao, AMensagem, AHint: String; AAtivo, ATemPadrao: Boolean);

Var
  AWR_Obrigatorio: array [TagWR_Obrigatorio_First..TagWR_Obrigatorio_Last] of TWR_Obrigatorio;

implementation

procedure RegistraWR_Obrigatorio(ATagObrigatorio, ATagWR_Componente, ATagCondicao: Integer; ADescricao, AMensagem, AHint: String; AAtivo, ATemPadrao: Boolean);
begin
  AWR_Obrigatorio[ATagObrigatorio]                  := TWR_Obrigatorio.Create;
  AWR_Obrigatorio[ATagObrigatorio].Codigo           := ATagObrigatorio;
  AWR_Obrigatorio[ATagObrigatorio].TagWR_Componente := ATagWR_Componente;
  AWR_Obrigatorio[ATagObrigatorio].Descricao        := ADescricao;
  AWR_Obrigatorio[ATagObrigatorio].Hint             := AHint;
  AWR_Obrigatorio[ATagObrigatorio].Tem_Padrao       := ATemPadrao;
  AWR_Obrigatorio[ATagObrigatorio].Mensagem         := AMensagem;

//    Codigo: Integer;
//    Descricao: String;
//    Mensagem: String;
//    Hint: String;
//    Ativo: Boolean;
//    Tem_Padrao: Boolean;
//    TagWR_Componente: Integer;
//    TagWR_Condicao: Integer;
end;

end.