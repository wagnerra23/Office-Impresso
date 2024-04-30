unit wr.Config.Produto.Composicao;

interface

procedure Inicializa_Config_Produto_Composicao;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Composicao;
begin
  RegistraWR_Config(TagAPP_Produto_Composicao, Tag_Config_NAO_PERMITE_VER_COMPOSICAO_VENDA,
                  'Parâmetros', 'NAO_PERMITE_VER_COMPOSICAO_VENDA',
                  'Não Permitir Visualizar Composições na venda',
                  '', 'checkbox'); 
end;

initialization
  Inicializa_Config_Produto_Composicao;

end.

