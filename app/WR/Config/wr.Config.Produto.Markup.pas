unit wr.Config.Produto.Markup;

interface

procedure Inicializa_Config_Produto_Markup;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Markup;
begin
  RegistraWR_Config(TagAPP_Markup, Tag_Config_MARKUP,
                'Parâmetros', 'MARKUP',
                'Formação do Preço de Venda - Markup',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Markup, Tag_Config_CUSTO_MEDIO_PONDERADO,
                'Parcelas Financeiras', 'CUSTO_MEDIO_PONDERADO',
                'Custo médio ponderado',
                '', 'checkbox');
end;

initialization
  Inicializa_Config_Produto_Markup;

end.

