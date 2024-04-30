inherited Painel_CentroCusto_Categoria: TPainel_CentroCusto_Categoria
  inherited pnlMes: TPanel
    Left = 416
    Top = 107
    ExplicitLeft = 416
    ExplicitTop = 107
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxGrid2: TcxGrid
      inherited cxGridDBTableView3: TcxGridDBTableView
        OnDblClick = cxGridDBTableView3DblClick
        Styles.ContentEven = cxStyle4
        Styles.ContentOdd = cxStyle5
        inherited cxGridDBColumn4: TcxGridDBColumn
          Visible = False
        end
        inherited cxGridDBColumn6: TcxGridDBColumn [1]
          Visible = False
        end
        inherited cxGridDBColumn5: TcxGridDBColumn [2]
          Visible = False
        end
        object cxGridDBTableView3icone: TcxGridDBColumn
          DataBinding.FieldName = 'icone'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = imgBase
          Properties.Items = <
            item
              ImageIndex = 6
              Value = 0
            end
            item
              ImageIndex = 7
              Value = 1
            end>
          Width = 21
          IsCaptionAssigned = True
        end
        object cxGridDBTableView3DESCRICAO: TcxGridDBColumn
          Caption = 'Compet'#234'ncia'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 67
        end
        object cxGridDBTableView3CREDITO: TcxGridDBColumn
          Caption = 'Cr'#233'dito'
          DataBinding.FieldName = 'CREDITO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 66
        end
        object cxGridDBTableView3DEBITO: TcxGridDBColumn
          Caption = 'D'#233'bito'
          DataBinding.FieldName = 'DEBITO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 68
        end
      end
    end
    inherited cxGrid3: TcxGrid
      Left = 317
      Width = 461
      ExplicitLeft = 317
      ExplicitWidth = 461
      inherited cxGridDBChartView2: TcxGridDBChartView
        DiagramColumn.Styles.Values = nil
        DiagramLine.Styles.Values = nil
        Legend.Alignment = cpaDefault
        inherited cxGridDBChartDataGroup2: TcxGridDBChartDataGroup
          DisplayText = 'Compet'#234'ncia'
        end
        inherited cxGridDBChartSeries2: TcxGridDBChartSeries
          Visible = False
        end
        object cxGridDBChartView2Series1: TcxGridDBChartSeries
          DataBinding.FieldName = 'DEBITO'
          DisplayText = 'D'#233'bito'
          Styles.Values = FrmPrincipal.cxStyle12
          ValueCaptionFormat = 'R$##,###,##0.00'
        end
        object cxGridDBChartView2Series2: TcxGridDBChartSeries
          DataBinding.FieldName = 'CREDITO'
          DisplayText = 'Cr'#233'dito'
          Styles.Values = FrmPrincipal.cxStyle16
          ValueCaptionFormat = 'R$##,###,##0.00'
        end
      end
    end
    inherited tcAgents: TdxTileControl
      Width = 301
      ExplicitWidth = 301
    end
    inherited dxTileBar1: TdxTileBar
      FocusedItem = dxTileBarItem7
      inherited dxTileBarItem5: TdxTileBarItem
        Text1.Value = 'D'#233'bito'
      end
      inherited dxTileBarItem6: TdxTileBarItem
        IndexInGroup = 4
        Style.BorderColor = 5605810
        Style.GradientBeginColor = 5605810
        Style.GradientEndColor = 5605810
        Text1.Value = 'Cr'#233'dito'
      end
      inherited dxTileBarItem7: TdxTileBarItem
        IndexInGroup = 1
        Style.BorderColor = 9866332
        Style.GradientBeginColor = 9866332
        Style.GradientEndColor = 9866332
        Text1.Value = 'Cr'#233'dito'
      end
      inherited dxTileBarItem8: TdxTileBarItem
        IndexInGroup = 2
      end
      inherited dxTileBar1dxTileBarItem1: TdxTileBarItem
        IndexInGroup = 3
      end
    end
    inherited pnDetailSite: TPanel
      ParentCtl3D = False
      StyleElements = [seFont, seClient]
      inherited tcTopoMes: TdxTileControl
        ExplicitWidth = 387
      end
      inherited tcTopoBtn: TdxTileControl
        ExplicitLeft = 387
        inherited dxTileControl3Item4: TdxTileControlItem
          Style.BorderColor = 550414645
          Style.GradientBeginColor = 550414645
          Style.GradientEndColor = 550414645
        end
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutItem6: TdxLayoutItem
      ControlOptions.OriginalWidth = 333
    end
    inherited dxLayoutItem12: TdxLayoutItem
      ControlOptions.OriginalWidth = 301
    end
    inherited GrupoTopo: TdxLayoutGroup
      ItemIndex = 1
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    inherited cxStyle2: TcxStyle
      Color = clBlue
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16314351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 4737096
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 4737096
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'with CENTROCUSTO as ('
      'select T.CODIGO, T.DESCRICAO,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((VP.TOTAL_RELATORIO / V.TOTAL) * 100) / 100)) as QUANT' +
        'CREDITO, 0 as QUANTDEBITO'
      'from FINANCEIRO F'
      'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO'
      'left join VENDA V on V.CODIGO = F.CODPEDIDO'
      'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODPEDIDO <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'RECEBIDA'#39', '#39'A RECEBER'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (VP.PARENT is null)'
      '     -- and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and V.ATIVO = '#39'S'#39
      '      and V.TOTAL > 0'
      'group by 1, 2'
      ''
      'union all'
      ''
      'select T.CODIGO, T.DESCRICAO, 0 as QUANTCREDITO,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((NEP.TOTAL_COMPRA / NE.TOTAL) * 100) / 100)) as QUANTD' +
        'EBITO'
      'from FINANCEIRO F'
      
        'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODNF' +
        '_ENTRADA'
      'left join NF_ENTRADA NE on NE.CODIGO = F.CODNF_ENTRADA'
      'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODNF_ENTRADA <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'PAGA'#39', '#39'A PAGAR'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (NEP.PARENT is null)'
      '      --and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and NE.ATIVO = '#39'S'#39
      '      and NE.TOTAL > 0'
      'group by 1, 2'
      'order by 1  )'
      
        'select CODIGO, DESCRICAO, SUM(QUANTDEBITO) as DEBITO, sum(QUANTC' +
        'REDITO) as CREDITO from CENTROCUSTO'
      'group by 1,2')
    ParamData = <
      item
        Name = 'DT_INICIO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object CadastropercMeta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percMeta'
      Calculated = True
    end
    object CadastroCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object Cadastronecessario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'necessario'
      Calculated = True
    end
    object Cadastroprojecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'projecao'
      Calculated = True
    end
    object Cadastromedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'media'
      Calculated = True
    end
    object Cadastrofalta: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'falta'
      Calculated = True
    end
    object CadastroDEBITO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      ProviderFlags = []
    end
    object CadastroCREDITO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      ProviderFlags = []
    end
  end
  inherited Cadastro_Analitico: TFDQuery
    OnCalcFields = Cadastro_AnaliticoCalcFields
    SQL.Strings = (
      'with CENTROCUSTO as ('
      'select F.DT_COMPETENCIA,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((VP.TOTAL_RELATORIO / V.TOTAL) * 100) / 100)) as QUANT' +
        'CREDITO, 0 as QUANTDEBITO'
      'from FINANCEIRO F'
      'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO'
      'left join VENDA V on V.CODIGO = F.CODPEDIDO'
      'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODPEDIDO <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'RECEBIDA'#39', '#39'A RECEBER'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (VP.PARENT is null)'
      '     -- and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and V.ATIVO = '#39'S'#39
      '      and V.TOTAL > 0'
      '      and (T.CODIGO = :CodTabela)'
      'group by 1'
      ''
      'union all'
      ''
      'select F.dt_competencia, 0 as QUANTCREDITO,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((NEP.TOTAL_COMPRA / NE.TOTAL) * 100) / 100)) as QUANTD' +
        'EBITO'
      'from FINANCEIRO F'
      
        'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODNF' +
        '_ENTRADA'
      'left join NF_ENTRADA NE on NE.CODIGO = F.CODNF_ENTRADA'
      'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODNF_ENTRADA <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'PAGA'#39', '#39'A PAGAR'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (NEP.PARENT is null)'
      '      --and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and NE.ATIVO = '#39'S'#39
      '      and NE.TOTAL > 0'
      '      and (T.CODIGO = :CodTabela)'
      'group by 1'
      'order by 1  )'
      
        'select dt_competencia as DESCRICAO, SUM(QUANTDEBITO) as DEBITO, ' +
        'sum(QUANTCREDITO) as CREDITO from CENTROCUSTO'
      'group by 1')
    ParamData = <
      item
        Name = 'DT_INICIO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'CODTABELA'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end>
    object Cadastro_AnaliticoDESCRICAO: TDateField
      FieldName = 'DESCRICAO'
      Origin = 'DT_COMPETENCIA'
    end
    object Cadastro_Analiticoicone: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'icone'
      Calculated = True
    end
    object Cadastro_AnaliticoDEBITO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO'
      Origin = 'DEBITO'
      ProviderFlags = []
    end
    object Cadastro_AnaliticoCREDITO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      ProviderFlags = []
    end
  end
  inherited Totalizador: TFDQuery
    SQL.Strings = (
      'with CENTROCUSTO as ('
      'select'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((VP.TOTAL_RELATORIO / V.TOTAL) * 100) / 100)) as QUANT' +
        'CREDITO, 0 as QUANTDEBITO'
      'from FINANCEIRO F'
      'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO'
      'left join VENDA V on V.CODIGO = F.CODPEDIDO'
      'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODPEDIDO <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'RECEBIDA'#39', '#39'A RECEBER'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (VP.PARENT is null)'
      '     -- and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and V.ATIVO = '#39'S'#39
      '      and V.TOTAL > 0'
      ''
      ''
      'union all'
      ''
      'select  0 as QUANTCREDITO,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((NEP.TOTAL_COMPRA / NE.TOTAL) * 100) / 100)) as QUANTD' +
        'EBITO'
      'from FINANCEIRO F'
      
        'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODNF' +
        '_ENTRADA'
      'left join NF_ENTRADA NE on NE.CODIGO = F.CODNF_ENTRADA'
      'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO'
      
        'left join PRODUTO_CATEGORIA T on T.codigo = p.CODPRODUTO_CATEGOR' +
        'IA'
      'where (F.CODNF_ENTRADA <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'PAGA'#39', '#39'A PAGAR'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (NEP.PARENT is null)'
      '      --and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and NE.ATIVO = '#39'S'#39
      '      and NE.TOTAL > 0'
      ''
      '  )'
      
        'select 1 as CODIGO, SUM(QUANTDEBITO) as DEBITO, sum(QUANTCREDITO' +
        ') as CREDITO from CENTROCUSTO'
      'group by 1')
    ParamData = <
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
  end
  inherited Mes: TFDQuery
    SQL.Strings = (
      ''
      'with CENTROCUSTO as ('
      'select F.DT_COMPETENCIA,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((VP.TOTAL_RELATORIO / V.TOTAL) * 100) / 100)) as QUANT' +
        'CREDITO, 0 as QUANTDEBITO'
      'from FINANCEIRO F'
      'left join VENDA_PRODUTO VP on VP.CODVENDA = F.CODPEDIDO'
      'left join VENDA V on V.CODIGO = F.CODPEDIDO'
      'left join PRODUTO P on P.CODIGO = VP.CODPRODUTO'
      'where (F.CODPEDIDO <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'RECEBIDA'#39', '#39'A RECEBER'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (VP.PARENT is null)'
      '     -- and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and V.ATIVO = '#39'S'#39
      '      and V.TOTAL > 0'
      'group by 1'
      ''
      'union all'
      ''
      'select F.dt_competencia, 0 as QUANTCREDITO,'
      
        '       sum((F.VALOR + coalesce(F.JUROS, 0) - coalesce(F.DESCONTO' +
        ', 0)) * (((NEP.TOTAL_COMPRA / NE.TOTAL) * 100) / 100)) as QUANTD' +
        'EBITO'
      'from FINANCEIRO F'
      
        'left join NF_ENTRADA_PRODUTOS NEP on NEP.CODNF_ENTRADA = F.CODNF' +
        '_ENTRADA'
      'left join NF_ENTRADA NE on NE.CODIGO = F.CODNF_ENTRADA'
      'left join PRODUTO P on P.CODIGO = NEP.CODPRODUTO'
      'where (F.CODNF_ENTRADA <> '#39'0'#39')'
      '      and (F.STATUS like '#39'ATIVO%'#39')'
      '      and (F.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)'
      '      and (F.tipo in ('#39'PAGA'#39', '#39'A PAGAR'#39'))'
      '      and (F.CODEMPRESA = :CodEmpresa)'
      '      and (NEP.PARENT is null)'
      '      --and not(P.CODPRODUTO_CATEGORIA is null)'
      '      and NE.ATIVO = '#39'S'#39
      '      and NE.TOTAL > 0'
      
        'group by 1                                                      ' +
        '                             --'
      'order by 1  )'
      
        'select EXTRACT(MONTH FROM DT_COMPETENCIA) as MES,  EXTRACT(YEAR ' +
        'FROM DT_COMPETENCIA) as ANO, 0 as META, 0 as CODMETA, 0 as QTDVE' +
        'NDA,  SUM(QUANTDEBITO) as DEBITO, sum(QUANTCREDITO) as FATURAMEN' +
        'TO from CENTROCUSTO'
      'group by 1,2'
      '')
    ParamData = <
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
  end
  inherited imgBase: TcxImageList
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
