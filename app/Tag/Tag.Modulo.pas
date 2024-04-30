unit Tag.Modulo;

interface

Uses
  Classes.APP, System.Generics.Collections;


const
  TagModulo_Vendas = 1;
  TagModulo_First = TagModulo_Vendas;
  TagModulo_Producao = 2;
  TagModulo_Financeiro = 3;
  TagModulo_Compras = 4;
  TagModulo_Estoque = 5;

  TagModulo_CRM = 6;
  TagModulo_Produtividade = 7;
  TagModulo_Integracoes = 8;
  TagModulo_RH = 9;
  TagModulo_Documento = 10;

  TagModulo_Faturamento = 11;
  TagModulo_Associacao = 12;
  TagModulo_BI = 13;
  TagModulo_Relatorio = 14;
  TagModulo_Geral = 15;

  TagModulo_Last =  TagModulo_Geral;


procedure RegistraWR_Modulo(ATag_Modulo, AImageIndex: integer; ANome, ADescricao: string);

Var
  AWR_Modulo : array [TagModulo_First..TagModulo_Last] of TWR_Modulo;

implementation

procedure RegistraWR_Modulo(ATag_Modulo, AImageIndex: integer; ANome, ADescricao: string);
begin
  AWR_Modulo[ATag_Modulo]            := TWR_Modulo.Create();
  AWR_Modulo[ATag_Modulo].Codigo     := ATag_Modulo;
  AWR_Modulo[ATag_Modulo].Nome       := ANome;
  AWR_Modulo[ATag_Modulo].ImageIndex := AImageIndex;
  AWR_Modulo[ATag_Modulo].Descricao  := ADescricao;
end;
  
end.