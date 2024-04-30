object FrameKanban: TFrameKanban
  Left = 0
  Top = 0
  Width = 315
  Height = 583
  Align = alClient
  Color = clBtnFace
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object LcFrame: TdxLayoutControl
    Left = 0
    Top = 49
    Width = 265
    Height = 493
    Align = alClient
    TabOrder = 0
    object GridKanban: TcxGrid
      Left = 5
      Top = 0
      Width = 255
      Height = 493
      BorderStyle = cxcbsNone
      DragMode = dmAutomatic
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmHybrid
      LookAndFeel.SkinName = 'UserSkin'
      object GridKanbanDBLayoutView1: TcxGridDBLayoutView
        DragMode = dmAutomatic
        OnDragDrop = GridKanbanDBLayoutView1DragDrop
        OnDragOver = GridKanbanDBLayoutView1DragOver
        OnEndDrag = GridKanbanDBLayoutView1EndDrag
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = GridKanbanDBLayoutView1CellClick
        DataController.DataSource = DS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object GridKanbanDBLayoutView1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
      object GridKanbanLevel1: TcxGridLevel
        GridView = GridKanbanDBLayoutView1
      end
    end
    object LcFrameGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object LiGridKanban: TdxLayoutItem
      Parent = LcFrameGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      Offsets.Left = 5
      Offsets.Right = 5
      Control = GridKanban
      ControlOptions.OriginalHeight = 255
      ControlOptions.OriginalWidth = 451
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object PnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 16382457
    ParentBackground = False
    TabOrder = 1
    object LcCabecalho: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 315
      Height = 49
      Align = alClient
      DragMode = dmAutomatic
      ParentBackground = True
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      object BtnViewGrid: TcxButton
        Left = 281
        Top = 7
        Width = 24
        Height = 24
        Hint = 'Visualizar por Grade'
        Caption = '+'
        Colors.DefaultText = clMedGray
        Colors.HotText = 16744448
        Colors.PressedText = 16744448
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424DD60500000000000036000000280000001200000014000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000505050A8080
          80F7838383FE0C0C0C1700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222243838383FE848484FF2828284F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242813131
          316000000000000000005C5C5CB3848484FF848484FF5E5E5EB7000000000000
          0000292929503E3E3E7900000000000000000000000000000000000000003E3E
          3E79848484FF848484FF696969CC6D6D6DD4848484FF848484FF848484FF8484
          84FF6C6C6CD3676767C8848484FF848484FF4242428000000000000000000000
          00000000000029292950848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF313131600000
          000000000000000000000000000000000000676767C8848484FF848484FF8484
          84FF848484FF7B7B7BED7B7B7BED848484FF848484FF848484FF848484FF6868
          68CB0000000000000000000000000000000000000000000000006E6E6ED48484
          84FF848484FF7E7E7EF42C2C2C57040404090505050A2D2D2D587F7F7FF58484
          84FF848484FF6C6C6CD3000000000000000000000000101010202B2B2B555C5C
          5CB4848484FF848484FF848484FF2B2B2B550000000000000000000000000000
          00002D2D2D58848484FF848484FF848484FF5A5A5AB025252548090909128484
          84FF848484FF848484FF848484FF848484FF7B7B7BED00000001000000000000
          00000000000000000000010101037B7B7BEF848484FF848484FF848484FF8484
          84FF808080F8808080F8848484FF848484FF848484FF848484FF7B7B7BED0000
          000100000000000000000000000000000000010101037B7B7BEF848484FF8484
          84FF848484FF848484FF848484FF09090913252525485A5A5AB0848484FF8484
          84FF848484FF2B2B2B55000000000000000000000000000000002C2C2C578484
          84FF848484FF848484FF5C5C5CB42B2B2B551010102000000000000000000000
          00006C6C6CD3848484FF848484FF7E7E7EF42C2C2C57040404090505050A2D2D
          2D587F7F7FF5848484FF848484FF6C6C6CD30000000000000000000000000000
          00000000000000000000696969CC848484FF848484FF848484FF848484FF7B7B
          7BED7B7B7BED848484FF848484FF848484FF848484FF676767C8000000000000
          000000000000000000000000000031313160848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF292929500000000000000000000000000000000041414180848484FF8484
          84FF676767C86C6C6CD3848484FF848484FF848484FF848484FF6C6C6CD36969
          69CC848484FF848484FF3E3E3E79000000000000000000000000000000000000
          00003E3E3E792828284F00000000000000005E5E5EB7848484FF848484FF5B5B
          5BB200000000000000003030305F414141800000000000000000000000000000
          00000000000000000000000000000000000000000000000000002828284F8484
          84FF838383FE2222224200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C18838383FE808080F7040404090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        OptionsImage.Spacing = 0
        PaintStyle = bpsCaption
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnViewGridClick
      end
      object LbTituloFrame: TcxLabel
        Left = 7
        Top = 7
        Caption = 'T'#237'tulo'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 9539985
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShowEndEllipsis = True
        Transparent = True
        OnMouseLeave = LbTituloFrameMouseLeave
        AnchorY = 22
      end
      object LbTituloQuant: TcxLabel
        Left = 7
        Top = 32
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 9539985
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ShadowedColor = 11711154
        Properties.ShowEndEllipsis = True
        Transparent = True
        AnchorY = 41
      end
      object LcCabecalhoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object LiBtnViewGrid: TdxLayoutItem
        Parent = LcCabecalhoGroup_Root
        AlignHorz = ahRight
        AlignVert = avTop
        Offsets.Right = 10
        Offsets.Top = 7
        CaptionOptions.Visible = False
        Control = BtnViewGrid
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 24
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LiLbTituloFrame: TdxLayoutItem
        Parent = GrupoFrameTitulo
        AlignHorz = ahClient
        Offsets.Left = 7
        Offsets.Top = 7
        CaptionOptions.Visible = False
        Control = LbTituloFrame
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 273
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LiLbTituloQuant: TdxLayoutItem
        Parent = GrupoFrameTitulo
        AlignHorz = ahClient
        Offsets.Left = 7
        Offsets.Top = -5
        CaptionOptions.Visible = False
        Control = LbTituloQuant
        ControlOptions.OriginalHeight = 17
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object GrupoFrameTitulo: TdxLayoutGroup
        Parent = LcCabecalhoGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlDobrado: TPanel
    Left = 265
    Top = 49
    Width = 50
    Height = 493
    Align = alRight
    BevelOuter = bvNone
    Color = 16382457
    ParentBackground = False
    TabOrder = 2
    Visible = False
    OnDragDrop = GridKanbanDBLayoutView1DragDrop
    object LcDobrado: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 50
      Height = 493
      Align = alClient
      ParentBackground = True
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      OnDragDrop = GridKanbanDBLayoutView1DragDrop
      OnDragOver = LcDobradoDragOver
      object cxButton1: TcxButton
        Left = 16
        Top = 7
        Width = 24
        Height = 24
        Hint = 'Visualizar por Grade'
        Caption = '+'
        Colors.DefaultText = clMedGray
        Colors.HotText = 16744448
        Colors.PressedText = 16744448
        LookAndFeel.NativeStyle = True
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424DD60500000000000036000000280000001200000014000000010020000000
          000000000000C40E0000C40E0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000505050A8080
          80F7838383FE0C0C0C1700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022222243838383FE848484FF2828284F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242813131
          316000000000000000005C5C5CB3848484FF848484FF5E5E5EB7000000000000
          0000292929503E3E3E7900000000000000000000000000000000000000003E3E
          3E79848484FF848484FF696969CC6D6D6DD4848484FF848484FF848484FF8484
          84FF6C6C6CD3676767C8848484FF848484FF4242428000000000000000000000
          00000000000029292950848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF313131600000
          000000000000000000000000000000000000676767C8848484FF848484FF8484
          84FF848484FF7B7B7BED7B7B7BED848484FF848484FF848484FF848484FF6868
          68CB0000000000000000000000000000000000000000000000006E6E6ED48484
          84FF848484FF7E7E7EF42C2C2C57040404090505050A2D2D2D587F7F7FF58484
          84FF848484FF6C6C6CD3000000000000000000000000101010202B2B2B555C5C
          5CB4848484FF848484FF848484FF2B2B2B550000000000000000000000000000
          00002D2D2D58848484FF848484FF848484FF5A5A5AB025252548090909128484
          84FF848484FF848484FF848484FF848484FF7B7B7BED00000001000000000000
          00000000000000000000010101037B7B7BEF848484FF848484FF848484FF8484
          84FF808080F8808080F8848484FF848484FF848484FF848484FF7B7B7BED0000
          000100000000000000000000000000000000010101037B7B7BEF848484FF8484
          84FF848484FF848484FF848484FF09090913252525485A5A5AB0848484FF8484
          84FF848484FF2B2B2B55000000000000000000000000000000002C2C2C578484
          84FF848484FF848484FF5C5C5CB42B2B2B551010102000000000000000000000
          00006C6C6CD3848484FF848484FF7E7E7EF42C2C2C57040404090505050A2D2D
          2D587F7F7FF5848484FF848484FF6C6C6CD30000000000000000000000000000
          00000000000000000000696969CC848484FF848484FF848484FF848484FF7B7B
          7BED7B7B7BED848484FF848484FF848484FF848484FF676767C8000000000000
          000000000000000000000000000031313160848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF292929500000000000000000000000000000000041414180848484FF8484
          84FF676767C86C6C6CD3848484FF848484FF848484FF848484FF6C6C6CD36969
          69CC848484FF848484FF3E3E3E79000000000000000000000000000000000000
          00003E3E3E792828284F00000000000000005E5E5EB7848484FF848484FF5B5B
          5BB200000000000000003030305F414141800000000000000000000000000000
          00000000000000000000000000000000000000000000000000002828284F8484
          84FF838383FE2222224200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C18838383FE808080F7040404090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000}
        OptionsImage.Spacing = 0
        PaintStyle = bpsCaption
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnViewGridClick
      end
      object LbTituloFrameDobrado: TcxLabel
        Left = 9
        Top = 39
        Caption = 'T'#237'tulo Dobrado'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 9539985
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Angle = 90
        Properties.ShowEndEllipsis = True
        Transparent = True
        AnchorX = 25
      end
      object LbTituloQuantDobrado: TcxLabel
        Left = 15
        Top = 182
        Caption = 'Quant Dobrada sd'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.TextColor = 9539985
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Properties.Angle = 90
        Properties.ShadowedColor = 11711154
        Properties.ShowEndEllipsis = True
        Transparent = True
        AnchorX = 25
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahRight
        AlignVert = avTop
        Offsets.Right = 10
        Offsets.Top = 7
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 24
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        Offsets.Top = 7
        CaptionOptions.Visible = False
        Control = LbTituloFrameDobrado
        ControlOptions.AlignHorz = ahCenter
        ControlOptions.OriginalHeight = 142
        ControlOptions.OriginalWidth = 31
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = LbTituloQuantDobrado
        ControlOptions.AlignHorz = ahCenter
        ControlOptions.OriginalHeight = 92
        ControlOptions.OriginalWidth = 19
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        ShowBorder = False
        Index = 1
      end
    end
  end
  object pnlEmcaminhar: TPanel
    Left = 0
    Top = 542
    Width = 315
    Height = 41
    Align = alBottom
    Caption = 'Arraste aqui'
    TabOrder = 3
    Visible = False
    OnClick = pnlEmcaminharClick
  end
  object Kanban: TFDQuery
    BeforeOpen = KanbanBeforeOpen
    AfterOpen = KanbanAfterOpen
    BeforePost = KanbanBeforePost
    FilterOptions = [foCaseInsensitive]
    Connection = DMBanco.Banco
    FetchOptions.AssignedValues = [evRecsSkip, evRecsMax, evRowsetSize, evRecordCountMode]
    FetchOptions.RecsSkip = 0
    FetchOptions.RecsMax = 50
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    Left = 56
    Top = 97
  end
  object DS: TDataSource
    DataSet = Kanban
    Left = 84
    Top = 97
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 97
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 14540253
    end
    object EstiloPreto: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 5921370
    end
    object EstiloCinza: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 8684676
    end
    object EstiloVermelho: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 164
    end
    object EstiloFonteGrid: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 16382457
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 168
    Top = 97
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      ItemOptions.ControlBorderColor = clWhite
      ItemOptions.ControlBorderStyle = lbsNone
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      PixelsPerInch = 96
    end
  end
  object popMenu_Mais: TPopupMenu
    OnPopup = popMenu_MaisPopup
    Left = 141
    Top = 97
    object pop_Novo: TMenuItem
      Caption = 'Novo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pop_Dobrar: TMenuItem
      Caption = 'Dobrar'
      OnClick = pop_DobrarClick
    end
    object pop_Recaregr: TMenuItem
      Caption = 'Recaregar'
      OnClick = pop_RecaregrClick
    end
    object Movercoluna1: TMenuItem
      Caption = 'Mover coluna'
      OnClick = Movercoluna1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
end
