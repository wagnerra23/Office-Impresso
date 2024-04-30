inherited Frame_ConsuEstoque_Estoque: TFrame_ConsuEstoque_Estoque
  inherited pnlAgrupador: TPanel [0]
    Height = 466
    ExplicitHeight = 466
    inherited tcAgrupador: TdxTileControl
      Height = 464
      OptionsView.GroupMaxRowCount = 10
      ExplicitHeight = 464
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
        Text1.Value = 'Produto'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem1Click
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
        Text1.Value = 'Categoria'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem2Click
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
        Text1.Value = 'Tipo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem3Click
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
        Text1.Value = 'Grupo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem4Click
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
        Text1.Font.Style = []
        Text1.Value = 'Marca'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem5Click
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
        Text1.Value = 'Empresa'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
        OnClick = tcAgrupadorItem6Click
      end
    end
  end
  inherited pnlImpressoes: TPanel [1]
  end
  inherited pnlFiltros: TPanel [2]
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
        Text1.Value = 'Necess'#225'rio Comprar'
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
        Text1.Value = 'Estoque Baixo'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl [3]
    inherited GridConsulta: TcxGrid
      Left = 234
      Width = 974
      Height = 550
      ExplicitLeft = 234
      ExplicitWidth = 974
      ExplicitHeight = 550
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end>
        DataController.Summary.OnAfterSummary = GridConsultaDBTableView1DataControllerSummaryAfterSummary
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 74
        end
        object GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn
          Caption = 'C'#243'd Fabrica'
          DataBinding.FieldName = 'CODFABRICA'
          Width = 94
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 308
        end
        object GridConsultaDBTableView1UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'UNIDADE'
        end
        object GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn
          Caption = 'M'#237'nimo de Estoque'
          DataBinding.FieldName = 'ESTOQUE_MIN'
          Width = 51
        end
        object GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn
          DataBinding.FieldName = 'ESTOQUE_MAX'
          Visible = False
        end
        object GridConsultaDBTableView1ESTOQUE: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'ESTOQUE'
        end
        object GridConsultaDBTableView1DIAS_PARA_COMPRAR_MIN: TcxGridDBColumn
          Caption = 'Dias para Comprar'
          DataBinding.FieldName = 'DIAS_PARA_COMPRAR_MIN'
          Width = 52
        end
        object GridConsultaDBTableView1LOCAL: TcxGridDBColumn
          DataBinding.FieldName = 'LOCAL'
          Visible = False
        end
        object GridConsultaDBTableView1CUSTO: TcxGridDBColumn
          Caption = 'R$ Custo'
          DataBinding.FieldName = 'CUSTO'
          Width = 121
        end
        object GridConsultaDBTableView1CUSTO_TOTAL: TcxGridDBColumn
          Caption = 'Custo Total'
          DataBinding.FieldName = 'CUSTO_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 120
        end
        object GridConsultaDBTableView1VALOR: TcxGridDBColumn
          Caption = 'R$ Valor unit'#225'rio'
          DataBinding.FieldName = 'VALOR'
          Width = 123
        end
        object GridConsultaDBTableView1CODPRODUTO_CATEGORIA: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_CATEGORIA'
          Visible = False
        end
        object GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'CATEGORIA'
          Width = 221
        end
        object GridConsultaDBTableView1CODPRODUTO_GRUPO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_GRUPO'
          Visible = False
        end
        object GridConsultaDBTableView1GRUPO: TcxGridDBColumn
          Caption = 'Grupo de produto'
          DataBinding.FieldName = 'GRUPO'
        end
        object GridConsultaDBTableView1CODPRODUTO_MARCA: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_MARCA'
          Visible = False
        end
        object GridConsultaDBTableView1MARCA: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MARCA'
          Width = 163
        end
        object GridConsultaDBTableView1CODPRODUTO_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'CODPRODUTO_TIPO'
          Visible = False
        end
        object GridConsultaDBTableView1TIPO: TcxGridDBColumn
          Caption = 'Tipo de Produto'
          DataBinding.FieldName = 'TIPO'
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'CODEMPRESA'
        end
        object GridConsultaDBTableView1Estoque_Previsto: TcxGridDBColumn
          Caption = 'Estoque Previsto'
          DataBinding.FieldName = 'Estoque_Previsto'
        end
      end
    end
    inherited LbTotalRegistros: TcxLabel
      Left = 234
      Top = 595
      ExplicitLeft = 234
      ExplicitTop = 595
    end
    inherited pnlFlipRotate: TPanel
      TabOrder = 15
    end
    inherited tcAcoes: TdxTileControl
      inherited dxTileControlItem1: TdxTileControlItem
        Visible = False
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Gerar Solicita'#231#227'o'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
    object liTotalSelecionado: TcxLabel [15]
      Left = 831
      Top = 587
      AutoSize = False
      Caption = 'Custo Total:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 33
      Width = 165
      AnchorX = 996
      AnchorY = 604
    end
    object EdtTotal: TcxCurrencyEdit [16]
      Left = 997
      Top = 587
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.UseDisplayFormatWhenEditing = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Height = 33
      Width = 211
    end
    inherited LiGridConsulta: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
    end
    inherited GrupoAlterarView: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoNavegador: TdxLayoutGroup
      Parent = dxLayoutGroup1
      Index = 2
    end
    inherited GrupoFooter: TdxLayoutGroup
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = GrupoAlterarView
      AlignHorz = ahClient
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = liTotalSelecionado
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Control = EdtTotal
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 211
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited pnlIniciar: TPanel
    inherited cxLabel1: TcxLabel
      AnchorX = 72
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
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44918.420644039350000000
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
    Left = 599
    Top = 307
    DesignInfo = 20120151
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    OnCalcFields = ConsultaCalcFields
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      
        'select P.CODIGO, P.CODFABRICA, P.DESCRICAO, P.UNIDADE, P.ESTOQUE' +
        '_MIN, P.ESTOQUE_MAX, P.DIAS_PARA_COMPRAR_MIN, P.DIAS_PARA_COMPRA' +
        'R_MAX, '
      
        '       PE.CODEMPRESA, PE.*, P.LOCAL, P.CUSTO, P.VALOR, P.CODPROD' +
        'UTO_CATEGORIA,'
      
        '       PC.DESCRICAO as CATEGORIA, P.CODPRODUTO_GRUPO, PG.DESCRIC' +
        'AO as GRUPO,'
      
        '       P.CODPRODUTO_MARCA, PM.DESCRICAO as MARCA, P.CODPRODUTO_T' +
        'IPO,'
      '       PT.DESCRICAO as TIPO'
      'from PRODUTO P'
      'left join PRODUTO_ESTOQUE PE on PE.CODPRODUTO = P.CODIGO'
      
        'left join PRODUTO_CATEGORIA PC on PC.CODIGO = P.CODPRODUTO_CATEG' +
        'ORIA'
      'left join PRODUTO_GRUPO PG on PG.CODIGO = P.CODPRODUTO_GRUPO '
      'left join PRODUTO_MARCA PM on PM.CODIGO = P.CODPRODUTO_MARCA'
      'left join PRODUTO_TIPO PT on PT.CODIGO = P.CODPRODUTO_TIPO')
    object ConsultaCUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CUSTO_TOTAL'
      Calculated = True
    end
    object ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 15
    end
    object ConsultaCODFABRICA: TStringField
      FieldName = 'CODFABRICA'
      Origin = 'CODFABRICA'
      Required = True
      Size = 60
    end
    object ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 300
    end
    object ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object ConsultaESTOQUE_MIN: TFloatField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
    end
    object ConsultaESTOQUE_MAX: TFloatField
      FieldName = 'ESTOQUE_MAX'
      Origin = 'ESTOQUE_MAX'
    end
    object ConsultaDIAS_PARA_COMPRAR_MIN: TIntegerField
      FieldName = 'DIAS_PARA_COMPRAR_MIN'
      Origin = 'DIAS_PARA_COMPRAR_MIN'
    end
    object ConsultaDIAS_PARA_COMPRAR_MAX: TIntegerField
      FieldName = 'DIAS_PARA_COMPRAR_MAX'
      Origin = 'DIAS_PARA_COMPRAR_MAX'
    end
    object ConsultaCODEMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaCODPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object ConsultaCODEMPRESA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODEMPRESA_1'
      Origin = 'CODEMPRESA'
      ProviderFlags = []
      Size = 10
    end
    object ConsultaESTOQUE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      ProviderFlags = []
    end
    object ConsultaPRINCIPAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRINCIPAL'
      Origin = 'PRINCIPAL'
      ProviderFlags = []
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
      ProviderFlags = []
    end
    object ConsultaCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object ConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object ConsultaCODPRODUTO_CATEGORIA: TStringField
      FieldName = 'CODPRODUTO_CATEGORIA'
      Origin = 'CODPRODUTO_CATEGORIA'
      Size = 15
    end
    object ConsultaCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaCODPRODUTO_GRUPO: TStringField
      FieldName = 'CODPRODUTO_GRUPO'
      Origin = 'CODPRODUTO_GRUPO'
      Size = 15
    end
    object ConsultaGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 40
    end
    object ConsultaCODPRODUTO_MARCA: TIntegerField
      FieldName = 'CODPRODUTO_MARCA'
      Origin = 'CODPRODUTO_MARCA'
    end
    object ConsultaMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object ConsultaCODPRODUTO_TIPO: TIntegerField
      FieldName = 'CODPRODUTO_TIPO'
      Origin = 'CODPRODUTO_TIPO'
    end
    object ConsultaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 15
    end
    object ConsultaEstoque_Previsto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Estoque_Previsto'
      Calculated = True
    end
  end
  object Produto_Estoque_Local: TFDQuery
    AfterOpen = Produto_Estoque_LocalAfterOpen
    FieldOptions.AutoCreateMode = acCombineAlways
    Connection = DMBanco.Banco
    Transaction = TransaDragAndDrop
    SQL.Strings = (
      'select * from PRODUTO_ESTOQUE_LOCAL where ATIVO = '#39'S'#39)
    Left = 268
    Top = 361
  end
  object WRFormataCamposDataSets1: TWRFormataCamposDataSets
    OnCarregaDataSets = WRFormataCamposDataSets1CarregaDataSets
    Left = 710
    Top = 274
  end
end
