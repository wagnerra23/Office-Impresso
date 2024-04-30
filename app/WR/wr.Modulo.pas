unit wr.Modulo;

interface

procedure Inicializa_WR_Modulo;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_Inicializa_WR_Modulo = 4;
  Versao_Inicializa_WR_APP = 3;
  Versao_Inicializa_WR_Config = 3;

implementation

Uses
  Base, Tag.Modulo;

procedure Inicializa_WR_Modulo;
begin
  RegistraWR_Modulo(TagModulo_Vendas,        31, 'Vendas','Vendas');
  RegistraWR_Modulo(TagModulo_Producao,      6,  'Produção', 'Produção');
  RegistraWR_Modulo(TagModulo_Financeiro,    24, 'Financeiro', 'Financeiro');  // Observação
  RegistraWR_Modulo(TagModulo_Compras,       24, 'Compras','Compras');
  RegistraWR_Modulo(TagModulo_Estoque,       24, 'Estoque','Estoque');
  RegistraWR_Modulo(TagModulo_CRM,           24, 'CRM', 'CRM');
  RegistraWR_Modulo(TagModulo_Produtividade, 24, 'Produtividade', 'Produtividade');
  RegistraWR_Modulo(TagModulo_Integracoes,   24, 'Integracoes', 'Integracoes');
  RegistraWR_Modulo(TagModulo_RH,            24, 'RH','RH');
  RegistraWR_Modulo(TagModulo_Documento,     24, 'Documento','Documento');
  RegistraWR_Modulo(TagModulo_Faturamento,   24, 'Faturamento','Faturamento');
  RegistraWR_Modulo(TagModulo_Associacao,    24, 'Associacao', 'Associação');
  RegistraWR_Modulo(TagModulo_BI,            24, 'BI', 'Business Intelligence');
  RegistraWR_Modulo(TagModulo_Relatorio,     24, 'Relatório', 'Relatório');
  RegistraWR_Modulo(TagModulo_Geral,         24, 'Geral', 'Geral');
 //Registra_Grupo_APP('Caixas');
end;

initialization
  Inicializa_WR_Modulo;

end.

