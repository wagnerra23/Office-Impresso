unit wr.Obrigatorio.Venda.Financeiro;

interface

procedure Inicializa_WR_Obrigatorio_Venda_Financeiro;

implementation

uses Base, Tag.Obrigatorio;

procedure Inicializa_WR_Obrigatorio_Venda_Financeiro;     // Registrar Todos aqui
begin
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_Proibido_Venda_Abaixo_Valor_Minimo, 'Valor do produto é menor do que o valor mínimo permitido.');
//  RegistraWR_Obrigatorio(TagWR_Obrigatorio_Parcelas_Obrigatorio_RazaoSocial, 'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
end;

initialization
  Inicializa_WR_Obrigatorio_Venda_Financeiro;

end.
