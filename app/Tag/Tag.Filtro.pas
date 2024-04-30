unit Tag.Filtro;

interface

Uses
  Classes.APP;

const
  Tag_Filtro_Arquivado = -2;
  Tag_Filtro_First = Tag_Filtro_Arquivado;
  Tag_Filtro_Venda_A_Faturar = 0;
  Tag_Filtro_Venda_Pedido_A_Faturar = 1;
  Tag_Filtro_Venda_Sem_Nota = 2;
  Tag_Filtro_Venda_A_Receber = 3;
  Tag_Filtro_Venda_Faturadas = 4;
  Tag_Filtro_Equipamento_Associacao_Caminhao = 5;
  Tag_Filtro_Equipamento_Associacao_SemiReboque = 6;
  Tag_Filtro_Financeiro_Boleto = 7;
  Tag_Filtro_Producao_Minhas_Tarefas = 8;
  Tag_Filtro_Producao_Atrazados = 9;
  Tag_Filtro_Producao_Venda = 10;
  Tag_Filtro_Last = Tag_Filtro_Producao_Venda;


procedure RegistraWR_Filtro(ATagWR_Filtro, ATagWR_Form, ATag_App: integer; ANome, ADescricao, SQL: string; AAtivo: Boolean);

Var
  AWR_Filtro : array [Tag_Filtro_First..Tag_Filtro_Last] of TWR_Filtro;

implementation
   
procedure RegistraWR_Filtro(ATagWR_Filtro, ATagWR_Form, ATag_App: integer; ANome, ADescricao, SQL: string; AAtivo: Boolean);
begin
  if AWR_Filtro[ATagWR_Filtro] = nil then
    AWR_Filtro[ATagWR_Filtro]           := TWR_Filtro.Create;

  AWR_Filtro[ATagWR_Filtro].Codigo      := ATagWR_Filtro;
  AWR_Filtro[ATagWR_Filtro].CodWR_Form  := ATagWR_Form;
  AWR_Filtro[ATagWR_Filtro].CodWR_APP   := ATag_App;
  AWR_Filtro[ATagWR_Filtro].Nome        := ANome;
  AWR_Filtro[ATagWR_Filtro].Descricao   := ADescricao;
  AWR_Filtro[ATagWR_Filtro].SQL         := SQL;
  AWR_Filtro[ATagWR_Filtro].Ativo       := AAtivo;
end;

end.