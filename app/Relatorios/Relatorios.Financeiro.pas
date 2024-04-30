unit Relatorios.Financeiro;

interface

procedure Inicializa_RelatoriosFinanceiro;

implementation

Uses
  Base, Classes.APP, Tag.Form, Tag.Report;

procedure Inicializa_RelatoriosFinanceiro;
begin
  Registra_Report(Tag_Report_Financeiro_Relatorio_Contabil,
                  0,
                  Tag_Financeiro,
                  'Financeiro - Contabil',
                  'TFrmFinanceiro',
                  'link.com',
                  'Financeiro - Contabil',
                  '0',
                  'FR0001',
                  nil,
                  True,
                  False,
                  0);

  Registra_Report_Nativo(Tag_Report_Financeiro_Relatorio_Contabil,
                  Tag_Report_Financeiro_Relatorio_Contabil,
                  'Financeiro - Contabil',
                  'link.com',
                  'Financeiro - Contabil',
                  'FR0001',
                   False);
end;

initialization
  // Aqui executa o register dos módulos.
  Inicializa_RelatoriosFinanceiro;

end.
