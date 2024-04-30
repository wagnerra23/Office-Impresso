unit wrFormataCampo;

interface

uses
  System.Classes, SysUtils, DateUtils, Db, FireDAC.Comp.Client, FireDAC.Stan.Option,
  FireDAC.Stan.Param, Forms, wrConstantes, cxCurrencyEdit;

procedure FormatarCampos(const ADataSet: TDataSet; const ATabela: string);

procedure FormatarEdit(const AFormato: string; const AEditCurr: TcxCustomCurrencyEdit);

procedure FieldCriaCampoCalculadoString(const ADataSet: TDataSet; const ANomeCampo: string;
  ATanhanho: Integer);

procedure FieldCriaCampoCalculadoFloat(const ADataSet: TDataSet; const ANomeCampo: string);

procedure DoFieldCriaCampoCalculado(const AFieldClass: TFieldClass; const ADataSet: TDataSet; const
  AFieldName: string; const ASize: Integer);

implementation

uses
  UnitFuncoes, StrUtils {$IFDEF COMERCIAL}, Classes.WR, wrFuncoes {$ENDIF};

procedure FormatarEdit(const AFormato: string; const AEditCurr: TcxCustomCurrencyEdit);
begin
  AEditCurr.Properties.DisplayFormat := AFormato;
end;

procedure FieldCriaCampoCalculadoString(const ADataSet: TDataSet; const ANomeCampo: string;
  ATanhanho: Integer);
begin
  DoFieldCriaCampoCalculado(TStringField, ADataSet, ANomeCampo, ATanhanho);
end;

procedure FieldCriaCampoCalculadoFloat(const ADataSet: TDataSet; const ANomeCampo: string);
begin
  DoFieldCriaCampoCalculado(TFloatField, ADataSet, ANomeCampo, 0);
end;

procedure DoFieldCriaCampoCalculado(const AFieldClass: TFieldClass; const ADataSet: TDataSet; const
  AFieldName: string; const ASize: Integer);
var
  AField: TField;
begin
  AField := ADataSet.FindField(AFieldName);
  if AField <> nil then
    Assert(AField.FieldKind = fkCalculated, 'O campo ' + AFieldName +
      ' DEVE ser do tipo Calculado no dataset ' + ADataSet.Name)
  else
  begin
    AField := AFieldClass.Create(ADataSet);
    AField.FieldKind := fkCalculated;
    AField.FieldName := AFieldName;
    AField.DataSet := ADataSet;
    if AFieldClass = TStringField then
      AField.Size := ASize;
  end;
end;

procedure FormatarCampos(const ADataSet: TDataSet; const ATabela: string);
var
  AAchouATabela: Boolean;

  procedure FieldFormatar(const ANomeCampo, AFormato: string);
  var
    AField: TField;
  begin
    try
      AField := ADataSet.FieldByName(ANomeCampo);
      Assert(AField.FieldKind = fkData, 'O campo ' + AField.FieldName + ' NÃO pode ser do tipo Calculado');
      TNumericField(AField).DisplayFormat := AFormato;
    except
      Assert(false, 'Não encontrou esse campo ' + ANomeCampo + '  Tabela : '+ ATabela);
    end;
  end;

  procedure FieldCalculadoFormatar(const ANomeCampo, AFormato: string);
  var
    AField: TField;
  begin
    AField := ADataSet.FieldByName(ANomeCampo);
    Assert(AField.FieldKind = fkCalculated, 'O campo ' + AField.FieldName + ' DEVE ser do tipo Calculado');
    TNumericField(AField).DisplayFormat := AFormato;
  end;

  procedure CampospadraoProduto;
  begin
    FieldFormatar('VALOR_COMPRA', DecimalFinanceiro);
    FieldFormatar('CUSTO', DecimalFinanceiro);
    FieldFormatar('MARGEM', DECIMAL_2PF);
    FieldFormatar('VALOR', DecimalFinanceiro);
    FieldFormatar('COMP', DecimalQuantidade);
    FieldFormatar('LARG', DecimalQuantidade);
    FieldFormatar('ESPESSURA', DecimalQuantidade);
    FieldFormatar('CALC_VATACADO', DecimalFinanceiro);
    FieldFormatar('CALC_VPRAZO', DecimalFinanceiro);
//    FieldFormatar('CALC_VPOR_PECA', DecimalFinanceiro);

    FieldFormatar('CALC_PCOMPRA_EXTRA', 'R$ ' + DecimalFinanceiro);
    FieldFormatar('CALC_VCOMPRA_EXTRA', 'R$ ' + DecimalFinanceiro);
    FieldFormatar('CALC_VCOMPRA_TOTAL', DecimalFinanceiro);
    FieldFormatar('CALC_PVENDA_EXTRA', DecimalFinanceiro);
    FieldFormatar('CALC_VVENDA_EXTRA', DecimalFinanceiro);

    FieldFormatar('CALC_VVENDA_CUSTO_MINIMO', DecimalFinanceiro);
    FieldFormatar('CALC_VVENDA_CUSTO', DecimalFinanceiro);
    FieldFormatar('CALC_VVENDA_CUSTO_TOTAL', DecimalFinanceiro);

    FieldFormatar('CALC_VENDA_MINIMO_VALOR', DecimalFinanceiro);
    FieldFormatar('CALC_VENDA_MINIMO_QUANT', DecimalQuantidade);

    FieldFormatar('CALC_PMARGEM_CONTRIBUICAO', DECIMAL_4PF);
    FieldFormatar('CALC_PDESC_ATACADO', DECIMAL_4PF);
    FieldFormatar('CALC_VLUCRO', 'R$ ' + DecimalFinanceiro);
    FieldFormatar('CALC_PLUCRO_DESEJADO', DECIMAL_4PF);
    FieldFormatar('CALC_PMARKUP',  DECIMAL_6F);
    FieldFormatar('CALC_QPESO_BRUTO', DECIMAL_3F + ' Kg');
    FieldFormatar('CALC_QPESO_LIQUIDO', DECIMAL_3F + ' Kg');
    FieldFormatar('ESTOQUE_MIN', DecimalQuantidade);
    FieldFormatar('ESTOQUE_MAX', DecimalQuantidade);

    FieldFormatar('CALC_VUNITARIO_DESC', DECIMAL_3);
    FieldFormatar('CALC_VUNITARIO_OUTRO', DECIMAL_3);
    FieldFormatar('CALC_VUNITARIO_FRETE', DECIMAL_3);
    FieldFormatar('CALC_VUNITARIO_LUCRO_DESEJADO', DECIMAL_3);

    FieldFormatar('VALOR_VENDA_MINIMO', DecimalFinanceiro);
    FieldFormatar('CALC_VVENDA_SUGERIDO', DecimalFinanceiro);

  end;

begin
  AAchouATabela := False;
  ADataSet.DisableControls;
  try
    if AnsiSameText(ATabela, 'BOLETOS') then
    begin
      AAchouATabela := True;
      FieldFormatar('TOTAL', DecimalFinanceiro);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('MULTA', DecimalFinanceiro);
      FieldFormatar('JUROS', DecimalFinanceiro);
      FieldFormatar('DIFERENCA', DecimalFinanceiro);  // Não tem na tabela
    end;

    if AnsiSameText(ATabela, 'NF_NCM') then
    begin
      AAchouATabela := True;
      FieldFormatar('ALIQ_NACIONAL', DECIMAL_4PF);
      FieldFormatar('ALIQ_IMPORTACAO', DECIMAL_4PF);
    end;

    {$REGION 'TFrmProduto - Cadastro do Produto /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'PRODUTO') then
    begin
      AAchouATabela := True;
      {  FieldCriaCampoCalculadoFloat('AreaCubica');
        FieldCriaCampoCalculadoFloat('AreaQuadrada');
        FieldCriaCampoCalculadoFloat('Perimetro');    }
        //Produto
      CamposPadraoProduto;

      FieldFormatar('DT_CADASTRO', DATA_SIMPLES);
    end;
    if AnsiSameText(ATabela, 'PRODUTO_COMPOSICAO') then
    begin
      AAchouATabela := True;
      FieldCalculadoFormatar('TotalPeso', DecimalQuantidade);
      FieldCalculadoFormatar('CustoUnit', DecimalFinanceiro);
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('ESPESSURA', DecimalQuantidade);
      FieldFormatar('COMP', DecimalQuantidade);
      FieldFormatar('LARG', DecimalQuantidade);
      FieldFormatar('QTDADEPECA', DecimalQuantidade);

      FieldFormatar('ESPESSURA_COMPOSICAO', DecimalQuantidade);
      FieldFormatar('COMP_COMPOSICAO', DecimalQuantidade);
      FieldFormatar('LARG_COMPOSICAO', DecimalQuantidade);
      FieldFormatar('QTDADEPECA_COMPOSICAO', DecimalQuantidade);

      FieldFormatar('VALOR', DecimalFinanceiro);
//      FieldFormatar('Total', DecimalFinanceiro);
//      FieldFormatar('TOTAL_COMPOSICAO', DecimalFinanceiro);
//      FieldFormatar('MARGEM', DECIMAL_4PF);
//      FieldFormatar('CUSTO', DecimalFinanceiro);
//      FieldFormatar('CUSTO_COMPOSICAO', DecimalFinanceiro);
//      FieldFormatar('QUANT_COMPOSICAO', DecimalQuantidade);
    end;
    if AnsiSameText(ATabela, 'PRODUTO_PRECO') then
    begin
      AAchouATabela := True;
      FieldCalculadoFormatar('Valor', DecimalFinanceiro);
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('De', DecimalQuantidade);
      FieldFormatar('PORCENTAGEM', DECIMAL_2P);
    end;
    if AnsiSameText(ATabela, 'HISTORICODECOMPRAS') then
    begin
      AAchouATabela := True;
      FieldFormatar('DATA', DATA_SIMPLES);
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('CUSTO_FABR', DecimalFinanceiro);
    end;
    if AnsiSameText(ATabela, 'HISTORICOVENDAS') then
    begin
      AAchouATabela := True;
      FieldFormatar('QUANT', DecimalQuantidade);
    end;
    if AnsiSameText(ATabela, 'MOVIMENTO_PRODUTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('VALOR', DecimalFinanceiro);
    end;
    if AnsiSameText(ATabela, 'PRODUTO_GRADE') then
    begin
      AAchouATabela := True;
      FieldFormatar('TOTAL_ESTOQUE', DecimalQuantidade);
      FieldFormatar('VALOR', DecimalFinanceiro);
    end;
    if AnsiSameText(ATabela, 'HISTORICOVENDAS') then
    begin
      AAchouATabela := True;
      FieldFormatar('QUANT', DecimalQuantidade);
    end;
    if AnsiSameText(ATabela, 'ESTOQUE_PRODUTO') then
    begin
      AAchouATabela := True;
      FieldCalculadoFormatar('EstoqueCalc', DecimalQuantidade);
      FieldFormatar('ESTOQUE', DecimalQuantidade);
      FieldCalculadoFormatar('ESTOQUECALC', DecimalQuantidade);
    end;
    if AnsiSameText(ATabela, 'CONSULTA_VENDA') then
    begin
      AAchouATabela := True;
      FieldFormatar('VDESC', DecimalFinanceiro);
      FieldFormatar('VOUTRO', DecimalFinanceiro);
      FieldFormatar('NF_VFRETE', DecimalFinanceiro);
      FieldFormatar('TOTAL', DECIMAL_2);
    end;
    if AnsiSameText(ATabela, 'CONSULTA_VENDA_PRODUTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('TOTAL', DECIMAL_2);
      FieldFormatar('COMP', DecimalQuantidade);
      FieldFormatar('LARG', DecimalQuantidade);
      FieldFormatar('ESPESSURA', DecimalQuantidade);
    end;

    if AnsiSameText(ATabela, 'PRODUTO_TABELA_PRECO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('PERC_DESCONTO', DECIMAL_2P);
    end;
    if AnsiSameText(ATabela, 'PRODUTO_MOVIMENTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('CUSTO_FABR', DecimalFinanceiro);
      FieldFormatar('CUSTO_VENDA_TOTAL', DecimalFinanceiro);
      FieldFormatar('QUANT', DecimalQuantidade);
    end;

    if AnsiSameText(ATabela, 'COMISSAO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR_COMISSAO', DecimalFinanceiro);
      FieldFormatar('SOMA_FINANCEIRO_EMABERTO', DecimalFinanceiro);
      FieldFormatar('SOMA_FINANCEIRO_VENCIDA', DecimalFinanceiro);
      FieldFormatar('SOMA_FINANCEIRO_QUITADA', DecimalFinanceiro);
    end;

    if AnsiSameText(ATabela, 'COMISSAO_FINANCEIRO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR_FRETE', DecimalFinanceiro);
      FieldFormatar('VALOR_EMABERTO', DecimalFinanceiro);
      FieldFormatar('VALOR_COMISSAO', DecimalFinanceiro);
      FieldFormatar('VALOR_COMISSAO_PENDENTE', DecimalFinanceiro);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('PERC_COMISSAO', '#,###,##0.####');
    end;
    if AnsiSameText(ATabela, 'NF_ENTRADA_MANIFESTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('NF_TOTAL', DECIMAL_2M);
    end;
    if AnsiSameText(ATabela, 'EQUIPAMENTO_RATEIO') then
    begin
      AAchouATabela := True;
      FieldFormatar('TOTAL', DECIMAL_2M);
    end;

    if AnsiSameText(ATabela, 'FINANCEIRO') then
    begin
      AAchouATabela := True;
      FieldFormatar('DESCONTO', DecimalFinanceiro);
      FieldFormatar('JUROS', DecimalFinanceiro);
      FieldFormatar('VALOR', DECIMAL_2M);
      FieldFormatar('TOTAL', DECIMAL_2M);
//  FinanceiroTotal.DisplayFormat := DecimalFinanceiro;
//  FinanceiroVALOR.DisplayFormat := DecimalFinanceiro;
//  Financeiro_AgrupadoVALOR.DisplayFormat := DecimalFinanceiro;
    end;

    {$REGION 'TFrmProduto_Grupo - Grupo de Produto /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'PRODUTO_GRUPO') then
    begin
      AAchouATabela := True;
      FieldFormatar('PICMS',            '##0.00');
      FieldFormatar('PICMSST',          '##0.00');
      FieldFormatar('PMVAST',           '##0.00');
      FieldFormatar('PREDBC',           '##0.00');
      FieldFormatar('PREDBCST',         '##0.00');
      FieldFormatar('PIS_PPIS',         '##0.00');
      FieldFormatar('COFINSST_PCOFINS', '##0.00');
      FieldFormatar('COFINS_PCOFINS',   '##0.00');
      FieldFormatar('PISST_PPIS',       '##0.00');
//      FieldFormatar('PCREDSN',          '##0.00');
      FieldFormatar('IPI_PIPI',         '##0.00');
      FieldFormatar('ISSQN_VALIQ',      '##0.00');
      FieldFormatar('II_PII',           '##0.00');
      FieldFormatar('II_PIOF',          '##0.00');
      FieldFormatar('SERVICO_ALIQUOTA', '##0.00');
    end;
    if AnsiSameText(ATabela, 'PRODUTO_GRUPO_IMPOSTOUF') then
    begin
      AAchouATabela := True;
      FieldFormatar('PFCP',            '##0.00');
      FieldFormatar('MVA',             '##0.00');
      FieldFormatar('PICMSST',         '##0.00');
      FieldFormatar('PICMS',           '##0.00');
      FieldFormatar('PREDBCST',        '##0.00');
      FieldFormatar('PREDMVA_SIMPLES', '##0.00');
    end;
    {$ENDREGION}

    {$REGION 'TFrmVenda - Venda /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'VENDA') then
    begin
      AAchouATabela := True;

      FieldFormatar('QUANTIDADE', DecimalQuantidade);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('TOTAL', DECIMAL_2);
      FieldFormatar('SUB_TOTAL', DECIMAL_2);
      FieldFormatar('TOTAL_PRODUTOS', DECIMAL_2);
      FieldFormatar('TOTAL_SERVICOS', DECIMAL_2);
      FieldFormatar('VDESC', DecimalFinanceiro);
      FieldFormatar('VOUTRO', DecimalFinanceiro);
      FieldFormatar('PDESC', DECIMAL_4F);
      FieldFormatar('POUTRO', DECIMAL_4F);

//      FieldFormatar('NF_VCOFINS', DECIMAL_2);
//      FieldFormatar('NF_VISS_ALIQ', DECIMAL_2P);

      FieldFormatar('NF_IPI_VIPI', DECIMAL_2F);
      FieldFormatar('NF_II_VII', DECIMAL_2F);
      FieldFormatar('NF_VICMS', DECIMAL_2F);
      FieldFormatar('NF_VBC', DECIMAL_2F);
      FieldFormatar('NF_PIS_VPIS', DECIMAL_2F);
      FieldFormatar('NF_VALORADUANEIRA', DECIMAL_2F);
      FieldFormatar('NF_RATEIO', DECIMAL_2F);
      FieldFormatar('NF_VFRETE', DECIMAL_2F);
      FieldFormatar('NF_VBCST', DECIMAL_2F);
      FieldFormatar('NF_VICMSST', DECIMAL_2F);
      FieldFormatar('NF_ISS_VISS', DECIMAL_2F);
      FieldFormatar('NF_ISS_VBC', DECIMAL_2F);
      FieldFormatar('NF_VSEG', DECIMAL_2F);
      FieldFormatar('NF_VCREDSN', DECIMAL_2);
      FieldFormatar('COMISSAO', DECIMAL_2F);
      FieldFormatar('COMISSAO_AGENCIA', DECIMAL_2F);
      FieldFormatar('COMISSAO_REPRESENTANTE', DECIMAL_2F);
      FieldFormatar('PERC_COMPARTILHADA', DECIMAL_2F);
      FieldFormatar('PERC_COMP_FUNCIONARIO', DECIMAL_2F);
      FieldFormatar('PERC_COMP_REPRESENTANTE', DECIMAL_2F);
      FieldFormatar('NF_VFCPUFDEST', DecimalFinanceiro);
      FieldFormatar('NF_VICMSUFDEST', DecimalFinanceiro);
      FieldFormatar('NF_VICMSUFREMET', DecimalFinanceiro);
    end;

    if AnsiSameText(ATabela, 'VENDA_PRODUTO') then
    begin
      AAchouATabela := True;
        //Produto
      CampospadraoProduto;
      FieldFormatar('QUANT', DecimalQuantidade);       // Não tem no cadastro
      FieldFormatar('TOTAL', DecimalFinanceiro);       // Não tem no cadastro
      FieldFormatar('QTDADEPECA', DecimalQuantidade);  // Não tem no cadastro
      FieldFormatar('VDESC', DecimalFinanceiro);
      FieldFormatar('VOUTRO', DecimalFinanceiro);
      FieldFormatar('VALOR_RELATORIO', DecimalFinanceiro);
      FieldFormatar('TOTAL_RELATORIO', DecimalFinanceiro);
      FieldFormatar('CALC_pDESC_MANUAL', DECIMAL_4F);
      FieldFormatar('CALC_pOUTRO_MANUAL', DECIMAL_4F);
      FieldFormatar('CALC_vDESC_MANUAL', DecimalFinanceiro);
      FieldFormatar('CALC_vOUTRO_MANUAL', DecimalFinanceiro);
      FieldFormatar('CALENDARIO_DT_PREVISAO_FIM', DATA_HORA_NS);
      FieldFormatar('CALC_QPESO_BRUTO_TOTAL', DECIMAL_3F + ' Kg');
      FieldFormatar('CALC_QPESO_LIQUIDO_TOTAL', DECIMAL_3F + ' Kg');

      FieldFormatar('NF_vCREDICMSSN', DECIMAL_2);
      FieldFormatar('NF_pCredSN', DECIMAL_4F);

      FieldFormatar('NF_pREDBCST', DECIMAL_2PF);
      FieldFormatar('NF_II_pII', DECIMAL_2PF);
      FieldFormatar('NF_II_VII', DECIMAL_2PF);
      FieldFormatar('NF_pFCUFDEST', DECIMAL_2PF);
      FieldFormatar('NF_pICMSUFDEST', DECIMAL_2PF);
      FieldFormatar('NF_pICMS', DECIMAL_2PF);
      FieldFormatar('NF_pICMSST', DECIMAL_2PF);
      FieldFormatar('NF_pICMSINTER', DECIMAL_2PF);
      FieldFormatar('NF_pICMSINTERPART', DECIMAL_2PF);
      FieldFormatar('NF_vBCUFDEST', DecimalFinanceiro);
      FieldFormatar('NF_vFCPUFDEST', DecimalFinanceiro);
      FieldFormatar('NF_vICMSUFDEST', DecimalFinanceiro);
      FieldFormatar('NF_vICMSUFREMET', DecimalFinanceiro);
        //Produto
      FieldFormatar('VEICULO_CILINDRADA', DECIMAL_4F);
      FieldFormatar('VEICULO_HP',         DECIMAL_4F);
      FieldFormatar('VEICULO_PASSAGEIROS',DECIMAL_4F);
    end;
    if AnsiSameText(ATabela, 'VENDA_FINANCEIRO') then
    begin
      AAchouATabela := True;
        //Venda_Financeiro
      FieldFormatar('VALOR', DECIMAL_2);
    end;

    if AnsiSameText(ATabela, 'VENDA_FINANCEIRO_TERCEIRIZADO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DECIMAL_2);
    end;

    if AnsiSameText(ATabela, 'AGRUPAMENTO_VENDA') then
    begin
      AAchouATabela := True;
      FieldFormatar('SUB_TOTAL', DECIMAL_2);
      FieldFormatar('TOTAL',     DECIMAL_2);
      FieldFormatar('VOUTRO',    DecimalFinanceiro);
      FieldFormatar('VDESC',     DecimalFinanceiro);
    end;

    {if AnsiSameText(ATabela, 'PRODUTO') then //ProdutoMemoria
      begin
        AAchouATabela:= True;
        FieldFormatar('COMP',         DecimalQuantidade);
        FieldFormatar('ESPESSURA',    DecimalQuantidade);
        FieldFormatar('LARG',         DecimalQuantidade);
        FieldFormatar('QUANT',        DecimalQuantidade);
        FieldFormatar('QTDADEPECA',   DecimalQuantidade);
    end; }
    {$ENDREGION}
    {$REGION 'TFrmNF_Entrada - Entrada /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'NF_Entrada') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR_NF_VAREJO', DECIMAL_2);
      FieldFormatar('TOTAL', DECIMAL_2);
      FieldFormatar('QUANTIDADE', DecimalQuantidade);
//      FieldFormatar('QTDADEPECA', DecimalQuantidade);
      FieldFormatar('QTDPARCELAS', DECIMAL_0);
      FieldFormatar('DIA_INTERVALO', DECIMAL_0);

//        FieldFormatar('VFRETE',             DecimalFinanceiro);
      FieldFormatar('NF_VBC', DecimalFinanceiro);
      FieldFormatar('NF_VICMS', DecimalFinanceiro);
      FieldFormatar('NF_VSEG', DecimalFinanceiro);

      FieldFormatar('NF_VFRETE', DecimalFinanceiro);
      FieldFormatar('NF_VICMSST', DecimalFinanceiro);


      FieldFormatar('NF_VBCST', DecimalFinanceiro);
      FieldFormatar('ICMS_SUB_VALOR', DecimalFinanceiro);
      FieldFormatar('NF_IPI_VIPI', DecimalFinanceiro);
      FieldFormatar('NF_PIS_VPIS', DecimalFinanceiro);
      FieldFormatar('NF_COFINS_vCOFINS', DecimalFinanceiro);
      FieldFormatar('VDESC', DecimalFinanceiro);
      FieldFormatar('VOUTRO', DecimalFinanceiro);
      FieldFormatar('VALOR_PRODUTOS', DecimalFinanceiro);

      FieldFormatar('NF_PESO_BRUTO',        DecimalQuantidade);
      FieldFormatar('NF_PESO_LIQUIDO',      DecimalQuantidade);
      FieldFormatar('VALOR_NF_VAREJO',   DecimalFinanceiro);


    end;
    if AnsiSameText(ATabela, 'NF_Entrada_Produtos') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR_COMPRA', DecimalFinanceiro);
      FieldFormatar('CUSTO', DecimalFinanceiro);
      FieldFormatar('MARGEM', DECIMAL_4PF);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('QUANT_COMPRA', DecimalQuantidade);
      FieldFormatar('TOTAL', DecimalFinanceiro);
//      FieldFormatar('QTDADEPECA', DecimalQuantidade);
//      FieldFormatar('COMP', DecimalQuantidade);
//      FieldFormatar('LARG', DecimalQuantidade);
//      FieldFormatar('ESPESSURA', DecimalQuantidade);

      FieldFormatar('QTDADEPECA_RENDIMENTO', DecimalQuantidade);
      FieldFormatar('COMP_RENDIMENTO', DecimalQuantidade);
      FieldFormatar('LARG_RENDIMENTO', DecimalQuantidade);
      FieldFormatar('ESPESSURA_RENDIMENTO', DecimalQuantidade);

      FieldFormatar('ESTOQUE_MIN', DecimalQuantidade);
      FieldFormatar('ESTOQUE_MAX', DecimalQuantidade);

      // Campo calculado deixar assim  todos cameçam com CALC_
//      FieldFormatar('CALC_VATACADO', DecimalFinanceiro);
//      FieldFormatar('CALC_VPRAZO', DecimalFinanceiro);
//      FieldFormatar('CALC_VPOR_PECA', DecimalFinanceiro);

      FieldFormatar('CALC_PCOMPRA_EXTRA', DECIMAL_4PF);
      FieldFormatar('CALC_VCOMPRA_EXTRA', DecimalFinanceiro);
      FieldFormatar('CALC_VCOMPRA_TOTAL', DecimalFinanceiro);
      FieldFormatar('CALC_PVENDA_EXTRA', DECIMAL_4PF);
      FieldFormatar('CALC_VVENDA_EXTRA', DecimalFinanceiro);

      FieldFormatar('CALC_VVENDA_CUSTO_MINIMO', DecimalFinanceiro);
      FieldFormatar('CALC_VVENDA_CUSTO', DecimalFinanceiro);
      FieldFormatar('CALC_VVENDA_CUSTO_TOTAL', DecimalFinanceiro);
      FieldFormatar('CALC_VENDA_MINIMO_VALOR', DecimalFinanceiro);
      FieldFormatar('CALC_VENDA_MINIMO_QUANT', DecimalFinanceiro);
      FieldFormatar('CALC_VANTERIOR_CUSTO', DecimalFinanceiro);
      FieldFormatar('CALC_QANTERIOR_ESTOQUE', DecimalQuantidade);
//      FieldFormatar('CALC_PDESC_ATACADO', DECIMAL_4PF);
      FieldFormatar('CALC_VDESC_MANUAL', DecimalFinanceiro);
      FieldFormatar('CALC_PDESC_MANUAL', DECIMAL_4PF);
      FieldFormatar('CALC_VOUTRO_MANUAL', DecimalFinanceiro);
      FieldFormatar('CALC_POUTRO_MANUAL', DECIMAL_4PF);
      FieldFormatar('CALC_PMARGEM_CONTRIBUICAO', DECIMAL_4PF);
      FieldFormatar('CALC_VLUCRO', DecimalFinanceiro);
      FieldFormatar('CALC_PLUCRO_DESEJADO', DECIMAL_4PF);
      FieldFormatar('CALC_PMARKUP', DecimalFinanceiro);
      FieldFormatar('CALC_QPESO_BRUTO',DecimalQuantidade);
      FieldFormatar('CALC_QPESO_LIQUIDO',DecimalQuantidade);
//      FieldFormatar('CALC_VUNITARIO_LUCRO_DESEJADO', DecimalFinanceiro);

      FieldFormatar('VDESC', DecimalFinanceiro);
      FieldFormatar('PDESC', DECIMAL_4P);
      FieldFormatar('POUTRO', DECIMAL_4P);
      FieldFormatar('VOUTRO', DecimalFinanceiro);

      // Campos referêntes a Compra
      FieldFormatar('NF_IPI_VIPI', DECIMAL_2F);
      FieldFormatar('NF_II_VII', DECIMAL_2F);
      FieldFormatar('NF_VFRETE', DECIMAL_2F);
      FieldFormatar('NF_VICMSST', DECIMAL_2F);

      FieldFormatar('NF_PFRETE', DECIMAL_4PF);
      FieldFormatar('NF_VFRETE', DecimalFinanceiro);
      FieldFormatar('NF_PICMS', DECIMAL_4PF);
      FieldFormatar('NF_VICMS', DecimalFinanceiro);
      FieldFormatar('NF_PICMSST', DECIMAL_4PF);
      FieldFormatar('NF_VICMSST', DecimalFinanceiro);
      FieldFormatar('NF_PMVA', DECIMAL_4PF);
      FieldFormatar('NF_IPI_PIPI', DECIMAL_4PF);
      FieldFormatar('NF_IPI_VIPI', DecimalFinanceiro);
      FieldFormatar('NF_PSEG', DECIMAL_4PF);
      FieldFormatar('NF_VSEG', DecimalFinanceiro);
      FieldFormatar('NF_PIS_VBC', DecimalFinanceiro);
      FieldFormatar('NF_PIS_PPIS', DECIMAL_4PF);
      FieldFormatar('NF_PIS_VPIS', DecimalFinanceiro);
      FieldFormatar('NF_PISST_VBC', DecimalFinanceiro);
      FieldFormatar('NF_PISST_PPIS', DECIMAL_4PF);
      FieldFormatar('NF_PISST_VPIS', DecimalFinanceiro);
      FieldFormatar('NF_COFINS_VBC', DecimalFinanceiro);
      FieldFormatar('NF_COFINS_PCOFINS', DECIMAL_4PF);
      FieldFormatar('NF_COFINS_VCOFINS', DecimalFinanceiro);
      FieldFormatar('NF_COFINSST_VBC', DecimalFinanceiro);
      FieldFormatar('NF_COFINSST_PCOFINS', DECIMAL_4PF);
      FieldFormatar('NF_COFINSST_VCOFINS', DecimalFinanceiro);

      // Campos veículos que ainda não estão na tela
      //FieldFormatar('VEICULO_CILINDRADA', DECIMAL_4F);
      //FieldFormatar('VEICULO_HP',         DECIMAL_4F);
      //FieldFormatar('VEICULO_PASSAGEIROS',DECIMAL_4F);
    end;
    if AnsiSameText(ATabela, 'NF_Entrada_Parcelas') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('JUROS', DecimalFinanceiro);
      FieldFormatar('DESCONTO', DecimalFinanceiro);
      FieldCalculadoFormatar('Total', DecimalFinanceiro);
    end;
    if AnsiSameText(ATabela, 'NF_Entrada_Produtos_Afetados') then
    begin
      AAchouATabela := True;
      FieldFormatar('CUSTO_ANTERIOR', DecimalFinanceiro);
      FieldFormatar('VALOR_ANTERIOR', DecimalFinanceiro);
      FieldFormatar('CUSTO', DecimalFinanceiro);
      FieldFormatar('VALOR', DecimalFinanceiro);
    end;

    {$ENDREGION}
    {$REGION 'TFrmRateio - Rateio /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'RATEIO_ANTIFURTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DECIMAL_2M);
      FieldFormatar('VALOR_COTA', DECIMAL_8M);
      FieldFormatar('TOTAL', DECIMAL_2M);
    end;
    if AnsiSameText(ATabela, 'FINANCEIRO_ANTIFURTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DECIMAL_2M);
      FieldCalculadoFormatar('Total', DECIMAL_2M);
    end;
    {$ENDREGION}
    {$REGION 'TFrmCondicaoPagto - Condição de Pagamento'}
    if AnsiSameText(ATabela, 'CONDICAOPAGTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('PERC_ENTRADA', DECIMAL_2P);
      FieldFormatar('DESCONTO_ACRESCIMO', DECIMAL_2P);
    end;
    {$ENDREGION}
    {$REGION 'TFrmContas - Cadastro de Contas /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'CONTAS') then
    begin
      AAchouATabela := True;
      FieldFormatar('LIMITE', DecimalFinanceiro);
      FieldFormatar('SALDO', DecimalFinanceiro);
      FieldFormatar('MULTA', DecimalFinanceiro);
      FieldFormatar('JUROS', DecimalFinanceiro);
    end;
    {$ENDREGION}
    {$REGION 'TFrmPessoas - Cadastro de Pessoas /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'CLIENTES_PRODUTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('PRODUTO_VALOR', DecimalFinanceiro);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('PERC_DESCONTO', DECIMAL_2P);
    end;
    {$ENDREGION}

    {$REGION 'TFrmProducao - Producao /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'PRODUCAO') then
    begin
      AAchouATabela := True;
      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('LARG', DecimalQuantidade);
      FieldFormatar('COMP', DecimalQuantidade);
      FieldFormatar('ESPESSURA', DecimalQuantidade);
      FieldFormatar('TEMPO', DecimalQuantidade);
      FieldFormatar('QUANT_PRODUZIR', DecimalQuantidade);
    end;

    if AnsiSameText(ATabela, 'PRODUCAO_PRODUTO') then
    begin
      AAchouATabela := True;
      FieldFormatar('COMP', DecimalQuantidade);
      FieldFormatar('LARG', DecimalQuantidade);
      FieldFormatar('ESPESSURA', DecimalQuantidade);
      FieldFormatar('QTDADEPECA', DecimalQuantidade);

      FieldFormatar('QUANT', DecimalQuantidade);
      FieldFormatar('QUANT_PREVISTA', DecimalQuantidade);
    end;
    {$ENDREGION}

    {$REGION 'TFrmMensalidade - Mensalidade /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'MENSALIDADE_FINANCEIRO') then
    begin
      AAchouATabela := True;
      FieldFormatar('Total', DecimalFinanceiro);
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('DESCONTO_ACRESCIMO', DecimalFinanceiro);
    end;
    {$ENDREGION}

    {$REGION 'TFrmConciliacao_Bancaria - Conciliacao_Bancaria /////////////////////////////////////////////////////////////////////////'}
    if AnsiSameText(ATabela, 'CONCILIACAO_BANCARIA') then
    begin
      AAchouATabela := True;
      FieldFormatar('BALANCO_INICIAL', DecimalFinanceiro);
      FieldFormatar('BALANCO_FINAL', DecimalFinanceiro);
    end;

    if AnsiSameText(ATabela, 'CONCILIACAO_BANCARIA_FINANCEIRO') then
    begin
      AAchouATabela := True;
      FieldFormatar('VALOR', DecimalFinanceiro);
      FieldFormatar('FINVALOR', DecimalFinanceiro);
    end;
    {$ENDREGION}


  finally
    ADataSet.EnableControls;
  end;

  Assert(AAchouATabela, 'Atenção Programador!! Não foi tratado a tabela "' + ADataSet.Name +
    '" para formatar os campos na rotina FormatarCampos');
end;

end.

