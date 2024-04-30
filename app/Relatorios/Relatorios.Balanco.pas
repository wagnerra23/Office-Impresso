unit Relatorios.Balanco;

interface

procedure Inicializa_RelatoriosVenda;

implementation

Uses
  Base, Classes.APP, Tag.Form, Tag.Report;


procedure Inicializa_RelatoriosVenda;
begin
  Registra_Report_Nativo(Tag_Report_Balanco,
                  Tag_ImpriVendas_Periodo,
                  'Balanco - Divergencias',
                  'link.com',
                  'Balanco - Divergencias',
                  'FR0001',
                   False);
end;

initialization
  Inicializa_RelatoriosVenda

end.
