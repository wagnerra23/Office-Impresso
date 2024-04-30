unit wr.Config.Venda;

interface

procedure Inicializa_WR_Config_Venda;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Config_Venda = 1;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_WR_Config_Venda;
begin
  RegistraWR_Config(TagAPP_Venda, Tag_Config_REMOVE_CODFABRICA,
                  'Parâmetros', 'REMOVE_CODFABRICA',
                  'Não Adiciona Código de Fábrica',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_NAO_PERMITE_NOME_DIFERENTE_PARCELA,
                  'Parâmetros', 'NAO_PERMITE_NOME_DIFERENTE_PARCELA',
                  'Não Permitir Parcelas com o nome diferente da venda',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VALOR_MINIMO_TOTAL_ITEM,
                  'Parâmetros', 'VALOR_MINIMO_TOTAL_ITEM',
                  'Valor Minimo de Venda por Total do Item',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_PESSOA_RESPONSAVEL_CODIGO,
                  'Parâmetros', 'VENDA_PESSOA_RESPONSAVEL_CODIGO',
                  'Cliente Padrão Para Vendas',
                  '', 'PESSOAS');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_NOME_ARQUIVO_PDF,
                  'Parâmetros', 'VENDA_NOME_ARQUIVO_PDF',
                  'Composição do Nome do Arquivo PDF',
                  '', 'text', 'Exemplo: OS $CodigoVenda$ salvará como OS 1234-1' );
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_CAMINHO_ARQUIVO_PDF,
                  'Parâmetros', 'VENDA_CAMINHO_ARQUIVO_PDF',
                  'Caminho do Arquivo',
                  '', 'path', 'Exemplo: "C:\WR Sistema\"');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_IMPEDIR_IMPRESSAO_NAO_FATURADA,
                  'Parâmetros', 'VENDA_IMPEDIR_IMPRESSAO_NAO_FATURADA',
                  'Impedir impressão de vendas que não estão FATURADAS.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_IMPRIMIR_VENDA_SEM_CNPJ_CPF,
                  'Parâmetros', 'VENDA_IMPRIMIR_VENDA_SEM_CNPJ_CPF',
                  'Impedir impressão de vendas para clientes sem CNPJ ou CPF.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_IMPRESSAO_DIRETA_MOSTRAR_TELA,
                  'Parâmetros', 'IMPRESSAO_DIRETA_MOSTRAR_TELA',
                  'Mostrar tela de Configurações de Impressão na impressão direta',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_VENDA_PEDIR_SENHA_PARA_FATURAR,
                  'Parâmetros', 'VENDA_IMPEDIR_PARCELA_ABERTA',
                  'Pedir senha para faturar.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_USAR_NOME_FANTASIA,
                'Parâmetros', 'USAR_NOME_FANTASIA',
                'Utiliza o nome Fantasia como padrão de visualização.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_PESSOAS_CADASTRAR_PESSOAS_MESMO_CPFCNPJ,
                'Parâmetros', 'PESSOAS_CADASTRAR_PESSOAS_MESMO_CPFCNPJ',
                'Permite Cadastrar varias pessoas com o mesmo CPF ou CNPJ.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, Tag_Config_PESSOAS_VISUALIZAR_VENDAS_TODAS_EMPRESAS,
                'Parâmetros', 'PESSOAS_VISUALIZAR_VENDAS_TODAS_EMPRESAS',
                'Visualizar Vendas de Todas empresas.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Venda, tag_Config_VENDA_PEDIR_SENHA_CREDITO_FATURA,
                'Parâmetros', 'VENDA_PEDIR_SENHA_CREDITO_FATURA',
                'Pedir senha para faturar venda com crédito.',
                '', 'checkbox');
end;

initialization
  Inicializa_WR_Config_Venda;


end.


