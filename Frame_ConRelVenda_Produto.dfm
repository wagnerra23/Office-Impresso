inherited Frame_ConsuRelVenda_Produto: TFrame_ConsuRelVenda_Produto
  Height = 722
  ExplicitHeight = 722
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 722
    ExplicitHeight = 722
    inherited GridConsulta: TcxGrid
      Height = 661
      ExplicitHeight = 661
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1CODVENDA: TcxGridDBColumn
          Caption = 'C'#243'd. Venda'
          DataBinding.FieldName = 'CODVENDA'
        end
        object GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'CODPRODUTO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'C'#243'd. Produto'
          DataBinding.FieldName = 'DESCRICAO'
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
        end
        object GridConsultaDBTableView1QUANT: TcxGridDBColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
        end
        object GridConsultaDBTableView1CUSTO: TcxGridDBColumn
          Caption = 'Custo'
          DataBinding.FieldName = 'CUSTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridConsultaDBTableView1MARGEM: TcxGridDBColumn
          Caption = 'Margem'
          DataBinding.FieldName = 'MARGEM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '%,0.00;-%,0.00'
          Visible = False
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridConsultaDBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object GridConsultaDBTableView1TOTAL_RELATORIO: TcxGridDBColumn
          Caption = 'Total Relat'#243'rio'
          DataBinding.FieldName = 'TOTAL_RELATORIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridConsultaDBTableView1VALOR_RELATORIO: TcxGridDBColumn
          Caption = 'Valor Relat'#243'rio'
          DataBinding.FieldName = 'VALOR_RELATORIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
        end
        object GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn
          Caption = 'Qtda. Pe'#231'a'
          DataBinding.FieldName = 'QTDADEPECA'
          Visible = False
        end
        object GridConsultaDBTableView1LARG: TcxGridDBColumn
          Caption = 'Larg'
          DataBinding.FieldName = 'LARG'
          Visible = False
        end
        object GridConsultaDBTableView1COMP: TcxGridDBColumn
          Caption = 'Comp'
          DataBinding.FieldName = 'COMP'
          Visible = False
        end
        object GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn
          Caption = 'Espessura'
          DataBinding.FieldName = 'ESPESSURA'
          Visible = False
        end
        object GridConsultaDBTableView1CODIGOEAN: TcxGridDBColumn
          Caption = 'C'#243'd. EAN'
          DataBinding.FieldName = 'CODIGOEAN'
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO_FABR: TcxGridDBColumn
          Caption = 'Custo Fabr.'
          DataBinding.FieldName = 'CUSTO_FABR'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VOUTRO_MANUAL: TcxGridDBColumn
          Caption = 'Acrescimo Manual'
          DataBinding.FieldName = 'CALC_VOUTRO_MANUAL'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VDESC_MANUAL: TcxGridDBColumn
          Caption = 'Desconto Manual'
          DataBinding.FieldName = 'CALC_VDESC_MANUAL'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VLUCRO: TcxGridDBColumn
          Caption = 'Lucro'
          DataBinding.FieldName = 'CALC_VLUCRO'
          Visible = False
        end
        object GridConsultaDBTableView1VDESC: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'VDESC'
        end
        object GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn
          Caption = 'C'#243'd. Fabrica'
          DataBinding.FieldName = 'CODFABRICA'
          Visible = False
        end
        object GridConsultaDBTableView1VOUTRO: TcxGridDBColumn
          Caption = 'Acrescimo'
          DataBinding.FieldName = 'VOUTRO'
        end
        object GridConsultaDBTableView1CUSTO_TOTAL: TcxGridDBColumn
          Caption = 'Custo Total'
          DataBinding.FieldName = 'CUSTO_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object GridConsultaDBTableView1PROTOCOLO: TcxGridDBColumn
          Caption = 'Protocolo'
          DataBinding.FieldName = 'PROTOCOLO'
        end
        object GridConsultaDBTableView1TOTAL_IMPOSTOS: TcxGridDBColumn
          Caption = 'Total Impostos'
          DataBinding.FieldName = 'TOTAL_IMPOSTOS'
          Visible = False
        end
        object GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn
          Caption = 'DT Faturamento'
          DataBinding.FieldName = 'DT_FATURAMENTO'
        end
        object GridConsultaDBTableView1VENDA_TIPO: TcxGridDBColumn
          Caption = 'Venda Tipo'
          DataBinding.FieldName = 'VENDA_TIPO'
        end
        object GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn
          Caption = 'Produto Tipo'
          DataBinding.FieldName = 'PRODUTO_TIPO'
        end
        object GridConsultaDBTableView1PRODUTO_MARCA: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'PRODUTO_MARCA'
        end
        object GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn
          Caption = 'Grupo'
          DataBinding.FieldName = 'PRODUTO_GRUPO'
        end
        object GridConsultaDBTableView1PRODUTO_CATEGORIA: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'PRODUTO_CATEGORIA'
        end
        object GridConsultaDBTableView1VALOR_MINIMO_VENDA: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_MINIMO_VENDA'
          Visible = False
        end
        object GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'VALOR_COMPRA'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO_DESCONTO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_DESCONTO'
          Visible = False
        end
        object GridConsultaDBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_CATEGORIA'
          Visible = False
        end
        object GridConsultaDBTableView1TEM_PRODUCAO_ENVIADO: TcxGridDBColumn
          DataBinding.FieldName = 'TEM_PRODUCAO_ENVIADO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VALOR_ORIGINAL: TcxGridDBColumn
          DataBinding.FieldName = 'CALC_VALOR_ORIGINAL'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
        object GridConsultaDBTableView1CODACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODACABAMENTO'
          Visible = False
          VisibleForCustomization = False
        end
        object GridConsultaDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_GRUPO'
          Visible = False
        end
        object GridConsultaDBTableView1CODPRODUTO_MARCA: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_MARCA'
          Visible = False
        end
        object GridConsultaDBTableView1PDESC: TcxGridDBColumn
          DataBinding.FieldName = 'PDESC'
          Visible = False
        end
        object GridConsultaDBTableView1PARENT: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT'
          Visible = False
        end
        object GridConsultaDBTableView1ACABAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'ACABAMENTO'
          Visible = False
        end
        object GridConsultaDBTableView1MEDIDAS: TcxGridDBColumn
          DataBinding.FieldName = 'MEDIDAS'
          Visible = False
        end
        object GridConsultaDBTableView1POUTRO: TcxGridDBColumn
          DataBinding.FieldName = 'POUTRO'
          Visible = False
        end
        object GridConsultaDBTableView1SITUACAO: TcxGridDBColumn
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
        end
        object GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PESSOA_RESPONSAVEL_CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_POUTRO_MANUAL: TcxGridDBColumn
          DataBinding.FieldName = 'CALC_POUTRO_MANUAL'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_PDESC_MANUAL: TcxGridDBColumn
          DataBinding.FieldName = 'CALC_PDESC_MANUAL'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_VOUTRO: TcxGridDBColumn
          DataBinding.FieldName = 'CALC_VOUTRO'
          Visible = False
        end
        object GridConsultaDBTableView1CALC_POUTRO: TcxGridDBColumn
          DataBinding.FieldName = 'CALC_POUTRO'
          Visible = False
        end
      end
    end
    inherited GridSubGrid: TcxGrid
      Height = 686
      ExplicitHeight = 686
    end
    inherited pnlFlipRotate: TPanel
      Height = 686
      ExplicitHeight = 686
    end
  end
  inherited pnlAgrupador: TPanel
    Left = 692
    Top = 92
    Height = 486
    ExplicitLeft = 692
    ExplicitTop = 92
    ExplicitHeight = 486
    inherited tcAgrupador: TdxTileControl
      Height = 484
      ExplicitHeight = 483
      object tcAgrupadorItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Categoria'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Entenda rendimento de vendas por categoria'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Grupo'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Verifique o rendimento de vendas por grupo'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem3: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Marca'
        Text2.Align = oaBottomCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Verifique o rendimento de vendas por marca '
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem4: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Tipo'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Entenda quais tipos s'#227'o mais vendidos'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem5: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Produto'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Analise do quanto o produto '#233' vendido'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem6: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 6
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Cliente'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Verifique quais produtos seu cliente compra'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcAgrupadorItem7: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 7
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Funcion'#225'rio'
        Text2.Align = oaBottomCenter
        Text2.Alignment = taCenter
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -11
        Text2.Font.Name = 'Segoe UI Semibold'
        Text2.Font.Style = []
        Text2.Value = 'Avalie as vendas do seus funcion'#225'rios'
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlFiltros: TPanel
    inherited tcFiltrosPanel: TdxTileControl
      object tcFiltrosPanelItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Faturados'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcFiltrosPanelItem2: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'N'#227'o Faturados'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcFiltrosPanelItem3: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.Alignment = taCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Enviados para Produ'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tcFiltrosPanelItem4: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 5
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Devolu'#231#245'es'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tcFiltrosPanelItem4Click
      end
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44922.721216134260000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
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
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      
        'select VP.*, V.DT_COMPETENCIA, V.DT_EMISSAO, V.DT_FATURAMENTO, V' +
        '.ATIVO, V.SITUACAO, V.VENDA_TIPO,'
      
        '       V.PESSOA_RESPONSAVEL_CODIGO, PC.DESCRICAO as PRODUTO_CATE' +
        'GORIA,'
      
        '       PG.DESCRICAO as PRODUTO_GRUPO, PM.DESCRICAO as PRODUTO_MA' +
        'RCA'
      'from VENDA V'
      'left join VENDA_PRODUTO VP on V.CODIGO = VP.CODVENDA'
      
        'left join PRODUTO_CATEGORIA PC on PC.CODIGO = VP.CODPRODUTO_CATE' +
        'GORIA'
      'left join PRODUTO_GRUPO PG on PG.CODIGO = VP.CODPRODUTO_GRUPO'
      'left join PRODUTO_MARCA PM on PM.CODIGO = VP.CODPRODUTO_MARCA')
    object ConsultaDT_COMPETENCIA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_COMPETENCIA'
      Origin = 'DT_COMPETENCIA'
      ProviderFlags = []
    end
    object ConsultaDT_EMISSAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
      ProviderFlags = []
    end
    object ConsultaDT_FATURAMENTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_FATURAMENTO'
      Origin = 'DT_FATURAMENTO'
      ProviderFlags = []
    end
  end
end
