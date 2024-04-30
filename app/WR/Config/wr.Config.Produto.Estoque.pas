unit wr.Config.Produto.Estoque;

interface

procedure Inicializa_Config_Produto_Estoque;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_Estoque;
begin
  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_VENDA,
                'Parâmetros', 'ESTOQUE_REQUISICAO_VENDA',
                'Bloquear movimento de estoque na venda',
                'Clique aqui para definir que o movimento de estoque da venda, será realizado somente pela tela de requisição', 'checkbox');

  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_PRODUTO,
                'Parâmetros', 'ESTOQUE_REQUISICAO_PRODUTO',
                'Bloquear movimento estoque no cadastro de produto.',
                'Clique aqui para definir que o movimento de estoque do produto, será realizado somente pela tela de requisição', 'checkbox');

  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_COMPRA,
                'Parâmetros', 'ESTOQUE_REQUISICAO_COMPRA',
                'Bloquear movimento estoque ao finalizar a compra.',
                'Clique aqui para definir que o movimento de estoque da compra, será realizado somente pela tela de requisição', 'checkbox');

  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_PRODUCAO,
                'Parâmetros', 'ESTOQUE_REQUISICAO_PRODUCAO',
                'Bloquear movimento estoque ao solicitar ou criar itens na produção.',
                'Clique aqui para definir que o movimento de estoque da produção, será realizado somente pela tela de requisição', 'checkbox');

  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_MOVIMENTO,
                'Parâmetros', 'ESTOQUE_REQUISICAO_MOVIMENTO',
                'Bloquear movimento estoque na tela de histórico de movimento.',
                'Clique aqui para definir que o movimento de estoque do histórico de movimento, será realizado somente pela tela de requisição', 'checkbox');

  RegistraWR_Config(TagAPP_Estoque, Tag_config_ESTOQUE_REQUISICAO_INVENTARIO,
                'Parâmetros', 'ESTOQUE_REQUISICAO_INVENTARIO',
                'Bloquear movimento estoque na tela de inventario.',
                'Clique aqui para definir que o movimento de estoque do inventario, será realizado somente pela tela de requisição', 'checkbox');
		
			
end;

initialization
  Inicializa_Config_Produto_Estoque;

end.

