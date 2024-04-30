inherited Painel_Mestre: TPainel_Mestre
  Width = 1047
  Height = 656
  Align = alClient
  ExplicitWidth = 1047
  ExplicitHeight = 656
  object pnlMes: TPanel
    Left = 400
    Top = 27
    Width = 385
    Height = 614
    Caption = 'pnlMes'
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object tcMenuMes: TdxTileControl
      Left = 1
      Top = 1
      Width = 383
      Height = 612
      OptionsView.CenterContentHorz = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 10000
      OptionsView.IndentHorz = 10
      OptionsView.IndentVert = 10
      OptionsView.ItemHeight = 100
      OptionsView.ItemWidth = 180
      TabOrder = 0
      object dxTileControl2Group1: TdxTileControlGroup
        Caption.Alignment = taCenter
        Caption.Text = 'Selecione o M'#234's'
        Index = 0
      end
      object tcMenuMesGroup1: TdxTileControlGroup
        Index = 1
      end
      object tcMenuMesItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 9267583
        Style.GradientBeginColor = 9267583
        Style.GradientEndColor = 9267583
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiIniciar: TdxTileControlItem
        GroupIndex = 1
        IndexInGroup = 0
        Size = tcisSmall
        Style.GradientBeginColor = 548647859
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  object pnlIniciar: TPanel
    Left = 889
    Top = 80
    Width = 144
    Height = 536
    Caption = 'pnlIniciar'
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    Visible = False
    OnExit = pnlIniciarExit
    object tcMenuAcoes: TdxTileControl
      Left = 1
      Top = 30
      Width = 142
      Height = 505
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupIndent = 0
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 100
      OptionsView.IndentHorz = 8
      OptionsView.IndentVert = 8
      OptionsView.ItemIndent = 1
      OptionsView.ItemWidth = 126
      TabOrder = 0
      object dxTileControl2Group3: TdxTileControlGroup
        Index = 0
      end
      object tiMeta: TdxTileControlItem
        Glyph.Align = oaTopCenter
        Glyph.ImageIndex = 65
        Glyph.IndentVert = -15
        Glyph.Images = FrmPrincipal.imgTile64
        GroupIndex = 0
        IndexInGroup = 0
        Style.BorderColor = clPurple
        Style.GradientBeginColor = 544946560
        Style.GradientEndColor = 544946560
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -20
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Meta'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiMetaClick
      end
      object tiImprimir: TdxTileControlItem
        Glyph.Align = oaTopCenter
        Glyph.ImageIndex = 57
        Glyph.IndentVert = -15
        Glyph.Images = FrmPrincipal.imgTile64
        GroupIndex = 0
        IndexInGroup = 1
        Style.BorderColor = clPurple
        Style.GradientBeginColor = 544946560
        Style.GradientEndColor = 544946560
        Text1.Align = oaBottomCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -20
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'Imprimir'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiImprimirClick
      end
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Iniciar'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clGrayText
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      AnchorX = 72
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1047
    Height = 656
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = FrmPrincipal.dxLayoutStandardLookAndFeel1
    object cxGrid2: TcxGrid
      Left = 784
      Top = 123
      Width = 253
      Height = 322
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 4
      object cxGridDBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCadastro_Analitico
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBColumn6
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.HideSelection = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Compet'#234'ncia'
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 67
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 164
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Quant. Vendas'
          DataBinding.FieldName = 'QTDVENDA'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Width = 119
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object cxGrid3: TcxGrid
      Left = 303
      Top = 123
      Width = 475
      Height = 322
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 3
      object cxGridDBChartView2: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'Date'
        DataController.DataSource = DSCadastro_Analitico
        DiagramColumn.AxisCategory.GridLines = False
        DiagramColumn.AxisValue.GridLines = False
        DiagramColumn.Styles.ValueCaptions = cxStyle3
        DiagramColumn.Styles.Values = cxStyle2
        DiagramColumn.Styles.CategoryGridLines = FrmPrincipal.cxStyle11
        DiagramColumn.Styles.GridLines = cxStyle3
        DiagramColumn.Values.CaptionPosition = cdvcpInsideEnd
        DiagramLine.Active = True
        DiagramLine.AxisCategory.GridLines = False
        DiagramLine.AxisCategory.ValueAxisBetweenCategories = True
        DiagramLine.Styles.ValueCaptions = FrmPrincipal.cxStyle23
        DiagramLine.Styles.Values = FrmPrincipal.cxStyle9
        DiagramLine.Styles.ValueMarkers = FrmPrincipal.cxStyle8
        DiagramLine.Values.CaptionPosition = ldvcpAbove
        DiagramLine.Values.LineWidth = 3
        DiagramLine.Values.MarkerStyle = cmsDiamond
        Legend.Alignment = cpaCenter
        Legend.Border = lbNone
        Legend.Orientation = cpoHorizontal
        Legend.Position = cppBottom
        OptionsCustomize.DataDrillDown = False
        OptionsCustomize.DataGroupHiding = True
        OptionsView.CategoriesPerPage = 7
        ToolBox.Border = tbNone
        ToolBox.Visible = tvNever
        object cxGridDBChartDataGroup2: TcxGridDBChartDataGroup
          DataBinding.FieldName = 'DESCRICAO'
          DisplayText = 'Categoria'
        end
        object cxGridDBChartSeries2: TcxGridDBChartSeries
          DataBinding.FieldName = 'QUANT'
          DisplayText = 'Total'
          Styles.Values = FrmPrincipal.cxStyle16
          ValueCaptionFormat = 'R$##,###,##0.00'
        end
      end
      object cxGridLevel5: TcxGridLevel
        GridView = cxGridDBChartView2
      end
    end
    object tcAgents: TdxTileControl
      Left = 10
      Top = 123
      Width = 287
      Height = 322
      Align = alNone
      LookAndFeel.NativeStyle = False
      OptionsBehavior.ItemCheckMode = tcicmNone
      OptionsBehavior.ItemMoving = False
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1024
      OptionsView.IndentHorz = 8
      OptionsView.IndentVert = 8
      OptionsView.ItemHeight = 150
      OptionsView.ItemWidth = 270
      TabOrder = 2
      object dxTileControlGroup3: TdxTileControlGroup
        Index = 0
      end
    end
    object dxTileBar1: TdxTileBar
      Left = 10
      Top = 10
      Width = 698
      Height = 107
      FocusedItem = dxTileBarItem6
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.ItemHeight = 80
      OptionsView.ItemIndent = 25
      OptionsView.ItemWidth = 100
      Style.Gradient = gmVertical
      Style.GradientBeginColor = clWhite
      Style.GradientEndColor = clWhite
      TabOrder = 0
      object dxTileControlGroup4: TdxTileControlGroup
        Index = 0
      end
      object dxTileBarItem5: TdxTileBarItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 11
        Glyph.Images = FrmPrincipal.imgTile32
        GroupIndex = 0
        IndexInGroup = 0
        Size = tbisLarge
        Style.BorderColor = 5393597
        Style.GradientBeginColor = 5393597
        Style.GradientEndColor = 5393597
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avColor, avTextColor, avFont]
        Text1.Color = clMedGray
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 40
        Text1.Value = 'Faturamento'
        Text1.TextColor = clWhite
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -24
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = [fsBold]
        Text2.IndentHorz = 40
        Text2.Value = 'R$555.555,55'
        Text2.TextColor = clWhite
        Text3.Align = oaBottomLeft
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -12
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 50
        Text3.Value = '54%'
        Text3.TextColor = clWhite
        Text4.Align = oaBottomLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 100
        Text4.IndentVert = 8
        Text4.Value = 'Vs. ano anterior'
        Text4.TextColor = clWhite
        OnClick = dxTileBarItem5Click
      end
      object dxTileBarItem6: TdxTileBarItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 25
        Glyph.Images = FrmPrincipal.imgTile32
        GroupIndex = 0
        IndexInGroup = 1
        Size = tbisLarge
        Style.BorderColor = 9866332
        Style.GradientBeginColor = 9866332
        Style.GradientEndColor = 9866332
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avColor, avTextColor, avFont]
        Text1.Color = clMedGray
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 40
        Text1.Value = 'Meta'
        Text1.TextColor = clWhite
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avColor, avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -24
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = [fsBold]
        Text2.IndentHorz = 40
        Text2.Value = 'R$ 555.555,55'
        Text2.TextColor = clWhite
        Text3.Align = oaBottomLeft
        Text3.AssignedValues = [avColor, avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -13
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 50
        Text3.Value = '83%'
        Text3.TextColor = clWhite
        Text4.Align = oaBottomLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 100
        Text4.IndentVert = 8
        Text4.Value = 'vs. ano anterior'
        Text4.TextColor = clWhite
        OnClick = dxTileBarItem6Click
      end
      object dxTileBarItem7: TdxTileBarItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 26
        Glyph.Images = FrmPrincipal.imgTile32
        GroupIndex = 0
        IndexInGroup = 2
        Size = tbisLarge
        Style.BorderColor = 5605810
        Style.GradientBeginColor = 5605810
        Style.GradientEndColor = 5605810
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 40
        Text1.Value = 'Necessidade'
        Text1.TextColor = clWhite
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -24
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = [fsBold]
        Text2.IndentHorz = 40
        Text2.Value = 'R$555.555,55'
        Text2.TextColor = clWhite
        Text3.Align = oaBottomLeft
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -13
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 50
        Text3.Value = '53%'
        Text3.TextColor = clWhite
        Text4.Align = oaBottomLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 100
        Text4.IndentVert = 8
        Text4.Value = 'vs ano anterior'
        Text4.TextColor = clWhite
      end
      object dxTileBarItem8: TdxTileBarItem
        Glyph.Align = oaMiddleLeft
        Glyph.ImageIndex = 24
        Glyph.Images = FrmPrincipal.imgTile32
        GroupIndex = 0
        IndexInGroup = 3
        Size = tbisLarge
        Style.BorderColor = 9267583
        Style.GradientBeginColor = 9267583
        Style.GradientEndColor = 9267583
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 40
        Text1.Value = 'Dias'
        Text1.TextColor = clWhite
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -24
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = [fsBold]
        Text2.IndentHorz = 40
        Text2.Value = 'R$555.555,55'
        Text2.TextColor = clWhite
        Text3.Align = oaBottomLeft
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -13
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 50
        Text3.Value = '43%'
        Text3.TextColor = clWhite
        Text4.Align = oaBottomLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 100
        Text4.IndentVert = 8
        Text4.Value = 'vs ano passado'
        Text4.TextColor = clWhite
        OnClick = dxTileBarItem5Click
      end
      object dxTileBar1dxTileBarItem1: TdxTileBarItem
        GroupIndex = 0
        IndexInGroup = 4
        Size = tbisLarge
        Style.BorderColor = clSilver
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -15
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = [fsBold]
        Text1.IndentHorz = 40
        Text1.Value = 'Dias'
        Text1.TextColor = clMedGray
        Text2.Align = oaMiddleLeft
        Text2.AssignedValues = [avTextColor, avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -24
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = [fsBold]
        Text2.IndentHorz = 40
        Text2.Value = 'R$5555555'
        Text2.TextColor = 3815994
        Text3.Align = oaBottomLeft
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -13
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 50
        Text3.Value = '43%'
        Text3.TextColor = clMaroon
        Text4.Align = oaBottomLeft
        Text4.AssignedValues = [avTextColor]
        Text4.IndentHorz = 100
        Text4.IndentVert = 8
        Text4.Value = 'vs ano passado'
        Text4.TextColor = clGray
        Visible = False
      end
    end
    object pnDetailSite: TPanel
      Left = 714
      Top = 10
      Width = 323
      Height = 107
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      OnResize = pnDetailSiteResize
      object tcTopoMes: TdxTileControl
        Left = 0
        Top = 0
        Width = 249
        Height = 107
        OptionsView.CenterContentVert = True
        OptionsView.GroupBlockMaxColumnCount = 5
        OptionsView.GroupMaxRowCount = 100
        OptionsView.IndentHorz = 10
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 52
        OptionsView.ItemWidth = 190
        TabOrder = 0
        object dxTileControl2Group2: TdxTileControlGroup
          Index = 0
        end
        object dxTileControl2Item1: TdxTileControlItem
          GroupIndex = 0
          IndexInGroup = 0
          Size = tcisLarge
          Style.BorderColor = clGray
          Style.GradientBeginColor = clWhite
          Style.GradientEndColor = clWhite
          Text1.Align = oaMiddleCenter
          Text1.AssignedValues = [avTextColor, avFont]
          Text1.Font.Charset = DEFAULT_CHARSET
          Text1.Font.Color = clDefault
          Text1.Font.Height = -27
          Text1.Font.Name = 'Segoe UI'
          Text1.Font.Style = []
          Text1.Value = 'Iniciar'
          Text1.TextColor = clGray
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl1Item1Click
        end
      end
      object tcTopoBtn: TdxTileControl
        Left = 249
        Top = 0
        Width = 74
        Height = 107
        Align = alRight
        OptionsView.CenterContentHorz = True
        OptionsView.CenterContentVert = True
        OptionsView.IndentHorz = 0
        OptionsView.IndentVert = 0
        OptionsView.ItemHeight = 52
        OptionsView.ItemWidth = 70
        TabOrder = 1
        object dxTileControl3Group1: TdxTileControlGroup
          Index = 0
        end
        object dxTileControl3Item4: TdxTileControlItem
          Glyph.ImageIndex = 0
          Glyph.Images = imgBase
          GroupIndex = 0
          IndexInGroup = 0
          Style.BorderColor = 548836914
          Style.GradientBeginColor = 548836914
          Style.GradientEndColor = 548836914
          Text1.AssignedValues = []
          Text1.Value = ' '
          Text2.AssignedValues = []
          Text3.AssignedValues = []
          Text4.AssignedValues = []
          OnClick = dxTileControl3Item4Click
        end
      end
    end
    object dxTileControl1: TdxTileControl
      Left = 10
      Top = 451
      Width = 1027
      Height = 195
      Align = alNone
      OptionsView.CenterContentHorz = True
      OptionsView.CenterContentVert = True
      OptionsView.IndentVert = 10
      OptionsView.ItemHeight = 190
      OptionsView.ItemWidth = 420
      TabOrder = 5
      object dxTileControl1Group2: TdxTileControlGroup
        Index = 0
      end
      object dxTileControl1Item1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.BorderColor = 5393597
        Style.GradientBeginColor = 5393597
        Style.GradientEndColor = 5393597
        Text1.Align = oaTopLeft
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = DEFAULT_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -27
        Text1.Font.Name = 'Segoe UI'
        Text1.Font.Style = []
        Text1.Value = 'N'#227'o h'#225' Configura'#231#245'es para seu faturamento, favor configure'
        Text2.Align = oaTopLeft
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clDefault
        Text2.Font.Height = -27
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 40
        Text2.Value = 'para que os dados sejam exibidos!'
        Text3.Align = oaBottomCenter
        Text3.AssignedValues = [avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -27
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = [fsBold]
        Text3.IndentHorz = 30
        Text3.IndentVert = 40
        Text3.Value = 'Clique aqui ou no bot'#227'o Iniciar.'
        Text4.AssignedValues = []
        OnClick = dxTileControl1Item1Click
      end
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = GrupoDadosDireita
      AlignHorz = ahRight
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 241
      ControlOptions.OriginalWidth = 253
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = GrupoMeioGrafico
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid3
      ControlOptions.OriginalHeight = 203
      ControlOptions.OriginalWidth = 491
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = GrupoMenuLateral
      AlignHorz = ahClient
      AlignVert = avClient
      Control = tcAgents
      ControlOptions.OriginalHeight = 190
      ControlOptions.OriginalWidth = 287
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = GrupoTopo
      AlignHorz = ahClient
      AlignVert = avTop
      Control = dxTileBar1
      ControlOptions.OriginalHeight = 107
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoTopo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnDetailSite
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 79
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liTileAlertaInicial: TdxLayoutItem
      Parent = GrupoBotaoVermelho
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '11'
      CaptionOptions.Visible = False
      Control = dxTileControl1
      ControlOptions.OriginalHeight = 146
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object GrupoBotaoVermelho: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object GrupoMenuLateral: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object GrupoTopo: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object GrupoMeio: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object GrupoMeioGrafico: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object GrupoDadosDireita: TdxLayoutGroup
      Parent = GrupoMeio
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object dsChart: TDataSource
    DataSet = cdsChart
    Left = 124
    Top = 256
  end
  object cdsChart: TClientDataSet
    PersistDataPacket.Data = {
      760000009619E0BD0100000018000000060000000000030000007600084D6964
      2D5765737404000100000000000A4E6F7274682D456173740400010000000000
      05536F757468040001000000000004576573740400010000000000074167656E
      7449440400010000000000044461746504000100000000000000}
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    Left = 152
    Top = 256
    object cdsChartMidWest: TIntegerField
      FieldName = 'Mid-West'
    end
    object cdsChartNorthEast: TIntegerField
      FieldName = 'North-East'
    end
    object cdsChartSouth: TIntegerField
      FieldName = 'South'
    end
    object cdsChartWest: TIntegerField
      FieldName = 'West'
    end
    object cdsChartAgentID: TIntegerField
      FieldName = 'AgentID'
    end
    object cdsChartDate: TIntegerField
      FieldName = 'Date'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 88
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15602020
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clWindow
    end
  end
  object Cadastro: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    Left = 120
    Top = 136
  end
  object Cadastro_Analitico: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    Left = 120
    Top = 164
  end
  object DSCadastro_Analitico: TDataSource
    DataSet = Cadastro_Analitico
    Left = 148
    Top = 164
  end
  object Fr3Cadastro: TfrxDBDataset
    UserName = 'Tabela'
    CloseDataSource = False
    DataSet = Cadastro
    BCDToCurrency = False
    Left = 148
    Top = 138
  end
  object fr3Cadastro_Analitico: TfrxDBDataset
    UserName = 'Tabela_Analitico'
    CloseDataSource = False
    DataSet = Cadastro_Analitico
    BCDToCurrency = False
    Left = 176
    Top = 164
  end
  object MenuImprimir: TPopupMenu
    Left = 147
    Top = 192
  end
  object WREventosCadastro: TWREventosCadastro
    OnImpressaoBeforePrint = WREventosCadastroImpressaoBeforePrint
    Versao_Configuracao = 6
    Empresa = 0
    ValidaPadraoDatela = True
    UsaCadastroPocket = False
    UsaTravaCadastroPocket = False
    Left = 175
    Top = 192
  end
  object Meta: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      
        'select * from META m where CODIGO = :Codigo and CODEMPRESA = :Co' +
        'dEmpresa')
    Left = 92
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end>
  end
  object DSMeta: TDataSource
    DataSet = Meta
    Left = 120
    Top = 192
  end
  object Totalizador: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    Left = 120
    Top = 220
  end
  object Mes: TFDQuery
    Connection = DMBanco.Banco
    Transaction = DMBanco.Transacao
    SQL.Strings = (
      
        'SELECT EXTRACT(MONTH FROM v.DT_COMPETENCIA) as MES, EXTRACT(YEAR' +
        ' FROM v.DT_COMPETENCIA) as ANO, m.valor as META, m.codigo as COD' +
        'META, count(v.DT_COMPETENCIA) as QTDVENDA, coalesce(sum(VP.total' +
        '_relatorio), 0) as FATURAMENTO'
      'from VENDA V'
      'LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo'
      
        'left join meta m on extract(month from m.data) = EXTRACT(MONTH F' +
        'ROM v.DT_COMPETENCIA) and extract(YEAR from m.data) = EXTRACT(YE' +
        'AR FROM v.DT_COMPETENCIA) and (m.CodEmpresa = :CodEmpresa)'
      
        'where (V.ATIVO = '#39'S'#39')and(V.IS_VENDA = '#39'S'#39') and (v.CodEmpresa = :' +
        'CodEmpresa)and'
      
        '      (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and (v.N' +
        'F_FINALIDADE = 1)'
      '      and not(V.DT_FATURAMENTO is null)'
      'group by 1,2,3,4'
      'order by 1')
    Left = 92
    Top = 220
    ParamData = <
      item
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'DT_INICIO'
        ParamType = ptInput
      end
      item
        Name = 'DT_FIM'
        ParamType = ptInput
      end>
  end
  object imgBase: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 14417984
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001B1B1B1C2B2B
          2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B
          2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C2B2B2B2C25252526000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000043434344FBFBFBFCFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B7C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008C8C8C8DFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7C80000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003D3D3D3EF2F2F2F3FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFC6F6F6F700000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202030707
          0708070707080707070807070708070707080707070807070708070707080707
          0708070707080707070807070708070707080707070804040405000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000222222233333
          3334333333343333333433333334333333343333333433333334333333343333
          333433333334333333343333333433333334333333342C2C2C2D000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000053535354FDFDFDFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D8E0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008A8A8A8BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4C50000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002F2F2F30ECECECEDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F95E5E5E5F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002D2D2D2E3B3B
          3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B
          3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C3B3B3B3C35353536050505060000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006B6B6B6CFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A6A70000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000085858586FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C10000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000012121213787878798686
          8687868686878686868786868687868686878686868786868687868686878686
          86878686868786868687868686878686868786868687818181822A2A2A2B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010707070800000000050505060101
          0102030303040404040501010102070707080707070805050506020202030404
          040500000000000000010707070800000001000000000A0A0A0B171717180000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000012121213EFEFEFF002020203E4E4E4E56161
          61627A7A7A7BA0A0A0A13A3A3A3BFBFBFBFCDEDEDEDFACACACAD6B6B6B6CA2A2
          A2A30000000067676768FFFFFFFF1313131456565657F1F1F1F2EAEAEAEBBCBC
          BCBD030303040000000000000000000000000000000000000000000000000000
          000000000000000000000000000012121213EFEFEFF042424243DADADADBB9B9
          B9BA7A7A7A7BA0A0A0A13A3A3A3BE4E4E4E500000000000000006B6B6B6CA2A2
          A2A31D1D1D1EE1E1E1E2FBFBFBFC13131314C4C4C4C56A6A6A6B05050506E8E8
          E8E93B3B3B3C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000012121213EFEFEFF09D9D9D9E6D6D6D6ECFCF
          CFD090909091A0A0A0A13A3A3A3BFCFCFCFDE6E6E6E77B7B7B7C6B6B6B6CA3A3
          A3A4B7B7B7B865656566FAFAFAFB13131314D4D4D4D54B4B4B4C00000000D0D0
          D0D14D4D4D4E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000012121213EDEDEDEEEBEBEBEC181818197B7B
          7B7CDCDCDCDDA0A0A0A13A3A3A3BE4E4E4E500000000000000006B6B6B6CE9E9
          E9EABCBCBCBD00000001FAFAFAFB13131314D4D4D4D54B4B4B4C00000000D0D0
          D0D14D4D4D4E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000011111112F6F6F6F7B7B7B7B8000000002323
          2324F6F6F6F79B9B9B9C38383839F5F5F5F6EAEAEAEB9999999A68686869EDED
          EDEE2121212200000000F3F3F3F413131314CDCDCDCE4848484900000000CACA
          CACB4A4A4A4B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000454494441
          54789CAD974968535114865FD2A4E9A2DA8503ED4A5C39519516452BDA015DD9
          A44929624010A3152D48155DB99180D346B008755109888A0385B6695DE94A45
          5DA838E1B051746371A0B4DD344907BF93DC1B5F62F3DE6BDA03E7DDE9DCF3FF
          EF8EE77A6666668CB98ADBED760D0C0C2C9F9A9AAA90724949C9684B4BCBCFE9
          E9E9393BF33835ECEBEB5BE1F57AC36477C5E3F14DA48B3C9E7FDDA91B1B1A1A
          7A41F6412A95BA1D0A85BE2D0801FE74237F7806F00045B785E962B44914DB73
          908933425146E67551047A7B7B4BCBCACACE037E9C6289A9E92DD3F6D8E5727D
          26FF47D52DA16E1575DBC9AF574483F4F543E4F2C4C4C4E9B6B6B6A46302745A
          0AF820D92DAA2A09400C80AEE6E6E64F567F44DFD5D876621BA1588A9EC4D736
          EAFDF4FD6D4B40C071F008076B54D53334E2F7FB2D81B5288247F1D3451A43B7
          CA8F884FEA76E493C821A0863DAEC1E9746D7878B8A3BDBD3DE5043C9F484F4F
          4F7D5555D5558A0795CF38180DE6E9C8212073AE18A7C15940878BD95A5A8438
          5BB69D853C038143E25B619CFA8F00DB6C03ABB753159FCA9F1702C7B6CA500B
          93959EE08F7E1522213E18890E46622DC53AB493FE37D8A66F7208001E55E504
          9D2256C3CEEA6EE2CFAE4B967E29E6760F43DE6F35129C1311FA08A84F6105B3
          0470B09224A0EC638140E073216722B4DFC2A1A14878D17B7624C42736B2288F
          4A5130B1FF9A26C07C87992397E4272727AF5881CF8784F8E6F414022E30F792
          5E4813007BA7B279170C063F3A21500C09F14DFB3BB2D560EECA12406AE5237B
          D52978B124D419534DB646CA1EF6E532B6C662D59E73D8B07D36E3B8CE8E849A
          BD2768BD03121AA342B03D3E9FAFC2D498734AB1DA6598CEDA119845D2240607
          07439CA0F7F3DAB21882EDF83A2E427E30321FEC8C3C8944629429D0E5A5E6C6
          F1F1F1EEF2F2F2BB764E388CDCAC6E39729B54D577B441B6D92CE6590CC1F6C8
          29C67C8D1999FB7CB5D9321C0E8F908C588147A351776D6D6DCC21B861C21815
          6C3D052FD146866C8715D86CE0353535D7C8EED7E0C964B2B1B5B5B510B861C2
          78251F7D103DA4A1916C757F7FFF1A27678106A7DF813CF02F85FA886FA6AA5A
          613EC812C0C96D23B3DA5D181C23ED5868F03458C6771A9FBE77B20464BE2486
          23DB82463858BAACEE03C04F906CE22FDEE3681CF07D76E0F85CC59912D145BD
          46B2DB90485602CFDD647D18C6B8421B0ADD88ECED4B2497AC00CD822F2FD7B1
          2C541F3A2958BA2D4B40EE6715469D44EB2A2B2BBB2132AF804444BD21BA8D4C
          2C20D2A563811C022212BD722688E1568960E828EC8B0AC944E4CF19FA7448A6
          AA9E0986D9268780C46A8C424007A54282A15B475DC42E1ACE17898ED5B0EB10
          EF23FE02F9E1F97F47B144AD12BD92D561B93878C3B95E6C582EF29CB2B3B05C
          93E0A6AA5701A43C4C4A717084F40800B60F13753B8A4CA1737F9888A80EA758
          0737E56966644236B702589F6F6F02159946E7F734D3A21C84CC8F5334FD38CD
          3395FB64E11FA75A94C38BA20BF93CFF0B5C7A41A6276675E70000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F7600000454494441
          54789CB5974D4C545714C767866186459545B5814D9BAED426D886C6446D2A60
          E24A6618088B76653A1523240D1A5D992664166A372692266E68D9B4A6C6103E
          067626B6691B6DDA60B4267E6CDA740569EB82CA028419FAFBC3B9E39B07336F
          06F024F7DD8F77CEF9FFEFF7B9D195959550B5128944C21313136FE472B97AD5
          6B6A6AE63A3A3AFECEE7F3553B8B56AA383636F6566D6DEDC7148F65B3D903E4
          3BA2D197E6B43D9F9A9AFA8DE2ADA5A5A5EF3A3B3BFFDA1602F4F43D7A380078
          926AA48CEA0ED25125742F4226CB08651899FB9B2230323212ABABABBB04F819
          AA359E5FBF336D3F85C3E1A7949F59DBEBB4EDA1ED43CAFB8D680ADB0444AE2E
          2C2C5CE8EEEE7E5131018C76013E49F1A035BD00601880C1F6F6F627E57A84ED
          5E74FBD14D538D91CEE1EB03DA13D8FE1B4840E038F81107FBACE92E299D4824
          CA023B3182BDF819241F261D5247E493B6237E1245046CD8B31EF0AF6766667A
          7B7A7A962A01F713191A1A6A696868B886BF93E6330B46AB773A8A0868CE8D71
          08C65FB1804E6D666B391171B6EC2916724824E4DB30CEAF23C0367B97D5DB6F
          D53BB3B3B37D41E0F466370B2D6ED51C5B6FC6AF231F8C445F6363E33B540F93
          FAC1FA06DD07450400CF587D11A374D0B0339F297A7353A602C7E604F9F55223
          C139916634041A37AC548100CEDE264B9AFE7032997C1A044E56048ECD86E04E
          E4133B2DCA5E5585C93AF9739500F3FD11731456797979F9CBED067722DF9C9E
          22101626F9E55502601F339D87A954EAF1AB0097C8373E1E526C32CCCB6E0D34
          EBA3BDFAAAC09DD819D344F17DD5A35AC92CA67AFBBFE161E30397FC8C93DD93
          9393678200217A87EDFCABA7C961EC1476341E8FD77B7EAE3B2A01390E98175C
          D2425B4B10B8846DFA399997400143D881B721408FC8B4BFDFAC04B05A892E2E
          2ECE3105AEBECBAFA0ADC214B452FCC143E2362BBA97DEE58300E6E7E79FF99A
          0A18C28E722EFF03C01C754DC5DE8D9C6C40E228DBE9C2F4F4747A6060209084
          4F1CC67FC27653708FD4C6701F29652512A3A3A36DB158EC7B2371A2B9B9399F
          C9644E5643C28331AD8F3B886EF1A38D62D3F8F8F8BE5267415757D71F5E12D8
          7C028950A524E49B916B7298050238BA41765145143E23EF2BE5642B24CCF72A
          BE61AE11B039CE52EC20A5B93806CBDD071E12D7E9C96B341D80C459F22BA56C
          F0B987CB28EDAAC22C109010C92AF03C4E318EE23057686BB91B512442163B04
          09BE6AB98E7511E9EA5E1696FB5720A0FBD9C2A873A4C38A64144C6C252091D8
          1BE25A682D16900CBA58A0888044D12B6782140F298261D8C2B0DF54482651CF
          056ED190E4AE30BC3A450414AB310A494F50FAA92219DAD241D1B05F141DDBB0
          BB10EF313E93FEF07CDD51ACA855D12B451796CBC103EE84CD86E5925FA85716
          963B12DC542D1640EAC68BE1E034F96900021F2616DB4872A4EA1F26123338CF
          1C7EABA759682D648B18C07EBFBE0754A2F3606B4F3327E6A0D3FB3825AD3E4E
          7DAACF49DBFF3875620EBF50DACEE7F9FFCC5948DFFAA0AA1A0000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F760000053D494441
          54789CC5970D4C5B5514C75B6869754541321DD658E2962C53933930862C1867
          742219DF614B401437B361B451997189D91C2173618A8A1A70A0CB1696663857
          A0058C1FD1A0C6E8922D883AE6B66C8C491851C14F84F2D1E2EF3C5BF2DABD42
          8B536F7272EE3BF7DE73FEE7DC73CFBDCF303333A3FB3F9B414B181313A377B9
          5C257ABD3E91CFE19C9C9CB72351D6D6D6B63236363683753EAFD7DB929F9FFF
          E38200B4B7B7DF0C7304BE3B3A3A8E03E2EC7CCA8C46631D2C43516C3024C376
          460CA0B3B3330BF6D0D4D4D4562260C493D9496C539CD3E9B49A4C26879612DA
          2100BE251854B238BFDE5A9FCF77717272B2AEA8A8685C130093CA617BC516C6
          9FD5B280DC44686F0B03A02BBC8FBA74D6A69BCDE675555555F75656564E0701
          686A6A32272525BD48FF0C48D7E6E5E50DF8F7526DDC575858D84737710E43D2
          66339AA8F984F7F7F7AF494949799DEE96D4D4D4F5F0E62000185F0ABF0AAACE
          CDCD1D10E1E0E0E0299BCDF60A1E5FC3E7F0D0D0D0B9790C07DA4B5036E48594
          C4B5DBED13ADADAD2FC4C5C56D415FEA2500C85665BF41EC09086511ECE9088D
          CEB6ECECEC16584BA89CC88A3EB1610C1DD33C05FF659B0540784C64BAE55F31
          62302C9A17006D0F99BAE71FDA92241C22D43FE3901CC31BA02BE704A7EA1F83
          7A43C657412B2117F4EBAC959999BB3160831F94AA87C847BF8B42D43B3D3D6D
          43761DFB3E8EE7E7C9B129BE7398533E270014483179553D487DA8120028DBCE
          0939A9923B61B6EEEEEE47C438C7EB418C6CC5B8001E85CC1CDD71D62D42EE41
          B7937E26F2F8B922106DEB4E4B4BBB1EDE8C01895203DE6E2A2828F89A527E06
          59CDC4C4C461B63513104F71D2BE60CE76E893CB01E02C1E3E8F579FD31FC0F3
          5B307C410690C9DDE1044037A5F73744EF30F708A0245A7544CFCA71ADB80400
          2893B9016F555B01F5B5C8A5BB8CB118BFD88BC16A3CFB8C7E9FC7E3C90AADF1
          6C655039079424E73E8C7F0F7F178027FD77475004B69134DBB4DCC5033714F8
          7400EC341ECA6D779FD60513AEE1F98780780EA76A38F22ED6FEA44EC20F6047
          D50B98B806761763F5F061C57DAFD709D04F91EDC28B1F22352E4DEE9DE4E4E4
          37C98DCD44F0314455EA08BC1FE61408803702A70099D47ACBE8E86853A486A5
          C061F051EE9D3BC6C6C62A71603F3A1F080510694B87BE2A2E2EFE4565600935
          C0CC4DDAAF9ED8DCDC9C68B158EC185F81C1061C94CB4A1E3C5D92C4ACBB3AAA
          2444C90886ACF02544E200BC11A5479967426139B214E60E42598C9D8B8F8F1F
          2101EB99B32BA053A28A4E7971E9B821ADD12661A31FAC72EF930F0A3AFF1154
          329FABF72614AFA3FB254957ADA14E1FE8C8E9882A09E1270022AFA221946FD4
          02EB7FB8ACD01A93C6BA9D6CC16A7417719C2F2E2409E5DDF08CEC9FBFD044DD
          C431747E27EBA34EC29191918FC8E6511EA80FF3F95AB4EB79171A28E19B00A0
          3C70E545F4BBBC8840658D4441595999874A56CBFC1D44E1901493680070713D
          095B4C2DA85700C89EA1F0040A1F874B069F52CD5F2AA700CA60ECC68010F447
          906D200A2D80C88CB41ABADDEE7B7076375D7B00B8B20564630903EFA1B4566B
          21F2C6109124DA7AE46ECEF8C7282E51D700F264373ADBC89BE3F22D7F5ACCD9
          8C0DD9B2BD24E2BEC05C05008BBF75381CCB131212D6F2298F09BD6EFE760591
          588DF2C328EEC56823DB79B0A7A7E71BF67803E02E60546ECDFBC9FA27987F3B
          F37760AB466ECC2000D24A4B4BFFD4FDFDF289AAB10577B21565742B005281F1
          3F041C005EE6BB81BE9C1A79906C2422A7D5C683002CB4B197F20FB05FC85F84
          566164319E8BE1F3D031423E166EFD657D96FB8B505F346BFE02DDDF7D62AE2B
          F5070000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F76000001F0494441
          54789C63F9FFFF3FC340029601B57DD401A30EA0D401ED47BCF44074A5CDB64B
          747740E316532E6E01B1E550B669BDCFE96F74750037BF683F90D24262A7D3CD
          01DD47BC43181919D3E0024036506C77A9CDD635347740DB7E17793656F659E8
          E28C0C0CB38072A7AB1CF73CA499031A0F3AB170B3722E053205B1480B021DB6
          14A8C6A1DE7EDF1F9A38809B89B3164859E351620D55534F7507F41CF1B60786
          73354185403540B5FB4A6CB61EA49A033AF6B90AB3B0B12D01329989500E52B3
          04A8C7A0C269F75BAA388085956D36909221462D14C840F50451EC80EE435E59
          8C4C8C8124580E018C0C8120BDA576DBA691ED80F6831E3AACCCCC3D245B0E73
          0313630FD08C4395F63BAE90EC80E235D69C92E2FC2B804C4E721D00D2CBCAC4
          B4026896696FC8D1EF24394052821F58BC326A5360390430326A43CC62C820DA
          01DD87BD8280452D59653B0E57A403CDDC556ABB6D1D4107B41DF6946563649A
          4D3DCBA14E60649C0D34FB7495EDF6C7381D10BE8689D954C21354D40A51DB01
          2033811E5B0AB4C37165C8BFBF581D6022EE012A466D6960390CD842ED68C070
          40CF214F5B4626A61A1A5A0E06C0A8A801DAB5B7C46EFB61B8031A1B9998B89D
          3D2319FE336CA7B503C08089291268E7D1FAFA7FFFC00E00318054165D2C8701
          1B0835B45BC5A30E18160E000028047D2AEF028E420000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000A3769434350735247422049454336313936362D322E310000789C9D96
          775453D91687CFBD37BD5092108A94D06B685202480DBD48912E2A3109104AC0
          90002236445470445191A6083228E080A34391B1228A850151B1EB041944D471
          70141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCFDD67EF7DD6BA0090FC83
          05C24C5809800CA15814E1E7C5888D8B676007010CF000036C00E070B3B34216
          F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F8CC100FF9F94B9592231
          0050988CE7F2F8D95C1917C9383D579C25B74FC998B6344DCE304ACE22598232
          569373F22C5B7CF699650F39F332843C19CB73CEE265F0E4DC27E38D3912BE8C
          91601917E708F8B932BE26638374498640C66FE4B1197C4E36002892DC2EE673
          53646C2D63922832822DE37900E048C95FF0D22F58CCCF13CB0FC5CECC5A2E12
          24A78819265C53868D93138BE1CFCF4DE78BC5CC300E378D23E231D89919591C
          E1720066CFFC5914796D19B2223BD8383938306D2D6DBE28D47F5DFC9B92F776
          965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA876D6915005DEB0150BB
          FD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C672BABDCDC5C4B019F6B29
          2FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F39338927431435E376E667AA644
          C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE882F944544CBA64C204C96
          B55BC813880599428640F89F9AF80FC3FEA4D9B99689DAF811D0965802A5211A
          407E1E00282A1120097B642BD0EF7D0BC64703F9CD8BD199989DFBCF82FE7D57
          B84CFEC816247F8E63474432B81251CEEC9AFC5A02342000454003EA401BE803
          13C004B6C011B8000FE0030241288804716031E0821490014420171480B5A018
          9482AD6027A80675A0113483367018748163E03438072E81CB6004DC0152300E
          9E8029F00ACC40108485C810155287742043C81CB28558901BE403054311501C
          940825434248021540EBA052A81CAA86EAA166E85BE828741ABA000D43B7A051
          6812FA157A07233009A6C15AB0116C05B3604F38088E8417C1C9F032381F2E82
          B7C09570037C10EE844FC397E011580A3F81A7118010113AA28B301116C24642
          917824091121AB9012A4026940DA901EA41FB98A4891A7C85B1406454531504C
          940BCA1F1585E2A296A156A136A3AA5107509DA83ED455D4286A0AF5114D466B
          A2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E811F438FA150683A1638C
          318E187F4C1C2615B302B319B31BD38E398519C68C61A6B158AC3AD61CEB8A0D
          C572B0626C31B60A7B107B127B053B8E7D8323E27470B6385F5C3C4E882BC455
          E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF165F8467C0F7E083F8E9F
          2128138C09AE8448422A612DA192D046384BB84B78412412F5884EC470A280B8
          8658493C443C4F1C25BE255148662436298124216D21ED279D22DD22BD2093C9
          46640F723C594CDE426E269F21DF27BF51A02A582A0428F014562BD428742A5C
          5178A688573454F4545CAC98AF58A178447148F1A9125EC94889ADC4515AA554
          A37454E986D2B43255D9463954394379B3728BF205E547142CC588E243E1518A
          28FB286728635484AA4F6553B9D475D446EA59EA380D4333A605D05269A5B46F
          6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD103E8E9F432FA61FA75FA
          3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D54AD4DAD546D4DEA933D4
          7DD4D3D4B7A977A9DFD340699869846BE46AECD138ABF1740E6D8ECB1CEE9C92
          3987E7DCD68435CD3423345768EED31CD09CD6D2D6F2D3CAD2AAD23AA3F5549B
          AEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE63860AC39391CEA864F4
          31A6743575FD7525BAF5BA83BA337AC67A517A857AED7AF7F409FA2CFD24FD1D
          FABDFA53063A0621060506AD06B70DF1862CC314C35D86FD86AF8D8C8D628C36
          1875193D3256330E30CE376E35BE6B423671375966D26072CD1463CA324D33DD
          6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD872DD0164E16428B068B1B
          4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958C55B6DB3EAB7FA686D6F
          9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6F6DA5CF25CDFB9ABE776
          CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383A383C8A1CD61D2D1C031
          D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4D6D9C159EC7CD8F91717
          A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5DA56E0CB744B7BD6E5277
          5D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF675ED65E22AF0EAFD76C
          67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57CF37D9B7D577CACFDE6F
          85DF297FB47F90FF36FF1B015A01DC80E680A940C7C095817D41A4A00541D541
          0F82CD8245C13D21704860C8F690BBF30DE70BE7778582D080D0EDA1F7C28CC3
          96857D1F8E090F0BAF097F1861135110D1BF80BA60C9829605AF22BD22CB22EF
          44994449A27AA315A313A29BA35FC778C794C74863AD6257C65E8AD38813C475
          C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22E345798B2E2CD6589CBE
          F8F812C5259C254712D18931892D89EF39A19C06CEF4D280A5B54BA7B86CEE2E
          EE139E076F076F92EFCA2FE74F24B92695273D4A764DDE9E3C99E29E5291F254
          C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D0397919871544811A609
          FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12356543D98BB2BBC534D9
          CFD480C444B25E329AE3965393F326373AF7489E729E306F60B9D9F24DCB27F2
          7DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0AAA5AB7A57EBAF2E5A3D
          BEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F9156D19AA2B1F57EEB5B
          8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D1F4B7825174BAD4B2B4A
          DF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56CC56E1D6EBDBDCB71D28
          572ECF2F1FDB1EB2BD73076347C98E973B97ECBC50615751B78BB04BB24B5A19
          5CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DAD7BB79BBAFECF1D8D356
          A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39FB1E364637F67FCDFABA
          B949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D65AD70ABA475F260C2C1
          CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8EDF5C341877B8FB08EB4
          7D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E3E1A78B4B7C7A5A7E37B
          CBEFF71FD33D56735CE578D909C289A2139F4EE69F9C3E9575EAE9E9E4D363BD
          4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7EC3F79DEF5FCB10BCE17
          8E5E645DECBAE470A973C07EA0E307FB1F3A061D063B871C87BA2F3B5DEE199E
          377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51D76FDE48B821BDC9BBF9
          E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9AF71B7E34FDB15DEA203D
          3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F961C584CE44F323DB47C7
          267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4D977BF78FC3230153B35
          FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719AF665E97BC517F73E02D
          EB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EEA78C4F9F7E03F784F3FB
          8F70662A000000097048597300002E2300002E230178A53F760000022B494441
          54789C63F9FFFF3FC340029601B57DD401A30E8039A0918989A9C4D1740A0323
          832C5D6CFDCFF0B867FFE99CFA7FFFFE811D00627C713459CEC8CCBC1FC865A6
          B1F57FFFFFFBEB08B213C4814701CFFE3387BFBA98B5303030D6D3D6FEFF2D20
          BB603C9434B07DDF99664F27532720D39646B61F06D911822480E280907FFFFE
          BE77308F666361B800E40A51D9F277BFFE304483EC4016C4C80582074E3EFEE2
          629ECAC8C0B0969AB6030BFC5490D9E8E258B321CF9E93EB80E96126303DA453
          C9FA993C7B4EADC32683B31C78FFFD65A120A7840D90A94DA1ED57416671E390
          C4E90099A30FBF7F75328B6060623C05E4729269F977867FFF234066E15280B7
          24E4DE77EACA5767F312600135952CEBFF339480CCC0A7846051CCBBFFF4F4CF
          8E266E0C8C8CFE245ABF9E7BEFC9698414117400B0C0FAFFD9423B99899BC718
          1812324459FD9FE1C9BFAF5F5289514A5465C47BE2EADB2FCEE631C0ACB99781
          7051FD1798E562407AA8E60010E0D97BF2E05767B3566054D4E155F8FF7F2BCF
          DE5307893597A4EAF8CCFF33CD260C26CE404758E3B0FC28488D3D096692E400
          FB7DFFFE7C7031896665603E0FE40AA249BFFFCDF82FDA7EEFBF3FA498497283
          4460CF99875F9CCCD218991857238BFFFFF73F4D60DF9987A49A47568B8867DF
          A935C0F4300B18156910DBFFCF0289916316D94DB24F9FFE17F2F133DAC0D8B8
          8A5A9A3940F2F4E96F5FED4D2221EC33DFC83587A24629F7C1339728D14FB103
          A801461D30EA00009EC0C6D9EFCF4E100000000049454E44AE426082}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002E7A
          579F3EA475D73EA475D73EA475D73EA475D73EA475D73EA475D73EA475D73EA4
          75D73EA475D73EA475D73EA475D73EA475D72E7A579F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000919
          112145B883F04AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF4AC38BFF4AC38BFF4AC38BFF45B883F00919112100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A432F584AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF4AC38BFF4AC38BFF4AC38BFF1A432F580000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002E77569D4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF4AC38BFF4AC38BFF2E77569D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000308050B3EA475D74AC38BFF4AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF4AC38BFF3EA475D70308050B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D241A3048BE87F84AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF48BE87F80D241A3000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F543D6F4AC38BFF4AC38BFF4AC38BFF4AC3
          8BFF1F543D6F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001348862B34AC38BFF4AC38BFF3488
          62B3000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050F0A1442AE7DE542AE7DE5050F
          0A14000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000012322342123223420000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D113F420D113F420000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004051314303CDBE5303CDBE50405
          1314000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001262FABB33643F4FF3643F4FF262F
          ABB3000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000181D6A6F3643F4FF3643F4FF3643F4FF3643
          F4FF181D6A6F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A0C2D303541EDF83643F4FF3643F4FF3643F4FF3643
          F4FF3541EDF80A0C2D3000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002020A0B2D38CED73643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF2D38CED702020A0B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002129969D3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF2129969D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000121654583643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF121654580000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000608
          1F21333FE6F03643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
          F4FF3643F4FF3643F4FF3643F4FF333FE6F006081F2100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000222A
          989F2D38CED72D38CED72D38CED72D38CED72D38CED72D38CED72D38CED72D38
          CED72D38CED72D38CED72D38CED72D38CED7222A989F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 279
    Top = 205
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      PixelsPerInch = 96
    end
    object LookBrancoWeb: TdxLayoutWebLookAndFeel
      GroupOptions.FrameWidth = 0
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clGray
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.TextColor = clGray
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderStyle = lbsNone
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 4
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 4
      PixelsPerInch = 96
    end
  end
end
