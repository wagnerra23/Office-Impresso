unit Tag.Condicao;

interface

Uses
  Classes.APP, System.Generics.Collections;


const
  TagCondicao_Vendas = 1;
  TagCondicao_First = TagCondicao_Vendas;
  TagCondicao_Producao = 2;
  TagCondicao_Financeiro = 3;
  TagCondicao_Compras = 4;
  TagCondicao_Estoque = 5;

  TagCondicao_CRM = 6;
  TagCondicao_Produtividade = 7;
  TagCondicao_Integracoes = 8;
  TagCondicao_RH = 9;
  TagCondicao_Documento = 10;

  TagCondicao_Faturamento = 11;
  TagCondicao_Associacao = 12;
  TagCondicao_BI = 13;
  TagCondicao_Relatorio = 14;

  TagCondicao_Last =  TagCondicao_Relatorio;


procedure RegistraWR_Condicao(ATag_Condicao, AImageIndex: integer; ANome, ADescricao: string);

Var
  AWR_Condicao : array [TagCondicao_First..TagCondicao_Last] of TWR_Condicao;

implementation

procedure RegistraWR_Condicao(ATag_Condicao, AImageIndex: integer; ANome, ADescricao: string);
begin
  AWR_Condicao[ATag_Condicao]            := TWR_Condicao.Create();
  AWR_Condicao[ATag_Condicao].Codigo     := ATag_Condicao;
//  AWR_Condicao[ATag_Condicao].Nome       := ANome;
//  AWR_Condicao[ATag_Condicao].ImageIndex := AImageIndex;
//  AWR_Condicao[ATag_Condicao].Descricao  := ADescricao;
end;
  
end.