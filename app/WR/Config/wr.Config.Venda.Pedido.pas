unit wr.Config.Venda.Pedido;

interface

procedure Inicializa_WR_Config_Venda_Pedido;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Config_Venda_Pedido = 1;

implementation

uses Base, Tag.APP, Tag.Form, Tag.Filtro, Tag.Config;

procedure Inicializa_WR_Config_Venda_Pedido;
begin
  RegistraWR_Config(TagAPP_Venda_Pedido, Tag_Config_FATURA_ORCAMENTO,
                  '', 'FATURA_ORCAMENTO',
                  'Permitir faturar Orçamento',
                  'Se esta opção estiver marcada, todo novo pedido ou orçamento já estará automaticamente ' + slinebreak +
                  'disponível para faturamento desde a sua criação.'  , 'checkbox');

  RegistraWR_Filtro(Tag_Filtro_Venda_Pedido_A_Faturar, Tag_Venda_Pedido, TagAPP_Venda_Pedido,
                            'Pedidos A Faturar', 'Todos os Pedidos a Faturar',
                            'P.DT_FATURAMENTO IS NULL and P.DT_ENVIO_FATURAMENTO IS NOT NULL', True);
end;

initialization
  Inicializa_WR_Config_Venda_Pedido;

end.

