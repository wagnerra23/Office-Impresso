unit wr.Config.Produto.Variacao;

interface

procedure Inicializa_Config_Produto_Variacao;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Variacao;
begin
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_VENDA_METODO_AGIL_GRADE,
                  'Parâmetros', 'VENDA_METODO_AGIL_GRADE',
                  'Utilizar método ágil de venda de produtos com Grade.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_VENDA_MESMO_VALOR_PRODUTOS_GRADE,
                  'Parâmetros', 'VENDA_MESMO_VALOR_PRODUTOS_GRADE',
                  'Utilizar mesmo valor para todos os produtos dessa Grade.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_VENDA_ORDENA_GRADE_NOME,
                  'Parâmetros', 'VENDA_ORDENA_GRADE_NOME',
                  'Ordena Grade por Nome.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_VENDA_MESMA_DESCRICAO_GRADE,
                  'Parâmetros', 'VENDA_MESMA_DESCRICAO_GRADE',
                  'Utiliza mesma descrição para todos os itens.',
                  '', 'checkbox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_1DIM_DESC,
                'Parâmetros', 'MEDIDA_1DIM_DESC',
                '1a Dimensão - Descricao',
                '', 'combobox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_2DIM_DESC,
                'Parâmetros', 'MEDIDA_2DIM_DESC',
                '2a Dimensão - Descricao',
                '', 'combobox');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_3DIM_DESC,
                'Parâmetros', 'MEDIDA_3DIM_DESC',
                '3a Dimensão - Descricao',
                '', 'combobox');

  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_1DIM_ABREV,
                'Parâmetros', 'MEDIDA_1DIM_ABREV',
                '1a Dimensão - Abreviação',
                '', 'text');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_2DIM_ABREV,
                'Parâmetros', 'MEDIDA_2DIM_ABREV',
                '2a Dimensão - Abreviação',
                '', 'text');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_3DIM_ABREV,
                'Parâmetros', 'MEDIDA_3DIM_ABREV',
                '3a Dimensão - Abreviação',
                '', 'text');

  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_1DIM_INICIAL,
                'Parâmetros', 'MEDIDA_1DIM_INICIAL',
                '1a Dimensão - Inicial',
                '', 'text');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_2DIM_INICIAL,
                'Parâmetros', 'MEDIDA_2DIM_INICIAL',
                '2a Dimensão - Inicial',
                '', 'text');
  RegistraWR_Config(TagAPP_Produto_Variacao, Tag_Config_MEDIDA_3DIM_INICIAL,
                'Parâmetros', 'MEDIDA_3DIM_INICIAL',
                '3a Dimensão - Inicial',
                '', 'text');

end;

initialization
  Inicializa_Config_Produto_Variacao;

end.

