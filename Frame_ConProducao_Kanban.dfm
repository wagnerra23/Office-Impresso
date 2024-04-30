inherited Frame_ConsuProducao_Kanban: TFrame_ConsuProducao_Kanban
  object Bevel_Topo: TBevel [0]
    Left = 0
    Top = 22
    Width = 1248
    Height = 2
  end
  inherited pnlIniciar: TPanel [1]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      Top = 42
      Height = 560
      TabOrder = 13
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmHybrid
      LookAndFeel.SkinName = 'TheBezier'
      ExplicitTop = 42
      ExplicitHeight = 560
      inherited GridConsultaDBLayoutView1: TcxGridDBLayoutView
        PopupMenu = PopupMenu1
        OnDblClick = GridConsultaDBTableView1DblClick
        OnCellClick = GridConsultaDBLayoutView1CellClick
        DataController.DataSource = DS
        OptionsBehavior.DragDropText = True
        OptionsData.Editing = True
        OptionsView.ScrollBars = ssVertical
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CenterRecords = False
        object GridConsultaDBLayoutView1Assunto: TcxGridDBLayoutViewItem [0]
          Caption = 'Assunto'
          DataBinding.FieldName = 'DESCRICAO'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.ShowEndEllipsis = True
          Properties.WordWrap = True
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem1
          Styles.Content = EstiloKanbanAssunto
        end
        object GridConsultaDBLayoutView1ImgNotificacoes: TcxGridDBLayoutViewItem [1]
          Caption = 'Notificacao'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceHeight = 20
              Glyph.SourceWidth = 20
              Kind = bkGlyph
            end>
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem3
          Options.ShowEditButtons = isebAlways
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1Projeto: TcxGridDBLayoutViewItem [2]
          Caption = 'Cliente/Projeto'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem5
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1Dt_Limite: TcxGridDBLayoutViewItem [3]
          Caption = 'Dt Limite'
          DataBinding.FieldName = 'CALENDARIO_DT_PREVISAO_FIM'
          PropertiesClassName = 'TcxDateEditProperties'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem7
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1ImgAnexo: TcxGridDBLayoutViewItem [4]
          Caption = 'ImgAnexo'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Glyph.SourceHeight = 16
              Glyph.SourceWidth = 16
              Kind = bkGlyph
              LeftAlignment = True
            end
            item
              Default = True
              Glyph.SourceHeight = 16
              Glyph.SourceWidth = 16
              Kind = bkGlyph
              LeftAlignment = True
            end
            item
              Glyph.SourceHeight = 16
              Glyph.SourceWidth = 16
              Kind = bkGlyph
              LeftAlignment = True
            end
            item
              Glyph.SourceHeight = 16
              Glyph.SourceWidth = 16
              Kind = bkGlyph
              LeftAlignment = True
            end
            item
              Glyph.SourceHeight = 16
              Glyph.SourceWidth = 16
              Kind = bkGlyph
              LeftAlignment = True
            end>
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem8
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1ImgObservacao: TcxGridDBLayoutViewItem [5]
          Caption = 'Icones'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkGlyph
            end
            item
              Kind = bkGlyph
            end
            item
              Kind = bkGlyph
            end
            item
              Kind = bkGlyph
            end>
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem9
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1Tarefas: TcxGridDBLayoutViewItem [6]
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem6
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1ImgEquipe: TcxGridDBLayoutViewItem [7]
          Caption = 'Equipe'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceHeight = 24
              Glyph.SourceWidth = 24
              Kind = bkGlyph
            end>
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem10
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1ImgUsuario: TcxGridDBLayoutViewItem [8]
          Caption = 'Icones'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceHeight = 24
              Glyph.SourceWidth = 24
              Kind = bkGlyph
            end>
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem4
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1PRODUTO: TcxGridDBLayoutViewItem [9]
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          PropertiesClassName = 'TcxLabelProperties'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem2
          Styles.Content = EstiloKanbanAssunto
        end
        object GridConsultaDBLayoutView1QTDADEPECA: TcxGridDBLayoutViewItem [10]
          Caption = 'Qtd.'
          DataBinding.FieldName = 'QTDADEPECA'
          PropertiesClassName = 'TcxLabelProperties'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem11
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1FUNCIONARIO: TcxGridDBLayoutViewItem [11]
          Caption = 'Fun'
          DataBinding.FieldName = 'FUNCIONARIO'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem12
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO: TcxGridDBLayoutViewItem [12]
          Caption = 'Prioridade'
          DataBinding.FieldName = 'PRIORIDADE_PRODUCAO'
          PropertiesClassName = 'TdxRatingControlProperties'
          Properties.OnEditValueChanged = GridConsultaDBLayoutView1PRIORIDADE_PRODUCAOPropertiesEditValueChanged
          LayoutItem = GridConsultaDBLayoutView1LayoutItem13
          Styles.Content = EstiloKanbanTexto
        end
        object GridConsultaDBLayoutView1CODIGO: TcxGridDBLayoutViewItem [13]
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          LayoutItem = GridConsultaDBLayoutView1LayoutItem15
        end
        object GridConsultaDBLayoutView1Centro: TcxGridDBLayoutViewItem [14]
          DataBinding.FieldName = 'CENTRO_TRABALHO'
          LayoutItem = GridConsultaDBLayoutView1LayoutItem14
        end
        inherited GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup
          CaptionOptions.Text = 'Template Layout'
          ItemIndex = 3
        end
        object GridConsultaDBLayoutView1LayoutItem4: TcxGridLayoutItem
          AlignHorz = ahClient
          AlignVert = avClient
          SizeOptions.Width = 253
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem1: TcxGridLayoutItem
          SizeOptions.Height = 8
          SizeOptions.Width = 260
          Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem3: TcxGridLayoutItem
          AlignVert = avClient
          SizeOptions.Height = 6
          SizeOptions.Width = 27
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem5: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group2
          SizeOptions.Width = 220
          CaptionOptions.Visible = False
          Index = 0
        end
        object GridConsultaDBLayoutView1LayoutItem7: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1AutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Height = 19
          SizeOptions.Width = 102
          CaptionOptions.Visible = False
          Index = 1
        end
        object GridConsultaDBLayoutView1LayoutItem8: TcxGridLayoutItem
          AlignHorz = ahRight
          SizeOptions.Height = 27
          SizeOptions.Width = 28
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem9: TcxGridLayoutItem
          AlignHorz = ahClient
          SizeOptions.Height = 25
          SizeOptions.Width = 140
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem10: TcxGridLayoutItem
          SizeOptions.Height = 10
          SizeOptions.Width = 115
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem6: TcxGridLayoutItem
          AlignHorz = ahRight
          SizeOptions.Width = 24
          CaptionOptions.Visible = False
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem2: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group8
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Visible = False
          Index = 1
        end
        object GridConsultaDBLayoutView1LayoutItem11: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group8
          AlignHorz = ahRight
          AlignVert = avClient
          SizeOptions.Width = 82
          CaptionOptions.Visible = False
          Index = 0
        end
        object GridConsultaDBLayoutView1Group2: TdxLayoutGroup
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Assunto'
          SizeOptions.Width = 212
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object GridConsultaDBLayoutView1Group8: TdxLayoutGroup
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          SizeOptions.Width = 164
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object GridConsultaDBLayoutView1LayoutItem12: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignHorz = ahClient
          CaptionOptions.Visible = False
          Index = 2
        end
        object GridConsultaDBLayoutView1LayoutItem13: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1Group1
          SizeOptions.Width = 91
          CaptionOptions.Visible = False
          Index = 0
        end
        object GridConsultaDBLayoutView1Group1: TdxLayoutGroup
          Parent = GridConsultaDBLayoutView1Group_Root
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object GridConsultaDBLayoutView1LayoutItem15: TcxGridLayoutItem
          Index = -1
        end
        object GridConsultaDBLayoutView1LayoutItem14: TcxGridLayoutItem
          Parent = GridConsultaDBLayoutView1AutoCreatedGroup2
          SizeOptions.Width = 118
          CaptionOptions.Visible = False
          Index = 0
        end
        object GridConsultaDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = GridConsultaDBLayoutView1Group_Root
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 3
        end
      end
      inherited cxGridLevel1: TcxGridLevel
        GridView = GridConsultaDBLayoutView1
      end
    end
    inherited GridSubGrid: TcxGrid
      Top = 42
      Height = 578
      TabOrder = 12
      ExplicitTop = 42
      ExplicitHeight = 578
    end
    inherited pnlFlipRotate: TPanel
      Top = 42
      Height = 578
      Color = clBtnFace
      TabOrder = 15
      ExplicitTop = 42
      ExplicitHeight = 578
    end
    inherited tcAcoes: TdxTileControl
      Width = 257
      ExplicitWidth = 257
      object tcEncaminhar: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Style.GradientBeginColor = clPurple
        Style.GradientEndColor = clPurple
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Encaminhar'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        Visible = False
      end
    end
    inherited cbxQuantidadeItens: TcxComboBox
      TabOrder = 9
    end
    inherited btnDataFiltro: TcxButton
      TabOrder = 5
    end
    inherited btnMenuOpcoes: TcxButton
      TabOrder = 11
    end
    inherited btnAgruparFiltro: TcxButton
      TabOrder = 6
    end
    inherited btnFiltro_Filtro: TcxButton
      TabOrder = 7
    end
    inherited btnImprimir_Filtro: TcxButton
      TabOrder = 4
    end
    inherited btnAtualizar: TcxButton
      TabOrder = 3
    end
    object btnEquipe: TcxButton [15]
      Left = 258
      Top = 3
      Width = 151
      Height = 33
      Hint = 'Filtrar por Equipe'
      Caption = 'Equipe'
      Colors.DefaultText = clPurple
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = imgBaseCinza
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEquipeClick
    end
    object btnFiltro_Funcionario: TcxButton [16]
      Left = 410
      Top = 3
      Width = 204
      Height = 33
      Hint = 'Filtrar por Funcion'#225'rio'
      Caption = 'Funcion'#225'rio'
      Colors.DefaultText = clPurple
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      LookAndFeel.NativeStyle = True
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = imgBaseCinza
      OptionsImage.Spacing = 0
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFiltro_FuncionarioClick
    end
    inherited GrupoDados: TdxLayoutGroup
      Visible = False
      Index = 3
    end
    inherited litcAcoes: TdxLayoutItem
      AlignHorz = ahLeft
      ControlOptions.OriginalWidth = 257
    end
    inherited GrupoKanban: TdxLayoutGroup
      Parent = GrupoPesquizarEGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LookBrancoWeb
      ScrollOptions.Horizontal = smAuto
      ShowBorder = False
      Index = 1
    end
    inherited GrpoMostrarRegistros: TdxLayoutGroup
      Index = 8
    end
    inherited GrupoTT: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited libtnDataFiltro: TdxLayoutItem
      AlignHorz = ahRight
      Index = 5
    end
    inherited libtnMenuOpcoes: TdxLayoutItem
      Index = 9
    end
    inherited libtnAgruparFiltro: TdxLayoutItem
      AlignHorz = ahRight
      Index = 6
    end
    inherited libtnFiltro_Filtro: TdxLayoutItem
      AlignHorz = ahRight
      Index = 7
    end
    inherited libtnImprimir_Filtro: TdxLayoutItem
      AlignHorz = ahRight
      Index = 4
    end
    inherited libtnAtualizar: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avBottom
      Index = 3
    end
    object liSplitGantt: TdxLayoutSplitterItem
      Parent = GrupoPesquizarEGrid
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = btnEquipe
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = GrupoTT
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = btnFiltro_Funcionario
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited pnlAgrupador: TPanel
    Top = 46
    Height = 571
    ExplicitTop = 46
    ExplicitHeight = 571
    inherited tcAgrupador: TdxTileControl
      Height = 569
      ExplicitHeight = 569
      object tcAgrupadorItem1: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Text1.AssignedValues = []
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
    end
  end
  inherited pnlImpressoes: TPanel [4]
  end
  inherited pnlFiltros: TPanel [5]
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  object pnlFiltro_Funcionario: TPanel [7]
    Left = 285
    Top = 69
    Width = 260
    Height = 494
    Color = 16505534
    ParentBackground = False
    TabOrder = 7
    Visible = False
    OnExit = pnlFiltro_FuncionarioExit
    object tcFiltrosPanel_Funcionario: TdxTileControl
      Tag = -1
      Left = 1
      Top = 1
      Width = 258
      Height = 492
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 60
      OptionsView.ItemIndent = 6
      TabOrder = 0
      object dxTileControlGroup13: TdxTileControlGroup
        Index = 0
      end
      object tcFiltrosPanel_Funcionario_Retirar: TdxTileControlItem
        Tag = -1
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Retirar filtros'
        Text1.TextColor = cl3DDkShadow
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = [avTextColor]
        Text4.Value = 'Retira os filtros da consulta'
        Text4.TextColor = clMedGray
        OnClick = tcFiltrosPanel_Equipe_RetirarClick
      end
      object dxTileControlItem5: TdxTileControlItem
        Tag = -2
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Arquivados'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = []
        Text4.Value = 'Mostra os itens inativados'
        OnClick = tiFiltros_ArquivadosClick
      end
    end
  end
  object pnlFiltro_Equipe: TPanel [8]
    Left = 149
    Top = 69
    Width = 260
    Height = 512
    Color = 16505534
    ParentBackground = False
    TabOrder = 6
    Visible = False
    OnExit = pnlFiltro_EquipeExit
    object tcFiltrosPanel_Equipe: TdxTileControl
      Tag = -1
      Left = 1
      Top = 1
      Width = 258
      Height = 510
      OptionsBehavior.ItemMoving = False
      OptionsView.CenterContentHorz = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 0
      OptionsView.IndentVert = 0
      OptionsView.ItemHeight = 60
      OptionsView.ItemIndent = 6
      TabOrder = 0
      object dxTileControlGroup12: TdxTileControlGroup
        Index = 0
      end
      object tcFiltrosPanel_Equipe_Retirar: TdxTileControlItem
        Tag = -1
        GroupIndex = 0
        IndexInGroup = 0
        Size = tcisLarge
        Style.GradientBeginColor = clWhite
        Style.GradientEndColor = clWhite
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avTextColor, avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Retirar filtros'
        Text1.TextColor = cl3DDkShadow
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = [avTextColor]
        Text4.Value = 'Retira os filtros da consulta'
        Text4.TextColor = clMedGray
        OnClick = tcFiltrosPanel_Equipe_RetirarClick
      end
      object dxTileControlItem3: TdxTileControlItem
        Tag = -2
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaTopCenter
        Text1.AssignedValues = [avFont]
        Text1.Font.Charset = ANSI_CHARSET
        Text1.Font.Color = clDefault
        Text1.Font.Height = -16
        Text1.Font.Name = 'Segoe UI Semibold'
        Text1.Font.Style = [fsBold]
        Text1.Value = 'Arquivados'
        Text2.AssignedValues = []
        Text2.IndentHorz = -10000
        Text2.Value = '2222222222222222'
        Text3.AssignedValues = []
        Text4.Align = oaBottomCenter
        Text4.AssignedValues = []
        Text4.Value = 'Mostra os itens inativados'
        OnClick = tiFiltros_ArquivadosClick
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 45012.361190763890000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu_Imprimir: TPopupMenu
    Top = 304
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      ItemOptions.ControlBorderColor = clSilver
      LookAndFeel.Kind = lfUltraFlat
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      GroupOptions.CaptionOptions.Color = clWhite
      GroupOptions.Color = clWhite
      GroupOptions.FrameColor = clGray
      ItemOptions.ControlBorderColor = clGray
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    Style.BorderColor = clInactiveCaption
    StyleFocused.BorderStyle = ebsNone
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    Left = 350
    PixelsPerInch = 96
    object EstiloKanbanTexto: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = 10457735
    end
    object EstiloKanbanAssunto: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = cl3DDkShadow
    end
    object EstiloKanbanProduto: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      TextColor = 9145227
    end
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrame_CadProducao'
    UsaCadastroPocket = True
    UsaTravaCadastroPocket = False
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'PRODUCAO'
    Modulo = 'PRODUCAO'
    Top = 444
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
    DesignInfo = 23724467
  end
  inherited Consulta: TFDQuery
    FieldOptions.AutoCreateMode = acCombineAlways
    SQL.Strings = (
      
        'select P.CODIGO, P.DESCRICAO, P.RAZAOSOCIAL, P.PRODUTO, P.CODPRO' +
        'DUTO, P.QTDADEPECA, P.PRIORIDADE_PRODUCAO, P.CALENDARIO_DT_PREVI' +
        'SAO_FIM, P.SITUACAO, '
      
        'P.PRODUCAO_ESTAGIO, P.CODCENTRO_TRABALHO, P.PESSOA_FUNCIONARIO_C' +
        'ODIGO,'
      
        'FUN.FANTASIA AS FUNCIONARIO, CT.DESCRICAO AS CENTRO_TRABALHO, L.' +
        'DESCRICAO AS LOCAL, P.CODLOCAL, P.CODTIPO_IMPRESSAO, P.TIPO_IMPR' +
        'ESSAO, P.DT_EMISSAO '
      'from PRODUCAO P'
      
        'JOIN (SELECT FUN.CODIGO, FUN.FANTASIA FROM PESSOAS FUN) FUN ON F' +
        'UN.CODIGO = P.PESSOA_FUNCIONARIO_CODIGO'
      
        'JOIN (SELECT CT.CODIGO, CT.DESCRICAO FROM CENTRO_TRABALHO CT) CT' +
        ' ON CT.CODIGO = P.CODCENTRO_TRABALHO'
      'LEFT JOIN LOCAL L ON L.CODIGO = P.CODLOCAL')
  end
  object PopupMenu1: TPopupMenu
    Left = 348
    Top = 407
    object Abrir1: TMenuItem
      Caption = 'Abrir'
    end
    object Abrir2: TMenuItem
      Caption = 'Arquivar'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Encaminhar1: TMenuItem
      Caption = 'Encaminhar'
      OnClick = Encaminhar1Click
    end
  end
end
