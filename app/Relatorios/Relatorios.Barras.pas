unit Relatorios.Barras;

interface

procedure Inicializa_RelatoriosVenda;

implementation

Uses
  Base, Classes.APP, Tag.Form, Tag.Report;

procedure Inicializa_RelatoriosVenda;
begin
  Registra_Report(Tag_Report_Cod_Barras_Pimaco_5_Etq,
                  0,
                  Tag_Venda,
                  'CodBarras - Pimaco A4 - 5 Colunas',
                  'TImpriVendas_Periodo',
                  'link.com',
                  'Venda por cliente',
                  '0',
                  'FR0001',
                  nil,
                  True,
                  False,
                  0);

  Registra_Report_Nativo(Tag_Report_Cod_Barras_Pimaco_5_Etq,
                  Tag_ImpriVendas_Periodo,
                  'CodBarras - Pimaco A4 - 5 Colunas',
                  'link.com',
                  'CodBarras - Pimaco A4 - 5 Colunas',
                  'FR0001',
                   False);

end;



initialization
  Inicializa_RelatoriosVenda



end.
