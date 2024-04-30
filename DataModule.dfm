object DM: TDM
  OldCreateOrder = False
  Height = 709
  Width = 961
  object UCHistProduto: TUCHist_DataSet
    DataSet = Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 131
    Top = 38
  end
  object DSProduto: TDataSource
    DataSet = Produto
    Left = 200
    Top = 40
  end
  object DSProduto_Composicao: TDataSource
    DataSet = Produto_Composicao
    Left = 200
    Top = 88
  end
  object DSProduto_Centro_Trabalho: TDataSource
    DataSet = Produto_Centro_Trabalho
    Left = 200
    Top = 136
  end
  object DSProduto_Fornecedor: TDataSource
    DataSet = Produto_Fornecedor
    Left = 200
    Top = 184
  end
  object DSVenda_Produto: TDataSource
    DataSet = Venda_Produto
    Left = 216
    Top = 400
  end
  object DSVenda_Composicao: TDataSource
    DataSet = Venda_Composicao
    Left = 216
    Top = 456
  end
  object DSVenda_Produto_Custo_Adicional: TDataSource
    DataSet = Venda_Produto_Custo_Adicional
    Left = 216
    Top = 512
  end
  object UCVenda_Produto: TUCHist_DataSet
    DataSet = Venda_Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODVENDA'
    Left = 144
    Top = 432
  end
  object WRCalc: TWRCalculaConfiguracoes
    DSProduto = DSProduto
    DSComposicao = DSProduto_Composicao
    DSCentroTrabalho = DSProduto_Centro_Trabalho
    TipoCalculo = tcCadastro
    SPrTipoCalc = tssCalcCompra
    Left = 272
    Top = 40
  end
  object Produto: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      'select *'
      'from PRODUTO'
      'where (CODIGO = :Codigo)')
    Left = 64
    Top = 40
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
    object ProdutoPerimetro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Perimetro'
      Calculated = True
    end
    object ProdutoAreaQuadrada: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AreaQuadrada'
      Calculated = True
    end
    object ProdutoAreaCubica: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AreaCubica'
      Calculated = True
    end
  end
  object Produto_Composicao: TFDQuery
    AfterInsert = Produto_ComposicaoAfterInsert
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSProduto
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * '
      'from PRODUTO_COMPOSICAO'
      'where (CODPRODUTO_COMPOSICAO = :Codigo)')
    Left = 64
    Top = 88
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Produto_Centro_Trabalho: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSProduto
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from PRODUTO_CENTRO_TRABALHO'
      'WHERE CODPRODUTO = :Codigo')
    Left = 64
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Produto_Fornecedor: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    MasterSource = DSProduto
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from PRODUTO_FORNECEDOR'
      'where (CODPRODUTO = :Codigo)')
    Left = 64
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
  object Pessoas: TFDQuery
    SQL.Strings = (
      'select *'
      'from PESSOAS'
      'where (CODIGO = :Codigo)')
    Left = 408
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object DSPessoas: TDataSource
    DataSet = Pessoas
    Left = 456
    Top = 80
  end
  object UCHistPessoas: TUCHist_DataSet
    DataSet = Pessoas
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 523
    Top = 78
  end
  object Venda: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from VENDA'
      'where (CODIGO = :Codigo)')
    Left = 56
    Top = 351
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Venda_Produto: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from VENDA_PRODUTO')
    Left = 56
    Top = 398
  end
  object Venda_Composicao: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from VENDA_COMPOSICAO')
    Left = 56
    Top = 448
  end
  object Venda_Produto_Custo_Adicional: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from VENDA_PRODUTO_CUSTO_ADICIONAL')
    Left = 56
    Top = 504
  end
  object DSVenda: TDataSource
    DataSet = Venda
    Left = 216
    Top = 352
  end
  object UCVenda: TUCHist_DataSet
    DataSet = Venda
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Left = 144
    Top = 368
  end
  object DSNota_Fiscal_Produto: TDataSource
    DataSet = Nota_Fiscal_Produto
    Left = 512
    Top = 352
  end
  object DSNota_Fiscal_Financeiro: TDataSource
    DataSet = Nota_Fiscal_Financeiro
    Left = 504
    Top = 416
  end
  object UCHistNota_Fiscal_Produto: TUCHist_DataSet
    DataSet = Nota_Fiscal_Produto
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    CampoPK2 = 'CODNOTA_FISCAL'
    Left = 432
    Top = 352
  end
  object Nota_Fiscal: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL'
      'where (CODIGO = :Codigo)')
    Left = 352
    Top = 288
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Nota_Fiscal_Produto: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL_PRODUTO')
    Left = 352
    Top = 352
  end
  object Nota_Fiscal_Financeiro: TFDQuery
    Connection = DMBanco.Banco
    SQL.Strings = (
      'select *'
      'from NOTA_FISCAL_FINANCEIRO')
    Left = 344
    Top = 408
  end
  object DSNota_Fiscal: TDataSource
    DataSet = Nota_Fiscal
    Left = 512
    Top = 288
  end
  object UCHistNota_Fiscal: TUCHist_DataSet
    DataSet = Nota_Fiscal
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK1 = 'CODIGO'
    Left = 440
    Top = 288
  end
  object Produto_Tabela_Preco: TFDQuery
    ObjectView = False
    MasterSource = DSProduto
    MasterFields = 'CODIGO'
    DetailFields = 'CODPRODUTO'
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvEInsert, uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from PRODUTO_TABELA_PRECO'
      'where CODPRODUTO = :Codigo')
    Left = 65
    Top = 254
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
  end
  object DSProduto_Tabela_Preco: TDataSource
    DataSet = Produto_Tabela_Preco
    Left = 200
    Top = 254
  end
  object Configuracao_Componente_Nota_Fiscal: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      'Select * From Configuracao_componente'
      'WHERE (TABELA = '#39'PRODUTO'#39')and(ATIVO = '#39'S'#39')AND(PADRAO = '#39'N'#39')')
    Left = 719
    Top = 240
  end
end
