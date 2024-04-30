unit wr.Config.Venda.TabelaDePreco;

interface

procedure Inicializa_WR_Config_Venda_TabelaDePreco;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Grupo_Config = 1;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_WR_Config_Venda_TabelaDePreco;
begin
  RegistraWR_Config(TagAPP_Venda_Tabela_Preço, Tag_Config_NAO_UTILIZA_TABELA_PRECO_NO_TIPO_VENDA,
                  'Parâmetros', 'NAO_UTILIZA_TABELA_PRECO_NO_TIPO_VENDA',
                  'Não utiliza Tabela de Preço no Tipo de Venda',
                  '', 'checkbox');
end;

initialization
  Inicializa_WR_Config_Venda_TabelaDePreco;

end.

