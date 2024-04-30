object DMRelatorios: TDMRelatorios
  OldCreateOrder = False
  Height = 418
  Width = 458
  object frxDados: TfrxDBDataset
    UserName = 'Dados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'DESCRICAO=DESCRICAO'
      'ESTOQUE=ESTOQUE'
      'SaldoInicial=SaldoInicial'
      'SaldoFinal=SaldoFinal'
      'Entrada=Entrada'
      'Saida=Saida')
    DataSet = Produto
    BCDToCurrency = False
    Left = 76
    Top = 8
  end
  object Produto: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = ProdutoBeforeOpen
    OnCalcFields = ProdutoCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT P.CODIGO, P.DESCRICAO, PE.ESTOQUE'
      'FROM PRODUTO P'
      'LEFT JOIN PRODUTO_ESTOQUE PE ON (P.CODIGO = PE.CODPRODUTO)'
      'WHERE PE.CODEMPRESA = :CODEMPRESA'
      ''
      ''
      ''
      ''
      'GROUP BY P.CODIGO, P.DESCRICAO, PE.ESTOQUE'
      'ORDER BY P.DESCRICAO')
    Left = 160
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codempresa'
        ParamType = ptUnknown
      end>
    object ProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PRODUTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object ProdutoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PRODUTO"."DESCRICAO"'
      Size = 300
    end
    object ProdutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"PRODUTO_ESTOQUE"."ESTOQUE"'
    end
    object ProdutoSaldoInicial: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoInicial'
      Calculated = True
    end
    object ProdutoSaldoFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoFinal'
      Calculated = True
    end
    object ProdutoEntrada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Entrada'
      Calculated = True
    end
    object ProdutoSaida: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saida'
      Calculated = True
    end
  end
  object IBQuery1: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PESSOAS')
    Left = 160
    Top = 96
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = IBQuery1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 243
    Top = 96
  end
  object CDSEntSai: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT CODPRODUTO, TIPO_MOVIMENTO, SUM(QUANT) AS SUMQUANT FROM P' +
      'RODUTO_MOVIMENTO'#13#10'WHERE ((DATA >= :DtInicio) AND (DATA <= :DtFim' +
      '))'#13#10'AND (CODEMPRESA = :CodEmpresa)'#13#10'AND ((STATUS IS NULL) OR (ST' +
      'ATUS <>'#39'CANCELADO'#39'))'#13#10'GROUP BY CODPRODUTO, TIPO_MOVIMENTO'
    Params = <
      item
        DataType = ftUnknown
        Name = 'DtInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CodEmpresa'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 8
  end
  object CDSSaldoInicial: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT CODPRODUTO, TIPO_MOVIMENTO, SUM(QUANT) AS SUMQUANT FROM P' +
      'RODUTO_MOVIMENTO'#13#10'WHERE (DATA >= :DtInicio)'#13#10'AND (CODEMPRESA = :' +
      'CodEmpresa)'#13#10'AND ((STATUS IS NULL) OR (STATUS <>'#39'CANCELADO'#39'))'#13#10'G' +
      'ROUP BY CODPRODUTO, TIPO_MOVIMENTO'
    Params = <
      item
        DataType = ftUnknown
        Name = 'DtInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CodEmpresa'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 52
  end
  object CDSSaldoFinal: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT CODPRODUTO, TIPO_MOVIMENTO, SUM(QUANT) AS SUMQUANT FROM P' +
      'RODUTO_MOVIMENTO'#13#10'WHERE (DATA >= :DtFim)'#13#10'AND (CODEMPRESA = :Cod' +
      'Empresa)'#13#10'AND ((STATUS IS NULL) OR (STATUS <>'#39'CANCELADO'#39'))'#13#10'GROU' +
      'P BY CODPRODUTO, TIPO_MOVIMENTO'
    Params = <
      item
        DataType = ftUnknown
        Name = 'DtFim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CodEmpresa'
        ParamType = ptUnknown
      end>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 96
  end
  object CdsFornecedor: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PESSOAS'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 140
  end
  object DSGradeProdutos: TDataSource
    DataSet = GradeProdutos
    Left = 244
    Top = 208
  end
  object GradeProdutos: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT coalesce(P.CODFAMILIA, '#39'0'#39') as familia, MIN(P.DESCRICAO) ' +
        'AS DESCRICAO'
      'FROM VENDA_PRODUTO VP'
      'LEFT JOIN PRODUTO P '
      '  ON (VP.CODPRODUTO = P.CODIGO)'
      'LEFT JOIN VENDA V'
      '  ON (V.CODIGO = VP.CODVENDA)'
      'WHERE (V.DT_FATURAMENTO BETWEEN :DtInicial AND :DtFinal)'
      'AND (VP.QUANT > 0)'
      'AND NOT (P.DESCRICAO IS NULL)'
      'group by p.codfamilia'
      ' ')
    Left = 160
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DtInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFinal'
        ParamType = ptUnknown
      end>
  end
  object GradeFamilia: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BeforeOpen = GradeFamiliaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DSGradeProdutos
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT COALESCE(P.TAMANHO,'#39'0'#39') as TAMANHO, SUM(coalesce(VP.QUANT' +
        ', 0))AS QUANTIDADE'
      'FROM VENDA_PRODUTO VP'
      'LEFT JOIN PRODUTO P '
      '  ON (VP.CODPRODUTO = P.CODIGO)'
      'LEFT JOIN VENDA V '
      '  ON (V.CODIGO = VP.CODVENDA)'
      'WHERE (V.DT_FATURAMENTO BETWEEN :DtInicial AND :DtFinal)'
      'AND (P.CODFAMILIA = :Familia)'
      'AND (VP.QUANT > 0)'
      'GROUP BY P.TAMANHO;'
      ' ')
    Left = 161
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DtInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtFinal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Familia'
        ParamType = ptUnknown
      end>
  end
  object frxGradeFamilia: TfrxDBDataset
    UserName = 'GradeFamilia'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TAMANHO=TAMANHO'
      'QUANTIDADE=QUANTIDADE')
    DataSet = GradeFamilia
    BCDToCurrency = False
    Left = 76
    Top = 260
  end
  object frxGradeProdutos: TfrxDBDataset
    UserName = 'GradeProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FAMILIA=FAMILIA'
      'DESCRICAO=DESCRICAO')
    DataSet = GradeProdutos
    BCDToCurrency = False
    Left = 76
    Top = 208
  end
  object Funcionario: TIBQuery
    Database = FrmPrincipal.CONECTAR
    Transaction = FrmPrincipal.Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PESSOAS'
      'WHERE (CODIGO = :CodFuncionario)')
    Left = 159
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CodFuncionario'
        ParamType = ptUnknown
      end>
  end
  object frxFuncionario: TfrxDBDataset
    UserName = 'Funcionario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'CARGO=CARGO'
      'COMISSAO=COMISSAO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CODCIDADE=CODCIDADE'
      'CEP=CEP'
      'UF=UF'
      'FONE=FONE'
      'CELULAR=CELULAR'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'AVALIACAO=AVALIACAO'
      'OBSERVACAO=OBSERVACAO'
      'ATIVO=ATIVO'
      'NUMERO=NUMERO'
      'PLACA=PLACA'
      'SALARIO=SALARIO'
      'CODBANCO=CODBANCO'
      'PENSAO_AGENCIA=PENSAO_AGENCIA'
      'PENSAO_CODBANCO=PENSAO_CODBANCO'
      'AGENCIA=AGENCIA'
      'PENSAO_BENEFICIARIO=PENSAO_BENEFICIARIO'
      'RESERVISTA_CARTEIRA=RESERVISTA_CARTEIRA'
      'RESERVISTA_CATEGORIA=RESERVISTA_CATEGORIA'
      'RESERVISTA_SERIE=RESERVISTA_SERIE'
      'NUMERO_REGISTRO=NUMERO_REGISTRO'
      'PROFISSIONAL_CARTEIRA=PROFISSIONAL_CARTEIRA'
      'PROFISSIONAL_SERIE=PROFISSIONAL_SERIE'
      'PROFISSIONAL_UF=PROFISSIONAL_UF'
      'PROFISSIONAL_PIS=PROFISSIONAL_PIS'
      'PROFISSIONAL_DT_EMISSAO=PROFISSIONAL_DT_EMISSAO'
      'NASCIMENTO_DT=NASCIMENTO_DT'
      'ESTADO_CIVIL=ESTADO_CIVIL'
      'NACIONALIDADE=NACIONALIDADE'
      'GRAU_INSTRUCAO=GRAU_INSTRUCAO'
      'INSCIDENT=INSCIDENT'
      'INSCIDENT_ORGAO=INSCIDENT_ORGAO'
      'INSCIDENT_UF=INSCIDENT_UF'
      'INSCIDENT_DATA=INSCIDENT_DATA'
      'CNPJCPF=CNPJCPF'
      'TITULO_N=TITULO_N'
      'TITULO_ZONA=TITULO_ZONA'
      'TITULO_SECAO=TITULO_SECAO'
      'DATA_ADMISSAO=DATA_ADMISSAO'
      'CONTRATO=CONTRATO'
      'DIAS=DIAS'
      'TIPO=TIPO'
      'PAGAMENTO=PAGAMENTO'
      'DATA_FGTS=DATA_FGTS'
      'CONTA=CONTA'
      'PENSAO_CONTA=PENSAO_CONTA'
      'SINDICATO=SINDICATO'
      'HABILITACAO_N=HABILITACAO_N'
      'HABILITACAO_CATEGORIA=HABILITACAO_CATEGORIA'
      'HABILITACAO_VALIDADE=HABILITACAO_VALIDADE'
      'HABILITACAO_CODCIDADE=HABILITACAO_CODCIDADE'
      'PENSAO=PENSAO'
      'NASCIMENTO_CODCIDADE=NASCIMENTO_CODCIDADE'
      'CODEMPRESA=CODEMPRESA'
      'MAE=MAE'
      'PAI=PAI'
      'NASCIMENTO_UF=NASCIMENTO_UF'
      'DEMISSAO_DT=DEMISSAO_DT'
      'DEMISSAO_MOTIVO=DEMISSAO_MOTIVO'
      'DEMISSAO_OBSERVACAO=DEMISSAO_OBSERVACAO'
      'DATA_CONTRATO1=DATA_CONTRATO1'
      'DATA_CONTRATO2=DATA_CONTRATO2'
      'CODAGENDA1=CODAGENDA1'
      'CODAGENDA2=CODAGENDA2'
      'PROXIMIDADE=PROXIMIDADE')
    DataSet = Funcionario
    BCDToCurrency = False
    Left = 72
    Top = 352
  end
  object CdsFuncionario: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PESSOAS'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 336
    Top = 188
  end
  object WREventosCadastro1: TWREventosCadastro
    OnPreencheVariaveisImpressaoPersonalizada = WREventosCadastro1PreencheVariaveisImpressaoPersonalizada
    Versao_Configuracao = 0
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 304
    Top = 280
  end
end
