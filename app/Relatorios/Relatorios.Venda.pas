unit Relatorios.Venda;

interface

procedure Inicializa_RelatoriosVenda;

implementation

Uses
  Base, Classes.APP, Tag.Form, Tag.Report;

procedure Inicializa_RelatoriosVenda;
begin
  Registra_Report(Tag_Report_Venda_Agrupado_Cliente,
                  0,
                  Tag_Venda,
                  'Vendas - Agrupado Por Cliente',
                  'TImpriVendas_Periodo',
                  'link.com',
                  'Venda por cliente',
                  '0',
                  'FR0001',
                  nil,
                  True,
                  False,
                  0);
  Registra_Report(Tag_Report_Venda_Relacao_Vendas,
                  0,
                  Tag_Venda,
                  'Vendas - Relacao de Vendas',
                  'TConsuVenda',
                  'link.com',
                  'Relação de vendas',
                  '0',
                  'FR0002',
                  nil,
                  False,
                  True,
                  0);
  Registra_Report(Tag_Report_Venda_Relacao_Vendas,
                  0,
                  Tag_Report_Cod_Barras,
                  'CodBarras',
                  'TFrmProduto_Barras',
                  'link.com',
                  'Código de barras',
                  '0',
                  'FR0003',
                  nil,
                  False,
                  False,
                  0);
				  
//////////////////////////RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  Registra_Report_Nativo(Tag_Report_Venda_Agrupado_Cliente,
                  Tag_ImpriVendas_Periodo,
                  'Vendas - Agrupado Por Cliente',
                  'link.com',
                  'Vendas - Agrupado Por Cliente',
                  'FR0001',
                   False);

  Registra_Report_Nativo(Tag_Report_Venda_Recibo,
                  Tag_Venda,
                  'Vendas - Agrupado Por Cliente',
                  'link.com',
                  'Vendas - Agrupado Por Cliente',
                  'FR0001',
                   False);


  Registra_Report_Nativo(Tag_Report_Vendas,
                  Tag_ImpriVendas_Periodo,
                  'Vendas',
                  'link.com',
                  'Vendas',
                  'FR0007',
                   False);

  Registra_Report_Nativo(Tag_Report_Venda_Relacao_Vendas,
                  Tag_Venda,
                  'Vendas - Relacao de Vendas',
                  'link.com',
                  'Vendas - Relacao de Vendas',
                  'FR0002',
                   True);

  Registra_Report_Nativo(Tag_Report_Vendas_Com_Parcelas,
                  Tag_ImpriVendas_Periodo,
                  'Vendas Com Parcelas',
                  'link.com',
                  'Vendas Com Parcelas',
                  'FR0008',
                   False);

  Registra_Report_Nativo(Tag_Report_Vendas_Com_Produtos,
                  Tag_ImpriVendas_Periodo,
                  'Vendas Com Produtos',
                  'link.com',
                  'Vendas Com Produtos',
                  'FR0009',
                   False);

  Registra_Report_Nativo(Tag_Report_Vendas_Com_Produtos_Simpli,
                  Tag_ImpriVendas_Periodo,
                  'Vendas Com Produtos - Simplificado',
                  'link.com',
                  'Vendas Com Produtos - Simplificado',
                  'FR0010',
                   False);

  Registra_Report_Nativo(Tag_Report_Vendas_Agrupado_Cliente,
                  Tag_ImpriVendas_Periodo,
                  'Vendas - Agrupado Por Cliente',
                  'link.com',
                  'Vendas - Agrupado Por Cliente',
                  'FR0011',
                   False);

  Registra_Report_Nativo(Tag_Report_Venda_Personalizado_ConsultaTEC,
                  Tag_Venda,
                  'Venda - Personalizado - ConsultaTEC',
                  'link.com',
                  'Venda - Personalizado - ConsultaTEC',
                  'FR0002',
                   False);

  Registra_Report_Nativo(Tag_Report_Metas_Venda,
                  Tag_BI_Venda_por_Categoria,
                  'Metas de Venda',
                  'link.com',
                  'Metas de Venda',
                  'FR0068',
                   False);

  Registra_Report_Nativo(Tag_Report_Venda_Personalizado,
                  Tag_Venda,
                  'Venda - Personalizado',
                  'link.com',
                  'Venda - Personalizado',
                  'FR0051',
                   False);

  Registra_Report_Nativo(Tag_Report_Sintetico_Produtos,
                  Tag_ImpriVendas_Periodo,
                  'Sintetico de Produtos (Agrupados)',
                  'link.com',
                  'Sintetico de Produtos (Agrupados)',
                  'FR0006',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Por_Dia,
                  Tag_ImpriVendas_Periodo,
                  'Produtos por Dia',
                  'link.com',
                  'Produtos por Dia',
                  'FR0065',
                   False);

  Registra_Report_Nativo(Tag_Report_Produtos_Por_Venda,
                  Tag_ImpriVendas_Periodo,
                  'Produtos por Venda',
                  'link.com',
                  'Produtos por Venda',
                  'FR0066',
                   False);

  Registra_Report_Nativo(Tag_Report_Vendas_2023,
                  Tag_Venda,
                  'Relatorio de Vendas - 2023',
                  'link.com',
                  'Relatorio de Vendas - 2023',
                  'FR0067',
                   False);

  Registra_Report_Nativo(Tag_Report_Vendas_Produto_2023,
                  Tag_Venda,
                  'Relatorio de Vendas por produto - 2023',
                  'link.com',
                  'Relatorio de Vendas por produto - 2023',
                  'FR0068',
                   False);

  Registra_Report_Nativo(Tag_Report_Curva_ABC,
                  Tag_Venda,
                  'Relatorio Curva ABC',
                  'link.com',
                  'Relatorio Curva ABC',
                  'FR0069',
                   False);

  Registra_Report_Nativo(Tag_Report_BPO,
                  Tag_Venda,
                  'Relatorio BPO',
                  'link.com',
                  'Relatorio BPO',
                  'FR0070',
                   False);

//////////////////////////FIM RELATORIO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
				  
				  
end;

initialization
  Inicializa_RelatoriosVenda

end.
