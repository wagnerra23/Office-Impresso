object FrmProducao_Fila: TFrmProducao_Fila
  Left = 0
  Top = 0
  Caption = 'Fila de Produ'#231#227'o'
  ClientHeight = 728
  ClientWidth = 1366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1366
    Height = 728
    Align = alClient
    TabOrder = 0
    object GridConsulta: TcxGrid
      Left = 17
      Top = 83
      Width = 658
      Height = 628
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object GridConsultaDBBandedTableView1: TcxGridDBBandedTableView
        OnDblClick = GridConsultaDBBandedTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSLista
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorWidth = 1
        OptionsView.BandHeaders = False
        Bands = <
          item
          end
          item
          end>
        object GridConsultaDBBandedTableView1POSICAO: TcxGridDBBandedColumn
          Caption = 'Posi'#231#227'o'
          DataBinding.FieldName = 'POSICAO'
          Visible = False
          SortIndex = 2
          SortOrder = soAscending
          Styles.Content = cxStyle2
          Width = 46
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn
          Caption = 'Quant'
          DataBinding.FieldName = 'QUANT'
          PropertiesClassName = 'TcxProgressBarProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Width = 86
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 1
        end
        object GridConsultaDBBandedTableView1ASSUNTO: TcxGridDBBandedColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'ASSUNTO'
          Styles.Content = cxStyle2
          Width = 517
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object GridConsultaDBBandedTableView1CLIENTE: TcxGridDBBandedColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTE'
          Styles.Content = cxStyle3
          Width = 345
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object GridConsultaDBBandedTableView1LOCAL: TcxGridDBBandedColumn
          Caption = 'Local'
          DataBinding.FieldName = 'LOCAL'
          Visible = False
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 2
        end
        object GridConsultaDBBandedTableView1EQUIPE: TcxGridDBBandedColumn
          Caption = 'Equipe'
          DataBinding.FieldName = 'EQUIPE'
          Visible = False
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 2
        end
        object GridConsultaDBBandedTableView1PRODUCAO_ESTAGIO: TcxGridDBBandedColumn
          Caption = 'Est'#225'gio'
          DataBinding.FieldName = 'PRODUCAO_ESTAGIO'
          Visible = False
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 2
        end
        object GridConsultaDBBandedTableView1SITUACAO: TcxGridDBBandedColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Visible = False
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle1
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 2
        end
        object GridConsultaDBBandedTableView1FUNCIONARIO: TcxGridDBBandedColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'FUNCIONARIO'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle4
          Width = 171
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 1
        end
        object GridConsultaDBBandedTableView1PRIORIDADE_PRODUCAO: TcxGridDBBandedColumn
          Caption = 'Estrelinha'
          DataBinding.FieldName = 'PRIORIDADE_PRODUCAO'
          PropertiesClassName = 'TdxRatingControlProperties'
          SortIndex = 1
          SortOrder = soDescending
          Width = 85
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object GridConsultaDBBandedTableView1ESTILO: TcxGridDBBandedColumn
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object GridConsultaDBBandedTableView1FILA: TcxGridDBBandedColumn
          Caption = 'Fila'
          DataBinding.FieldName = 'FILA'
          Visible = False
          SortIndex = 0
          SortOrder = soDescending
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = GridConsultaDBBandedTableView1
      end
    end
    object cxGrid1: TcxGrid
      Left = 692
      Top = 406
      Width = 657
      Height = 305
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.ClearFindFilterTextOnClose = False
        FindPanel.DisplayMode = fpdmManual
        FindPanel.InfoText = 'Pesquisa...'
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DSParados
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'CODIGO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Grouping = dtgByDate
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object cxGridDBTableView1POSICAO: TcxGridDBColumn
          Caption = 'Posi'#231#227'o'
          DataBinding.FieldName = 'POSICAO'
        end
        object cxGridDBTableView1PRIORIDADE: TcxGridDBColumn
          Caption = 'Prioridade'
          DataBinding.FieldName = 'PRIORIDADE'
        end
        object cxGridDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGridDBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 200
        end
        object cxGridDBTableView1SITUACAO: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'SITUACAO'
          Width = 200
        end
        object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 200
        end
      end
      object cxGridDBLayoutView1: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.MinValueWidth = 8
        OptionsView.RecordBorderWidth = 2
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 0
        OptionsView.SeparatorColor = clBtnShadow
        OptionsView.SeparatorWidth = 0
        OptionsView.ViewMode = lvvmMultiColumn
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 692
      Top = 83
      Width = 657
      Height = 306
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.ClearFindFilterTextOnClose = False
        FindPanel.DisplayMode = fpdmManual
        FindPanel.InfoText = 'Pesquisa...'
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.GridModeBufferCount = 50
        DataController.DataSource = DS
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'CODIGO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Grouping = dtgByDate
        FilterRow.InfoText = 'Click aqui para definir um filtro'
        NewItemRow.InfoText = 'Click aqui para adicionar um novo registro'
        OptionsBehavior.IncSearch = True
        OptionsBehavior.RecordScrollMode = rsmByPixel
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o possui registro>'
        OptionsView.CellAutoHeight = True
        OptionsView.CellTextMaxLineCount = 1
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clMoneyGreen
        OptionsView.RowSeparatorWidth = 1
        object cxGridDBTableView2POSICAO: TcxGridDBColumn
          Caption = 'Posi'#231#227'o'
          DataBinding.FieldName = 'POSICAO'
          Width = 45
        end
        object cxGridDBTableView2PRIORIDADE: TcxGridDBColumn
          Caption = 'Prioridade'
          DataBinding.FieldName = 'PRIORIDADE'
          Width = 60
        end
        object cxGridDBTableView2CLIENTE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTE'
          Width = 150
        end
        object cxGridDBTableView2FUNCIONARIO: TcxGridDBColumn
          Caption = 'Funcion'#225'rio'
          DataBinding.FieldName = 'FUNCIONARIO'
          Width = 200
        end
        object cxGridDBTableView2DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 200
        end
        object cxGridDBTableView2CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Width = 50
        end
        object cxGridDBTableView2CODCENTRO_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'CODCENTRO_TRABALHO'
          Visible = False
        end
      end
      object cxGridDBLayoutView2: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ItemHotTrack = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ScrollBars = ssNone
        OptionsView.MinValueWidth = 8
        OptionsView.RecordBorderWidth = 2
        OptionsView.RecordCaption.Visible = False
        OptionsView.RecordIndent = 0
        OptionsView.SeparatorColor = clBtnShadow
        OptionsView.SeparatorWidth = 0
        OptionsView.ViewMode = lvvmMultiColumn
        object dxLayoutGroup2: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object cxGridLevel3: TcxGridLevel
        Caption = 'Relat'#243'rio'
        GridView = cxGridDBTableView2
      end
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 17
      AutoSize = False
      Caption = 'Fila de Produ'#231#227'o'
      ParentColor = False
      ParentFont = False
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clBtnHighlight
      Style.IsFontAssigned = True
      Transparent = True
      Height = 39
      Width = 1179
    end
    object cbxSelecionaCT: TcxLookupComboBox
      Left = 1204
      Top = 40
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CODIGO'
        end
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListFieldIndex = 1
      Properties.OnEditValueChanged = cbxSelecionaCTPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object lblTaNaFila: TcxLabel
      Left = 560
      Top = 26
      AutoSize = False
      Caption = '000'
      ParentColor = False
      ParentFont = False
      Style.Color = clGrayText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 50
      AnchorX = 585
      AnchorY = 39
    end
    object lblTaParado: TcxLabel
      Left = 756
      Top = 26
      AutoSize = False
      Caption = '000'
      ParentColor = False
      ParentFont = False
      Style.Color = clGrayText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 50
      AnchorX = 781
      AnchorY = 39
    end
    object lblTaExecutando: TcxLabel
      Left = 658
      Top = 26
      AutoSize = False
      Caption = '000'
      ParentColor = False
      ParentFont = False
      Style.Color = clGrayText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clDefault
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 50
      AnchorX = 683
      AnchorY = 39
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Control = GridConsulta
      ControlOptions.OriginalHeight = 500
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid2
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 500
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup5
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = dxLayoutGroup3
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 39
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Selecione a Equipe'
      CaptionOptions.Layout = clTop
      Control = cbxSelecionaCT
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lblFila: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      LayoutLookAndFeel = Fila
      Padding.Bottom = 5
      Padding.Left = 20
      Padding.Right = 20
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = '000'
      CaptionOptions.Visible = False
      CaptionOptions.Width = 20
      Control = lblTaNaFila
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Fila'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeelData
      ButtonOptions.DefaultWidth = 0
      Padding.AssignedValues = [lpavLeft]
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahCenter
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lblParado: TdxLayoutItem
      Parent = GroupTaParado
      AlignHorz = ahCenter
      AlignVert = avCenter
      LayoutLookAndFeel = Parado
      Padding.Bottom = 5
      Padding.Left = 20
      Padding.Right = 20
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = '000'
      CaptionOptions.Visible = False
      Control = lblTaParado
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lblExecutando: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahCenter
      AlignVert = avCenter
      LayoutLookAndFeel = Produzindo
      Padding.Bottom = 5
      Padding.Left = 20
      Padding.Right = 20
      Padding.Top = 5
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      Control = lblTaExecutando
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Executando'
      LayoutLookAndFeel = Produzindo
      LayoutDirection = ldHorizontal
      LayoutLookAndFeelException = True
      ShowBorder = False
      Index = 1
    end
    object GroupTaParado: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Parado'
      LayoutLookAndFeel = Parado
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.TextColor = clDefault
    Style.ButtonStyle = btsFlat
    Style.ButtonTransparency = ebtAlways
    Left = 411
    Top = 197
    PixelsPerInch = 96
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 439
    Top = 197
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
      GroupOptions.CaptionOptions.Font.Color = clBlack
      GroupOptions.CaptionOptions.Font.Height = -16
      GroupOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.TextColor = clBlack
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.Color = clWhite
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.TextColor = clGreen
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderColor = clMaroon
      ItemOptions.ControlBorderStyle = lbsNone
      Offsets.ControlOffsetHorz = 4
      Offsets.ControlOffsetVert = 4
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 4
      PixelsPerInch = 96
    end
  end
  object ConsultaFuncionarios: TFDQuery
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select pr.ordem as Posicao, pr.prioridade, pr.razaosocial as Cli' +
        'ente, p.razaosocial as funcionario, pr.descricao, pr.codigo, pr.' +
        'codcentro_trabalho from producao pr'
      'left join pessoas p on p.codigo = pr.pessoa_funcionario_codigo'
      
        'where pr.codcentro_trabalho = :codcentro_trabalho and pr.tem_pla' +
        'y = '#39'S'#39' and pr.ativo = '#39'S'#39
      'ORDER BY pr.prioridade, pr.ordem')
    Left = 411
    Top = 169
    ParamData = <
      item
        Name = 'CODCENTRO_TRABALHO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 265
        Value = Null
      end>
    object ConsultaFuncionariosPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'ORDEM'
    end
    object ConsultaFuncionariosPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object ConsultaFuncionariosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object ConsultaFuncionariosFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'RAZAOSOCIAL'
      ProviderFlags = []
      Size = 150
    end
    object ConsultaFuncionariosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ConsultaFuncionariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaFuncionariosCODCENTRO_TRABALHO: TIntegerField
      FieldName = 'CODCENTRO_TRABALHO'
      Origin = 'CODCENTRO_TRABALHO'
    end
    object ConsultaFuncionariosMinData: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object ConsultaFuncionariosMaxData: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 411
    Top = 225
  end
  object DS: TDataSource
    DataSet = ConsultaFuncionarios
    Left = 439
    Top = 169
  end
  object ConsultaLista: TFDQuery
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select pr.ordem as Posicao, pr.codigo, pr.descricao as assunto, ' +
        'pr.razaosocial as cliente, ct.descricao as equipe, pr.producao_e' +
        'stagio, pr.situacao,PR.PRIORIDADE_PRODUCAO,pS.fila,'
      
        'iif (p.razaosocial is not null, p.razaosocial, '#39'Sem respons'#225'vel'#39 +
        ') as funcionario,'
      'iif (pr.local is not null, pr.local, '#39'-'#39') as local,'
      'pr.prioridade from producao pr'
      'left join pessoas p on p.codigo = pr.pessoa_funcionario_codigo'
      
        'left join centro_trabalho ct on ct.codigo = pr.codcentro_trabalh' +
        'o'
      'LEFT JOIN PRODUCAO_SITUACAO PS ON PS.DESCRICAO = PR.SITUACAO'
      
        'where pr.ativo = '#39'S'#39' and pr.TEM_FILA = '#39'S'#39' and pr.codcentro_trab' +
        'alho = :codcentro_trabalho'
      'order by pS.fila, pr.prioridade desc, pr.ordem')
    Left = 475
    Top = 141
    ParamData = <
      item
        Name = 'CODCENTRO_TRABALHO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object AggregateField1: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField2: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSLista: TDataSource
    DataSet = ConsultaLista
    Left = 503
    Top = 141
  end
  object ConsultaParados: TFDQuery
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select pr.ordem as Posicao, pr.prioridade, pr.codigo, pr.situaca' +
        'o, pr.descricao, pr.razaosocial from producao pr'
      
        'where pr.ativo = '#39'S'#39' and pr.tem_pausar = '#39'S'#39' and pr.codcentro_tr' +
        'abalho = :codcentro_trabalho'
      'order by pr.ordem, pr.prioridade')
    Left = 475
    Top = 197
    ParamData = <
      item
        Name = 'CODCENTRO_TRABALHO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object ConsultaParadosPOSICAO: TIntegerField
      FieldName = 'POSICAO'
      Origin = 'ORDEM'
    end
    object ConsultaParadosPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object ConsultaParadosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaParadosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 150
    end
    object ConsultaParadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 600
    end
    object ConsultaParadosRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 150
    end
    object AggregateField3: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField4: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSParados: TDataSource
    DataSet = ConsultaParados
    Left = 503
    Top = 197
  end
  object Transa: TFDTransaction
    Options.Isolation = xiReadCommitted
    Options.ReadOnly = True
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 475
    Top = 253
  end
  object ConsultaCT: TFDQuery
    AggregatesActive = True
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evMode, evItems, evRecsMax, evRowsetSize, evRecordCountMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDynamic
    FetchOptions.RowsetSize = 100
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvCmdExecMode, rvStoreItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select c.codigo, c.descricao from centro_trabalho c')
    Left = 475
    Top = 169
    object ConsultaCTCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object ConsultaCTDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object AggregateField5: TAggregateField
      FieldName = 'MinData'
      Active = True
      DisplayName = ''
    end
    object AggregateField6: TAggregateField
      FieldName = 'MaxData'
      Active = True
      DisplayName = ''
    end
  end
  object DSCT: TDataSource
    DataSet = ConsultaCT
    Left = 503
    Top = 169
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 344
    Top = 192
    object Produzindo: TdxLayoutStandardLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clGreen
      GroupOptions.CaptionOptions.Font.Height = -16
      GroupOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.TextColor = clGreen
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.Color = clSkyBlue
      PixelsPerInch = 96
    end
    object Fila: TdxLayoutStandardLookAndFeel
      GroupOptions.Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      GroupOptions.Padding.Bottom = 5
      GroupOptions.Padding.Left = 20
      GroupOptions.Padding.Right = 20
      GroupOptions.Padding.Top = 5
      GroupOptions.Color = clYellow
      ItemOptions.ControlBorderColor = clTeal
      PixelsPerInch = 96
    end
    object Disponiveis: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
    object Aguardando: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
    object Parado: TdxLayoutStandardLookAndFeel
      GroupOptions.Color = 8421631
      PixelsPerInch = 96
    end
  end
  object background: TdxLayoutLookAndFeelList
    Left = 344
    Top = 168
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -16
      GroupOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      GroupOptions.CaptionOptions.Font.Style = [fsBold]
      GroupOptions.CaptionOptions.TextColor = clMaroon
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.Color = 4197444
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -13
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI Semibold'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = clWhite
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
  object dxLayoutLookAndFeelList4: TdxLayoutLookAndFeelList
    Left = 344
    Top = 288
  end
  object dxLayoutLookAndFeelList5: TdxLayoutLookAndFeelList
    Left = 344
    Top = 256
  end
  object SQLTable1: TSQLTable
    Left = 503
    Top = 253
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 224
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      TextColor = 14916441
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14916441
    end
  end
  object cxImageListTreeList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 579
    Top = 173
    Bitmap = {
      494C010116001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202144F1717B0EA1717B2EC02021653000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616AAE61B1BD1FF1B1BD1FF1717B2EC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616A9E51B1BD1FF1B1BD1FF1717B0EA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202124C1616A9E51616AAE60202144F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000030000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000000000012128CD1131392D500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000001191B1BD1FF1B1BD1FF0000021E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000001010D421B1BD1FF1B1BD1FF02021047000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000505256C1B1BD1FF1B1BD1FF05052871000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000090947951B1BD1FF1B1BD1FF0A0A4C9A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000F0F75BF1B1BD1FF1B1BD1FF10107BC4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616ADE81B1BD1FF1B1BD1FF1818B4ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000001616A9E51B1BD1FF1B1BD1FF1717B0EA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000202124C1616A9E51616AAE60202144F000000000000
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
      0000000000000000000000000000000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      00020000000400000008000000080000000000000000EBD17CFFEBD17CFF413A
      22870807043090804CC85A502F9E4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80615733A4A39156D50000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF0000000800000000EBD17CFFEBD17CFF413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B970000000800000000EBD17CFFEBD17CFF413A
      228708070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000002010118020101180000
      000D08070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000002010118020101180000
      000D08070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000080704307F7143BC423A23884A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000008070430EBD17CFFEBD17CFF4A41278F1B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000060303022003030220010100121B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000001B180E58EBD17CFFEBD17CFF0B0A
      05383B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F80EBD17CFFEBD17CFF000000080000000000000000000000000000
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
      00000302011D36301C7B7B6D41B9A29056D49B8A52CF675C36A91C190F590000
      0004000000000000000000000000000000000000000000000008000000080000
      0004000000020000000800000008000000040000000300000008000000080000
      0002000000040000000800000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043F38
      2185DFC776F9EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF50472A952319
      277061466DB901010116000000000000000000000000A89659D85D5331A1413A
      22870807043090804CC85A502F9E4A41278F1B180E5876693EB58C7C4AC50B0A
      05383B341F80615733A4A39156D5000000080000000000000000000000000000
      000000000000000000000000000B463D248B473E258C0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00051111114C0000000000000000000000000000000000000000000000001110
      104A00000005000000000000000000000000000000000000000675683DB4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE3CA78FB05040327926A
      A4E3B987D0FF856196D90100011500000000000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF332D1A77000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008C9C2C2FE464444970000000B00000000000000000000000A45434396C9C2
      C2FE00000008000000000000000000000000000000004B432891EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF605532A31B131E62B987
      D0FFB987D0FFB987D0FF5F456BB700000000000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000001E1B105DEBD17CFFEBD17CFF201C115F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FF928D8DD90808083508080834908C8CD7CBC4C4FFCBC4
      C4FF000000080000000000000000000000000706032DE7CD7AFDEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFE9CF7BFE0706042E856095D8B987
      D0FFB987D0FFB987D0FFB987D0FF0E0A1047000000005B51309F02010118413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000014120A4B14120A4C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFC3BCBCFAC3BCBCFACBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F462A94EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF71643CB1140E1654B987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF513B5BA9000000009F8D54D24E442993413A
      228708070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000000000042A25166C2B26166D00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A89659D8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0B0A0639765685CCB987D0FFB987
      D0FFB987D0FFB987D0FFB987D0FF966DA8E60000000002010118020101180000
      000D08070430332D1B78000000104A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000002824156BEBD17CFFEBD17CFF2B26166D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DEC576F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF847545BF0503052B63486FBB563E61AF4B36
      55A33F2E489635273C8A2D20327E241A28710000000000000000000000000000
      0000080704307F7143BC423A23884A41278F1B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000002824156AEBD17CFFEBD17CFF2A25166C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000DDC575F8EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C36208215130B4E2824156A322C1A763C35
      20824940268E564B2D9A635834A6302B19740000000000000000000000000000
      0000000000060303022003030220010100121B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000000000032824156A2824156B00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000A79458D7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF443C248A0000000000000000000000000000
      0000000000000000000000000000000000001B180E58121009482D2718700B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000015130B4E16140C4F00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000004F452994EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF121009470000000000000000000000000000
      0000000000000000000000000000000000001B180E587D6F42BA92824DC90B0A
      05383B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000001F1C105EEBD17CFFEBD17CFF211D1161000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF000000080000000000000000000000000606032CE6CC7AFCEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFA89659D8000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      00000000000000000000302B1974EBD17CFFEBD17CFF322C1A76000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008CBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4C4FFCBC4
      C4FF00000008000000000000000000000000000000004A41278FEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE7CD7AFD100E0844000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      000000000000000000000000000A423B2388433C23890000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005585555A8585555A8585555A8585555A8585555A8585555A8585555A85855
      55A800000005000000000000000000000000000000000000000574663DB3EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFEBD1
      7CFFE9CF7BFE2A25166D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F800303022053492B97000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000043D36
      2083DEC576F8EBD17CFFEBD17CFF3C3620829E8C53D1EBD17CFFEBD17CFFBDA8
      64E515130B4E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B341F806A5E38ABA89659D8000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011C342E1B79796B40B72824156A665A35A8675B36A9211D11600000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      000000000000000000020000000000000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD589FFEFD9
      95FFEED892FFEDD68CFFEBD27EFFEFDB98FFEED78FFFEFD995FFEBD17CFFEED8
      91FFEED78FFFEFDB98FFECD383FFEBD17CFF0000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA27231569000000000000000000000000000000003831
      1D7DE3C978FB2C27176F00000000000000000000000000000000000000000000
      00003D372083E2C978FA2723156900000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF0000000500000005EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E3B0FFFBF6
      E6FFF9F1D8FFF5E8BEFFEDD588FFFDFBF3FFF7EDCCFFFBF6E6FFEBD17CFFF9F0
      D4FFF7EDCCFFFDFBF3FFEFDB99FFEBD17CFF0000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A6000000000000000000000000000000007D6F
      42BAEBD17CFF695E38AB00000000000000000000000000000000000000000000
      0000887947C2EBD17CFF635834A600000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFE4CA78FB0000000300000003E3C978FBEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF1E1AAFFF9F2
      DBFFF7EDCEFFF4E5B6FFECD487FFFBF6E6FFF5EAC3FFF9F2DBFFEBD17CFFF7EC
      CBFFF5EAC3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E000000000000000000000000000000002723
      1469CAB46BED4C432891332D1A77332D1B78332D1B78332D1B78332D1B78332D
      1B78594F2F9DCEB76DEF1F1C105E00000000EBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFF3B341F80000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD78FFFF1DE
      A2FFF0DC9DFFEED994FFECD281FFF1E0A7FFEFDB99FFF1DEA2FFEBD17CFFF0DC
      9CFFEFDB99FFF1E0A7FFECD487FFEBD17CFF000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000000000000000000000000000685D
      37AADCC474F7887947C2887947C2867747C1847546BF847546BF817344BD8173
      43BD7F7143BC7C6F42BA2924166B00000000EBD17CFFEBD17CFFEBD17CFFE9CF
      7BFE857746C0110F094600000000000000000000000000000000110F09458576
      46C0E9CF7BFEEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001311
      0A49E1C977FA0000000500000000000000000000000000000000000000000000
      000000000000000000000000000000000000463D248B211E126115130B4E0202
      0119000000000000000000000000000000000000000000000000000000000000
      00000202011916140C4F201C115F433B23890202011C0202011C1C190F59EBD1
      7CFFCEB76DEF594F2F9DEBD17CFF6C6039AD867747C1EBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF0000000000000000000000002621
      1467E3CA78FB2F2A19733F3821854941278F0605032A18150C52090805340000
      0006000000010000000000000000000000000000000000000000000000002622
      1467E3CA78FB93824ECA6A5F38AC4940268E2D28187018150C52090805340101
      001600000001000000000000000000000000EBD17CFF9E8C53D10302011D0000
      000000000000000000000E0D07400A0905360000000000000000000000000000
      0000000000000201011992824CC9EBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF6E9
      C2FFF4E6BBFFF9F2DAFFEED993FFEBD17CFF000000000000000000000000433B
      2389EBD17CFF473E258C8F7F4BC7EBD17CFF1C190F59E6CC7AFCEBD17CFF1916
      0D54D9C172F592824DC912100947423A23880000000000000000000000005C52
      30A0EBD17CFFEBD17CFFEBD17CFFEBD17CFFAD9A5BDB3D362183EBD17CFFEBD1
      7CFFDBC274F6AA9759D97E7042BB423A2388EBD17CFFEBD17CFF93824ECA0000
      0002000000015C5230A0B3A05EDF7C6F42BA7C6F42BA7C6F42BA7C6F42BA0000
      000D000000028F7F4BC7EBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A37C6F42BAEBD17CFFEBD17CFFF7EC
      CBFFF5E9C3FFFBF6E6FFEFDA96FFEBD17CFF0000000000000000000000002319
      27701C18125C1C190F592D2918711D19115C05040227E2C978FAEBD17CFF1916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000000000000AA96
      59D9EBD17CFFEBD17CFFEBD17CFFCAB46BED221B1D69594064B1564B2E9AEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF1614
      0C4F000000071F1C105E1F1C105E1F1C105E1F1C105E1F1C105E1E1A105C0000
      000215130B4EEBD17CFFEBD17CFFEBD17CFF0000000000000000100F0945EBD1
      7CFFCAB46BED4C432891EBD17CFF605532A34B4228918F7F4BC78F7F4BC78F7F
      4BC78F7F4BC78F7F4BC78F7F4BC78F7F4BC70000000000000000000000057C5A
      8BD1AC7DC2F6483552A0694C76C0B383C9FB523C5EAB17131154887947C21916
      0D54EBD17CFFCAB46BED25211366EBD17CFF000000000000000001010013E9CF
      7BFEEBD17CFFEBD17CFFDFC776F9241E1A69A275B6EFB987D0FF42314A99796B
      40B7EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF584F
      2F9D000000061C190F591C190F591C190F592A25166C827445BE100E08430000
      00004E452993EBD17CFFEBD17CFFEBD17CFF0000000000000000000000082E29
      18720F0D08424C432891EBD17CFF605532A30000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0D07403B34
      1F811B151B615A4165B22D21337F17111658553E5FADAD7FC2F733253A870605
      042CB39F5EDFCAB46BED25211366EBD17CFF000000000000000014120A4BEBD1
      7CFFEBD17CFFE9CF7CFE2E281D748C669DDEB987D0FFB987D0FFB987D0FF2E23
      317F9E8C53D1EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9887
      50CD000000000000000000000000000000000403022200000000000000000000
      0000796B40B7EBD17CFFEBD17CFFEBD17CFF0000000000000000000000004C43
      2892B19E5EDE675C36A9625734A519160D540000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D372083EBD1
      7CFFD2BB6FF1625834A5AF9C5CDCE6CC7AFC5A502F9E16111456755483CB976E
      AAE72018226A2B27176F04040225DBC374F700000000000000003E372184EBD1
      7CFFEBD17CFF3B351F812E2234807E5C8ED3B987D0FFB987D0FFAB7DC0F55D43
      69B50D0A0A41BDA964E5EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF9D8C
      53D1000000000000000000000000000000000000000000000000000000000000
      00007C6F42BAEBD17CFFEBD17CFFEBD17CFF0000000000000000000000000908
      0535DBC273F6EBD17CFFEBD17CFF90804CC850472A950302011D000000090000
      00000000000000000000000000000000000000000000000000007F7143BCEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD7BF71F438311E7D2118
      236B9A6FADE9785786CD3929408E39321F7E0000000000000000807143BCEBD1
      7CFFE6CC7AFC897948C3887947C229202A77B987D0FFB987D0FF886399DB342E
      1B78887947C2B4A05EDFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF473E
      258C000000000000000000000000000000000000000000000000000000000000
      0000312B1A75EBD17CFFEBD17CFFEBD17CFF0000000000000000000000000000
      00000A090537EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFCEB76DEF9282
      4CC99D8C53D1080804320000000000000000030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA7C6F42BA534A
      2B9805040328553E61AEB987D0FF241A2770030302200706042FD3BC70F29685
      4FCC7C6F42BA7C6F42BA7C6F42BA1813185B62476FBA62476FBA483552A0302A
      19737C6F42BA7C6F42BA7C6F42BA5D5230A0EBD17CFFEBD17CFF7F7143BC0000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000066A5F38ACEBD17CFFEBD17CFF0000000000000000000000000000
      0000000000001D1A0F5AAA9759D9EBD17CFFEBD17CFFE0C776F9E5CC7AFCEBD1
      7CFFEBD17CFF17140C500000000000000000BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000000000000000000000000000000000000000
      0000000000000201021B0604062F04020426BFA965E6EBD17CFFE1C977FA0202
      011D000000000000000000000000140E1654856196D9856196D962476FBA0000
      000000000000000000000000000000000000252113660D0C073E000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A090536252113660000000000000000000000000000
      000000000000000000000E0D0740B3A05EDFD9C172F53F3821851D1A0F5B5148
      2A9615130B4E0000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000005000000030000
      0000000000000000000000000000000000020000000500000005000000040000
      0000000000000000000000000000000000000404022592814CC9E9CF7BFEEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFD1BB6FF10B1006450074
      00AC00EF00F700DA00EC00460086000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938B73C6EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF352F1C7A009E00C900FF
      00FF00FF00FF00FF00FF00FF00FF004600860000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E8C7FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0F1F085E00FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00DA00EC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000514120A4C0000000000000000000000000000000000000000000000001311
      0A4A000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2A19732F2A197300000000000000000000
      000000000000000000000000000000000000F7EECFFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF0D22066200FF00FF00FF
      00FF00FF00FF00FF00FF00FF00FF00EF00F70000000000000000000000000000
      00000000000000000000020101181B180E580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008E9CF7CFE52492B970000000B00000000000000000000000A51482A96E9CF
      7CFE000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBC374F6DBC374F600000000000000000000
      000000000000000000000000000000000000FEFCF6FFEED994FFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFF2625146C00D100E700FF
      00FF00FF00FF00FF00FF00FF00FF007400AC0000000000000000000000000000
      0000000000000605032AB3A05EDF211D11610000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFAA9659D90A08053509080534A79559D7EBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFEFEFBFFF6EBC5FFEED8
      90FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFBAA562E3071A035400D1
      00E700FF00FF00FF00FF009E00C90C130C460000000000000000000000091815
      0C5224201365CDB66CEEEBD17CFF38311D7D19160D5519160D5519160D551916
      0D5518150C520000000A00000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFE2C978FAE1C977FAEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EBFFF8EFD1FFF6EBC7FFF5E9C1FFF5E9C0FFF6EBC8FFC5BFADE3292D
      296C0E240E611022105E393A397AE3E3E3F100000000000000003D362083EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF4039228600000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCC474F7DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFCFFF4E5B5FFEBD280FFEBD27EFFF3E4B2FFFEFEFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D7BF
      72F4D8C172F5DBC374F7DCC474F7EBD17CFFEBD17CFFD8C172F5D9C172F5DCC4
      74F7DBC374F62E2918720000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3E2AEFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF2E1ABFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF0000000800000000000000000000000000000000000000002F2A1973D6BF
      71F4D8C172F5D8C172F5D8C172F5E9CF7CFEEBD17CFFDCC474F7DCC474F7DCC4
      74F7D9C172F52D2818710000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF6E5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFFAF4
      E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DCC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5E7BCFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF4E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000615633A4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF615633A400000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3BC70F2DBC474F700000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1DFA5FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DC
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000005C5230A0EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF5E5331A100000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8C172F5D8C172F500000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DC9CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEFDC
      9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000015120B4DC8B2
      6AECD0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B86DF0D0B8
      6DF0C9B26AEC17140C5000000000000000000000000000000000000000000000
      0008EBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6BF71F4D5BE70F300000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EAC4FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF5E9
      C0FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B35A8665B
      35A8000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2918722D28187100000000000000000000
      0000000000000000000000000000000000009D9D9DC8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFDFFF4E5B5FFEBD17DFFEBD17CFFEBD17CFFEBD17DFFF3E3B0FFFFFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DC80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505279D9D9DC8F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFDFAF0FFF8EFD3FFF8EFD2FFFCF9EEFFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC999999C6050505250000000000000000000000000000
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
      0000000000000000000000000000000000000504032692824CC9E8CE7AFDEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFE9CF7BFE93834ECA050503280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000968F7BC7EBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFF998F71CA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2EAD0FCEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF4E8C2FE0000000000000000000000000000
      000000000007584E2E9C0605032B000000003E37218426221467000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B180E573F3821853F3821853F3821853F3821853F3821853F3821851B18
      0E57000000000000000000000000000000000000000000000000000000081512
      0B4D16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F14120A4C000000060000000000000000F8F1D8FFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFF6EAC6FF0000000000000000000000000000
      000000000000BDA964E52924166B0000000072663CB2998851CE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFEFDB9BFFF0DC9CFFEBD17CFFEBD17CFF6358
      34A60000000000000000000000000000000000000000000000002A25166CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFF17140C500000000000000000FEFDFAFFF0DC9DFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEED993FFFDFBF3FF0000000000000000000000000000
      0001433B2389BBA563E395844ECB443C248A96854FCCDEC576F8443C248A1311
      0A49000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF7ECCBFFF6EBC7FFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000000574E2E9CEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFE9D07CFE332D1B780000000000000000FFFFFFFFFEFEFDFFF7EDCCFFEED9
      94FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFEED891FFF6EBC7FFFEFDFBFFFFFFFFFF0000000000000000000000000000
      000075683DB4BBA562E3D7BF71F48D7E4BC6A89659D8EBD17CFF9D8C53D13630
      1C7B000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A600000000000000000000000000000000000000000000000092814CC9EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFFB8A461E2332D1B780000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCF8EDFFF8EFD2FFF6EBC8FFF5E8BEFFF4E6BAFFF6EBC8FFF8EFD1FFFCF8
      ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000002824156ABFAA65E6000000000A090537EBD17CFF13110A4A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000635834A6EBD17CFFEBD17CFFF5E9C1FFF2E1AAFFEBD17CFFEBD17CFF6358
      34A6000000000000000000000000000000000000000000000002D6BF71F4EBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF75683DB4332D1B770000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFF3E5B7FFEBD27EFFEBD17CFFF1E0A8FFFEFCF8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000E0C073FEBD17CFF010100120000000DE9CF7CFE312B1A750000
      0000000000000000000000000000000000000000000000000000000000000000
      0000201C115FCCB66CEEEBD17CFFEBD17CFFEBD17CFFEBD17CFFCCB66CEE211D
      1161000000000000000000000000000000000000000004040224EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF423A23882A25166D0000000A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2E3B0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF0DDA1FFFFFF
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00003B351F81DCC474F7EBD17CFFDCC474F7DBC374F6EBD17CFFE3CA78FBCCB6
      6CEE000000090000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000017140C51EBD17CFFEBD1
      7CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD1
      7CFF1D1A0F5A0F0D08420A08053500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAF3DFFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF9F2
      DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000302011E1D1A0F5AD1BB6FF17F7043BB1D1A0F5A71643CB1AF9C5CDC1D1A
      0F5A010000110000000000000000000000000000000000000000000000000000
      0000000000008F7F4CC7EBD17CFFEBD17CFFEBD17CFFEBD17CFF8F7F4CC70000
      0000000000000000000000000000000000000000000039321E7EEBD17CFFEBD1
      7CFFEBD17CFF847545BF2B26176E2B26176E2B26176E2B26176E2B26176E2621
      14670000000901010015221E126200000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF3E5B6FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000008F7F4BC77C6E41B90000000023201364C9B36AEC0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000655A35A8EBD17CFFEBD17CFFEBD17CFFEBD17CFF685D37AA0000
      0000000000000000000000000000000000000000000013110A49605532A36055
      32A3A39156D51A170E5605040226050402260504022605040226050402260504
      02260504022605040226352F1C7A00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DEA3FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEED9
      93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000024201365403922860000000005050328584E2E9C0000
      0009000000000000000000000000000000000000000000000000000000000000
      000000000000010100164D44299271643CB171643CB14E452993010100170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202011B16140C4F16140C4F16140C4F16140C4F16140C4F16140C4F1614
      0C4F16140C4F16140C4F0202011C00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0DDA0FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEDD6
      8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F9FCFFFFFFFFFFFFFFFFFFFF
      FFFFF6EBC8FFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFEBD17CFFF3E5
      B5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999999C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFF3E5B6FFEBD17DFFEBD17CFFEBD17CFFEBD17CFFF1E0A8FFFEFD
      FAFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9EC90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050525999999C6F9F9F9FCFFFF
      FFFFFFFFFFFFFFFFFFFFFCF8ECFFF7ECCBFFF6ECC9FFFBF6E6FFFFFFFFFFFFFF
      FFFFFFFFFFFFF9F9F9FC9B9B9BC705050526424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
    DesignInfo = 11338307
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302038352038352220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732303738363939322220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302038352C302038352C383520302C3835
          20222F3E0D0A3C706174682066696C6C3D2223374444314542222066696C6C2D
          72756C653D226E6F6E7A65726F2220643D224D36332033376C2D372030202D32
          20313220382030202D312037202D382030202D32203131202D3820302032202D
          3131202D31302030202D32203131202D3720302032202D3131202D3720302031
          202D37203720302032202D3132202D3820302032202D37203720302032202D31
          3220382030202D3220313220313020302032202D313220372030202D32203132
          20382030202D3220377A6D2D313520306C2D31302030202D3220313220313020
          302032202D31327A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302039322039322220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C672069643D
          225F313637313732343730303839362220786D6C3A73706163653D2270726573
          65727665223E262331333B262331303B3C706F6C79676F6E2066696C6C3D226E
          6F6E652220706F696E74733D22302C302039322C302039322C393220302C3932
          20222F3E0D0A3C6720786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C706174682066696C6C3D22233744443145422220643D22
          4D32392034326C3334203063322C3020342C3120342C336C30203237202D3432
          20302030202D323763302C2D3220322C2D3320342C2D337A222F3E0D0A3C7061
          74682066696C6C3D22233744443145422220643D224D35312035376C2D313020
          30632D362C30202D31312C2D34202D31312C2D31306C30202D313863302C2D36
          20352C2D31302031312C2D31306C3130203063362C302031312C342031312C31
          306C3020313863302C36202D352C3130202D31312C31307A6D2D3130202D3333
          6C3130203063332C3020352C3220352C356C3020313863302C33202D322C3520
          2D352C356C2D31302030632D332C30202D352C2D32202D352C2D356C30202D31
          3863302C2D3320322C2D3520352C2D357A222F3E0D0A3C6720786D6C3A737061
          63653D227072657365727665223E262331333B262331303B3C636972636C6520
          66696C6C3D227768697465222063783D223436222063793D2236322220723D22
          34222F3E0D0A3C726563742066696C6C3D2277686974652220783D2234332220
          793D223436222077696474683D223522206865696768743D223133222F3E0D0A
          090909093C2F673E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A
          65726F2220643D224D31343132203433346C2D31303820363035202D3339202D
          323139202D3130202D3537202D36202D3336202D37202D3431202D3132202D36
          34632D362C2D3337202D34302C2D3635202D37362C2D36356C2D31322030202D
          36312030202D3338342030202D34302030202D37332030632D31342C30202D32
          392C2D3133202D33312C2D32376C2D35202D3239632D362C2D3334202D33372C
          2D3632202D37312C2D363520342C2D31322031372C2D32312033302C2D32316C
          383930203063352C3020392C322031322C3520332C3320342C3820332C31347A
          6D3332202D3434632D31312C2D3133202D32392C2D3231202D34372C2D32316C
          2D3839302030632D33372C30202D37312C3238202D37372C36356C2D31203220
          2D3232362030632D31382C30202D33362C38202D34372C3232202D31322C3134
          202D31372C3332202D31332C35316C3131362036353763362C33372034302C36
          352037362C36356C39323920306331392C302033362C2D382034382C2D323120
          372C2D392031312C2D31392031332C2D33306C31203020313331202D37333863
          342C2D3139202D312C2D3338202D31332C2D35327A222F3E0D0A093C2F673E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020313137203131372220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          3C636C6970506174682069643D226964302220786D6C3A73706163653D227072
          657365727665223E202020203C7061746820643D224D313820306C3831203063
          31302C302031382C382031382C31386C3020383163302C3130202D382C313820
          2D31382C31386C2D38312030632D31302C30202D31382C2D38202D31382C2D31
          386C30202D383163302C2D313020382C2D31382031382C2D31387A222F3E0D0A
          09093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D22
          4C6179657220312220786D6C3A73706163653D227072657365727665223E2623
          31333B262331303B3C6D657461646174612069643D22436F72656C436F727049
          445F30436F72656C2D4C61796572222F3E0D0A3C706174682066696C6C3D2277
          686974652220643D224D313820306C383120306331302C302031382C38203138
          2C31386C3020383163302C3130202D382C3138202D31382C31386C2D38312030
          632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D31
          3020382C2D31382031382C2D31387A222F3E0D0A3C6720636C69702D70617468
          3D2275726C2823696430292220786D6C3A73706163653D227072657365727665
          223E2020203C672069643D225F313637313732303732343434382220786D6C3A
          73706163653D227072657365727665223E202020203C6720786D6C3A73706163
          653D227072657365727665223E20202020203C706174682069643D225F312220
          66696C6C3D2223374444314542222066696C6C2D72756C653D226E6F6E7A6572
          6F2220643D224D333520343863362C31322031372C31392032342C313920372C
          302031372C2D362032332C2D313820312C2D3320322C2D3720332C2D31312031
          2C2D3220322C2D3620322C2D313120302C2D3132202D31332C2D3233202D3238
          2C2D3233202D31352C30202D32382C3131202D32382C323320302C3420302C36
          20312C3920302C3420312C3920332C31327A6D37382038366C2D313038203020
          30202D343363302C2D31312032382C2D32312034312C2D32316C323520306331
          332C302034322C31302034322C32316C302034337A222F3E0D0A090909093C2F
          673E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706174682066696C6C3D
          226E6F6E652220643D224D313820306C383120306331302C302031382C382031
          382C31386C3020383163302C3130202D382C3138202D31382C31386C2D383120
          30632D31302C30202D31382C2D38202D31382C2D31386C30202D383163302C2D
          313020382C2D31382031382C2D31387A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223332707822206865696768743D22333270782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020323039203230392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C6465667320786D6C3A73706163653D227072657365727665223E202020
          203C636C6970506174682069643D226964302220786D6C3A73706163653D2270
          72657365727665223E20202020203C7061746820643D224D333220306C313435
          20306331372C302033322C31342033322C33326C3020313037632D392C2D3132
          202D32342C2D3230202D34312C2D3230202D32372C30202D34392C3232202D34
          392C343920302C313720382C33322032302C34316C2D3130372030632D31382C
          30202D33322C2D3135202D33322C2D33326C30202D31343563302C2D31382031
          342C2D33322033322C2D33327A222F3E0D0A09093C2F636C6970506174683E0D
          0A093C2F646566733E0D0A3C672069643D224C6179657220312220786D6C3A73
          706163653D227072657365727665223E262331333B262331303B3C6D65746164
          6174612069643D22436F72656C436F727049445F30436F72656C2D4C61796572
          222F3E0D0A3C672069643D225F313637313733303239303836342220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          2066696C6C3D2277686974652220643D224D333220306C31343520306331372C
          302033322C31342033322C33326C3020313037632D392C2D3132202D32342C2D
          3230202D34312C2D3230202D32372C30202D34392C3232202D34392C34392030
          2C313720382C33322032302C34316C2D3130372030632D31382C30202D33322C
          2D3135202D33322C2D33326C30202D31343563302C2D31382031342C2D333220
          33322C2D33327A222F3E0D0A3C6720636C69702D706174683D2275726C282369
          6430292220786D6C3A73706163653D227072657365727665223E202020203C67
          20786D6C3A73706163653D227072657365727665223E20202020203C6720786D
          6C3A73706163653D227072657365727665223E2020202020203C706174682069
          643D225F31222066696C6C3D2223374444314542222066696C6C2D72756C653D
          226E6F6E7A65726F2220643D224D36332038366331302C32322032392C333320
          34322C33332031332C302033302C2D31312034312C2D333220322C2D3520342C
          2D313220362C2D313820312C2D3620322C2D313220322C2D323120302C2D3232
          202D32322C2D3430202D34392C2D3430202D32372C30202D35302C3138202D35
          302C343020302C3620312C313120322C313520312C3820332C313720362C3233
          7A6D313337203135326C2D31393220302030202D373663302C2D32302035312C
          2D33372037342C2D33376C343420306332332C302037342C31372037342C3337
          6C302037367A222F3E0D0A09090909093C2F673E0D0A090909093C2F673E0D0A
          0909093C2F673E0D0A3C706174682066696C6C3D226E6F6E652220643D224D33
          3220306C31343520306331372C302033322C31342033322C33326C3020313037
          632D392C2D3132202D32342C2D3230202D34312C2D3230202D32372C30202D34
          392C3232202D34392C343920302C313720382C33322032302C34316C2D313037
          2030632D31382C30202D33322C2D3135202D33322C2D33326C30202D31343563
          302C2D31382031342C2D33322033322C2D33327A222F3E0D0A3C636972636C65
          2066696C6C3D226C696D65222063783D22313638222063793D22313638222072
          3D223431222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D2230203020333139203331392220786D6C6E733A786C69
          6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
          2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E63
          6F6D2F636F72656C647261772F6F646D2F32303033223E262331333B26233130
          3B203C672069643D224C6179657220312220786D6C3A73706163653D22707265
          7365727665223E262331333B262331303B3C6D657461646174612069643D2243
          6F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C726563
          742066696C6C3D226E6F6E65222077696474683D223331392220686569676874
          3D22333139222F3E0D0A3C706174682066696C6C3D2223374444314542222066
          696C6C2D72756C653D226E6F6E7A65726F2220643D224D34372031373763302C
          2D323920302C2D353820302C2D383720302C2D313620392C2D32392032302C2D
          32392036322C30203132332C30203138352C302031312C302032302C31332032
          302C323920302C323920302C353820302C383720302C3136202D392C3239202D
          32302C3239202D33362C30202D37332C30202D3130392C306C39203532202D36
          30202D3532632D382C30202D31372C30202D32352C30202D31312C30202D3230
          2C2D3133202D32302C2D32397A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706F6C
          79676F6E2066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220706F696E74733D223339372C32333420313230332C323334
          20313230332C31333636203830302C31303833203339372C3133363620222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C302031
          3630302C3020313630302C3136303020302C3136303020222F3E0D0A3C706174
          682066696C6C3D22233744443145422220643D224D32363220383730632D3130
          2C2D3130202D31352C2D3231202D32342C2D3334202D322C2D3130202D352C2D
          3231202D352C2D333720302C2D32332031312C2D35322032372C2D3639203138
          2C2D31372034352C2D32362036382C2D32376C3337372031202D32202D333735
          63312C2D32342031302C2D35322032372C2D36392031372C2D31362034332C2D
          32342036392C2D32372032382C322035322C31312037302C33302031372C3136
          2032372C34302032362C36356C32203337352033373320306332362C31203530
          2C31312036372C32382031372C31362032382C34322033302C3730202D332C32
          37202D31332C3530202D32392C3637202D31372C3137202D34332C3239202D36
          372C32396C2D333735202D3220312033373763302C3233202D31312C3438202D
          32392C3636202D31372C3136202D34342C3330202D36372C3239202D31372C30
          202D32372C2D33202D33392C2D37202D392C2D36202D32322C2D3133202D3332
          2C2D3232202D372C2D37202D31342C2D3230202D31382C2D3239202D372C2D31
          34202D31322C2D3236202D392C2D33396C30202D333733202D333735202D3263
          2D31332C33202D32332C30202D33372C2D37202D392C2D34202D32322C2D3131
          202D32392C2D31386C3020307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C6465667320786D6C3A73706163653D227072657365727665223E20
          20203C636C6970506174682069643D226964302220786D6C3A73706163653D22
          7072657365727665223E202020203C7061746820643D224D3020306C31363030
          203020302031363030202D3136303020302030202D313630307A222F3E0D0A09
          093C2F636C6970506174683E0D0A093C2F646566733E0D0A3C672069643D224C
          6179657220312220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C6D657461646174612069643D22436F72656C436F72704944
          5F30436F72656C2D4C61796572222F3E0D0A3C6720786D6C3A73706163653D22
          7072657365727665223E20203C2F673E0D0A3C6720636C69702D706174683D22
          75726C2823696430292220786D6C3A73706163653D227072657365727665223E
          2020203C6720786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C672069643D225F323832343232353237313834302220786D6C3A
          73706163653D227072657365727665223E20202020203C706174682066696C6C
          3D2223374444314542222066696C6C2D72756C653D226E6F6E7A65726F222064
          3D224D2D323439203636336337302C313636203230332C323537203239322C32
          35372038382C30203231302C2D3838203238312C2D3235322031372C2D343020
          33322C2D39312034322C2D3134302031322C2D34302031382C2D39312031382C
          2D31353520302C2D313731202D3135322C2D333135202D3334312C2D33313520
          2D3138382C30202D3334312C313434202D3334312C33313520302C343520332C
          383320382C31313520372C36302032302C3132362034312C3137357A6D393531
          20313038346C2D3133323620302030202D34393563302C2D313539203335332C
          2D323839203531322C2D3238396C3330302030633136302C30203531342C3133
          30203531342C3238396C30203439357A222F3E0D0A090909093C2F673E0D0A3C
          706174682066696C6C3D2223374444314542222066696C6C2D72756C653D226E
          6F6E7A65726F2220643D224D31323733203636336337302C313636203230332C
          323537203239322C3235372038372C30203231302C2D3838203238312C2D3235
          322031372C2D34302033322C2D39312034322C2D3134302031322C2D34302031
          382C2D39312031382C2D31353520302C2D313731202D3135332C2D333135202D
          3334312C2D333135202D3138392C30202D3334312C313434202D3334312C3331
          3520302C343520322C383320382C31313520372C36302032302C313236203431
          2C3137357A6D39353120313038316C2D3133323620302030202D34393263302C
          2D313539203335332C2D323839203531322C2D3238396C333030203063313539
          2C30203531342C313330203531342C3238396C30203439327A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D22233744443145422220706F696E74733D223439
          332C353635203932392C353635203830302C34343320313038382C3539332031
          3130372C363337203439332C36333720222F3E0D0A3C706F6C79676F6E206669
          6C6C3D22233744443145422220706F696E74733D22313130372C373832203637
          312C373832203830302C393034203531322C373533203439332C373039203131
          30372C37303920222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A3C706F
          6C79676F6E2066696C6C3D226E6F6E652220706F696E74733D22302C30203136
          30302C3020313630302C3136303020302C3136303020222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234343639303332
          3732302220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22233744443145422220643D224D363438
          20333031632D34362C36202D38302C3336202D37362C363820342C3332203434
          2C35332039312C34372034302C2D352037312C2D32392037352C2D3536203139
          2C31322034362C31382037352C31352035302C2D372038362C2D33382038322C
          2D373120302C2D32202D312C2D34202D312C2D352032382C31332036352C3138
          203130352C31332034352C2D362038332C2D3234203130372C2D34372034312C
          31382038382C3236203133312C32312038392C2D3132203133312C2D37362039
          352C2D313434202D33352C2D3637202D3133362C2D313133202D3232342C2D31
          3032202D36302C38202D39392C3430202D3130372C3831202D32332C2D313020
          2D35332C2D3135202D38342C2D3131202D36342C39202D3131322C3438202D31
          31352C3932202D31352C2D32202D33322C2D33202D34392C30202D36312C3820
          2D3130372C3435202D3130322C383420312C3520322C313020342C3134202D32
          2C30202D352C30202D372C317A222F3E0D0A3C706F6C79676F6E2066696C6C3D
          22233744443145422220706F696E74733D223534332C343439203736342C3434
          39203736342C31303233203534332C3130323320222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D22233744443145422220706F696E74733D22302C393839
          203832372C393839203832372C36323220313630302C36323220313630302C39
          383920313630302C3136303020302C3136303020222F3E0D0A3C6720786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C706F6C79
          676F6E2066696C6C3D2277686974652220706F696E74733D22313432342C3836
          3020313432342C39373220313239322C39373220313239322C38363020222F3E
          0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D22
          313239322C37313920313432342C37313920313432342C38333220313239322C
          38333220222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465222070
          6F696E74733D22313235382C38363020313235382C39373220313132362C3937
          3220313132362C38363020222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C37313920313235382C37313920
          313235382C38333220313132362C38333220222F3E0D0A3C706F6C79676F6E20
          66696C6C3D2277686974652220706F696E74733D223535352C31333039203535
          352C31343231203432332C31343231203432332C3133303920222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2277686974652220706F696E74733D223432332C
          31313638203535352C31313638203535352C31323831203432332C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D223338392C31333039203338392C31343231203235372C31343231203235
          372C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D227768697465
          2220706F696E74733D223235372C31313638203338392C31313638203338392C
          31323831203235372C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C
          3D2277686974652220706F696E74733D223938392C31333039203938392C3134
          3231203835372C31343231203835372C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D223835372C31313638
          203938392C31313638203938392C31323831203835372C3132383120222F3E0D
          0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74733D2238
          32342C31333039203832342C31343231203639312C31343231203639312C3133
          303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F
          696E74733D223639312C31313638203832342C31313638203832342C31323831
          203639312C3132383120222F3E0D0A3C706F6C79676F6E2066696C6C3D227768
          6974652220706F696E74733D22313432342C3133303920313432342C31343231
          20313239312C3134323120313239312C3133303920222F3E0D0A3C706F6C7967
          6F6E2066696C6C3D2277686974652220706F696E74733D22313239312C313136
          3820313432342C3131363820313432342C3132383120313239312C3132383120
          222F3E0D0A3C706F6C79676F6E2066696C6C3D2277686974652220706F696E74
          733D22313235382C3133303920313235382C3134323120313132362C31343231
          20313132362C3133303920222F3E0D0A3C706F6C79676F6E2066696C6C3D2277
          686974652220706F696E74733D22313132362C3131363820313235382C313136
          3820313235382C3132383120313132362C3132383120222F3E0D0A090909093C
          2F673E0D0A0909093C2F673E0D0A3C706F6C79676F6E2066696C6C3D22233744
          443145422220706F696E74733D223237332C353839203439332C353839203439
          332C31303837203237332C3130383720222F3E0D0A3C706174682066696C6C3D
          22233744443145422220643D224D33363820343330632D34322C3231202D3633
          2C3632202D34382C39302031352C32392036302C3334203130312C3133203336
          2C2D31392035372C2D35322035322C2D37392032312C352034392C322037362C
          2D31322034342C2D32332036372C2D36352035322C2D3934202D312C2D32202D
          322C2D34202D332C2D352033312C322036372C2D36203130332C2D3234203430
          2C2D32312037302C2D35312038342C2D38322034352C332039322C2D35203133
          312C2D32352037392C2D34312039362C2D3131362033392C2D313638202D3537
          2C2D3531202D3136372C2D3539202D3234362C2D3138202D35332C3238202D37
          392C3732202D37322C313133202D32352C2D32202D35352C34202D38332C3139
          202D35372C3330202D38382C3834202D37362C313236202D31352C33202D3330
          2C38202D34362C3136202D35342C3239202D38342C3830202D36362C31313520
          322C3420352C3820392C3131202D332C31202D352C33202D372C347A222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323832343237343332303936302220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C38322033363720323637202D313239203230362036312032303420
          2D31313320333031202D313736202D3932382030202D3139202D393163302C30
          202D382C2D3337202D35332C2D3338202D36342C2D31202D3133352C30202D31
          39362C30202D33332C30202D36302C3237202D36302C363020302C3333203237
          2C36302036302C36302034362C302039312C2D31203133362C2D317A6D313336
          203631306C343820323137202D35372031323463302C30202D33382C37352039
          322C3737203133312C3220313031312C3120313031312C3120302C302033392C
          2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C3020
          2D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D39
          33342C2D346C3236202D3439202D3139202D3838203637202D382030202D3235
          35202D323233203130347A6D323930203134346C323133202D32362030202D31
          3939202D3538203332202D313535202D34372030203234307A6D323739202D33
          336C323133202D32362030202D333236202D323133203132322030203233307A
          6D323830202D33346C323132202D32352030202D343532202D32313220313231
          2030203335367A6D323739202D33336C3732202D386333372C2D352036382C2D
          33312036382C2D36386C30202D35303063302C2D36202D312C2D3133202D332C
          2D31396C2D313337203231382030203337377A6D2D313136203337386337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D22313439312C33333020313538352C
          31383020313333362C31383220313336352C323334203938352C343537203735
          382C353832203535302C353230203239312C363435203331382C373636203536
          382C363530203737302C37313220313432332C33333920313435332C33393120
          222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C67
          2069643D225F323738383232323139363939322220786D6C3A73706163653D22
          7072657365727665223E262331333B262331303B3C726563742066696C6C3D22
          6E6F6E65222077696474683D223136303022206865696768743D223136303022
          2F3E0D0A3C706174682066696C6C3D22233744443145422220643D224D313936
          203231376C31383420383237202D35372031323463302C30202D33382C373520
          39322C3737203133312C3220313031312C3120313031312C3120302C30203339
          2C2D342033392C2D333820312C2D333420302C2D333620302C2D333620302C30
          202D372C2D3435202D35302C2D3435202D34322C2D31202D3933342C2D34202D
          3933342C2D346C3236202D3439202D3139202D38382031303434202D31323363
          33372C2D352036382C2D33312036382C2D36386C30202D35303063302C2D3337
          202D33312C2D3638202D36382C2D36386C2D3339342030203020313439203232
          332030202D34333720353039202D343337202D3530392032323320302030202D
          313439202D3338322030202D3139202D393163302C30202D382C2D3337202D35
          332C2D3338202D36342C2D31202D3133352C30202D3139362C30202D33332C30
          202D36302C3237202D36302C363020302C33332032372C36302036302C363020
          34362C302039312C2D31203133362C2D317A6D3131343820313033326337302C
          30203132372C3536203132372C31323720302C3730202D35372C313236202D31
          32372C313236202D37302C30202D3132372C2D3536202D3132372C2D31323620
          302C2D37312035372C2D313237203132372C2D3132377A6D2D38393720306337
          302C30203132362C3536203132362C31323720302C3730202D35362C31323620
          2D3132362C313236202D37312C30202D3132372C2D3536202D3132372C2D3132
          3620302C2D37312035362C2D313237203132372C2D3132377A222F3E0D0A3C70
          6F6C79676F6E2066696C6C3D2223443038374239222066696C6C2D72756C653D
          226E6F6E7A65726F2220706F696E74733D223736312C323237203736312C3432
          38203539392C343238203932342C38303620313234382C34323820313038362C
          34323820313038362C32323720222F3E0D0A3C726563742066696C6C3D222344
          30383742392220783D223736312220793D223938222077696474683D22333235
          22206865696768743D223837222F3E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32313433383738383035
          3133362220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C636972636C652066696C6C3D2223374444314542222063783D2238
          3030222063793D223338382220723D22313534222F3E0D0A3C636972636C6520
          66696C6C3D2223374444314542222063783D22383030222063793D2238303022
          20723D22313534222F3E0D0A3C636972636C652066696C6C3D22233744443145
          42222063783D22383030222063793D22313231322220723D22313534222F3E0D
          0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C706F6C79676F6E2066696C6C3D22234334
          43344342222066696C6C2D72756C653D226E6F6E7A65726F2220706F696E7473
          3D223339372C32333420313230332C32333420313230332C3133363620383030
          2C31303833203339372C3133363620222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D22302030203136303020313630302220786D6C6E733A78
          6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
          6E6B2220786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C
          2E636F6D2F636F72656C647261772F6F646D2F32303033223E262331333B2623
          31303B203C672069643D224C6179657220312220786D6C3A73706163653D2270
          72657365727665223E262331333B262331303B3C6D657461646174612069643D
          22436F72656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C72
          6563742066696C6C3D226E6F6E65222077696474683D22313630302220686569
          6768743D2231363030222F3E0D0A3C672069643D225F32383234323734333131
          3535322220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C706174682066696C6C3D22234430383742392220643D224D313630
          3020383537632D31332C323834202D3137382C353238202D3431352C3635356C
          2D333236202D363930203734312033357A222F3E0D0A3C706174682066696C6C
          3D22233744443145422220643D224D383138203136633430382C313720373335
          2C333436203735302C3735346C2D373530202D33352030202D3731397A222F3E
          0D0A3C706174682066696C6C3D22233744443145422220643D224D3020383030
          63302C2D343232203333332C2D373636203735312C2D3738346C302037383420
          33343120373231632D39352C3431202D3139382C3633202D3330382C3633202D
          3433332C30202D3738342C2D333531202D3738342C2D3738347A222F3E0D0A09
          093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393232303830323434382220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339323230383033
          3032342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D226E6F6E652220783D22342E3831222079
          3D22372E3835222077696474683D22322E353422206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D313420372E33353335352031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420372E333533343820372E383532313329222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22342E38312220793D2237
          2E3835222077696474683D22302E363322206865696768743D22372E3138222F
          3E0D0A09093C2F673E0D0A3C672069643D225F32323339323230383035343234
          2220786D6C3A73706163653D227072657365727665223E262331333B26233130
          3B3C726563742066696C6C3D226E6F6E652220783D22302E39372220793D2239
          2E39222077696474683D22322E353422206865696768743D22352E3133222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420332E35313635382031342E3339393529222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D222337444431454222207472616E73666F726D3D226D61
          7472697828342E3739333639452D31352031202D302E31383039393920322E36
          34383435452D313420332E353136343720392E39303036362922207769647468
          3D22302E363322206865696768743D2231342E3036222F3E0D0A3C7265637420
          66696C6C3D22233744443145422220783D22302E39372220793D22392E392220
          77696474683D22302E363322206865696768743D22352E3133222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22322E38392220793D2239
          2E39222077696474683D22302E363322206865696768743D22352E3133222F3E
          0D0A09093C2F673E0D0A3C672069643D225F3232333932323038303734383822
          20786D6C3A73706163653D227072657365727665223E262331333B262331303B
          3C726563742066696C6C3D226E6F6E652220783D22382E36352220793D22342E
          3939222077696474683D22322E353422206865696768743D2231302E3034222F
          3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F72
          6D3D226D617472697828342E3739333639452D31352031202D302E3138303939
          3920322E3634383435452D31342031312E313930362031342E33393935292220
          77696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C
          726563742066696C6C3D222337444431454222207472616E73666F726D3D226D
          617472697828342E3739333639452D31352031202D302E31383039393920322E
          3634383435452D31342031312E3139303520342E393835303629222077696474
          683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72656374
          2066696C6C3D22233744443145422220783D22382E36352220793D22342E3939
          222077696474683D22302E363322206865696768743D2231302E3034222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22362E3932222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D22233744443145422220783D223130
          2E35362220793D22342E3939222077696474683D22302E363322206865696768
          743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233383937343836383839362220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393734383731
          3334342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D226E6F6E652220783D22342E3831222079
          3D22372E3835222077696474683D22322E353422206865696768743D22372E31
          38222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D313420372E33353335352031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D313420372E333533343820372E383532313329222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22342E38312220793D2237
          2E3835222077696474683D22302E363322206865696768743D22372E3138222F
          3E0D0A09093C2F673E0D0A3C672069643D225F32323338393734383732353932
          2220786D6C3A73706163653D227072657365727665223E262331333B26233130
          3B3C726563742066696C6C3D22233744443145422220783D22302E3937222079
          3D22392E39222077696474683D22322E353422206865696768743D22352E3133
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420332E35313635382031342E3339393529
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D222337444431454222207472616E73666F726D3D
          226D617472697828342E3739333639452D31352031202D302E31383039393920
          322E3634383435452D313420332E353136343720392E39303036362922207769
          6474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C7265
          63742066696C6C3D22233744443145422220783D22302E39372220793D22392E
          39222077696474683D22302E363322206865696768743D22352E3133222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22322E3839222079
          3D22392E39222077696474683D22302E363322206865696768743D22352E3133
          222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333839373438383131
          33362220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C726563742066696C6C3D226E6F6E652220783D22382E36352220793D
          22342E3939222077696474683D22322E353422206865696768743D2231302E30
          34222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73
          666F726D3D226D617472697828342E3739333639452D31352031202D302E3138
          3039393920322E3634383435452D31342031312E313930362031342E33393935
          29222077696474683D22302E363322206865696768743D2231342E3036222F3E
          0D0A3C726563742066696C6C3D222337444431454222207472616E73666F726D
          3D226D617472697828342E3739333639452D31352031202D302E313830393939
          20322E3634383435452D31342031312E3139303520342E393835303629222077
          696474683D22302E363322206865696768743D2231342E3036222F3E0D0A3C72
          6563742066696C6C3D22233744443145422220783D22382E36352220793D2234
          2E3939222077696474683D22302E363322206865696768743D2231302E303422
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22362E3932
          2220793D22372E3835222077696474683D22302E363322206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D22233744443145422220783D
          2231302E35362220793D22342E3939222077696474683D22302E363322206865
          696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233383932313733323234302220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393231373332
          3736382220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22322E353422206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D313420372E33353335352031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420372E333533343820372E383532313329
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22342E3831222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A09093C2F673E0D0A3C672069643D225F32323338393231373533
          3639362220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22302E3937
          2220793D22392E39222077696474683D22322E353422206865696768743D2235
          2E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420332E35313635382031342E3339
          393529222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F
          726D3D226D617472697828342E3739333639452D31352031202D302E31383039
          393920322E3634383435452D313420332E353136343720392E39303036362922
          2077696474683D22302E363322206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D22302E39372220793D
          22392E39222077696474683D22302E363322206865696768743D22352E313322
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22322E3839
          2220793D22392E39222077696474683D22302E363322206865696768743D2235
          2E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333839323137
          35363532382220786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C726563742066696C6C3D226E6F6E652220783D22382E363522
          20793D22342E3939222077696474683D22322E353422206865696768743D2231
          302E3034222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D31342031312E313930362031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D31342031312E3139303520342E393835303629
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22382E3635222079
          3D22342E3939222077696474683D22302E363322206865696768743D2231302E
          3034222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2236
          2E39322220793D22372E3835222077696474683D22302E363322206865696768
          743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222
          20783D2231302E35362220793D22342E3939222077696474683D22302E363322
          206865696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393537383336313238302220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D226E6F6E652220783D2231322E34382220793D22302E393722
          2077696474683D22322E353422206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D2231322E3438222079
          3D22302E3937222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2231
          342E342220793D22302E3937222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          302E39373233373629222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222074
          72616E73666F726D3D226D617472697828342E3739333639452D31352031202D
          302E31383039393920322E3634383435452D31342031352E303237352031342E
          3339393529222077696474683D22302E363322206865696768743D2231342E30
          36222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353738333631
          3138342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22322E353422206865696768743D22
          372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222207472
          616E73666F726D3D226D617472697828342E3739333639452D31352031202D30
          2E31383039393920322E3634383435452D313420372E33353335352031342E33
          39393529222077696474683D22302E363322206865696768743D2231342E3036
          222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E7366
          6F726D3D226D617472697828342E3739333639452D31352031202D302E313830
          39393920322E3634383435452D313420372E333533343820372E383532313329
          222077696474683D22302E363322206865696768743D2231342E3036222F3E0D
          0A3C726563742066696C6C3D22233744443145422220783D22342E3831222079
          3D22372E3835222077696474683D22302E363322206865696768743D22372E31
          38222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353738333633
          3538342220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C726563742066696C6C3D22233744443145422220783D22302E3937
          2220793D22392E39222077696474683D22322E353422206865696768743D2235
          2E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420332E35313635382031342E3339
          393529222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D222337444431454222207472616E73666F
          726D3D226D617472697828342E3739333639452D31352031202D302E31383039
          393920322E3634383435452D313420332E353136343720392E39303036362922
          2077696474683D22302E363322206865696768743D2231342E3036222F3E0D0A
          3C726563742066696C6C3D22233744443145422220783D22302E39372220793D
          22392E39222077696474683D22302E363322206865696768743D22352E313322
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22322E3839
          2220793D22392E39222077696474683D22302E363322206865696768743D2235
          2E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333935373833
          36343330342220786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C726563742066696C6C3D22233744443145422220783D22382E
          36352220793D22342E3939222077696474683D22322E35342220686569676874
          3D2231302E3034222F3E0D0A3C726563742066696C6C3D222337444431454222
          207472616E73666F726D3D226D617472697828342E3739333639452D31352031
          202D302E31383039393920322E3634383435452D31342031312E313930362031
          342E3339393529222077696474683D22302E363322206865696768743D223134
          2E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D31342031312E3139303520342E393835
          303629222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22382E3635
          2220793D22342E3939222077696474683D22302E363322206865696768743D22
          31302E3034222F3E0D0A3C726563742066696C6C3D2223374444314542222078
          3D22362E39322220793D22372E3835222077696474683D22302E363322206865
          696768743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431
          45422220783D2231302E35362220793D22342E3939222077696474683D22302E
          363322206865696768743D2231302E3034222F3E0D0A09093C2F673E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C3A73706163653D227072657365
          727665222077696474683D223136707822206865696768743D22313670782220
          76657273696F6E3D22312E31222073686170652D72656E646572696E673D2267
          656F6D6574726963507265636973696F6E2220746578742D72656E646572696E
          673D2267656F6D6574726963507265636973696F6E2220696D6167652D72656E
          646572696E673D226F7074696D697A655175616C697479222066696C6C2D7275
          6C653D226576656E6F64642220636C69702D72756C653D226576656E6F646422
          2076696577426F783D223020302031362031362220786D6C6E733A786C696E6B
          3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220
          786D6C6E733A786F646D3D22687474703A2F2F7777772E636F72656C2E636F6D
          2F636F72656C647261772F6F646D2F32303033223E262331333B262331303B20
          3C672069643D224C6179657220312220786D6C3A73706163653D227072657365
          727665223E262331333B262331303B3C6D657461646174612069643D22436F72
          656C436F727049445F30436F72656C2D4C61796572222F3E0D0A3C7265637420
          66696C6C3D226E6F6E65222077696474683D22313622206865696768743D2231
          36222F3E0D0A3C672069643D225F323233393538313331393639362220786D6C
          3A73706163653D227072657365727665223E262331333B262331303B3C726563
          742066696C6C3D22233744443145422220783D2231322E34382220793D22302E
          3937222077696474683D22322E353422206865696768743D2231342E3036222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D2231322E3438
          2220793D22302E3937222077696474683D22302E363322206865696768743D22
          31342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542222078
          3D2231342E342220793D22302E3937222077696474683D22302E363322206865
          696768743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444
          31454222207472616E73666F726D3D226D617472697828342E3739333639452D
          31352031202D302E31383039393920322E3634383435452D31342031352E3032
          373520302E39373233373629222077696474683D22302E363322206865696768
          743D2231342E3036222F3E0D0A3C726563742066696C6C3D2223374444314542
          22207472616E73666F726D3D226D617472697828342E3739333639452D313520
          31202D302E31383039393920322E3634383435452D31342031352E3032373520
          31342E3339393529222077696474683D22302E363322206865696768743D2231
          342E3036222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353831
          3331373832342220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C726563742066696C6C3D22233744443145422220783D2234
          2E38312220793D22372E3835222077696474683D22322E353422206865696768
          743D22372E3138222F3E0D0A3C726563742066696C6C3D222337444431454222
          207472616E73666F726D3D226D617472697828342E3739333639452D31352031
          202D302E31383039393920322E3634383435452D313420372E33353335352031
          342E3339393529222077696474683D22302E363322206865696768743D223134
          2E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220747261
          6E73666F726D3D226D617472697828342E3739333639452D31352031202D302E
          31383039393920322E3634383435452D313420372E333533343820372E383532
          313329222077696474683D22302E363322206865696768743D2231342E303622
          2F3E0D0A3C726563742066696C6C3D22233744443145422220783D22342E3831
          2220793D22372E3835222077696474683D22302E363322206865696768743D22
          372E3138222F3E0D0A09093C2F673E0D0A3C672069643D225F32323339353831
          3331373737362220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C726563742066696C6C3D22233744443145422220783D2230
          2E39372220793D22392E39222077696474683D22322E35342220686569676874
          3D22352E3133222F3E0D0A3C726563742066696C6C3D22233744443145422220
          7472616E73666F726D3D226D617472697828342E3739333639452D3135203120
          2D302E31383039393920322E3634383435452D313420332E3531363538203134
          2E3339393529222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D222337444431454222207472616E
          73666F726D3D226D617472697828342E3739333639452D31352031202D302E31
          383039393920322E3634383435452D313420332E353136343720392E39303036
          3629222077696474683D22302E363322206865696768743D2231342E3036222F
          3E0D0A3C726563742066696C6C3D22233744443145422220783D22302E393722
          20793D22392E39222077696474683D22302E363322206865696768743D22352E
          3133222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2232
          2E38392220793D22392E39222077696474683D22302E36332220686569676874
          3D22352E3133222F3E0D0A09093C2F673E0D0A3C672069643D225F3232333935
          38313331393734342220786D6C3A73706163653D227072657365727665223E26
          2331333B262331303B3C726563742066696C6C3D22233744443145422220783D
          22382E36352220793D22342E3939222077696474683D22322E35342220686569
          6768743D2231302E3034222F3E0D0A3C726563742066696C6C3D222337444431
          454222207472616E73666F726D3D226D617472697828342E3739333639452D31
          352031202D302E31383039393920322E3634383435452D31342031312E313930
          362031342E3339393529222077696474683D22302E363322206865696768743D
          2231342E3036222F3E0D0A3C726563742066696C6C3D22233744443145422220
          7472616E73666F726D3D226D617472697828342E3739333639452D3135203120
          2D302E31383039393920322E3634383435452D31342031312E3139303520342E
          393835303629222077696474683D22302E363322206865696768743D2231342E
          3036222F3E0D0A3C726563742066696C6C3D22233744443145422220783D2238
          2E36352220793D22342E3939222077696474683D22302E363322206865696768
          743D2231302E3034222F3E0D0A3C726563742066696C6C3D2223374444314542
          2220783D22362E39322220793D22372E3835222077696474683D22302E363322
          206865696768743D22372E3138222F3E0D0A3C726563742066696C6C3D222337
          44443145422220783D2231302E35362220793D22342E3939222077696474683D
          22302E363322206865696768743D2231302E3034222F3E0D0A09093C2F673E0D
          0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D22486967685072696F72697479223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D362C3330483056323068365633307A204D31342C
          3134483876313668365631347A204D32322C38682D36763232683656387A204D
          33302C32682D36763238683656327A222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D225072696F726974697A6564223E0D
          0A09093C7061746820636C6173733D225265642220643D224D31362C3330632D
          322E322C302D342D312E382D342D3473312E382D342C342D3473342C312E382C
          342C345331382E322C33302C31362C33307A204D31362C32632D322E322C302D
          342C312E382D342C346C322C31322E33683020202623393B2623393B63302E31
          2C312C312C312E382C322C312E3863312C302C312E392D302E382C322D312E38
          68304C32302C364332302C332E382C31382E322C322C31362C327A222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
end
