unit SQL.Financeiro_Centro_Custo;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants;

function SQLFinanceiro_Centro_Custo_LocalizaCodFinanceiro(ATransa : TFDTransaction; ACodFinanceiro :Integer): TFDQuery;
function SQLFinanceiro_Centro_Custo_AbreTabelaPrincipal(ATransa : TFDTransaction): TFDQuery;
function SQLFinanceiro_Centro_Custo_DeletaNoPeriodo(ATransa : TFDTransaction; DT_Inicio, DT_Fim: TDateTime): TFDQuery;
function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Venda_Produto(DT_Inicio, DT_Fim: TDateTime; ACampo: String): TFDQuery;
function SQLFinanceiro_Centro_Custo_SomaCentroCusto_NFEntrada_Produto(DT_Inicio, DT_Fim: TDateTime): TFDQuery;
function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Requisicao_Receita(DT_Inicio, DT_Fim: TDateTime): TFDQuery;
function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Requisicao_Despesa(DT_Inicio, DT_Fim: TDateTime): TFDQuery;

implementation

Uses UnitFuncoes, wrFuncoes;

function SQLFinanceiro_Centro_Custo_LocalizaCodFinanceiro(ATransa : TFDTransaction; ACodFinanceiro :Integer): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);
  Result.SQL.Text := 'Select * from Financeiro_Centro_Custo where CODFINANCEIRO = :CodFinanceiro';
  Result.ParamByName('CodFinanceiro').Value := ACodFinanceiro;
  Result.Open;
end;

function SQLFinanceiro_Centro_Custo_AbreTabelaPrincipal(ATransa : TFDTransaction): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);
  Result.SQL.Text := 'Select * from FINANCEIRO_CENTRO_CUSTO';
  Result.Open;
end;

function SQLFinanceiro_Centro_Custo_DeletaNoPeriodo(ATransa : TFDTransaction; DT_Inicio, DT_Fim: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery(Atransa);
  Result.SQL.Text := 'Delete from FINANCEIRO_CENTRO_CUSTO FCC WHERE FCC.DT_ALTERACAO BETWEEN :D1 AND :D2';
  Result.ParamByName('D1').Value := DT_Inicio;
  Result.ParamByName('D2').Value := DT_Fim;
//  Result.Open;
end;

function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Venda_Produto(DT_Inicio, DT_Fim: TDateTime; ACampo: String): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=  'select f.codigo as CODFINANCEIRO, p.' + ACampo + ', f.codpedido, f.emissao, sum(((vp.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                    'from FINANCEIRO F' + #13#10 +
                    'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO' + #13#10 +
                    'left join venda v on v.codigo = f.codpedido' + #13#10 +
                    'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO' + #13#10 +
                    'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                          'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                         ' and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                          'and (VP.PARENT is null)' + #13#10 +
                          'and not(P.' + ACampo + ' is null)' + #13#10 +
                          'and v.ativo = ''S''' + #13#10 +
                          'and v.total > 0' + #13#10 +
                    'group by 1,2,3,4' + #13#10 +
                    '' + #13#10 +
                    'union all' + #13#10 +
                    '' + #13#10 +
                    'select f.codigo as CODFINANCEIRO, p.' + ACampo + ', f.codpedido, f.emissao, sum(((vp.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                    'from FINANCEIRO F' + #13#10 +
                    'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO' + #13#10 +
                    'left join venda v on v.codigo = f.codpedido' + #13#10 +
                    'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO' + #13#10 +
                    'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                          'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                          'and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                          'and (VP.PARENT is null)' + #13#10 +
                          'and (P.' + ACampo + ' is null)' + #13#10 +
                          'and v.ativo = ''S''' + #13#10 +
                          'and v.total > 0' + #13#10 +
                    'group by 1,2,3,4' + #13#10 +
                    'order by 1';
  Result.ParamByName('D1').Value := DT_Inicio;
  Result.ParamByName('D2').Value := DT_Fim;
  Result.Open;
end;

function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Requisicao_Receita(DT_Inicio, DT_Fim: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=  'select f.codigo as CODFINANCEIRO, p.codcentro_custo, f.codpedido, f.emissao, sum(((PR.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                      'from FINANCEIRO F' + #13#10 +
                      'left join PRODUTO_REQUISICAO PR on PR.CODVENDA = F.CODPEDIDO' + #13#10 +
                      'left join venda v on v.codigo = f.codpedido' + #13#10 +
                      'left join PRODUTO P on P.CODIGO = PR.CODPRODUTO' + #13#10 +
                      'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                            'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                           '-- and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                            'and (PR.PARENT is null)' + #13#10 +
                            'and not(P.CODCENTRO_CUSTO is null)' + #13#10 +
                            'and v.ativo = ''S''' + #13#10 +
                            'and v.total > 0' + #13#10 +
                      'group by 1,2' + #13#10 +
                      '' + #13#10 +
                      'union all' + #13#10 +
                      '' + #13#10 +
                      'select f.codigo as CODFINANCEIRO, p.codcentro_custo, f.codpedido, f.emissao, sum(((PR.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                      'from FINANCEIRO F' + #13#10 +
                      'left join PRODUTO_REQUISICAO PR on PR.CODVENDA = F.CODPEDIDO' + #13#10 +
                      'left join venda v on v.codigo = f.codpedido' + #13#10 +
                      'left join PRODUTO P on P.CODIGO = PR.CODPRODUTO' + #13#10 +
                      'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                            'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                          '--  and (F.EMISSAO > :D)' + #13#10 +
                            'and (PR.PARENT is null)' + #13#10 +
                            'and (P.CODCENTRO_CUSTO is null)' + #13#10 +
                            'and v.ativo = ''S''' + #13#10 +
                            'and v.total > 0' + #13#10 +
                      'group by 1,2,3' + #13#10 +
                      'order by 1';
  Result.ParamByName('D1').Value := DT_Inicio;
  Result.ParamByName('D2').Value := DT_Fim;
  Result.Open;
end;

function SQLFinanceiro_Centro_Custo_SomaCentroCusto_Requisicao_Despesa(DT_Inicio, DT_Fim: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=  'select f.codigo as CODFINANCEIRO, p.codcentro_custo, f.codpedido, f.emissao, sum(((PR.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                      'from FINANCEIRO F' + #13#10 +
                      'left join PRODUTO_REQUISICAO PR on PR.CODNF_ENTRADA = F.CODPEDIDO' + #13#10 +
                      'left join venda v on v.codigo = f.codpedido' + #13#10 +
                      'left join PRODUTO P on P.CODIGO = PR.CODPRODUTO' + #13#10 +
                      'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                            'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                            'and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                            'and (PR.PARENT is null)' + #13#10 +
                            'and not(P.CODCENTRO_CUSTO is null)' + #13#10 +
                            'and v.ativo = ''S''' + #13#10 +
                            'and v.total > 0' + #13#10 +
                      'group by 1,2' + #13#10 +
                      '' + #13#10 +
                      'union all' + #13#10 +
                      '' + #13#10 +
                      'select f.codigo as CODFINANCEIRO, p.codcentro_custo, f.codpedido, f.emissao, sum(((PR.total_relatorio/ v.total)*100)) as PERCENTUAL' + #13#10 +
                      'from FINANCEIRO F' + #13#10 +
                      'left join PRODUTO_REQUISICAO PR on PR.CODNF_ENTRADA = F.CODPEDIDO' + #13#10 +
                      'left join venda v on v.codigo = f.codpedido' + #13#10 +
                      'left join PRODUTO P on P.CODIGO = PR.CODPRODUTO' + #13#10 +
                      'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                            'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                            'and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                            'and (PR.PARENT is null)' + #13#10 +
                            'and (P.CODCENTRO_CUSTO is null)' + #13#10 +
                            'and v.ativo = ''S''' + #13#10 +
                            'and v.total > 0' + #13#10 +
                      'group by 1,2' + #13#10 +
                      'order by 1';
  Result.ParamByName('D1').Value := DT_Inicio;
  Result.ParamByName('D2').Value := DT_Fim;
  Result.Open;
end;



function SQLFinanceiro_Centro_Custo_SomaCentroCusto_NFEntrada_Produto(DT_Inicio, DT_Fim: TDateTime): TFDQuery;
begin
  Result := GeraFDQuery;
  Result.SQL.Text :=      'select F.CODIGO as CODFINANCEIRO, PC.CODCENTRO_CUSTO, f.codpedido, f.emissao,' + #13#10 +
                          'sum(((NEP.TOTAL_COMPRA / N.TOTAL) * 100)) as PERCENTUAL' + #13#10 +
                          'from FINANCEIRO F' + #13#10 +
                          'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODPEDIDO' + #13#10 +
                          'left join NF_ENTRADA N on N.CODIGO = F.CODPEDIDO' + #13#10 +
                          'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO' + #13#10 +
                          'left join PRODUTO_CATEGORIA PC on PC.CODIGO = P.CODPRODUTO_CATEGORIA' + #13#10 +
                          'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                                'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                                'and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                                'and (NEP.PARENT is null)' + #13#10 +
                                'and not(PC.CODCENTRO_CUSTO is null)' + #13#10 +
                                'and (PC.ATIVO = ''S'')' + #13#10 +
                                'and N.ATIVO = ''S''' + #13#10 +
                                'and N.TOTAL > 0' + #13#10 +
                          'group by 1, 2' + #13#10 +
                          '' + #13#10 +
                          'union all' + #13#10 +
                          '' + #13#10 +
                          'select F.CODIGO as CODFINANCEIRO, PC.CODCENTRO_CUSTO, f.codpedido, f.emissao,' + #13#10 +
                                 'sum(((NEP.TOTAL_COMPRA / N.TOTAL) * 100)) as PERCENTUAL' + #13#10 +
                          'from FINANCEIRO F' + #13#10 +
                          'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODPEDIDO' + #13#10 +
                          'left join NF_ENTRADA N on N.CODIGO = F.CODPEDIDO' + #13#10 +
                          'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO' + #13#10 +
                          'left join PRODUTO_CATEGORIA PC on PC.CODIGO = P.CODPRODUTO_CATEGORIA' + #13#10 +
                          'where (F.CODPEDIDO <> ''0'')' + #13#10 +
                                'and (F.STATUS like ''ATIVO%'')' + #13#10 +
                                'and (F.EMISSAO between :D1 and :D2)' + #13#10 +
                                'and (NEP.PARENT is null)' + #13#10 +
                                'and (PC.CODCENTRO_CUSTO is null)' + #13#10 +
                                'and (PC.ATIVO = ''S'')' + #13#10 +
                                'and N.ATIVO = ''S''' + #13#10 +
                                'and N.TOTAL > 0' + #13#10 +
                          'group by 1, 2' + #13#10 +
                          'order by 1';
  Result.ParamByName('D1').Value := DT_Inicio;
  Result.ParamByName('D2').Value := DT_Fim;
  Result.Open;
end;

end.
