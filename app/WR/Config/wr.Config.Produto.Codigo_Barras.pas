unit wr.Config.Produto.Codigo_Barras;

interface

procedure Inicializa_Config_Produto_Codigo_Barras;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Codigo_Barras;
begin
  RegistraWR_Config(TagAPP_Codigo_Barras, Tag_Config_PRODUTO_IMPEDIR_EAN_DUPLICADO,
                'Parâmetros', 'PRODUTO_IMPEDIR_EAN_DUPLICADO',
                'Não permitir duplicidade do código EAN.',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Codigo_Barras, Tag_Config_CODBARRAS_FANTASIA,
                'Parâmetros', 'CODBARRAS_FANTASIA',
                'Nome Fantasia para impressão na etiqueta',
                '', 'text');
//  Registra_Config(AAPP[TagAPP_Codigo_Barras], Tag_Config_CODBARRAS_LOGO,
//                'Parâmetros', 'CODBARRAS_LOGO',
//                'Logo',
//                '', 'IMAGEM');

end;

initialization
  Inicializa_Config_Produto_Codigo_Barras;

end.

