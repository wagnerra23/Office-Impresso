unit Controller.KPI;

interface

Uses Variants, SysUtils, Forms, Menu, Generics.Collections, System.StrUtils, wr_memoria, System.Classes, FireDac.Stan.Intf, Data.DB,
    DataModuleBanco, FireDAC.Comp.Client, System.JSON, dxCustomTileControl;

Type
  TWREventOnAfterOpen = procedure(DataSet: TDataSet) of object;
//

  TKPIDataSet = class(TFDQuery)
  private
    FAfterOpenEvent: TNotifyEvent;
    procedure AtualizarBancoDeDados(Sender: TObject);
  protected
    procedure DoAfterOpen; override;
  public
    property AfterOpen: TNotifyEvent read FAfterOpenEvent write FAfterOpenEvent;
  end;

var FConexao: TFDCustomConnection;
    FTransacao: TFDTransaction;

procedure Carrega_KPIs_na_Tela;
procedure Carrega_KPIs_DadosDoBanco;
procedure KPI_Salvar_Menu(ANome, ATabela:String; ATag_KPI, AGroupIndex, AIndexInGroup: Integer; AText1:Variant;
    AText2:Variant; AText3:Variant; AText4:Variant; AParent: Variant; ChavePK1: integer = 0; ChavePK2: string = ''; ChavePK3:string = '';ANivel: Integer = 0);
procedure KPI_Salvar(ATransa: TFDCustomTransaction; QuerInsertOuEdit: TFDQuery; QuerDados: TFDQuery; AGroupIndex, AIndexInGroup: Integer);
// Essa é a rotina principal
procedure KPI_Execute_Todos;
procedure KPI_Menu_Execute_SQLs(ASQLs: array of string);
procedure Salva_KPI_Mes_e_Ano(ADataAPartirDe: TDateTime; ATransa: TFDCustomTransaction);

/// Módulo Estoque
procedure KPI_Execute_Estoque;

/// Módulo Compra
procedure KPI_Execute_Compra;

/// Módulo RH
procedure KPI_Execute_RH;
procedure RH_KPI_Funcionarios;

/// Módulo Vendas
procedure KPI_Execute_Vendas;
function GeraSQL_Categoria: string;
function BaseSQLCategoria(ANivel: Integer; AChave_PK2, AParent: string): string;
function GeraSQL_Vendas: string;

/// Módulo Produção
procedure KPI_Execute_Producao;
procedure Producao_KPI_Evolucao_Mensal;
procedure Producao_KPI_Quantidade_M2_Impresso;
procedure Producao_KPI_Quantidade_Kg;

/// Módulo Planejamento
procedure KPI_Execute_Planejamento;

/// Módulo Notas fiscais
procedure KPI_Execute_NotaFiscal;

/// Módulo Contatos
procedure KPI_Execute_Pessoas;

/// Módulo Produto
procedure KPI_Execute_Produto;
procedure Produto_KPI_Produto_Tipo;
procedure Produto_KPI_Produto_Categoria;
procedure Produto_KPI_Produto_Grupo;

/// Módulo Estoque
procedure Estoque_KPI_Estoque_Tipo_de_Produto;

/// Módulo Financeiro
procedure KPI_Execute_Financeiro;
procedure Financeiro_KPI_Ponto_de_Equilibrio;
procedure Financeiro_KPI_Saldo_Contas_Caixas;
procedure Financeiro_KPI_DRE;
procedure Financeiro_KPI_Fluxo_de_Caixa;

procedure Preenche_KPI_Tile(AMemTable: TFDMemTable; ATile: TdxTileControlItem);

implementation

Uses Principal, cxButtons, Unitfuncoes, Base, Classes.APP, wrFuncoes, Tag.APP, Tag.Form, Tag.KPI;

procedure Carrega_KPIs_na_Tela;
  procedure Preenche_KPI_Botao(AButton: TcxButton; AText: string);
  begin
    if AText <> '' then
      AButton.Caption := ' ' + AText
    else
      AButton.Caption := ' --';
  end;
  procedure Preenche_KPI_Tile(ANome:String);
  begin

  end;
begin
  with FrmPrincipal do
  begin
//    wr_memoria_KPI.Close;
//    wr_memoria_KPI.Open;
//    wr_memoria_KPI_Menu.Close;
//    wr_memoria_KPI_Menu.Open;
    wr_memoria.Carrega_KPI;
    wr_memoria.Carrega_KPI_menu;
//    Carrega_KPIs_DadosDoBanco;

//    Preenche_KPI_Botao(btnKPI_Produto,   Tag_KPI_Principal_Estoque);
//    Preenche_KPI_Botao(btnKPI_RH,        Tag_KPI_Menu_Produto_Tipo);
    if Filtra_KPI(wr_memoria_KPI_Mes, Tag_KPI_Principal_Producao) then
      Preenche_KPI_Botao(btnKPI_Producao, wr_memoria_KPI.FieldByName('text1').AsString);

    if Filtra_KPI(wr_memoria_KPI_Mes, Tag_KPI_Principal_Estoque) then
      Preenche_KPI_Botao(btnKPI_Estoque, wr_memoria_KPI.FieldByName('text1').AsString);

    if Filtra_KPI(wr_memoria_KPI_Mes, Tag_KPI_Principal_Venda) then
      Preenche_KPI_Botao(btnKPI_Vendas, wr_memoria_KPI.FieldByName('text1').AsString);

    if Filtra_KPI(wr_memoria_KPI_Mes, Tag_KPI_Principal_Financeiro) then
      Preenche_KPI_Botao(btnKPI_Financeiro, wr_memoria_KPI.FieldByName('text1').AsString);

    if Filtra_KPI(wr_memoria_KPI_Mes, Tag_KPI_Principal_Compras) then
      Preenche_KPI_Botao(btnKPI_Compras, wr_memoria_KPI.FieldByName('text1').AsString);

    if btnKPI_Olho.OptionsImage.ImageIndex = 97 then
    begin
      btnKPI_Financeiro.Caption:=' --';
      btnKPI_Vendas.Caption    :=' --';
      btnKPI_Compras.Caption   :=' --';
      btnKPI_Estoque.Caption   :=' --';
      btnKPI_Producao.Caption   :=' --';
    end;

//    Preenche_KPI_Botao(btnKPI_Producao,  Tag_KPI_Principal_Producao);
//    Preenche_KPI_Botao(btnKPI_Estoque,   Tag_KPI_Principal_Estoque);
//    Preenche_KPI_Botao(btnKPI_Vendas,    Tag_KPI_Principal_Venda);
//    Preenche_KPI_Botao(btnKPI_Financeiro,Tag_KPI_Principal_Financeiro);
//    Preenche_KPI_Botao(btnKPI_Compras,   Tag_KPI_Principal_Compras);

//    btnKPI_Produto.Caption    := AAPP_KPI[0].Text1;
//    btnKPI_Producao.Caption   := AAPP_KPI[0].Text1;
//    btnKPI_Estoque.Caption    := AAPP_KPI[0].Text1;
//    btnKPI_RH.Caption         := AAPP_KPI[0].Text1;
//    btnKPI_Vendas.Caption     := AAPP_KPI[0].Text1;
//    btnKPI_Financeiro.Caption := AAPP_KPI[0].Text1;
//    btnKPI_Compras.Caption    := AAPP_KPI[0].Text1;
    try
      if Assigned(FrmMenu) then
      begin
        with FrmMenu do
        begin
          tlProduto.Text2.Value    :=btnKPI_Produto.Caption;
          tlContatos.Text2.Value   :=btnKPI_RH.Caption;
          tlProducao.Text2.Value   :=btnKPI_Producao.Caption;
          tlFinanceiro.Text2.Value :=btnKPI_Financeiro.Caption;
          tlVendas.Text2.Value     :=btnKPI_Vendas.Caption;
          tlCompras.Text2.Value    :=btnKPI_Compras.Caption;
        end;
      end;
    except
    end;

{    KPI.First;
    while not KPI.eof do
    begin
      if KPI.FieldByName('Descricao').AsString = btnKPI_Producao.Name then
      begin
        btnKPI_Producao.Caption:= KPI.FieldByName('Text1').AsString;
      end;
      if KPI.FieldByName('Descricao').AsString = btnKPI_RH.Name then
      begin
        btnKPI_RH.Caption:= KPI.FieldByName('Text1').AsString;
      end;
      if KPI.FieldByName('Descricao').AsString = btnKPI_Estoque.Name then
      begin
        btnKPI_Estoque.Caption:= KPI.FieldByName('Text1').AsString;
      end;
      if btnKPI_Olho.OptionsImage.ImageIndex <> 17 then
      begin
        if KPI.FieldByName('Descricao').AsString = btnKPI_Financeiro.Name then
        begin
          btnKPI_Financeiro.Caption:= KPI.FieldByName('Text1').AsString;
        end;
        if KPI.FieldByName('Descricao').AsString = btnKPI_Vendas.Name then
        begin
          btnKPI_Vendas.Caption:= KPI.FieldByName('Text1').AsString;
        end;
        if KPI.FieldByName('Descricao').AsString = btnKPI_Compras.Name then
        begin
          btnKPI_Compras.Caption:= KPI.FieldByName('Text1').AsString;
        end;
      end;
      KPI.Next;
//      Application.processMessage;}

  end;
end;

procedure Preenche_KPI_Tile(AMemTable: TFDMemTable; ATile: TdxTileControlItem);
begin
  ATile.Text1.Value := FormatFloat('#,0.00', AMemTable.FieldByName('TEXT1').AsFloat);
  ATile.Text2.Value := '▼ ' + AMemTable.FieldByName('TEXT2').AsString;
  ATile.Text3.Value := '▲ ' + AMemTable.FieldByName('TEXT3').AsString;
  ATile.Text4.Value := AMemTable.FieldByName('TEXT4').AsString;
end;

procedure Carrega_KPIs_DadosDoBanco;
var
  ATag: integer;
  AKPI_Menu: TWR_KPI_Menu;
begin
  AWR_KPI_Menu.Free;
  wr_memoria_KPI.First;
  while not wr_memoria_KPI.eof do
  begin
    ATag := wr_memoria_KPI.FieldByName('TAG').AsInteger;
    if not Assigned(AWR_KPI[ATag]) then
    begin
      wr_memoria_KPI.Next;
      Continue;

    end;
//    AAPP_KPI[ATag].Text1 := wr_memoria_KPI.FieldByName('TEXT1').AsString;
//    AAPP_KPI[ATag].Text2 := wr_memoria_KPI.FieldByName('TEXT2').AsString;
//    AAPP_KPI[ATag].Text3 := wr_memoria_KPI.FieldByName('TEXT3').AsString;
//    AAPP_KPI[ATag].Text4 := wr_memoria_KPI.FieldByName('TEXT4').AsString;

//    AAPP_KPI[ATag].Tag_Estilo := wr_memoria_KPI.FieldByName('Tag_Estilo').AsInteger;
//    AAPP_KPI[ATag].Tag_Estilo := FrmPrincipal.KPI.FieldByName('Tag_Estilo').AsInteger;
//    AAPP_KPI[ATag].ImageIndex := FrmPrincipal.KPI.FieldByName('ImageIndex').AsInteger;
    AWR_KPI[ATag].GroupIndex := wr_memoria_KPI.FieldByName('GroupIndex').AsInteger;
    AWR_KPI[ATag].IndexInGroup := wr_memoria_KPI.FieldByName('IndexInGroup').AsInteger;

    AWR_KPI[ATag].Ativo := (wr_memoria_KPI.FieldByName('Ativo').AsString = 'S');
    AWR_KPI[ATag].Favorito := (wr_memoria_KPI.FieldByName('FAVORITO').AsString = 'S');

    if AWR_KPI[ATag].Menu then
    begin
      wr_memoria_KPI_Menu.First;
      while not wr_memoria_KPI_Menu.eof do
      begin
        if ATag = wr_memoria_KPI_Menu.FieldByName('TAG_KPI').AsInteger then
        begin
          AKPI_Menu := TWR_KPI_Menu.Create;
          AKPI_Menu.Tag_KPI := ATag;
          AKPI_Menu.Descricao := wr_memoria_KPI_Menu.FieldByName('DESCRICAO').AsString;
          AKPI_Menu.Text1 := wr_memoria_KPI_Menu.FieldByName('TEXT1').AsString;
          AKPI_Menu.Text2 := wr_memoria_KPI_Menu.FieldByName('TEXT2').AsString;
          AKPI_Menu.Text3 := wr_memoria_KPI_Menu.FieldByName('TEXT3').AsString;
          AKPI_Menu.Text4 := wr_memoria_KPI_Menu.FieldByName('TEXT4').AsString;
          AKPI_Menu.GroupIndex := wr_memoria_KPI_Menu.FieldByName('INDEXINGROUP').AsInteger;
          AKPI_Menu.Ativo := (wr_memoria_KPI_Menu.FieldByName('Ativo').AsString = 'S');

          if not Assigned(AWR_KPI_Menu) then
            AWR_KPI_Menu := TList<TWR_KPI_Menu>.Create;

          AWR_KPI_Menu.Add(AKPI_Menu);
        end;
        wr_memoria_KPI_Menu.Next;
      end;
    end;
    wr_memoria_KPI.Next;
  end;
end;

procedure KPI_Salvar_Menu(ANome, ATabela:String; ATag_KPI, AGroupIndex, AIndexInGroup: Integer; AText1:Variant;
    AText2:Variant; AText3:Variant; AText4:Variant; AParent: Variant; ChavePK1: integer = 0; ChavePK2: string = ''; ChavePK3:string = '';ANivel: Integer = 0);
var
  QuerX: TFDQuery;
  ATransa : TFDTransaction;          ///////CANTEIRO ABANDONADO\\\\\\\\\\\\
begin
  ATransa := GeraFDTransacao;
  QuerX := GeraFDQuery(ATransa);
  try
    QuerX.SQL.Text := 'SELECT * FROM KPI_DIA ' +
                      'WHERE (Upper(descricao)  = Upper(:Descricao)) and    '+
                      '      (Upper(Tabela) =  Upper(:Tabela))and '+
                      '      (Competencia = :Competencia) ' ;
    QuerX.ParamByName('Descricao').AsString   := ANome;
    QuerX.ParamByName('Competencia').AsDateTime := Competencia_Atual;
    QuerX.ParamByName('Tabela').AsString      := ATabela;
    QuerX.Open;
    if QuerX.RecordCount = 0 then
    begin
      QuerX.Insert;
      QuerX.FieldByName('Codigo').AsInteger     := Trunc(GetProximoCodigoGen('CR_KPI_DIA'));
      QuerX.FieldByName('Descricao').AsString   := ANome;
      QuerX.FieldByName('Competencia').AsDateTime := Competencia_Atual;
      QuerX.FieldByName('Tag_KPI').AsInteger    := ATag_KPI;
      QuerX.FieldByName('Tabela').AsString      := ATabela;
    end else
      QuerX.Edit;
    QuerX.FieldByName('GroupIndex').Value  := AGroupIndex;
    QuerX.FieldByName('IndexInGroup').Value:= AIndexInGroup;
    QuerX.FieldByName('Text1').Value:= AText1;
    QuerX.FieldByName('Text2').Value:= AText2;
    QuerX.FieldByName('Text3').Value:= AText3;
    QuerX.FieldByName('Text4').Value:= AText4;
    QuerX.FieldByName('CHAVE_PK1').Value:= ChavePK1;
    QuerX.FieldByName('CHAVE_PK2').Value:= ChavePK2;
    QuerX.FieldByName('CHAVE_PK3').Value:= ChavePK3;
    QuerX.FieldByName('ATIVO').Value:= 'S';
    QuerX.FieldByName('NIVEL').Value := ANivel;
    QuerX.FieldByName('Parent').Value := AParent;
    try
      QuerX.Post;
      ATransa.Commit;
    except                         ///////CANTEIRO ABANDONADO\\\\\\\\\\\\
      ATransa.Rollback;
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
    ATransa.Free;
    Application.ProcessMessages;
  end;
end;

procedure KPI_Execute_Todos;
begin
  FConexao := DMBanco.GeraFDConexao;
  if AWR_APP[TagAPP_Planejamento].Ativo   then  KPI_Execute_Planejamento;
  if AWR_APP[TagAPP_Estoque].Ativo        then  KPI_Execute_Pessoas;
  if AWR_APP[TagAPP_Estoque].Ativo        then  KPI_Execute_NotaFiscal;
  if AWR_APP[TagAPP_Estoque].Ativo        then  KPI_Execute_Produto;
  if AWR_APP[TagAPP_Estoque].Ativo        then  KPI_Execute_Estoque;
  if AWR_APP[TagAPP_Compra].Ativo         then  KPI_Execute_Compra;
  if AWR_APP[TagAPP_CRM].Ativo            then  KPI_Execute_RH;
  if AWR_APP[TagAPP_Financeiro].Ativo     then  KPI_Execute_Financeiro;
  if AWR_APP[TagAPP_Venda].Ativo          then  KPI_Execute_Vendas;
  if AWR_APP[TagAPP_Ordem_Producao].Ativo then  KPI_Execute_Producao;
end;

{$REGION 'Compra'}
procedure KPI_Execute_Compra;
begin
//  KPI_Menu_Execute_SQLs([]);
  // Converssões erradas, Sub-Unidades
  // Compras não finalizadas
  // Concliadas ???
  // Solicitações de compras,
  // Compras por Categoria
  // Cadastros novos
  // Ctes, não vinculados
  // Cancelamentos
end;
{$ENDREGION}

{$REGION 'Vendas'}
procedure KPI_Execute_Vendas;
begin
  KPI_Menu_Execute_SQLs([GeraSQL_Vendas, GeraSQL_Categoria]);
{$REGION 'Comentário'}
  //Faturamento (Receita Bruta)  ddfFinanceiro
{select coalesce(sum(v.total),0) as QUANT
from venda v where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
}
{O faturamento, ou receita bruta, é um dos indicadores financeiros básicos de qualquer empresa. Ele representa a soma de todos os valores obtidos a partir da venda de produtos e serviços, ou seja, o que a empresa ganhou com suas atividades principais.

Avaliando o faturamento, é possível entender o desempenho das vendas em um negócio e sua capacidade de gerar caixa. Além disso, ele também é a base de cálculo de vários impostos recolhidos pelas empresas, como o PIS (Programas de Integração Social) e o Cofins (Contribuição para Financiamento da Seguridade Social).

Para calcular o faturamento, basta multiplicar o preço de venda dos produtos ou serviços pelo total de unidades vendidas no período escolhido, seguindo a fórmula abaixo:

Faturamento bruto = Preço de venda x Quantidade vendida

Por exemplo, imagine que uma loja virtual de roupas vendeu 300 peças em um mês, sendo:

50 calças de R$ 180 (faturamento de R$ 9 mil);
25 vestidos de R$ 120 (faturamento de R$ 3 mil);
180 blusas de R$ 70 (faturamento de R$ 12.600);
45 shorts de R$ 100 (faturamento de R$ 4.500).

Nesse caso, é só multiplicar as quantidades pelos valores para chegar no valor total de faturamento de R$ 29.100. Lembrando que faturamento é diferente de lucro, pois não são considerados os custos da empresa no cálculo.}



//ISS Retido ddfFinanceiro
{select coalesce(sum(v.NF_VALOR_ISS_RETIDO),0) as QUANT
from venda v where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
}

//Faturamento com Retenção ISS  ddfFinanceiro
{select coalesce(sum(coalesce(v.total,0) + coalesce(v.NF_VALOR_ISS_RETIDO,0)),0) as QUANT
from venda v where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
}

//Total de IPI  ddfFinanceiro
{select  coalesce(sum(v.nf_ipi_vipi),0)  as QUANT from venda v
where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and v.NOTAFISCAL <> NULL
and (v.is_venda = 'S')
}
{Total de IPI Aplicado nas Notas fiscais}


//Total de Acréscimos ddfFinanceiro
{
select  coalesce(sum(v.voutro),0) as QUANT from venda v
where (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
}
{Relacionado também ao item anterior, temos o índice de afastamento, que mostra se existem muitos funcionários solicitando afastamento de suas funções por questões de saúde, familiares, dentre outras. Caso este índice seja muito alto, vale a pena buscar entender quais os motivos e investir em um trabalho com psicólogos e médicos que ajudem a minimizar estes números.}


//Total de Frete ddfFinanceiro
{select  coalesce(sum(v.nf_vfrete),0)  as QUANT from venda v
where (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
}
{Outra métrica relacionada à área de manutenção do processo industrial é o Tempo de Inatividade.
O objetivo desse KPI é mensurar quanto tempo os equipamentos da fábrica ficaram sem funcionar.

Ele pode ser analisado em conjunto com o indicador de desempenho industrial anterior, o Tempo Médio para Reparo, pois estão intimamente ligados.

Afinal, se uma máquina demora muito para ser reparada, isso significa que o tempo de inatividade do processo industrial será maior.}

//Total de ICMS ST ddfFinanceiro
{
select  coalesce(sum(v.nf_vicmsst),0)  as QUANT from venda v
where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and (v.NOTAFISCAL <> NULL)
and (v.is_venda = 'S')

}
{  }

//Total de Descontos
{
select  coalesce(sum(v.vdesc),0)  as QUANT from venda v
where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')

}
{  }

//Total de ISS Retido  ddfFinanceiro
{
select  coalesce(sum(v.NF_VALOR_ISS_RETIDO),0)  as QUANT from venda v
where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and v.notafiscal <> NULL
and (v.is_venda = 'S')

}
{  }

//Total de Cofins  ddfFinanceiro
{
select  coalesce(sum(v.nf_cofins_vcofins),0)  as QUANT from venda v
where  (v.ATIVO = 'S' )
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and v.notafiscal <> NULL
and (v.is_venda = 'S')

}
{  }

//Quantidade de Devolução  ddfContador
{
select count(1) as QUANT from venda v
where (v.ATIVO = 'S' )
and (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and  (v.NF_SAIDA_ENTRADA = 0)
and (v.is_venda = 'S')

}
{  }

//Vendas com Valores Diferente do Financeiro ddfContador
{
with venda_com_financeiro as (
    select a.CODIGO, sum(A.SOMAFINANCEIRO) as SOMAFINANCEIRO, sum(A.TOTAL) as TOTAL from
    (select f.codpedido as CODIGO,
    sum(coalesce(f.valor,0) + coalesce(f.juros,0) - coalesce(f.desconto,0)) as SOMAFINANCEIRO,
    0 as TOTAL from financeiro f where f.codpedido in
    (select v.codigo from venda v
    where  (v.ATIVO = 'S' )
    and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
    and (v.is_venda = 'S')) and f.status like 'ATIVO%'
    group by 1

    union

    select v.codigo, 0 as SOMAFINANCEIRO, v.total from venda v
    where  (v.ATIVO = 'S' )
    and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
    and (v.is_venda = 'S')) a where (A.SOMAFINANCEIRO - A.TOTAL) <> 0
    group by a.CODIGO             )

select count(1) as QUANT from venda_com_financeiro where somafinanceiro <> total

}
{  }

//Vendas com mais de 1 NF   ddfContador
{
select count(b.QUANT) as QUANT from (
    select count(a.nf_numero) as QUANT  from
    (select v.codigo,  nf.nf_numero from venda v
    left join nota_fiscal nf on nf.codvenda = v.codigo
    where  (v.ATIVO = 'S' )
    and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
    and (v.is_venda = 'S')
    and nf.nf_situacao in ('Autorizada','Confirmada')) a
group by a.codigo
having count(a.nf_numero) > 1) b

}
{  }

//Não Faturadas com NF   ddfContador
{
select count(1) as QUANT from venda v
left join nota_fiscal nf on nf.codvenda = v.codigo
where  (v.ATIVO = 'S' )
and (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and (coalesce(v.dt_faturamento, '') = '')
and (v.is_venda = 'S')
and nf.nf_situacao in ('Autorizada','Confirmada')

}
{  }

//Vendas excluídas por Usuários
{
select count(1) as QUANT from venda v
where (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and  (v.STATUS = 'INATIVO EXCLUÍDO')
and (v.is_venda = 'S')

}
{ }

//Vendas com financeiro recebido e faturamento cancelado ddfContador
{
select count(1) as QUANT from venda v where v.codigo in
(select f.codpedido from financeiro f where f.status = 'INATIVO EXCLUIDA'
and f.codpedido = v.codigo and f.tipo = 'RECEBIDA')
and v.dt_competencia between :Dt_Inicio and :Dt_Fim

}
{ }

//Top 10 Vendedores
{
select first 10 p.razaosocial as DESCRICAO, coalesce(sum(v.total),0) as QUANT
from venda v
left join pessoas p on p.codigo = v.pessoa_funcionario_codigo
where  (v.ATIVO = 'S')
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
group by 1

}
{ }

//Faturamento Por Tipo
{
select v.venda_tipo as DESCRICAO, coalesce(sum(v.total),0) as QUANT
from venda v where  (status like 'ATIVO')
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
group by 1

}
{ }

//Vendas por Tipo de produto
{
select pt.DESCRICAO,
coalesce(sum(vp.total),0) as QUANT from venda_produto vp
left join venda v on v.codigo = vp.codvenda
left join produto p on p.codigo = vp.codproduto
left join produto_tipo pt on pt.codigo = p.codproduto_tipo
where  (v.status like 'ATIVO')
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
and vp.parent is null
group by 1

}
{ }

//Top 5 Clientes do Período
{
select first 5 coalesce(v.razaosocial,'<Sem Cliente Especificado>') as DESCRICAO,
coalesce(sum(v.total),0) as QUANT from venda v
where  (v.ativo = 'S')
and  (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
group by 1
order by coalesce(sum(v.total),0) desc

}
{ }

//Top 10 Produtos Vendidos
{
select first 10 coalesce(vp.descricao,'<Produto Especificado>') as DESCRICAO,
coalesce(sum(vp.total),0) as QUANT from venda_produto vp
left join venda v on v.codigo = vp.codvenda
where (v.ativo = 'S')
and (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
group by 1
order by coalesce(sum(vp.total),0) desc

}
{ }

//Vendas por Tipo de Impressão
{
select first 10 coalesce(vp.tipo_impressao,'<Sem Tipo>') as DESCRICAO,
coalesce(sum(vp.total),0) as QUANT from venda_produto vp
left join venda v on v.codigo = vp.codvenda
where (v.ativo = 'S')
and (v.dt_competencia between :Dt_Inicio and :Dt_Fim)
and not(v.dt_faturamento is null)
and (v.is_venda = 'S')
group by 1
order by coalesce(sum(vp.total),0) desc
}
{ }
{$ENDREGION}
end;

procedure KPI_Menu_Execute_SQLs(ASQLs: array of string);
var
  ArrayQuery: Array of TKPIDataSet;
  AQuery: TKPIDataSet;
  SQL:String;
  AIndex: Integer;
  ATransa: TFDTransaction;
begin
  ATransa := GeraFDTransacao(FConexao);
  AIndex := 0;
  try
    try
      for SQL in ASQLs do
      begin
        SetLength(ArrayQuery, AIndex + 1);

        ArrayQuery[AIndex] := TKPIDataSet.Create(nil);
        ArrayQuery[AIndex].Connection := FConexao;
        ArrayQuery[AIndex].Transaction := ATransa;
        ArrayQuery[AIndex].ResourceOptions.CmdExecMode := AmAsync;
        ArrayQuery[AIndex].Close;
        ArrayQuery[AIndex].SQL.Text := SQL;
        ArrayQuery[AIndex].ParamByName('d').AsDateTime := Competencia_Atual - 500;
        ArrayQuery[AIndex].Open;

        AIndex := AIndex + 1;
      end;

      for AQuery in ArrayQuery do
      begin
        while (AQuery.State = dsOpening) or AQuery.Active do
        begin
          Application.ProcessMessages;
          // Aqui pode travar pra sempre
          Continue;
        end;
      end;

      Salva_KPI_Mes_e_Ano(DataHoraSys - 90, ATransa);
      ATransa.Commit; 
    except
      ATransa.Rollback;
    end;
    
  finally
    for AQuery in ArrayQuery do
      AQuery.Free;

    ATransa.Free;
  end;
end;

function GeraSQL_Categoria: string;
begin
  Result :=
  BaseSQLCategoria(1, 'PC.INDICE1', 'null')
  + ' union ' +
  BaseSQLCategoria(2, 'PC.INDICE1 || ''.'' || PC.INDICE2',
                      'PC.INDICE1')
  + ' union ' +
  BaseSQLCategoria(3, 'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3',
                      'PC.INDICE1 || ''.'' || PC.INDICE2')
  + ' union ' +
  BaseSQLCategoria(4, 'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3 || ''.'' || PC.INDICE4',
                      'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3')
  + ' union ' +
  BaseSQLCategoria(5, 'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3 || ''.'' || PC.INDICE4 || ''.'' || PC.INDICE5',
                      'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3 || ''.'' || PC.INDICE4')
  + ' union ' +
  BaseSQLCategoria(6, 'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3 || ''.'' || PC.INDICE4 || ''.'' || PC.INDICE5 || ''.'' || PC.INDICE6',
                      'PC.INDICE1 || ''.'' || PC.INDICE2 || ''.'' || PC.INDICE3 || ''.'' || PC.INDICE4 || ''.'' || PC.INDICE5')
end;

function BaseSQLCategoria(ANivel: Integer; AChave_PK2, AParent: string): string;
begin
  result :=
    'select ' +
    '  coalesce(U.codigo, -2) as CODUSUARIO, ' +
    '  lpad(extract(day from V.dt_competencia), 2, ''0'') || ''/'' || ' +
    '  lpad(extract(month from V.dt_competencia), 2, ''0'') || ''/'' || ' +
    '  lpad(extract(year from V.dt_competencia), 4, ''0'') as DATA, ' +
    '  (select first 1 PC1.DESCRICAO ' +
    '   from PRODUTO_CATEGORIA PC1 ' +
    '   where PC1.CODIGO = ' + QuotedStr(AChave_PK2) + ') as DESCRICAO, ' +
    '  ''PRODUTO_CATEGORIA'' as TABELA, ' +
    '  1 as TAG_APP, ' +
    '  11 as TAG_KPI, ' +
    '  ''mês'' as TIPO, ' +
    '  SUM(coalesce(VP.TOTAL_RELATORIO, 0)) as TEXT1, ' +
    '  SUM(coalesce(VP.VDESC, 0)) as TEXT2, ' +
    '  SUM(coalesce(VP.VOUTRO, 0)) as TEXT3, ' +
    '  ''0'' as TEXT4, ' +
    AParent + ' as PARENT, ' +
    '  0 as CHAVE_PK1, ' +
    AChave_PK2 + ' as CHAVE_PK2, ' +
    '  '''' as CHAVE_PK3, ' +
    '  ''S'' as ATIVO, ' +
    '  1 as NIVEL ' +
    'from VENDA_PRODUTO VP ' +
    'join (select V.DT_FATURAMENTO, V.CODIGO, V.PESSOA_FUNCIONARIO_CODIGO, V.DT_COMPETENCIA ' +
    '      from VENDA V) V on V.CODIGO = VP.CODVENDA ' +
    'join (select P.CODIGO, P.CODPRODUTO_CATEGORIA ' +
    '      from PRODUTO P) P on P.CODIGO = VP.CODPRODUTO ' +
    'left join PRODUTO_CATEGORIA PC on PC.CODIGO = P.CODPRODUTO_CATEGORIA ' +
    'left join USUARIO U on U.codfuncionario = V.pessoa_funcionario_codigo ' +
    'where PC.INDICE1 is not null and ' +
    '  V.DT_FATURAMENTO between cast(cast(:d as date) - extract(day from cast(:d as date)) + 1 as date) and ' +
    '  dateadd(1 month to cast(cast(:d as date) - extract(day from cast(:d as date)) + 1 as date)) - 1 ' +
    'group by 1, 2, 3, 4, 5, 6, 7, 11, 12, 13, 14, 15, 16, 17';
end;

function GeraSQL_Vendas: string;
begin
  Result :=
    'select coalesce(U.codigo, -2) as CODUSUARIO, ' +
    'lpad(extract(day from V.dt_competencia), 2, ''0'') || ''/'' || lpad(extract(month from V.dt_competencia), 2, ''0'') ' +
    '|| ''/'' || lpad(extract(year from V.dt_competencia), 4, ''0'') as DATA, ' +
    '''vendas'' as DESCRICAO, ''VENDA'' as TABELA, 2 as TAG_APP, 1 as TAG_KPI, ''principal'' as TIPO, ' +
    'SUM(coalesce(v.total, 0)) as TEXT1, SUM(coalesce(v.vdesc,0)) as TEXT2, ' +
    'SUM(coalesce(v.voutro, 0)) as TEXT3, ''0'' as TEXT4, 0 as PARENT, ' +
    ' 0 as CHAVE_PK1, '''' as CHAVE_PK2, '''' as CHAVE_PK3, 0 as NIVEL ' +
    'from VENDA V ' +
    'left join USUARIO U on U.codfuncionario = V.pessoa_funcionario_codigo ' +
    'where V.dt_competencia > cast(:d as date) AND V.ATIVO = ''S''' +
    'group by 1, 2';
end;

{$ENDREGION}

{$REGION 'Nota fiscal'}
procedure KPI_Execute_NotaFiscal;
begin
//Valor Emitidas
{
select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') not in ('Não Autorizada','Desconhecida','')
}
{ }

//Qtde Emitidas
{
select count(1) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') not in ('Não Autorizada','Desconhecida','')

}
{ }

//Valor em notas autorizadas
{
select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')

}
{ }

//Quant Autorizadas
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')

}
{ }

//Valor em notas canceladas
{
select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') in ('Cancelada')

}
{ }

//Quant Canceladas
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFe'
and coalesce(nf.nf_situacao, '') in ('Cancelada')

}
{ }



/////NFSE

//Valor Emitidas
{

select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') not in ('Não Autorizada','Desconhecida','')


}
{ }

//Qtde Emitidas
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') not in ('Não Autorizada','Desconhecida','')

}
{ }

//Valor em notas autorizadas
{
select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')

}
{ }

//Quant Autorizadas
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')

}
{ }

//Valor em notas canceladas
{
select coalesce(sum(nf.total),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Cancelada')


}
{ }

//Quant Canceladas
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Cancelada')

}
{ }

//Quant. Notas com ISS Retido
{
select count(nf.total) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')
and coalesce(nf.NF_VALOR_ISS_RETIDO, 0) > 0

}
{ }

//R$ Total ISS Retido
{
 select coalesce(sum(nf.NF_VALOR_ISS_RETIDO),0) as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')
and coalesce(nf.NF_VALOR_ISS_RETIDO, 0) > 0


}
{ }

//Total de Notas Com Retenção
{
select coalesce(sum(nf.total - coalesce(nf.NF_VALOR_ISS_RETIDO,0)),0)  as QUANT from nota_fiscal nf
where nf.nf_dt_emissao between :Dt_Inicio and :Dt_Fim
and nf.tipo = 'NFSe'
and coalesce(nf.nf_situacao, '') in ('Autorizada','Confirmada')
}
{ }
end;
{$ENDREGION}

{$REGION 'Contatos'}
procedure KPI_Execute_Pessoas;
begin

//Quantidade de numeros de telefones incorretos
{

}
{Telefones são importantes para emissão de NF, verique a lista e corrija }

//Quantidade de clientes sem o numero do endereço
{

}
{Número da residência (Limite de caracteres 1-60) Como Resolver: Abrir o cadastro da pessoa e preencher o número da residência (caso a residência não tenha número preencher com S/N ou 0 }


//Quantidade de clientes sem endereco
{

}
{Quantidade de clientes sem endereco', 'Mostrar os cadastros de pessoas que não possuem endereço preenchidoAbrir o cadastro da pessoa sem o endereço preenchido e colocar o endereço correto }


//Quantidade de cliente sem o CEP
{

}
{Mostrar os cadastros de pessoas que não possuem CEP preenchido }


end;
{$ENDREGION}

{$REGION 'Produção'}

procedure KPI_Execute_Producao;
begin
//  Producao_KPI_Evolucao_Mensal;
//  Producao_KPI_Quantidade_M2_Impresso;
//  Producao_KPI_Quantidade_Kg;

//-------------Aumentar produção
//Objetivo: Análise de Qtde produzida por recurso
//Objetivos da análise
//Enxergar recurso com Qtde produzida abaixo da meta de 50.000 kg por mês.
//Priorizar ações nesses recursos para aumentar a produção do setor.

//Evolução mensal da Qtde produzida por recurso
//Objetivos da análise
//Enxergar recursos com tendência de queda na produção.
//Priorizar ações nesses recursos para aumentar a produção do setor.
//Qtde produzida - Gráfico de evolução mensal separada por recurso

//Análise de Qtde produzida por funcionário
//Objetivos da análise
//Enxergar funcionários com Qtde produzida abaixo da meta de 25.000 kg por mês.
//Priorizar treinamento e motivação desses funcionários para aumentar a produção do setor.

//Análise de Qtde produzida por produto
//Objetivos: Enxergar produtos com baixa Qtde produzida.
//Analisar com setor Comercial se vale a pena manter produtos com baixo giro na linha de produtos.
//Formular com setor Comercial ações de marketing para aumentar as vendas e consequentemente a produção de produtos com baixo giro.

//--------------------Produzir mais rápido
//Objetivo: Produzir mais rápido (Reduzir lead times de produção)
//Lead time de fabricação da ordem - Evolução mensal
//Mes/ano de enceramento da ordem (dias)
//Deve conter Codproduto, Descricao, Quan ordens Média, Desvio padrão, Mínimo, Máximo


//1 -Eficácia Geral do Trabalho - OLE
{
A Eficácia Geral do Trabalho, ou OLE (Overall Labor Effectiveness) é um indicador que busca avaliar três variáveis do processo produtivo:

Disponibilidade: tempo em que os colaboradores ficaram disponíveis durante o expediente;
Desempenho: quanto os colaboradores conseguiram produzir durante o expediente;
Qualidade: quanto do que foi produzido está em perfeitas condições para a venda.

Multiplique essas três variáveis e você obterá o resultado o OLE.
}

//2 - Produtividade Homem / Hora
{
O segundo indicador da nossa lista de KPIs para indústrias busca mensurar quanto cada colaborador é capaz de produzir por hora trabalhada.

Para fazer o cálculo, basta dividir o total de peças produzidas pelo total de horas trabalhadas.

Você pode comparar esse resultado entre máquinas, entre turnos e até individualmente entre os colaboradores.
Também pode comparar com a produtividade geral do mercado em que atua para saber se sua empresa está competitiva no setor.
}


//3 - On Time In Full - OTIF
{
O On Time In Full (OTIF) é um KPI que mostra a eficiência das entregas.
Uma produção industrial eficiente precisa ser capaz de entregar os produtos completos (in full) dentro do prazo previamente estabelecido (on time).

O cálculo é feito multiplicando o percentual de entregas on time pelo percentual de entregas in full.

Hoje, com os mercados virtuais mais do que consolidados e até em ascensão, é cada vez mais importante monitorar suas entregas para satisfazer clientes cada vez mais exigentes com esses prazos.
}


//4 - Tempo Médio para Reparo - MTTR
{
Esse indicador é mais voltado para a área de manutenção da fábrica.
O Tempo Médio para Reparo, ou MTTR (Mean Time To Repair) calculo quanto tempo costuma-se levar, em média, para corrigir as falhas do processo produtivo.

Para calcular o MTTR, divida o tempo total gasto na correção de falhas pelo total de falhas corrigidas.
}

//5 - Tempo de Inatividade
{
Outra métrica relacionada à área de manutenção do processo industrial é o Tempo de Inatividade.
O objetivo desse KPI é mensurar quanto tempo os equipamentos da fábrica ficaram sem funcionar.

Ele pode ser analisado em conjunto com o indicador de desempenho industrial anterior, o Tempo Médio para Reparo, pois estão intimamente ligados.

Afinal, se uma máquina demora muito para ser reparada, isso significa que o tempo de inatividade do processo industrial será maior.
}

//6 - Tempo Médio entre Falhas
{
O Tempo Médio entre Falhas, ou MTBF (Mean Time Between Failures) mede a frequência em que os equipamentos da produção industrial precisam passar por manutenção.

Some o tempo total entre cada falha e depois divida pelo total de falhas. Quanto maior for o Tempo Médio entre Falhas, melhor será o desempenho da indústria.
}

//7 - Eficiência Global dos Equipamentos - OEE
{
Se o OLE mede a eficiência dos trabalhadores da fábrica, o OEE (Overall Equipment Effectiveness) se dedica a mensurar a eficiência das máquinas e equipamentos do processo produtivo.

Os três fatores analisados continuam sendo os mesmos:

Qualidade: equipamentos em perfeito estado;
Produtividade: quanto cada máquina tem conseguido produzir;
Disponibilidade: tempo dedicado à produção.
Multiplique o percentual de cada fator e encontre o resultado do OEE.
}

//Índice de desperdício
{
Uma obra de sucesso exige uma construção enxuta, que consiga fazer uma gestão de desperdícios. Segundo uma pesquisa coordenada pela Politécnica, com 15 universidades e mais de 100 canteiros de obras, a perda de materiais chega a 8%. Alguns podem apresentar números ainda maiores. Tudo isso é dinheiro indo embora à toa.

Nesse tópico, quero te fazer uma recomendação. O Quadro de Indicadores de Desperdício na Construção, disponibilizado gratuitamente pelo Sienge. Tenho certeza que ele pode ajudar bastante sua gestão. Baixe-o agora clicando na imagem abaixo!
}

//Índice de Acidente de Trabalho
{
Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.
}

//Índice de afastamento
{
Relacionado também ao item anterior, temos o índice de afastamento, que mostra se existem muitos funcionários solicitando afastamento de suas funções por questões de saúde, familiares, dentre outras. Caso este índice seja muito alto, vale a pena buscar entender quais os motivos e investir em um trabalho com psicólogos e médicos que ajudem a minimizar estes números.
}

//Índice de taxa de sucesso em vendas
{
O que vai dizer se sua obra foi um sucesso ou não é a taxa de sucesso das vendas. Neste KPI também vale levar em conta todo o gasto necessário, incluindo publicidade. Além disso deve-se avaliar o tempo transcorrido até a conclusão das vendas.
}
end;

procedure Producao_KPI_Evolucao_Mensal;
begin
  //Objetivo  : Aumentar produtividade
  //Quantidade produzida - Evolução mensal no setor produtivo.
  //Metodologia de cálculo: Somatório da Quantidade apontada no setor produtotivo

end;

procedure Producao_KPI_Quantidade_M2_Impresso;
begin
  //Objetivo: Aumentar Produção
  //Indicador: Qtde produzida em M2
  //Metodologia de cálculo: Somatório da Quantidade apontada no setor produtotivo, aumentar produtividade da impressora

end;

procedure Producao_KPI_Quantidade_Kg;
begin
  //Objetivo: Aumentar Produção
  //Indicador: Qtde produzida em Kg
  //Metodologia de cálculo: Somatório da Quantidade apontada no setor produtotivo

end;

{$ENDREGION}

{$REGION 'Planejamento'}
procedure KPI_Execute_Planejamento;
begin
  //------------------- Cumprir prazos de entrega
  //Objetivo: Cumprir Prazos de Entrega
  //Índice de cumprimento de prazos de entrega - Evolução mensal

  //Atrazo médio em dias
  //Mes/ano de enceramento da ordem
  //Atrazo médio globa - Evolução mensal
  //Mes/ano de enceramento da ordem
end;
{$ENDREGION}

{$REGION 'Produto'}

procedure KPI_Execute_Produto;
begin
//  Produto_KPI_Produto_Tipo;
//  Produto_KPI_Produto_Grupo;
//  Produto_KPI_Produto_Categoria;

{$REGION 'Comentário'}

  // Produtos Cadastrados   ddfContador
{  select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.ATIVO is distinct from 'N')
           and (PT.CLASSIFICACAO <> 'SERVICO')
}
{A Eficácia Geral do Trabalho, ou OLE (Overall Labor Effectiveness) é um indicador que busca avaliar três variáveis do processo produtivo:

Disponibilidade: tempo em que os colaboradores ficaram disponíveis durante o expediente;
Desempenho: quanto os colaboradores conseguiram produzir durante o expediente;
Qualidade: quanto do que foi produzido está em perfeitas condições para a venda.

Multiplique essas três variáveis e você obterá o resultado o OLE.}



  //Serviços Cadastrados    ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.ATIVO is distinct from 'N')
           and (PT.CLASSIFICACAO = 'SERVICO')
}

{O segundo indicador da nossa lista de KPIs para indústrias busca mensurar quanto cada colaborador é capaz de produzir por hora trabalhada.

Para fazer o cálculo, basta dividir o total de peças produzidas pelo total de horas trabalhadas.

Você pode comparar esse resultado entre máquinas, entre turnos e até individualmente entre os colaboradores.
Também pode comparar com a produtividade geral do mercado em que atua para saber se sua empresa está competitiva no setor.}

//Produto Composicao      ddfContador
{select count(1) AS QUANT
           from PRODUTO P
           where (P.ATIVO is distinct from 'N')AND (TEM_COMPOSICAO = 'S')
}

{O On Time In Full (OTIF) é um KPI que mostra a eficiência das entregas.
Uma produção industrial eficiente precisa ser capaz de entregar os produtos completos (in full) dentro do prazo previamente estabelecido (on time).

O cálculo é feito multiplicando o percentual de entregas on time pelo percentual de entregas in full.

Hoje, com os mercados virtuais mais do que consolidados e até em ascensão, é cada vez mais importante monitorar suas entregas para satisfazer clientes cada vez mais exigentes com esses prazos.}


//Produto com familia  ddfContador
{select count(1) AS Quant, p.codfamilia FROM produto p
where p.codfamilia is not null
group BY p.codfamilia
having count(1) > 1
}

{Esse indicador é mais voltado para a área de manutenção da fábrica.
O Tempo Médio para Reparo, ou MTTR (Mean Time To Repair) calculo quanto tempo costuma-se levar, em média, para corrigir as falhas do processo produtivo.

Para calcular o MTTR, divida o tempo total gasto na correção de falhas pelo total de falhas corrigidas.}


//  produto com grade    ddfContador
{select count(1) AS QUANT
           from PRODUTO P
           where (P.ATIVO is distinct from 'N')AND (TEM_GRADE = 'S')
}
{Esse indicador é mais voltado para a área de manutenção da fábrica.
O Tempo Médio para Reparo, ou MTTR (Mean Time To Repair) calculo quanto tempo costuma-se levar, em média, para corrigir as falhas do processo produtivo.

Para calcular o MTTR, divida o tempo total gasto na correção de falhas pelo total de falhas corrigidas.}


//Patrimonio     ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.ATIVO is distinct from 'N')
           and (PT.CLASSIFICACAO = 'PATRIMONIO')
}

{Patrimônio são os bens, obrigações e direitos associados à uma entidade, como empresas, ou à uma pessoa. Na contabilidade, somente os patrimônios que podem ser avaliados em moeda são considerados.}


//Produto com Estoque Abaixo do minimo    ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (PE.CODEMPRESA = :CODEMPRESA)
     where (P.ATIVO is distinct from 'N')
           and (PE.ESTOQUE < P.ESTOQUE_MIN)
           and (P.ESTOQUE_MIN > 0)
}

{Uma obra de sucesso exige uma construção enxuta, que consiga fazer uma gestão de desperdícios. Segundo uma pesquisa coordenada pela Politécnica, com 15 universidades e mais de 100 canteiros de obras, a perda de materiais chega a 8%. Alguns podem apresentar números ainda maiores. Tudo isso é dinheiro indo embora à toa.

Nesse tópico, quero te fazer uma recomendação. O Quadro de Indicadores de Desperdício na Construção, disponibilizado gratuitamente pelo Sienge. Tenho certeza que ele pode ajudar bastante sua gestão. Baixe-o agora clicando na imagem abaixo!}


//Produto com estoque acima do maximo   ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (PE.CODEMPRESA = :CODEMPRESA)
     where (P.ATIVO is distinct from 'N')
           and (PE.ESTOQUE > P.ESTOQUE_MAX)
           and (P.ESTOQUE_MAX > 0)
}

{Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.}


//Produto sem codigo de barras    ddfContador
{Select COunt(1) AS QUANT from produto } //sql estava errado mesmo

{O que vai dizer se sua obra foi um sucesso ou não é a taxa de sucesso das vendas. Neste KPI também vale levar em conta todo o gasto necessário, incluindo publicidade. Além disso deve-se avaliar o tempo transcorrido até a conclusão das vendas.}


//Produto com estoque negativo   ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (PE.CODEMPRESA = :CODEMPRESA)
     where (P.ATIVO is distinct from 'N')
           and (PE.ESTOQUE <  0)and(P.TEM_CONTROLE_ESTOQUE = 'S')
}
{Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.}


//Produto rendimento     ddfContador
{select count(1) as QUANT
     from PRODUTO P
     where (P.ATIVO is distinct from 'N')
           and (P.QUANT_RENDIMENTO <>  1)
}
{Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.}


//Produto com NCM invalido    ddfContador
{ select count(1) as QUANT
     from PRODUTO P
     left join NF_NCM N on (N.CODIGO = P.CODNF_NCM)
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.ATIVO is distinct from 'N')AND(
           ((char_length(N.CODIGO) is distinct from 8) and (P.PODE_SER_VENDIDO = 'S')) OR
           (N.dt_validade is not null))
}
{O Tempo Médio entre Falhas, ou MTBF (Mean Time Between Failures) mede a frequência em que os equipamentos da produção industrial precisam passar por manutenção.

Some o tempo total entre cada falha e depois divida pelo total de falhas. Quanto maior for o Tempo Médio entre Falhas, melhor será o desempenho da indústria.}


//produto sem grupo de  impostos  ddfContador
{select count(1) as QUANT
     from PRODUTO P
     where (P.ATIVO is distinct from 'N')
           and (P.PODE_SER_VENDIDO = 'S')
           and (P.CODPRODUTO_GRUPO IS NULL)

}
{Se o OLE mede a eficiência dos trabalhadores da fábrica, o OEE (Overall Equipment Effectiveness) se dedica a mensurar a eficiência das máquinas e equipamentos do processo produtivo.

Os três fatores analisados continuam sendo os mesmos:

Qualidade: equipamentos em perfeito estado;
Produtividade: quanto cada máquina tem conseguido produzir;
Disponibilidade: tempo dedicado à produção.
Multiplique o percentual de cada fator e encontre o resultado do OEE.}


  //Produto com valor abaixo do minimo ddfQuantidade   ddfContador
{  select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.VALOR < P.CALC_VVENDA_CUSTO_MINIMO)
           and (P.ATIVO is distinct from 'N')
           and (P.PODE_SER_VENDIDO = 'S')
}

{Relacionado também ao item anterior, temos o índice de afastamento, que mostra se existem muitos funcionários solicitando afastamento de suas funções por questões de saúde, familiares, dentre outras. Caso este índice seja muito alto, vale a pena buscar entender quais os motivos e investir em um trabalho com psicólogos e médicos que ajudem a minimizar estes números.}


//Produtos com finalizacao automatica na producao   ddfContador
{select count(1) as QUANT
     from PRODUTO P
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.TEM_PRODUCAO_FINALIZADA_NOENVIO = 'S')
           and (P.ATIVO is distinct from 'N')

}

{Outra métrica relacionada à área de manutenção do processo industrial é o Tempo de Inatividade.
O objetivo desse KPI é mensurar quanto tempo os equipamentos da fábrica ficaram sem funcionar.

Ele pode ser analisado em conjunto com o indicador de desempenho industrial anterior, o Tempo Médio para Reparo, pois estão intimamente ligados.

Afinal, se uma máquina demora muito para ser reparada, isso significa que o tempo de inatividade do processo industrial será maior.}


//Periodo por tipo    //GRAFICO
{select coalesce(PC.DESCRICAO, '<Sem Categoria>') as DESCRICAO, Count(1) as QUANT
from PRODUTO P
left join PRODUTO_tipo PC on (PC.CODIGO = P.CODPRODUTO_tipo)
where (P.ATIVO is distinct from 'N')
Group by 1
}

{Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.}


//Periodo por grupo   //GRAFICO
{select pg.descricao as Grupo, sum(pp.total) as QUANT from producao_produto pp
left join producao po on po.codigo = pp.codproducao
left join produto p on p.codigo = po.codproduto
left join produto_grupo pg on pg.codigo = p.codproduto_grupo
where po.tem_despesa = 'S'
group by 1
}
 {Esse é um KPI extremamente importante a se levar em conta em uma obra, visto que a cada 48 segundos acontece um acidente de trabalho no Brasil, o que deixa nosso país em quarto no ranking mundial. Essa sim é uma lista que precisamos nos manter sempre nas últimas posições.}
{$ENDREGION}

end;

procedure Produto_KPI_Produto_Tipo;
var
  QuerX: TFDQuery;
  ATotal,I: Integer;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' UPDATE KPI_DIA SET ATIVO = ''N'' ' +
                      ' WHERE (TABELA = ''PRODUTO'')AND ' +
                      '      (Competencia = :Competencia) ' ;
    QuerX.ParamByName('Competencia').AsDate := Competencia_Atual;
    QuerX.Execute;
  finally

  end;


  try
    QuerX.SQL.Text := ' select count(1) as Quantidade,PT.DESCRICAO AS Tipo '+
                      ' from PRODUTO P  '+
                      ' left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO) '+
                      ' where (P.ATIVO is distinct from ''N'') ' +
                      ' group by PT.DESCRICAO ' ;
    try;
      QuerX.Open;
      QuerX.First;
      ATotal:=0;
      I:=1;
      while not QuerX.Eof do
      begin
        ATotal :=  ATotal + QuerX.FieldByName('Quantidade').AsInteger;
//        KPI_Salvar_Menu(QuerX.FieldByName('Tipo').AsString,'PRODUTO', Tag_KPI_Menu_Produto_Tipo,I, I, ' '+ IntToStr(QuerX.FieldByName('Quantidade').AsInteger), Null, Null,Null, Null);
        QuerX.Next;
        Inc(I);
      end;

//      KPI_Salvar(FrmPrincipal.btnKPI_Produto.Name,Tag_KPI_Menu_Produto_Tipo, ' '+ IntToStr(ATotal), Null, Null,Null);
    except
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
  end;
end;

procedure Produto_KPI_Produto_Grupo;
var
  QuerX: TFDQuery;
  ATotal,I: Integer;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' UPDATE KPI_DIA SET ATIVO = ''N'' ' +
                      ' WHERE (TABELA = ''PRODUTO_GRUPO'')AND ' +
                      '      (Competencia = :Competencia) ' ;
    QuerX.ParamByName('Competencia').AsDate := Competencia_Atual;
    QuerX.Execute;
  finally

  end;

  try
    QuerX.SQL.Text := ' select count(1) as Quantidade,PT.DESCRICAO AS Tipo '+
                      ' from PRODUTO P  '+
                      ' left join PRODUTO_grupo PT on (PT.CODIGO = P.CODPRODUTO_grupo) '+
                      ' where (P.ATIVO is distinct from ''N'') ' +
                      ' group by PT.DESCRICAO ' ;
    try;
      QuerX.Open;
      QuerX.First;
      ATotal:=0;
      I:=1;
      while not QuerX.Eof do
      begin
        ATotal :=  ATotal + QuerX.FieldByName('Quantidade').AsInteger;
//        KPI_Salvar_Menu(QuerX.FieldByName('Tipo').AsString,'PRODUTO_GRUPO', Tag_KPI_Menu_Produto_Grupo,2,I,' '+ IntToStr(QuerX.FieldByName('Quantidade').AsInteger), Null, Null,Null, Null);
        QuerX.Next;
        Inc(I);
      end;

//      KPI_Salvar('BTNKPI_PRODUTO_GRUPO', Tag_KPI_Menu_Produto_Grupo,' '+ IntToStr(ATotal), Null, Null,Null);
    except
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
  end;
end;

procedure Produto_KPI_Produto_Categoria;
var
  QuerX: TFDQuery;
  ATotal,I: Integer;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' UPDATE KPI_DIA SET ATIVO = ''N'' ' +
                      ' WHERE (TABELA = ''PRODUTO_CATEGORIA'')AND ' +
                      '      (Competencia = :Competencia) ' ;
    QuerX.ParamByName('Competencia').AsDateTime := Competencia_Atual;
    QuerX.Execute;
  finally

  end;


  try
    QuerX.SQL.Text := ' select count(1) as Quantidade,PT.DESCRICAO AS Tipo '+
                      ' from PRODUTO P  '+
                      ' left join PRODUTO_CATEGORIA PT on (PT.CODIGO = P.CODPRODUTO_CATEGORIA) '+
                      ' where (P.ATIVO is distinct from ''N'') ' +
                      ' group by PT.DESCRICAO ' ;
    try;
      QuerX.Open;
      QuerX.First;
      ATotal:=0;
      I:=1;
      while not QuerX.Eof do
      begin
        ATotal :=  ATotal + QuerX.FieldByName('Quantidade').AsInteger;
//        KPI_Salvar_Menu(QuerX.FieldByName('Tipo').AsString,'PRODUTO_CATEGORIA', Tag_KPI_Menu_Produto_Categoria, 3,I,' '+ IntToStr(QuerX.FieldByName('Quantidade').AsInteger), Null, Null,Null, Null);
        QuerX.Next;
        Inc(I);
      end;

//      KPI_Salvar('BTNKPI_PRODUTO_CATEGORIA', Tag_KPI_Menu_Produto_Categoria,' '+ IntToStr(ATotal), Null, Null,Null, True);
    except
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
  end;
end;
{$ENDREGION}

{$REGION 'Estoque'}

procedure KPI_Execute_Estoque;
begin
  Estoque_KPI_Estoque_Tipo_de_Produto;

end;

procedure Estoque_KPI_Estoque_Tipo_de_Produto;
var
  QuerX: TFDQuery;
  AText1:String;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' select count(iif(P.STATUS <> ''Pendente'', 1, 0)) as Realizadas, '+
                      '       count(iif(P.STATUS = ''Pendente'', 1, 0)) as Pendentes '+
                      ' from PRODUTO_REQUISICAO P  '+
                      ' where p.Competencia = :Competencia ';

    QuerX.ParamByName('Competencia').AsDate := Competencia_Atual;
    try;
      QuerX.Open;
      AText1:='';
      if QuerX.FieldByName('Realizadas').AsInteger > 0 then  AText1 := AText1+' '+QuerX.FieldByName('Realizadas').AsString;
      if QuerX.FieldByName('Pendentes').AsInteger > 0 then   AText1 := AText1+' '+QuerX.FieldByName('Pendentes').AsString;
//    KPI_Salvar(FrmPrincipal.btnKPI_Producao.Name, Tag_KPI_Menu_Produto_Tipo, AText1, Null, Null,Null, True);
    except
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
  end;

end;

{$ENDREGION}

{$REGION 'RH'}

procedure KPI_Execute_RH;
begin
  RH_KPI_Funcionarios;
//  RH_KPI_Pessoas_Tipo;
end;

procedure RH_KPI_Funcionarios;
var
  QuerX: TFDQuery;
  ATotal: Integer;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := ' UPDATE KPI_DIA SET ATIVO = ''N'' ' +
                      ' WHERE (TABELA = ''PESSOAS_TIPO'')AND ' +
                      '      (Competencia = :Competencia) ' ;
    QuerX.ParamByName('Competencia').AsDate := Competencia_Atual;
    QuerX.Execute;
  finally

  end;
        
  try
    QuerX.SQL.Text := ' select count(1) as Quantidade '+ //,PT.DESCRICAO AS Tipo '+
                      ' from PESSOAS P  '+
//                      ' left join PESSOAS_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO) '+
                      ' where (P.ATIVO is distinct from ''N'')AND(P.IS_FUN =''S'' ) ';// +
                     // ' group by PT.DESCRICAO ' ;
    try;
      QuerX.Open;
     { QuerX.First;
      ATotal:=0;
      I:=1;
      while not QuerX.Eof do
      begin
        ATotal :=  ATotal + QuerX.FieldByName('Quantidade').AsInteger;
        KPI_Salvar_Menu(QuerX.FieldByName('Tipo').AsString,'PRODUTO',1,I,' '+ IntToStr(QuerX.FieldByName('Quantidade').AsInteger), Null, Null,Null);
        QuerX.Next;
        Inc(I);
      end;     }

//      KPI_Salvar(FrmPrincipal.btnKPI_RH.Name, Tag_KPI_Menu_Produto_Tipo,' '+ IntToStr(QuerX.FieldByName('Quantidade').AsInteger), Null, Null,Null, True);
    except
  //    raise Exception.Create('Erro ao buscar seguidores');
    end;
  finally
    QuerX.Free;
  end;
end;
{$ENDREGION}

{$REGION 'Financeiro'}

procedure KPI_Execute_Financeiro;
begin
  Financeiro_KPI_Ponto_de_Equilibrio; // GRAFICO, e no duplo clique mostar o histórico,
  Financeiro_KPI_Saldo_Contas_Caixas; // Descricao, Saldo anterior, movimentação, Saldo atual
  Financeiro_KPI_DRE;                 // Gerar os Itens
  Financeiro_KPI_Fluxo_de_Caixa;      // Mostar Quando vai faltar dinheiro na conta

{$REGION 'Comentário'}
//Saldo Conta(Nome) //GRAFICO
{

}
{ }

//Saldo de Todas as Contas Anterior
{

}
{ }

//Vendas
{
select Sum(Total)
  from FINANCEIRO F
     left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO)
     where (P.ATIVO is distinct from 'N')
           and (PT.CLASSIFICACAO <> 'SERVICO')

}
{ }

//Mensalidades
{
select Sum(MF.VALOR) as Quant
from MENSALIDADE M
from MENSALIDADE_FINANCEIRO MF (MF.CODMENSALIDADE = M.CODIGO)
where MES between :Dt_Inicio AND :Dt_Fim)

}
{ }

//Juros
{


}
{ }

//Compras
{


}
{ }

//Frete
{

}
{ }

//Comissões
{

}
{ }

//Folha de Pagamento
{

}
{ }

//Juros
{

}
{ }

//Saldo do dia
{

}
{ }

//Categoria de produto - Valores   //GRAFICO
{
select C.DESCRICAO, coalesce(sum(VP.total_relatorio), 0) as QUANT
from VENDA V
LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo
left join produto p on p.codigo = vp.codproduto
left join produto_categoria C on C.codigo = p.codproduto_CATEGORIA
where (V.ATIVO = 'S')and(V.IS_VENDA = 'S') and (v.CodEmpresa = :CodEmpresa)and
      (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and(v.NF_FINALIDADE = 1)
      and not(V.DT_FATURAMENTO is null)
group by 1
order by 1
}
{ }

//Tipo de produto - Quantidade   //GRAFICO
{
select pg.descricao as Grupo, sum(pp.total) as QUANT from producao_produto pp
left join producao po on po.codigo = pp.codproducao
left join produto p on p.codigo = po.codproduto
left join produto_grupo pg on pg.codigo = p.codproduto_grupo
where po.tem_despesa = 'S'
group by 1

}
{ }

//Metas diárias //GRAFICO
{
select DT_COMPETENCIA, coalesce(extract(day from v.DT_COMPETENCIA) || '/' || extract(month from v.DT_COMPETENCIA),'') as DESCRICAO, coalesce(sum(vp.total_relatorio), 0) as QUANT
from VENDA V
LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo
left join produto p on p.codigo = vp.codproduto
left join produto_categoria C on C.codigo = p.codproduto_CATEGORIA
where (V.ATIVO = 'S')and(V.IS_VENDA = 'S') and (v.CodEmpresa = :CodEmpresa)and
      (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and(v.NF_FINALIDADE = 1)
      and not(V.DT_FATURAMENTO is null) and (C.DESCRICAO = :Descricao)
group by 1, 2
order by 1

}
{ }
{$ENDREGION}
end;

procedure Financeiro_KPI_Ponto_de_Equilibrio;
begin

end;

procedure Financeiro_KPI_Saldo_Contas_Caixas;
begin

end;

procedure Financeiro_KPI_DRE;  // Gerar os Itens
begin

end;

procedure Financeiro_KPI_Fluxo_de_Caixa;  // Mostar Quando vai faltar dinheiro na conta
begin

end;

{$ENDREGION}

procedure Salva_KPI_Mes_e_Ano(ADataAPartirDe: TDateTime; ATransa: TFDCustomTransaction);
var
  QuerX, QuerY: TFDQuery;
  QuerKPI_Mes, QuerKPI_Ano: TFDQuery;
begin
  QuerX := GeraFDQuery(FConexao);
  QuerKPI_Mes := GeraFDQuery(ATransa);
  try
    try
      QuerX.SQL.Text := 'select cast(cast(k.competencia as date) - extract(day from cast(k.competencia as date)) + 1 as date) as competencia, ' +
                        'K.codusuario, ' +
                        'K.TABELA, ' +
                        'K.CHAVE_PK1, ' +
                        'K.CHAVE_PK2, ' +
                        'K.CHAVE_PK3, ' +
                        'K.DESCRICAO, ' +
                        'K.ATIVO, ' +
                        'K.TAG_KPI, ' +
                        'K.TIPO_KPI, ' +
                        'K.NIVEL, ' +
                        'K.PARENT, ' +
                        'cast(sum(cast(coalesce(replace(k.text1, '','', ''.''), 0) as float)) as numeric(15,2)) as text1, ' +
                        'cast(sum(cast(coalesce(replace(k.text2, '','', ''.''), 0) as float)) as numeric(15,2)) as text2, ' +
                        'cast(sum(cast(coalesce(replace(k.text3, '','', ''.''), 0) as float)) as numeric(15,2)) as text3, ' +
                        'cast(sum(cast(coalesce(replace(k.text4, '','', ''.''), 0) as float)) as numeric(15,2)) as text4 ' +
                        'from KPI_DIA K ' +
                        'where K.competencia >= cast(cast(:d as date) - extract(day from cast(:d as date)) + 1 as date) ' +
                        'group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12';
      QuerX.ParamByName('d').AsDateTime := ADataAPartirDe;
      QuerX.Open;
      QuerKPI_Mes.SQL.Text := 'SELECT * FROM KPI_MES';
      QuerKPI_Mes.Open;

      QuerX.First;
      while not QuerX.Eof do
      begin

        if QuerKPI_Mes.Locate('DESCRICAO;COMPETENCIA;CODUSUARIO', varArrayOf([QuerX.FieldByName('DESCRICAO').AsString,
                                                                              QuerX.FieldByName('COMPETENCIA').AsDateTime,
                                                                              QuerX.FieldByName('CODUSUARIO').AsInteger])) then
        begin
          QuerKPI_Mes.Edit;
        end
        else
        begin
          QuerKPI_Mes.Insert;
          QuerKPI_Mes.FieldByName('COMPETENCIA').AsDateTime   := QuerX.FieldByName('COMPETENCIA').AsDateTime;
          QuerKPI_Mes.FieldByName('CODUSUARIO').AsString      := QuerX.FieldByName('CODUSUARIO').AsString;
          QuerKPI_Mes.FieldByName('TABELA').AsString          := QuerX.FieldByName('TABELA').AsString;
          QuerKPI_Mes.FieldByName('CHAVE_PK1').AsInteger      := QuerX.FieldByName('CHAVE_PK1').AsInteger;
          QuerKPI_Mes.FieldByName('CHAVE_PK2').AsString       := QuerX.FieldByName('CHAVE_PK2').AsString;
          QuerKPI_Mes.FieldByName('CHAVE_PK3').AsString       := QuerX.FieldByName('CHAVE_PK3').AsString;
          QuerKPI_Mes.FieldByName('DESCRICAO').AsString       := QuerX.FieldByName('DESCRICAO').AsString;
          QuerKPI_Mes.FieldByName('ATIVO').AsString           := QuerX.FieldByName('ATIVO').AsString;
          QuerKPI_Mes.FieldByName('TAG_KPI').AsInteger        := QuerX.FieldByName('TAG_KPI').AsInteger;
          QuerKPI_Mes.FieldByName('TIPO_KPI').AsString        := QuerX.FieldByName('TIPO_KPI').AsString;
        end;
        QuerKPI_Mes.FieldByName('DT_ALTERACAO').AsDateTime    := DataHoraSys;
        QuerKPI_Mes.FieldByName('TEXT1').AsString             := QuerX.FieldByName('TEXT1').AsString;
        QuerKPI_Mes.FieldByName('TEXT2').AsString             := QuerX.FieldByName('TEXT2').AsString;
        QuerKPI_Mes.FieldByName('TEXT3').AsString             := QuerX.FieldByName('TEXT3').AsString;
        QuerKPI_Mes.FieldByName('TEXT4').AsString             := QuerX.FieldByName('TEXT4').AsString;
        QuerKPI_Mes.FieldByName('NIVEL').AsInteger            := QuerX.FieldByName('NIVEL').AsInteger;
        QuerKPI_Mes.FieldByName('PARENT').AsString            := QuerX.FieldByName('PARENT').AsString;
        QuerKPI_Mes.Post;

        QuerX.Next;
      end;
      Debug('Adicionou KPI_MES');

      // ===== ANO ===== //
      QuerY := GeraFDQuery(FConexao);
      QuerKPI_Ano := GeraFDQuery(ATransa);


      QuerY.Close;
      QuerY.SQL.Text := 'SELECT CAST(EXTRACT(YEAR FROM CAST(k.competencia AS DATE)) || ''-01-01'' AS DATE) AS competencia, ' +
                        'K.codusuario, ' +
                        'K.TABELA, ' +
                        'K.CHAVE_PK1, ' +
                        'K.CHAVE_PK2, ' +
                        'K.CHAVE_PK3, ' +
                        'K.DESCRICAO, ' +
                        'K.ATIVO, ' +
                        'K.TAG_KPI, ' +
                        'K.TIPO_KPI, ' +
                        'K.NIVEL, ' +
                        'K.PARENT, ' +
                        'cast(sum(cast(coalesce(replace(k.text1, '','', ''.''), 0) as float)) as numeric(15,2)) as text1, ' +
                        'cast(sum(cast(coalesce(replace(k.text2, '','', ''.''), 0) as float)) as numeric(15,2)) as text2, ' +
                        'cast(sum(cast(coalesce(replace(k.text3, '','', ''.''), 0) as float)) as numeric(15,2)) as text3, ' +
                        'cast(sum(cast(coalesce(replace(k.text4, '','', ''.''), 0) as float)) as numeric(15,2)) as text4 ' +
                        'FROM KPI_DIA K ' +
                        'WHERE K.competencia >= CAST(EXTRACT(YEAR FROM CAST(:d AS DATE)) || ''-01-01'' AS DATE) ' +
                        'GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12';
      QuerY.ParamByName('d').AsDateTime := ADataAPartirDe;
      QuerY.Open;
      QuerKPI_Ano.SQL.Text := 'SELECT * FROM KPI_ANO';
      QuerKPI_Ano.Open;

      QuerY.First;
      while not QuerY.Eof do
      begin

        if QuerKPI_Ano.Locate('DESCRICAO;COMPETENCIA;CODUSUARIO', varArrayOf([QuerY.FieldByName('DESCRICAO').AsString,
                                                                              QuerY.FieldByName('COMPETENCIA').AsDateTime,
                                                                              QuerY.FieldByName('CODUSUARIO').AsInteger]))
        then
        begin
          QuerKPI_Ano.Edit;
        end
        else
        begin
          QuerKPI_Ano.Insert;
          QuerKPI_Ano.FieldByName('COMPETENCIA').AsDateTime   := QuerY.FieldByName('COMPETENCIA').AsDateTime;
          QuerKPI_Ano.FieldByName('CODUSUARIO').AsString      := QuerY.FieldByName('CODUSUARIO').AsString;
          QuerKPI_Ano.FieldByName('TABELA').AsString          := QuerY.FieldByName('TABELA').AsString;
          QuerKPI_Ano.FieldByName('CHAVE_PK1').AsInteger      := QuerY.FieldByName('CHAVE_PK1').AsInteger;
          QuerKPI_Ano.FieldByName('CHAVE_PK2').AsString       := QuerY.FieldByName('CHAVE_PK2').AsString;
          QuerKPI_Ano.FieldByName('CHAVE_PK3').AsString       := QuerY.FieldByName('CHAVE_PK3').AsString;
          QuerKPI_Ano.FieldByName('DESCRICAO').AsString       := QuerY.FieldByName('DESCRICAO').AsString;
          QuerKPI_Ano.FieldByName('ATIVO').AsString           := QuerY.FieldByName('ATIVO').AsString;
          QuerKPI_Ano.FieldByName('TAG_KPI').AsInteger        := QuerY.FieldByName('TAG_KPI').AsInteger;
          QuerKPI_Ano.FieldByName('TIPO_KPI').AsString        := QuerY.FieldByName('TIPO_KPI').AsString;
        end;
        QuerKPI_Ano.FieldByName('DT_ALTERACAO').AsDateTime    := DataHoraSys;
        QuerKPI_Ano.FieldByName('TEXT1').AsString             := QuerY.FieldByName('TEXT1').AsString;
        QuerKPI_Ano.FieldByName('TEXT2').AsString             := QuerY.FieldByName('TEXT2').AsString;
        QuerKPI_Ano.FieldByName('TEXT3').AsString             := QuerY.FieldByName('TEXT3').AsString;
        QuerKPI_Ano.FieldByName('TEXT4').AsString             := QuerY.FieldByName('TEXT4').AsString;
        QuerKPI_Ano.FieldByName('NIVEL').AsInteger            := QuerY.FieldByName('NIVEL').AsInteger;
        QuerKPI_Ano.FieldByName('PARENT').AsString            := QuerY.FieldByName('PARENT').AsString;
        QuerKPI_Ano.Post;

        QuerY.Next;
      end;                                                                      Debug('Adicionou KPI_ANO');
    except
      on E:Exception do
        raise Exception.Create(E.Message);     // Não tem o que o usuário fazer aqui, só vou mostrar o erro e deixar ele puto, guarde em log
    end;
  finally
    QuerKPI_Ano.Free;
    QuerY.Free;
    QuerKPI_Mes.Free;
    QuerX.Free;
  end;
end;

procedure KPI_Salvar(ATransa: TFDCustomTransaction; QuerInsertOuEdit: TFDQuery; QuerDados: TFDQuery; AGroupIndex, AIndexInGroup: Integer);
begin
  exit;
  try
    if not QuerInsertOuEdit.Locate('DESCRICAO;COMPETENCIA;CODUSUARIO', varArrayOf([ QuerDados.FieldByName('Descricao').AsString,
                                                                                    QuerDados.FieldByName('DATA').AsDateTime,
                                                                                    QuerDados.FieldByName('CodUsuario').AsInteger]), []) then
    begin
      QuerInsertOuEdit.Insert;
      QuerInsertOuEdit.FieldByName('Descricao').AsString     := QuerDados.FieldByName('Descricao').AsString;
      QuerInsertOuEdit.FieldByName('Competencia').AsDateTime := QuerDados.FieldByName('DATA').AsDateTime;
      QuerInsertOuEdit.FieldByName('Tag_KPI').AsInteger      := QuerDados.FieldByName('Tag_KPI').AsInteger;
      QuerInsertOuEdit.FieldByName('Tabela').AsString        := QuerDados.FieldByName('Tabela').AsString;
      QuerInsertOuEdit.FieldByName('CodUsuario').AsInteger   := QuerDados.FieldByName('CodUsuario').AsInteger;
    end else
      QuerInsertOuEdit.Edit;
    QuerInsertOuEdit.FieldByName('GroupIndex').AsInteger     := AGroupIndex;
    QuerInsertOuEdit.FieldByName('IndexInGroup').AsInteger   := AIndexInGroup;
    QuerInsertOuEdit.FieldByName('Text1').AsString           := QuerDados.FieldByName('Text1').AsString;
    QuerInsertOuEdit.FieldByName('Text2').AsString           := QuerDados.FieldByName('Text2').AsString;
    QuerInsertOuEdit.FieldByName('Text3').AsString           := QuerDados.FieldByName('Text3').AsString;
    QuerInsertOuEdit.FieldByName('Text4').AsString           := QuerDados.FieldByName('Text4').AsString;
    QuerInsertOuEdit.FieldByName('CHAVE_PK1').Value          := QuerDados.FieldByName('CHAVE_PK1').Value;
    QuerInsertOuEdit.FieldByName('CHAVE_PK2').Value          := QuerDados.FieldByName('CHAVE_PK2').Value;
    QuerInsertOuEdit.FieldByName('CHAVE_PK3').Value          := QuerDados.FieldByName('CHAVE_PK3').Value;
    QuerInsertOuEdit.FieldByName('ATIVO').Value              := 'S';
    QuerInsertOuEdit.FieldByName('NIVEL').Value              := QuerDados.FieldByName('NIVEL').Value;
    QuerInsertOuEdit.FieldByName('Parent').Value             := QuerDados.FieldByName('Parent').Value;

    QuerInsertOuEdit.Post;
  except
    on E:Exception do
      raise Exception.Create(E.Message);
  end;
end;

{ TKPIDataSet }
procedure TKPIDataSet.AtualizarBancoDeDados(Sender: TObject);
var
  I: integer;
  Thread: TThread;
  DataSet, QuerX: TFDQuery;
begin
  DataSet := TFDQuery(Sender);
  QuerX := GeraFDQuery(DataSet.Transaction);
  QuerX.SQL.Text := 'SELECT * FROM KPI_DIA'; /// Aqui deveria ser por Competencia?
  QuerX.Open;

  while QuerX.state = dsOpening do
  begin
    Application.ProcessMessages;
    // Aqui pode travar pra sempre
    Continue;
  end;

  Thread := TThread.CreateAnonymousThread( procedure
  var
    I: integer;
  begin
//    FErro := False;
    I := 0;
    try
      DataSet.First;
      while not DataSet.Eof do
      begin
//        if FErro then
//          break;
        Competencia_Atual := DataSet.FieldByName('DATA').AsDateTime;
        KPI_Salvar(TFDQuery(DataSet).Transaction, QuerX, DataSet, I, I);
        I := I + 1;

        DataSet.Next;
      end;                                                                      Debug('Adicionou KPI_DIA');
    except
      raise Exception.Create('Deu erro na  AtualizarBancoDeDados');             Debug('Deu Erro KPI_DIA');          // Isso aqui vai dar erro pro usuário, e ele não tem oque fazer. Não mostrar
//      FErro := True;
    end;
    TThread.Synchronize(Thread,
    procedure
    begin
      DataSet.Active := False;                                                  Debug('Finalizou Evento');
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TKPIDataSet.DoAfterOpen;
begin
  inherited;
  AtualizarBancoDeDados(Self);
end;


end.
