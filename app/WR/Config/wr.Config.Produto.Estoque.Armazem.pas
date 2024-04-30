unit wr.Config.Produto.Estoque.Armazem;

interface

procedure Inicializa_Config_Produto_Estoque_Armazem;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Estoque_Armazem;
begin
  RegistraWR_Config(TagAPP_Multiplos_Estoques, Tag_Config_PRODUTOS_ESTOQUE_RESERVADO_TODAS_EMPRESAS,
                'Parâmetros', 'PRODUTOS_ESTOQUE_RESERVADO_TODAS_EMPRESAS',
                'Visualizar Estoque Reservado e Pendente de Todas as empresas.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Multiplos_Estoques, Tag_Config_NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL,
                'Parcelas Financeiras', 'NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL',
                'Local de Estoque',
                '', 'LookupCombo');			
			
end;

initialization
  Inicializa_Config_Produto_Estoque_Armazem;

end.

